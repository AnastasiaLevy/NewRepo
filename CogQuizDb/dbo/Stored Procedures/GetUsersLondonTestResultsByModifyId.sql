


CREATE PROCEDURE [dbo].[GetUsersLondonTestResultsByModifyId]
	-- Add the parameters for the stored procedure here
	@modifyId int,
	@from datetime2 = null,
	@to datetime2 = null
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
		   (@to is null and @from is null)) and
		   ut.modifyId = @modifyId
	 order by lur.tId;

END