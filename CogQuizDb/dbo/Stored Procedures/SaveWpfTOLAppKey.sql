
CREATE PROCEDURE SaveWpfTOLAppKey
	@UserId uniqueidentifier,
	@DeviceId varchar(50),
	@License varchar(100)
AS
	INSERT INTO [dbo].[LicenseAppKeys] ([TowerOfLondonKey], [UserId], [DeviceId])
	VALUES (@License, @UserId, @DeviceId);