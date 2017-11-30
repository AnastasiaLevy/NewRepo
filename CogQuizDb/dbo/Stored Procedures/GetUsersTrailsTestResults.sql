



-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetUsersTrailsTestResults]
	@from datetime2 = null,
	@to datetime2 = null,
	@providerId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT tur.timeTrailA as 'Trail A',
	tur.timeTrailB  as 'Trail B',
	r.firstNAme as 'FirstNAme',
	r.lastName as 'LastName',
	ut.finishedDate as 'Finished Date',
	tur.tId as 'tId'
	from TrailsUserResults tur
	 join User_Test ut on tur.tId = ut.tId and tur.userId = ut.userId
	 join Registration r on r.userId = tur.userId
	 where ((@from is not null and @to is not null and ut.finishedDate BETWEEN @from And @to) or
		   (@from is not null and @to is null and ut.finishedDate > @from) or
		   (@to is not null and @from is null and ut.finishedDate < @to) or
		   (@to is null and @from is null)) and @providerId like r.providerId
	order by tur.tId

END