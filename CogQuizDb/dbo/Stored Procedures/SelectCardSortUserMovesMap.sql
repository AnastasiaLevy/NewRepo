-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE SelectCardSortUserMovesMap
	-- Add the parameters for the stored procedure here
@tId int,
@text nvarchar(100)

AS
BEGIN
	SELECT movesText from CardSortUserMovesMap where tId = @tId

END
