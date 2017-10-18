


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetUsersNbackTestResults]
	@from datetime2 = null,
	@to datetime2 = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


Select nur.round as 'Trial',
       nur.hit as 'Correct Yes',
	   nur.miss as 'Wrong Responce',
	   nur.correctReject as 'Correct Rejection',
	   nur.falseAlarm as 'False Alarm',
	   nur.omitTarget as 'Target Omitted',
	   nur.omitNoTarget as 'No Target Omitted',
	   nur.percentScore as 'Score',
	   r.firstNAme as 'FirstNAme',
	   r.lastName as 'LastName',
	   ut.finishedDate as 'Finished Date',
	   nur.tId as 'tId'
	   FROM NBackUserResults nur
	   join User_Test ut on nur.tId = ut.tId and nur.userId = ut.userId
	   join Registration r on r.userId = nur.userId
	   where (@from is not null and @to is not null and ut.finishedDate BETWEEN @from And @to) or
		     (@from is not null and @to is null and ut.finishedDate > @from) or
		     (@to is not null and @from is null and ut.finishedDate < @to) or
		     (@to is null and @from is null)
	   order by nur.tId

END