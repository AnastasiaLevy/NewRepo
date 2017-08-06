


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Insert3dPartyTest]

           @userId uniqueidentifier = null
          ,@sequence int = null
          ,@finished bit = 0
		  ,@relationship varchar(50) = 0
		  ,@tId int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO [dbo].[3dPartyTests]
           ([userId]
			  ,[sequence]
			  ,[finished]
			  ,[relationship]
			  ,[tId])
     VALUES
           (@userId 
           ,@sequence
           ,@finished
		   ,@relationship
		   ,@tId)
END