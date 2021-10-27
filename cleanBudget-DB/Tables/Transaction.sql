CREATE TABLE [dbo].[Transaction]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Amount] FLOAT NOT NULL, 
    [CategoryId] INT NOT NULL, 
    [AccountId] INT NOT NULL, 
    [PurchaseDate] DATETIME NOT NULL
)
