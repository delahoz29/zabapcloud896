CLASS zcl_lab_22_student_896 DEFINITION
INHERITING FROM zcl_lab_21_classroom_896
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS assign_student.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_22_student_896 IMPLEMENTATION.
  METHOD assign_student.
    DATA(lo_class) = NEW zcl_lab_21_classroom_896(  ).
  ENDMETHOD.

ENDCLASS.
