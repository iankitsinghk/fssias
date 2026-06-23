*&---------------------------------------------------------------------*
*& Include          ZR_FUEL_STATION_F01
*&---------------------------------------------------------------------*

*FORM f4_station_file.
*
*  CALL FUNCTION 'F4_FILENAME'
*    IMPORTING
*      file_name = p_file1.
*
*ENDFORM.
*
*
*FORM f4_sales_file.
*
*  CALL FUNCTION 'F4_FILENAME'
*    IMPORTING
*      file_name = p_file2.
*
*ENDFORM.


*FORM f4_file.
*
*  CALL FUNCTION 'F4_FILENAME'
*    IMPORTING
*      file_name = p_file.
*
*ENDFORM.

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

FORM upload_station_file.
  ENDFORM.

FORM upload_sales_file.
  ENDFORM.
