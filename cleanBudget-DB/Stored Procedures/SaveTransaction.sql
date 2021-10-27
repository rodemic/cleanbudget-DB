CREATE PROCEDURE [dbo].[SaveTransaction]
	@id int,
	@amount float,
	@categoryId int,
	@accountId int,
	@purchaseDate datetime
AS
	UPDATE dbo.[Transaction] WITH (UPDLOCK, SERIALIZABLE) SET Id = @id, [Amount] = @amount, [CategoryId] = @categoryId, [AccountId] = @accountId, PurchaseDate=@purchaseDate WHERE [Id] = @id;
 
IF @@ROWCOUNT = 0
BEGIN
  INSERT dbo.[Transaction](Id,[Amount],[CategoryId],[AccountId],[PurchaseDate]) VALUES(@id,@amount,@categoryId,@accountId, @purchaseDate);
END
RETURN SCOPE_IDENTITY()
