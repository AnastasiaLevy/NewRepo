-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[isTestFinished]
@userId uniqueidentifier,
@testId varchar
 
AS
BEGIN
	select  1 from User_test where isPaid = 1 and isFinished = 1 and testId = @testId and userId = @userId;


END