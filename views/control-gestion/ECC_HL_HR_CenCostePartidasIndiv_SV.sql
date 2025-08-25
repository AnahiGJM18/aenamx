-------------------------------------------------------------------------------
--                                                      T-Systems Mexico
--
--
-- Name:    ECC_HL_HR_CenCostePartidasIndiv_SV
--
-- Desc:    Contiene el detalle del Centro de costes de Partidas inviduales
--           del módulo de RRHH
--
--      Reimplementación de desarrollo de BW
--      Transformación RSDS 0CO_OM_CCA_9 QS4100 -> TRCS ZCO_OM_CCA_9_S4
--
--  Author: 
--          Anette Salazar Flores
--
-------------------------------------------------------------------------------
SELECT 
    "KOKRS"                                 AS "0CO_AREA",              ----Sociedad CO
    "BELNR"                                 AS "0CO_DOC_NO",            ----Númmero del documento
    "BUZEI"                                 AS "0CO_ITEM_NO",           ----Apunte contable
    "FISCVAR"                               AS "0FISCVARNT",            ----Variante de ejecicio
    "FISCPER"                               AS "0FISCPER",              ----Ejercicio/Período (revisar si realmente es fecha o num)
    "KOSTL"                                 AS "0COSTCENTER",           ----Centro de coste
    "LSTAR"                                 AS "0ACTTYPE",              ----Clase de actividad
    TO_INTEGER("VTYPE")                     AS "0VTYPE",                ----Tipo valor para informes
    TO_INTEGER("VTDETAIL")                  AS "0VTDETAIL",             ----Detalle del tipo de valor
    TO_INTEGER("VTSTAT")                    AS "0VTSTAT",               ----Indicador estadística para tipo valor
    TO_INTEGER("MEASTYPE")                  AS "0METYPE",               ----Tipo de ratio
    "VERSN"                                 AS "0VERSION",              ----Versión
    TO_INTEGER("VALUTYP")                   AS "0VALUATION",            ----Vista valoración
    "KSTAR"                                 AS "0COSTELMNT",            ----Clase de coste
    "SEKNZ"                                 AS "0DB_CR_IND",            ----Indicador emisor/receptor    
    "RSPOBART"                              AS "0PIOBJSV",              ----Tipo de objeto del interlocutor    
    "RSPAROBVAL"                            AS "0PIOVALUE",             ----Objeto del interlocutor
----RUTINAS
---Ocupan una funcion que al prarecer manda a traer una tabla o cds view además de que
---ocupan dos campos de estan en esta tabla
    "SWG"                                   AS "0AMOUNT",               ----Importe
    "SWF"                                   AS "0AMOUNTFX",             ----Importe fijo
    "SWV"                                   AS "0AMOUNTVR",             ----Importe variable
    "SMEG"                                  AS "0QUANTITY",             ----Volumen de consumo (Cantidad)
    "SMEF"                                  AS "0QUANTITYFX",           ----Volumen consume fijo (Cantidad fija)
    "SMEV"                                  AS "0QUANTITYVR",           ----Vol.consumo variable
    "WAERS"                                 AS "0CURRENCY",             ----Clave de moneda / "viene de una tabla:/BI0/SCURRENCY"
    "CURTYPE"                               AS "0CURTYPE",              ----Tipo de moneda
    "MEINH"                                 AS "0UNIT",                 ----Unidad medida / "viene de la tabla:/BI0/SUNIT"
    "RSAUXACCTYPE"                          AS "0AUXACCTYPE",           ----Clase objeto inputación auxiliar
    "RSAUXACCVAL"                           AS "0AUXACCVAL",            ----Objeto imputación auxiliar
    "BUKRS"                                 AS "0COMP_CODE",            ----Sociedad
    "GSBER"                                 AS "0BUS_AREA",             ----División 0BUS
    "FKBER"                                 AS "0FUNC_AREA",            ----Área funcional 
    "PBUKRS"                                AS "0PCOMP_CODE",           ----Sociedad del interlocutor
    "PFKBER"                                AS "0PFUNC_AREA",           ----Área de funciones del interlocutor
    "KTOPL"                                 AS "0CHRT_ACCTS",           ----Plan de cuentas
    "SAKNR"                                 AS "0GL_ACCOUNT",           ----Cuenta de mayor
    "LIFNR"                                 AS "0CREDITOR",             ----Número de cuenta del proovedor o acreedor
    "KUNNR"                                 AS "0DEBITOR",              ----Número de deudor
    "WERKS"                                 AS "0PLANT",                ----Centro
    "MATNR"                                 AS "0MATERIAL",             ----Material
    TO_INTEGER("PERNR")                     AS "0EMPLOYEE",             ----Empleados
    "QMNUM"                                 AS "0NOTIFICATN",           ----Número de aviso
----rutina
  CASE 
    WHEN (ORGVG = 'HRP1' OR BLART = 'NO') AND KSTAR = '0000640200'
      THEN 'XXXXX00001'
    ELSE SGTXT
  END                                       AS "CO_ITEM_TX",
    TO_DATE("BLDAT", 'YYYYMMDD')            AS "0DOC_DATE",             ----Fecha de documento / revisar si viene asi
    TO_DATE("BUDAT", 'YYYYMMDD')            AS "0PSTNG_DATE",           ----Fecha de contabilización en el documento
    '0RECORDMODE'                           AS "0RECORDMODE",           ----BW procedimiento delta: Modo de actualización
    TO_INTEGER("CORRTYPE")                  AS "0CORRTYPE",             ----Tipo de correción / revisar si es int o decimal
    "CCTR_IBV"                              AS "0CCTR_IBV"              ----Centro de coste eliminación de costes interiores
FROM "ECC_IL_HR_CeCosPartIndiv_RT"