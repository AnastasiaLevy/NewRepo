-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE InsertErrorMessage

@userId uniqueidentifier,
@pageName nchar(100),
@procName nchar(100),
@exeptionMessage nvarchar(2000)
          

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO [dbo].[ErrorMessages]
           (
            [userId]
           ,[pageName]
           ,[procName]
           ,[exeptionMessage]
           ,[errorDate])
     VALUES
           (
           @userId 
          ,@pageName 
          ,@procName 
          ,@exeptionMessage 
          ,GetDate())
END
