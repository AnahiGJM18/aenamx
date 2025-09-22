-------------------------------------------------------------------------------
--                                                      T-Systems Mexico
--
--
-- Name:    ECC_HL_HR_PuenteActivosFijos_SV
--
-- Desc:    Contiene el detalle de Activos Fijos procedentes del
--          módulo de RRHH
--
--          Reimplementación de desarrollo de BW
--              Transformación ODSO ZACTIVOS -> ODSO PZACTIVO
--
--  Author: 
--          Anahi G Jara Martínez
--
-------------------------------------------------------------------------------
SELECT 
    "0CO_AREA",                             ----Sociedad CO #TODO:Tabla de datos maestros TCO_AREA
    "0CALYEAR",                             ----Año natural
    "ZCLASEAF",                             ----Clase de activo fijo
    "DIVISION",                             ----División
    "CECO",                                 ----CECO
    "ZCLASEMOV",                            ----Clase de movimiento activos fijos
    "0FISCVARNT",                           ----Variante de ejercicio #TODO: Tabla de datos maestros T009
    "AREAVALOR",                            ----Area valoracion AF
    "ZDOCCONT",                             ----Número de documento contable
    "ZGRPCTROL",                            ----Grupo de control de períodos
    "ZNUMAF",                               ----N° actual de partida individual
    "CUENTA",                               ----Cuenta Contable
    "SUBNUM",                               ----Subnumero AF
    "MPEXPEDIE",                            ----Número de Expediente
    "MPACFIJ",                              ----Activo fijo
    "ZPOSICIO2",                            ---Posición para Distribuir por CeCo,Cuenta BW
    "OCHRT_ACCTS",                          ----Plan de cuentas #TODO: Es una rutina ocupa la tabla de Division 
    "IMPORTE",                              ----Importe Real Activo 
    "ZGAFFINV",                            ----Fecha de fin de inversiones 
    "0CURRENCY",                            ----#TODO Clave de moneda / "viene de otra tabla" / es constant
    "MPVIDUTIL",       
    'X'                    AS "MPFLAG"      ---#TODO:CAMPO PENDIENMTE 
    "ZGAFFINV",                              ----Fecha de fin de inversión (días desde 00010101)
    "ZPROYEEPA"                             ----Proyecto Epa
FROM "ECC_HL_HR_ZActivosFijos_SV"