@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection - Contract Type Interface'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_CDS_25_896
provider contract transactional_interface
  as projection on ZI_CDS_23_896
{
  key TravelId,
      AgencyId,
      CustomerId,
      BeginDate,
      EndDate,

//      BookingFee,
//      TotalPrice,
      CurrencyCode,
      Description,
      Status,
      Createdby,
      Createdat,
      Lastchangedby,
      Lastchangedat,
      /* Associations */
      _Agency,
      _Booking: redirected to composition child ZI_CDS_26_896,
      _Customer
}
