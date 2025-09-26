--CUBE PMCAEDRB -> CUBE MCAEDRBA
SELECT 
    "0FISCPER",             --Ejercicio/Período
    "0FISCPER3",            --Período contable
    "0FISCVARNT",           --Variante de ejercicio
    "0FISCYEAR",            --Ejercicio
    "0CO_AREA",             --Sociedad CO
    "CECO",                 --CECO
    "ZACTIVDAD",            --Actividad
    "0CHRT_ACCTS",          --Plan de cuentas
    "CUENTA",               --Cuenta Contable
    "ORDEN",                --Código de Actuación
    "VERS",                 --Versión
    "ZDRIVER",              --Driver
    "DIVISION",             --División
    "MCC_ACTU",             --Actuación mCOST
    "MCC_AETAC",            --Tipo Actuación mCOST
    "MCC_VERDR",            --Versión Drivers
    "ZMODPPTO",             --Modelo presupuestario
    "ZAFAFC",               --Indicador AF / AFC
-- Asig.:=  0CURRENCY / 0AMOUNT    AS "0AMOUNT",            --Importe
    "MCR_CUEAC"             --Porcentaje Actuación-Actividad
-- Asig.: = 0CURRENCY /IAMORTI     AS "IAMORTI",            --Amortización
-- Asig.: = 0CURRENCY /ICAPTI      AS "ICAPTI",             --Capital
-- Asig.: = 0CURRENCY /ISUBCA      AS "ISUBCA",             --Subvenciones Capital
-- Asig.: = 0CURRENCY /MCR_BAJA    AS "MCR_BAJA",           --Pérdidas
-- Asig.: = 0CURRENCY /MCR_PRI     AS "MCR_PRI",            --Dotaciones Provisión
-- Asig.: = 0CURRENCY /MCR_VNCFI   AS "MCR_VNCFI",          --Valor Neto(Fin)
-- Asig.: = 0CURRENCY /MCR_VNCIN   AS "MCR_VNCIN",          --Valor Neto(Inicio)
-- Asig.: = 0CURRENCY /MCR_VNCFP   AS "MCR_VNCFP",          --Valor Neto (Fin año pasado)
-- Asig.: = 0CURRENCY /IINMOV      AS "IINMOV"              --Provisiones de Inmovilizado
FROM "ECC_HL_HR_PuenteDriversBasico_SV"