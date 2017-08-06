-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateLondonUserResults] 
@testId varchar,
@tid int,
@userId uniqueidentifier,
@game int,
@initThinkTime  decimal (18, 5),
@totalTime decimal (18, 5),
@numberMoves int,
@numberWrongMoves int,
@overTime bit,
@overMove bit,
@minMoves int
AS

BEGIN

IF EXISTS (Select 1 from LondonUserResults where tId = @tid and userId= @userId and game = @game)
BEGIN
UPDATE [dbo].[LondonUserResults]
   SET [testId] = @testId
      ,[tId] = @tId
      ,[userId] = @userId
      ,[game] = @game
      ,[initThinkTime] = @initThinkTime
      ,[totalTime] = @totalTime
      ,[numberMoves] = @numberMoves
      ,[numberWrongMoves] = @numberWrongMoves
      ,[overTime] = @overTime
      ,[overMove] = @overMove
	  ,[minMoves] = @minMoves
 WHERE tId = @tId 
 AND userId = @userId
 AND game = @game;
 END

 ELSE

INSERT INTO [dbo].[LondonUserResults]
           ([testId]
           ,[tId]
           ,[userId]
           ,[game]
           ,[initThinkTime]
           ,[totalTime]
           ,[numberMoves]
           ,[numberWrongMoves]
           ,[overTime]
           ,[overMove]
		   ,[minMoves])
     VALUES
           (@testId
           ,@tid
           ,@userId
           ,@game 
           ,@initThinkTime  
           ,@totalTime 
           ,@numberMoves 
           ,@numberWrongMoves 
           ,@overTime 
           ,@overMove
		   ,@minMoves)
   END
