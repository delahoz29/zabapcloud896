CLASS zcl_invoice_gen_896 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_INVOICE_GEN_896 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DELETE FROM zusers_896.
    MODIFY zusers_896 FROM TABLE @( VALUE #( ( user_id = cl_abap_context_info=>get_user_technical_name(  )
                                               invoice_id = '1'
                                               first_name = 'First Name 1'
                                               last_name  = 'Last Name 1'
                                               plant      = '1000' )
                                             ( user_id = cl_abap_context_info=>get_user_technical_name(  )
                                               invoice_id = '2'
                                               first_name = 'First Name 1'
                                               last_name  = 'Last Name 1'
                                                plant      = '1000' )
                                             ( user_id = 'CB9980001680'
                                               invoice_id = '3'
                                               first_name = 'First Name 2'
                                               last_name  = 'Last Name 2'
                                                plant      = '1002' )
                                             ( user_id = 'CB9980001681'
                                               invoice_id = '4'
                                               first_name = 'First Name 3'
                                               last_name  = 'Last Name 3'
                                                plant      = '1004' )
                                             ( user_id = 'CB9980001682'
                                               invoice_id = '5'
                                               first_name = 'First Name 4'
                                               last_name  = 'Last Name 4'
                                                plant      = '1001') ) ).
    DELETE FROM zinvoices_896.
    MODIFY zinvoices_896 FROM TABLE @( VALUE #( ( invoice_id  = '1'
                                                  plant      = '1000'
                                                  created_by  = cl_abap_context_info=>get_user_technical_name(  )
                                                  customer = 'Coca-Cola'
                                                  amount = '2000.00'
                                                  currency_key = 'USD'
                                                  )
                                                  ( invoice_id  = '2'
                                                   plant      = '1001'
                                                  created_by  = cl_abap_context_info=>get_user_technical_name(  )
                                                  customer = 'Pepsi'
                                                  amount = '3000.00'
                                                  currency_key = 'USD'
                                                  )
                                                  ( invoice_id  = '3'
                                                   plant      = '1002'
                                                  created_by  = 'CB9980001682'
                                                  customer = 'Nestle'
                                                  amount = '5000.00'
                                                  currency_key = 'USD'
                                                  )
                                                  ( invoice_id  = '4'
                                                   plant      = '1004'
                                                  created_by  = 'CB9980001681'
                                                  customer = 'Pringles'
                                                  amount = '1000.00'
                                                  currency_key = 'USD'
                                                  )
                                                  ( invoice_id  = '1'
                                                   plant      = '1004'
                                                  created_by  = 'CB9980001680'
                                                  customer = 'Milka'
                                                  amount = '4000.00'
                                                  currency_key = 'EUR'
                                                  ) ) )      .
*    out->write( cl_abap_context_info=>get_user_technical_name(  ) ).
  ENDMETHOD.
ENDCLASS.
