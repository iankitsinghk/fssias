*&---------------------------------------------------------------------*
*& Include          ZR_FUEL_STATION_SEL
*&---------------------------------------------------------------------*

SELECTION-SCREEN BEGIN OF BLOCK b1
  WITH FRAME TITLE TEXT-001.

  PARAMETERS:
    p_sale RADIOBUTTON GROUP g1 DEFAULT 'X',
    p_stat RADIOBUTTON GROUP g1.

  PARAMETERS:
    p_file TYPE rlgrap-filename.

SELECTION-SCREEN END OF BLOCK b1.

AT SELECTION-SCREEN ON VALUE-REQUEST FOR p_file.
  PERFORM f4_station_file.

AT SELECTION-SCREEN.
  IF p_file IS INITIAL.
    MESSAGE e999(zfuel_msg).
  ENDIF.
