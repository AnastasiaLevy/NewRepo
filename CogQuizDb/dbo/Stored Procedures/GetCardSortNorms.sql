-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetCardSortNorms]
@ageGroup int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	--Table[0]
Select mean, stdDeviation 
from CardSortNormsCatCompleted 
where ageGroup = @ageGroup;

	--Table[1]
Select mean, stdDeviation 
from CardSortNormsNonpersevErrors
where ageGroup = @ageGroup;


	--Table[2]
Select mean, stdDeviation 
from CardSortNormsPersevErrors
where ageGroup = @ageGroup;


	--Table[3]
Select mean, stdDeviation 
from CardSortNormsTotalCorrect
where ageGroup = @ageGroup;


	--Table[4]
Select mean, stdDeviation 
from CardSortNormsTotalErrors
where ageGroup = @ageGroup;


	--Table[5]
Select mean, stdDeviation 
from CardSortNormsUniqueErrors
where ageGroup = @ageGroup;




END
