/PROG  DEP_MHP3PU
/ATTR
OWNER		= ASCBIN;
COMMENT		= "";
PROG_SIZE	= 2086;
CREATE		= DATE 25-03-06  TIME 17:32:46;
MODIFIED	= DATE 25-03-20  TIME 21:21:22;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 84;
MEMORY_SIZE	= 2622;
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
   7:  LBL[10] ;
   8:J P[1] 70% CNT50    ;
   9:L P[2] 500mm/sec CNT50    ;
  10:L P[3] 100mm/sec FINE    ;
  11:  ! ;
  12:  ! WIDE PART CHECK ;
  13:  ! ;
  14:  LBL[5] ;
  15:  CALL GRASP(50,40) ;
  16:  CALL CHECK_CLOSED(50) ;
  17:  //WAIT (F[12]=ON)    ;
  18:  WAIT   1.00(sec) ;
  19:  IF (F[12]=OFF) THEN ;
  20:  GO[12]=2 ;
  21:  CALL DEP_MHERROR    ;
  22:  JMP LBL[5] ;
  23:  ENDIF ;
  24:  CALL CHECK_FORCE    ;
  25:  WAIT   1.00(sec) ;
  26:  IF (F[13]=ON) THEN ;
  27:  GO[11]=1 ;
  28:L P[2] 100mm/sec CNT50    ;
  29:J P[1] 70% CNT50    ;
  30:  R[1:DEPALL COUNT]=R[1:DEPALL COUNT]-1    ;
  31:  GO[14]=R[1:DEPALL COUNT] ;
  32:  LBL[1] ;
  33:  SELECT R[2:PALLET COUNT]=0,CALL DEP_MHP1DOW ;
  34:         =1,CALL DEP_MHP2DOW ;
  35:         =2,CALL DEP_MHP3DOW ;
  36:         =3,JMP LBL[2] ;
  37:  JMP LBL[999] ;
  38:  LBL[2] ;
  39:  CALL DEP_MHNPFW    ;
  40:  JMP LBL[1] ;
  41:  ENDIF ;
  42:  ! ;
  43:  ! NARROW PART CHECK ;
  44:  ! ;
  45:L P[4] 100mm/sec FINE INC    ;
  46:  CALL GRASP(35,40) ;
  47:  CALL CHECK_CLOSED(35) ;
  48:  //WAIT (F[12]=ON)    ;
  49:  WAIT   1.00(sec) ;
  50:  IF (F[12]=OFF) THEN ;
  51:  GO[12]=2 ;
  52:  CALL DEP_MHERROR    ;
  53:  JMP LBL[5] ;
  54:  ENDIF ;
  55:  CALL CHECK_FORCE    ;
  56:  WAIT   1.00(sec) ;
  57:  IF (F[13]=ON) THEN ;
  58:  GO[11]=2 ;
  59:L P[2] 100mm/sec CNT50    ;
  60:J P[1] 70% CNT50    ;
  61:  R[1:DEPALL COUNT]=R[1:DEPALL COUNT]-1    ;
  62:  GO[14]=R[1:DEPALL COUNT] ;
  63:  LBL[3] ;
  64:  SELECT R[3:NP COUNT]=0,CALL DEP_MHP1DON ;
  65:         =1,CALL DEP_MHP2DON ;
  66:         =2,CALL DEP_MHP3DON ;
  67:         =3,JMP LBL[4] ;
  68:  JMP LBL[999] ;
  69:  LBL[4] ;
  70:  CALL DEP_MHNPFN    ;
  71:  JMP LBL[3] ;
  72:  ENDIF ;
  73:  ! ;
  74:  ! NO PART DETECTED ;
  75:  ! ;
  76:  GO[11]=3 ;
  77:  R[10:Suppress messags]=R[10:Suppress messags]+1    ;
  78:  IF (R[10:Suppress messags]>=3) THEN ;
  79:J P[1] 100% FINE    ;
  80:  CALL DEP_MHNPFP    ;
  81:  CALL RELEASE(75,40) ;
  82:  JMP LBL[10] ;
  83:  ENDIF ;
  84:  LBL[999] ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =    57.452  mm,	Y =   198.510  mm,	Z =   267.941  mm,
	W =  -179.709 deg,	P =     1.936 deg,	R =    20.002 deg
};
P[2]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =    60.391  mm,	Y =   198.664  mm,	Z =   233.983  mm,
	W =  -179.709 deg,	P =     1.936 deg,	R =    20.002 deg
};
P[3]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =    57.588  mm,	Y =   199.099  mm,	Z =   150.751  mm,
	W =  -179.709 deg,	P =     1.936 deg,	R =    20.002 deg
};
P[4]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =    -6.350  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
/END
