-------------------------------------------------------------------------------
--                                                      T-Systems Mexico
--
--
-- Name:    ECC_HL_HR_Partidas_Individuales_SV
--
-- Desc:    Contiene el detalle de las partidas individuales procedentes del
--          módulo de RRHH
--
--          Reimplementación de desarrollo de BW
--              Transformación RSDS 0CO_OM_OPA_6 QS4100 -> TRCS ZCO_OM_OPA_6_S4
--
--  Author: 
--          Anette Salazar Flores
--
-------------------------------------------------------------------------------
SELECT 
    "KOKRS"                                 AS "0CO_AREA",               ----Sociedad CO
    "FISCVAR"                               AS "0FISCVAR",               ----Variante de ejercicio
    "FISCPER"                               AS "0FISCPER",               ----Ejercicio/Período
    "AUFNR"                                 AS "ZORDENOR",               ----Código de Actuación Origen R/3
    LPAD("AUFNR", 12, '0')                  AS "ORDEN",                  ----Código Actuación
    "KSTAR"                                 AS "ZCLASECTE",              ----Cuenta Contable
    "SWG"                                   AS "IMPREALN",               ----Importe Real Año N
    "WAERS"                                 AS "0CURRENCY",              ----Moneda
    "GSBER"                                 AS "DIVISION",               ----División
    "KTOPL"                                 AS "0CHRT_ACCTS",            ----Plan de cuentas
    REPLACE(UPPER("ZZXREF3"), ' ', '')      AS "PARTGTO",                ----Partida de Gastos(RUTINA)
    REPLACE(UPPER("ZZXREF2"), ' ', '')      AS "ZTIPGAS",                ----Tipo de Patida de Gasto(RUTINA)
    "ZZLIQUI"                               AS "MPLIQUI"                 ----Liquidación
FROM "ECC_IL_HR_OrdenesPartIndiv_RT"
WHERE ZZXREF3 <> ''
