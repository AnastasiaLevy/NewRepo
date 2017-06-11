-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateMemoryCardsTrial]
	@TestId as int,
	@TestName as nvarchar(250),
	@TrialName as nvarchar(250),
	@TrialId as int,
	@TrialText as nvarchar(max),
	@Matrix as nvarchar(150),
	@Scheme as nvarchar(150),
	@OverTime as int,
	@ImagesName as nvarchar(250)

AS
BEGIN
UPDATE MemoryCards SET [Name] = @TestName where id = @TestId
UPDATE MemoryCardsTests SET [Name] = @TrialName, [Images] = @ImagesName where Id = @TrialId
UPDATE MemoryCardsTexts SET [Text] = @TrialText where [TestNumber] = @TrialId
UPDATE MemoryCardsStructure SET [Structure] = @Scheme where [Name] like '%SchemeTest%' and [TestNumber] = @TrialId
UPDATE MemoryCardsStructure SET [Structure] = @Matrix where [Name] like '%SchemeMatrix%' and [TestNumber] = @TrialId
UPDATE MemoryCardsStructure SET [Structure] = @OverTime where [Name] like '%Time%' and [TestNumber] = @TrialId
END

GO
