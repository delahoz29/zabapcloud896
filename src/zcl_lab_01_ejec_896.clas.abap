CLASS zcl_lab_01_ejec_896 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_01_ejec_896 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

* Punto 2 de la entrega 4 del laboratorio 1.

data(lo_flight) = new zcl_lab_26_flights_896(  ).

lo_flight->zif_lab_01_flight_896~set_conn_id( 'Ivan De la hoz' ).
out->write( lo_flight->zif_lab_01_flight_896~get_conn_id(  ) ).

* Punto 3 de la entrega 4 del laboratorio 1.

out->write( lo_flight->zif_lab_02_customer_896~get_costumer( '2' ) ).

* Punto 4 de la entrega 4 del laboratorio 1.
out->write( lo_flight->zif_lab_03_airports_896~get_airports( 'FRA' ) ).


* Punto 6 de la entrega 4 del laboratorio 1.

data(lo_logistica) = new zcl_lab_28_logistics_896(  ).
out->write( lo_logistica->input_products(  ) ).
out->write( lo_logistica->merchandise_output(  ) ).
out->write( lo_logistica->production_line(  ) ).



** Punto 1 de la entrega 3 del laboratorio 1
*
*    DATA(lo_linux) = NEW zcl_lab_12_linux_896(  ).
*
*    lo_linux->get_architecture( IMPORTING ev_valor_arch = DATA(lv_valor) ).
*
*    out->write( lv_valor ).
*
** Punto 2 de la entrega 3 del laboratorio 1
*
*    DATA(lv_grid) = NEW zcl_lab_14_grid_896(
*      iv_view_type = 'View 1'
*      iv_box       = 'Box 1'
*    ).
*
** Punto 3 de la entrega 3 del laboratorio 1.
*
*    DATA(go_precio) = NEW zcl_lab_15_flight_price_896(  ).
*    DATA(go_descuento10) = NEW zcl_lab_16_price_discount_896(  ).
*    DATA(go_descuento20) = NEW zcl_lab_17_super_discount_896(  ).
*
*    SELECT SINGLE FROM /dmo/flight AS a
*     FIELDS *
*     WHERE a~carrier_id EQ 'AA'
*     AND connection_id EQ '0017'
*     INTO @DATA(gs_flight).
*
*    go_precio->add_price( is_flight = gs_flight ).
*    out->write( |Precio normal: { go_precio->mt_flights[ 1 ]-price }| ).
*
*    go_descuento10->add_price( is_flight = gs_flight ).
*    out->write( |Precio con el 10% de descuento: { go_descuento10->mt_flights[ 1 ]-price }| ).
*
*    go_descuento20->add_price( is_flight = gs_flight ).
*    out->write( |Precio con el 20% de descuento: { go_descuento20->mt_flights[ 1 ]-price }| ).
*
** Punto 4 de la entrega 3 del laboratorio 1.
*
*    DATA go_animal TYPE REF TO zcl_lab_18_animal_896.
*    DATA(go_lion) = NEW zcl_lab_19_lion_896( ).
*    go_animal = go_lion.
*    out->write( go_animal->walks( ) ).
*
*
** Punto 5 de la entrega 3 del laboratorio 1.
*
*    DATA: go_lion2 TYPE REF TO zcl_lab_19_lion_896.
*
*
*          go_lion = NEW #(  ).
*
*          go_animal = go_lion.
*
*          TRY.
*            go_lion2 ?= go_animal.
*          CATCH cx_sy_move_cast_error.
*          ENDTRY.
*
*          IF go_lion2 IS BOUND.
*          out->write( go_lion2->walks(  ) ).
*          ENDIF.
*
**  Punto 8 de la entrega 3 del laboratorio 1.
*  data(lo_class) = new zcl_lab_21_classroom_896(  ).
*
** Punto 9 de la entrega 3 del laboratorio 1.
*
*    DATA(lo_class2) = NEW zcl_lab_24_partner_896(  ).
*    out->write( lo_class2->get_company_capital(  ) ).
*
** Punto 10 de la entrega 3 del laboratorio 1.
*
*    DATA(lo_class3) = NEW zcl_lab_25_collaborator_896(  ).
*    out->write( lo_class3->get_capital(  ) ).


** Punto 5 del laboratorio 1.
*    DATA(lo_person) = NEW zcl_lab_04_person_896( ).
*    lo_person->set_age( EXPORTING iv_age = 34 ).
*
*    lo_person->get_age(
*      IMPORTING
*        ev_age = DATA(lv_age)
*    ).
*    out->write( |Punto 5:| ).
*    out->write( |Person age:{ lv_age } | ).
*
** Punto 6 del laboratorio 1.
*    DATA(lo_vuelo) = NEW zcl_lab_05_flight_896(  ).
*    DATA: lv_longitud TYPE i VALUE 0.
*
*    DATA(ls_vuelo) =
*      lo_vuelo->valida_vuelo( EXPORTING
*      iv_aerolinea = 'AA'
*      iv_conexion = '0017' ).
*
*    out->write( |Punto 6:| ).
*
*    IF ls_vuelo eq abap_true.
*      out->write( |Validación de vuelo: Verdadero| ).
*    ELSEIF
*        out->write( |Validación de vuelo: Falso| ).
*    ENDIF.
*
** Punto 7 del laboratorio 1.
*
*    DATA: ls_object TYPE zcl_lab_06_elements_896=>ty_elem_objects.
*
*    DATA(lo_objetos) = NEW zcl_lab_06_elements_896( ).
*    lo_objetos->set_object(
*      iv_class     = '1'
*      iv_instance  = '2'
*      iv_reference = '3'
*    ).
*
*    ls_object = lo_objetos->ms_object.
*    out->write( |Punto 7:| ).
*    out->write( ls_object ).
*
** Punto 8 del laboratorio 1.
*    out->write( |Punto 8:| ).
*    out->write( zcl_lab_06_elements_896=>cs_valores-c_uno ).
*    out->write( zcl_lab_06_elements_896=>cs_valores-c_dos ).
*    out->write( zcl_lab_06_elements_896=>cs_valores-c_tres ).
*    out->write( zcl_lab_06_elements_896=>cs_valores-c_cuatro ).
*
** Punto 9 del laboratorio 1.
*    out->write( |Punto 9:| ).
*    DATA(lo_student) = NEW zcl_lab_07_student_896( ).
*    lo_student->set_birth_date(  ).
*    out->write( lo_student->birth_date ).
*
** Punto 10 del laboratorio 1.
*    out->write( |Punto 10:| ).
*    zcl_lab_08_work_record_896=>open_new_record(
*    iv_date       = '20250923'
*    iv_firts_name = 'Ivan'
*    iv_last_name  = 'De la hoz'
*    iv_surname    = 'idelahoz'
*  ).
*
*
** Punto 11 del laboratorio 1.
*    out->write( |Punto 11:| ).
*    DATA(lo_cuenta) = NEW zcl_lab_09_account_896( ).
*    lo_cuenta->set_iban(  '29'  ).
*    lo_cuenta->get_iban( IMPORTING iban = DATA(lv_iban) ).
*    out->write( lv_iban ).


  ENDMETHOD.

ENDCLASS.
