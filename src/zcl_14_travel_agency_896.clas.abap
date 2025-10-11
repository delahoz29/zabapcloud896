CLASS zcl_14_travel_agency_896 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_01_agency_896 .

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA agency_type TYPE string.

    CLASS-DATA agency_address TYPE string.

ENDCLASS.



CLASS zcl_14_travel_agency_896 IMPLEMENTATION.


  METHOD zif_01_agency_896~get_name.
    rv_name = agency_type.
  ENDMETHOD.


  METHOD zif_01_agency_896~set_address.
  agency_address = iv_address.
  ENDMETHOD.


  METHOD zif_01_agency_896~set_name.
  me->agency_address = iv_name.
  ENDMETHOD.
ENDCLASS.
