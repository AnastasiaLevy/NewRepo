-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GetAllUsers
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    --Table[0]
	SELECT 
       u.[UserId]
      ,[UserName]
      ,[LastActivityDate]
	  ,p.id as 'Provider Id'
	  ,p.providerCode as 'Code'
  FROM [TestApp].[dbo].[aspnet_Users] u
  Left join Provider p on p.userId = u.UserId
  order by LastActivityDate desc

  --Table[1]
  SELECT * from ErrorMessages
  order by errorDate desc;


  --Table[2]
  SELECT * from MessageBoard;
END
