*&---------------------------------------------------------------------*
*& Report ZGITOPERATE_TEST
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZGITOPERATE_TEST_SP_DR_1.
select ernam from mara into @data(itab) where matnr = 000000000400000006.
  endselect.
"new code below
*select * from mara into @data(itab1).
*  endselect.
WRITE /2 'test program-1'.
WRITE /2 'test program-2'.
WRITE /2 'test program-3'.
WRITE /2 'test program-Sun Pharma'.
