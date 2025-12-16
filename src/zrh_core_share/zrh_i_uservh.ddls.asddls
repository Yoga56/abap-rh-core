@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'RH: Value Help for User'

define view entity ZRH_I_UserVH
  as select from I_BusinessUserVH

{
  key UserID,

      PersonFullName,
      DefaultEmailAddress
}
