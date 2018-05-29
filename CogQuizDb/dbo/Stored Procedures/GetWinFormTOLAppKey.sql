
create PROCEDURE [dbo].[GetWinFormTOLAppKey]
	@UserId uniqueidentifier
AS
	SET NOCOUNT ON
	SELECT TOP 1 [Key]
	FROM dbo.DesktopWinFormTOL
	WHERE [UserId] = @UserId