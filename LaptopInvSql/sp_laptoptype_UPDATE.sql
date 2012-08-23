DROP PROCEDURE IF EXISTS 'sp_laptoptype_UPDATE'
GO

CREATE PROCEDURE sp_laptoptype_UPDATE
     (
		IN p_idlaptoptype			INT ,
		IN p_Name1 				VARCHAR(45) , 
		IN p_Desc1 				VARCHAR(45) ,
		IN p_Active				BOOLEAN
     )
BEGIN 

    UPDATE TABLE 
		laptoptype
	SET
		Name1 = p_Name1 ,
		Desc1 = p_Desc1 ,
		Active = p_Active
	WHERE
		idlaptoptype = p_idlaptoptype

END 

GO