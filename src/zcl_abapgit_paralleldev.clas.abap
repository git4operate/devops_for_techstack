class ZCL_ABAPGIT_PARALLELDEV definition
  public
  final
  create public .

public section.

  data:
    ANNUALINCOME type P LENGTH 16 DECIMALS 2 .
  data:
    INCOMETAX type P LENGTH 16 DECIMALS 2 .
  data:
    MONTHLYTAKEHOME type P LENGTH 16 DECIMALS 2 .
  data:
    UNITPRICE type P LENGTH 16 DECIMALS 2 .
  data:
    MRP type P LENGTH 16 DECIMALS 2 .
  data:
    DRUGTYPE type CHAR3 .

  methods CALCULATE_INCOMETAX .
  methods CALCULATE_MONTHLY_TAKE_HOME .
  methods CONSTRUCTOR
    importing
      !LV_ANNUALINCOME type P optional
      !LV_UNITPRICE type P optional
      !LV_DRUGTYPE type CHAR3 optional .
  methods CALCULATE_GST .
protected section.
private section.
ENDCLASS.



CLASS ZCL_ABAPGIT_PARALLELDEV IMPLEMENTATION.


  method CALCULATE_INCOMETAX.
    incometax = annualincome * '0.32' .
    incometax = incometax + ( incometax * '0.05' ).
  endmethod.


  method CALCULATE_MONTHLY_TAKE_HOME.
    monthlytakehome = ( annualincome - incometax ) / 12 .
  endmethod.


  METHOD constructor.
    annualincome = lv_annualincome.
    unitprice = lv_unitprice.
    drugtype = lv_drugtype.
    CALL METHOD calculate_incometax.
    CALL METHOD calculate_monthly_take_home.
    CALL METHOD calculate_gst.
  ENDMETHOD.


  METHOD calculate_gst.
    IF drugtype EQ 'EQP'.
      mrp = unitprice + ( unitprice * '0.18' ).
    ELSE.
      mrp = unitprice + ( unitprice * '0.02' ).

    ENDIF.
  ENDMETHOD.
ENDCLASS.
