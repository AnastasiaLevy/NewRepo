USE [TestApp]
GO
/****** Object:  StoredProcedure [dbo].[GetAllMemoryCardsTests]    Script Date: 09.06.2017 3:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Gets all tests from memory cards>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllMemoryCardsTests]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from MemoryCardsTests
END

GO
