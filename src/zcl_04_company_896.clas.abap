CLASS zcl_04_company_896 DEFINITION
  PUBLIC

  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: set_company_code IMPORTING iv_company_code TYPE string,
      get_company_code EXPORTING ev_company_code TYPE string,
      set_currency IMPORTING iv_currency TYPE string,
      get_currency EXPORTING ev_currency TYPE string.

    METHODS constructor IMPORTING iv_quotation TYPE string.
    DATA quotation TYPE string READ-ONLY.



  PROTECTED SECTION.
    DATA: company_code TYPE c LENGTH 4,
          currency     TYPE c LENGTH 3.

  PRIVATE SECTION.

    DATA company_atr TYPE string.
ENDCLASS.



CLASS zcl_04_company_896 IMPLEMENTATION.
  METHOD set_company_code.
    company_code = iv_company_code.
  ENDMETHOD.

  METHOD get_company_code.
    ev_company_code = company_code.
  ENDMETHOD.

  METHOD get_currency.
    ev_currency = currency.
  ENDMETHOD.

  METHOD set_currency.
    currency = iv_currency.
  ENDMETHOD.

  METHOD constructor.
    quotation = iv_quotation.
  ENDMETHOD.

ENDCLASS.
