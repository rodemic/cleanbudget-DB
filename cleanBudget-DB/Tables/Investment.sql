CREATE TABLE [dbo].[Investment]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Name] VARCHAR(50) NOT NULL,
    [Ticker] VARCHAR(4) NOT NULL, 
    [Amount] FLOAT NOT NULL, 
    [Cost] FLOAT NOT NULL, 
    [PurchaseDate] DATETIME NOT NULL, 
    [AccountId] INT NOT NULL
)
