-------------------------------------------------------------------------------
--                                                      T-Systems Mexico
--
--
-- Name:    ECC_HL_HR_PersonasImplicadas_SV
--
-- Desc:    Contiene el detalle de Siniestralidad. Personas 
--          Implicadas(ZEIH_DS2) procedentes del módulo de RRHH
--
--          Reimplementación de desarrollo de BW
--              Transformación RSDS Z_PRESBI_SINIES QSA010 -> ODSO ZEIH_DS2
--
--  Author: 
--          Anahí G. Jara Martínez
--
-------------------------------------------------------------------------------
SELECT
        CAST("RECN_IAL" AS INTEGER)             AS "ZRECNIAL",                             -----Numero de registro en log de accidente
        CAST("RECN_IP" AS INTEGER)              AS "ZRECNIP",                              -----Numero de registro de la persona implicada
        "IALID"                                 AS "0EHS_IAL",                             -----Entrada en informe de accidente
        "IATYPE"                                AS "0EHS_IATP",                            -----Clase de entrada de registro de accidentes
        "IAPLANT"                               AS "ZIAPLANT",                             -----Centro en el log de accidentes
        TO_DATE("EVDAT",'YYYYMMDD')             AS "ZEVDAT",                               -----Fecha del evento
        TO_TIME("EVTIME")                       AS "ZEVTIME",                              -----Hora del evento
        "EVDESC"                                AS "0EHS_EVDE",                            -----Descripción del evento
        "ACLOCDESC"                             AS "ZDESCLOC",                             -----Descripción del lugar del accidente
        CASE 
            WHEN "Z_EHS_FEC_NOTIF" = '00000000' THEN NULL
            ELSE  TO_DATE("Z_EHS_FEC_NOTIF",'YYYYMMDD')   
            END                                 AS "ZF_NOTIAL" ,                          -----Fecha notificación del accidente
        CASE 
            WHEN "Z_EHS_FEC_INVES" = '00000000' THEN NULL
            ELSE  TO_DATE("Z_EHS_FEC_INVES",'YYYYMMDD')   
            END                                 AS "Z_EHS_FEC_INVES" ,                     -----Fecha de investigación                                      
        SUBSTRING("Z_EHS_AGNT_MAT",6)           AS "ZAGNMAT",                              -----Agente Material
        SUBSTRING("Z_EHS_ECH_ANO",6)            AS "ZECHANO",                              -----Hecho anormal que desencadeno el accidente
        "IALPCAT"                               AS "0EHS_IACA",                            -----Tipo de accidente
        "IALDEADFLG"                            AS "0EHS_IPDE",                            -----Caso de muerte
        CASE 
            WHEN "IPDEATHDATE" = '00000000'
                THEN NULL 
            ELSE TO_DATE("IPDEATHDATE",'YYYYMMDD')
        END                                     AS "ZF_FALLEC",                             -----Fecha de fallecimiento
        CAST(RIGHT("IPPERS",8) AS INTEGER)      AS "0EMPLOYEE",                             -----Empleados
        SUBSTRING("BODYPART",6)                 AS "0EHS_DMTP",                             -----Clase de daño
        SUBSTRING("INJURY",6)                   AS "0EHS_INJU",                             -----Clase de herida
        CASE 
            WHEN "Z_EHS_FEC_BAJ" = '00000000'
                THEN NULL
            ELSE TO_DATE("Z_EHS_FEC_BAJ",'YYYYMMDD')
            END                                 AS "ZF_BAJA",                                -----Fecha de baja
        "Z_EHS_GRAV_ACC"                        AS "ZGRAVEDAD",                              -----Gravedad del accidentado
        "Z_EHS_TP_ASIST"                        AS "ZTPASISTIN",                             -----Tipo de asistencia
        SUBSTRING("Z_EHS_TP_LUGAR",6)           AS "ZTPLUGAR",                               -----Tipo de lugar
        SUBSTRING("Z_EHS_TP_TRABJ",6)           AS "ZTPTRABJ",                               -----Tipo de trabajo
        SUBSTRING("Z_EHS_ACT_FIS",6)            AS "ZACTFISC",                               -----Actividad física específica
        SUBSTRING("Z_EHS_FOR_CON",6)            AS "ZCONTACTO",                              -----Forma de contacto
        "ZOCUPAC"                               AS "ZOCUPAC",                                -----Ocupación
        1                                       AS "ZCONTADO2",
        "GSBER"                                 AS "ZDIVISION",                              -----División
        "ZREGION"                               AS "ZDREGION",                               -----Dirección Regional
        "ZREGION"                               AS "ZZONAAAEE",                              -----Zona de Aeropuertos
        "ZGRUPOAAEE"                            AS "ZGRPAAEE",                               -----Grupo Aropuertos
        "WERKS"                                 AS "0PERS_AREA",                              -----División de personal
        "BTRTL"                                 AS "0PERS_SAREA",                            -----Subdivisión de personal
        "DELFLG"                                AS "0RF_DEL_IND",                            -----Indicador de borrado
        YEAR(TO_DATE("EVDAT",'YYYYMMDD'))       AS "0CALYEAR",                               -----Año natural
        SUBSTRING(TO_DATE("EVDAT",'YYYYMMDD'),1,7) AS "0CALMONTH",                           -----Año natural/Mes           
        MONTH(TO_DATE("EVDAT",'YYYYMMDD'))      AS "0CALMONTH2",                             -----Mes natural
        QUARTER(TO_DATE("EVDAT",'YYYYMMDD'))    AS "0CALQUARTER",                            -----Año natual/Trimestre
        "ZZCEN_PRL"                             AS "ZCNTPRL",                                -----Centro de trabajo de PRL
        ---RUTINA
        'xx'                                    AS "0PAYRL_AREA",                            -- #TODO: Implementar rutina de 0PAYRL_AREA
        CAST("ZEDAD" AS INTEGER)                AS "0AGE",                                   -----Edad en años
        "ZGENERO"                               AS "0GENDER",                                -----Sexo
        "ZAREAPERS"                             AS "ZARPERS",                                -----Area de personal
        "Z_EHS_HOR_TRA"                         AS "ZHORTRAB",                               -----Hora de trabajo
        CAST("Z_EHS_GRAD_LES" AS INTEGER)       AS "ZGRADLES",                               -----Grado de Lesión
        CAST("Z_EHS_GR_ACCTE" AS INTEGER)       AS "ZGRACDTE"                                -----Gravedad de Accidente
FROM
    "ECC_IL_HR_FuentSiniestralidad_RT"