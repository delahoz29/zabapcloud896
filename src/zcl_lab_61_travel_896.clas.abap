CLASS zcl_lab_61_travel_896 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS get_travel EXPORTING es_travel TYPE /dmo/travel.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_61_TRAVEL_896 IMPLEMENTATION.


  METHOD get_travel.

    DATA: ls_travel    TYPE /dmo/travel,
          lv_travel_id TYPE /dmo/travel_id.
    lv_travel_id = '00000028'.

    SELECT SINGLE FROM /dmo/travel
    FIELDS *
    WHERE travel_id EQ @lv_travel_id
    INTO @es_travel.

    TEST-SEAM select_data.

      SELECT SINGLE FROM /dmo/travel
      FIELDS *
      WHERE travel_id EQ @lv_travel_id
      INTO @ls_travel.

    END-TEST-SEAM.

    IF lv_travel_id EQ '00000028'.
      es_travel = CORRESPONDING #( ls_travel ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
