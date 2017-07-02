
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetTestByTestId]
@TestId integer
AS
BEGIN
Select [testId]
      ,[testName]
    
  FROM [TestApp].[dbo].[AvailableTest] where testId = @TestId
END


GO


