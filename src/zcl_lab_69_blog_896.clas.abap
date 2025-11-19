CLASS zcl_lab_69_blog_896 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS publicar_articulo IMPORTING iv_titulo TYPE string.
    METHODS obtener_articulo RETURNING VALUE(rv_titulo) TYPE string.
    EVENTS nuevo_articulo EXPORTING VALUE(ev_titulo) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA mv_titulo_articulo TYPE string.
ENDCLASS.



CLASS ZCL_LAB_69_BLOG_896 IMPLEMENTATION.


  METHOD obtener_articulo.
    rv_titulo = me->mv_titulo_articulo.
  ENDMETHOD.


  METHOD publicar_articulo.
    me->mv_titulo_articulo = iv_titulo.
    RAISE EVENT nuevo_articulo EXPORTING ev_titulo = me->mv_titulo_articulo.
  ENDMETHOD.
ENDCLASS.
