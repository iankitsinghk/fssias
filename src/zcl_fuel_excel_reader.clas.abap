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
  class-methods READ_SALE_EXCEL
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


  method READ_SALE_EXCEL.
    DATA: lv_raw_data type solix_tab,
          lv_size type i,
          lv_xstring type xstring,
          lo_excel type ref to cl_fdt_xl_spreadsheet.

  endmethod.


  METHOD read_station_excel.
    DATA:
      lt_raw_data    TYPE solix_tab,
      lv_size        TYPE i,
      lv_xstring     TYPE xstring,
      lo_excel       TYPE REF TO cl_fdt_xl_spreadsheet,

      lt_sheet_names TYPE if_fdt_doc_spreadsheet=>t_worksheet_names,
      lv_sheet_name  TYPE string,
      lr_data        TYPE REF TO data.
    FIELD-SYMBOLS:
      <lt_excel> TYPE STANDARD TABLE,
      <ls_excel> TYPE any.


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

    IF sy-subrc <> 0.
      rv_success = zif_fuel_constants=>gc_false.
      RETURN.
    ENDIF.

    LOOP AT <lt_excel> ASSIGNING <ls_excel>.
      ENDLOOP.
  ENDMETHOD.
ENDCLASS.
