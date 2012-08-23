DROP PROCEDURE IF EXISTS 'sp_FacultyLaptop_UNLOCK'
GO

CREATE PROCEDURE sp_FacultyLaptop_UNLOCK
     (
		IN p_idFacultyLaptop			INT
     )
BEGIN 

    UPDATE TABLE
		FacultyLaptop
	SET
		idLPUserLocked = 0
    WHERE
		idFacultyLaptop = p_idFacultyLaptop
		
END 

GO


