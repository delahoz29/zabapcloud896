INTERFACE zif_lab_03_airports_896
  PUBLIC .
  METHODS get_airports IMPORTING iv_airport_id TYPE string
                       RETURNING VALUE(rs_airport) TYPE /dmo/airport.

ENDINTERFACE.
