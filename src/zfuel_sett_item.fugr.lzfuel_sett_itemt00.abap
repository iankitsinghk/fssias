*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZFUEL_SETT_ITEM.................................*
DATA:  BEGIN OF STATUS_ZFUEL_SETT_ITEM               .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZFUEL_SETT_ITEM               .
CONTROLS: TCTRL_ZFUEL_SETT_ITEM
            TYPE TABLEVIEW USING SCREEN '0002'.
*.........table declarations:.................................*
TABLES: *ZFUEL_SETT_ITEM               .
TABLES: ZFUEL_SETT_ITEM                .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
