@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS CUSTOMER'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_CDS_02_CUSTOMER_896
  as select from /dmo/customer
{
  key customer_id as CustomerId,
      case country_code
          when 'US' then concat( 'United State', concat_with_space( last_name, first_name, 2 ) )
          when 'DE' then concat( 'Germany', last_name )
          when 'ES' then concat( 'Spain', last_name )
          else 'Another Country Code'
      end         as Case1

}
