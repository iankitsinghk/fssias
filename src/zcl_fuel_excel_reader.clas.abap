class ZCL_FUEL_EXCEL_READER definition
  public
  final
  create private .

public section.

  class-methods READ_STATION_EXCEL
    importing
      value(IV_FILE_PATH) type STRING
    exporting
      value(ET_STATION_DATA) type ZTT_FUEL_STATION_UPLOAD
    returning
      value(RV_SUCCESS) type ABAP_BOOL .
  class-methods READ_SALES_EXCEL
    importing
      value(IV_FILE_PATH) type STRING
    exporting
      value(ET_SALES_DATA) type ZTT_FUEL_SALES_UPLOAD
    returning
      value(RV_SUCCESS) type ABAP_BOOL .
protected section.
private section.
ENDCLASS.



CLASS ZCL_FUEL_EXCEL_READER IMPLEMENTATION.


  method READ_SALES_EXCEL.
  endmethod.


METHOD read_station_excel.

  DATA:
    lt_raw_data    TYPE solix_tab,
    lv_size        TYPE i,
    lv_xstring     TYPE xstring,
    lo_excel       TYPE REF TO cl_fdt_xl_spreadsheet,

    lt_sheet_names TYPE if_fdt_doc_spreadsheet=>t_worksheet_names,
    lv_sheet_name  TYPE string,
    lr_data        TYPE REF TO data,

    ls_station     TYPE zstr_fuel_station_upload.

  FIELD-SYMBOLS : <lt_excel> TYPE STANDARD TABLE,
                  <ls_excel> TYPE any,
                  <lv_value> TYPE any.

  CALL METHOD cl_gui_frontend_services=>gui_upload
    EXPORTING
      filename   = iv_file_path
      filetype   = 'BIN'
    IMPORTING
      filelength = lv_size
    CHANGING
      data_tab   = lt_raw_data
    EXCEPTIONS
      OTHERS     = 1.

  IF sy-subrc <> 0.
    rv_success = zif_fuel_constants=>gc_false.
    RETURN.
  ENDIF.

  CALL FUNCTION 'SCMS_BINARY_TO_XSTRING'
    EXPORTING
      input_length = lv_size
    IMPORTING
      buffer       = lv_xstring
    TABLES
      binary_tab   = lt_raw_data.

  TRY.

      lo_excel = NEW cl_fdt_xl_spreadsheet(
                   document_name = iv_file_path
                   xdocument     = lv_xstring ).

    CATCH cx_fdt_excel_core INTO DATA(lx_excel).

      rv_success = zif_fuel_constants=>gc_false.
      RETURN.

  ENDTRY.

  CALL METHOD lo_excel->if_fdt_doc_spreadsheet~get_worksheet_names
    IMPORTING
      worksheet_names = lt_sheet_names.

  READ TABLE lt_sheet_names
       INDEX 1
       INTO lv_sheet_name.

  IF sy-subrc <> 0.
    rv_success = zif_fuel_constants=>gc_false.
    RETURN.
  ENDIF.

  lr_data = lo_excel->if_fdt_doc_spreadsheet~get_itab_from_worksheet(
               worksheet_name = lv_sheet_name ).

  ASSIGN lr_data->* TO <lt_excel>.

  IF <lt_excel> IS NOT ASSIGNED.
    rv_success = zif_fuel_constants=>gc_false.
    RETURN.
  ENDIF.

  LOOP AT <lt_excel> ASSIGNING <ls_excel>.

    "Skip Header Row
    IF sy-tabix = 1.
      CONTINUE.
    ENDIF.

    CLEAR ls_station.
    ASSIGN COMPONENT 1 OF STRUCTURE <ls_excel> TO <lv_value>.
    IF sy-subrc = 0.
      ls_station-station_code = <lv_value>.
    ENDIF.

    ASSIGN COMPONENT 2 OF STRUCTURE <ls_excel> TO <lv_value>.
    IF sy-subrc = 0.
      ls_station-customer_no = <lv_value>.
    ENDIF.

    ASSIGN COMPONENT 3 OF STRUCTURE <ls_excel> TO <lv_value>.
    IF sy-subrc = 0.
      ls_station-station_name = <lv_value>.
    ENDIF.

    ASSIGN COMPONENT 4 OF STRUCTURE <ls_excel> TO <lv_value>.
    IF sy-subrc = 0.
      ls_station-dealer_code = <lv_value>.
    ENDIF.

    ASSIGN COMPONENT 5 OF STRUCTURE <ls_excel> TO <lv_value>.
    IF sy-subrc = 0.
      ls_station-dealer_name = <lv_value>.
    ENDIF.

    ASSIGN COMPONENT 6 OF STRUCTURE <ls_excel> TO <lv_value>.
    IF sy-subrc = 0.
      ls_station-gst_no = <lv_value>.
    ENDIF.

    ASSIGN COMPONENT 7 OF STRUCTURE <ls_excel> TO <lv_value>.
    IF sy-subrc = 0.
      ls_station-email_id = <lv_value>.
    ENDIF.

    ASSIGN COMPONENT 8 OF STRUCTURE <ls_excel> TO <lv_value>.
    IF sy-subrc = 0.
      ls_station-status = <lv_value>.
    ENDIF.

    APPEND ls_station TO et_station_data.
  ENDLOOP.

  rv_success = zif_fuel_constants=>gc_true.


ENDMETHOD.
ENDCLASS.
