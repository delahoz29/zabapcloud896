@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Association-Nav. With Path Expression II'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_CDS_18_896
  as select from /dmo/booking
  association [1..1] to ZI_CDS_17_896 as _Travel on _Travel.TravelId = $projection.TravelId
{
  key /dmo/booking.travel_id     as TravelId,
  key /dmo/booking.booking_id    as BookingId,
      /dmo/booking.booking_date  as BookingDate,
      /dmo/booking.customer_id   as CustomerId,
      /dmo/booking.carrier_id    as CarrierId,
      /dmo/booking.connection_id as ConnectionId,
      /dmo/booking.flight_date   as FlightDate,
      _Travel
}
