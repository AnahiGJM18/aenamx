-------------------------------------------------------------------------------
--                                                      T-Systems Mexico
--
--
-- Name:    ECC_HL_HR_--------------_SV
--
-- Desc:   Contiene el detalle de Gtos e Ingresos Fros. y Extr. / Provisiones /
--         Variaciones (ZINGASFE)
--
--        Reimplementación de desarrollo de BW
--           Transformación TRCS ZCO_OM_OPA_6_S4 -> ODSO ZINGASFE
--
--  Author: 
--          Anette Salazar Flores
--
-------------------------------------------------------------------------------

SELECT 
    "ZCLASECTE"                     AS "CUENTA",                --Cuenta Contable
    "0CHRT_ACCTS"                   AS "0CHRT_ACCTS",           --Plan de cuentas
    "DIVISION"                      AS "DIVISION",              --División
    ----CECO --> Es un campo que tiene un tipo de regla "inicial"
    ''                              AS "CECO",                  --CECO
    "0CO_AREA"                      AS "0CO_AREA",              --Sociedad CO
    ---RUTINAS
    CASE 
        WHEN SUBSTRING("0FISCPER", 5, 2) > 12
        THEN '12'
        ELSE SUBSTRING("0FISCPER", 1, 4)
        END                         AS "OCALMONTH2",            --Mes natural
    SUBSTRING("0FISCPER", 1, 4)     AS "0CALYEAR",              --Año natural    
    CASE
        WHEN SUBSTRING("0FISCPER", 5, 2) > 12
        THEN CONCAT(SUBSTRING("0FISCPER", 1, 4), '12')
        ELSE "0FISCPER"
        END                         AS "0CALMONTH",             --Año natural/Mes
    "IMPREALN"                      AS "IMPREALN",              --Importe Real Año N
    "0CURRENCY"                     AS "0CURRENCY"              --Clave de moneda
FROM "ECC_HL_HR_Partidas_Individuales_SV"