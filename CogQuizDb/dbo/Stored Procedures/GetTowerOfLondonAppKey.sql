
CREATE PROCEDURE [dbo].[GetTowerOfLondonAppKey]
	@UserId uniqueidentifier
AS
	SET NOCOUNT ON
	SELECT TOP 1 [TowerOfLondonKey]
	FROM dbo.[LicenseAppKeys]
	WHERE [UserId] = @UserId