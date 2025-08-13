SELECT
        "RECN_IAL",                                                                                     -----Número actual del registro de datos
        "RECN_IP",                                                                                      -----Número actual del registro de datos
        "IALID",                                                                                        -----Entrada de log de accidentes
        "IATYPE",                                                                                       -----Clase de entrada log accidentes
        "IAPLANT",                                                                                      -----Asignación de centro p.entrada en log
        TO_DATE("EVDAT",'YYYYMMDD')             AS "Fecha del evento",                                  -----Fecha del evento
        "EVTIME",                                                                                       -----Hora
        "EVDESC",                                                                                       -----Descripción del evento
        "ACLOCDESC",                                                                                    -----Descripción del lugar del accidente
        TO_DATE("Z_EHS_FEC_NOTIF",'YYYYMMDD')   AS "Z_EHS_FEC_NOTIF" ,                                  -----Fecha notificación del accidente
        TO_DATE("Z_EHS_FEC_INVES",'YYYYMMDD')   AS "Z_EHS_FEC_INVES",                                   -----Fecha de investigación
        SUBSTRING("Z_EHS_AGNT_MAT",6)           AS "Z_EHS_AGNT_MAT",                                    -----Agente Material
        SUBSTRING("Z_EHS_ECH_ANO",6)            AS "Hecho anormal que desencadenó",                     -----Hecho anormal que desencadenó
        "IALPCAT",                                                                                      -----Categoría del accidente
        "IALDEADFLG",                                                                                   -----Muerte
        CASE 
                "IPDEATHDATE",                                                                          -----Fecha de fallecimiento de la persona implicada
        "IPABSESTDAYS",                                                                                 -----Duración estimada del absentismo (en días)
        "IPABSDAYS",                                                                                    -----Cantidad de días laborables del absentismo
        "IPABSCALDAYS",                                                                                 -----Días naturales
        RIGHT("IPPERS",8)                       AS "Persona implicada",                                 -----Persona implicada
        "GSBER",                                                                                        -----División
        "DELFLG",                                                                                       -----Indicador de borrado
        SUBSTRING("BODYPART",6)                 AS "BODYPART",                                          -----Parte del cuerpo
        SUBSTRING("INJURY",6)                   AS "INJURY",                                            -----Traumatismo o enfermedad
        CASE 
            WHEN "Z_EHS_FEC_BAJ" = '00000000'
                THEN NULL
            ELSE TO_DATE("Z_EHS_FEC_BAJ",'YYYYMMDD')
            END,                                                                                        -----Fecha baja
        "Z_EHS_GRAV_ACC",                                                                               -----Gravedad del accidentado
        "Z_EHS_TP_ASIST",                                                                               -----Tipo Asistencia
        SUBSTRING("Z_EHS_TP_LUGAR",6)           AS "Z_EHS_TP_LUGAR",                                    -----Tipo de Lugar
        SUBSTRING("Z_EHS_TP_TRABJ",6)           AS "Z_EHS_TP_TRABJ",                                    -----Tipo de Trabajo
        SUBSTRING("Z_EHS_ACT_FIS",6)            AS "Z_EHS_ACT_FIS",                                     -----Actividad física específica
        SUBSTRING("Z_EHS_FOR_CON",6)            AS "Z_EHS_FOR_CON",                                     -----Forma de contacto
        "Z_ULTIF_MODIFY",                                                                               -----Cronomarcador UTC en forma breve (AAAAMMDDhhmmss)
        "ZEDAD",                                                                                        -----ZEDAD
        "ZGENERO",                                                                                      -----ZGENERO
        "ZAREAPERS",                                                                                    -----ZAREAPERS
        "Z_EHS_HOR_TRA",                                                                                -----Z_EHS_HOR_TRA
        "Z_EHS_GRAD_LES",                                                                               -----Z_EHS_GRAD_LES
        "Z_EHS_GR_ACCTE",                                                                               -----Z_EHS_GR_ACCTE
        "ZZCEN_PRL",                                                                                    -----Código de centro de prevención
        "ZOCUPAC",                                                                                      -----Ocupación PRL
        "ZREGION",                                                                                      -----Región/Grupo de Aeropuertos
        "ZGRUPOAAEE",                                                                                   -----Grupo Aropuertos
        "WERKS",                                                                                        -----División de personal
        "BTRTL",                                                                                        -----Subdivisión de personal
        YEAR(TO_DATE("EVDAT",'YYYYMMDD'))       AS "Año natural", 
        MONTH(TO_DATE("EVDAT",'YYYYMMDD'))      AS "Mes natural", 
        QUARTER(TO_DATE("EVDAT",'YYYYMMDD'))
        
FROM
    "ECC_IL_HR_FuentSiniestralidad_RT"