DROP PROCEDURE IF EXISTS 'sp_issuedloaner_INSERT'
GO

CREATE PROCEDURE sp_issuedloaner_INSERT
     (
		IN p_Name1 						VARCHAR(45) ,
		IN p_idLaptop 					INT ,
		IN p_ASCusername 				VARCHAR(45) ,
		IN p_DateIssued 				DATETIME ,
		IN p_DateReturned				DATETIME ,
		IN p_ScheduledDateReturn 		DATETIME ,
		IN p_idLPUserAdd 				INT ,
		IN p_Active						BOOLEAN ,
		IN p_Department_idDepartment 	INT ,
		IN p_Building_idBuilding		INT 
     )
BEGIN 

    INSERT INTO `mylaptopdb`.`issuedloaner`
		(
			`Laptop_idLaptop`,
			`ASCusername`,
			`DateIssued`,
			`DateReturned`,
			`ScheduledDateReturn`,
			`idLPUserLocked`,
			`LockDateTime`,
			`idLPUserAdd`,
			`AddDateTime`,
			`Active`,
			`Department_idDepartment`,
			`Building_idBuilding`
		)
    VALUES 
         ( 
			p_Name1 ,
			p_idLaptop ,
			p_ASCusername ,
			p_DateIssued ,
			p_DateReturned ,
			p_ScheduledDateReturn ,
			0 ,
			'1900-01-01 00:00:00' ,
			p_idLPUserAdd ,
			NOW() ,
			p_Active ,
			p_Department_idDepartment ,
			p_Building_idBuilding 
         ) ; 
		 
	SELECT
		LAST_INSERT_ID() AS 'RecordIdent'
	FROM
		issuedloaner
	
END 

GO


