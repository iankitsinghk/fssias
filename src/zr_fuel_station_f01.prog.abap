*&---------------------------------------------------------------------*
*& Include          ZR_FUEL_STATION_F01
*&---------------------------------------------------------------------*

FORM f4_station_file.

  CALL FUNCTION 'F4_FILENAME'
    IMPORTING
      file_name = p_file1.

ENDFORM.


FORM f4_sales_file.

  CALL FUNCTION 'F4_FILENAME'
    IMPORTING
      file_name = p_file2.

ENDFORM.
