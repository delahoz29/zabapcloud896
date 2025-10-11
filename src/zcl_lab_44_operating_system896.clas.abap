CLASS zcl_lab_44_operating_system896 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_lab_05_browser_896.
    METHODS mouse_movement.
    DATA log TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_44_operating_system896 IMPLEMENTATION.
  METHOD mouse_movement.
    RAISE EVENT zif_lab_05_browser_896~close_window.
    me->log = |Evento raised.....|.
  ENDMETHOD.

ENDCLASS.
