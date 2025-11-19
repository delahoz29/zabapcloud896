CLASS zcl_lab_68_package_b_896 DEFINITION  INHERITING FROM zcl_lab_66_travel_896
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



CLASS ZCL_LAB_68_PACKAGE_B_896 IMPLEMENTATION.


  METHOD day_one.
    io_out->write( 'Visita a Maloka.' ).
  ENDMETHOD.


  METHOD day_three.
    io_out->write( 'Visita a jardín botánico.' ).
  ENDMETHOD.


  METHOD day_two.
    io_out->write( 'Visita al parque simon bolivar.' ).
  ENDMETHOD.


  METHOD transport_oneway.
    io_out->write( 'Salida en bus.' ).
  ENDMETHOD.


  METHOD transport_return.
    io_out->write( 'Regreso en bus.' ).
  ENDMETHOD.
ENDCLASS.
