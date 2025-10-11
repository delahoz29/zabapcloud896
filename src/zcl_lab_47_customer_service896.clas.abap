CLASS zcl_lab_47_customer_service896 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-METHODS on_new_call FOR EVENT new_call OF zcl_lab_46_mobile_operator_896 IMPORTING ev_phone_number.

    CLASS-DATA log TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_47_customer_service896 IMPLEMENTATION.
  METHOD on_new_call.
    log = |Cliente....{ ev_phone_number }|.
  ENDMETHOD.

ENDCLASS.
