DROP PROCEDURE IF EXISTS 'sp_laptoptype_GET_byid'
GO

CREATE PROCEDURE sp_laptoptype_GET_byid
     (
		IN p_idlaptoptype			INT
     )
BEGIN 
    
	SELECT
		idlaptoptype,
		Name1,
		Desc1,
		Active
	FROM 
		laptoptype
	WHERE
		idlaptoptype = p_idlaptoptype

END 

GO