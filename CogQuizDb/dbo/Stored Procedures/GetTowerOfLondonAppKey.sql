
CREATE PROCEDURE [dbo].[GetTowerOfLondonAppKey]
	@UserId uniqueidentifier
AS
	SET NOCOUNT ON
	SELECT TOP 1 [Key]
	FROM dbo.[DesktopTowerOfLondonLicenseKeys]
	WHERE [UserId] = @UserId