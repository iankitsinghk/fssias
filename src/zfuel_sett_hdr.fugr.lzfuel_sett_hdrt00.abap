*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZFUEL_SETT_HDR..................................*
DATA:  BEGIN OF STATUS_ZFUEL_SETT_HDR                .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZFUEL_SETT_HDR                .
CONTROLS: TCTRL_ZFUEL_SETT_HDR
            TYPE TABLEVIEW USING SCREEN '0002'.
*.........table declarations:.................................*
TABLES: *ZFUEL_SETT_HDR                .
TABLES: ZFUEL_SETT_HDR                 .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
