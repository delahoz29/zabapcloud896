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

    DATA(lo_cut) = NEW zcl_lab_61_travel_896( ).

    lo_cut->get_travel( IMPORTING es_travel = DATA(ls_travel) ).

    out->write( |{ ls_travel-travel_id }-{ ls_travel-description }| ).

*
*cl_abap_unit_assert=>assert_equals(
*act = perimetro
*exp = 8 "<--- please adapt expected value
*" msg = 'Testing value perimetro'
** level =
*).
*    DATA(lo_business_pr) = NEW zcl_55_business_pr_896(  ).
*
*    lo_business_pr->get_factorial( EXPORTING iv_number = 4
*                                   IMPORTING ev_factorial = DATA(lv_factorial) ).
*    out->write( lv_factorial ).
*    DATA: lo_date_analyzer TYPE REF TO zcl_lab_58_date_analyzer_896.
*    lo_date_analyzer = NEW #( ).
*    TRY.
*        TRY.
*            lo_date_analyzer->analyze_date( ).
*          CATCH zcx_lab_56_no_date_896 INTO DATA(lx_no_date).
*            out->write( 'No se detectó ninguna excepción de fecha.' ).
*            out->write( 'Previous...' ).
*            lo_date_analyzer->analyze_format( io_previous = lx_no_date ).
*        ENDTRY.
*      CATCH zcx_lab_57_format_unknown_896 INTO DATA(lx_format_unknown).
*        out->write( 'Excepción desconocida detectada.' ).
*        out->write( lx_format_unknown->get_text( ) ).
*    ENDTRY.

*    DATA: lo_bank      TYPE REF TO zcl_lab_54_bank_896,
*          lx_excepcion TYPE REF TO cx_root.
*    lo_bank = NEW #( ).
*    out->write( 'Caso 1 - Cuenta no permitida.' ).
*    TRY.
*        lo_bank->transfer( iv_iban = 'IV90 2355 7889 8656' ).
*        out->write( 'Operación realizada exitosamente.' ).
*      CATCH BEFORE UNWIND zcx_lab_55_auth_iban_896 INTO lx_excepcion.
*        IF lx_excepcion->is_resumable EQ abap_true.
*          RESUME.
*        ELSE.
*          out->write( 'Operación no realizada' ).
*        ENDIF.
*    ENDTRY.
*    out->write( 'Caso 2 - Cuenta permitida' ).
*    TRY.
*        lo_bank->transfer( iv_iban = 'CO58 8956 9632 4859' ).
*        out->write( 'Operación completada con éxito.' ).
*      CATCH BEFORE UNWIND zcx_lab_55_auth_iban_896 INTO lx_excepcion.
*        IF lx_excepcion->is_resumable EQ abap_true.
*          RESUME.
*        ELSE.
*          out->write( 'Operación no permitida.' ).
*        ENDIF.
*    ENDTRY.

*    DATA: lv_n1 TYPE i VALUE 10,
*          lv_n2 TYPE i.
*
*    TRY.
*        TRY.
*
*            DATA(lv_result) = lv_n1 / lv_n2. " Division entre 0
*            lv_result = lv_n1 / lv_n2.
*            lv_result = lv_n1 - lv_n2.
*          CATCH zcx_lab_52_operations_896 INTO DATA(lx_operations).
*            out->write( lx_operations->get_text( ) ).
*          CATCH cx_a4c_bc_exception.
*          CLEANUP INTO DATA(lx_cleanup1).
*            out->write( |Cleanup 1....Result: { lv_result }| ).
*            out->write( lx_cleanup1->get_text( ) ).
*        ENDTRY.
*      CATCH cx_sy_zerodivide INTO DATA(lx_zerodivide).
*        out->write( lx_zerodivide->get_text( ) ).
*        lv_n2 = 4.
*        RETRY.
*      CLEANUP INTO DATA(lx_cleanup2).
*        out->write( |Cleanup 2....| ).
*        out->write( lx_cleanup2->get_text( ) ).
*    ENDTRY.
*    out->write( |FINISH: { lv_result }| ).
*    DATA(lo_chek_user) = NEW zcl_lab_53_check_896( ).
*    TRY.
*        lo_chek_user->check_user( iv_user = sy-uname ).
*      CATCH zcx_lab_52_operations_896 INTO DATA(lx_operations).
*        out->write( lx_operations->get_text( ) ).
*    ENDTRY.

*    DATA(lo_administr_dep_1) = NEW zcl_lab_48_admin_dep_896( 'Empleado 1' ).
*    DATA(lo_administr_dep_2) = NEW zcl_lab_48_admin_dep_896( 'Empleado 2' ).
*    DATA(lo_administr_dep_3) = NEW zcl_lab_48_admin_dep_896( 'Empleado 3' ).
*
*    DATA(lo_employee) = NEW zcl_lab_49_employee_896( ).
*
*    SET HANDLER lo_employee->on_payroll_paid FOR ALL INSTANCES.
*
*    lo_administr_dep_1->notify_employee( ).
*    out->write( lo_employee->log ).
*
*    lo_administr_dep_2->notify_employee( ).
*    out->write( lo_employee->log ).
*
*    lo_administr_dep_3->notify_employee( ).
*    out->write( lo_employee->log ).

*    SET HANDLER zcl_lab_47_customer_service896=>on_new_call.
*
*    zcl_lab_46_mobile_operator_896=>assign_call( ).
*
*    out->write( zcl_lab_47_customer_service896=>log ).

*    DATA(lo_operating_system) = NEW zcl_lab_44_operating_system896( ).
*
*    DATA(lo_chrome) = NEW zcl_lab_45_chrome_896( ).
*
*    SET HANDLER lo_chrome->on_close_window FOR lo_operating_system.
*
*    lo_operating_system->mouse_movement( ).
*
*    out->write( |{ lo_operating_system->log }-{ lo_chrome->log }| ).
*
*    SET HANDLER lo_chrome->on_close_window FOR lo_operating_system ACTIVATION abap_false.
*
*    CLEAR: lo_operating_system->log, lo_chrome->log.
*
*    out->write( 'Nueva llamada al método que lanza el evento' ).
*
*    lo_operating_system->mouse_movement( ).
*
*    out->write( |{ lo_operating_system->log }-{ lo_chrome->log }| ).
*    DATA(lo_screen) = NEW zcl_lab_42_screen_896( 'IVANSINHO' ).
*
*    DATA(lo_navigation) = NEW zcl_lab_43_navigation_896( ).
*
*    SET HANDLER lo_navigation->on_touch_screen FOR lo_screen.
*
*    lo_screen->element_selected( ).
*
*    out->write( lo_navigation->log ).

*    DATA: lo_object       TYPE REF TO object,
*          lv_method       TYPE string,
*          lv_headquarters TYPE string.
*
*    lo_object = NEW zcl_lab_41_organization_896( ).
*
*    lv_method = 'SET_HEADQUARTERS'.
*
*    CALL METHOD lo_object->(lv_method) EXPORTING iv_headquarters = 'Colombia'.
*
*    lv_method = 'GET_HEADQUARTERS'.
*
*    CALL METHOD lo_object->(lv_method)
*      RECEIVING
*        rv_headquarters = lv_headquarters.
*
*    out->write( lv_headquarters ).

*    DATA lo_budget TYPE REF TO zcl_lab_39_budget_896.
*
*    lo_budget = NEW zcl_lab_40_actual_budget_896( ).
*
*    out->write( lo_budget->get_budget( ) ).

*    DATA: lo_price_1 TYPE REF TO zcl_lab_38_prod_price_896,
*          lo_price_2 TYPE REF TO zcl_lab_38_prod_price_896.
*
*    lo_price_1 = NEW #( ).
*
*    lo_price_2 = lo_price_1.
*
*    lo_price_2->price = 35.
*
*    out->write( lo_price_1->price ).

*    DATA(lo_screen) = NEW zcl_lab_37_screen_896( ).
*
*    lo_screen->set_screen_type( 'IVANSINHO' ).
*
*    DATA(lo_phone) = NEW zcl_lab_36_phone_896( lo_screen ).
*
*    out->write( lo_phone->get_screen( )->get_screen_type( ) ).

*    DATA(lo_student) = NEW zcl_lab_34_student_896( ).
*    DATA(lo_college) = NEW zcl_lab_35_college_896( ).
*
*    lo_student->set_name( 'Iván De la hoz' ).
*
*    lo_college->enroll_student( lo_student ).
*
*    lo_college->mo_student->get_name( IMPORTING ev_name = DATA(lv_student_name) ).
*
*    out->write( lv_student_name ).

*    DATA: lt_employees            TYPE STANDARD TABLE OF REF TO zif_lab_04_employee_896,
*          lo_employee             TYPE REF TO zif_lab_04_employee_896,
*          lo_internal_employees   TYPE REF TO zcl_lab_32_internal_empl_896,
*          lo_expatriate_employees TYPE REF TO zcl_lab_33_expatriate_empl_896.
*
*    lo_internal_employees = NEW #( ).
*
*    APPEND lo_internal_employees TO lt_employees.
*
*    lo_expatriate_employees = NEW #( ).
*
*    APPEND lo_expatriate_employees TO lt_employees.
*
*    LOOP AT lt_employees INTO lo_employee.
*      out->write( lo_employee->get_employees_count( ) ).
*    ENDLOOP.

*    DATA: lt_organizations TYPE STANDARD TABLE OF REF TO zcl_lab_29_organization_896,
*          lo_organization  TYPE REF TO zcl_lab_29_organization_896,
*          lo_org_germany   TYPE REF TO zcl_lab_30_org_germany_896,
*          lo_org_france    TYPE REF TO zcl_lab_31_org_france_896.
*
*    lo_org_germany = NEW #( ).
*
*    APPEND lo_org_germany TO lt_organizations.
*
*    lo_org_france = NEW #( ).
*
*    APPEND lo_org_france TO lt_organizations.
*
*    LOOP AT lt_organizations INTO lo_organization.
*      out->write( lo_organization->get_location( ) ).
*    ENDLOOP.


*  DATA(lo_screen) = NEW zcl_15_screen_896( 22 ).
*
*  out->write( lo_screen->zif_02_eu_unit_896~dimensions_centimeters(  ) ).
*  out->write( lo_screen->zif_03_en_unit_896~dimensions_inches(  ) ).
*
*DATA(lo_agency) = NEW zcl_14_travel_agency_896(  ).
*
*lo_agency->zif_01_agency_896~set_name( 'Gate2Fly.com' ).
*
*out->write( lo_agency->zif_01_agency_896~get_name(  ) ).

*    DATA: lo_contract TYPE REF TO zcl_02_contract_896.
*
*    CREATE OBJECT lo_contract.
*
*    lo_contract = NEW #(  ).
*
*    DATA(lo_contract2) = NEW zcl_02_contract_896(  ).
*
*    DATA lv_process TYPE string.
*
*    DATA: lt_adress TYPE zcl_02_contract_896=>tty_adress,
*          ls_adress TYPE zcl_02_contract_896=>ty_adress.
*
*
*
*    IF lo_contract IS BOUND.
*
*      lo_contract->set_client(
*        EXPORTING
*          iv_client   = 'Iván De la hoz'
*         " iv_location = space
*        IMPORTING
*          ev_status   = DATA(lv_status)
*        CHANGING
*          cv_process  = lv_process
*      ).
*
*      lo_contract->get_client(
*        IMPORTING
*          ev_client = DATA(lv_client)
*      ).
*
*    ENDIF.
*
*    zcl_02_contract_896=>set_cntr_type( iv_cntr_type = 'Construction' ).
*
*    zcl_02_contract_896=>get_cntr_type(
*      IMPORTING
*        ev_cntr_type = DATA(lv_cntr_type)
*    ).
*
*    DATA(lv_client_name) = lo_contract->get_client_name(
*       EXPORTING
*         iv_client_id = '02'
*
*     ).
*
*    zcl_02_contract_896=>currency = zcl_02_contract_896=>cs_currency-eur .
*
*    zcl_02_contract_896=>company = 'Coca Cola'.
*
*    out->write( zcl_02_contract_896=>currency ).
*    out->write( lv_client_name ).
*    out->write( lv_cntr_type ).
*    out->write(  zcl_02_contract_896=>company ).
*
*    out->write( | Client: { lv_client } Status: { lv_status } Changed: { lv_process } | ).
*
*    data(lo_employee) = new zcl_03_employees_986( iv_employee_id = '09' ).
*
*    out->write( | Employee: { lo_employee->get_employee(  ) } | ).
*    out->write( | Company: { zcl_03_employees_986=>company } | ).
*    out->write( | Log: { zcl_03_employees_986=>log } | ).

*data(lo_constructor) = new zcl_lab_10_constructor_986(  ).
* out->write( | Log: { zcl_lab_10_constructor_986=>log } | ).

*    DATA(lo_company) = NEW zcl_04_company_986( iv_quotation = 'Q1' ).
*    DATA(lo_plan) = NEW zcl_05_plan_986( iv_quotation = 'Q1' iv_product = 'PA' ).
*    DATA(lo_storage) = NEW zcl_06_storage_986( iv_quotation = 'Q1' iv_product = 'PB' ).
*
*    lo_company->set_company_code( '1234' ).
*    lo_company->set_currency( 'USD' ).
*
*    lo_company->get_company_code( IMPORTING ev_company_code = DATA(lv_company_code) ).
*    lo_company->get_currency( IMPORTING ev_currency = DATA(lv_currency) ).
*
*    out->write( | Company_Code: { lv_company_code } | ).
*    out->write( | Currency: { lv_currency } | ).
*
*
*    lo_plan->set_company_code( '5678' ).
*    lo_plan->set_currency( 'EUR' ).
*
*    lo_plan->get_company_code( IMPORTING ev_company_code = DATA(lv_company_code2) ).
*    lo_plan->get_currency( IMPORTING ev_currency = DATA(lv_currency2) ).
*
*    out->write( | Company_Code2: { lv_company_code2 } | ).
*    out->write( | Currency2: { lv_currency2 } | ).
*
*
*    lo_storage->set_company_code( '11111' ).
*    lo_storage->set_currency( 'COP' ).
*
*    lo_storage->get_company_code( IMPORTING ev_company_code = DATA(lv_company_code3) ).
*    lo_storage->get_currency( IMPORTING ev_currency = DATA(lv_currency3) ).
*
*    out->write( | Company_Code3: { lv_company_code3 } | ).
*    out->write( | Currency3: { lv_currency3 } | ).
*
*    out->write( | Narowing Casting: | ).
*    lo_company = lo_plan.
*    lo_plan->get_company_code( IMPORTING ev_company_code = DATA(lv_company_code4) ).
*    lo_plan->get_currency( IMPORTING ev_currency = DATA(lv_currency4) ).
*
*    out->write( | Company_Code4: { lv_company_code4 } | ).
*    out->write( | Currency4: { lv_currency4 } | ).
*
*    out->write( | Widening Cast: | ).
*
*    TRY.
*        lo_plan ?= lo_company.
*      CATCH cx_sy_move_cast_error.
*      out->write( | Casting Error! | ).
*    ENDTRY.
*
*    lo_plan->get_company_code( IMPORTING ev_company_code = DATA(lv_company_code5) ).
*    lo_plan->get_currency( IMPORTING ev_currency = DATA(lv_currency5) ).
*
*    out->write( | Company_Code5: { lv_company_code5 } | ).
*    out->write( | Currency5: { lv_currency5 } | ).
  ENDMETHOD.

ENDCLASS.
