*&---------------------------------------------------------------------*
*& Report ZGITOPERATE_TEST
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZGITOPERATE_TEST_PARALLELDEV.

*select ernam from mara into @data(itab) where matnr = 000000000400000006.
*  endselect.
"new code below
*select * from mara into @data(itab1).
*  endselect.
WRITE /2 'Trying Merge from S4D'.
WRITE /2 'Trying Merge from SOLMAN'.
