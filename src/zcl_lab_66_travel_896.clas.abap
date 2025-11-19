CLASS zcl_lab_66_travel_896 DEFINITION ABSTRACT
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS travel FINAL
      IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out.
    METHODS transport_oneway ABSTRACT
      IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out.
    METHODS day_one ABSTRACT
      IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out.
    METHODS day_two ABSTRACT
      IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out.
    METHODS day_three ABSTRACT
      IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out.
    METHODS transport_return ABSTRACT
      IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_66_TRAVEL_896 IMPLEMENTATION.


  METHOD travel.
    me->transport_oneway( io_out ).
    me->day_one( io_out ).
    me->day_two( io_out ).
    me->day_three( io_out ).
    me->transport_return( io_out ).
  ENDMETHOD.
ENDCLASS.
