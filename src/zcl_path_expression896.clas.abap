CLASS zcl_path_expression896 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_PATH_EXPRESSION896 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    data lt_abstract type table of ZI_CDS_20_896.



    SELECT FROM zi_cds_18_896 AS Booking
    FIELDS Booking~TravelId,
    Booking~BookingId,
    \_Travel-AgencyId,
    \_Travel\_Agency-name AS AgencyName,
    \_Travel\_Customer-customer_id,
    concat_with_space(  \_Travel\_Customer-first_name,\_travel\_Customer-last_name, 1 ) AS CustomerName
   WHERE BookinG~CarrierId EQ 'AA'
   INTO TABLE @DATA(lt_result)
   UP TO 5 ROWS.

    IF  sy-subrc EQ 0.
      out->write( lt_result ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.
