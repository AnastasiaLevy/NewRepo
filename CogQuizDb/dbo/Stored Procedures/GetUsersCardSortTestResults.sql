


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetUsersCardSortTestResults]
	@from datetime2 = null,
	@to datetime2 = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

--Table 0
	SELECT   
	  csur.category as 'Category',
	  csur.respCount as 'Responce Count',
      csur.respTime as 'Responce Time',
      csur.correctCnt as 'Correct Count',
      csur.errorCnt as 'Error Count',
      csur.errorTime as 'Error Time',
      csur.persevResp as 'Persev Resp',
      csur.persevTime as 'Persev Time',
      csur.persevRespError as 'Persev Resp Error',
      csur.persevRespErrTime as 'Persev Resp Error Time',
      csur.uniqErr as 'Unique Error',
      csur.uniqErrTime as 'Unique Error Time',
      csur.failureSetCnt as 'Failure to Maintain Set',
	  csur.catComplete as 'Categories Complete',
	  r.firstNAme as 'FirstName',
	  r.lastName as 'LastName',
	  ut.finishedDate as 'Finished Date',
	  csur.tId as 'tId'
      from CardSortUserResult csur
	  join User_Test ut on csur.tId = ut.tId and csur.userId = ut.userId
	   join Registration r on r.userId = csur.userId
	   where (@from is not null and @to is not null and ut.finishedDate BETWEEN @from And @to) or
		     (@from is not null and @to is null and ut.finishedDate > @from) or
		     (@to is not null and @from is null and ut.finishedDate < @to) or
		     (@to is null and @from is null)
		order by csur.tId;
END