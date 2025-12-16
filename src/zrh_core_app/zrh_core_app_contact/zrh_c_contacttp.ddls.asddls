@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'RHL Contact (Consumption)'

@Metadata.allowExtensions: true

@Search.searchable: true

define root view entity ZRH_C_CONTACTTP
  provider contract transactional_query
  as projection on ZRH_R_CONTACTTP

{
      @Consumption.valueHelpDefinition: [ { entity: { name: 'ZRH_I_ContactVH', element: 'ContactId' } } ]
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 1.0
  key ContactId,

      @Consumption.valueHelpDefinition: [ { entity: { name: 'ZRH_I_ContactTypeVH', element: 'ContactTypeInt' } } ]
      @ObjectModel.text.element: [ 'ContactTypeDescription' ]
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.6
      @UI.textArrangement: #TEXT_FIRST
      ContactTypeInt,

      _ContactTypeInternal.Description as ContactTypeDescription,

      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.3
      FirstName,

      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.3
      LastName,

      Birthday,
      Street,
      HouseNumber,
      Town,
      ZipCode,

      @Consumption.valueHelpDefinition: [ { entity: { name: 'I_CountryVH', element: 'Country' } } ]
      @ObjectModel.text.element: [ 'CountryName' ]
      @UI.textArrangement: #TEXT_FIRST
      Country,

      _Country.Description             as CountryName,


      Telephone,
      Email,

      @ObjectModel.text.element: [ 'CreatedName' ]
      @UI.textArrangement: #TEXT_ONLY
      LocalCreatedBy,

      _UserCreated.PersonFullName      as CreatedName,
      LocalCreatedAt,

      @ObjectModel.text.element: [ 'ChangedName' ]
      @UI.textArrangement: #TEXT_ONLY
      LocalLastChangedBy,

      _UserChanged.PersonFullName      as ChangedName,
      LocalLastChangedAt,
      LastChangedAt,

      _ContactTypeInternal,
      _ContactInfo,
      _Country,
      _UserCreated,
      _UserChanged
}
