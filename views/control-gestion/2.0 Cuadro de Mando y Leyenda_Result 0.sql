SELECT
  Table__5."CENTRO",
  Table__5."GRUPO",
  Table__25."YEAR",
  Table__25."YearMonth",
  Table__7."_BIC_ZHRNPASAC",
  Table__7."_BIC_ZHRNPASA1",
  Table__7."TOTAL_PASAJEROS",
  Table__7."_BIC_ZHRNPAS_1"
FROM
  ( 
  SELECT
"/BIC/ZHRDIVFN" DIVISION,
"/BIC/ZHRGRUPO" GRUPO,
 "/BIC/ZHRCENTRA" CENTRO
FROM
  "SAPBWP"."/BIC/PZHRDIVFN" as  Division
  WHERE "OBJVERS" = 'A'
 AND "/BIC/ZHRGRUPO" IN ('GRUPO I','GRUPO II','GRUPO III','GRANDES','GRUPO CANARIAS','SS.CC. DE AEROPUERTOS','UNIDADES CORPORATIVAS')
 AND  "/BIC/ZHRDIVFN" NOT IN (7000)
  )  Table__5 INNER JOIN "_SYS_BIC"."ZAENA/ZCDG_Q6_TRAFICO"  Table__7 ON (Table__7."BUS_AREA"=Table__5."DIVISION")
   INNER JOIN ( 
  SELECT
  View__26."YEAR",
  View__26."HALFYEAR",
  View__26."QUARTER",
  View__26."MONTH",
  View__26."YEAR_INT",
  View__26."HALFYEAR_INT",
  View__26."QUARTER_INT",
  View__26."MONTH_INT",
  View__26."YearMonth"
FROM
  (SELECT "HALFYEAR", "HALFYEAR_INT", "MONTH", "MONTH_INT", "QUARTER", "QUARTER_INT", "YEAR", "YEAR_INT", ("YEAR"||"MONTH")  AS  "YearMonth"
FROM  "_SYS_BI"."M_TIME_DIMENSION_MONTH") View__26
WHERE Year >= 2011 
    AND Year <= year(now()) 


  )  Table__25 ON (Table__25."YearMonth"=Table__7."CALMONTH")
  
WHERE
  (
   Table__5."GRUPO"  IN  ( 'GRUPO III','GRUPO I','GRUPO II','GRANDES','GRUPO CANARIAS'  )
   AND
   ( Table__25."YearMonth"  =  202212   OR
Table__25."YearMonth"  =  202212 -100 OR
Table__25."YearMonth"  =  202212 -200   )
   AND
   Table__5."CENTRO"  <>  'A. DE TORREJÓN'
  )
