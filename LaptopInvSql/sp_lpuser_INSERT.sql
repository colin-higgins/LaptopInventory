DROP PROCEDURE IF EXISTS 'sp_lpuser_INSERT'
GO

CREATE PROCEDURE sp_lpuser_INSERT
     (
		IN p_LPUsername				VARCHAR(45) ,
		IN p_LPPassword 			VARCHAR(45) ,
		IN p_LPEmail	 			VARCHAR(75) ,
		IN p_idLPUserAdd			INT ,
		IN p_Active					BOOLEAN
     )
BEGIN 

    INSERT INTO LPUser
         (
			LPUsername ,
			LPPassword ,
			LPEmail ,
			idLPUserLocked ,
			LockDateTime ,
			idLPUserAdd ,
			AddDateTime ,
			Active
         )
    VALUES 
         ( 
			p_LPUsername ,
			p_LPPassword ,
			p_LPEmail ,
			0 ,
			'1900-01-01 00:00:00' ,
			p_idLPUserAdd ,
			NOW() ,
			p_Active
         ) ; 
		 
	SELECT
		LAST_INSERT_ID() AS 'RecordIdent'
	FROM
		LPUser
		
END 

GO


