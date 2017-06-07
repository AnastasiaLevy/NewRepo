-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE InsertCardSortTable
	-- Add the parameters for the stored procedure here
@html nvarchar(max),
@tId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	Delete CardSortTable where tId = @tId;
insert into CardSortTable
values (@tId, @html)
END
