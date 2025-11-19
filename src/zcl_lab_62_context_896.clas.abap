CLASS zcl_lab_62_context_896 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA mv_hora TYPE zde_uzeit.
    METHODS constructor.
    CLASS-METHODS get_instancia RETURNING VALUE(ro_instancia)
                                            TYPE REF TO zcl_lab_62_context_896.
  PROTECTED SECTION.
  PRIVATE SECTION.

    CLASS-DATA mo_instancia TYPE REF TO zcl_lab_62_context_896.
ENDCLASS.



CLASS ZCL_LAB_62_CONTEXT_896 IMPLEMENTATION.


  METHOD constructor.
    me->mv_hora = cl_abap_context_info=>get_system_time( ).
  ENDMETHOD.


  METHOD get_instancia.
    IF mo_instancia IS NOT BOUND.
      mo_instancia = NEW #( ).
    ENDIF.
    ro_instancia = mo_instancia.
  ENDMETHOD.
ENDCLASS.
