CLASS zcl_lab_35_college_896 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA mo_student TYPE REF TO zcl_lab_34_student_896.

    METHODS enroll_student IMPORTING io_student TYPE REF TO zcl_lab_34_student_896.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_35_college_896 IMPLEMENTATION.
  METHOD enroll_student.
    me->mo_student = io_student.
  ENDMETHOD.

ENDCLASS.
