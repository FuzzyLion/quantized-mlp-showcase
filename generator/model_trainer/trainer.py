import torch.optim
import torch.nn as nn
import torchmetrics
import pytorch_lightning as pl
from model.model_factory import model_factory


class LitTrainer(pl.LightningModule):
    def __init__(self, name):
        super().__init__()
        self.model = model_factory(name)
        self.train_acc = torchmetrics.Accuracy(task="multiclass", num_classes=self.model.num_class)
        self.val_acc = torchmetrics.Accuracy(task="multiclass", num_classes=self.model.num_class)
        self.test_acc = torchmetrics.Accuracy(task="multiclass", num_classes=self.model.num_class)
        self.loss = nn.CrossEntropyLoss()

    def training_step(self, batch, batch_idx):
        x, y = batch
        output = self.model(x)
        loss = self.loss(output, y)
        pred = output.max(dim=1, keepdim=True)[1]
        self.log("train_loss", loss.item())
        self.train_acc(pred, y.view_as(pred))
        return loss

    def on_train_epoch_end(self) -> None:
        self.log('train_acc', self.train_acc)

    def validation_step(self, batch, batch_idx):
        x, y = batch
        output = self.model(x)
        loss = self.loss(output, y)
        pred = output.max(dim=1, keepdim=True)[1]
        self.log("val_loss", loss.item())
        self.val_acc(pred, y.view_as(pred))
        return loss

    def on_validation_epoch_end(self) -> None:
        self.log('val_acc', self.val_acc)

    def test_step(self, batch, batch_idx):
        x, y = batch
        output = self.model(x)
        loss = self.loss(output, y)
        pred = output.max(dim=1, keepdim=True)[1]
        self.test_acc(pred, y.view_as(pred))
        return loss

    def on_test_epoch_end(self) -> None:
        self.log("test_acc", self.test_acc)

    def configure_optimizers(self):
        optimizer = torch.optim.Adam(self.parameters(), lr=1e-3, weight_decay=5e-4)
        return optimizer
