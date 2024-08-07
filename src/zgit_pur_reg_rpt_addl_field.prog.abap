*&---------------------------------------------------------------------*
*& Report ZGIT_PUR_REG_RPT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZGIT_PUR_REG_RPT_ADDL_FIELD.

select ernam from mara into @data(itab) where matnr = 000000000400000006.
  endselect.

WRITE /2 'Video Demo GIT Check IN for Prchase Register - Edit'.
