DROP PROCEDURE IF EXISTS 'sp_FacultyLaptop_UPDATE'
GO

CREATE PROCEDURE sp_FacultyLaptop_UPDATE
     (
		IN p_idFacultyLaptop					INT ,
		IN p_Laptop_idLaptop 					INT ,
		IN p_ASCUsername 						VARCHAR(75) ,
		IN p_DateIssued 						DATETIME ,
		IN p_DateReturned 						DATETIME ,
		IN p_ScheduledDateReturn 				DATETIME ,
		IN p_Department_idDepartment 			INT ,
		IN p_Building_idBuilding 				INT ,
		IN p_Active								BOOLEAN
     )
BEGIN 

    UPDATE TABLE
		FacultyLaptop
	SET
		Laptop_idLaptop = p_Laptop_idLaptop,
		ASCusername = p_ASCusername,
		DateIssued = p_DateIssued,
		DateReturned = p_DateReturned,
		ScheduledDateReturn = p_ScheduledDateReturn,
		Active = p_Active,
		Department_idDepartment = p_Department_idDepartment,
		Building_idBuilding = p_Building_idBuilding
    WHERE
		idFacultyLaptop = p_idFacultyLaptop
		
END 

GO


