-- =============================================
-- Author:		<AnaLevy>

-- =============================================
CREATE PROCEDURE  SaveRegistrationProfile
  @username              nvarchar(256)
 ,@firstNAme			 nvarchar(256)
 ,@lastName				 nvarchar(256)
 ,@birthDate			 date
 ,@education			 varchar(100)
 ,@medications			 bit
 ,@medName				 varchar(100)
 ,@gender				 varchar(100)
 ,@hand					 varchar(100)
 ,@brainActivity		 varchar(100)
 ,@ethnisity			 varchar(100)
 ,@language				 varchar(100)
 ,@headInjury			 bit
 ,@headInjAmount		 varchar(100)
 ,@selfEsteem			 varchar(100)
 ,@exercise				 varchar(100)
 ,@selfHealth			 varchar(100)
 ,@profileFilled		 bit
 ,@income                varchar(100)
 ,@userId				 uniqueidentifier

AS
BEGIN

INSERT INTO [dbo].[Registration]
           ([username]
           ,[firstNAme]
           ,[lastName]
           ,[birthDate]
           ,[education]
           ,[medications]
           ,[medName]
           ,[gender]
           ,[hand]
           ,[brainActivity]
           ,[ethnisity]
           ,[language]
           ,[headInjury]
           ,[headInjAmount]
           ,[selfEsteem]
           ,[exercise]
           ,[selfHealth]
           ,[profileFilled]
           ,[userId]
		   ,[income])
     VALUES
          ( @username     
          ,@firstNAme	
          ,@lastName		
          ,@birthDate	
          ,@education	
          ,@medications	
          ,@medName		
          ,@gender		
          ,@hand			
          ,@brainActivity
          ,@ethnisity	
          ,@language		
          ,@headInjury	
          ,@headInjAmount
          ,@selfEsteem	
          ,@exercise		
          ,@selfHealth	
          ,@profileFilled
          ,@userId
		  ,@income)
	END
		  		
