Create PROCEDURE InsertMemoryCardsTrial
	@TestId as int,
	@TrialName as nvarchar(250),
	@TrialText as nvarchar(max),
	@Matrix as nvarchar(150),
	@Scheme as nvarchar(150),
	@OverTime as int,
	@ImagesName as nvarchar(250)

AS
BEGIN

INSERT INTO MemoryCardsTests VALUES(@TrialName,@ImagesName,@TestId)
DECLARE @TrialID as int 
SET @TrialID = (Select TOP 1 [Id] from MemoryCardsTests where TestId = @TestId order by id desc)
INSERT INTO MemoryCardsTexts VALUES('TestMessage', @TrialText, @TrialID)
INSERT INTO MemoryCardsStructure VALUES('SchemeTest', @Scheme, @TrialID)
INSERT INTO MemoryCardsStructure VALUES('SchemeMatrix', @Matrix, @TrialID)
INSERT INTO MemoryCardsStructure VALUES('TimeTest', @OverTime, @TrialID)

END