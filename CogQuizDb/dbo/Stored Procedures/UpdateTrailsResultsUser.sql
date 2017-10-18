-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateTrailsResultsUser]
@userId uniqueidentifier,
@tID int,
@timeTrailA decimal (18, 5),
@timeTrailB decimal (18, 5)
AS
BEGIN
    -- Insert statements for procedure here
INSERT INTO [dbo].[TrailsUserResults]
        

     VALUES
           (@userId
           ,@timeTrailA
		   ,@timeTrailB
		   ,GETDATE()
		   ,@tID)

END