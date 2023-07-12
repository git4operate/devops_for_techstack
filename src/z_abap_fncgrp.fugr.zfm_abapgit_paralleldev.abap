FUNCTION ZFM_ABAPGIT_PARALLELDEV.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(LV_INCOME) TYPE  P DEFAULT 100000
*"----------------------------------------------------------------------


DATA(lo_obj) = NEW zcl_abapgit_paralleldev( LV_ANNUALINCOME = lv_income ).

  WRITE : |Income tax amount is | & |{ lo_obj->incometax }|,
          / |Monthly Take Home Amount is | & |{ lo_obj->monthlytakehome }|.
  .


ENDFUNCTION.
