CREATE TABLE [dbo].[OrderLinePayments]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY,
    [OrderLineId] UNIQUEIDENTIFIER NOT NULL,
    [PaymentId] UNIQUEIDENTIFIER NOT NULL,
	CONSTRAINT [FK_OrderLinePayments_OrderLines] FOREIGN KEY ([OrderLineId]) REFERENCES [OrderLines]([Id]),
	CONSTRAINT [FK_OrderLinePayments_Payments] FOREIGN KEY ([PaymentId]) REFERENCES [Payments]([Id])
)

GO

CREATE UNIQUE INDEX [UX_OrderLinePayments_OrderLineId_PaymentId] ON [dbo].[OrderLinePayments] ([OrderLineId], [PaymentId])
