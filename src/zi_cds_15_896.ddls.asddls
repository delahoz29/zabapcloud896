@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Association'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_CDS_15_896
  as select from /dmo/travel as Travel
  association [0..*] to I_CurrencyText as _Currency on _Currency.Currency = $projection.Currency
                                                    
{
  key travel_id     as TravelId,
      @Semantics.amount.currencyCode: 'Currency'
      total_price   as Price,
      currency_code as Currency,
      _Currency[ Language = $session.system_language].CurrencyName

}
