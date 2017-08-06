-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetUserTestResults]
	-- Add the parameters for the stored procedure here
	@userId uniqueidentifier,
	@tId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON
	Select Game, initThinkTime as 'Initial Think Time',
     totalTime as 'Game Time', 
	 numberMoves as 'Number of Moves', 
	 numberWrongMoves as 'Number of Wrong Moves', 
	 overTime as 'Game Timed Out', 
	 overMove as 'Over Moves Limit'
	 from LondonUserResults 
	 where userId = @userId
	and tId = @tid;

END
