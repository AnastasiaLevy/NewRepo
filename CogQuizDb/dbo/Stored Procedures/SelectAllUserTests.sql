-- =============================================
-- Author:		<Author,,Name>

-- =============================================
CREATE PROCEDURE [dbo].[SelectAllUserTests]
@userId uniqueidentifier
AS
BEGIN
Select u.tId, testName as Name, tID, u.paidDate as 'Assigned Date',
 u.finishedDate as 'Finished Date' , u.testId 
 from User_Test u

JOIN AvailableTest av on av.testId = u.testId
where userId = @userId
and isPaid = 1 

order by paidDate desc
END