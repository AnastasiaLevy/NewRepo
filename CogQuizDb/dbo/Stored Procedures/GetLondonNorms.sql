-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetLondonNorms]
@ageGroup int,
@testId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
Declare @modTestId varchar(50);
Set @modTestId = (Select modifyId from User_Test where tId = @testId);
	Print @modTestId



	SELECT mean, stdDeviation from LondonResults where ageGroup = @ageGroup and modTestId =@modTestId

END
