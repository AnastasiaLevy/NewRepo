-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE UpdateUserEmail 
@userId uniqueidentifier,
@email nvarchar

AS
BEGIN

  update aspnet_membership 
  Set email = @email 
  where userid = @userId;
END
