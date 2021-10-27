CREATE PROCEDURE [dbo].[GetAccountsByUserAccountId]
	@userAccountId int
AS
	SELECT * From Account where UserAccountId = @userAccountId
RETURN 0
