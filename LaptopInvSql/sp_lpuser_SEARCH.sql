DROP PROCEDURE IF EXISTS 'sp_lpuser_SEARCH'
GO

CREATE PROCEDURE sp_lpuser_SEARCH
     (
		IN p_LPUsername				VARCHAR(45) ,
		IN p_LPEmail	 			VARCHAR(75) ,
		IN p_Active		BOOLEAN
     )
BEGIN 

	DECLARE vcrLPUsername VARCHAR(45);
	DECLARE vcrLPEmail VARCHAR(45);
	
	SET vcrLPUsername := p_LPUsername + '%';
	SET vcrLPEmail := p_LPEmail + '%';

    SELECT 
		idLPUser ,
		LPUsername ,
		LPEmail ,
		Active
	FROM 
		LPUser
    WHERE 
		LPUsername LIKE vcrLPUsername
		AND LPEmail LIKE vcrLPEmail
		AND (Active = 1 OR p_Active = 0)
		
END 

GO


