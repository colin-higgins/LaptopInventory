DROP PROCEDURE IF EXISTS 'sp_issuedloaner_UNLOCK'
GO

CREATE PROCEDURE sp_issuedloaner_UNLOCK
     (
		IN p_idissuedloaner			INT
     )
BEGIN 

    UPDATE TABLE 
		issuedloaner
    SET
		idLPUserLocked = 0
    WHERE
		idissuedloaner = p_idissuedloaner
		
END 

GO


