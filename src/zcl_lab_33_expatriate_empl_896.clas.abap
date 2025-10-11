CLASS zcl_lab_33_expatriate_empl_896 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_lab_04_employee_896.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_33_expatriate_empl_896 IMPLEMENTATION.
  METHOD zif_lab_04_employee_896~get_employees_count.
    rv_count = 29.
  ENDMETHOD.

ENDCLASS.
