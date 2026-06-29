*&---------------------------------------------------------------------*
*& Include          ZR_FUEL_STATION_F01
*&---------------------------------------------------------------------*

FORM f4_station_file.

  DATA : lv_file_table TYPE filetable,
         lv_rc         TYPE i.

  CALL METHOD cl_gui_frontend_services=>file_open_dialog
    EXPORTING
      window_title      = 'Select Excel File'
      default_extension = 'xlsx'
      file_filter       = 'Excel Files(*xlsx)|*xlsx|'
    CHANGING
      file_table        = lv_file_table
      rc                = lv_rc.

  IF lv_rc = 1.
    READ TABLE lv_file_table INTO DATA(ls_file_table) INDEX 1.
    IF sy-subrc = 0.
      p_file = ls_file_table-filename.
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
      zcl_fuel_excel_reader=>read_sales_excel(
        EXPORTING
          iv_file_path  = p_file
        IMPORTING
          et_sales_data = gt_sales_data ).

  ENDIF.

  IF gv_success = abap_true.
    MESSAGE 'Excel Reader called successfully' TYPE 'S'.
  ELSE.
    MESSAGE 'Excel Reader failed' TYPE 'E'.
  ENDIF.

ENDFORM.
