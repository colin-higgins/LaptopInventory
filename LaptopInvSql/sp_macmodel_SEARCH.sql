DROP PROCEDURE IF EXISTS 'sp_macmodel_SEARCH'
GO

CREATE PROCEDURE sp_macmodel_SEARCH
     (
		IN p_Name1 				VARCHAR(45) ,
		IN p_Desc1 				VARCHAR(45) ,
		IN p_idLPUserAdd 		INT         ,
		IN p_Active				BOOLEAN
BEGIN 

	DECLARE vcrName1 VARCHAR(45);
	
	SET vcrName1 := p_Name1 + '%'
	SET vcrDesc1 = p_Desc1 + '%'

    SELECT FROM macmodel
		idmacmodel	,
		Name1 ,
		Desc1 ,
		Active
	FROM
		macmodel
    WHERE 
		Name1 LIKE vcrName1
		AND Desc1 LIKE vcrDesc1
		AND (Active = 1 OR p_Active = 0)
	
END 

GO


