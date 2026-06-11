*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZFUEL_UPLOAD_HDR................................*
DATA:  BEGIN OF STATUS_ZFUEL_UPLOAD_HDR              .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZFUEL_UPLOAD_HDR              .
CONTROLS: TCTRL_ZFUEL_UPLOAD_HDR
            TYPE TABLEVIEW USING SCREEN '0002'.
*.........table declarations:.................................*
TABLES: *ZFUEL_UPLOAD_HDR              .
TABLES: ZFUEL_UPLOAD_HDR               .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
