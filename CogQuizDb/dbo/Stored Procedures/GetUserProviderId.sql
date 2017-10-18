-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GetUserProviderId
@userId uniqueidentifier
AS
BEGIN
Select providerId from Registration where userId = @userId;


END
