-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[RemoveTestFromUserList] 
--Declare 
@userId uniqueidentifier,--= '7582B348-FA54-46AD-9D00-7D77D8AD629D',
@tId int --= 7071

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

declare @testType int,
@numLeft int,
@id int,
@providerId int;

SET @providerId = (Select providerid from Registration where userid = @userId)
SET @testType = (select testId from User_Test where tId = @tId)


SET @id = (Select id from ProviderTests where testType = @testType
and testTypeOption !=3 
and providerId = @providerId )

--print @providerId;
--print  @testType;
--print @id;

if @id iS NOT NULL 
AND (Select isStarted from User_Test where tID = @tId and userId = @userId) is null
Begin 
--print @id;
SET @numLeft = (Select numLeft from ProviderTests where id = @id);
--print   @numLeft
Update ProviderTests set numLeft = @numLeft+1 where id = @id;
SET @numLeft = (Select numLeft from ProviderTests where id = @id);
--print @numLeft
end

Update User_Test set isPaid = null where tId = @tId and userId = @userId;

END



--exec RemoveTestFromUserList '7582B348-FA54-46AD-9D00-7D77D8AD629D',6081


--If (Select isStarted from User_Test where tID = 3076 and userId = 'c480536e-5141-41fa-b05e-4a886efcbbd4') is null
--    AND 
-- Exists (Select 1 from ProviderTests where testType = (select testId from User_Test where tId = 3084)
-- and testTypeOption !=3)
--	Begin
--	Print 'Here'
--Update ProviderTests set numLeft = (select numLeft from ProviderTests where id = 

--(Select TOP 1 id From ProviderTests where (testType = (select testId from User_Test where tId = 3084)) and testTypeOption !=3)) + 1 where id =
--(Select TOP 1 id From ProviderTests where (testType = (select testId from User_Test where tId = 3084)) and testTypeOption !=3)

--END

--exec RemoveTestFromUserList 'c480536e-5141-41fa-b05e-4a886efcbbd4', 3084