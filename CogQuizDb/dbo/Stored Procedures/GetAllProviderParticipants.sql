-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllProviderParticipants] 
@providerId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

Select lastName as 'Last Name', firstNAme as 'First Name', 
FLOOR((CAST (GetDate() AS INTEGER) - CAST(birthDate AS INTEGER)) / 365.25) AS Age , 
userId,
username
 from Registration 

where providerId = @providerId
Order by lastName;

END
