CLASS zcl_lab_64_supply_file_896 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_lab_06_file_896.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_64_supply_file_896 IMPLEMENTATION.
  METHOD zif_lab_06_file_896~get_file_type.
    rv_file_type = 'Supply File'.
  ENDMETHOD.

ENDCLASS.
