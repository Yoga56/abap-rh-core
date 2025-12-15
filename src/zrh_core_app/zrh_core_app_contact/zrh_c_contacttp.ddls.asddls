@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'RHL Contact (Consumption)'
@Metadata.allowExtensions: true
define root view entity ZRH_C_CONTACTTP
  provider contract transactional_query
  as projection on ZRH_R_CONTACTTP
{
  key ContactId,
      ContactTypeInt,
      FirstName,
      LastName,
      Birthday,
      Street,
      HouseNumber,
      Town,
      ZipCode,
      Country,
      Telephone,
      Email,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt
}
