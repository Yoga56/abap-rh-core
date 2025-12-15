@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'RH: Contact (Transaction Provider)'
define root view entity ZRH_R_CONTACTTP
  as select from ZRH_B_CONTACT
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
