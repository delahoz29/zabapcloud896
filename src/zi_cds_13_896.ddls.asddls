@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Association with parameters'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_cds_13_896
  with parameters
    pCountryCode2 : land1
  as select from /dmo/travel as Travel
  association [1..1] to zi_cds_12_896 as _Agency on _Agency.AgencyId = $projection.AgencyId
{
  key travel_id                                              as TravelId,
      Travel.agency_id                                       as AgencyId,
      _Agency(pCountryCode : $parameters.pCountryCode2).Name as AgencyName
}
