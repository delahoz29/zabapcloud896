CLASS zcl_01_exec_896 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_exec_896 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA: lo_contract TYPE REF TO zcl_02_contract_896.

    CREATE OBJECT lo_contract.

    lo_contract = NEW #(  ).

    DATA(lo_contract2) = NEW zcl_02_contract_896(  ).

    DATA lv_process TYPE string.

    DATA: lt_adress TYPE zcl_02_contract_896=>tty_adress,
          ls_adress TYPE zcl_02_contract_896=>ty_adress.



    IF lo_contract IS BOUND.

      lo_contract->set_client(
        EXPORTING
          iv_client   = 'Iván De la hoz'
         " iv_location = space
        IMPORTING
          ev_status   = DATA(lv_status)
        CHANGING
          cv_process  = lv_process
      ).

      lo_contract->get_client(
        IMPORTING
          ev_client = DATA(lv_client)
      ).

    ENDIF.

    zcl_02_contract_896=>set_cntr_type( iv_cntr_type = 'Construction' ).

    zcl_02_contract_896=>get_cntr_type(
      IMPORTING
        ev_cntr_type = DATA(lv_cntr_type)
    ).

    DATA(lv_client_name) = lo_contract->get_client_name(
       EXPORTING
         iv_client_id = '02'

     ).

    zcl_02_contract_896=>currency = zcl_02_contract_896=>cs_currency-eur .

    zcl_02_contract_896=>company = 'Coca Cola'.

    out->write( zcl_02_contract_896=>currency ).
    out->write( lv_client_name ).
    out->write( lv_cntr_type ).
    out->write(  zcl_02_contract_896=>company ).

    out->write( | Client: { lv_client } Status: { lv_status } Changed: { lv_process } | ).

  ENDMETHOD.

ENDCLASS.
