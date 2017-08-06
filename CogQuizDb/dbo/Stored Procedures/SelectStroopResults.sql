-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE SelectStroopResults
	-- Add the parameters for the stored procedure here
@tId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT round as 'Trial', 
	correctRespCount as 'Correct Response Count', 
    incorrectRespCount as 'Incorrect Response Count',
    avgRespTime as 'Average Response Time' 
	from StroopResults where testId= @tId order by round
END
