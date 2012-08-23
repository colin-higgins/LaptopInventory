DROP PROCEDURE IF EXISTS 'sp_model_UNLOCK'
GO

CREATE PROCEDURE sp_model_UNLOCK
     (
		IN p_idModel			INT
     )
BEGIN 

    UPDATE TABLE 
		Model
	SET
		idLPUserLocked = 0
	WHERE
		idModel = p_idModel

END 

GO