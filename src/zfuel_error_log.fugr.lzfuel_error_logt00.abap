*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZFUEL_ERROR_LOG.................................*
DATA:  BEGIN OF STATUS_ZFUEL_ERROR_LOG               .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZFUEL_ERROR_LOG               .
CONTROLS: TCTRL_ZFUEL_ERROR_LOG
            TYPE TABLEVIEW USING SCREEN '0002'.
*.........table declarations:.................................*
TABLES: *ZFUEL_ERROR_LOG               .
TABLES: ZFUEL_ERROR_LOG                .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
