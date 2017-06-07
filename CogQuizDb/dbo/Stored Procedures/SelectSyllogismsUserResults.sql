-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE SelectSyllogismsUserResults
@tId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT [tId]
      ,[totalCorrect]
      ,[totalIncorrect]
      ,[certAverage]
      ,[certRatingCorrect]
  FROM [dbo].[SyllogismsUserResults]
  WHERE tid = @tId;
END
