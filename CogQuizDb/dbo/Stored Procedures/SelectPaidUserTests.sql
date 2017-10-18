-- =============================================
-- Author:		<Author,,Name>

-- =============================================
CREATE PROCEDURE [dbo].[SelectPaidUserTests]
@userId uniqueidentifier
AS
BEGIN
select u.testId, testName as Name, u.paidDate as 'Paid on', tID, modifyId  from User_Test u

JOIN AvailableTest av on av.testId = u.testId
where userId = @userId
and isPaid = 1 
and isFinished IS NULL
order by paidDate desc
END