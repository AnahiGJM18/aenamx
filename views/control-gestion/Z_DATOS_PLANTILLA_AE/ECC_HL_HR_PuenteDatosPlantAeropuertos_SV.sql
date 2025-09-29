-------------------------------------------------------------------------------
--                                                      T-Systems Mexico
--
--
-- Name:    ECC_HL_HR_PuenteDatosPlantAeropuertos_SV
--
-- Desc:    Contiene el detalle del puente de datos de Plantilla. Aeropuertos
--          (PZEIH_C03) del módulo de RRHH
--
--        Reimplementación de desarrollo de BW
--           Transformación CUBE ZEIH_C03 -> CUBE PZEIH_C03
--
--  Author: 
--          Anette Salazar Flores
--
-------------------------------------------------------------------------------
SELECT 
    "0CALMONTH",         --Año natural/Mes
    "0CALMONTH2",        --Mes natural
    "0CALYEAR",          --Año natural
    "0PERS_AREA",        --División de personal
    "ZDIVISION",         --División
    "ZPLANTIL",          --Plantilla mensual
    "ZPLANMENS",         --Plantilla Media Mensual
    "ZCNTPRL",           --Centro trabajo PRL
    "0PERS_SAREA",       --Subdivión de personal
    "ZGRPAAEE"           --Grupo de Aeropuertos
FROM "ECC_HL_HR_DatosPlantAeropuertos_SV"