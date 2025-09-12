-------------------------------------------------------------------------------
--                                                      T-Systems Mexico
--
--
-- Name:    ECC_HL_HR_SiniestralidadCube_SV
--
-- Desc:    Contiene el detalle de Siniestralidad. Personas 
--          Implicadas(Z_PRESBI_SINIES) procedentes del módulo de RRHH
--
--          Reimplementación de desarrollo de BW
--              Transformación CUBE ZEIH_C02 -> CUBE ZEIH_C02H
--
--  Author: 
--          Anahí G. Jara Martínez
--
-------------------------------------------------------------------------------
SELECT
    "0CALMONTH",                        --Año natural/Mes
    "0CALMONTH2",                       --Mes natural    
    "0CALYEAR",                         --Año natural        
    "0CALQUARTER",                      --Año natural/Trimestre
    "ZCONTADO2",                        --Contador
    "0EMPLOYEE"            AS "0PERSON",--Persona                          
    "ZRECNIAL",                         --Numero de registro en log de accidente
    "0EHS_IAL",                         --Entrada en informe de accidente
    "0EHS_IATP",                        --Clase de entrada de registro de accidentes
    "ZIAPLANT",                         --Centro en el log de accidentes
    "ZEVDAT",                           --Fecha del evento
    "ZEVTIME",                          --Hora del evento
    "ZF_NOTIAL",                        --Fecha notificación del accidente
    "ZF_INVIAL",                        --Fecha de investigación del accidente 
    "ZAGNMAT",                          --Agente Material
    "ZECHANO",                          --Hecho anormal que desencadeno el accidente
    "ZDESCLOC",                         --Descripción del lugar del accidente
    "0EHS_EVDE",                        --Descripción del evento
    "0EHS_IACA",                        --Tipo de accidente
    "0EMPLOYEE",                        --Persona 
    "ZF_FALLEC",                        --Fecha de fallecimiento
    "0EHS_IPDE",                        --Caso de muerte 
    "0RF_DEL_IND",                      --Indicador de borrado
    "0EHS_DMTP",                        --Clase de daño
    "ZF_BAJA",                          --Fecha de baja 
    "ZGRAVEDAD",                        --Gravedad del accidentado                                
    "ZTPASISTIN",                       --Tipo de asistencia            
    "ZACTFISC",                         --Actividad física específica                 
    "ZCONTACTO",                        --Forma de contacto
    "ZOCUPAC",                          --Ocupación
    "ZDIVISION",                        --División
    "ZDREGION",                         --Dirección Regional
    "ZZONAAAEE",                        --Zona de Aeropuertos
    "ZGRPAAEE",                         --Grupo Aropuertos
    "0PERS_AREA",                       --División de personal
    "0PERS_SAREA",                      --Subdivisión de personal
    "0EHS_BODY",                        --Parte del cuerpo lesionada
    "0PAYRL_AREA",                      --Área de nómina
    "ZTPLUGAR",                         --Tipo de lugar
    "ZTPTRABJ",                         --Tipo de trabajo 
    'ZSTAT1',                           --Status según las necesidades individuales del cliente #TODO:Incl
    "ZCNTPRL",
    "0AGE",
    "0GENDER",
    "ZARPERS",
    "ZHORTRAB",
    "ZGRADLES",
    "ZGRACDTE"
FROM
    "ECC_HL_HR_PersonasImplicadas_SV"