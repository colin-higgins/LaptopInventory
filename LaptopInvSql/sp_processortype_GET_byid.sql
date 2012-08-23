DROP PROCEDURE IF EXISTS 'sp_processortype_GET_byid'
GO

CREATE PROCEDURE sp_processortype_GET_byid
     (
		IN p_idprocessortype			INT
     )
BEGIN 
    
	SELECT
		idprocessortype,
		Name1,
		Desc1,
		Active
	FROM 
		processortype
	WHERE
		idprocessortype = p_idprocessortype

END 

GO