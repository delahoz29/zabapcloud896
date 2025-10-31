@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection - Child Query'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_CDS_28_896
  as projection on ZI_CDS_24_896
{
  key TravelId,
  key BookingId,
      BookingDate,
      CustomerId,
      CarrierId,
      ConnectionId,
      FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      FlightPrice,
      CurrencyCode,
      /* Associations */
      _Customer,
      _Travel : redirected to parent ZI_CDS_27_896
}
