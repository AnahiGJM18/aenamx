-------------------------------------------------------------------------------
--                                                      T-Systems México
--
--
-- Name:    ECC_HL_HR_GastosViaje_SV
--
-- Desc:    Contiene el detalle de Activos Fijos procedentes del
--          módulo de RRHH
--
--          Reimplementación de desarrollo de BW
--              Transformación RSDS ZBWHR_GV_CORR QSA010 -> ODSO ZHRDGV
--
--  Author: 
--          Anette Salazar Flores and Anahi G Jara Martínez
--
-------------------------------------------------------------------------------
SELECT
    "FPPER"                         AS "ZHRFPPER",      ----Periodo para de la nómina
    "EXBEL"                         AS "ZHREXBEL",      ----Número de asignación
    "PERNR"                         AS "ZHRPERNR",      ----N de personal
    "KOSTL"                         AS "ZHRKOSTL",      ----Centro de coste
    "C1ZNR"                         AS "ZHRC1ZNR",      ----Flecha sobre asignación de costes
    "VERSION"                       AS "ZHRVERSIO",     ----VERSION
    "PER_ACUM"                      AS "ZHRPERACU",     ----Periodo acumulado    
    "SRN"                           AS "ZHRSRN",        ----Indicador 'SIN RESULTADO DE NÓMINA'
    "INPER"                         AS "ZHRINPER",      ----Periodo en de la nómina
    "ABKRS2"                        AS "ZHRABKRS2",     ----Area de nomina comentarios
    SUBSTRING("TEXTO_VIAJE",180)    AS "ZHRCOM4",       ----Comentario 4 *-*TODO
    "TEXT_ABKRS2"                   AS "ZHRABRS2T",     ----Area de nomina texto comentarios              
    SUBSTRING("TEXTO_VIAJE",61)     AS "ZHRCOM2",       ----Comentario 2 *-*TODO
    SUBSTRING("TEXTO_VIAJE",120)    AS "ZHRCOM3",       ----Comentario 3 *-*TODO
    "ENAME"                         AS "ZHRENAME",      ----Nombre editado del empleado o candidato
    'XXXXX'                         AS "EUR",           ----Clave moneda                          
    "SCHEM"                         AS "ZHRSCHEM",      ----Esquema de viaje
    "KZREA"                         AS "ZHRKZREA",      ----Clase de viaje legal  
    "TEXT_PTRV_HEAD_KZREA"          AS "ZHRTKZREA",     ----Descipcion Clase Viaje
    "ZLAND"                         AS "ZHRZLAND",      ----País de viaje/Grupo de paises de viaje
    "ANUEP"                         AS "ZHRANUEP",      ----Cantidad de alojamientos para liquidacion por dieta
    "REC_RATE"                      AS  "ZHRREATE",     ----Tipo de cambio
    "UEBKZ"                         AS "ZHRUEBKZ",      ----Liquidar alojamiento por dieta
    "VERPA"                         AS "ZHRVERPA",      ----Liquidacion manutención por dieta
    "UHRV1"                         AS "ZHRUHRV1",      ----Sección del viaje: Hora de inicio 
    "UHRB1"                         AS "ZHRUHRB1",      ----Sección del viaje: Hora  final 
    "DATV1"                         AS "ZHRDATV1",      ----Sección del viaje: Fecha de inicio 
    "DATB1"                         AS "ZHRRDATB1",     ----Sección del viaje:Fecha final
    "KUNDE"                         AS "ZHRKUNDE",      ----Motivo del viaje (p.eje, cliente/autor)
    "ZORT1"                         AS "ZHRORT1",       ----Población 
    "TEXT_PTRV_HEAD_ZLAND"          AS "ZHRDESPAI",     ----Destino país
    "TRIPDUR"                       AS "ZHRNUMDIA",     ----Duración viaje en pais 
    "KZTKT"                         AS "ZHRKZTKT",      ----Clase actividad viaje
    "TEXT_PTRV_HEAD_KZTKT"          AS "ZHRTKZTKT",     ----Clase Actividad Viaje
    "PD_MILEAGE"                    AS "ZHRMILEAG",     ----Importe de reembolso (total), dieta por costes de viaje
    "PD_HOUSING"                    AS "ZHRHOUSIN",     ----Importe de reembolso (total), dieta de alojamiento
    "PD_FOOD"                       AS "ZHRFOOD",       ----Importe de reembolso (total), dieta de manutencion  
    "SUM_REIMBU"                    AS "ZHRREIMBU",     ----Importe de viaje
    "SUM_ADVANC"                    AS "ZHRADVANC",     ----Total anticipos de un viaje
    "SUM_PAYOUT"                    AS "ZHRPAYOUT",     ----Pago en mómina
    "SUM_PAIDCO"                    AS "ZHRPAIDCO",     ----Gastos de desplazamiento pagados por empresa
    "TRIP_TOTAL"                    AS "ZHRTRIPTO",     ----Costes totales de un viaje
    "ADDIT_AMNT"                    AS "ZHRADDITA",     ----Importe sujeto a impuestos 
    "UEBLG"                         AS "ZHRUEBLG",      ----Indicador:Transferencia HR Calculo de nómina
    "TEXT_PTRV_PERIO_UEBLG"         AS "ZHRTUEBLG",     ----Descripcion Estado de nómina
    "ANTRG"                         AS "ZHRANTGR",      ----Solic/Viaje
    "TEXT_PTRV_PERIO_ANTRG"         AS "ZHRTANTGR",     ----Descripcion  Estado Viaje
    "ABREC"                         AS "ZHRABREC",      ----Estado de Liquidación
    "TEXT_PTRV_PERIO_ABREC"         AS "ZHRTABTREC",    ----Descripcion:Estado liquidación
    "IMPORTE832"                    AS "ZHRIMP832",     ----Diestas Exentas IRPF
    "IMPORTE842"                    AS "ZHRIMP842",     ----Diestas Sujetas IRPF
    "IMPORTE862"                    AS "ZHRIMP862",     ----Locomoción Agencia (872)
    "IMPORTE872"                    AS "ZHRIMP872",     ----Hotel Pagado (862)
    "IMPORTE882"                    AS "ZHRIMP882",     ----Locomoción Trabajador (882)
    "HOTT"                          AS "ZHRHOTT",       ----NO PAGADO EMPRESA-Hotel Extrajero Convenio
    "SONS"                          AS "ZHRSONS",       ----NO PAGADO EMPRESA-Varios
    "AUBZ"                          AS "ZHRAUBZ",       ----SI PAGADO EMPRESA-Autobús pagado
    "BUBZ"                          AS "ZHRBUBZ",       ----SI PAGADO EMPRESA-Barco pagado
    "MTBZ"                          AS "ZHRMTBZ",       ----SI PAGADO EMPRESA-Coche alquiler pagado
    "BABZ"                          AS "ZHRBABZ",       ----SI PAGADO EMPRESA-Tren pagado
    "FLBZ"                          AS "ZHRFLBZ",       ----SI PAGADO EMPRESA-Vuelo pagado
    "SOBZ"                          AS "ZHRSOBZ",       ----SI PAGADO EMPRESA-Varios pagado
    "HOBZ"                          AS "ZHRHOBZ",       ----SI PAGADO EMPRESA-Hotel Pagado Directivos
    "ABUS"                          AS "ZHRABUS",       ----NO PAGADO EMPRESA- Autobus    
    "BUKE"                          AS "ZHRBUKE",       ----NO PAGADO EMPRESA -Barco
    "MTWG"                          AS "ZHRMTWG",       ----NO PAGADO EMPRESA -Coche alquiler
    "MET"                           AS "ZHRMET",        ----NO PAGADO EMPRESA-Metro
    "TAXI"                          AS "ZHRTAXI",       ----NO PAGADO EMPRESA-Taxis
    "TAX2"                          AS "ZHRTAX2",       ----NO PAGADO EMPRESA-Taxis adicionales (más de 4)
    "BAHN"                          AS "ZHRBAHN",       ----NO PAGADO EMPRESA-Tren
    "FLUG"                          AS "ZHRFLUG",       ----NO PAGADO EMPRESA-Vuelo
    "GAS"                           AS "ZHRGAS",        ----NO PAGADO EMPRESA-Gasolina
    "PARQ"                          AS "ZHRPARQ",       ----NO PAGADO EMPRESA-Parking      
    "PEAJ"                          AS "ZHRPEAJ",       ----NO PAGADO EMPRESA-Peajes
    "HDIR"                          AS "ZHRHDIR",       ----NO PAGADO EMPRESA-Hotel(España/Direct)
    "HCOR"                          AS "ZHRHCOR",       ----NO PAGADO EMPRESA-Hotel Corporativo SIN LIMITE
    "HOES"                          AS "ZHRHOES",       ----NO PAGADO EMPRESA-Hotel España Control 
    "HOET"                          AS "ZHRHOET",       ----NO PAGADO EMPRESA-Hotel España Convenio 
    "ABKRS"                         AS "ZHRABKRS",      ----Area de nómina
    "CECOT"                         AS "ZHRTEXT",       ----Descripción Centro de Coste  
    ----Rutina
   "TEXTO_VIAJE"                    AS "ZHRTVIAJE", 
    "GTEXT"                         AS "ZHRGTEXT",      ----Denominación de la división
    "M_TOTAL"                       AS "ZHRMTOTA2",     ----Kilometraje total  
    "BURKS"                         AS "0CO_AREA",      ----Sociedad CO 
    "KOSTLS"                        AS "ZHRKOSTLS",      ----Coste distribuido entre varios CeCos 
    "TIPO"                          AS "ZHRTITEXT",     ----Tipo de extracción
    "PER_FINAL"                     AS "ZHRPERFIN",     ----Periodo Final
    "TEXT_PA0001_ABKRS"             AS "ZHRATEXT",      ----Texto de área de nómina 
    "BTRTL"                         AS "ZHRSUBDI",      ----Subdivision de personal 
    "TEXT_PA0001_BTRTL"             AS "ZHRTSUBDI",     ----Subdivison de personal Texto 
    "WERKS"                         AS "ZHRNAME1",      ----Texto de división de personal 
    "TEXT_PTRV_HEAD_SCHEM"          AS "ZHRSCHEMT",     ----Texto Esquema de nivel 
    "HOTP"                          AS "ZHRHOTP",       ----SI PAGADO EMPRESA -Hotel 
    "TAXP"                          AS "ZHRTAXP",       ----SI PAGADO EMPRESA-Taxi/Parking
    "EQUI"                          AS "ZHREQUI",       ----NO PAGADO EMPRESA-Equipaje  
    "HEXC"                          AS "ZHRHEXC",       ----NO PAGADO EMPRESA-Hotel Excepción 
    "HOTQ"                          AS "ZHRHOTQ",       ----SI PAGADO EMPRESA-Hotel Pagado Tarifa ESP.Direct
    "HOTR"                          AS "ZHRHOTR",       ----SI PAGADO EMPRESA-Hotel Pagado Tarifa España
    "HOTS"                          AS "ZHRHOTS",       ----SI PAGADO EMPRESA-Hotel Pagado Tarifa EXTRANJERO
    "PARP"                          AS "ZHRPARP",       ----SI PAGADO EMPRESA-Parking pagado
    "SVIP"                          AS "ZHRSVIP",       ----SI PAGADO EMPRESA-Visados Pagado
    "SVID"                          AS "ZHRSVID",       ----SI PAGADO EMPRESA-Visados
    "SHT1"                          AS "ZHRSHT1"        ----SI PAGADO EMPRESA-Tasa turistica Alojamiento
 FROM
    "ECC_IL_HR_ZBWHR_GastosViaje_RT"