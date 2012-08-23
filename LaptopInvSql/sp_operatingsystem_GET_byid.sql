DROP PROCEDURE IF EXISTS 'sp_OperatingSystem_GET_byid'
GO

CREATE PROCEDURE sp_OperatingSystem_GET_byid
     (
		IN p_idOperatingSystem			INT
     )
BEGIN 
    
	SELECT
		idOperatingSystem,
		Name1,
		Desc1,
		Active
	FROM 
		OperatingSystem
	WHERE
		idOperatingSystem = p_idOperatingSystem

END 

GO