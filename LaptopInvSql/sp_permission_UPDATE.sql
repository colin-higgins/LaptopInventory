DROP PROCEDURE IF EXISTS 'sp_permission_UPDATE'
GO

CREATE PROCEDURE sp_permission_UPDATE
     (
		IN p_idpermission			INT ,
		IN p_Name1 				VARCHAR(45) , 
		IN p_Desc1 				VARCHAR(45) ,
		IN p_Active				BOOLEAN
     )
BEGIN 

    UPDATE TABLE 
		permission
	SET
		Name1 = p_Name1 ,
		Desc1 = p_Desc1 ,
		Active = p_Active
	WHERE
		idpermission = p_idpermission

END 

GO