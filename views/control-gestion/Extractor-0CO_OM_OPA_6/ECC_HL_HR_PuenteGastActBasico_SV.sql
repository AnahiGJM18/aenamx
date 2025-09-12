-------------------------------------------------------------------------------
--                                                      T-Systems Mexico
--
--
-- Name:    ECC_HL_HR_PuenteGastActBasico_SV
--
-- Desc:    Contiene el detalle de Puente Gastos de Actuaciones Básico
--          (PGASCT_B)
--
--        Reimplementación de desarrollo de BW
--           Transformación CUBE GASCT_BA -> CUBE PGASCT_B
--
--  Author: 
--          Anette Salazar Flores
--
-------------------------------------------------------------------------------
SELECT 
    "0CALMONTH"             AS "0CALMONTH",             --Año natural/Mes
    "0CALYEAR"              AS "0CALYEAR",              --Año natural
    "OCALMONTH2"            AS "0CALMONTH2",            --Mes natural
    "DIVISION"              AS "DIVISION",              --División
    "0CO_AREA"              AS "0CO_AREA",              --Sociedad CO
    "ORDEN"                 AS "ORDEN",                 --Código Actuación
    "PARTGTO"               AS "PARTGTO",               --Partida de Gastos
    "ZCLASECTE"             AS "ZCLASECTE",             --Cuenta Contable
    "ZTIPGAS"               AS "ZTIPGAS",               --Tipo Partida de Gasto
    "CECO"                  AS "CECO",                  --CECO
    "0CHRT_ACCTS"           AS "0CHRT_ACCTS",           --Plan de cuentas
    "CUENTA"                AS "CUENTA",                --Cuenta contable    
    "ZORDENOR"              AS "ZORDENOR",              --Código de Actuación Origen R/3
    "CUENTAORI"             AS "CUENTAORI",             --Cuenta Origen
    'XXXXXXXXXXX'           AS "PREVCERTI",             --#TODO Currency DE Importe Previsión Certificación Año N
    'XXXXXXXXXXX'           AS "IMPREALN"               --#TODO Currency DE Importe Real Año 
FROM "ECC_HL_HR_GastosActuacionsinCECO_SV"