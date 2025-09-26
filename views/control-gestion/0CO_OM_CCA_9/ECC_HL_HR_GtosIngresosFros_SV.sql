-------------------------------------------------------------------------------
--                                                      T-Systems Mexico
--
--
-- Name:    ECC_HL_HR_GtosIngresosFros_SV
--
-- Desc:    Contiene el detalle de Gtos e Ingresos Fros. y Extr. / Provisiones
--           / Variaciones (ZINGASFE) del módulo de RRHH
--
--      Reimplementación de desarrollo de BW
--      Transformación TRCS ZCO_OM_CCA_9_S4 -> ODSO ZINGASFE
--
--  Author: 
--          Anette Salazar Flores
--
-------------------------------------------------------------------------------
SELECT 
    "0COSTELMNT"                        AS "CUENTA",                --Cuenta Contable
    "0CHRT_ACCTS"                       AS "0CHRT_ACCTS",           --Plan de cuentas
    "0BUS_AREA"                         AS "DIVISION",              --División
    "0COSTCENTER"                       AS "CECO",                  --CECO
    "0CO_AREA"                          AS "0CO_AREA",              --Sociedad CO
    SUBSTRING("0PSTNG_DATE", 6, 2)      AS "0CALMONTH2",            --Mes natural
    SUBSTRING("0PSTNG_DATE", 1, 4)      AS "0CALYEAR",              --Año natural
    SUBSTRING("0PSTNG_DATE", 1, 7)      AS "0CALMONTH",             --Año natural/Mes
    "0AMOUNT"                           AS "IMPREALN",              --Importe Real Año N
    "0CURRENCY"                         AS "0CURRENCY"              --Clave de moneda
FROM "ECC_HL_HR_CenCostePartidasIndiv_SV"