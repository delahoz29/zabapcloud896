CLASS zcl_lab_71_administrator_896 DEFINITION INHERITING FROM zcl_lab_70_observer_896
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA mv_notificacion TYPE string.
    METHODS on_nuevo_articulo REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_71_administrator_896 IMPLEMENTATION.

  METHOD on_nuevo_articulo.
    me->mv_notificacion = |Notificacion a administrador: Revisar ertpiculo.....{ ev_titulo }|.
  ENDMETHOD.
ENDCLASS.
