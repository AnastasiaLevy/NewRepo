-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetUserCardSortTestResults]
@userId uniqueidentifier,
@tId int,
@forExport bit = 0

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

--Table 0
	SELECT   
	    [category] as 'Category'
	   ,[respCount] as 'Responce Count'
      ,[respTime] as 'Responce Time'
      ,[correctCnt] as 'Correct Count'
      ,[errorCnt] as 'Error Count'
      ,[errorTime] as 'Error Time'
      ,[persevResp] as 'Persev Resp'
      ,[persevTime] as 'Persev Time'
      ,[persevRespError] as 'Persev Resp Error'
      ,[persevRespErrTime] as 'Persev Resp Error Time' 
      ,[uniqErr] as 'Unique Error'
      ,[uniqErrTime] as 'Unique Error Time'
      ,[failureSetCnt] as 'Failure to Maintain Set'
	  ,[catComplete] as 'Categories Complete'
     
     
  FROM [TestApp].[dbo].[CardSortUserResult]
	where userId = @userId 
	and tId = @tId
if @forExport = 0
BEGIN

	--Table1
	select textHtml from CardSortTable 
	where  tId = @tId

	--Table2
	Select movesText from CardSortUserMovesMap
	where tId = @tId
	
	
	end
END
