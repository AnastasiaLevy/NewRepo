CREATE PROCEDURE [dbo].[GetAvailableTestByProviderId]
@providerId int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	Select distinct t.testName as Name, t.Id 
	from ProviderTests pt
	Join AvailableTest t on t.testId = pt.testType
	where providerId = @providerId
	order by t.testName
END