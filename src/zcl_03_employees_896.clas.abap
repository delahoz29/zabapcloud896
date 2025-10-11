CLASS zcl_03_employees_896 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS constructor IMPORTING VALUE(iv_employee_id) type string.

  METHODS get_employee RETURNING VALUE(rv_employee_id) type string.

  class-METHODS class_constructor .
  CLASS-DATA company type string.
  CLASS-DATA log type string.
  PROTECTED SECTION.
  PRIVATE SECTION.
  DATA: employee_id type string.
ENDCLASS.



CLASS zcl_03_employees_896 IMPLEMENTATION.
  METHOD constructor.
    me->employee_id = iv_employee_id.
    log = |{ log }-Instance Constructor { employee_id }--->|.
  ENDMETHOD.

  METHOD get_employee.
    rv_employee_id = me->employee_id.
  ENDMETHOD.

  METHOD class_constructor.
    company = 'Ivansinho'.
     log = |{ log }-Static Constructor --->|.
  ENDMETHOD.

ENDCLASS.
