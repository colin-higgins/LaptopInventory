DROP PROCEDURE IF EXISTS 'sp_building_GET_byid'
GO

CREATE PROCEDURE sp_building_GET_byid
     (
		IN p_idbuilding			INT
     )
BEGIN 
    
	SELECT
		idbuilding,
		Name1,
		Desc1,
		Active
	FROM 
		building
	WHERE
		idbuilding = p_idbuilding

END 

GO