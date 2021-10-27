CREATE TABLE [dbo].[Category]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Name] VARCHAR(50) NOT NULL, 
    [Description] VARCHAR(50) NOT NULL, 
    [HexCode] VARCHAR(7) NOT NULL
)
