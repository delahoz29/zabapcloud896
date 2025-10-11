CLASS zcl_lab_36_phone_896 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: constructor IMPORTING io_screen TYPE REF TO zcl_lab_37_screen_896,
      get_screen RETURNING VALUE(ro_screen) TYPE REF TO zcl_lab_37_screen_896.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA mo_screen TYPE REF TO zcl_lab_37_screen_896.
ENDCLASS.



CLASS zcl_lab_36_phone_896 IMPLEMENTATION.
  METHOD constructor.
    me->mo_screen = io_screen.
  ENDMETHOD.

  METHOD get_screen.
    ro_screen = me->mo_screen.
  ENDMETHOD.

ENDCLASS.
