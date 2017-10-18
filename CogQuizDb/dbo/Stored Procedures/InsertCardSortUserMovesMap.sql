-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[InsertCardSortUserMovesMap]
	-- Add the parameters for the stored procedure here
@tId int,
@text nvarchar(max)

AS
BEGIN
	INSERT INTO [dbo].[CardSortUserMovesMap]
           ([tId]
           ,[movesText]
            )
     VALUES
           (@tId
		   ,@text)

END

