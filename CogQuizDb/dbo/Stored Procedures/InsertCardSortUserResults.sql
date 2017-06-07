-- =============================================
-- Author:		<AnaLevy>
-- Create date: <jan 12 17>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertCardSortUserResults]
 
            @userId uniqueidentifier
           ,@tId int
           ,@respCount int
           ,@respTime decimal(18,5)
           ,@correctCnt int
           ,@errorCnt int
           ,@errorTime decimal(18,5)
           ,@persevResp int
           ,@persevTime decimal(18,5)
           ,@persevRespError int
           ,@persevRespErrTime decimal(18,5)
           ,@uniqErr int
           ,@uniqErrTime decimal(18,5)
           ,@failureSetCnt int
		   ,@category nvarchar(50)
		   ,@catComplete nvarchar(50)
AS
BEGIN

Delete CardSortUserResult where tid = @tId and category = @category;

INSERT INTO [dbo].[CardSortUserResult]
           ([userId]
           ,[tId]
           ,[respCount]
           ,[respTime]
           ,[correctCnt]
           ,[errorCnt]
           ,[errorTime]
           ,[persevResp]
           ,[persevTime]
           ,[persevRespError]
           ,[persevRespErrTime]
           ,[uniqErr]
           ,[uniqErrTime]
           ,[failureSetCnt]
		   ,[category]
		   ,[catComplete])
     VALUES
           (
            @userId 
           ,@tId 
           ,@respCount 
           ,@respTime 
           ,@correctCnt 
           ,@errorCnt 
           ,@errorTime 
           ,@persevResp 
           ,@persevTime 
           ,@persevRespError 
           ,@persevRespErrTime 
           ,@uniqErr 
           ,@uniqErrTime 
           ,@failureSetCnt
		   ,@category
		   ,@catComplete)

END
