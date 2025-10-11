CLASS zcl_lab_27_factory_896 DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS merchandise_output RETURNING VALUE(rv_merchandise) TYPE string.
    METHODS production_line RETURNING VALUE(rv_production) TYPE string.
    METHODS input_products RETURNING VALUE(rv_input) TYPE string.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_27_factory_896 IMPLEMENTATION.
  METHOD input_products.
*    rv_input = 'input_products'.
  ENDMETHOD.

  METHOD merchandise_output.
    rv_merchandise =  'merchandise'.
  ENDMETHOD.

  METHOD production_line.
*    rv_production = 'production_line'.
  ENDMETHOD.

ENDCLASS.
