-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Get Results Of Test After Completion>
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
	set @num = (Select calcResFrom from LondonModified where id = 
                                 (select modifyId from User_Test
								  where userId = @userId and tId = @tId));
	SET NOCOUNT ON
	--Table [0]
	Select Game, 
	Case When (Game < @num ) then 'Practice' else 'Trial' End As 'Type', 
	 initThinkTime as 'Initial Think Time',
     totalTime as 'Game Time', 
	 numberMoves as 'Number of Moves',
	 minMoves as 'Minimum Moves',
	 (numberMoves - minMoves) as 'Excess Moves',
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
   SUM (numberMoves) as 'NumberMoves',
   SUM (numberMoves - minMoves) as 'Excess',
   SUM (numberWrongMoves) as 'wrong'
   From LondonUserResults
    where userId = @userId
	and tId = @tid
	and game >= @num;

   

   --(Select calcResFrom from LondonModified where id = 
   --                              (select modifyId from User_Test
			--					  where userId = '910004e3-38fe-40a8-a5ca-3e535e635b9f' and tId = 89))

			--					  where userId = '910004e3-38fe-40a8-a5ca-3e535e635b9f' and tId = 89))
								  --exec GetUserLondonTestResults '910004e3-38fe-40a8-a5ca-3e535e635b9f', 88 