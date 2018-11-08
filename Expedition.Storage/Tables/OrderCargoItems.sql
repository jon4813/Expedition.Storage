CREATE TABLE [dbo].[OrderCargoItems]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY,
	[OrderId] UNIQUEIDENTIFIER NOT NULL,
    [Name] NVARCHAR(100) NOT NULL,
    [Code] NVARCHAR(50) NULL,
    [Weight] DECIMAL(15, 2) NULL,
    [DangerClass] INT NOT NULL,
    [TempMode] NVARCHAR(100) NULL,
    [IsRefregeratorRequired] BIT NOT NULL,
    [RowVersion] ROWVERSION NOT NULL,
    CONSTRAINT [FK_OrderCargoItems_Orders] FOREIGN KEY ([OrderId]) REFERENCES [Orders]([Id])
)
