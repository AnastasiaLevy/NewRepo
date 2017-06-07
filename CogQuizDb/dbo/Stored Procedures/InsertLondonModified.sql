-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertLondonModified]
          @testName varchar(50),
          @testInstructions nvarchar(1500),
		  @txtOverMoves varchar(500),
          @txtOverTime varchar(500),
          @txtButton varchar(50),
		  @txtFeedBack varchar(500),
          @instructionsFinish varchar(500),
          @displayResult bit,
          @txtToSpeech bit,
          @prctRounds int,
          @testRounds int,
          @calcResFrom int,
          @timeOut int,
		  @countDownFrom int,
          @maxMoves int,
          @showFeedBack bit,
		  @providerId int,
		  @workTag varchar(50),
		  @goalTag varchar(50),
		  @language varchar(50),
		  @countDownText varchar(500)
		  
		 
         
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


    -- Insert statements for procedure here
INSERT INTO [dbo].[LondonModified]
        ([testName]
           ,[testInstructions]
           ,[txtOverMoves]
           ,[txtOverTime]
           ,[txtButton]
           ,[txtFeedBack]
           ,[instructionsFinish]
           ,[displayResult]
           ,[txtToSpeech]
           ,[prctRounds]
           ,[testRounds]
           ,[calcResFrom]
           ,[timeOut]
           ,[countDownFrom]
           ,[maxMoves]
           ,[showFeedBack]
           ,[providerId]
           ,[canModify]
		   ,[language]
           ,[workTag]
           ,[goalTag]
           ,[countDownText]
           )
		
           
     VALUES
         (@testName ,
          @testInstructions,
		  @txtOverMoves,
          @txtOverTime,
          @txtButton,
		  @txtFeedBack,
          @instructionsFinish,
          @displayResult,
          @txtToSpeech ,
          @prctRounds ,
          @testRounds ,
          @calcResFrom ,
          @timeOut ,
		  @countDownFrom ,
          @maxMoves ,
          @showFeedBack,
		  @providerId,
		   1,
		  @language,
          @workTag,
          @goalTag,
          @countDownText
          )

		  Select id from LondonModified where testName = @testName
           
END
