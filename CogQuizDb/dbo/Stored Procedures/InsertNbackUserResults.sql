-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE InsertNbackUserResults 
       @userId uniqueidentifier,
          @tId  int,
           @round  nchar(10),
           @hit  int,
           @miss  int,
           @correctReject  int,
           @falseAlarm  int,
           @omitTarget  int,
		   @omitNoTarget  int,
           @percentScore decimal(18,2)
AS
BEGIN
Delete NBackUserResults where tid = @tId and NBackUserResults.round = @round
INSERT INTO [dbo].[NBackUserResults]
           ([userId]
           ,[tId]
           ,[round]
           ,[hit]
           ,[miss]
           ,[correctReject]
           ,[falseAlarm]
           ,[omitTarget]
		   ,[omitNoTarget]
           ,[percentScore])
     VALUES
           (       @userId,
          @tId,
           @round,
           @hit,
           @miss,
           @correctReject,
           @falseAlarm,
           @omitTarget,
		   @omitNoTarget,
           @percentScore)


END
