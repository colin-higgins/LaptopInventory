DROP PROCEDURE IF EXISTS 'sp_OperatingSystem_UPDATE'
GO

CREATE PROCEDURE sp_OperatingSystem_UPDATE
     (
		IN p_idOperatingSystem			INT ,
		IN p_Name1 				VARCHAR(45) , 
		IN p_Desc1 				VARCHAR(45) ,
		IN p_Active				BOOLEAN
     )
BEGIN 

    UPDATE TABLE 
		OperatingSystem
	SET
		Name1 = p_Name1 ,
		Desc1 = p_Desc1 ,
		Active = p_Active
	WHERE
		idOperatingSystem = p_idOperatingSystem

END 

GO