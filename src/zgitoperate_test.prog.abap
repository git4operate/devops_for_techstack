*&---------------------------------------------------------------------*
*& Report ZGITOPERATE_TEST
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZGITOPERATE_TEST.
*select ernam from mara into @data(itab) where matnr = 000000000400000006.
*  endselect.

select * from mara into @data(itab).
  endselect.
WRITE /2 'test program-1'.
WRITE /2 'test program-2'.
