-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE InsertUserMessage

           @firstName varchar(100) = null
          ,@lastName varchar(100) = null
          ,@email varchar(100) = null
          ,@textMessage nvarchar(2000) = null
          ,@product nvarchar(50) = null

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO [dbo].[MessageBoard]
           ([firstName]
           ,[lastName]
           ,[email]
           ,[textMessage]
           ,[product])
     VALUES
           (@firstName 
           ,@lastName
           ,@email
           ,@textMessage
           ,@product)
END
