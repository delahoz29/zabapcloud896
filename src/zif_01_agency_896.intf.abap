INTERFACE zif_01_agency_896
  PUBLIC .

  CLASS-DATA agency_address TYPE string.

  METHODS: set_name IMPORTING iv_name TYPE string,
    get_name RETURNING VALUE(rv_name) TYPE string.

  CLASS-METHODS set_address IMPORTING iv_address TYPE string.

ENDINTERFACE.
