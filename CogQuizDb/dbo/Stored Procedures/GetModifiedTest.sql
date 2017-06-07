-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetModifiedTest] 
	-- Add the parameters for the stored procedure here

@providerTestId int,
@providerId int

AS
BEGIN

declare @tableName varchar(100),
@SQLQuery varchar(100)
SET @tableName = (Select modifiedTestTable from AvailableTest where testId = (Select testType from ProviderTests where id = @providerTestId))

if LEN(ISNULL(@tableName,'')) > 0 
--Begin
--SET @SQLQuery = 'SELECT * FROM ' +  @TableName  + '' 
--Execute @SQLQuery
--End
EXEC('SELECT testName, id FROM ' +  @TableName + ' Where providerId = ' + @providerId +' OR providerId = 0')
END

--exec GetModifiedTest 2, 2