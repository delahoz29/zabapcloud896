@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Datasource - with parameters'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_cds_12_896
  with parameters
    pCountryCode : land1
  as select from /dmo/agency
{
  key agency_id             as AgencyId,
      name                  as Name,
      street                as Street,
      postal_code           as PostalCode,
      city                  as City,
      country_code          as CountryCode,
      phone_number          as PhoneNumber,
      email_address         as EmailAddress,
      web_address           as WebAddress,
      attachment            as Attachment,
      mime_type             as MimeType,
      filename              as Filename,
      local_created_by      as LocalCreatedBy,
      local_created_at      as LocalCreatedAt,
      local_last_changed_by as LocalLastChangedBy,
      local_last_changed_at as LocalLastChangedAt,
      last_changed_at       as LastChangedAt,
      dummy_field           as DummyField,
      /dmo/zzsloganzag,
      zzdzzslogan2zag       as Zzdzzslogan2zag
}
where
  country_code = $parameters.pCountryCode
