class ZFUEL_UTIL_CL definition
  public
  final
  create private .

public section.

  class-methods VALIDATE_EMAIL
    importing
      value(IV_EMAIL) type AD_SMTPADR
    returning
      value(RV_VALID) type ABAP_BOOL .
  class-methods GENERATE_UPLOAD_ID
    returning
      value(RV_UPLOAD_ID) type CHAR30 .
  class-methods GENERATE_SETTLEMENT_ID
    returning
      value(RV_SETT_ID) type CHAR30 .
  class-methods GET_FILE_EXTENSION
    importing
      value(IV_FILENAME) type STRING
    returning
      value(RV_EXTENSION) type STRING .
  class-methods IS_EXCEL_FILE
    importing
      value(IV_FILENAME) type STRING
    returning
      value(RV_VALID) type ABAP_BOOL .
protected section.
private section.
ENDCLASS.



CLASS ZFUEL_UTIL_CL IMPLEMENTATION.


  method GENERATE_SETTLEMENT_ID.
  endmethod.


  method GENERATE_UPLOAD_ID.
  endmethod.


  method GET_FILE_EXTENSION.
  endmethod.


  method IS_EXCEL_FILE.
  endmethod.


  method VALIDATE_EMAIL.
  endmethod.
ENDCLASS.
