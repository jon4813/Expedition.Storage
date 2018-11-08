CREATE TABLE [dbo].[OrderPaths]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY,
    [OrderId] UNIQUEIDENTIFIER NOT NULL,
    [FromCityPoint] UNIQUEIDENTIFIER NOT NULL,
    [FromCityAddress] NVARCHAR(100) NOT NULL,
    [ToCityPoint] UNIQUEIDENTIFIER NOT NULL,
    [ToCityAddress] NVARCHAR(100) NOT NULL,
	CONSTRAINT [FK_OrderPaths_RegionsMappings_From] FOREIGN KEY ([FromCityPoint]) REFERENCES [RegionsMappings]([Id]),
	CONSTRAINT [FK_OrderPaths_RegionsMappings_To] FOREIGN KEY ([ToCityPoint]) REFERENCES [RegionsMappings]([Id])
)
