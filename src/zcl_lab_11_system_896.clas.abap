CLASS zcl_lab_11_system_896 DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA architecture  TYPE string VALUE '64BITS'.

    METHODS get_architecture EXPORTING ev_valor_arch TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_11_system_896 IMPLEMENTATION.
  METHOD get_architecture.
    ev_valor_arch = me->architecture.
  ENDMETHOD.

ENDCLASS.
