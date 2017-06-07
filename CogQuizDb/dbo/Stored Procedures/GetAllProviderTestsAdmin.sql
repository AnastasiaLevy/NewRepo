-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GetAllProviderTestsAdmin

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
Select p.ProviderId,u.userName, tt.testName, p.testTypeOption, p.numLeft
From ProviderTests p
Join AvailableTest tt on tt.testId = p.testType
join Provider pr on pr.id = p.providerId
join aspnet_Users u on u.UserId = pr.userId
 
END
