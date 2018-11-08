CREATE TABLE [dbo].[OrderLineContractorTransports]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY,
	[OrderLineId] UNIQUEIDENTIFIER NOT NULL,
    [TransportId] UNIQUEIDENTIFIER NOT NULL,
	[RowVersion] ROWVERSION NOT NULL,
	CONSTRAINT [FK_OrderLineContractorTransports_OrderLines] FOREIGN KEY ([OrderLineId]) REFERENCES [OrderLines]([Id]),
)

GO

CREATE INDEX [UX_OrderLineContractorTransports_OrderLineId_TransportId] ON [dbo].[OrderLineContractorTransports] ([OrderLineId], [TransportId])
