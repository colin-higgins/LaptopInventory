DROP PROCEDURE IF EXISTS 'sp_FacultyLaptop_GET_byid'
GO

CREATE PROCEDURE sp_FacultyLaptop_GET_byid
     (
		IN p_idFacultyLaptop			INT
     )
BEGIN 

	SELECT
		idFacultyLaptop,
		Laptop_idLaptop,
		ASCUsername,
		DateIssued,
		DateReturned,
		ScheduledDateReturn,
		idLPUserLocked,
		LockDateTime,
		idLPUserAdd,
		AddDateTime,
		Active,
		Department_idDepartment,
		Building_idBuilding
	FROM
		FacultyLaptop
    WHERE
		idFacultyLaptop = p_idFacultyLaptop
		
END 

GO


