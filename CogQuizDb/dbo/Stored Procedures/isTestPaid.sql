CREATE PROCEDURE [dbo].[isTestPaid]
@userId uniqueidentifier,
@testId varchar
 
AS
BEGIN
if EXISTS 
   (select  1 from User_test where isPaid = 1 and testId = @testId and userId = @userId and isFinished IS NULL)
	Select TOP 1 tid from User_Test where isPaid = 1 and testId = @testId and userId = @userId and isFinished IS NULL;
	else 
	Select 0


END

