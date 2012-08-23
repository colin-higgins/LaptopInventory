DROP PROCEDURE IF EXISTS 'sp_laptop_LOCK'
GO

CREATE PROCEDURE sp_laptop_LOCK
     (
		IN p_idLaptop			INT ,
		IN p_idLPUserLocked 	INT
     )
BEGIN 

    UPDATE TABLE
		Laptop
	SET
		idLPUserLocked = p_idLPUserLocked ,
		LockDateTimeTime = NOW()
    WHERE
		idLaptop = p_idLaptop
		
END 

GO


