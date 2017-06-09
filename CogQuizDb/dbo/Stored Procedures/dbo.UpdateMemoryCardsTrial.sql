USE [TestApp]
GO
/****** Object:  StoredProcedure [dbo].[UpdateMemoryCardsTrial]    Script Date: 09.06.2017 3:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateMemoryCardsTrial]
	@Id as int,
	@TestName as nvarchar(250),
	@TestText as nvarchar(max),
	@Matrix as nvarchar(150),
	@Scheme as nvarchar(150),
	@OverTime as int,
	@ImagesName as nvarchar(250)

AS
BEGIN

UPDATE MemoryCardsTests SET [Name] = @TestName, [Images] = @ImagesName where Id = @Id
UPDATE MemoryCardsTexts SET [Text] = @TestText where [TestNumber] = @Id
UPDATE MemoryCardsStructure SET [Structure] = @Scheme where [Name] like '%SchemeTest%' and [TestNumber] = @Id
UPDATE MemoryCardsStructure SET [Structure] = @Matrix where [Name] like '%SchemeMatrix%' and [TestNumber] = @Id
UPDATE MemoryCardsStructure SET [Structure] = @OverTime where [Name] like '%Time%' and [TestNumber] = @Id
END

GO
