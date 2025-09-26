-------------------------------------------------------------------------------
--                                                      T-Systems Mexico
--
--
-- Name:    ECC_HL_HR_PuenteGtsIngresos_SV
--
-- Desc:    Contiene el detalle de Puente Gtos e Ingresos Fros. y Extr. / 
--          Provisiones / Variaciones (PZINGASF) del módulo de RRHH
--
--      Reimplementación de desarrollo de BW
--      Transformación ODSO ZINGASFE -> ODSO PZINGASF
--      Extractor: 0CO_OM_CCA_9 
--
--  Author: 
--          Anette Salazar Flores
--
-------------------------------------------------------------------------------
SELECT 
    "CUENTA",                --Cuenta Contable
    "0CHRT_ACCTS",           --Plan de cuentas 
    "DIVISION",              --División
    "CECO",                  --CECO
    "0CO_AREA",              --Sociedad CO
    "0CALMONTH2",            --Mes natural
    "0CALYEAR",              --Año natural
    "0CALMONTH",             --Año natural/Mes
    "IMPREALN",              --Importe Real Año N
    "0CURRENCY"              --Clave de moneda
FROM "ECC_HL_HR_GtosIngresosFros_SV"