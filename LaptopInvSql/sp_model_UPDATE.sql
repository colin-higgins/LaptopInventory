DROP PROCEDURE IF EXISTS 'sp_model_UPDATE'
GO

CREATE PROCEDURE sp_model_UPDATE
     (
		IN p_idModel			INT ,
		IN p_Name1 				VARCHAR(45) , 
		IN p_Brand 				INT ,
		IN p_MemoryType			VARCHAR(45) ,
		IN p_BootMenuKey		VARCHAR(45) ,
		IN p_MSIModel			VARCHAR(45) ,
		IN p_Active				BOOLEAN
     )
BEGIN 

    UPDATE TABLE 
		Model
	SET
		Name1 = p_Name1 ,
		Brand = p_Brand ,
		MemoryType = p_MemoryType,
		BootMenuKey = p_BootMenuKey,
		MSIModel = p_MSIModel,
		Active = p_Active
	WHERE
		idModel = p_idModel

END 

GO