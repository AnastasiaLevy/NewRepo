-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE SelectNbackNorms
@ageGroup int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--Table0
Select mean, stdDeviation from NbackNorms where ageGroup = @ageGroup and trail = 1;
--Table1
Select mean, stdDeviation from NbackNorms where ageGroup = @ageGroup and trail = 2;
--Table2
Select mean, stdDeviation from NbackNorms where ageGroup = @ageGroup and trail = 3;


END
