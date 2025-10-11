CLASS zcl_lab_45_chrome_896 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS on_close_window FOR EVENT close_window OF zif_lab_05_browser_896.
    DATA log TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_45_chrome_896 IMPLEMENTATION.
  METHOD on_close_window.
    me->log = 'La pantalla fue cerrada.'.
  ENDMETHOD.

ENDCLASS.
