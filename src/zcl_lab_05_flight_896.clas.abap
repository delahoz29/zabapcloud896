CLASS zcl_lab_05_flight_896 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS valida_vuelo IMPORTING iv_aerolinea     TYPE string
                                   iv_conexion      TYPE i
                         RETURNING VALUE(rv_result) TYPE abap_bool.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_05_flight_896 IMPLEMENTATION.
  METHOD valida_vuelo.

    SELECT SINGLE
    FROM /dmo/flight
    FIELDS *
    WHERE carrier_id EQ @iv_aerolinea
    AND connection_id EQ @iv_conexion
   INTO @DATA(lv_result).

    IF sy-subrc EQ 0.
      rv_result = abap_true.
    ELSE.
      rv_result = abap_false.
    ENDIF.

  ENDMETHOD.

ENDCLASS.
