DROP PROCEDURE IF EXISTS 'sp_macmodel_GET_byid'
GO

CREATE PROCEDURE sp_macmodel_GET_byid
     (
		IN p_idmacmodel			INT
     )
BEGIN 
    
	SELECT
		idmacmodel,
		Name1,
		Desc1,
		Active
	FROM 
		macmodel
	WHERE
		idmacmodel = p_idmacmodel

END 

GO