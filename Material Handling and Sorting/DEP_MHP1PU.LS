/PROG  DEP_MHP1PU
/ATTR
OWNER		= ASCBIN;
COMMENT		= "";
PROG_SIZE	= 1752;
CREATE		= DATE 25-02-20  TIME 18:38:06;
MODIFIED	= DATE 25-03-06  TIME 21:20:04;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 64;
MEMORY_SIZE	= 2352;
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
  24:  GO[14]=R[1:DEPALL COUNT] ;
  25:  LBL[1] ;
  26:  SELECT R[2:PALLET COUNT]=0,CALL DEP_MHP1DOW ;
  27:         =1,CALL DEP_MHP2DOW ;
  28:         =2,CALL DEP_MHP3DOW ;
  29:         =3,JMP LBL[2] ;
  30:  JMP LBL[999] ;
  31:  LBL[2] ;
  32:  CALL DEP_MHNPFW    ;
  33:  JMP LBL[1] ;
  34:  ENDIF ;
  35:  ! ;
  36:  ! NARROW PART CHECK ;
  37:  ! ;
  38:L P[4] 100mm/sec FINE INC    ;
  39:  CALL GRASP(35,40) ;
  40:  CALL CHECK_CLOSED(35) ;
  41:  WAIT (F[12]=ON)    ;
  42:  CALL CHECK_FORCE    ;
  43:  WAIT   1.00(sec) ;
  44:  IF (F[13]=ON) THEN ;
  45:  GO[11]=2 ;
  46:L P[2] 100mm/sec CNT50    ;
  47:J P[1] 70% CNT50    ;
  48:  R[1:DEPALL COUNT]=R[1:DEPALL COUNT]-1    ;
  49:  GO[14]=R[1:DEPALL COUNT] ;
  50:  LBL[3] ;
  51:  SELECT R[3:NP COUNT]=0,CALL DEP_MHP1DON ;
  52:         =1,CALL DEP_MHP2DON ;
  53:         =2,CALL DEP_MHP3DON ;
  54:         =3,JMP LBL[4] ;
  55:  JMP LBL[999] ;
  56:  LBL[4] ;
  57:  CALL DEP_MHNPFN    ;
  58:  JMP LBL[3] ;
  59:  ENDIF ;
  60:  ! ;
  61:  ! NO PART DETECTED ;
  62:  ! ;
  63:  GO[11]=3 ;
  64:  LBL[999] ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   525.000  mm,	Y =   -90.240  mm,	Z =   167.040  mm,
	W =  -180.000 deg,	P =      .000 deg,	R =    17.000 deg
};
P[2]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   554.586  mm,	Y =   -93.664  mm,	Z =    86.633  mm,
	W =  -180.000 deg,	P =      .000 deg,	R =    17.000 deg
};
P[3]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   554.557  mm,	Y =   -90.727  mm,	Z =    11.508  mm,
	W =  -179.999 deg,	P =      .001 deg,	R =    17.000 deg
};
P[4]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =    -6.350  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
/END
