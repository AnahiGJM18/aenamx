-------------------------------------------------------------------------------
--                                                      T-Systems Mexico
--
--
-- Name:    ECC_HL_HR_GastosActuacionsinCECO_SV
--
-- Desc:    Contiene el detalle de Órdenes: Costes reales mediante extracción
--          Delta(ZCO_OM_OPA_6_S4)
--
--        Reimplementación de desarrollo de BW
--           Transformación TRCS ZCO_OM_OPA_6_S4 -> CUBE GASCT_BA
--
--  Author: 
--          Anette Salazar Flores
--
-------------------------------------------------------------------------------
SELECT 
    ---3 RUTINAS
    CASE
        WHEN SUBSTRING("0FISCPER", 5, 2) > 12
        THEN CONCAT(SUBSTRING("0FISCPER", 1, 4), '12')
        ELSE "0FISCPER"
        END                             AS "0CALMONTH",             --Año natural/Mes

    CASE 
        WHEN SUBSTRING("0FISCPER", 5, 2) > 12
        THEN '12'
        ELSE SUBSTRING("0FISCPER", 1, 4)
        END                             AS "OCALMONTH2",            --Mes natural
    SUBSTRING("0FISCPER", 1, 4)         AS "0CALYEAR",              --Año natural    
    "DIVISION"                          AS "DIVISION",              --División    
    "0CO_AREA"                          AS "0CO_AREA",              --Sociedad CO
    "ORDEN"                             AS "ORDEN",                 --Código Actuación
    "PARTGTO"                           AS "PARTGTO",               --Partida de Gastos
    "ZCLASECTE"                         AS "ZCLASECTE",             --Cuenta Contable
    "ZTIPGAS"                           AS "ZTIPGAS",               --Tipo Partida de Gasto
    ----CECO --> Es un campo que tiene un tipo de regla "inicial"
    ''                                  AS "CECO",                  --CECO
    ---3 campos que viene de uno solo
    "ZORDENOR"                          AS "ZORDENOR",              --Código de Actuación Origen R/3  
    "0CHRT_ACCTS"                       AS "0CHRT_ACCTS",           --Plan de cuentas 
    "ZCLASECTE"                         AS "CUENTA",                --Cuenta contable 
    "ZORDENOR"                          AS "CUENTAORI",             --Código de actuación Prigen R/3
    "XXXXXXXXXXX"                       AS "IMPREALN"               --#TODO Currency DE Importe Real Año              
FROM "ECC_HL_HR_Partidas_Individuales_SV"

