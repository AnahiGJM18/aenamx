-------------------------------------------------------------------------------
--                                                      T-Systems Mexico
--
--
-- Name:    ECC_HL_HR_SimulacionAmortZSIMAMRT_SV
--
-- Desc:    Contiene el detalle de Simulación de Amortización (ZSIMAMRT)
--           del módulo de RRHH
--
--       Reimplementación de desarrollo de BW
--         Transformación TRCS ZMPRES_SIMART_S4 -> ODSO ZSIMAMRT
--  Author: 
--          Anette Salazar Flores
--
-------------------------------------------------------------------------------
SELECT 
    "0CO_AREA",              --Sociedad CO
    "0CALMONTH2",            --Mes natural
    "0CALYEAR",              --Año natural
    "0CALMONTH",             --Año natural/Mes
    "DIVISION",              --División
    "ZCLASECTE",             --Cuenta contable
    "CECO",                  --CECO
    "AREAVALOR",             --Area Valoración AF
    "0CHRT_ACCTS",           --Plan de cuentas
    "0CURRENCY",             --Clave de moneda
    "IMPTON1"                --Importe Simulación AF
FROM "ECC_HL_HR_SimulacionAmort_SV"
