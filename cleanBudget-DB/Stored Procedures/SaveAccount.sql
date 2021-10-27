CREATE PROCEDURE [dbo].[SaveAccount]
	@id int,
	@name varchar(50),
	@startingAmount float,
	@UserAccountId int
AS
	UPDATE dbo.Account WITH (UPDLOCK, SERIALIZABLE) SET Id = @id, [Name] = @name, [StartingAmount] = @startingAmount WHERE [Id] = @id;
 
IF @@ROWCOUNT = 0
BEGIN
  INSERT dbo.Account(Id,[Name],StartingAmount,UserAccountId,DateCreated) VALUES(@id,@name,@startingAmount,@UserAccountId,GETDATE());
END
RETURN SCOPE_IDENTITY()
