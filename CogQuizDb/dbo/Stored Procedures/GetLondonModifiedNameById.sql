CREATE PROCEDURE [dbo].[GetLondonModifiedNameById] 
    @id int   
AS   

    --SET NOCOUNT ON;  
    --SELECT testName
    --FROM LondonModified 
    --WHERE id = @id   
	BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
Select testName from LondonModified
WHERE Id = @id;
END