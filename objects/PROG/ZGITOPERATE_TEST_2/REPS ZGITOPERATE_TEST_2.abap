*&---------------------------------------------------------------------*
*& Report ZGITOPERATE_TEST
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZGITOPERATE_TEST_2.
select ernam from mara into @data(itab) where matnr = 000000000400000006.
  endselect.
"new code below
"select matnr from mara into @data(itab1).
"endselect.
WRITE /2 'test program-1'.
WRITE /2 'test program-2'.
WRITE /2 'test program-3'.