CLASS zcl_lab_24_partner_896 DEFINITION
  PUBLIC

  CREATE PUBLIC
  GLOBAL FRIENDS zcl_lab_23_company_896.

  PUBLIC SECTION.
    METHODS get_company_capital RETURNING VALUE(re_capital) TYPE i.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_24_partner_896 IMPLEMENTATION.
  METHOD get_company_capital.
    DATA(lo_company) = NEW zcl_lab_23_company_896(  ).
    re_capital = lo_company->capital.

  ENDMETHOD.

ENDCLASS.
