/PROG  DEP_ACTPROG
/ATTR
OWNER		= ASCBIN;
COMMENT		= "";
PROG_SIZE	= 238;
CREATE		= DATE 25-01-23  TIME 18:21:26;
MODIFIED	= DATE 25-02-06  TIME 18:19:24;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 8;
MEMORY_SIZE	= 578;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
   1:  DO[122]=OFF ;
   2:  DO[124]=OFF ;
   3:  DO[125]=ON ;
   4:  R[3:Dropped parts]=3    ;
   5:  GO[13]=R[3:Dropped parts] ;
   6:  UALM[3] ;
   7:  WAIT   2.00(sec) ;
   8:  ABORT ;
/POS
/END
