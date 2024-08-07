FUNCTION ZFM_ABAPGIT_PARALLELDEV.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(LV_INCOME) TYPE  P DEFAULT 100000
*"     REFERENCE(LV_UNITPRICE) TYPE  P DEFAULT 100
*"     REFERENCE(LV_DRUGTYPE) TYPE  CHAR3 OPTIONAL
*"----------------------------------------------------------------------


DATA(lo_obj) = NEW zcl_abapgit_paralleldev( LV_ANNUALINCOME = lv_income ).

DATA(lo_obj2) = NEW zcl_abapgit_paralleldev( lv_drugtype = lv_drugtype  LV_UNITPRICE = LV_UNITPRICE ).

  WRITE : |Income tax amount is INR | & |{ lo_obj->incometax }|,
          / |Monthly Take Home Amount is INR | & |{ lo_obj->monthlytakehome }|,
  /  |MRP of the Drug is INR | & |{ lo_obj2->mrp }|.
  .


ENDFUNCTION.
