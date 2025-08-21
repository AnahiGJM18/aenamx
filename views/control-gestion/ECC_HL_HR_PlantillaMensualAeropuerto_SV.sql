SELECT 
    "MANDT",                                                                            ---Mandante
    TO_DATE("F_PLANTILLA", 'YYYYMMDD')                  AS "F_PLANTILLA",               ---Inicio de la validez
    "WERKS",                                                                            ---División del personal
    "GSBER",                                                                            ---División
    "CEN_PRL",                                                                          ---Código de centro de prevención
    "BTRTL",                                                                            ---Subdivisión de personal
    "P_MENS",                                                                           ---Punteron interno
    "P_MED_MENS",                                                                       ---Punteron interno
    "REGION",                                                                           ---Región/Grupo de Aeropuertos
    "GRUPOAE",                                                                          ---Grupo Aeropuertos
    SUBSTRING(TO_DATE("F_PLANTILLA", 'YYYYMMDD'),1,7)   AS "0CALMONTH",                 ---Año natural/Mes
    MONTH(TO_DATE("F_PLANTILLA", 'YYYYMMDD'))           AS "0CALMONTH2",                ---Mes natural
    YEAR(TO_DATE("F_PLANTILLA", 'YYYYMMDD'))            AS "0CALYEAR"                  ---Año natural
FROM 
    "ECC_IL_HR_PMensualAepto_RT"