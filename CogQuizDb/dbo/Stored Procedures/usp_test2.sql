-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create procedure usp_test2 
@list list readonly
as
begin
    select *
    from LondonUserResults 
    where id in (select id from @list)
end