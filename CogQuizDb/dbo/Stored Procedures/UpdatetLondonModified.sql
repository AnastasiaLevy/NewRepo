-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdatetLondonModified]

            @testId int,
            @testName varchar(50),
            @testInstructions nvarchar(1500),
            @overMoves varchar(500),
            @txtOverTime varchar(500),
            @txtButton varchar(50),
            @txtFeedBack varchar(500),
            @instructionsFinish varchar(500),
            @txtToSpeech bit,
            @displayResult bit,
            @prctRounds int,
            @testRounds int,
            @calcResFrom int,
            @countDownFrom int,
            @timeOut int,
            @maxMoves int,
            @showFeedback bit,
		    @workTag varchar(50),
		    @goalTag varchar(50),
		    @language varchar(50),
		    @countDownText varchar(500)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;



UPDATE [dbo].[LondonModified]
        
          
   SET [testName] = @testName
      ,[testInstructions] = ( @testInstructions)
      ,[txtOverMoves] = @overMoves
      ,[txtOverTime] = @txtOverTime
      ,[txtButton] = @txtButton
      ,[txtFeedBack] = @txtFeedBack
      ,[instructionsFinish] = @instructionsFinish
      ,[displayResult] = @displayResult
      ,[txtToSpeech] = @txtToSpeech
      ,[prctRounds] = @prctRounds
      ,[testRounds] = @testRounds
      ,[calcResFrom] = @calcResFrom
      ,[timeOut] = @timeOut
      ,[countDownFrom] = @countDownFrom
      ,[maxMoves] = @maxMoves
      ,[showFeedBack] = @showFeedback
	  ,[language] = @language
      ,[workTag] = @workTag
      ,[goalTag] = @goalTag
      ,[countDownText] = @countDownText
    
 WHERE id = @testID;


END
