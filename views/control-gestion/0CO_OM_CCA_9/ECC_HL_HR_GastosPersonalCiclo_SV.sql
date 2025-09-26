-------------------------------------------------------------------------------
--                                                      T-Systems Mexico
--
--
-- Name:    ECC_HL_HR_GastosPersonalCiclo_SV
--
-- Desc:    Contiene el detalle de Puente Gtos e Ingresos Fros. y Extr. / 
--          Provisiones / Variaciones (ZINGASFE) del módulo de RRHH
--          (Ciclo)
--
--      Reimplementación de desarrollo de BW
--      Transformación ODSO PZODSGAP -> ODSO ZODSGAPE
--      Extractor: 0CO_OM_CCA_9 
--
--  Author: 
--          Anette Salazar Flores
--
-------------------------------------------------------------------------------
-- Revisar si es necesaria esta vista ya que pertence a un ciclo de un ODSO
SELECT 
    "DIVISION",              --División
    "CUENTA",                --Cuenta Contable
    --Rutina
    ----"0CHRT_ACCTS"       AS "0CHRT_ACCTS",           --Plan de cuentas
    "CECO",                  --CECO
    --Rutina
    ----"0CO_AREA"          AS "0CO_AREA",              --Sociedad CO
    "0FISCPER",              --Ejercicio/Período
    "0FISCVARNT",            --Variante de ejercicio
    "0REF_DOC_NO",           --Número de documento de referencia
    "0CALMONTH",             --Año natural/Mes
    "0CALYEAR",              --Año natural
    "0CALMONTH2",            --Mes natural
    "0ACCDEBCRED",           --Indicador debe/haber
    "0AC_DOC_NO",            --Número de un documento de pago
    "0ITEM_NUM",             --Número de apunte contable dentro del documento contable
    "IMPORTE",               --Importe Real Activo
    "0CURRENCY"              --Clave de moneda
FROM "ECC_HL_HR_PuenteGtosPersonal_SV"