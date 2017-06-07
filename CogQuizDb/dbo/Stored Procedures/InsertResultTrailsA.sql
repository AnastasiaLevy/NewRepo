-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE InsertResultTrailsA
@userId uniqueidentifier,
@timeTrailA decimal (18, 5)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO [dbo].[TrailsUserResults]
           ([userId]
           ,[timeTrailA])

     VALUES
           (@userId
           ,@timeTrailA)


END
