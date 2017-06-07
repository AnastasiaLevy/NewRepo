-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertTestStarted]
@tId int
 
AS
BEGIN
	Update User_Test set isStarted = 1 
	where tID = @tId
	

	Update User_Test set startedDate = GetDate() 
	where tID = @tId

END
