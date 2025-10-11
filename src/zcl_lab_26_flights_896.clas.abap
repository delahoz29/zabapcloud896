CLASS zcl_lab_26_flights_896 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_lab_01_flight_896.
    INTERFACES zif_lab_02_customer_896.
    INTERFACES zif_lab_03_airports_896.

    ALIASES set_conn_id FOR zif_lab_01_flight_896~set_conn_id.
    ALIASES get_conn_id FOR zif_lab_01_flight_896~get_conn_id.
    ALIASES get_custumer FOR zif_lab_02_customer_896~get_costumer.
    ALIASES get_airport FOR zif_lab_03_airports_896~get_airports.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_26_flights_896 IMPLEMENTATION.
  METHOD zif_lab_01_flight_896~get_conn_id.
    rv_conn_id = me->zif_lab_01_flight_896~conn_id.
  ENDMETHOD.

  METHOD zif_lab_01_flight_896~set_conn_id.
    me->zif_lab_01_flight_896~conn_id = iv_conn_id.
  ENDMETHOD.

  METHOD zif_lab_02_customer_896~get_costumer.
    SELECT SINGLE
    FROM /dmo/customer
    FIELDS first_name , last_name
    WHERE customer_id EQ @iv_customer_id
    INTO @rv_customer_id.

  ENDMETHOD.

  METHOD zif_lab_03_airports_896~get_airports.
    SELECT SINGLE
    FROM /dmo/airport
    FIELDS *
    WHERE airport_id EQ @iv_airport_id
    INTO @rs_airport.

  ENDMETHOD.

ENDCLASS.
