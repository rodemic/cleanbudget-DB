CREATE PROCEDURE [dbo].[SaveUserAccount]
	@id int,
	@name varchar(50)
AS
	UPDATE dbo.UserAccount WITH (UPDLOCK, SERIALIZABLE) SET Id = @id, [Name] = @name WHERE [Id] = @id;
 
IF @@ROWCOUNT = 0
BEGIN
  INSERT dbo.UserAccount(Id,[Name],DateCreated) VALUES(@id,@name,GETDATE());
END
RETURN SCOPE_IDENTITY()
