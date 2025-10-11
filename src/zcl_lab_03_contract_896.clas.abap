CLASS zcl_lab_03_contract_896 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  DATA: cntr_type TYPE c LENGTH  2 .

    METHODS set_creation_date IMPORTING iv_creation_date TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
  DATA: creation_date TYPE ZDATE.
ENDCLASS.



CLASS zcl_lab_03_contract_896 IMPLEMENTATION.
  METHOD set_creation_date.

  ENDMETHOD.

ENDCLASS.
