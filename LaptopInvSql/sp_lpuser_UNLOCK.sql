DROP PROCEDURE IF EXISTS 'sp_lpuser_UNLOCK'
GO

CREATE PROCEDURE sp_lpuser_UNLOCK
     (
		IN p_idLPUser				INT
     )
BEGIN 

    UPDATE TABLE 
		LPUser
    SET
		idLPUserLocked = 0
    WHERE
		idLPUser = p_idLPUser
		
END 

GO


