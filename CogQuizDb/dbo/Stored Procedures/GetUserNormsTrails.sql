-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetUserNormsTrails] 
@ageGroup int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select  mean
           ,stdDeviation
  FROM TrailsResultsA
  WHERE ageGroup = @ageGroup

  Select mean
           ,stdDeviation
  FROM TrailsResultsB
  WHERE ageGroup = @ageGroup
END
