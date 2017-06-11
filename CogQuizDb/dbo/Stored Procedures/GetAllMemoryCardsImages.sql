﻿-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Gets  all images with non NULL TestNumber and SortOrder.Ordered by TestNumber->SortOrder>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllMemoryCardsImages] 

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM [TestApp].[dbo].[MemoryCardsImages]
	where SortOrder is not null
	order by [Name], SortOrder
END

GO
