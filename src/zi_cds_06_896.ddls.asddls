@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS TRAVEL 3.0'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_cds_06_896
  as select from /dmo/travel
{

  key travel_id,
      agency_id,
      cast( total_price as abap.dec(16,2)) as total_price,
     currency_code 

}
