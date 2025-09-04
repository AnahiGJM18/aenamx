

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
*      InfoObject: 0EMPLOYEE Empleados.
        EMPLOYEE           TYPE /BI0/OIEMPLOYEE,
*      Field: RECORD.
        RECORD           TYPE RSARECORD,
      END   OF _ty_s_SC_1.
    TYPES:
      BEGIN OF _ty_s_TG_1,
*      InfoObject: ZSTAT1 Status según las necesidades individuales del
*cliente.
        /BIC/ZSTAT1           TYPE /BIC/OIZSTAT1,
      END   OF _ty_s_TG_1.

*$*$ begin of global - insert your declaration only below this line  *-*
    ... "insert your code here
*$*$ end of global - insert your declaration only before this line   *-*

    METHODS
      compute_ZSTAT1
        IMPORTING
          request                  type rsrequest
          datapackid               type rsdatapid
          SOURCE_FIELDS              type _ty_s_SC_1
          segid                    type RSBK_SEGID
        EXPORTING
          RESULT                   type _ty_s_TG_1-/BIC/ZSTAT1
          monitor                  type rstr_ty_t_monitor
        RAISING
          cx_rsrout_abort
          cx_rsrout_skip_record
          cx_rsrout_skip_val
          cx_rsbk_errorcount.
    METHODS
      invert_ZSTAT1
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
*       Method compute_ZSTAT1
*----------------------------------------------------------------------*
*       This subroutine allows the mapping from source to target fields
*       of a transformation rule using ABAP for application specific
*       coding.
*----------------------------------------------------------------------*
*       Customer comment:
*----------------------------------------------------------------------*
  METHOD compute_ZSTAT1.

*   IMPORTING
*     request     type rsrequest
*     datapackid  type rsdatapid
*     SOURCE_FIELDS-EMPLOYEE TYPE /BI0/OIEMPLOYEE
*    EXPORTING
*      RESULT type _ty_s_TG_1-/BIC/ZSTAT1

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

    data: l_zstat1 type _ty_s_tg_1-/bic/zstat1.

    clear l_zstat1.

    select single /BIC/ZSTAT1
           into   l_zstat1
           from   /BI0/QEMPLOYEE
           where  EMPLOYEE eq SOURCE_FIELDS-EMPLOYEE
           and    OBJVERS eq 'A'
           and    DATETO eq '99991231'.

    RESULT = l_zstat1.

*$*$ end of routine - insert your code only before this line         *-*
  ENDMETHOD.                    "compute_ZSTAT1
*----------------------------------------------------------------------*
*       Inverse method invert_ZSTAT1
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
  METHOD invert_ZSTAT1.

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

  ENDMETHOD.                    "invert_ZSTAT1
ENDCLASS.                    "routine IMPLEMENTATION