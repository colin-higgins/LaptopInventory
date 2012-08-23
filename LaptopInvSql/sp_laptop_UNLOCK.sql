DROP PROCEDURE IF EXISTS 'sp_laptop_UNLOCK'
GO

CREATE PROCEDURE sp_laptop_UNLOCK
     (
		IN p_idLaptop			INT
     )
BEGIN 

    UPDATE TABLE
		Laptop
	SET
		idLPUserLocked = 0
    WHERE
		idLaptop = p_idLaptop
		
END 

GO


