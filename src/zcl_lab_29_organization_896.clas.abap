CLASS zcl_lab_29_organization_896 DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   METHODS get_location RETURNING VALUE(rv_location) type string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_29_organization_896 IMPLEMENTATION.
  METHOD get_location.
    rv_location = 'Main Location - Organization'.
  ENDMETHOD.

ENDCLASS.
