CLASS zcl_lab_49_employee_896 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA log TYPE string.
    METHODS on_payroll_paid FOR EVENT payroll_paid OF zcl_lab_48_admin_dep_896 IMPORTING ev_log.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_49_employee_896 IMPLEMENTATION.
  METHOD on_payroll_paid.
    me->log = |Nómina pagada a empleado: { ev_log }|.
  ENDMETHOD.

ENDCLASS.
