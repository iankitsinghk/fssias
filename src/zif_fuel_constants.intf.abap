interface ZIF_FUEL_CONSTANTS
  public .

CONSTANTS gc_app_id TYPE char10 VALUE 'FSSIAS'.
 CONSTANTS  gc_upload_station TYPE char20 VALUE 'STATION_MASTER'.
 CONSTANTS gc_upload_sales   TYPE char20 VALUE 'SALES_DATA'.
 CONSTANTS  gc_upload_uploaded TYPE char20 VALUE 'UPLOADED'.
 CONSTANTS gc_upload_valid    TYPE char20 VALUE 'VALID'.
 CONSTANTS gc_upload_error    TYPE char20 VALUE 'ERROR'.
  CONSTANTS gc_sett_pending  TYPE char20 VALUE 'PENDING'.
  CONSTANTS gc_sett_approved TYPE char20 VALUE 'APPROVED'.
  CONSTANTS gc_sett_rejected TYPE char20 VALUE 'REJECTED'.
  CONSTANTS gc_sett_invoiced TYPE char20 VALUE 'INVOICED'.
 CONSTANTS  gc_sett_emailed  TYPE char20 VALUE 'EMAILED'.
  CONSTANTS gc_action_approve TYPE char10 VALUE 'APPROVE'.
  CONSTANTS gc_action_reject  TYPE char10 VALUE 'REJECT'.
  CONSTANTS gc_pay_cash TYPE char10 VALUE 'CASH'.
  CONSTANTS gc_pay_upi  TYPE char10 VALUE 'UPI'.
 CONSTANTS  gc_pay_card TYPE char10 VALUE 'CARD'.
  CONSTANTS gc_pay_bank TYPE char10 VALUE 'BANK'.
  CONSTANTS gc_email_pending TYPE char20 VALUE 'PENDING'.
  CONSTANTS gc_email_sent    TYPE char20 VALUE 'SENT'.
  CONSTANTS gc_email_failed  TYPE char20 VALUE 'FAILED'.
  CONSTANTS  gc_bal_object TYPE balobj_d VALUE 'ZFUEL'.
 CONSTANTS  gc_bal_subobj TYPE balsubobj VALUE 'GENERAL'.
 CONSTANTS  gc_true  TYPE abap_bool VALUE abap_true.
  CONSTANTS gc_false TYPE abap_bool VALUE abap_false.

endinterface.
