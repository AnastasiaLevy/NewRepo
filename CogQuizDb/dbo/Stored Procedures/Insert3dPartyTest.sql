

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Insert3dPartyTest]

           @userId uniqueidentifier = null
          ,@sequence int = null
          ,@finished bit = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO [dbo].[3dPartyTests]
           ([userId]
			  ,[sequence]
			  ,[finished])
     VALUES
           (@userId 
           ,@sequence
           ,@finished)
END