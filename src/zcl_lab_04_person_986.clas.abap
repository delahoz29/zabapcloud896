CLASS zcl_lab_04_person_986 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS set_age IMPORTING iv_age TYPE i.
    METHODS get_age EXPORTING ev_age TYPE i.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: age TYPE i.
ENDCLASS.



CLASS zcl_lab_04_person_986 IMPLEMENTATION.
  METHOD get_age.
    ev_age = me->age.
  ENDMETHOD.

  METHOD set_age.
    me->age = iv_age.
  ENDMETHOD.

ENDCLASS.
