@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'RH: Contact (Transaction Provider)'

define root view entity ZRH_R_CONTACTTP
  as select from ZRH_B_CONTACT

  association [1..1] to ZRH_I_ContactTypeVH as _ContactTypeInternal on _ContactTypeInternal.ContactTypeInt = $projection.ContactTypeInt
  association [1..1] to ZRH_I_ContactVH     as _ContactInfo         on _ContactInfo.ContactId = $projection.ContactId
  association [1..1] to I_CountryVH         as _Country             on _Country.Country = $projection.Country
  association [1..1] to ZRH_I_UserVH        as _UserCreated         on _UserCreated.UserID = $projection.LocalCreatedBy
  association [1..1] to ZRH_I_UserVH        as _UserChanged         on _UserChanged.UserID = $projection.LocalCreatedBy

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
      LastChangedAt,

      _ContactTypeInternal,
      _ContactInfo,
      _Country,
      _UserCreated,
      _UserChanged
}
