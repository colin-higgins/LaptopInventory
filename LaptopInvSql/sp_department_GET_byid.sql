DROP PROCEDURE IF EXISTS 'sp_department_GET_byid'
GO

CREATE PROCEDURE sp_department_GET_byid
     (
		IN p_iddepartment			INT
     )
BEGIN 
    
	SELECT
		iddepartment,
		Name1,
		Desc1,
		Active
	FROM 
		department
	WHERE
		iddepartment = p_iddepartment

END 

GO