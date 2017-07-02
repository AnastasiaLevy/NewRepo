-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE procedure SelectLondonResultsUsers
@listIds listUserId readonly
as
begin
    select userId
    from LondonUserResults 
    where userId in (select id from @listIds)
end