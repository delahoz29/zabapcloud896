CLASS zcl_lab_60_test_calc_896 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PUBLIC SECTION.
    "! @testing zcl_lab_59_calculator_896
    METHODS sum_up_test FOR TESTING.
  PROTECTED SECTION.
  PRIVATE SECTION.
    METHODS setup.
    METHODS teardown.
    DATA mo_cut TYPE REF TO zcl_lab_59_calculator_896.
ENDCLASS.



CLASS ZCL_LAB_60_TEST_CALC_896 IMPLEMENTATION.


  METHOD sum_up_test.
    "Given
    DATA(lv_num_1) = 4.
    DATA(lv_num_2) = 5.
    "When
    mo_cut->sum_up( EXPORTING iv_n1 = lv_num_1 iv_n2 = lv_num_2
    IMPORTING ev_result = DATA(lv_result) ).
    "Then
    cl_abap_unit_assert=>assert_equals(
    EXPORTING
    act = lv_result
    exp = 9 ).
  ENDMETHOD.


  METHOD setup.
    mo_cut = NEW #( ).
  ENDMETHOD.


  METHOD teardown.
    CLEAR mo_cut.
  ENDMETHOD.
ENDCLASS.
