DROP PROCEDURE IF EXISTS 'sp_lpuser_GET_byid'
GO

CREATE PROCEDURE sp_lpuser_GET_byid
     (
		IN p_idLPUser				INT
     )
BEGIN 
  
    SELECT
		idLPUser ,
		LPUsername ,
		LPPassword ,
		LPEmail ,
		Active
	FROM 
		LPUser
    WHERE
		idLPUser = p_idLPUser
		
END 

GO


