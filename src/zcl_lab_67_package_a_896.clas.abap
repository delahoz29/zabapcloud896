CLASS zcl_lab_67_package_a_896 DEFINITION INHERITING FROM zcl_lab_66_travel_896
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS transport_oneway REDEFINITION.
    METHODS day_one REDEFINITION.
    METHODS day_two REDEFINITION.
    METHODS day_three REDEFINITION.
    METHODS transport_return REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_67_PACKAGE_A_896 IMPLEMENTATION.


  METHOD day_one.
    io_out->write( 'Vuelo de salida.' ).
  ENDMETHOD.


  METHOD day_three.
    io_out->write( 'Visita a Monserrate.' ).
  ENDMETHOD.


  METHOD day_two.
    io_out->write( 'Visita al museo del oro.' ).
  ENDMETHOD.


  METHOD transport_oneway.
    io_out->write( 'Visita a Titan Plaza.' ).
  ENDMETHOD.


  METHOD transport_return.
    io_out->write( 'Vuelo de regreso.' ).
  ENDMETHOD.
ENDCLASS.
