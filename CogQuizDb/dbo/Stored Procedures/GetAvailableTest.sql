-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GetAvailableTest

AS
BEGIN
Select [testId]
      ,[testName]
    
  FROM [TestApp].[dbo].[AvailableTest]
END
