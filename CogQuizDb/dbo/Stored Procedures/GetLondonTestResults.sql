-- Batch submitted through debugger: SQLQuery49.sql|7|0|C:\Users\ALFA\AppData\Local\Temp\~vsAC35.sql
CREATE PROCEDURE [dbo].[GetLondonTestResults]
	@providerId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	declare @num int;
	--set @num = (Select calcResFrom from LondonModified where id = 
 --                                (select modifyId from User_Test
	--							  where userId = @userId and tId = @tId));
	set @num = (select calcResFrom from LondonModified where providerId = @providerId)
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
	 where userId in (select userId from User_Test where modifyId in (select id from LondonModified where providerId = @providerId))
	 order by Game;

END
--Tbale [1]
  Select firstNAme, lastName from Registration
   where userId in (select userId from User_Test where modifyId in (select id from LondonModified where providerId = @providerId))

   --Table [2]