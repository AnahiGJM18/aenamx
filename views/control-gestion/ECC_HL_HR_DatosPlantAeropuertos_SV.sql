-------------------------------------------------------------------------------
--                                                      T-Systems Mexico
--
--
-- Name:    ECC_HL_HR_DatosPlantAeropuertos_SV
--
-- Desc:    Contiene el detalle de los datos de Plantilla. Aeropuertos
--          (ZEIH_C03) del módulo de RRHH
--
--          Reimplementación de desarrollo de BW
--              Transformación RSDS Z_DATOS_PLANTILLA_AE QSA010 -> CUBE ZEIH_C03
--
--  Author: 
--          Anette Salazar Flores
--
-------------------------------------------------------------------------------
SELECT 
    "MANDT",                                                                            ---Mandante
    TO_DATE("F_PLANTILLA", 'YYYYMMDD')                  AS "F_PLANTILLA",               ---Inicio de la validez
    "WERKS"                                             AS "0PERS_AREA",                ----División de personal
    "GSBER"                                             AS "ZDIVISION",                 ---División
    TO_INTEGER("P_MENS")                                AS "ZPLANTIL",                  ---Plantilla mensual
    TO_INTEGER("P_MED_MENS")                            AS "ZPLANMENS",                 ---Plantilla Media Mensual
    "CEN_PRL"                                           AS "ZCNTPRL",                   ---Centro trabajo PRL
    "BTRTL"                                             AS "0PERS_SAREA",               ---Subdivisión de personal
    "GRUPOAE"                                           AS "ZGRPAAEE",                  ---Grupo Aeropuertos
    SUBSTRING("F_PLANTILLA", 1,6)                       AS "0CALMONTH",                 ---Año natural/Mes
    SUBSTRING("F_PLANTILLA", 5, 2)                      AS "0CALMONTH2",                ---Mes natural
    SUBSTRING("F_PLANTILLA", 1, 4)                      AS "0CALYEAR"                   ---Año natural
FROM 
    "ECC_IL_HR_PMensualAepto_RT"