DROP PROCEDURE IF EXISTS 'sp_model_SEARCH'
GO

CREATE PROCEDURE sp_model_SEARCH
     (
		IN p_Name1 				VARCHAR(45) ,
		IN p_Brand 				INT         ,
		IN p_MemoryType			VARCHAR(45) ,
		IN p_BootMenuKey		VARCHAR(45) ,
		IN p_MSIModel			VARCHAR(45) ,
		IN p_idLPUserAdd 		INT         ,
		IN p_Active				BOOLEAN
BEGIN 

	DECLARE vcrName1 VARCHAR(45);
	
	SET vcrName1 := p_Name1 + '%'
	SET vcrMemoryType = p_MemoryType + '%'
	SET vcrBootMenuKey = p_BootMenuKey + '%'
	SET vcrMSIModel = p_MSIModel + '%'

    SELECT FROM Model
		idModel	,
		Name1 ,
		Brand ,
		MemoryType ,
		BootMenuKey ,
		MSIModel ,
		Active
	FROM
		Model
    WHERE 
		Name1 LIKE vcrName1
		AND MemoryType LIKE vcrMemoryType
		AND BootMenuKey LIKE vcrBootMenuKey
		AND MSIModel LIKE vcrMSIModel
		AND (Brand = p_Brand OR p_Brand = 0)
		AND (Active = 1 OR p_Active = 0)
	
END 

GO


