DROP PROCEDURE IF EXISTS 'sp_OperatingSystem_INSERT'
GO

CREATE PROCEDURE sp_OperatingSystem_INSERT
     (
		IN p_Name1 				VARCHAR(45) ,
		IN p_Desc1 				VARCHAR(45) ,
		IN p_idLPUserAdd 		INT ,
		IN p_Active				BOOLEAN
		
BEGIN 

    INSERT INTO OperatingSystem
         (
			idOperatingSystem ,	
			Name1 ,
			Desc1 ,
			Active
         )
    VALUES 
         ( 
			p_Name1 ,
			p_Desc1 ,
			p_Active
         ) ; 
		 
	SELECT
		LAST_INSERT_ID() AS 'RecordIdent'
	FROM
		OperatingSystem
		
END 

GO


