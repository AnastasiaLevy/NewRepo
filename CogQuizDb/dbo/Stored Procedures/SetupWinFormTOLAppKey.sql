
create PROCEDURE [dbo].[SetupWinFormTOLAppKey]
	@UserId uniqueidentifier
AS
	UPDATE [dbo].DesktopWinFormTOL
	SET [UserId] = @UserId
	WHERE [Key] = (SELECT TOP (1) [Key]
		FROM [TestApp].[dbo].DesktopWinFormTOL
		WHERE [UserId] IS NULL)