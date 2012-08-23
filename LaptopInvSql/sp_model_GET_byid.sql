DROP PROCEDURE IF EXISTS 'sp_model_GET_byid'
GO

CREATE PROCEDURE sp_model_GET_byid
     (
		IN p_idModel			INT
     )
BEGIN 
    
	SELECT
		idModel,
		Name1,
		Brand,
		MemoryType,
		BootMenuKey,
		MSIModel,
		idLPUserLocked,
		LockDateTime,
		idLPUserAdd,
		AddDateTime,
		Active
	FROM 
		Model
	WHERE
		idModel = p_idModel

END 

GO