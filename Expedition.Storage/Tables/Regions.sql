CREATE TABLE [dbo].[Regions]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY,
    [CountryId] UNIQUEIDENTIFIER NOT NULL,
    [Name] NVARCHAR(50) NOT NULL,
    [RowVersion] ROWVERSION NOT NULL
	CONSTRAINT [FK_Resions_Countries] FOREIGN KEY ([CountryId]) REFERENCES [Countries]([Id])
)

GO

CREATE UNIQUE INDEX [UX_Regions_Column] ON [dbo].[Regions] ([CountryId], [Id])
