
-- =============================================
-- Create date: <01.06.2017>
-- Description:	<Get All Memory Cards Texts>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllMemoryCardsTexts]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	SELECT * FROM [TestApp].[dbo].[MemoryCardsTexts]
END

GO
