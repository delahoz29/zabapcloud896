@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS TRAVEL'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_CDS_01_TRAVEL_896
  as select from /dmo/flight
{
  key carrier_id                                                  as AirLineID,
  key connection_id                                               as ConnectionID,
  key flight_date                                                 as FlightDate,
      @Semantics.amount.currencyCode: 'Currency'
      @EndUserText.label: 'Price'
      price                                                       as Price,
      currency_code                                               as Currency,
      'USD'                                                       as CurrencyDocument,
      '20251027'                                                  as DateString,
      cast( '20251027' as abap.dats )                             as DateDate,
      1.2                                                         as FloatingPointElement,
      fltp_to_dec(1.2 as abap.dec( 4 , 2))                        as DecimalsElements,
      cast( cast( 'E' as abap.lang ) as sylangu preserving type ) as LanguageElement

}
