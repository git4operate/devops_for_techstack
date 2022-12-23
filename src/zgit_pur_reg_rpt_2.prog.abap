*&---------------------------------------------------------------------*
*& Report ZGIT_PUR_REG_RPT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZGIT_PUR_REG_RPT_2.

select ernam from mara into @data(itab) where matnr = 000000000400000006.
  endselect.

select * from mara into @data(itab1).
  endselect.

WRITE /2 'Video Demo GIT Check IN for Prchase Register - Edit'.
