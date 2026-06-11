*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZFUEL_APPROVAL..................................*
DATA:  BEGIN OF STATUS_ZFUEL_APPROVAL                .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZFUEL_APPROVAL                .
CONTROLS: TCTRL_ZFUEL_APPROVAL
            TYPE TABLEVIEW USING SCREEN '0002'.
*.........table declarations:.................................*
TABLES: *ZFUEL_APPROVAL                .
TABLES: ZFUEL_APPROVAL                 .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
