*&---------------------------------------------------------------------*
*& Report ZABB_DEMO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABB_DEMO.
write:'hello ABB team'.
select * from mara into @data(lv_mara).
  ENDSELECT.
