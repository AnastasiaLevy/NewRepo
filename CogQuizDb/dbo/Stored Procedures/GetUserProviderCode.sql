-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GetUserProviderCode
@userId uniqueidentifier

AS
BEGIN
declare @providerId int
SET @providerId = (select providerId from registration where userid = @userId)
  if @providerId IS NOT NULL
  Begin
    select providerCode as code from Provider where Id = @providerId;
  End
END
