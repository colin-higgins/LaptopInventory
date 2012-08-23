DROP PROCEDURE IF EXISTS 'sp_FacultyLaptop_INSERT'
GO

CREATE PROCEDURE sp_FacultyLaptop_INSERT
     (
		IN p_Laptop_idLaptop 					INT ,
		IN p_ASCUsername 						VARCHAR(75) ,
		IN p_DateIssued 						DATETIME ,
		IN p_DateReturned 						DATETIME ,
		IN p_ScheduledDateReturn 				DATETIME ,
		IN p_Department_idDepartment 			INT ,
		IN p_Building_idBuilding 				INT ,
		IN p_idLPUserAdd 						INT ,
		IN p_Active								BOOLEAN
     )
BEGIN 

    INSERT INTO FacultyLaptop
         (
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
         )
    VALUES 
         ( 
			p_Laptop_idLaptop,
			p_ASCusername,
			p_DateIssued,
			p_DateReturned,
			p_ScheduledDateReturn,
			0,
			'1900-01-01 00:00:00' ,
			p_idLPUserAdd,
			NOW(),
			p_Active,
			p_Department_idDepartment,
			p_Building_idBuilding
         ) ; 
		 
	SELECT
		LAST_INSERT_ID() AS 'RecordIdent'
	FROM
		FacultyLaptop
		
END 

GO


