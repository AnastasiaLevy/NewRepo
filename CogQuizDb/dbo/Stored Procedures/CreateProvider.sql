-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateProvider] 
		@userId uniqueidentifier,
        @companyName nvarchar(100) = null,
        @companyContactFirst nchar(10)= null,
        @companyContactName nvarchar(100)= null,
        @companyContactEmail nvarchar(100)= null,
        @companyContactNumber nchar(10)= null
AS
BEGIN
DELETE Provider
WHERE userId = @userId; 

INSERT INTO [dbo].[Provider]
           ([userId]
           ,[companyName]
           ,[companyContactFirst]
           ,[companyContactName]
           ,[companyContactEmail]
           ,[companyContactNumber])
     VALUES
    		(@userId 
        ,@companyName 
        ,@companyContactFirst 
        ,@companyContactName 
        ,@companyContactEmail 
        ,@companyContactNumber)
END
