@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Travel 2.0'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_cds_04_travel_896
  as select from /dmo/travel
{
  key travel_id                as TravelId,
      cast('' as abap.numc(4)) as BookingId

}

union select distinct from /dmo/booking
{
  key travel_id  as TravelId,
      booking_id as BookingId

}
