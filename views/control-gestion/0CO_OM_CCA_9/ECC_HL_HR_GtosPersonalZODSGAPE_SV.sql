-------------------------------------------------------------------------------
--                                                      T-Systems Mexico
--
--
-- Name:    ECC_HL_HR_GtosPersonalZODSGAPE_SV
--
-- Desc:    Contiene el detalle de Gastos de Personal (ZODSGAPE)
--           del módulo de RRHH
--
--      Reimplementación de desarrollo de BW
--      Transformación TRCS ZCO_OM_CCA_9_S4 -> ODSO ZODSGAPE
--
--  Author: 
--          Anette Salazar Flores
--
-------------------------------------------------------------------------------
SELECT 
    "0BUS_AREA"                         AS "DIVISION",              --División
    "0COSTELMNT"                        AS "CUENTA",                --Cuenta Contable
    "0CHRT_ACCTS"                       AS "0CHRT_ACCTS",           --Plan de cuentas
    "0COSTCENTER"                       AS "CECO",                  --CECO
    "0CO_AREA"                          AS "0CO_AREA",              --Sociedad CO
    "0FISCPER"                          AS "0FISCPER",              --Ejercicio/Período
    "0FISCVARNT"                        AS "0FISCVARNT",            --Variante de ejercicio
    "0CO_ITEM_TX"                       AS "0REF_DOC_NO",           --Número de documento de referencia
    SUBSTRING("0PSTNG_DATE", 6, 2)      AS "0CALMONTH2",            --Mes natural
    SUBSTRING("0PSTNG_DATE", 1, 4)      AS "0CALYEAR",              --Año natural
    SUBSTRING("0PSTNG_DATE", 1, 7)      AS "0CALMONTH",             --Año natural/Mes
    "0DB_CR_IND"                        AS "0ACCDEBCRED",           --Indicador debe/haber
    '0AC_DOC_NO'                        AS "0AC_DOC_NO",            --Número de un documento de pago char10
    '0ITEM_NUM'                         AS "0ITEM_NUM",             --Número de apunte contable dentro del documento contable NUMC3
    "0AMOUNT"                           AS "IMPORTE",               --Importe Real Activo
    "0CURRENCY"                         AS "0CURRENCY"              --Clave de moneda
FROM "ECC_HL_HR_CenCostePartidasIndiv_SV"