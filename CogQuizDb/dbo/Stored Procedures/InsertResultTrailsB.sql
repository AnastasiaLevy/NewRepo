-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE InsertResultTrailsB
@userId uniqueidentifier,
@timeTrailB decimal (18, 5)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO [dbo].[TrailsUserResults]
           ([userId]
           ,[timeTrailB])

     VALUES
           (@userId
           ,@timeTrailB)


END
