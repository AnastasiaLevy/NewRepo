-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE InserStroopResult 
    @userId uniqueidentifier
   ,@testId int
   ,@round nvarchar(50)
   ,@correctRespCount int
   ,@incorrectRespCount int
   ,@avgRespTime decimal(18,5)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	Delete StroopResults where userId = @userId and round = @round and testId = @testId
    -- Insert statements for procedure here
	INSERT INTO [dbo].[StroopResults]
           ([userId]
           ,[testId]
           ,[round]
           ,[correctRespCount]
           ,[incorrectRespCount]
           ,[avgRespTime])
     VALUES
           (  @userId 
   ,@testId 
   ,@round 
   ,@correctRespCount 
   ,@incorrectRespCount 
   ,@avgRespTime )
END
