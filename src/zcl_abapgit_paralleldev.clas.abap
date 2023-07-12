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

  methods CALCULATE_INCOMETAX .
  methods CALCULATE_MONTHLY_TAKE_HOME .
  methods CONSTRUCTOR
    importing
      !LV_ANNUALINCOME type P .
protected section.
private section.
ENDCLASS.



CLASS ZCL_ABAPGIT_PARALLELDEV IMPLEMENTATION.


  method CALCULATE_INCOMETAX.
    incometax = annualincome * '0.32' .
  endmethod.


  method CALCULATE_MONTHLY_TAKE_HOME.
    monthlytakehome = ( annualincome - incometax ) / 12 .
  endmethod.


  method CONSTRUCTOR.
    annualincome = lv_annualincome.
    call METHOD CALCULATE_INCOMETAX.
    call method calculate_monthly_take_home.
  endmethod.
ENDCLASS.
