-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertUserProviderId] 
@userId uniqueidentifier,
@code nvarchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
Declare 
@id int,
@userName nvarchar (100)
Set @id = (SELECT Id from Provider where providerCode = @code);
Set @userName = (Select userName From aspnet_Users where userId = @userId)

If @id IS NOT NULL
Begin
if (Select providerId from Registration where userId = @userId) IS NOT NULL
OR (Select userId from Registration  where userId = @userId) IS NOT NULL
begin
Update Registration set providerId = @id where userId = @userId
end
ELSE 

insert into Registration (userId,username, providerId)
Values (@userId,@userName, @id)

End
END
