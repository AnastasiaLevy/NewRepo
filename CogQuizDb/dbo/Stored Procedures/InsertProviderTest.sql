-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE InsertProviderTest
@providerId int,
@testType varchar (50),
@testTypeOption int,
@numLeft int

AS

If not EXISTS (Select 1 from ProviderTests 
			   where providerId = @providerId
			   and testType = @testType
			   and testTypeOption = @testTypeOption)
			   Begin
			   INSERT INTO [dbo].[ProviderTests]
       

           ([providerId]
		   ,[testType]
           ,[testTypeOption]
           ,[numLeft])
     VALUES
         
           (@providerId
		   ,@testType
           ,@testTypeOption
		   ,@numLeft
           )
		 
			   End
ELSE update ProviderTests 
SET numLeft = @numLeft 
WHERE  providerId = @providerId
			   and testType = @testType
			   and testTypeOption = @testTypeOption
