DROP PROCEDURE IF EXISTS 'sp_laptop_INSERT'
GO

CREATE PROCEDURE sp_laptop_INSERT
     (
		IN p_Name1 								VARCHAR(45) ,
		IN p_Model_idModel 						INT ,
		IN p_NetworkName 						VARCHAR(75) ,
		IN p_WirelessMAC 						VARCHAR(45) ,
		IN p_PhysicalMAC 						VARCHAR(45) ,
		IN p_SerialNumber 						VARCHAR(45) ,
		IN p_OperatingSystem_idOperatingSystem 	INT ,
		IN p_ProcessorType_idProcessorType 		INT ,
		IN p_LaptopType_idLaptopType			INT ,
		IN p_RAM 								DECIMAL ,
		IN p_Comments 							VARCHAR(250) ,
		IN p_Loaner 							BOOLEAN ,
		IN p_InStock 							BOOLEAN ,
		IN p_ForParts 							BOOLEAN ,
		IN p_DateDecomissioned 					DATETIME ,
		IN p_idLPUserAdd 						INT ,
		IN p_Active								BOOLEAN
     )
BEGIN 

    INSERT INTO Laptop
         (
			Name1 ,
			Model_idModel ,
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
			ForParts ,
			DateDecomissioned ,
			idLPUserLocked ,
			LockDateTimeTime ,
			idLPUserAdd ,
			AddDateTime ,
			Active
         )
    VALUES 
         ( 
			p_Name1 ,
			p_idModel ,
			p_NetworkName ,
			p_WirelessMAC ,
			p_PhysicalMAC ,
			p_SerialNumber ,
			p_OperatingSystem_idOperatingSystem ,
			p_ProcessorType_idProcessorType ,
			p_LaptopType_idLaptopType ,
			p_RAM ,
			p_Comments ,
			p_Loaner ,
			p_ForParts ,
			p_DateDecomissioned ,
			0 ,
			'1900-01-01 00:00:00' ,
			p_idLPUserAdd ,
			NOW() ,
			p_Active
         ) ; 
		 
	SELECT
		LAST_INSERT_ID() AS 'RecordIdent'
	FROM
		Laptop
		
END 

GO


