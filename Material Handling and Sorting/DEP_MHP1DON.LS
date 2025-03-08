/PROG  DEP_MHP1DON
/ATTR
OWNER		= ASCBIN;
COMMENT		= "";
PROG_SIZE	= 777;
CREATE		= DATE 25-03-06  TIME 17:31:24;
MODIFIED	= DATE 25-03-06  TIME 17:56:26;
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
  11:  R[3:NP COUNT]=R[3:NP COUNT]+1    ;
  12:  GO[16]=R[3:NP COUNT] ;
  13:L P[2] 250mm/sec CNT50    ;
  14:L P[1] 250mm/sec CNT50    ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   489.240  mm,	Y =   212.160  mm,	Z =   166.560  mm,
	W =  -180.000 deg,	P =      .000 deg,	R =    17.000 deg
};
P[2]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   492.600  mm,	Y =   212.160  mm,	Z =    88.560  mm,
	W =  -180.000 deg,	P =      .000 deg,	R =    17.000 deg
};
P[3]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   493.800  mm,	Y =   212.160  mm,	Z =     9.360  mm,
	W =  -180.000 deg,	P =      .000 deg,	R =    17.000 deg
};
/END
