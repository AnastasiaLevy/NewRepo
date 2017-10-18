-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE UpdateProviderCode
	-- Add the parameters for the stored procedure here
	@userId uniqueidentifier,
	@providerCode nvarchar(100)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

Update Provider set providerCode = @providerCode where userid = @userId
END
