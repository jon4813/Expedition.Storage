CREATE TABLE [dbo].[PartnersContracts]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [Contract] VARBINARY(MAX) NOT NULL,
    [RowVersion] ROWVERSION NOT NULL, 
    CONSTRAINT [FK_PartnersContracts_Partners] FOREIGN KEY ([Id]) REFERENCES [Partners]([Id])
)
