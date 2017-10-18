-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertTestFinished]
@userId uniqueidentifier,
@tID int
 
AS
BEGIN
	Update User_Test set isFinished = 1 
	where tID = @tID
	AND userId = @userId
	

	Update User_Test set finishedDate = GetDate()
    where tID = @tID
	AND userId = @userId

END
