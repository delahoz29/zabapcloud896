@EndUserText.label: 'Table Function'
define table function ZI_tf_01_896
  //with parameters parameter_name : parameter_type
returns
{
  key client_element_name : abap.clnt;
  key TraveId             : /dmo/travel_id;
  key booking_id          : /dmo/booking_id;
  key customer_id         : /dmo/customer_id;
      first_name          : /dmo/first_name;
      last_name           : /dmo/last_name;
      booking_date        : /dmo/booking_date;
      carrier_id          : /dmo/carrier_id;
      connection_id       : /dmo/connection_id;
      flight_date         : /dmo/flight_date;
      @Semantics.amount.currencyCode: 'Currency_code'
      flight_price        : /dmo/flight_price;
      currency_code       : /dmo/currency_code;
}
implemented by method
  zcl_amdp_tf_896=>get_cust_bookings;