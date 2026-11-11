import torch


class MLP(torch.nn.Module):
    def __init__(self, input_dim=28 * 28, output_dim=10, hide_layer=10):
        super().__init__()
        self.num_class = output_dim
        self.fc1 = torch.nn.Linear(input_dim, hide_layer)
        self.fc2 = torch.nn.Linear(hide_layer, output_dim)
        self.relu = torch.nn.ReLU()

    def forward(self, x):
        x = torch.flatten(x, start_dim=1)
        x = self.fc1(x)
        x = self.relu(x)
        x = self.fc2(x)
        return x
