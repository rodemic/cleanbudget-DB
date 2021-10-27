CREATE PROCEDURE [dbo].[GetAccountById]
	@id int
AS
	SELECT * From Account where Id = @id
RETURN 0
