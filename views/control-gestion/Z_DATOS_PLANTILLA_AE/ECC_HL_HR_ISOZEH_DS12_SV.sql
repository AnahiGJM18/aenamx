-------------------------------------------------------------------------------
--                                                      T-Systems México
--
--
-- Name:    ECC_HL_HR_ISOZEH_DS12_SV
--
-- Desc:    Contiene el detalle del ISO (ZEH_DS12) Grupo de reglas
--           del módulo de RRHH - Plantilla Areopuertos
--
--          Reimplementación de desarrollo de BW
--              DSO CUBE ZEIH_C03 -> ODSO ZEH_DS12
--
--  Author: 
--          Anette Salazar Flores
--
-------------------------------------------------------------------------------
SELECT 
    "0CALYEAR",                          --Año natural
    "0CALMONTH",                         --Año natural/Mes
    "0CALMONTH2",                        --Mes natural
    --"0PERS_AREA",                      --División de personal
    --"ZDREGION",                        --Dirección Regional
    "ZCNTPRL",                           --Centro trabajo PRL
    'ZAGTIPO'           AS "ZAGTIPO",    --Tipo Agrupación/cahr50
    'ZAGDESC'           AS "ZAGDESC",    --Desc Tipo Agrupación / char60
    '0EHS_IAL'          AS "0EHS_IAL",   --Entrada en informe de accidente / char20
    'ZIDEVAL'           AS "ZIDEVAL",    --Identificador de la evaluación
    'ZMEDIDAPR'         AS "ZMEDIDAPR",  --Medida preventiva
    "ZPLANTIL"          AS "ZPLANMENS"   --Plantilla mensual
FROM "ECC_HL_HR_DatosPlantAeropuertos_SV"