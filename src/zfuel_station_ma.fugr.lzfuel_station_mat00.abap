*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZFUEL_STATION_MA................................*
DATA:  BEGIN OF STATUS_ZFUEL_STATION_MA              .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZFUEL_STATION_MA              .
CONTROLS: TCTRL_ZFUEL_STATION_MA
            TYPE TABLEVIEW USING SCREEN '0002'.
*.........table declarations:.................................*
TABLES: *ZFUEL_STATION_MA              .
TABLES: ZFUEL_STATION_MA               .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
