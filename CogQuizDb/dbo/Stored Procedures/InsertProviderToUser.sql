-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE InsertProviderToUser
@providerId int,
@userId uniqueIdentifier ,
@userName nvarchar(256)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

Insert into registration (providerId, userId, username) 
values 
(@providerId, @userId, @userName)
END
