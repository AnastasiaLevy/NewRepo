



-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get3dPartyTest]

           @userId uniqueidentifier = null
          ,@finished bit = 0
		  ,@tId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

Select * from [3dPartyTests] 

	where userId = @userId and
	finished = @finished
	AND tId = @tId;
END