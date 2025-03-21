/PROG  DEP_MHP1DOW
/ATTR
OWNER		= ASCBIN;
COMMENT		= "";
PROG_SIZE	= 905;
CREATE		= DATE 25-02-20  TIME 21:30:12;
MODIFIED	= DATE 25-03-20  TIME 20:28:52;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 21;
MEMORY_SIZE	= 1217;
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
  11:  WAIT   1.00(sec) ;
  12:  CALL CHECK_OPENED(75) ;
  13:  WAIT   1.00(sec) ;
  14:  IF (F[11]=OFF) THEN ;
  15:  GO[12]=3 ;
  16:  CALL DEP_MHERROR    ;
  17:  ENDIF ;
  18:  R[2:PALLET COUNT]=R[2:PALLET COUNT]+1    ;
  19:  GO[15]=R[2:PALLET COUNT] ;
  20:L P[2] 250mm/sec CNT50    ;
  21:L P[1] 250mm/sec CNT50    ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =    14.806  mm,	Y =  -288.088  mm,	Z =   260.267  mm,
	W =  -179.709 deg,	P =     1.936 deg,	R =    20.004 deg
};
P[2]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =    14.146  mm,	Y =  -287.986  mm,	Z =   240.678  mm,
	W =  -179.709 deg,	P =     1.936 deg,	R =    20.004 deg
};
P[3]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =    11.473  mm,	Y =  -287.571  mm,	Z =   161.283  mm,
	W =  -179.709 deg,	P =     1.936 deg,	R =    20.004 deg
};
/END
