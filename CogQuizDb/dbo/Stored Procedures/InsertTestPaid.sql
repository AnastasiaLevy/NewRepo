-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertTestPaid]
@userId uniqueidentifier,
@testId varchar,
@modTestId varchar(50)
 
AS
BEGIN

INSERT INTO [dbo].[User_Test]
           ([testId]
           ,[userId]
           ,[isPaid]
		   ,[paidDate]
		   ,[modifyId]
 )
     VALUES
           (@testId
          ,@userId
          ,1
		  ,GetDate()
		  ,@modTestId)


END
