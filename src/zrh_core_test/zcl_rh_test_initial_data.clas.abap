CLASS zcl_rh_test_initial_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_rh_test_initial_data IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA gt_contract TYPE STANDARD TABLE OF zrh_contact WITH EMPTY KEY.

    gt_contract = VALUE #( first_name   = 'AKY'
                           last_name    = 'YKA'
                           birthday     = '20000129'
                           street       = 'TEST-STREET'
                           house_number = '001'
                           town         = 'JAKARTA'
                           zip_code     = '55581'
                           country      = 'ID'
                           telephone    = '089601384612'
                           email        = 'email.email@email.com'
                           ( contact_id   = 'C1'
                             contact_type = 'CU' )
                           ( contact_id   = 'E1'
                             contact_type = 'EM' ) ).

    DELETE FROM zrh_contact.
    INSERT zrh_contact FROM TABLE @gt_contract.
  ENDMETHOD.
ENDCLASS.
