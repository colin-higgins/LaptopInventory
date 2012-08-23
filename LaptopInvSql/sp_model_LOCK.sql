DROP PROCEDURE IF EXISTS 'sp_model_LOCK'
GO

CREATE PROCEDURE sp_model_LOCK
     (
		IN p_idModel			INT ,
		IN p_idLPUserLocked 	INT
     )
BEGIN 

    UPDATE TABLE 
		Model
	SET
		idLPUserLocked = p_idLPUserLocked ,
		LockDateTime = NOW()
	WHERE
		idModel = p_idModel

END 

GO