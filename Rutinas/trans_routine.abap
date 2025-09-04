----------------------
--Rutina que aparece: CUBE PGASCT_B -> CUBE GASCT_BA



PROGRAM trans_routine.


*---------------------------------------------------------------------*
*       CLASS routine DEFINITION
*---------------------------------------------------------------------*
*
*---------------------------------------------------------------------*
CLASS lcl_transform DEFINITION.
  PUBLIC SECTION.

*  Attributs
    DATA:
      p_check_master_data_exist
            TYPE RSODSOCHECKONLY READ-ONLY,
*-    Instance for getting request runtime attributs;
*     Available information: Refer to methods of
*     interface 'if_rsbk_request_admintab_view'
      p_r_request
            TYPE REF TO if_rsbk_request_admintab_view READ-ONLY.

  PRIVATE SECTION.

    TYPE-POOLS: rsd, rstr.

*   Rule specific types
    TYPES:
      BEGIN OF _ty_s_SC_1,
*      InfoObject: 0CALYEAR Año natural.
        CALYEAR           TYPE /BI0/OICALYEAR,
*      InfoObject: DIVISION División.
        /BIC/DIVISION           TYPE /BIC/OIDIVISION,
*      InfoObject: 0CO_AREA Sociedad CO.
        CO_AREA           TYPE /BI0/OICO_AREA,
*      Field: RECORD.
        RECORD           TYPE RSARECORD,
      END   OF _ty_s_SC_1.
    TYPES:
      BEGIN OF _ty_s_TG_1,
*      InfoObject: 0CO_AREA Sociedad CO.
        CO_AREA           TYPE /BI0/OICO_AREA,
      END   OF _ty_s_TG_1.

*$*$ begin of global - insert your declaration only below this line  *-*
... "insert your code here
*$*$ end of global - insert your declaration only before this line   *-*

    METHODS
      compute_0CO_AREA
        IMPORTING
          request                  type rsrequest
          datapackid               type rsdatapid
          SOURCE_FIELDS              type _ty_s_SC_1
          segid                    type RSBK_SEGID
        EXPORTING
          RESULT                   type _ty_s_TG_1-CO_AREA
          monitor                  type rstr_ty_t_monitor
        RAISING
          cx_rsrout_abort
          cx_rsrout_skip_record
          cx_rsrout_skip_val
          cx_rsbk_errorcount.
    METHODS
      invert_0CO_AREA
        IMPORTING
          i_th_fields_outbound         TYPE rstran_t_field_inv
          i_r_selset_outbound          TYPE REF TO cl_rsmds_set
          i_is_main_selection          TYPE rs_bool
          i_r_selset_outbound_complete TYPE REF TO cl_rsmds_set
          i_r_universe_inbound         TYPE REF TO cl_rsmds_universe
        CHANGING
          c_th_fields_inbound          TYPE rstran_t_field_inv
          c_r_selset_inbound           TYPE REF TO cl_rsmds_set
          c_exact                      TYPE rs_bool.
ENDCLASS.                    "routine DEFINITION

*$*$ begin of 2nd part global - insert your code only below this line  *
... "insert your code here
*$*$ end of 2nd part global - insert your code only before this line   *

*---------------------------------------------------------------------*
*       CLASS routine IMPLEMENTATION
*---------------------------------------------------------------------*
*
*---------------------------------------------------------------------*
CLASS lcl_transform IMPLEMENTATION.

*----------------------------------------------------------------------*
*       Method compute_0CO_AREA
*----------------------------------------------------------------------*
*       This subroutine allows the mapping from source to target fields
*       of a transformation rule using ABAP for application specific
*       coding.
*----------------------------------------------------------------------*
*       Customer comment:
*----------------------------------------------------------------------*
  METHOD compute_0CO_AREA.

*   IMPORTING
*     request     type rsrequest
*     datapackid  type rsdatapid
*     SOURCE_FIELDS-CALYEAR TYPE /BI0/OICALYEAR
*     SOURCE_FIELDS-/BIC/DIVISION TYPE /BIC/OIDIVISION
*     SOURCE_FIELDS-CO_AREA TYPE /BI0/OICO_AREA
*    EXPORTING
*      RESULT type _ty_s_TG_1-CO_AREA

    DATA:
      MONITOR_REC    TYPE rsmonitor.

*$*$ begin of routine - insert your code only below this line        *-*
... "insert your code here
*--  fill table "MONITOR" with values of structure "MONITOR_REC"
*-   to make monitor entries
... "to cancel the update process
*    raise exception type CX_RSROUT_ABORT.
... "to skip a record
*    raise exception type CX_RSROUT_SKIP_RECORD.
... "to clear target fields
*    raise exception type CX_RSROUT_SKIP_VAL.

*Inicio modificación 04/07/2013
    "Rutina 2
    IF SOURCE_FIELDS-co_area IS NOT INITIAL.
      IF SOURCE_FIELDS-calyear <= '2011'.
        RESULT = 'AENA'.
      ELSE.
        SELECT SINGLE co_area
          FROM /bic/apuendivi00
          INTO RESULT
          WHERE /bic/division = SOURCE_FIELDS-/bic/division AND
                calyear <= SOURCE_FIELDS-calyear AND
                /bic/zyearfin >= SOURCE_FIELDS-calyear.
      ENDIF.
    ENDIF.

*Fin modificación 04/07/2013

*$*$ end of routine - insert your code only before this line         *-*
  ENDMETHOD.                    "compute_0CO_AREA
*----------------------------------------------------------------------*
*       Inverse method invert_0CO_AREA
*----------------------------------------------------------------------*
*       This subroutine needs to be implemented only for direct access
*       (for better performance) and for the Report/Report Interface
*       (drill through).
*       The inverse routine should transform a projection and
*       a selection for the target to a projection and a selection
*       for the source, respectively.
*       If the implementation remains empty all fields are filled and
*       all values are selected.
*----------------------------------------------------------------------*
*       Customer comment:
*----------------------------------------------------------------------*
  METHOD invert_0CO_AREA.

*   IMPORTING
*     i_r_selset_outbound          TYPE REF TO cl_rsmds_set
*     i_th_fields_outbound         TYPE HASHED TABLE
*     i_r_selset_outbound_complete TYPE REF TO cl_rsmds_set
*     i_r_universe_inbound         TYPE REF TO cl_rsmds_universe
*   CHANGING
*     c_r_selset_inbound           TYPE REF TO cl_rsmds_set
*     c_th_fields_inbound          TYPE HASHED TABLE
*     c_exact                      TYPE rs_bool

*$*$ begin of inverse routine - insert your code only below this line*-*
... "insert your code here
*$*$ end of inverse routine - insert your code only before this line *-*

  ENDMETHOD.                    "invert_0CO_AREA
ENDCLASS.                    "routine IMPLEMENTATION
