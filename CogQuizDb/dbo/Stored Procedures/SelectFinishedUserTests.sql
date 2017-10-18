
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SelectFinishedUserTests]
	-- Add the parameters for the stored procedure here
@userId uniqueidentifier
AS
BEGIN
select u.testId, testName as Name, u.finishedDate as 'Finished On', tID  from User_Test u

JOIN AvailableTest av on av.testId = u.testId
where userId = @userId

and isFinished = 1
order by finishedDate desc
END