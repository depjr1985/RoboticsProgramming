/PROG  DEP_MHP1DOW
/ATTR
OWNER		= ASCBIN;
COMMENT		= "";
PROG_SIZE	= 757;
CREATE		= DATE 25-02-20  TIME 21:30:12;
MODIFIED	= DATE 25-02-20  TIME 21:44:34;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 12;
MEMORY_SIZE	= 1089;
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
   5:L P[1] 250mm/sec CNT50    ;
   6:L P[2] 250mm/sec CNT50    ;
   7:L P[3] 250mm/sec FINE    ;
   8:  CALL RELEASE(75,40) ;
   9:  R[2:PALLET COUNT]=R[2:PALLET COUNT]+1    ;
  10:  GO[15]=R[2:PALLET COUNT] ;
  11:L P[2] 250mm/sec CNT50    ;
  12:L P[1] 250mm/sec CNT50    ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   461.160  mm,	Y =  -391.201  mm,	Z =  -175.200  mm,
	W =  -180.000 deg,	P =     0.000 deg,	R =    17.000 deg
};
P[2]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   461.160  mm,	Y =  -391.201  mm,	Z =  -234.720  mm,
	W =  -180.000 deg,	P =     0.000 deg,	R =    17.000 deg
};
P[3]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   461.160  mm,	Y =  -391.201  mm,	Z =  -267.360  mm,
	W =  -180.000 deg,	P =     0.000 deg,	R =    17.000 deg
};
/END
