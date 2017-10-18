-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllProviderTests]
@providerId int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	Select t.testName as Name, p.Value as 'Option', pt.numLeft as 'Left', pt.Id
	from ProviderTests pt
	Join payOption p on pt.testTypeOption = p.payOption
	Join AvailableTest t on t.testId = pt.testType
	where providerId = @providerId;
END
