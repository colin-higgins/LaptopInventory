DROP PROCEDURE IF EXISTS 'sp_FacultyLaptop_SEARCH'
GO

CREATE PROCEDURE sp_FacultyLaptop_SEARCH
     (
		IN p_Laptop_idLaptop 					INT ,
		IN p_ASCUsername 						VARCHAR(75) ,
		--IN p_DateIssued 						DATETIME ,
		--IN p_DateReturned 						DATETIME ,
		--IN p_ScheduledDateReturn 				DATETIME ,
		IN p_Department_idDepartment 			INT ,
		IN p_Building_idBuilding 				INT ,
		--IN p_DateIssued 						DATETIME ,
		IN p_Active								BOOLEAN
     )
BEGIN 


	DECLARE vcrASCUsername VARCHAR(45);

	SET vcrASCUsername := p_ASCUsername + '%';

    SELECT
		idFacultyLaptop,
		Laptop_idLaptop,
		ASCusername,
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
		ASCUsername LIKE vcrASCUsername
		AND (Department_idDepartment = p_Department_idDepartment OR p_Department_idDepartment = 0)
		AND (Building_idBuilding = p_Building_idBuilding OR p_Building_idBuilding = 0)
		--AND (DateIssued = p_DateIssued OR p_DateIssued = NULL)
		AND (Active = 1 OR p_Active = 0)
		
END 

GO


