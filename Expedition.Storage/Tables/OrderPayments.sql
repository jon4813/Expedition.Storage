CREATE TABLE [dbo].[OrderPayments]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY,
    [OrderId] UNIQUEIDENTIFIER NOT NULL,
    [PaymentId] UNIQUEIDENTIFIER NOT NULL,
	CONSTRAINT [FK_OrderPayments_Orders] FOREIGN KEY ([OrderId]) REFERENCES [Orders]([Id]),
	CONSTRAINT [FK_OrderPayments_Payments] FOREIGN KEY ([PaymentId]) REFERENCES [Payments]([Id])
)

GO

CREATE UNIQUE INDEX [UX_OrderPayments_OrderId_PaymentId] ON [dbo].[OrderPayments] ([OrderId], [PaymentId])
