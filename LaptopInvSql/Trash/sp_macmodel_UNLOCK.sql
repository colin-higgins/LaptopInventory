DROP PROCEDURE IF EXISTS 'sp_macmodel_UNLOCK'
GO

CREATE PROCEDURE sp_macmodel_UNLOCK
     (
		IN p_idmacmodel			INT
     )
BEGIN 

    UPDATE TABLE 
		macmodel
	SET
		idLPUserLocked = 0
	WHERE
		idmacmodel = p_idmacmodel

END 

GO