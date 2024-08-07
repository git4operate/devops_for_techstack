*&---------------------------------------------------------------------*
*& Report ZFI_PUR_REG
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zfi_pur_reg.
TABLES:mseg.
DATA:IT_FINAL TYPE STANDARD TABLE OF MSEG,
     WA_FINAL TYPE MSEG.

SELECTION-SCREEN:BEGIN OF BLOCK b1.
  SELECT-OPTIONS:S_MBLNR FOR MSEG-MBLNR,
                 s_matnr FOR mseg-matnr,
                 s_bwart FOR mseg-bwart.
  SELECT-OPTIONS:s_bukrs FOR mseg-bukrs  NO INTERVALS NO-EXTENSION.
  SELECT-OPTIONS:s_werks FOR mseg-werks.
  SELECT-OPTIONS:s_lgort FOR mseg-lgort.
  SELECT-OPTIONS:s_budat FOR mseg-budat_mkpf.
SELECTION-SCREEN:END OF BLOCK b1.


START-OF-SELECTION.
SELECT * FROM MSEG
  INTO CORRESPONDING FIELDS OF TABLE @IT_FINAL
WHERE matnr in @s_matnr
AND   bwart in @s_bwart
AND   bukrs in @s_bukrs
AND   WERKS IN @S_WERKS
AND   LGORT IN @S_LGORT
AND   BUDAT_MKPF IN @S_BUDAT.

CALL FUNCTION 'REUSE_ALV_GRID_DISPLAY'
 EXPORTING
*   I_INTERFACE_CHECK                 = ' '
*   I_BYPASSING_BUFFER                = ' '
*   I_BUFFER_ACTIVE                   = ' '
   I_CALLBACK_PROGRAM                = SY-REPID
*   I_CALLBACK_PF_STATUS_SET          = ' '
*   I_CALLBACK_USER_COMMAND           = ' '
*   I_CALLBACK_TOP_OF_PAGE            = ' '
*   I_CALLBACK_HTML_TOP_OF_PAGE       = ' '
*   I_CALLBACK_HTML_END_OF_LIST       = ' '
   I_STRUCTURE_NAME                  = 'MSEG'
*   I_BACKGROUND_ID                   = ' '
*   I_GRID_TITLE                      =
*   I_GRID_SETTINGS                   =
*   IS_LAYOUT                         =
*   IT_FIELDCAT                       =
*   IT_EXCLUDING                      =
*   IT_SPECIAL_GROUPS                 =
*   IT_SORT                           =
*   IT_FILTER                         =
*   IS_SEL_HIDE                       =
*   I_DEFAULT                         = 'X'
   I_SAVE                            = 'X'
*   IS_VARIANT                        =
*   IT_EVENTS                         =
*   IT_EVENT_EXIT                     =
*   IS_PRINT                          =
*   IS_REPREP_ID                      =
*   I_SCREEN_START_COLUMN             = 0
*   I_SCREEN_START_LINE               = 0
*   I_SCREEN_END_COLUMN               = 0
*   I_SCREEN_END_LINE                 = 0
*   I_HTML_HEIGHT_TOP                 = 0
*   I_HTML_HEIGHT_END                 = 0
*   IT_ALV_GRAPHICS                   =
*   IT_HYPERLINK                      =
*   IT_ADD_FIELDCAT                   =
*   IT_EXCEPT_QINFO                   =
*   IR_SALV_FULLSCREEN_ADAPTER        =
*   O_PREVIOUS_SRAL_HANDLER           =
* IMPORTING
*   E_EXIT_CAUSED_BY_CALLER           =
*   ES_EXIT_CAUSED_BY_USER            =
  TABLES
    t_outtab                          = IT_FINAL.
* EXCEPTIONS
*   PROGRAM_ERROR                     = 1
*   OTHERS                            = 2
          .
IF sy-subrc <> 0.
* Implement suitable error handling here
ENDIF.


* This code is added to check sonarcube
*tables : mara.
*select * from mara .
*ENDSELECT.

write :/2 ' Great Code '.
