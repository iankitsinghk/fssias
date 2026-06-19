INTERFACE zfuel_constants_ifc PUBLIC.

*--------------------------------------------------------------------*
* Application
*--------------------------------------------------------------------*
  CONSTANTS:
    gc_app_id TYPE char10 VALUE 'FSSIAS'.

*--------------------------------------------------------------------*
* Upload Types
*--------------------------------------------------------------------*
  CONSTANTS:
    gc_upload_station TYPE char20 VALUE 'STATION_MASTER',
    gc_upload_sales   TYPE char20 VALUE 'SALES_DATA'.

*--------------------------------------------------------------------*
* Upload Status
*--------------------------------------------------------------------*
  CONSTANTS:
    gc_upload_uploaded TYPE char20 VALUE 'UPLOADED',
    gc_upload_valid    TYPE char20 VALUE 'VALID',
    gc_upload_error    TYPE char20 VALUE 'ERROR'.

*--------------------------------------------------------------------*
* Settlement Status
*--------------------------------------------------------------------*
  CONSTANTS:
    gc_sett_pending  TYPE char20 VALUE 'PENDING',
    gc_sett_approved TYPE char20 VALUE 'APPROVED',
    gc_sett_rejected TYPE char20 VALUE 'REJECTED',
    gc_sett_invoiced TYPE char20 VALUE 'INVOICED',
    gc_sett_emailed  TYPE char20 VALUE 'EMAILED'.

*--------------------------------------------------------------------*
* Approval Actions
*--------------------------------------------------------------------*
  CONSTANTS:
    gc_action_approve TYPE char10 VALUE 'APPROVE',
    gc_action_reject  TYPE char10 VALUE 'REJECT'.

*--------------------------------------------------------------------*
* Payment Modes
*--------------------------------------------------------------------*
  CONSTANTS:
    gc_pay_cash TYPE char10 VALUE 'CASH',
    gc_pay_upi  TYPE char10 VALUE 'UPI',
    gc_pay_card TYPE char10 VALUE 'CARD',
    gc_pay_bank TYPE char10 VALUE 'BANK'.

*--------------------------------------------------------------------*
* Email Status
*--------------------------------------------------------------------*
  CONSTANTS:
    gc_email_pending TYPE char20 VALUE 'PENDING',
    gc_email_sent    TYPE char20 VALUE 'SENT',
    gc_email_failed  TYPE char20 VALUE 'FAILED'.

*--------------------------------------------------------------------*
* Boolean Values
*--------------------------------------------------------------------*
  CONSTANTS:
    gc_true  TYPE abap_bool VALUE abap_true,
    gc_false TYPE abap_bool VALUE abap_false.

ENDINTERFACE.
