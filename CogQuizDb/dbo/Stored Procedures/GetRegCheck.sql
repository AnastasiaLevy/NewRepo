-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GetRegCheck
	-- Add the parameters for the stored procedure here
	@userId uniqueidentifier

AS
BEGIN

Select profileFilled from Registration where userId = @userId;

END
