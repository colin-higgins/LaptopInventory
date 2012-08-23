DROP PROCEDURE IF EXISTS 'sp_permission_LOCK'
GO

CREATE PROCEDURE sp_permission_LOCK
     (
		IN p_idpermission			INT ,
		IN p_idLPUserLocked 	INT
     )
BEGIN 

    UPDATE TABLE 
		permission
	SET
		idLPUserLocked = p_idLPUserLocked ,
		LockDateTime = NOW()
	WHERE
		idpermission = p_idpermission

END 

GO