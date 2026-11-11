import unittest

import torch

from utils.utils import QuantModelStatistic


class FakeQuantizedLinear:
    def __init__(self, integer_weights, weight_scales, bias, scale, zero_point):
        float_weights = (integer_weights * weight_scales[:, None]).float()
        self._weight = torch.quantize_per_channel(
            float_weights,
            scales=weight_scales,
            zero_points=torch.zeros(len(weight_scales), dtype=torch.int64),
            axis=0,
            dtype=torch.qint8,
        )
        self._bias = bias
        self.scale = scale
        self.zero_point = zero_point

    def weight(self):
        return self._weight

    def bias(self):
        return self._bias


class FakeModel:
    def __init__(self):
        self.fc1_input_scale_0 = torch.tensor(0.5)
        self.fc1_input_zero_point_0 = torch.tensor(2)
        weights = torch.tensor([[1, -2, 0], [3, 0, 0]], dtype=torch.float64)
        weight_scales = torch.tensor([0.25, 0.5], dtype=torch.float64)
        quantized_bias = torch.tensor([4.0, -3.0], dtype=torch.float64)
        bias = quantized_bias * weight_scales * self.fc1_input_scale_0
        self.fc1 = FakeQuantizedLinear(
            weights,
            weight_scales,
            bias,
            scale=0.25,
            zero_point=7,
        )


class FakeTrainer:
    def __init__(self):
        self.model = FakeModel()


class QuantModelStatisticTest(unittest.TestCase):
    def setUp(self):
        self.statistic = QuantModelStatistic(FakeTrainer(), "MLP")

    def test_scale_precompute_and_zero_point(self):
        scale, precompute, zero_point = self.statistic.get_scale_precompute_z(
            None, "fc1"
        )

        torch.testing.assert_close(
            scale, torch.tensor([0.5, 1.0], dtype=scale.dtype)
        )
        torch.testing.assert_close(
            precompute, torch.tensor([6.0, -9.0], dtype=precompute.dtype)
        )
        self.assertEqual(zero_point, 7)

    def test_accumulator_width_uses_nonzero_products(self):
        self.assertEqual(
            self.statistic.get_neuron_output_bit_width("fc1", 0, bit_width=8),
            17,
        )
        self.assertEqual(
            self.statistic.get_neuron_output_bit_width("fc1", 1, bit_width=8),
            16,
        )

    def test_fixed_point_scale_and_shift_match_slide_example(self):
        self.assertEqual(
            self.statistic.render_scale(0.125, width=5, precision=48),
            "5'b01000",
        )
        self.assertEqual(
            self.statistic.render_shift(0.125, width=5, precision=48),
            "6",
        )

    def test_nonpositive_scale_is_rejected(self):
        with self.assertRaises(ValueError):
            self.statistic.render_scale(0.0, width=5, precision=48)
        with self.assertRaises(ValueError):
            self.statistic.render_shift(-0.125, width=5, precision=48)


if __name__ == "__main__":
    unittest.main()
