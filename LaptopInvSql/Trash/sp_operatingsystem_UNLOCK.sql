DROP PROCEDURE IF EXISTS 'sp_OperatingSystem_UNLOCK'
GO

CREATE PROCEDURE sp_OperatingSystem_UNLOCK
     (
		IN p_idOperatingSystem			INT
     )
BEGIN 

    UPDATE TABLE 
		OperatingSystem
	SET
		idLPUserLocked = 0
	WHERE
		idOperatingSystem = p_idOperatingSystem

END 

GO