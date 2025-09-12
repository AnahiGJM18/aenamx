-------------------------------------------------------------------------------
--                                                      T-Systems Mexico
--
--
-- Name:    ECC_HL_HR_SimulacionAmortizacion_SV
--
-- Desc:    Contiene el detalle de Simulación de amortización (ZSIMAMRT)
--          del módulo de RRHH
--
--      Reimplementación de desarrollo de BW
--      Transformación RSDS ZMPRES_REALAMRT DS4100 -> TRCS REAL_AMORTIZACION_S4
--
--  Author: 
--          Anette Salazar Flores
--
-------------------------------------------------------------------------------
SELECT 
    "0CO_AREA"                      AS "0CO_AREA",              --Sociedad CO
    "0CALMONTH2"                    AS "0CALMONTH2",            --Mes natural
    SUBSTRING("0CALMONTH", 1, 4)    AS "0CALYEAR",              --Año natural
    "0CALMONTH"                     AS "0CALMONTH",             --Año natural/Mes
    "DIVISION"                      AS "DIVISION",              --División
    "CUENTA"                        AS "ZCLASECTE",             --Cuenta Contable
    "CECO"                          AS "CECO",                  --CECO   
    "AREAVALOR"                     AS "AREAVALOR",             --Area de Valoración
    "0CHRT_ACCTS"                   AS "0CHRT_ACCTS",           --Plan de cuentas    
    "0AMOUNT"                       AS "IMPTON2",               --Importe Real Amortización (Tip.Dato es CURR)
    "0CURRENCY"                     AS "0CURRENCY"              --#TODO Clave de moneda
FROM "ECC_HL_HR_RealAmortizacionS4_SV"
