/PROG  DEP_MHP3DOW
/ATTR
OWNER		= ASCBIN;
COMMENT		= "";
PROG_SIZE	= 777;
CREATE		= DATE 25-03-06  TIME 17:32:42;
MODIFIED	= DATE 25-03-06  TIME 18:48:56;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 14;
MEMORY_SIZE	= 1101;
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
   1:  !	POSITIONS ;
   2:  !	P[1] CLEAR/READY ;
   3:  !	P[2] APPROACH ;
   4:  !	P[3] DROP OFF ;
   5:  ! ;
   6:  ! ;
   7:L P[1] 250mm/sec CNT50    ;
   8:L P[2] 250mm/sec CNT50    ;
   9:L P[3] 250mm/sec FINE    ;
  10:  CALL RELEASE(75,40) ;
  11:  R[2:PALLET COUNT]=R[2:PALLET COUNT]+1    ;
  12:  GO[15]=R[2:PALLET COUNT] ;
  13:L P[2] 250mm/sec CNT50    ;
  14:L P[1] 250mm/sec CNT50    ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   491.401  mm,	Y =  -216.477  mm,	Z =   171.587  mm,
	W =  -180.000 deg,	P =      .001 deg,	R =    17.000 deg
};
P[2]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   492.361  mm,	Y =  -216.957  mm,	Z =    94.307  mm,
	W =  -180.000 deg,	P =      .001 deg,	R =    17.000 deg
};
P[3]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   493.801  mm,	Y =  -220.317  mm,	Z =    16.547  mm,
	W =  -180.000 deg,	P =      .001 deg,	R =    17.000 deg
};
/END
