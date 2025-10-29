@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Association'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_cds_11_896
  as select from /dmo/travel as Travel
  association [1..1] to /dmo/customer as _Customer on _Customer.customer_id = $projection.CustomerId
{
  key Travel.travel_id                                                as TravelId,
      Travel.customer_id                                              as CustomerId,
      concat_with_space(_Customer.first_name, _Customer.last_name, 2) as Customername
}
