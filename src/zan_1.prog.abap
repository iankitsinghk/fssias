*&---------------------------------------------------------------------*
*& Report ZAN_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZAN_1.

TYPES: BEGIN OF TY_EMP,
      EMPID(10) TYPE C,
      EMPNAME(15) TYPE C,
      EMPSALARY(10) TYPE N,
    END OF TY_EMP.

DATA : IT_EMP TYPE TABLE OF TY_EMP ,
      WA_EMP TYPE TY_EMP.

    WA_EMP-EMPID = '12'.
    WA_EMP-EMPNAME = 'ANAND'.
    WA_EMP-EMPSALARY = '15000'.

APPEND WA_EMP to  IT_EMP.
        clear WA_EMP.

      WA_EMP-EMPID = '14'.
    WA_EMP-EMPNAME = 'SUVENDU'.
    WA_EMP-EMPSALARY = '17600'.

APPEND WA_EMP to  IT_EMP.
   "  clear WA_EMP.


WRITE :/ WA_EMP-EMPID,
        / WA_EMP-EMPNAME,
        / WA_EMP-EMPSALARY.
