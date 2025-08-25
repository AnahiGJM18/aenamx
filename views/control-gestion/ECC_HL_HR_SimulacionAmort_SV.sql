-------------------------------------------------------------------------------
--                                                      T-Systems Mexico
--
--
-- Name:    ECC_HL_HR_SimulacionAmort_SV
--
-- Desc:    Contiene el detalle de Simulación de Amortización (ZMPRES_S4)
--           del módulo de RRHH
--
--       Reimplementación de desarrollo de BW
--         Transformación RSDS ZMPRES_SIMAMRT QS4100 -> TRCS ZMPRES_SIMART_S4
--
--  Author: 
--          Anette Salazar Flores
--
-------------------------------------------------------------------------------
SELECT 
    --"MANDT",
    "BUKRS"                          AS "0CO_AREA",             ----Sociedad CO
    TO_INTEGER("MONAT")              AS "0CALMONTH2",           ----Mes natural?
    TO_INTEGER("GJAHR")              AS "0CALYEAR",             ----Año natural?
    CONCAT(GJAHR, RIGHT(FECOPER, 2)) AS "0CALMONTH",            ----Año natural/Mes
    "GSBER"                          AS "DIVISION",             ----División
    "KSTAR"                          AS "ZCLASECTE",            ----Cuenta Contable
    "KOSTL"                          AS "CECO",                 ----
    "AFABE"                          AS "AREAVALOR",            ----Area Valoración AF
    "KTOPL"                          AS "0CHRT_ACCTS",          ----Plan de cuentas
    "IMPREAL"                        AS "IMPTON2",              ----Importe real Amortización
    "WAERS"                          AS "0CURRENCY",
    "IMPORTE" * -1 AS "IMPTON1",                                ---RUTINA / Importe simulación AF
    "KOSTLV"                         AS "ZACTIVDAD"
FROM "ECC_IL_HR_SimGasAmorti_RT"