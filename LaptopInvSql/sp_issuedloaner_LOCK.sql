DROP PROCEDURE IF EXISTS 'sp_issuedloaner_LOCK'
GO

CREATE PROCEDURE sp_issuedloaner_LOCK
     (
		IN p_idissuedloaner			INT ,
		IN p_idLPUserLocked 		INT
     )
BEGIN 

    UPDATE TABLE 
		issuedloaner
    SET
		idLPUserLocked = p_idLPUserLocked ,
		LockDateTimeTime = NOW()
    WHERE
		idissuedloaner = p_idissuedloaner
		
END 

GO


