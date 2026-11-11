from model.mlp import MLP

def model_factory(name):
    if name == "MLP":
        return MLP(hide_layer=30)
    else:
        raise NotImplementedError
