-------------------------------------------------------------------------------
--                                                      T-Systems México
--
--
-- Name:    ECC_HL_HR_HorasExtras_SV
--
-- Desc:    Contiene el detalle de Activos Fijos procedentes del
--          módulo de RRHH
--
--          Reimplementación de desarrollo de BW
--              Transformación RSDS ZBWHR_ZNLIS99_CORR QSA010 -> ODSO ZHROHE
--
--  Author: 
--          Anette Salazar Flores and Anahi G Jara Martínez
--
-------------------------------------------------------------------------------
SELECT 
    --"MANDT",
    "PERNR"                                                                AS "ZHRPERNR",               ----Número de personal
    CASE 
        WHEN LENGTH ("FDEVENGO") = 10
        THEN SUBSTRING(FDEVENGO, 7, 4) || SUBSTRING(FDEVENGO, 4, 2) || SUBSTRING(FDEVENGO, 1, 2)
        ELSE NULL
        END                                                                AS "ZHRFDEVEN",              ----Formateo fecha
    CASE 
        WHEN SUBSTRING("FDEVENGO", 4, 2) IN ('01', '02', '03') THEN '1'
        WHEN SUBSTRING("FDEVENGO", 4, 2) IN ('04', '05', '06') THEN '2'
        WHEN SUBSTRING("FDEVENGO", 4, 2) IN ('07', '08', '09') THEN '3'
        WHEN SUBSTRING("FDEVENGO", 4, 2) IN ('10', '11', '12') THEN '4'
        ELSE NULL 
        END                                                                AS "0CALQUART1",             ----Trimestre
    CASE 
        WHEN LENGTH ("FABONO") = 10
        THEN SUBSTRING(FABONO, 7, 4) || SUBSTRING(FABONO, 4, 2) || SUBSTRING(FABONO, 1, 2)
        ELSE NULL
        END                                                                AS "ZHRFABONO",              ----Formateo fecha
    CASE 
        WHEN SUBSTRING("FABONO", 4, 2) IN ('01', '02', '03') THEN '1'
        WHEN SUBSTRING("FABONO", 4, 2) IN ('04', '05', '06') THEN '2'
        WHEN SUBSTRING("FABONO", 4, 2) IN ('07', '08', '09') THEN '3'
        WHEN SUBSTRING("FABONO", 4, 2) IN ('10', '11', '12') THEN '4'
        ELSE NULL 
        END                                                                AS "ZHRTRIM",                ----Trimestre 2
    "LGART"                                                                AS "ZHRLGART",               ----CC- Nómina
    "TOTNOMINA"                                                            AS "ZHRTOTNOM",              ----Importe en moneda local con signo +/-
    "SEQ"                                                                  AS "ZHRSEQ",                 ----Dummy para B20 int1 (siempre local)
    "KOSTL"                                                                AS "ZHRKOSTL",               ----Centro de coste
    "TKOSTL"                                                               AS "ZHRLTEXT",               ----Descripción centro de coste
    "SNAME"                                                                AS "ZHRENAME",               ----Nombre del empleado (clasificable, APELLIDO NOMBRE)
    "TXLGART"                                                              AS "ZHRTXLGAR",              ----Texto explicativo para CC-nómina
    "WERKS"                                                                AS "ZHRWERKS",               ----División de personal
    "BTRTL"                                                                AS "ZHRBTRTL",               ----Subdivisión de personal
    "BERKT"                                                                AS "ZHRBERKT",               ----Categoría profesional
    "DBERKT"                                                               AS "ZHRCTEXT",               ----Texto de longitud 32
    "PREAS"                                                                AS "ZHRPREAS",               ----Motivo de modificación Datos maestros
    "ZFEDEV"                                                               AS "ZHRZFEDEV",              ----Fecha de transferencia
    "ZUORD"                                                                AS "ZHRZUORD",               ----Número de asignación
    "BEGDA"                                                                AS "ZHRBEGDA",               ----Inicio de la validez
    "MAXHORAS"                                                             AS "ZHRMAXHOR",              ----Valor de las constantes de nómina
    "ANZHL"                                                                AS "ZHRANZHL",               ----cc -nómina (n° H.E.)
    "TIPOHORA"                                                             AS "ZHRTIPOHO",              ----Tipo de hora
    "ABKRS"                                                                AS "ZHRABKRS",               ----Área de nómina
    "ATEXT"                                                                AS "ZHRATEXT",               ----Texto de área de nómina
    "PREUNI"                                                               AS "ZHRPREUNI",              ----Precio/unidad 29/9/98 AENA
    "WAERS"                                                                AS "0CURRENCY",              ----Clave de moneda
    "PERSK"                                                                AS "ZHRPERSK",               ----Área de personal
    "KOKRS"                                                                AS "ZHRKOKRS",               ----Sociedad CO
    "ZAGRUP"                                                               AS "ZHRZAGRUP",              ----Agrupación CC nómina (Tipología)
    "BTEXT"                                                                AS "ZHRBTEXT",               ----Texto de subdivisión de personal
    "TIPO"                                                                 AS "ZHRTIPEXT",              ----Tipo de extracción
    "VERSION"                                                              AS "ZHRVERSIO",              ----Versión
    "PER_ACUM"                                                             AS "ZHRPERACU",              ----Periodo Acumulado
    "PER_FINAL"                                                            AS "ZHRPERFIN"               ----Periodo final
FROM "ECC_IL_HR_ExtraccionZBWHR_ZNLIS99_RT"