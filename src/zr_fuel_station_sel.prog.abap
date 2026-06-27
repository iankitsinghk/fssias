*&---------------------------------------------------------------------*
*& Include          ZR_FUEL_STATION_SEL
*&---------------------------------------------------------------------*

SELECTION-SCREEN BEGIN OF BLOCK b1
WITH FRAME TITLE text-001.

PARAMETERS:
  p_sale RADIOBUTTON GROUP rg1 DEFAULT 'X',
 p_stat RADIOBUTTON GROUP rg1.

PARAMETERS:
  p_file TYPE string.

SELECTION-SCREEN END OF BLOCK b1.

AT SELECTION-SCREEN ON VALUE-REQUEST FOR p_file.
  PERFORM f4_file.

AT SELECTION-SCREEN.
  IF p_file is INITIAL.
    MESSAGE e999(Zfuel_msg).
    ENDIF.
