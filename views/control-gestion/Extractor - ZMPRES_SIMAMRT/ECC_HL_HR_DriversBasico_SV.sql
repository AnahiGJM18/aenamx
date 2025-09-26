-------------------------------------------------------------------------------
--                                                      T-Systems Mexico
--
--
-- Name:    ECC_HL_HR_DriversBasico_SV
--
-- Desc:    Contiene el detalle de Drivers Básico (MCAEDRBA)
--           del módulo de RRHH
--
--       Reimplementación de desarrollo de BW
--         Transformación TRCS ZMPRES_SIMART_S4 -> CUBE MCAEDRBA
--
-- NOTA: El campo "0CURRENCY" no se le salida directamente pero se necesita 
-- en otras vistas que tienen dependencia de esta es por eso que se le dará 
-- salida
--  Author: 
--          Anette Salazar Flores
--
-------------------------------------------------------------------------------
SELECT 
    "0CALYEAR" || '0' || "0CALMONTH2"   AS "0FISCPER",              --Ejercicio/Período
    '0' || "0CALMONTH2"                 AS "0FISCPER3",             --Período contable
    'K4'                                AS "0FISCVARNT",            --Variante de ejercicio
    "0CALYEAR"                          AS "0FISCYEAR",             --Ejercicio
    "0CO_AREA",                                                     --Sociedad CO
    "CECO",                                                         --CECO
    "ZACTIVDAD",                                                    --Actividad
    "0CHRT_ACCTS",                                                  --Plan de cuentas
    "ZCLASECTE"                         AS "CUENTA",                --Cuenta Contable
    ''                                  AS "ORDEN",                 --Código Actuación
    '0'                                 AS "VERS",                  --Versión (char3)
    'DAM1'                              AS "ZDRIVER",               --Driver
    "DIVISION",                                                     --División
    ''                                  AS "MCC_ACTU",              --Actuación-mCOST
    ''                                  AS "MCC_AETAC",             --Tipo Actuación mCOST
    '0'                                 AS "MCC_VERDR",             --Versión Drivers
    ''                                  AS "ZMODPPTO",              --Modelo Presupuestario
    ''                                  AS "ZAFAFC",                --Indicador AF / AFC
    "IMPTON2"                           AS "IAMORTI",               --Amortización
    "0CURRENCY"                                                     --Clave de moneda
   -- "0CURRENCY", Junto con el IMPTON1 se hace una asignación directa y forman el 
   -- campo "IAMORTI". Ahora bien se concatena o que se hace en este caso?
   -- "IMPTON1"
FROM "ECC_HL_HR_SimulacionAmort_SV"