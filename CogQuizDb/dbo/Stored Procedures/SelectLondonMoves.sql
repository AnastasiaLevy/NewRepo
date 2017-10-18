-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SelectLondonMoves] 
@modifiedId varchar (50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--Table[0]
	SELECT t.round, roundValues, roundFinish, numMoves from TowerOfLondonMoves t where modifiedId= @modifiedId

	--Table[1]
	Select 
	testName, 
	testInstructions,
	txtOverMoves, 
	txtOverTime,
	instructionsFinish,
	txtButton,
	txtFeedBack,
	txtToSpeech,
    prctRounds, 
	testRounds, 
	countDownFrom,
	calcResFrom, 
	timeOut, 
	maxMoves, 
	showFeedBack, 
	displayResult,
	language,
    workTag,
    goalTag,
    countDownText
    from LondonModified where id = @modifiedId;

END
