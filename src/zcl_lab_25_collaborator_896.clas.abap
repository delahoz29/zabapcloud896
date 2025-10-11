CLASS zcl_lab_25_collaborator_896 DEFINITION
INHERITING FROM zcl_lab_24_partner_896
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get_capital RETURNING VALUE(rv_capital) TYPE f.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_25_collaborator_896 IMPLEMENTATION.
  METHOD get_capital.
    DATA(lo_company) = NEW zcl_lab_23_company_896( ).
    rv_capital = lo_company->capital.

  ENDMETHOD.

ENDCLASS.
