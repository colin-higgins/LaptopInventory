DROP PROCEDURE IF EXISTS 'sp_macmodel_UPDATE'
GO

CREATE PROCEDURE sp_macmodel_UPDATE
     (
		IN p_idmacmodel			INT ,
		IN p_Name1 				VARCHAR(45) , 
		IN p_Desc1 				VARCHAR(45) ,
		IN p_Active				BOOLEAN
     )
BEGIN 

    UPDATE TABLE 
		macmodel
	SET
		Name1 = p_Name1 ,
		Desc1 = p_Desc1 ,
		Active = p_Active
	WHERE
		idmacmodel = p_idmacmodel

END 

GO