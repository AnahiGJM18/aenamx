-------------------------------------------------------------------------------
--                                                      T-Systems Mexico
--
--
-- Name:    ECC_HL_HR_DivisionFinanciera_SV
--
-- Desc:    Contiene la información sobre División financiera
--          
--
--          Reimplementación de desarrollo de BW
--              Transformación RSDS ZNBO_CENTRO_DIV QSA010 -> IOBJ ZHRDIVFN
--
--  Author: 
--          Anahí G. Jara Martínez and Anette 
--
-------------------------------------------------------------------------------

SELECT
    TO_INTEGER("DIVISION")              AS "ZHRDIVFN",          --División Financiera 
    "CENTRO"                            AS "ZHRGRUPO",          --Grupo
    "GRUPO_TIP"                         AS "ZHRGRUPOT",         --Tipologia 
    "CENTRO_TRABAJO"                    AS "ZHRCENTRA",         --Centro de Trabajo
    "DESC_DIV"                          AS "ZHRDIVTXT",         --Texto división financiera
    "CD_GRUPO"                          AS "ZHRPL_GRP",         --Grupo de aeropuertos
    "CD_TIPOLOGIA"                      AS "ZHRPL_TPC",         --Tipologia aeropuerto
    "CD_CENTRO"                         AS "ZHRPL_CEN"          --Centro de trabajo
FROM "ECC_IL_HR_CentroDivisionF_RT"