DROP PROCEDURE IF EXISTS 'sp_permission_UNLOCK'
GO

CREATE PROCEDURE sp_permission_UNLOCK
     (
		IN p_idpermission			INT
     )
BEGIN 

    UPDATE TABLE 
		permission
	SET
		idLPUserLocked = 0
	WHERE
		idpermission = p_idpermission

END 

GO