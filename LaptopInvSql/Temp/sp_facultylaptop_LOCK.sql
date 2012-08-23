DROP PROCEDURE IF EXISTS 'sp_FacultyLaptop_LOCK'
GO

CREATE PROCEDURE sp_FacultyLaptop_LOCK
     (
		IN p_idFacultyLaptop			INT ,
		IN p_idLPUserLocked 	INT
     )
BEGIN 

    UPDATE TABLE
		FacultyLaptop
	SET
		idLPUserLocked = p_idLPUserLocked ,
		LockDateTimeTime = NOW()
    WHERE
		idFacultyLaptop = p_idFacultyLaptop
		
END 

GO


