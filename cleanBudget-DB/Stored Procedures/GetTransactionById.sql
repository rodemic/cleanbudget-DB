CREATE PROCEDURE [dbo].[GetTransactionById]
	@id int
AS
	SELECT * From [Transaction] where Id = @id
RETURN 0
