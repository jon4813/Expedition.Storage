CREATE TABLE [dbo].[Cities]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY,
    [Name] NVARCHAR(50) NOT NULL,
    [Code] NVARCHAR(50) NOT NULL,
	[CountryId] UNIQUEIDENTIFIER NOT NULL,
    [RegionId] UNIQUEIDENTIFIER NULL,
    [RowVersion] ROWVERSION NOT NULL,
    [IsArchived] BIT NOT NULL DEFAULT 0,

	CONSTRAINT [FK_Cities_Countries] FOREIGN KEY ([CountryId]) REFERENCES [Countries]([Id]),
	CONSTRAINT [FK_Cities_Regions] FOREIGN KEY ([RegionId]) REFERENCES [Regions]([Id]),
)

GO
CREATE INDEX [UX_Cities_CountryId_RegionId_Id] ON [dbo].[Cities] ([CountryId], [RegionId], [Id])
