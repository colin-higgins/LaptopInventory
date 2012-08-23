DROP PROCEDURE IF EXISTS 'sp_issuedloaner_SEARCH'
GO

CREATE PROCEDURE sp_issuedloaner_SEARCH
     (
		IN p_Name1 						VARCHAR(45),
		IN p_idLaptop 					INT        ,
		IN p_ASCusername 				VARCHAR(45),
		IN p_DateIssued 				DATETIME   ,
		IN p_DateReturned				DATETIME   ,
		IN p_ScheduledDateReturn 		DATETIME   ,
		IN p_Department_idDepartment 	INT		   ,
		IN p_Active						BOOLEAN
     )
BEGIN 

	DECLARE vcrName1 VARCHAR(45);
	DECLARE vcrASCUsername VARCHAR(45);
	
    SET vcrName1 := p_Name1 + '%';
	SET vcrASCUsername := p_ASCUsername + '%';

    SELECT
		idissuedloaner ,
		Name1 ,
		idLaptop ,
		ASCusername ,
		DateIssued ,
		DateReturned ,
		ScheduledDateReturn ,
		Active               
	FROM
		issuedloaner
	WHERE 
		Name1 LIKE vcrName1
		AND (idLaptop = p_idLaptop OR p_idLaptop = 0)
		AND ASCusername LIKE vcrASCUsername
		AND (DateIssued = p_DateIssued OR p_DateIssued = NULL)
		AND (DateReturned = p_DateReturned OR p_DateReturned = NULL)
		AND (ScheduledDateReturn = p_ScheduledDateReturn OR p_ScheduledDateReturn = NULL)
		AND (Department_idDepartment = p_Department_idDepartment OR Department_idDepartment = NULL)
		AND (Active = 1 OR p_Active = 0)
 
	
END 

GO


