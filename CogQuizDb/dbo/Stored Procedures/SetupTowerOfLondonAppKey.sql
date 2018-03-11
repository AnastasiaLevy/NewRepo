
CREATE PROCEDURE [dbo].[SetupTowerOfLondonAppKey]
	@UserId uniqueidentifier
AS
	UPDATE [dbo].[DesktopTowerOfLondonLicenseKeys]
	SET [UserId] = @UserId
	WHERE [KeyId] = (SELECT TOP (1) [KeyId]
		FROM [TestApp].[dbo].[DesktopTowerOfLondonLicenseKeys]
		WHERE [UserId] IS NULL)