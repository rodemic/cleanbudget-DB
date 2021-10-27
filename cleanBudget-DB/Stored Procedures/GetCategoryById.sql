CREATE PROCEDURE [dbo].[GetCategoryById]
	@id int
AS
	SELECT * From Category where Id = @id
RETURN 0
