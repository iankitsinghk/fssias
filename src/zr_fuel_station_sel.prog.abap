*&---------------------------------------------------------------------*
*& Include          ZR_FUEL_STATION_SEL
*&---------------------------------------------------------------------*

SELECTION-SCREEN BEGIN OF BLOCK b1
WITH FRAME TITLE text-001.

PARAMETERS:
  p_file1 TYPE rlgrap-filename ,
  p_file2 TYPE rlgrap-filename.

SELECTION-SCREEN END OF BLOCK b1.

AT SELECTION-SCREEN ON VALUE-REQUEST FOR p_file1.
  PERFORM f4_station_file.

AT SELECTION-SCREEN ON VALUE-REQUEST FOR p_file2.
  PERFORM f4_sales_file.

AT SELECTION-SCREEN.

  IF p_file1 IS INITIAL
     AND p_file2 IS INITIAL.

    MESSAGE 'Please select at least one file' TYPE 'E'.

  ENDIF.
