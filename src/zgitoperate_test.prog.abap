*&---------------------------------------------------------------------*
*& Report ZGITOPERATE_TEST
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZGITOPERATE_TEST.
*select ernam from mara into @data(itab) where matnr = 000000000400000006.
*  endselect.

select * from mara into @data(itab) where matnr = 000000000400000006.
  endselect.

WRITE /2 'test program-1'.
