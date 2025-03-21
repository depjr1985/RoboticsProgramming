/PROG  DEP_MHP1DON
/ATTR
OWNER		= ASCBIN;
COMMENT		= "";
PROG_SIZE	= 905;
CREATE		= DATE 25-03-06  TIME 17:31:24;
MODIFIED	= DATE 25-03-20  TIME 20:29:26;
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
  18:  R[3:NP COUNT]=R[3:NP COUNT]+1    ;
  19:  GO[16]=R[3:NP COUNT] ;
  20:L P[2] 250mm/sec CNT50    ;
  21:L P[1] 250mm/sec CNT50    ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =     9.497  mm,	Y =   321.731  mm,	Z =   257.208  mm,
	W =  -179.709 deg,	P =     1.940 deg,	R =    20.005 deg
};
P[2]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =     8.770  mm,	Y =   321.844  mm,	Z =   235.620  mm,
	W =  -179.709 deg,	P =     1.940 deg,	R =    20.005 deg
};
P[3]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =     5.990  mm,	Y =   324.677  mm,	Z =   152.641  mm,
	W =  -179.709 deg,	P =     1.940 deg,	R =    20.005 deg
};
/END
