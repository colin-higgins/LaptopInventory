DROP PROCEDURE IF EXISTS 'sp_department_UPDATE'
GO

CREATE PROCEDURE sp_department_UPDATE
     (
		IN p_iddepartment			INT ,
		IN p_Name1 				VARCHAR(45) , 
		IN p_Desc1 				VARCHAR(45) ,
		IN p_Active				BOOLEAN
     )
BEGIN 

    UPDATE TABLE 
		department
	SET
		Name1 = p_Name1 ,
		Desc1 = p_Desc1 ,
		Active = p_Active
	WHERE
		iddepartment = p_iddepartment

END 

GO