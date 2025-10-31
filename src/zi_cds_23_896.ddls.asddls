@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root Entity'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_CDS_23_896
  as select from /dmo/travel
  composition [0..*] of ZI_CDS_24_896 as _Booking  
  //composition of target_data_source_name as _association_name
  association[1..1] to /DMO/I_Agency as _Agency on _Agency.AgencyID = $projection.AgencyId
  association[1..1] to /DMO/I_Customer as _Customer on _Customer.CustomerID = $projection.CustomerId
{

  key travel_id     as TravelId,
      agency_id     as AgencyId,
      customer_id   as CustomerId,
      begin_date    as BeginDate,
      end_date      as EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      booking_fee   as BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      total_price   as TotalPrice,
      currency_code as CurrencyCode,
      description   as Description,
      status        as Status,
      createdby     as Createdby,
      createdat     as Createdat,
      lastchangedby as Lastchangedby,
      lastchangedat as Lastchangedat,
      _Agency,
      _Customer,
      _Booking
}
