﻿CREATE TABLE [dbo].[OrderLines]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY,
    [OrderId] UNIQUEIDENTIFIER NOT NULL,
	[OrderCargoId] UNIQUEIDENTIFIER NOT NULL,
	[Contractor] UNIQUEIDENTIFIER NOT NULL,
	[Amount] DECIMAL(15, 4) NOT NULL,
	[Currency] UNIQUEIDENTIFIER NOT NULL,
	[Status] INT NOT NULL,
	[RowVersion] ROWVERSION NOT NULL,
    CONSTRAINT [FK_OrderLines_Partners] FOREIGN KEY ([Contractor]) REFERENCES [Partners]([Id]),
	CONSTRAINT [FK_OrderLines_Orders] FOREIGN KEY ([OrderId]) REFERENCES [Orders]([Id]),
	CONSTRAINT [FK_OrderLines_OrderCargos] FOREIGN KEY ([OrderCargoId]) REFERENCES [OrderCargoItems]([Id])
)
