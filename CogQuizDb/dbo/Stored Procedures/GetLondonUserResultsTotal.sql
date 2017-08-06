-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetLondonUserResultsTotal]
@ageGroup int,
@userId uniqueidentifier,
@tId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	declare @num int;
	set @num = (Select calcResFrom from LondonModified where id = 
                                 (select modifyId from User_Test
								  where userId = @userId and tId = @tId));

---Table 0
 Select AVG(numberMoves) as avgUserScore
 from LondonUserResults
 where tId = @tid
 and game >= @num

---Table 1
 Select mean, stdDeviation 
 from LondonResults 
 where ageGroup = @ageGroup

END


