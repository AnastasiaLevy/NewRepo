
CREATE PROCEDURE [dbo].[SaveWinFormTOLAppKey]
	@UserId uniqueidentifier,
	@DeviceId varchar(50),
	@License varchar(100)
AS
	INSERT INTO [dbo].[DesktopWinFormTOL] ([Key], [UserId], [DeviceId])
	VALUES (@License, @UserId, @DeviceId);