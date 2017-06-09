USE [TestApp]
GO
/****** Object:  StoredProcedure [dbo].[GetAllMemoryCardsStucture]    Script Date: 09.06.2017 3:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <01.06.2017>
-- Description:	<Gets all structures for Memory Cards Test>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllMemoryCardsStucture]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM [TestApp].[dbo].[MemoryCardsStructure]

END

GO
