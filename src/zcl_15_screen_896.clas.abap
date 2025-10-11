CLASS zcl_15_screen_896 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES: zif_02_eu_unit_896,
      zif_03_en_unit_896.

    METHODS constructor IMPORTING iv_en_unit TYPE zfloat.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA en_unit TYPE zfloat.

ENDCLASS.



CLASS zcl_15_screen_896 IMPLEMENTATION.
  METHOD zif_02_eu_unit_896~dimensions_centimeters.
    rv_unit = en_unit * '2.54'.
  ENDMETHOD.

  METHOD zif_03_en_unit_896~dimensions_inches.
    rv_unit = en_unit.
  ENDMETHOD.

  METHOD constructor.
    en_unit = iv_en_unit.
  ENDMETHOD.

ENDCLASS.
