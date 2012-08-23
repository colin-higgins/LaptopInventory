DROP PROCEDURE IF EXISTS 'sp_macmodel_LOCK'
GO

CREATE PROCEDURE sp_macmodel_LOCK
     (
		IN p_idmacmodel			INT ,
		IN p_idLPUserLocked 	INT
     )
BEGIN 

    UPDATE TABLE 
		macmodel
	SET
		idLPUserLocked = p_idLPUserLocked ,
		LockDateTime = NOW()
	WHERE
		idmacmodel = p_idmacmodel

END 

GO