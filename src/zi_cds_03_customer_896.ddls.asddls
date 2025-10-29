@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Customer session'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_cds_03_customer_896
  as select from /dmo/customer
{
  key customer_id              as CustomerId,
      $session.client          as ClientField,
      $session.system_date     as SystemDate,
      $session.system_language as SystemLanguage,
      $session.user            as UserField,
      $session.user_date       as UserDate,
      $session.user_timezone   as UserTz
}
