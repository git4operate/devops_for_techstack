*&---------------------------------------------------------------------*
*& Report ZGITOPERATE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zgitoperate.

WRITE :/2 ' This is first program from GIToperate'.

WRITE :/2 ' Seciond line of code'.

WRITE :/2 ' Add one more line of code '.

SELECT matnr FROM Mara into @data(lt_matnr) where ernam = 'rhawa' .
ENDSELECT.
"
WRITE :/2 ' Code check should succeed '.
*TEST
*xyz
*
*heloo
*whoa re
