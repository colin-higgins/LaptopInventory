DROP PROCEDURE IF EXISTS 'sp_issuedloaner_UPDATE'
GO

CREATE PROCEDURE sp_issuedloaner_UPDATE
     (
		IN p_idissuedloaner				INT ,
		IN p_Name1 						VARCHAR(45) ,
		IN p_Laptop_idLaptop 			INT ,
		IN p_ASCusername 				VARCHAR(45) ,
		IN p_DateIssued 				DATETIME ,
		IN p_DateReturned				DATETIME ,
		IN p_ScheduledDateReturn 		DATETIME ,
		IN p_Department_idDepartment	INT
		IN p_Active						BOOLEAN
     )
BEGIN 

    UPDATE TABLE 
		issuedloaner
    SET
		Name1 = p_Name1 ,
		Laptop_idLaptop = p_Laptop_idLaptop ,
		ASCusername = p_ASCusername ,
		DateIssued = p_DateIssued ,
		DateReturned = p_DateReturned ,
		ScheduledDateReturn = p_ScheduledDateReturn ,
		Department_idDepartment = p_Department_idDepartment ,
		Active = p_Active
    WHERE
		idissuedloaner = p_idissuedloaner
		
END 

GO


