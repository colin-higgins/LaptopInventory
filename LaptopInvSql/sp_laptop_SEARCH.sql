DROP PROCEDURE IF EXISTS 'sp_laptop_SEARCH'
GO

CREATE PROCEDURE sp_laptop_SEARCH
     (
		IN p_Name1 				VARCHAR(45)   ,
		IN p_idModel 			INT           ,
		IN p_NetworkName 		VARCHAR(75)   ,
		IN p_WirelessMAC 		VARCHAR(45)   ,
		IN p_PhysicalMAC 		VARCHAR(45)   ,
		IN p_SerialNumber 		VARCHAR(45)   ,
		IN p_OperatingSystem_idOperatingSystem 	INT   ,
		IN p_ProcessorType_idProcessorType 		INT   ,
		IN p_LaptopType_idLaptopType			INT	  ,
		IN p_RAM 				DECIMAL       ,
		IN p_Comments 			VARCHAR(250)  ,
		IN p_Loaner 			BOOLEAN       ,
		IN p_InStock 			BOOLEAN       ,
		IN p_ForParts 			BOOLEAN       ,
		IN p_DateDecomissioned 	DATETIME      ,
		IN p_idLPUserLocked 	INT           ,
		IN p_LockDateTimeTime 	DATETIME      ,
		IN p_idLPUserAdd 		INT           ,
		IN p_AddDateTime 		DATETIME      ,
		IN p_Active				BOOLEAN
     )
BEGIN 

	DECLARE vcrName1 VARCHAR(45);
	DECLARE vcrNetworkName VARCHAR(45);
	DECLARE vcrWirelessMAC VARCHAR(45);
	DECLARE vcrPhysicalMAC VARCHAR(45);
	DECLARE vcrSerialNumber VARCHAR(45);
	DECLARE vcrOperatingSystem_idOperatingSystem VARCHAR(45);
	DECLARE vcrComments VARCHAR(45);
	
	SET vcrName1 := p_Name1 + '%';
	SET vcrNetworkName := p_NetworkName + '%';
	SET vcrWirelessMAC := p_WirelessMAC + '%';
	SET vcrPhysicalMAC := p_PhysicalMAC + '%';
	SET vcrSerialNumber := p_SerialNumber + '%';
	--SET vcrOperatingSystem_idOperatingSystem := p_OperatingSystem_idOperatingSystem + '%';
	SET vcrComments := p_Comments + '%';

    SELECT
		idLaptop ,
		Name1 ,
		idModel ,
		NetworkName ,
		WirelessMAC ,
		PhysicalMAC ,
		SerialNumber ,
		OperatingSystem_idOperatingSystem ,
		ProcessorType_idProcessorType ,
		LaptopType_idLaptopType ,
		RAM ,
		Comments ,
		Loaner ,
		InStock ,
		ForParts ,
		DateDecomissioned ,
		Active
    FROM
		Laptop
    WHERE 
		Name1 LIKE vcrName1
		AND (idModel = p_idModel OR p_idModel = 0)
		AND NetworkName LIKE vcrNetworkName
		AND WirelessMAC LIKE vcrWirelessMAC
		AND PhysicalMAC LIKE vcrPhysicalMAC
		AND SerialNumber LIKE vcrSerialNumber
		AND (OperatingSystem_idOperatingSystem = p_OperatingSystem_idOperatingSystem OR p_OperatingSystem_idOperatingSystem = 0)
		AND (ProcessorType_idProcessorType = p_ProcessorType_idProcessorType OR p_ProcessorType_idProcessorType = 0)
		AND (LaptopType_idLaptopType = p_LaptopType_idLaptopType OR p_LaptopType_idLaptopType = 0)
		AND RAM >= p_RAM
		AND Comments LIKE vcrComments
		AND Loaner = p_Loaner
		AND InStock = p_InStock
		AND ForParts = p_ForParts
		AND (DateDecomissioned = p_DateDecomissioned OR p_DateDecomissioned = NULL)
		AND (Active = 1 OR p_Active = 0)
		
END 

GO


