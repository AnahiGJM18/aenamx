-------------------------------------------------------------------------------
--                                                      T-Systems Mexico
--
--
-- Name:    ECC_HL_HR_GtsIngresosZINGASFSE_SV
--
-- Desc:    Contiene el detalle de Puente Gtos e Ingresos Fros. y Extr. / 
--          Provisiones / Variaciones (ZINGASFE) del módulo de RRHH
--          (Ciclo)
--
--      Reimplementación de desarrollo de BW
--      Transformación ODSO PZINGASF -> ODSO ZINGASFE
--      Extractor: 0CO_OM_CCA_9 
--
--  Author: 
--          Anette Salazar Flores
--
-------------------------------------------------------------------------------
-- Revisar si es necesaria esta vista ya que pertence a un ciclo de un ODSO

SELECT 
    "CUENTA",                --Cuenta Contable
    --Rutina
    --"0CHRT_ACCTS",         --Plan de cuentas
    "DIVISION",              --División
    "CECO",                  --CECO
    --Rutina
    --"0CO_AREA",            --Sociedad CO
    "0CALMONTH2",            --Mes natural
    "0CALYEAR",              --Año natural
    "0CALMONTH",             --Año natural/Mes
    "IMPREALN",              --Importe Real Año N     
    "0CURRENCY"              --Clave de moneda
FROM "ECC_HL_HR_PuenteGtsIngresos_SV"