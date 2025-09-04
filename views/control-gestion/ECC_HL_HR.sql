-------------------------------------------------------------------------------
--                                                      T-Systems Mexico
--
--
-- Name:    ECC_HL_HR_CUBE_PZEIH_C02
--
-- Desc:    Contiene el detalle de Siniestralidad. Personas
--          Implicadas(ZEIH_CO2) procedentes del módulo de RRHH
--
--          Reimplementación de desarrollo de BW
--              TransformaciónCUBE ZEIH_C02 -> CUBE PZEIH_C02
--
--  Author:
--          Anahí G. Jara Martínez
--
-------------------------------------------------------------------------------
SELECT
    "0CALMONTH",
    "0CALMONTH2",
    "0CALYEAR",
    "0CALQUARTER",
    "ZCONTADO2",
    "0PERSON",
    "ZRECNIAL",
    "0EHS_IAL",
    "0EHS_IATP",
    "ZIAPLANT",
    "ZEVDAT",
    "ZEVTIME",
    "ZF_NOTIAL",
    "ZF_INVIAL",
    "ZAGNMAT",
    "ZECHANO",
    "ZDESCLOC",
    "0EHS_EVDE",
    "0EHS_IACA",
    "0EMPLOYEE",
    "ZF_FALLEC",
    "0EHS_IPDE",
    "0RF_DEL_IND",
    "0EHS_DMTP",
    "ZF_BAJA",
    "ZGRAVEDAD",
    "ZTPASISTIN",
    "ZACTFISC",
    "ZCONTACTO",
    "ZOCUPAC",
    "ZDIVISION",
    "ZDREGION",
    "ZZONAAAEE",
    "ZGRPAAEE",
    "0PERS_AREA",
    "0PERS_SAREA",
    "0EHS_BODY",
    "0PAYRL_AREA",
    "ZTPLUGAR",
    "ZTPTRABJ",
    "ZSTAT1",
    "ZCNTPRL",
    "0AGE",
    "0GENDER",
    "ZARPERS",
    "ZHORTRAB",
    "ZGRADLES",
    "ZGRACDTE"--#TODO DUDAAA
FROM
    "ECC_HL_HR_SiniestralidadCube_SV"