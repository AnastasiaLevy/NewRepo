-- =============================================

-- =============================================
CREATE PROCEDURE [dbo].[GetUserAge]
@userId uniqueidentifier

AS
BEGIN
declare @bday DateTime;
Set @bday = (SELECT birthDate from Registration  where userId = @userId)
if @bday IS NOT NULL
BEGIN
SELECT FLOOR((CAST (GetDate() AS INTEGER) - CAST(@bday AS INTEGER)) / 365.25) AS Age 
END
ELSE 
Select 0;
END
