DROP PROCEDURE IF EXISTS 'sp_issuedloaner_GET_byid'
GO

CREATE PROCEDURE sp_issuedloaner_GET_byid
     (
		IN p_idissuedloaner			INT
     )
BEGIN 
 
    SELECT
		`issuedloaner`.`idIssuedLoaner`,
		`issuedloaner`.`Laptop_idLaptop`,
		`issuedloaner`.`ASCusername`,
		`issuedloaner`.`DateIssued`,
		`issuedloaner`.`DateReturned`,
		`issuedloaner`.`ScheduledDateReturn`,
		`issuedloaner`.`idLPUserLocked`,
		`issuedloaner`.`LockDateTime`,
		`issuedloaner`.`idLPUserAdd`,
		`issuedloaner`.`AddDateTime`,
		`issuedloaner`.`Active`,
		`issuedloaner`.`Department_idDepartment`,
		`issuedloaner`.`Building_idBuilding`
	FROM 
		`mylaptopdb`.`issuedloaner`
    WHERE
		idissuedloaner = p_idissuedloaner;
		
END 

GO


