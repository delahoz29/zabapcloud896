@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Conversiones'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_cds_07_896
  with parameters
    pFromCurrency : abap.cuky,
    pToCurrency   : abap.cuky
  // pDocumentdate : abap.dats


  as select from /dmo/travel
{
  key travel_id                                                   as TravelId,
      @Semantics.amount.currencyCode: 'OriginalCurrency'
      total_price                                                 as OriginalPrice,
      currency_code                                               as originalCurrency,
      @Semantics.amount.currencyCode: 'ConvertedCurrency'
      currency_conversion( amount              => total_price,
                           source_currency     => $parameters.pFromCurrency  ,
                           target_currency     => $parameters.pToCurrency,
                           exchange_rate_date  => begin_date,
                           client              => $session.client,
                           error_handling      => 'SET_TO_NULL' ) as ConvertedPrice,
      cast( 'USD' as abap.cuky )                                  as ConvertedCurrency,
      $parameters.pToCurrency                                     as ConvertedCurrency2


}
where
  currency_code = $parameters.pFromCurrency
