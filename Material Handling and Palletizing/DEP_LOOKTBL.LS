/PROG  DEP_LOOKTBL
/ATTR
OWNER		= ASCBIN;
COMMENT		= "";
PROG_SIZE	= 580;
CREATE		= DATE 25-01-30  TIME 21:44:36;
MODIFIED	= DATE 25-02-06  TIME 18:19:42;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 24;
MEMORY_SIZE	= 856;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
   1:  IF (R[2:PALLET COUNT]=1) THEN ;
   2:  PL[2]=[2,1,1]    ;
   3:  ENDIF ;
   4:  IF (R[2:PALLET COUNT]=2) THEN ;
   5:  PL[2]=[3,1,1]    ;
   6:  ENDIF ;
   7:  IF (R[2:PALLET COUNT]=3) THEN ;
   8:  PL[2]=[1,2,1]    ;
   9:  ENDIF ;
  10:  IF (R[2:PALLET COUNT]=4) THEN ;
  11:  PL[2]=[2,2,1]    ;
  12:  ENDIF ;
  13:  IF (R[2:PALLET COUNT]=5) THEN ;
  14:  PL[2]=[3,2,1]    ;
  15:  ENDIF ;
  16:  IF (R[2:PALLET COUNT]=6) THEN ;
  17:  PL[2]=[1,3,1]    ;
  18:  ENDIF ;
  19:  IF (R[2:PALLET COUNT]=7) THEN ;
  20:  PL[2]=[2,3,1]    ;
  21:  ENDIF ;
  22:  IF (R[2:PALLET COUNT]=8) THEN ;
  23:  PL[2]=[3,3,1]    ;
  24:  ENDIF ;
/POS
/END
