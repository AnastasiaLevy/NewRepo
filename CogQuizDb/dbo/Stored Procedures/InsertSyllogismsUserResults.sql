-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE InsertSyllogismsUserResults 
 @tId int,
 @totalCorrect int,
 @totalIncorrect int,
 @certAverage decimal(18,2),
 @certRatingCorrect decimal(18,2)


AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO [dbo].[SyllogismsUserResults]
           ([tId]
           ,[totalCorrect]
           ,[totalIncorrect]
           ,[certAverage]
           ,[certRatingCorrect])
     VALUES
           (@tId,
           @totalCorrect,
           @totalIncorrect,
           @certAverage,
           @certRatingCorrect)
END
