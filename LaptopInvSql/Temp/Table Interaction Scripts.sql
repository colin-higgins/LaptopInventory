

SELECT
idLPUserRoleXRef,
LPUser_idLPUser,
Role_idRole,
Active
FROM lpuserrolexref;


INSERT INTO lpuserrolexref
(idLPUserRoleXRef,
LPUser_idLPUser,
Role_idRole,
Active)
VALUES
(
<{idLPUserRoleXRef: }>,
<{LPUser_idLPUser: }>,
<{Role_idRole: }>,
<{Active: }>
);


UPDATE lpuserrolexref
SET
idLPUserRoleXRef = {idLPUserRoleXRef: },
LPUser_idLPUser = {LPUser_idLPUser: },
Role_idRole = {Role_idRole: },
Active = {Active: }
WHERE <{where_condition}>;


--

SELECT
idMacLaptop,
EthernetID,
MacModel_idMacModel,
NetworkName,
Notes,
SerialNumber,
RAM,
OperatingSystem,
AirportID,
DatePurchased,
ToReplace,
Department_idDepartment,
Building_idBuilding
FROM maclaptop;


INSERT INTO maclaptop
(idMacLaptop,
EthernetID,
MacModel_idMacModel,
NetworkName,
Notes,
SerialNumber,
RAM,
,
AirportID,
DatePurchased,
ToReplace,
Department_idDepartment,
Building_idBuilding)
VALUES
(
<{idMacLaptop: }>,
<{EthernetID: }>,
<{MacModel_idMacModel: }>,
<{NetworkName: }>,
<{Notes: }>,
<{SerialNumber: }>,
<{RAM: }>,
<{OperatingSystem: }>,
<{AirportID: }>,
<{DatePurchased: }>,
<{ToReplace: }>,
<{Department_idDepartment: }>,
<{Building_idBuilding: }>
);


UPDATE maclaptop
SET
idMacLaptop = {idMacLaptop: },
EthernetID = {EthernetID: },
MacModel_idMacModel = {MacModel_idMacModel: },
NetworkName = {NetworkName: },
Notes = {Notes: },
SerialNumber = {SerialNumber: },
RAM = {RAM: },
 = {OperatingSystem: },
AirportID = {AirportID: },
DatePurchased = {DatePurchased: },
ToReplace = {ToReplace: },
Department_idDepartment = {Department_idDepartment: },
Building_idBuilding = {Building_idBuilding: }
WHERE <{where_condition}>;

--


SELECT
idProcessorType,
Name1,
Desc1,
Active
FROM processortype;


INSERT INTO processortype
(idProcessorType,
Name1,
Desc1,
Active)
VALUES
(
<{idProcessorType: }>,
<{Name1: }>,
<{Desc1: }>,
<{Active: }>
);


UPDATE processortype
SET
idProcessorType = {idProcessorType: },
Name1 = {Name1: },
Desc1 = {Desc1: },
Active = {Active: }
WHERE <{where_condition}>;



--


SELECT
idRole,
Name1,
Desc1,
idLPUserAdd,
AddDateTime,
idLPuserLocked,
LockDateTime,
Active
FROM role;


INSERT INTO role
(idRole,
Name1,
Desc1,
idLPUserAdd,
AddDateTime,
idLPuserLocked,
LockDateTime,
Active)
VALUES
(
<{idRole: }>,
<{Name1: }>,
<{Desc1: }>,
<{idLPUserAdd: }>,
<{AddDateTime: }>,
<{idLPuserLocked: }>,
<{LockDateTime: }>,
<{Active: }>
);


UPDATE role
SET
idRole = {idRole: },
Name1 = {Name1: },
Desc1 = {Desc1: },
idLPUserAdd = {idLPUserAdd: },
AddDateTime = {AddDateTime: },
idLPuserLocked = {idLPuserLocked: },
LockDateTime = {LockDateTime: },
Active = {Active: }
WHERE <{where_condition}>;


--


SELECT
idRolePermissionXRef,
Role_idRole,
Permission_idPermission,
Active
FROM rolepermissionxref;


INSERT INTO rolepermissionxref
(idRolePermissionXRef,
Role_idRole,
Permission_idPermission,
Active)
VALUES
(
<{idRolePermissionXRef: }>,
<{Role_idRole: }>,
<{Permission_idPermission: }>,
<{Active: }>
);


UPDATE rolepermissionxref
SET
idRolePermissionXRef = {idRolePermissionXRef: },
Role_idRole = {Role_idRole: },
Permission_idPermission = {Permission_idPermission: },
Active = {Active: }
WHERE <{where_condition}>;



--





