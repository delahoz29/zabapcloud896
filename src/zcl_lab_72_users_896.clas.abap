CLASS zcl_lab_72_users_896 DEFINITION INHERITING FROM zcl_lab_70_observer_896
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA mv_notificacion TYPE string.
    METHODS on_nuevo_articulo  REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_72_USERS_896 IMPLEMENTATION.


  METHOD on_nuevo_articulo.
    me->mv_notificacion = |Notificación de usuario. Chequea el nuevo articulo..... { ev_titulo }|.
  ENDMETHOD.
ENDCLASS.
