CREATE TABLE [dbo].[OrderPaths]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY,
    [OrderId] UNIQUEIDENTIFIER NOT NULL,
    [FromCityPoint] UNIQUEIDENTIFIER NOT NULL,
    [FromCityAddress] NVARCHAR(100) NOT NULL,
    [ToCityPoint] UNIQUEIDENTIFIER NOT NULL,
    [ToCityAddress] NVARCHAR(100) NOT NULL,
	CONSTRAINT [FK_OrderPaths_City_From] FOREIGN KEY ([FromCityPoint]) REFERENCES [dbo].[Cities]([Id]),
	CONSTRAINT [FK_OrderPaths_City_To] FOREIGN KEY ([ToCityPoint]) REFERENCES [dbo].[Cities]([Id])
)
