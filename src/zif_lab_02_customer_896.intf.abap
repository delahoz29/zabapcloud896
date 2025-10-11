INTERFACE zif_lab_02_customer_896
  PUBLIC .

  TYPES: BEGIN OF ty_cust_address,
           first_name TYPE string,
           last_name  TYPE string,
         END OF ty_cust_address.

  METHODS get_costumer IMPORTING iv_customer_id        TYPE string
                       RETURNING VALUE(rv_customer_id) TYPE ty_cust_address.


ENDINTERFACE.
