DROP PROCEDURE IF EXISTS 'sp_permission_GET_byid'
GO

CREATE PROCEDURE sp_permission_GET_byid
     (
		IN p_idpermission			INT
     )
BEGIN 
    
	SELECT
		idpermission,
		Name1,
		Desc1,
		Active
	FROM 
		permission
	WHERE
		idpermission = p_idpermission

END 

GO