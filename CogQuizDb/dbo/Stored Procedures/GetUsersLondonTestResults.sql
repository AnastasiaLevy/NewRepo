



CREATE PROCEDURE [dbo].[GetUsersLondonTestResults]
	-- Add the parameters for the stored procedure here
	@from datetime2 = null,
	@to datetime2 = null,
	@providerId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.SET NOCOUNT ON
	--Table [0]
	Select lur.Game, 
	Case When (lur.Game < lm.calcResFrom ) then 'Practice' else 'Trial' End As 'Type', 
	 lur.initThinkTime as 'Initial Think Time',
     lur.totalTime as 'Game Time', 
	 lur.numberMoves as 'Number of Moves',
	 lur.minMoves as 'Minimum Moves',
	 (lur.numberMoves - lur.minMoves) as 'Excess Moves',
	 lur.numberWrongMoves as 'Number of Wrong Moves', 
	 lur.overTime as 'Game Timed Out', 
	 lur.overMove as 'Over Moves Limit',
	 r.firstNAme as 'FirstNAme',
	 r.lastName as 'LastName',
	 ut.finishedDate as 'Finished Date',
	 lur.tId as 'tId'
	 	 
	 from LondonUserResults lur
	 
	 join User_Test ut on lur.tId = ut.tId and lur.userId = ut.userId
	 join LondonModified lm on lm.id = ut.modifyId
	 join Registration r on r.userId = lur.userId
	 where ((@from is not null and @to is not null and ut.finishedDate BETWEEN @from And @to) or
		   (@from is not null and @to is null and ut.finishedDate > @from) or
		   (@to is not null and @from is null and ut.finishedDate < @to) or
		   (@to is null and @from is null)) and @providerId like r.providerId
	 order by lur.tId;

END

   --Table [2]
 --  Select 
 --  	'Total' as 'Type',
	--(Count(*) - lm.calcResFrom) as 'TotalRounds',
 --  SUM (lur.initThinkTime) as 'totalInitThinkTime',
 --  SUM (lur.totalTime ) as 'totalTime',
 --  SUM (lur.minMoves) as 'totalMinMoves',
 --  SUM (lur.numberMoves) as 'totalNumberMoves',
 --  SUM (lur.numberMoves - lur.minMoves) as 'toalExcess',
 --  SUM (lur.numberWrongMoves) as 'totalWrong',
 --  SUM(CAST(lur.overTime AS INT)) as 'totalOverTime',
 --  SUM(CAST(lur.overMove AS INT)) as 'totalOverMoves'
 --  From LondonUserResults lur
   
 --  join User_Test ut on lur.tId = ut.tId and lur.userId = ut.userId
 --  join LondonModified lm on lm.id = ut.modifyId
 --   where lur.testId = @testId
	--and lur.game >= lm.calcResFrom group by lm.calcResFrom,lur.userId;

   

   --(Select calcResFrom from LondonModified where id = 
   --                              (select modifyId from User_Test
			--					  where userId = '910004e3-38fe-40a8-a5ca-3e535e635b9f' and tId = 89))

			--					  where userId = '910004e3-38fe-40a8-a5ca-3e535e635b9f' and tId = 89))
								  --exec GetUserLondonTestResults '910004e3-38fe-40a8-a5ca-3e535e635b9f', 88 