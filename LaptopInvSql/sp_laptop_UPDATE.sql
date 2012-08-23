DROP PROCEDURE IF EXISTS 'sp_laptop_UPDATE'
GO

CREATE PROCEDURE sp_laptop_UPDATE
     (
		IN p_idLaptop							INT ,
		IN p_Name1 								VARCHAR(45) ,
		IN p_idModel 							INT ,
		IN p_NetworkName 						VARCHAR(75) ,
		IN p_WirelessMAC 						VARCHAR(45) ,
		IN p_PhysicalMAC 						VARCHAR(45) ,
		IN p_SerialNumber 						VARCHAR(45) ,
		IN p_OperatingSystem_idOperatingSystem 	INT ,
		IN p_ProcessorType_idProcessorType 		INT ,
		IN p_LaptopType_idLaptopType			INT ,
		IN p_RAM 								DECIMAL
		IN p_Comments 							VARCHAR(250) ,
		IN p_Loaner 							BOOLEAN ,
		IN p_InStock 							BOOLEAN ,
		IN p_ForParts 							BOOLEAN ,
		IN p_DateDecomissioned 					DATETIME ,
		IN p_Active								BOOLEAN
     )
BEGIN 

    UPDATE TABLE
		Laptop
	SET
		Name1 = p_Name1 ,
		idModel = p_idModel ,
		NetworkName = p_NetworkName ,
		WirelessMAC = p_WirelessMAC ,
		PhysicalMAC = p_PhysicalMAC
		SerialNumber = p_SerialNumber ,
		OperatingSystem_idOperatingSystem = p_OperatingSystem_idOperatingSystem ,
		ProcessorType_idProcessorType = p_ProcessorType_idProcessorType ,
		LaptopType_idLaptopType = p_LaptopType_idLaptopType ,
		RAM = p_RAM ,
		Comments = p_Comments ,
		Loaner = p_Loaner ,
		InStock = p_InStock ,
		ForParts = p_ForParts ,
		DateDecomissioned = p_DateDecomissioned ,
		Active = p_Active
    WHERE
		idLaptop = p_idLaptop
		
END 

GO


