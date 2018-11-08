CREATE TABLE [dbo].[Transports]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY,
    [RegNumber] NVARCHAR(50) NOT NULL,
    [Brand] UNIQUEIDENTIFIER NOT NULL,
    [Owner] UNIQUEIDENTIFIER NOT NULL,
    [Type] UNIQUEIDENTIFIER NOT NULL,
    [Length] DECIMAL(5, 2) NOT NULL,
    [Width] DECIMAL(5, 2) NOT NULL,
    [Height] DECIMAL(5, 2) NOT NULL,
    [Volume] DECIMAL(5, 2) NOT NULL,
    [Tonnage] DECIMAL(5, 2) NOT NULL,
    [IsRefregerator] BIT NOT NULL DEFAULT 0,
    [Vin] NVARCHAR(50) NULL,
    [EngineNumber] NVARCHAR(50) NULL,
    [RowVersion] ROWVERSION NOT NULL,
    CONSTRAINT [FK_Transports_TransportTypes] FOREIGN KEY ([Type]) REFERENCES [TransportTypes]([Id]),
	CONSTRAINT [FK_Transports_Partners] FOREIGN KEY ([Owner]) REFERENCES [Partners]([Id])
)
