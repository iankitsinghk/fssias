*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZFUEL_AUDIT_LOG.................................*
DATA:  BEGIN OF STATUS_ZFUEL_AUDIT_LOG               .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZFUEL_AUDIT_LOG               .
CONTROLS: TCTRL_ZFUEL_AUDIT_LOG
            TYPE TABLEVIEW USING SCREEN '0002'.
*.........table declarations:.................................*
TABLES: *ZFUEL_AUDIT_LOG               .
TABLES: ZFUEL_AUDIT_LOG                .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
