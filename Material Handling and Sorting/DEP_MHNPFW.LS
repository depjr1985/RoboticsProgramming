/PROG  DEP_MHNPFW
/ATTR
OWNER		= ASCBIN;
COMMENT		= "";
PROG_SIZE	= 244;
CREATE		= DATE 25-03-06  TIME 19:52:48;
MODIFIED	= DATE 25-03-06  TIME 20:10:24;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 7;
MEMORY_SIZE	= 588;
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
   1:  F[2]=(ON) ;
   2:  GO[13]=2 ;
   3:  WAIT DI[124]=ON    ;
   4:  GO[13]=0 ;
   5:  R[2:PALLET COUNT]=0    ;
   6:  GO[15]=R[2:PALLET COUNT] ;
   7:  F[2]=(OFF) ;
/POS
/END
