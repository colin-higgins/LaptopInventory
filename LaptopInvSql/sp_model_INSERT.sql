DROP PROCEDURE IF EXISTS 'sp_model_INSERT'
GO

CREATE PROCEDURE sp_model_INSERT
     (
		IN p_Name1 				VARCHAR(45) ,
		IN p_Brand 				INT ,
		IN p_MemoryType			VARCHAR(45) ,
		IN p_BootMenuKey		VARCHAR(45) ,
		IN p_MSIModel			VARCHAR(45) ,
		IN p_idLPUserAdd 		INT ,
		IN p_Active				BOOLEAN
BEGIN 

    INSERT INTO Model
         (
			idModel ,	
			Name1 ,
			Brand ,
			MemoryType ,
			BootMenuKey ,
			MSIModel ,
			idLPUserLocked ,
			LockDateTimeTime ,
			idLPUserAdd ,
			AddDateTime ,
			Active
         )
    VALUES 
         ( 
			p_Name1 ,
			p_Brand ,
			p_MemoryType ,
			p_BootMenuKey ,
			p_MSIModel ,
			0 ,
			'1900-01-01 00:00:00' ,
			p_idLPUserAdd ,
			NOW() ,
			p_Active
         ) ; 
		 
	SELECT
		LAST_INSERT_ID() AS 'RecordIdent'
	FROM
		Model
		
END 

GO


