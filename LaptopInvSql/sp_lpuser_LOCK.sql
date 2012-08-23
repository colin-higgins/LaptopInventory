DROP PROCEDURE IF EXISTS 'sp_issuedlaptop_LOCK'
GO

CREATE PROCEDURE sp_issuedlaptop_LOCK
     (
		IN p_idLPUser				INT ,
		IN p_idLPUserLocked		 	INT
     )
BEGIN 

    UPDATE TABLE 
		LPUser
    SET
		idLPUserLocked = p_idLPUserLocked ,
		LockDateTime = NOW()
    WHERE
		idLPUser = p_idLPUser
		
END 

GO


