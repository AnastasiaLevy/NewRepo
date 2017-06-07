-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertProviderUserTest]
@userId uniqueidentifier,
@provTestId int,
@modifiedId int 

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
if (Select numLeft from ProviderTests where id = @provTestId) >0 OR  
   (Select numLeft from ProviderTests where id = @provTestId) IS NULL
   Begin
   declare @testType int;
   SET @testType = (Select TestType from ProviderTests where id = @provTestId)
   insert User_Test (testId,userId, isPaid, paidDate, modifyId)
   values (@testType, @userId, 1, GetDate(), @modifiedId);
   If (Select testTypeOption from ProviderTests where id = @provTestId) !=3
	  Begin
	  Update ProviderTests set numLeft = ((Select numLeft from ProviderTests where id = @provTestId) - 1)
	  where id = @provTestId
   End
  END
End
