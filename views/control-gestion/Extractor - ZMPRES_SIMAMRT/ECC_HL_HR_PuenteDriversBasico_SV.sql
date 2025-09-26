-------------------------------------------------------------------------------
--                                                      T-Systems Mexico
--
--
-- Name:    ECC_HL_HR_PuenteDriversBasico_SV
--
-- Desc:    Contiene el detalle de Puente Drivers Basico (PMCAEDRB)
--           del módulo de RRHH
--
--       Reimplementación de desarrollo de BW
--         Transformación CUBE MCAEDRBA -> CUBE PMCAEDRB
--
--  Author: 
--          Anette Salazar Flores
--
-------------------------------------------------------------------------------
--Los ultimos campos comentados dependen del 0CURRENCY y tienen asignación
--directa. Falta invetigar cual es la manera correcta de implementar 
--estos campos
SELECT 
    "0FISCPER",              --Ejercicio/Período 
    "0FISCPER3",             --Período contable
    "0FISCVARNT",            --Variante de ejercicio
    "0FISCYEAR",             --Ejercicio
    --Rutina                 --Sociedad CO
    --"0CO_AREA",
    "CECO",                  --CECO
    "ZACTIVDAD",             --Actividad
    "0CHRT_ACCTS",           --Plan de cuentas
    "CUENTA",                --Cuenta Contable
    "ORDEN",                 --Código Actuación
    "VERS",                  --Versión
    "ZDRIVER",               --Driver
    "DIVISION",              --División
    "MCC_ACTU",              --Actuación-mCOST
    "MCC_AETAC",             --Tipo Actuación  mCOST
    "MCC_VERDR",             --Versión Drivers
    "ZMODPPTO",              --Modelo Presupuestario
    "ZAFAFC",                --Indicador AF / AFC
    --"0AMOUNT"             AS "0AMOUNT",               --Importe
    --"MCR_CUEAC"           AS "MCR_CUEAC",             --Porcentaje Actuación-Actividad
    "IAMORTI",               --Amortización
    --"ICAPIT"              AS "ICAPIT",                --Capital
    --"ISUBCA"              AS "ISUBCA",                --Subvenciones Capital
    --"MCR_BAJA"            AS "MCR_BAJA",              --Pérdidas
    --"MCR_PRI"             AS "MCR_PRI",               --Dotaciones Provisión
    --"MCR_VNCFI"           AS "MCR_VNCFI",             --Valor Neto(Fin)
    --"MCR_VNCIN"           AS "MCR_VNCIN",             --Valor Neto(Inicio)
    --"MCR_VNCFP"           AS "MCR_VNCFP",             --Valor Neto (Fin año pasado)
    --"MCR_TRE"             AS "MCR_TRE",               --Trabajos_IEC
    --"IINMOV"              AS "IINMOV"                 --Provisiones de Inmovilizado
    "0CURRENCY"             AS "0CURRENCY"              --Clave de moneda
FROM "ECC_HL_HR_DriversBasico_SV"