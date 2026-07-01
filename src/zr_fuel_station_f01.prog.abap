*&---------------------------------------------------------------------*
*& Include          ZR_FUEL_STATION_F01
*&---------------------------------------------------------------------*


FORM f4_file.

  DATA:
    lt_filetab TYPE filetable,
    lv_rc      TYPE i,
    ls_filetab TYPE file_table.

  CALL METHOD cl_gui_frontend_services=>file_open_dialog
    EXPORTING
      window_title = 'Select Excel File'
      default_extension = 'xlsx'
      file_filter       = 'Excel Files (*.xlsx)|*.xlsx|'
    CHANGING
      file_table        = lt_filetab
      rc                = lv_rc.

  IF lv_rc = 1.
    READ TABLE lt_filetab INTO ls_filetab INDEX 1.
    IF sy-subrc = 0.
      p_file = ls_filetab-filename.
    ENDIF.
  ENDIF.

ENDFORM.

FORM upload_excel_file.

  IF p_stat = abap_true.

    gv_success =
      zcl_fuel_excel_reader=>read_station_excel(
        EXPORTING
          iv_file_path    = p_file
        IMPORTING
          et_station_data = gt_station_data ).

  ELSEIF p_sale = abap_true.

    gv_success =
      zcl_fuel_excel_reader=>read_sale_excel(
        EXPORTING
          iv_file_path  = p_file
        IMPORTING
          et_sales_data = gt_sales_data ).

  ENDIF.

IF gv_success = abap_true.
   MESSAGE 'Excel reader called successfully' type 'S'.
   ELSE.
     MESSAGE 'Excel reader failed' type 'E'.
  ENDIF.
ENDFORM.
