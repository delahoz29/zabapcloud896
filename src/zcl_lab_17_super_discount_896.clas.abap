CLASS zcl_lab_17_super_discount_896 DEFINITION
INHERITING FROM zcl_lab_15_flight_price_896
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS add_price REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_17_super_discount_896 IMPLEMENTATION.
  METHOD add_price.
     DATA(ls_sflight) = is_flight.
    ls_sflight-price = ls_sflight-price - ( ( ls_sflight-price * 20 ) / 100 ).

    APPEND ls_sflight TO me->mt_flights.
  ENDMETHOD.


ENDCLASS.
