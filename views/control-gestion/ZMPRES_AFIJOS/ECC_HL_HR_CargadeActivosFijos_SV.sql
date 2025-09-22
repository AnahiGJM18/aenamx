-------------------------------------------------------------------------------
--                                                      T-Systems Mexico
--
--
-- Name:    ECC_HL_HR_CargadeActivosFijos_SV
--
-- Desc:    Contiene el detalle de Activos Fijos procedentes del
--          módulo de RRHH
--
--          Reimplementación de desarrollo de BW
--              Transformación RSDS ZMPRES_AFIJOS QS4100 -> TRCS MPACTFIJ_S4
--
--  Author: 
--          Anette Salazar Flores
--
-------------------------------------------------------------------------------
SELECT 

    "BUKRS"                              AS "0CO_AREA",                  ----Sociedad CO
    "ANLKL"                              AS "ZCLASEAF",                  ----Clase de activo fijo
    "GSBER"                              AS "DIVISION",                  ----División
    "KOSTL"                              AS "CECO",                      ----
    "BWASL"                              AS "ZCLASEMOV",                 ----Clase de movimiento activos fijos
    'k4'                                 AS "0FISCVARNT",                ----Variante de ejercicio #TODO: Tabla de datos maestros T009
    TO_INTEGER("AFABE")                  AS "AREAVALOR",                 ----Area valoracion AF
    "BELNR"                              AS "ZDOCCONT",                  ----Número de documento contable
    "PERGRP"                             AS "ZGRPCTROL",                 ----Grupo de control de períodos
    "LNRAN"                              AS "ZNUMAF",                    ----N° actual de partida individual
    YEAR("GJAHR")                        AS "0CALYEAR",                  ----Año natural
    "BUKRS"                              AS "0CHRT_ACCTS",               ----Plan de cuentas / no es rutina
    "KTANSW"                             AS "CUENTA",                    ----Cuenta Contable
    "ANLN2"                              AS "SUBNUM",                    ----Subnumero AF
    "KFZKZ"                              AS "MPEXPEDIE",                 ----Número de Expediente
    CAST("ANBTR" AS INTEGER) / 100       AS "IMPORTE",                   ----Importe Real Activo / Vienen solo nulos
    'EUR'                                AS "0CURRENCY",                 ----#TODO Clave de moneda / "viene de otra tabla" / es constante
    "ANLN1"                              AS "MPACFIJ",                   ----Activo fijo
    'xxxxxxxxx'                          AS "MPVIDUTIL",                 -----Vida util #TODO Identificar de donde viene el campo
    'xxxxxxxxx'                           AS "ZGAFFINV",                ---#TODO:PENDIENTE 
    "INVNR"                              AS "ZPROYEEPA"                  ----Proyecto Epa
FROM "ECC_IL_HR_VewZMPRESAFI_RT"