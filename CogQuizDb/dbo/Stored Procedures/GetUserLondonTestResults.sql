-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetUserLondonTestResults]
	-- Add the parameters for the stored procedure here
	@userId uniqueidentifier,
	@tId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	declare @num int;
	declare @movesMax int;
	declare @ot bit;

	set @num = (Select calcResFrom from LondonModified where id = 
                                 (select modifyId from User_Test
								  where userId = @userId and tId = @tId));

	set @movesMax = (Select top 1 maxMoves from LondonModified where id = 
                                 (select modifyId from User_Test
								  where userId = @userId and tId = @tId));

	set @ot = (Select top 1 overTime from LondonUserResults where userId = @userId and tId = @tid order by Game);

	SET NOCOUNT ON
	--Table [0]


	
	Select Game, 
	Case When (Game < @num ) then 'Practice' else 'Trial' End As 'Type', 
	 initThinkTime as 'Initial Think Time',
     totalTime as 'Game Time', 
	 numberMoves as 'Number of Moves',
	 minMoves as 'Minimum Moves',
	 Case When (overTime = @ot) then (numberMoves - minMoves) else (@movesMax - minMoves) End as 'Excess Moves' ,
	 numberWrongMoves as 'Number of Wrong Moves', 
	 overTime as 'Game Timed Out', 
	 overMove as 'Over Moves Limit'
	 
	 from LondonUserResults 
	 where userId = @userId
	 and tId = @tid
	 order by Game;
	
	 
END
--Tbale [1]
  Select firstNAme, lastName from Registration
   where userId = @userId;

   --Table [2]
   Select 
   	'Total' as 'Type',
	(Count(*) - @num) as 'TotalRounds',
   SUM (initThinkTime) as 'totalInitThinkTime',
   SUM (totalTime ) as 'totalTime',
   SUM (minMoves) as 'totalMinMoves',
   SUM (numberMoves) as 'totalNumberMoves',
   SUM (numberMoves - minMoves) as 'toalExcess',
   SUM (numberWrongMoves) as 'totalWrong',
   SUM(CAST(overTime AS INT)) as 'totalOverTime',
   SUM(CAST(overMove AS INT)) as 'totalOverMoves'
   From LondonUserResults
    where userId = @userId
	and tId = @tid
	and game >= @num;

   

   --(Select calcResFrom from LondonModified where id = 
   --                              (select modifyId from User_Test
			--					  where userId = '910004e3-38fe-40a8-a5ca-3e535e635b9f' and tId = 89))

			--					  where userId = '910004e3-38fe-40a8-a5ca-3e535e635b9f' and tId = 89))
								  --exec GetUserLondonTestResults '910004e3-38fe-40a8-a5ca-3e535e635b9f', 88 