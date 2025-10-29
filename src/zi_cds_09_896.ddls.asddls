@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Joins'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_cds_09_896
  as select from /dmo/travel  as a
    inner join   /dmo/booking as b on b.travel_id = a.travel_id
{
  key a.travel_id     as TravelId,
  key b.travel_id     as BookingId,
      a.agency_id     as AgencyId,
      a.customer_id   as CustomerId,
      a.begin_date    as BeginDate,
      a.end_date      as EndDate,
      a.currency_code as CurrencyCode,
      a.description   as Description,
      a.status        as Status,
      a.createdby     as Createdby,
      a.createdat     as Createdat,
      a.lastchangedby as Lastchangedby,
      a.lastchangedat as Lastchangedat,
      b.booking_date  as BookingDate,
      b.carrier_id    as CarrierId,
      b.connection_id as ConnectionId,
      b.flight_date   as FlightDate
}
