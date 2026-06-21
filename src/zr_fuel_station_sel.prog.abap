*&---------------------------------------------------------------------*
*& Include          ZR_FUEL_STATION_SEL
*&---------------------------------------------------------------------*

SELECTION-SCREEN BEGIN OF BLOCK b1
WITH FRAME TITLE text-001.

PARAMETERS:
  p_file1 TYPE rlgrap-filename OBLIGATORY,
  p_file2 TYPE rlgrap-filename OBLIGATORY.

SELECTION-SCREEN END OF BLOCK b1.

AT SELECTION-SCREEN ON VALUE-REQUEST FOR p_file1.
  PERFORM f4_station_file.

AT SELECTION-SCREEN ON VALUE-REQUEST FOR p_file2.
  PERFORM f4_sales_file.
