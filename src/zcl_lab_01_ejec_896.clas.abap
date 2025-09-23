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

* Punto 5 del laboratorio 1.
    DATA(lo_person) = NEW zcl_lab_04_person_986( ).
    lo_person->set_age( EXPORTING iv_age = 34 ).

    lo_person->get_age(
      IMPORTING
        ev_age = DATA(lv_age)
    ).
    out->write( |Punto 5:| ).
    out->write( |Person age:{ lv_age } | ).

* Punto 6 del laboratorio 1.
    DATA(lo_vuelo) = NEW zcl_lab_05_flight_986(  ).
    DATA: lv_longitud TYPE i VALUE 0.

    DATA(ls_vuelo) =
      lo_vuelo->valida_vuelo( EXPORTING
      iv_aerolinea = 'AA'
      iv_conexion = '0017' ).

    out->write( |Punto 6:| ).

    IF ls_vuelo eq abap_true.
      out->write( |Validación de vuelo: Verdadero| ).
    ELSEIF
        out->write( |Validación de vuelo: Falso| ).
    ENDIF.

* Punto 7 del laboratorio 1.

    DATA: ls_object TYPE zcl_lab_06_elements_986=>ty_elem_objects.

    DATA(lo_objetos) = NEW zcl_lab_06_elements_986( ).
    lo_objetos->set_object(
      iv_class     = '1'
      iv_instance  = '2'
      iv_reference = '3'
    ).

    ls_object = lo_objetos->ms_object.
    out->write( |Punto 7:| ).
    out->write( ls_object ).

* Punto 8 del laboratorio 1.
    out->write( |Punto 8:| ).
    out->write( zcl_lab_06_elements_986=>cs_valores-c_uno ).
    out->write( zcl_lab_06_elements_986=>cs_valores-c_dos ).
    out->write( zcl_lab_06_elements_986=>cs_valores-c_tres ).
    out->write( zcl_lab_06_elements_986=>cs_valores-c_cuatro ).

* Punto 9 del laboratorio 1.
    out->write( |Punto 9:| ).
    DATA(lo_student) = NEW zcl_lab_07_student_986( ).
    lo_student->set_birth_date(  ).
    out->write( lo_student->birth_date ).

* Punto 10 del laboratorio 1.
    out->write( |Punto 10:| ).
    zcl_lab_08_work_record_986=>open_new_record(
    iv_date       = '20250923'
    iv_firts_name = 'Ivan'
    iv_last_name  = 'De la hoz'
    iv_surname    = 'idelahoz'
  ).


* Punto 11 del laboratorio 1.
    out->write( |Punto 11:| ).
    DATA(lo_cuenta) = NEW zcl_lab_09_account_986( ).
    lo_cuenta->set_iban(  '29'  ).
    lo_cuenta->get_iban( IMPORTING iban = DATA(lv_iban) ).
    out->write( lv_iban ).


  ENDMETHOD.

ENDCLASS.
