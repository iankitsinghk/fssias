class ZCL_FUEL_UTIL definition
  public
  final
  create private .

public section.

  methods VALIDATE_EMAIL
    importing
      value(IV_EMAIL) type AD_SMTPADR
    exporting
      value(RV_VALID) type ABAP_BOOL .
  methods GENERATE_UPLOAD_ID
    returning
      value(RV_UPLOAD_ID) type CHAR30 .
  methods GENERATE_SETTLEMENT_ID
    returning
      value(RV_SETT_ID) type CHAR30 .
  methods GET_FILE_EXTENSION
    importing
      value(IV_FILENAME) type STRING
    returning
      value(RV_EXTENSION) type STRING .
  methods IS_EXCEL_FILE
    importing
      !IV_FILENAME type STRING
    returning
      value(RV_VALID) type ABAP_BOOL .
protected section.
private section.
ENDCLASS.



CLASS ZCL_FUEL_UTIL IMPLEMENTATION.


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
