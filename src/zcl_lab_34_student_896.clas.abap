CLASS zcl_lab_34_student_896 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: set_name IMPORTING iv_name TYPE string,
      get_name EXPORTING ev_name TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA name TYPE string.
ENDCLASS.



CLASS zcl_lab_34_student_896 IMPLEMENTATION.
  METHOD set_name.
    me->name = iv_name.
  ENDMETHOD.

  METHOD get_name.
    ev_name = me->name.
  ENDMETHOD.

ENDCLASS.
