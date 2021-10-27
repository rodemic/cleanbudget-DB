CREATE PROCEDURE [dbo].[SaveInvestment]
	@id int,
	@name varchar(50),
	@ticker varchar(4),
	@amount float,
	@cost float,
	@purchaseDate datetime,
	@accountId int
AS
	UPDATE dbo.Investment WITH (UPDLOCK, SERIALIZABLE) SET Id = @id, Name = @name, Ticker = @ticker, Amount = @amount, Cost = @cost, PurchaseDate = @purchaseDate, AccountId = @accountId WHERE [Id] = @id;
 
IF @@ROWCOUNT = 0
BEGIN
  INSERT dbo.Investment(Id,[Name],[Ticker],[Amount],[Cost],[PurchaseDate],[AccountId]) VALUES(@id,@name,@ticker,@amount,@cost,@purchaseDate,@accountId);
END
RETURN SCOPE_IDENTITY()
