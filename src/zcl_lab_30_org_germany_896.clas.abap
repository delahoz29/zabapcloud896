CLASS zcl_lab_30_org_germany_896 DEFINITION INHERITING FROM zcl_lab_29_organization_896
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS get_location REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_30_org_germany_896 IMPLEMENTATION.
  METHOD get_location.
    rv_location = 'Location - Germany'.
  ENDMETHOD.

ENDCLASS.
