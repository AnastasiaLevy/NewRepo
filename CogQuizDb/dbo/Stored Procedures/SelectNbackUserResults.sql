-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SelectNbackUserResults]
@userId uniqueidentifier,
@tId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


Select NbackUserResults.round as 'Trial',
       hit as 'Correct Yes',
	   miss as 'Wrong Responce',
	   correctReject as 'Correct Rejection',
	   falseAlarm as 'False Alarm',
	   omitTarget as 'Target Omitted',
	   omitNoTarget as 'No Target Omitted',
	   percentScore as 'Score'

	   FROM NBackUserResults
	   where tId = @tId
	   order by NbackUserResults.round

END

--Tbale [1]
  Select firstNAme, lastName from Registration
   where userId = @userId;
