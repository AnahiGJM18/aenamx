SELECT
        "RECN_IAL"                              AS "ZRECNIAL",                                                                                     -----Número actual del registro de datos
        "RECN_IP"                               AS "ZRECNIP",                                                                                      -----Número actual del registro de datos
        "IALID"                                 AS "0EHS_IAL",                                                                                     -----Entrada de log de accidentes
        "IATYPE"                                AS "0EHS_IATP",                                                                                    -----Clase de entrada log accidentes
        "IAPLANT"                               AS "ZIAPLANT",                                                                                     -----Asignación de centro p.entrada en log
        TO_DATE("EVDAT",'YYYYMMDD')             AS "ZEVDAT",                                  -----Fecha del evento
        "EVTIME"                                AS "ZEVTIME",                                                                                       -----Hora
        "EVDESC"                                AS "0EHS_EVDE",                                                                                       -----Descripción del evento
        "ACLOCDESC"                             AS "ZDESCLOC",                                                                                    -----Descripción del lugar del accidente
        TO_DATE("Z_EHS_FEC_NOTIF",'YYYYMMDD')   AS "ZF_NOTIAL" ,                                  -----Fecha notificación del accidente
        TO_DATE("Z_EHS_FEC_INVES",'YYYYMMDD')   AS "ZF_INVIAL",                                   -----Fecha de investigación
        SUBSTRING("Z_EHS_AGNT_MAT",6)           AS "ZAGNMAT",                                    -----Agente Material
        SUBSTRING("Z_EHS_ECH_ANO",6)            AS "ZECHANO",                     -----Hecho anormal que desencadenó
        "IALPCAT"                               AS "0EHS_IACA",                                                                                      -----Categoría del accidente
        "IALDEADFLG"                            AS "0EHS_IPDE",                                                                                   -----Muerte
        CASE 
            WHEN "IPDEATHDATE" = '00000000'
                THEN NULL 
            ELSE TO_DATE("IPDEATHDATE",'YYYYMMDD')
        END                                     AS "ZF_FALLEC",                                                                          -----Fecha de fallecimiento de la persona implicada
        RIGHT("IPPERS",8)                       AS "0EMPLOYEE",                                 -----Persona implicada
        SUBSTRING("BODYPART",6)                 AS "0EHS_DMTP",                                          -----Parte del cuerpo
        SUBSTRING("INJURY",6)                   AS "0EHS_INJU",                                            -----Traumatismo o enfermedad
        CASE 
            WHEN "Z_EHS_FEC_BAJ" = '00000000'
                THEN NULL
            ELSE TO_DATE("Z_EHS_FEC_BAJ",'YYYYMMDD')
            END                                 AS "ZF_BAJA",                                                                                        -----Fecha baja
        "Z_EHS_GRAV_ACC"                        AS "ZGRAVEDAD",                                                                               -----Gravedad del accidentado
        "Z_EHS_TP_ASIST"                        AS "ZTPASISTIN",                                                                               -----Tipo Asistencia
        SUBSTRING("Z_EHS_TP_LUGAR",6)           AS "ZTPLUGAR",                                    -----Tipo de Lugar
        SUBSTRING("Z_EHS_TP_TRABJ",6)           AS "ZTPTRABJ",                                    -----Tipo de Trabajo
        SUBSTRING("Z_EHS_ACT_FIS",6)            AS "ZACTFISC",                                     -----Actividad física específica
        SUBSTRING("Z_EHS_FOR_CON",6)            AS "ZCONTACTO",                                     -----Forma de contacto
        "ZOCUPAC"                               AS "ZOCUPAC",                                                                                      -----Ocupación PRL
        SUM(1)                                  AS "ZCONTADO2"
        "Z_ULTIF_MODIFY",                                                                               -----Cronomarcador UTC en forma breve (AAAAMMDDhhmmss)
        "ZEDAD",                                                                                        -----ZEDAD
        "ZGENERO",                                                                                      -----ZGENERO
        "ZAREAPERS",                                                                                    -----ZAREAPERS
        "Z_EHS_HOR_TRA",                                                                                -----Z_EHS_HOR_TRA
        "Z_EHS_GRAD_LES",                                                                               -----Z_EHS_GRAD_LES
        "Z_EHS_GR_ACCTE",                                                                               -----Z_EHS_GR_ACCTE
        "ZZCEN_PRL",                                                                                    -----Código de centro de prevención
        "ZREGION",                                                                                      -----Región/Grupo de Aeropuertos
        "ZGRUPOAAEE",                                                                                   -----Grupo Aropuertos
        "WERKS",                                                                                        -----División de personal
        "BTRTL",                                                                                        -----Subdivisión de personal
        YEAR(TO_DATE("EVDAT",'YYYYMMDD'))       AS "Año natural", 
        MONTH(TO_DATE("EVDAT",'YYYYMMDD'))      AS "Mes natural", 
        QUARTER(TO_DATE("EVDAT",'YYYYMMDD')),
        "IPABSDAYS",                                                                                    -----Cantidad de días laborables del absentismo
        "IPABSCALDAYS",                                                                                 -----Días naturales
        "GSBER",                                                                                        -----División
        "IPABSESTDAYS"                          AS "",                                                                                 -----Duración estimada del absentismo (en días)
        "DELFLG",                                                                                       -----Indicador de borrado
        
FROM
    "ECC_IL_HR_FuentSiniestralidad_RT"