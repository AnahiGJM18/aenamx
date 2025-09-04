-------------------------------------------------------------------------------
--                                                      T-Systems Mexico
--
--
-- Name:    ECC_HL_HR_GrupoEstandar_SV
--
-- Desc:    Contiene el detalle de Siniestralidad. Personas
--          Implicadas(ZEIH_CO2) procedentes del módulo de RRHH
--
--          Reimplementación de desarrollo de BW
--              Transformación CUBE ZEIH_C02 -> ODSO ZEH_DS12
--
--  Author:
--          Anahí G. Jara Martínez
--
-------------------------------------------------------------------------------
SELECT
    "0CALYEAR",             --Año natural
    "0CALMONTH",            --Año natural/Mes
    "0CALMONTH2",           --Mes natural
    "0PERS_AREA",           --División de personal
    "ZDREGION",             --Dirección Regional 
    "ZCNTPRL",              --Centro trabajo PRL
    "0EHS_IAL",             --Entyrada en informe de accidente
    "0EHS_IACA",            --Tipo de accidente
    "0EHS_IPDE",            --Caso de muerte 
    "ZF_INVIAL",            --Fehca de Investigacion del accidente 
    "0EHS_IATP",            --Clase de entrada de registro de accidentes
    "ZCONTADO2"             --Contador

FROM
    "ECC_HL_HR_SiniestralidadCube_SV"
