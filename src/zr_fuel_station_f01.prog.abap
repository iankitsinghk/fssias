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


FORM upload_station_file.
ENDFORM.
