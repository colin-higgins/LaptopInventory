DROP PROCEDURE IF EXISTS 'sp_laptop_GET_byid'
GO

CREATE PROCEDURE sp_laptop_GET_byid
     (
		IN p_idLaptop			INT
     )
BEGIN 

	SELECT
		idLaptop,
		Name1,
		Model_idModel,
		NetworkName,
		WirelessMAC,
		PhysicalMAC,
		SerialNumber,
		OperatingSystem_idOperatingSystem,
		ProcessorType_idProcessorType,
		LaptopType_idLaptopType,
		RAM,
		Comments,
		Loaner,
		ForParts,
		DateDecomissioned,
		idLPUserLocked,
		LockDateTime,
		idLPUserAdd,
		AddDateTime,
		Active
	FROM
		Laptop
    WHERE
		idLaptop = p_idLaptop
		
END 

GO


