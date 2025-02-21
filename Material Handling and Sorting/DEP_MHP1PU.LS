/PROG  DEP_MHP1PU
/ATTR
OWNER		= ASCBIN;
COMMENT		= "";
PROG_SIZE	= 1642;
CREATE		= DATE 25-02-20  TIME 18:38:06;
MODIFIED	= DATE 25-02-20  TIME 21:30:14;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 57;
MEMORY_SIZE	= 2126;
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
   4:  !	P[3] AT PART ;
   5:  ! ;
   6:  ! ;
   7:J P[1] 70% CNT50    ;
   8:L P[2] 500mm/sec CNT50    ;
   9:  CALL RELEASE(75,40) ;
  10:L P[3] 100mm/sec FINE    ;
  11:  ! ;
  12:  ! WIDE PART CHECK ;
  13:  ! ;
  14:  CALL GRASP(50,40) ;
  15:  CALL CHECK_CLOSED(50) ;
  16:  WAIT (F[12]=ON)    ;
  17:  CALL CHECK_FORCE    ;
  18:  WAIT   1.00(sec) ;
  19:  IF (F[13]=ON) THEN ;
  20:  GO[11]=1 ;
  21:L P[2] 100mm/sec CNT50    ;
  22:J P[1] 70% CNT50    ;
  23:  R[1:DEPALL COUNT]=R[1:DEPALL COUNT]-1    ;
  24:  SELECT R[2:PALLET COUNT]=0,CALL DEP_MHP1DOW ;
  25:         =1,CALL DEP_MHP2DOW ;
  26:         =2,CALL DEP_MHP3DOW ;
  27:  JMP LBL[999] ;
  28:  ENDIF ;
  29:  ! ;
  30:  ! NARROW PART CHECK ;
  31:  ! ;
  32:L P[4] 100mm/sec FINE INC    ;
  33:  CALL GRASP(35,40) ;
  34:  CALL CHECK_CLOSED(35) ;
  35:  WAIT (F[12]=ON)    ;
  36:  CALL CHECK_FORCE    ;
  37:  WAIT   1.00(sec) ;
  38:  IF (F[13]=ON) THEN ;
  39:  GO[11]=2 ;
  40:L P[2] 100mm/sec CNT50    ;
  41:J P[1] 70% CNT50    ;
  42:  R[1:DEPALL COUNT]=R[1:DEPALL COUNT]-1    ;
  43:  GO[14]=R[1:DEPALL COUNT] ;
  44:  SELECT R[2:PALLET COUNT]=0,CALL DEP_MHP1DON ;
  45:         =1,CALL DEP_MHP2DON ;
  46:         =2,CALL DEP_MHP3DON ;
  47:  JMP LBL[999] ;
  48:  ENDIF ;
  49:  ! ;
  50:  ! NO PART DETECTED ;
  51:  ! ;
  52:  GO[11]=3 ;

  57:  LBL[999] ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   554.520  mm,	Y =   -82.560  mm,	Z =  -177.360  mm,
	W =  -180.000 deg,	P =     0.000 deg,	R =    17.000 deg
};
P[2]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   554.520  mm,	Y =   -82.560  mm,	Z =  -213.840  mm,
	W =  -180.000 deg,	P =     0.000 deg,	R =    17.000 deg
};
P[3]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   554.477  mm,	Y =   -82.559  mm,	Z =  -270.043  mm,
	W =  -179.998 deg,	P =      .006 deg,	R =    17.001 deg
};
P[4]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =    -6.350  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
/END
