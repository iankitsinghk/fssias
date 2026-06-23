*&---------------------------------------------------------------------*
*& Report ZR_FUEL_STATION_UPLOAD
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZR_FUEL_STATION_UPLOAD.

INCLUDE zr_fuel_station_top.
INCLUDE zr_fuel_station_sel.
INCLUDE zr_fuel_station_cls.
INCLUDE zr_fuel_station_f01.

START-OF-SELECTION.

  IF p_sale = 'X'.
    PERFORM upload_station_file.
  ELSEIF p_stat = 'X'.
    PERFORM upload_sales_file.
  ENDIF.
