DROP PROCEDURE IF EXISTS 'sp_building_UPDATE'
GO

CREATE PROCEDURE sp_building_UPDATE
     (
		IN p_idbuilding			INT ,
		IN p_Name1 				VARCHAR(45) , 
		IN p_Desc1 				VARCHAR(45) ,
		IN p_Active				BOOLEAN
     )
BEGIN 

    UPDATE TABLE 
		building
	SET
		Name1 = p_Name1 ,
		Desc1 = p_Desc1 ,
		Active = p_Active
	WHERE
		idbuilding = p_idbuilding

END 

GO