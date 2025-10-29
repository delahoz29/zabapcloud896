@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Quantity Conversion'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_cds_08_896
  as select from zqty_896
{
  key product                                     as ProductID,
      @Semantics.quantity.unitOfMeasure: 'OriginalUnit'
      quantity                                    as OriginalQty,
      unit                                        as OriginalUnit,
      @Semantics.quantity.unitOfMeasure: 'ConvertedUnit'
      unit_conversion( quantity    => quantity,
                       source_unit => unit,
                       target_unit => abap.unit'MI',
                       error_handling => 'SET_TO_NULL',
                       client => $session.client) as ConvertedQty,
      abap.unit'MI'                               as ConvertedUnit
}
