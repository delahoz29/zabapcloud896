CLASS zcl_05_plan_896 DEFINITION INHERITING FROM zcl_04_company_896
  PUBLIC

  CREATE PUBLIC
  GLOBAL FRIENDS zcl_04_company_896.

  PUBLIC SECTION.

    METHODS constructor IMPORTING iv_quotation TYPE string
                                  iv_product   TYPE string.

    METHODS: set_company_code REDEFINITION.

    DATA product TYPE string.

    DATA company_atr TYPE string.
  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_05_plan_896 IMPLEMENTATION.
  METHOD constructor.

    super->constructor( iv_quotation = quotation ).
    product = iv_product.
  ENDMETHOD.

  METHOD set_company_code.

    me->company_code = 'ABCD'.
    super->set_company_code( iv_company_code = iv_company_code ).
  ENDMETHOD.

ENDCLASS.
