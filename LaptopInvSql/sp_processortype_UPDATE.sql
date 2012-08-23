DROP PROCEDURE IF EXISTS 'sp_processortype_UPDATE'
GO

CREATE PROCEDURE sp_processortype_UPDATE
     (
		IN p_idprocessortype			INT ,
		IN p_Name1 				VARCHAR(45) , 
		IN p_Desc1 				VARCHAR(45) ,
		IN p_Active				BOOLEAN
     )
BEGIN 

    UPDATE TABLE 
		processortype
	SET
		Name1 = p_Name1 ,
		Desc1 = p_Desc1 ,
		Active = p_Active
	WHERE
		idprocessortype = p_idprocessortype

END 

GO