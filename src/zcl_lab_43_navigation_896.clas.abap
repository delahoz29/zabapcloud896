CLASS zcl_lab_43_navigation_896 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS on_touch_screen FOR EVENT touch_screen OF zcl_lab_42_screen_896 IMPORTING ev_horizontal ev_vertical sender.

    DATA log TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_43_navigation_896 IMPLEMENTATION.
  METHOD on_touch_screen.
    me->log = |La pantalla { sender->screen_type } fue tocada en la posición: { ev_horizontal }-{ ev_vertical }|.
  ENDMETHOD.

ENDCLASS.
