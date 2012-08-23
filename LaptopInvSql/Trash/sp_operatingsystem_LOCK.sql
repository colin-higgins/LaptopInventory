DROP PROCEDURE IF EXISTS 'sp_operatingsystem_LOCK'
GO

CREATE PROCEDURE sp_operatingsystem_LOCK
     (
		IN p_idoperatingsystem			INT ,
		IN p_idLPUserLocked 	INT
     )
BEGIN 

    UPDATE TABLE 
		operatingsystem
	SET
		idLPUserLocked = p_idLPUserLocked ,
		LockDateTime = NOW()
	WHERE
		idoperatingsystem = p_idoperatingsystem

END 

GO