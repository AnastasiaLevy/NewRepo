-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertlondonMoves] 
           @testName varchar(100),
           @round int,
           @roundValues varchar(100),
           @roundFinish varchar(100),
           @numMoves int,
		   @modifiedId int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
Delete TowerOfLondonMoves where modifiedId = @modifiedId and round = @round
    -- Insert statements for procedure here
	INSERT INTO [dbo].[TowerOfLondonMoves]
           ([testName]
           ,[round]
           ,[roundValues]
           ,[roundFinish]
           ,[numMoves]
		   ,[modifiedId])
     VALUES
          (@testName,
           @round,
           @roundValues,
           @roundFinish,
           @numMoves,
		   @modifiedId)
END
