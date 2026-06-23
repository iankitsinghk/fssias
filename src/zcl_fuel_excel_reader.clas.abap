class ZCL_FUEL_EXCEL_READER definition
  public
  final
  create private .

public section.

  class-methods READ_EXCEL
    importing
      value(IV_FILE_PATH) type RLGRAP-FILENAME
    returning
      value(RV_SUCCESS) type ABAP_BOOL .
protected section.
private section.
ENDCLASS.



CLASS ZCL_FUEL_EXCEL_READER IMPLEMENTATION.


METHOD read_excel.

  rv_success = abap_true.

ENDMETHOD.
ENDCLASS.
