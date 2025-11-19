CLASS zcl_lab_59_calculator_896 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS sum_up IMPORTING iv_n1     TYPE i
                             iv_n2     TYPE i
                   EXPORTING ev_result TYPE i.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_59_CALCULATOR_896 IMPLEMENTATION.


  METHOD sum_up.
    ev_result = iv_n1 + iv_n2.
  ENDMETHOD.
ENDCLASS.
