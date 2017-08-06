-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Insert New Result Into Memory Cards Results Table>
-- =============================================
CREATE PROCEDURE InsertMemoryCardsResult 
	-- Add the parameters for the stored procedure here
	@name as nvarchar(250), 
	@totalMoves as int,
	@incorrectMatching as int,
	@score as int,
	@firstCardAvgRespTime as int,
	@secondCardAvgRespTime as int,
	@testTime as int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [TestApp].[dbo].[MemoryCardsResults] 
	VALUES(@name,@totalMoves,@incorrectMatching,@score,@firstCardAvgRespTime,@secondCardAvgRespTime,@testTime)
END