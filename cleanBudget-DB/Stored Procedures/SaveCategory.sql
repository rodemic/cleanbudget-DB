CREATE PROCEDURE [dbo].[SaveCategory]
	@id int,
	@name varchar(50),
	@description varchar(50),
	@hexCode varchar(7)
AS
	UPDATE dbo.Category WITH (UPDLOCK, SERIALIZABLE) SET Id = @id, [Name] = @name, [Description] = @description, HexCode = @hexCode WHERE [Id] = @id;
 
IF @@ROWCOUNT = 0
BEGIN
  INSERT dbo.Category(Id,[Name],[Description],HexCode) VALUES(@id,@name,@description,@hexCode);
END
RETURN SCOPE_IDENTITY()
