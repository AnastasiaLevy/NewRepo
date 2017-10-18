-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE InsertSyllogismsTable 
@tId int,
@htmlString nvarchar(Max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
Delete SyllogismsUserResults where tId = @tId;

Insert into SyllogismsUserResultsTable 
Values (@tId, @htmlString)
END
