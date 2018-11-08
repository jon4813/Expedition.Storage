CREATE TABLE [dbo].[RegionsMappings]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY,
    [CountryId] UNIQUEIDENTIFIER NOT NULL,
    [RegionId] UNIQUEIDENTIFIER NULL,
    [CityId] UNIQUEIDENTIFIER NOT NULL,
	[RowVersion] ROWVERSION NOT NULL,
	CONSTRAINT [FK_RegionsMappings_Countries] FOREIGN KEY ([CountryId]) REFERENCES [Countries]([Id]),
	CONSTRAINT [FK_RegionsMappings_Regions] FOREIGN KEY ([RegionId]) REFERENCES [Regions]([Id]),
	CONSTRAINT [FK_RegionsMappings_Cities] FOREIGN KEY ([CityId]) REFERENCES [Cities]([Id])
)

GO

CREATE INDEX [UX_RegionsMappings_CountryId_RegionId_CityId] ON [dbo].[RegionsMappings] ([CountryId], [RegionId], [CityId])
