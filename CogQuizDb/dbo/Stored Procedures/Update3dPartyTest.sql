


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Update3dPartyTest]

           @transactionId int = null
          ,@sequence int = null
          ,@finished bit = 0
		  ,@paramString varchar(max) = null
		  ,@userId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

update [3dPartyTests] set 
	transactionId = @transactionId,
	sequence = @sequence,
	finished = @finished,
	paramString = @paramString
	where [userId] = @userId
END