CLASS zcl_employee_896 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_EMPLOYEE_896 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    MODIFY zemployee_896 FROM TABLE @( VALUE #( ( employee = '100001'
                                                  manager = ''
                                                  name = 'Name 1' )
                                                  ( employee = '100002'
                                                  manager = '100001'
                                                  name = 'Name 2' )
                                                  ( employee = '100003'
                                                  manager = '100001'
                                                  name = 'Name 3' )
                                                  ( employee = '100004'
                                                  manager = '100002'
                                                  name = 'Name 4' )
                                                  ( employee = '100005'
                                                  manager = '100001'
                                                  name = 'Name 5' )
                                                   ) ).
  ENDMETHOD.
ENDCLASS.
