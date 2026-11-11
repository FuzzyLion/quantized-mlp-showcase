import pickle
import math
import torch

from jinja2 import Environment, FileSystemLoader

from fxpmath import Fxp


# Function to save data to a file using pickle
def save_data(filename, data):
    with open(filename, "wb") as file:
        pickle.dump(data, file)
    print(f"Data saved to {filename}")


# Function to load data from a file using pickle
def load_data(filename):
    with open(filename, "rb") as file:
        loaded_data = pickle.load(file)
    print(f"Data loaded from {filename}")
    return loaded_data


class QuantModelStatistic:
    def __init__(self, model, model_name, template_path='./sv_template'):
        self.model = model.model
        self.model_name = model_name
        self.env = Environment(loader=FileSystemLoader(template_path))
        self.env.filters['renderInt'] = self.render_int
        self.env.filters['render_scale'] = self.render_scale
        self.env.filters['render_shift'] = self.render_shift

    def get_input_s_z(self):
        """
        Get the scale and zero point of the input data.
        :return:
            s: float
            z: int
        """
        if self.model_name == "MLP" or self.model_name == "iris":
            s = self.model.fc1_input_scale_0.item()
            z = self.model.fc1_input_zero_point_0.item()
        else:
            raise NotImplementedError
        return s, z

    def get_dequant_s_z(self, layer_name):
        """
        Get the scale and zero point of the input data from last layer.
        :param layer_name: (string)
        :return:
        s: float
        z: int
        """
        layer = getattr(self.model, layer_name)
        s = layer.scale
        z = layer.zero_point
        return s, z

    def get_quant_weight(self, layer_name):
        """
        Get quantized weights.
        :param layer_name: (string)
        :return:
        torch tensor of integer weights
        """
        layer = getattr(self.model, layer_name)
        w = layer.weight().int_repr()
        return w

    def get_quant_bias(self, layer_name, sx):
        """
        Get quantized bias.
        :param layer_name: (string)
        :param sx: (float) scaling factor of the input data.
        :return:
        """
        layer = getattr(self.model, layer_name)
        sw = layer.weight().q_per_channel_scales()
        b = layer.bias()
        b = b / (sw * sx)
        return b

    def get_scale_precompute_z(self, last_layer, current_layer):
        """
        Compute the scaling factor for the quantized result.
        Compute the precomputed part q_b - Z_xq_w
        Compute the zero point of output Z_y
        :param last_layer: (string)
        :param current_layer: (string)
        :return:
        scale: Tensor with the same shape as weights
        precompute: Tensor with the same shape as weights
        zy: integer
        """
        # Hint1: you can get S_x and Z_x by calling get_dequant_s_z
        # Hint2: you can get quantized weight by calling get_quant_weight
        # Hint3: you can get q_b by calling get_quant_bias
        if last_layer is None:
            sx, zx = self.get_input_s_z()
        else:
            sx, zx = self.get_dequant_s_z(last_layer)

        sy, zy = self.get_dequant_s_z(current_layer)
        layer = getattr(self.model, current_layer)
        sw = layer.weight().q_per_channel_scales()
        qw = self.get_quant_weight(current_layer)
        qb = self.get_quant_bias(current_layer, sx)

        scale = sw * sx / sy
        precompute = qb - zx * qw.sum(dim=1)
        return scale, precompute, int(zy)

    def get_neuron_output_bit_width(self, layer_name, num_neuron, bit_width=8):
        """
        Compute the bitwidth of an output of a neuron.
        :param layer_name: (string)
        :param num_neuron: (int) a neuron index
        :param bit_width: (int) the bitwidth of the input data.
        :return: (int) the bitwidth of a neuron
        """
        weights = self.get_quant_weight(layer_name)[num_neuron]
        num_products = max(1, int(torch.count_nonzero(weights).item()))
        product_width = 2 * bit_width
        accumulation_growth = math.ceil(math.log2(num_products))
        return product_width + accumulation_growth

    @staticmethod
    def render_int(data, width):
        sign = '-' if data < 0 else ''
        return "{}{}'d{}".format(sign, width, abs(data))

    @staticmethod
    def render_scale(data, width, precision):
        """
        Change a float scale number to a fix point number.
        Data is the scale you computed,
        width is the output width of a neuron you computed,
        you can ignore precision. You should have a look at the document of the fxpmath.
        :param data: Float
        :param width: int
        :param precision: int
        :return: (string) e.g. "22'b0101101000010010101101"
        """
        if data <= 0:
            raise ValueError("The requantization scale must be positive.")
        if width < 2:
            raise ValueError("A signed fixed-point scale needs at least two bits.")

        fixed_point = Fxp(data, True, precision, precision - 1, 0).bin()
        first_one = fixed_point.find('1')
        if first_one < 1:
            raise ValueError("The scale cannot be represented with the selected precision.")

        start = first_one - 1
        scale_bits = fixed_point[start:start + width].ljust(width, '0')
        return "{}'b{}".format(width, scale_bits)

    @staticmethod
    def render_shift(data, width, precision):
        """
        Compute the shift number of the scale.
        Data is the scale you computed,
        width is the output width of a neuron you computed,
        you can ignore precision. You can have a look at fxpmath.
        :param data: Float
        :param width: int
        :param precision: int
        :return: (string) e.g. "31"
        """
        if data <= 0:
            raise ValueError("The requantization scale must be positive.")
        if width < 2:
            raise ValueError("A signed fixed-point scale needs at least two bits.")

        fixed_point = Fxp(data, True, precision, precision - 1, 0).bin()
        first_one = fixed_point.find('1')
        if first_one < 1:
            raise ValueError("The scale cannot be represented with the selected precision.")

        shift = first_one + width - 2
        return "{}".format(shift)

    def prep_neurons(self, last_layer=None, current_layer='fc1', bit_width=8):
        all_weights = self.get_quant_weight(current_layer)
        all_scale, all_pre, zero = self.get_scale_precompute_z(last_layer, current_layer)
        neurons = []
        for i in range(all_weights.size()[0]):
            w = all_weights[i].tolist()
            s = all_scale[i].item()
            pre = all_pre[i].item()
            neuron_width = self.get_neuron_output_bit_width(current_layer, i, bit_width)
            neurons.append((w, s, int(pre), zero, int(neuron_width)))
        return neurons

    def render(self, last_layer=None, current_layer='fc1', bit_width=8, relu=True, module="FC1"):
        neurons = self.prep_neurons(last_layer, current_layer, bit_width)
        rendered = self.env.get_template("linear.sv.jinja2").render(
            modulename=module,
            neurons=neurons,
            quant_width=bit_width,
            num_neurons=len(neurons),
            num_in=len(neurons[0][0]),
            relu=relu,
            precision=48
        )
        return rendered
