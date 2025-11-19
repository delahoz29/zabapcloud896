@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl: {
        authorizationCheck: #NOT_ALLOWED,
        auditing.type: #CUSTOM,
        auditing.specification: '896'
}

@EndUserText.label: 'Acces Control - Auditing'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_CDS_41_896
  as select from zusers_896
{
  key plant      as Plant,
  key user_id    as UserId,
  key invoice_id as InvoiceId,
      first_name as FirstName,
      last_name  as LastName
}
