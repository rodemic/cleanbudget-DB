CREATE PROCEDURE [dbo].[GetInvestmentById]
	@id int
AS
	SELECT * From Investment where Id = @id
RETURN 0
