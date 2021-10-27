CREATE TABLE [dbo].[Account]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] VARCHAR(50) NOT NULL, 
    [StartingAmount] FLOAT NOT NULL, 
    [DateCreated] DATETIME NOT NULL, 
    [UserAccountId] INT NOT NULL
)
