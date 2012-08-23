DROP PROCEDURE IF EXISTS 'sp_lpuser_UPDATE'
GO

CREATE PROCEDURE sp_lpuser_UPDATE
     (
		IN p_idLPUser				INT ,
		IN p_LPUsername				VARCHAR(45) ,
		IN p_LPPassword 			VARCHAR(45) ,
		IN p_LPEmail	 			VARCHAR(75) ,
		IN p_Active					BOOLEAN
     )
BEGIN 

    UPDATE TABLE 
		LPUser
    SET
		LPUsername = p_LPUsername ,
		LPPassword = p_LPPassword ,
		LPEmail = p_LPEmail ,
		Active = p_Active
    WHERE
		idLPUser = p_idLPUser
		
END 

GO


