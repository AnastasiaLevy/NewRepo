-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GetUserTestResultsTrails 
	@userId uniqueidentifier,
	@tId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT timeTrailA as 'Trail A',timeTrailB  as 'Trail B' from TrailsUserResults
	where tid = @tId
	And userId = @userId

END
