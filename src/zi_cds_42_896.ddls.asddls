@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Invoices'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_CDS_42_896
  as select from zinvoices_896
{
  key plant        as Plant,
  key invoice_id   as InvoiceId,
      created_by   as CreatedBy,
      customer     as Customer,
      @Semantics.amount.currencyCode: 'CurrencyKey'
      amount       as Amount,
      currency_key as CurrencyKey
}
