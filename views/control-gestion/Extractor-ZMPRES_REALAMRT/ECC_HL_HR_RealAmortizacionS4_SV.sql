-------------------------------------------------------------------------------
--                                                      T-Systems Mexico
--
--
-- Name:    ECC_HL_HR_RealAmortizacionS4_SV
--
-- Desc:    Contiene el detalle de gastos de armotización del módulo de RRHH
--
--      Reimplementación de desarrollo de BW
--      Transformación RSDS ZMPRES_REALAMRT QS4100 -> TRCS REAL_AMORTIZACION_S4
--
--  Author: 
--          Anette Salazar Flores
--
-------------------------------------------------------------------------------
SELECT 
    ---"MANDT",
    "IMPREAL"                   AS "0AMOUNT",           ----Importe
    "KTOPL"                     AS "0CHRT_ACCTS",       ----Plan de cuentas
    "BUKRS"                     AS "0CO_AREA",          ----Sociedad CO
    "WAERS"                     AS "0CURRENCY",         ----Clave de moneda  
    'K4'                        AS "OFISCVARNT",        ----#TODO Variante de ejercicio 
    "GJAHR"                     AS "0FISCYEAR",         ----Ejercicio
    "KOSTL"                     AS "CECO",              ----
    "KSTAR"                     AS "CUENTA",            ----Cuenta Contable
    "GSBER"                     AS "DIVISION",          ----División
    "KOSTLV"                    AS "ZACTIVDAD",         ----Actividad       
    CONCAT("GJAHR", SUBSTRING(TO_NVARCHAR("FECOPER"), 5, 2)) AS "0CALMONTH",  ---rutina      "FECOPER" ----este campo y el GJAHR forman la rutina
    "MONAT"                     AS "0CALMONTH2",        ----Mes natural
    "AFABE"                     AS "AREAVALOR"          ----Area Valoración AF    
FROM "ECC_IL_HR_RealGasAmorti_RT"