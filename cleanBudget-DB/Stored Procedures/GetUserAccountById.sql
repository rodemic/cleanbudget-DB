CREATE PROCEDURE [dbo].[GetUserAccountById]
	@id int
AS
	SELECT * From UserAccount where Id = @id
RETURN 0
