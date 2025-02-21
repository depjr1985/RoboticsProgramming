/PROG  DEP_MHDSMAIN
/ATTR
OWNER		= ASCBIN;
COMMENT		= "";
PROG_SIZE	= 2850;
CREATE		= DATE 25-02-06  TIME 17:08:24;
MODIFIED	= DATE 25-02-20  TIME 21:42:38;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 102;
MEMORY_SIZE	= 3370;
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
   1:  !****************************** ;
   2:  !	DATA REFERENCES ;
   3:  !****************************** ;
   4:  !	INPUTS ;
   5:  !	DI[121] - RESUME FROM ERROR ;
   6:  !	DI[122] - RESUME REINITIALIZE ;
   7:  !	DI[123] - NEW PICK FIXTURE RECI ;
   8:  !	DI[124] - NEW WIDE FIXTURE RECI ;
   9:  !	DI[125] - NEW NARROW FIXTURE RE ;
  10:  !	DI[126] - ERROR RESET ;
  11:  ! ;
  12:  ! ;
  13:  !	OUTPUTS ;
  14:  !	DO[121] - IN CYCLE ;
  15:  !	DO[122] - MAINT ;
  16:  ! ;
  17:  ! ;
  18:  !	MULTI-TASKING FLAGS ;
  19:  !	F[1] - SYNC PICK FIXTURE ;
  20:  !	F[2] - SYNC WIDE FIXTURE ;
  21:  !	F[3] - SYNC NARROW FIXTURE ;
  22:  ! ;
  23:  ! ;
  24:  !	PART ATTEMPT\DETECTED GROUP OUT ;
  25:  !	GO[11] VALUES ;
  26:  !	0 - Not Moving Part ;
  27:  !	1 - Wide Part Attempt/Detected ;
  28:  !	2 - Narrow Part Attempt/Detecte ;
  29:  !	3 - No Part Detected ;
  30:  ! ;
  31:  ! ;
  32:  !	ERROR CODE GROUP OUTPUT ;
  33:  !	GO[12]	VALUES ;
  34:  !	0 - No Error ;
  35:  !	1 - Open Fail ;
  36:  !	2 - Close Fail ;
  37:  !	3 - Release Fail ;
  38:  ! ;
  39:  ! ;
  40:  !	GO[13] VALUES ;
  41:  !	0 - No Active Pallet Request ;
  42:  !	1 - Fixture Part Pickup Request ;
  43:  !	2 - Fixture Wide Part Request ;
  44:  !	3 - Fixture Narrow Part Request ;
  45:  ! ;
  46:  ! ;
  47:  !	FIXTURE COUNT GROUP OUTPUTS ;
  48:  !	GO[14] - PICK FIXTURE ;
  49:  !	GO[15] - WIDE FIXTURE ;
  50:  !	GO[16] - NARROW FIXTURE ;
  51:  ! ;
  52:  ! ;
  53:  !	REGISTERS ;
  54:  !	R[1] - PICK PART FIXTURE COUNT ;
  55:  !	R[2] - WIDE PART FIXTURE COUNT ;
  56:  !	R[3] - NARROW PART FIXTURE COUN ;
  57:  !	R[4] - INITIAL START ;
  58:  ! ;
  59:  ! ;
  60:  !	POSITIONS ;
  61:  !	P[1] READY ;
  62:  !	P[2] STAGE ;
  63:  ! ;
  64:  ! ;
  65:  !	LBL[111] INITIALIZE ;
  66:  !	LBL[777] RESTART INPUT LOOP ;
  67:  !	LBL[999] END OF PROGRAM ;
  68:  ! ;
  69:  ! ;
  70:  !****************************** ;
  71:  !	END DATA REFERENCES ;
  72:  !****************************** ;
  73:  ! ;
  74:  ! ;
  75:  LBL[111] ;
  76:  IF (R[4:INITIAL START]=0) THEN ;
  77:  CALL DEP_MHDSINIT    ;
  78:  ENDIF ;
  79:  ! ;
  80:  ! ;
  81:  IF (GO[12]<>0) THEN ;
  82:  LBL[777] ;
  83:  IF DI[121]=ON,JMP LBL[777] ;
  84:  IF DI[122]=ON,JMP LBL[111] ;
  85:  JMP LBL[777] ;
  86:  ENDIF ;
  87:  ! ;
  88:  ! ;
  89:  LBL[1] ;
  90:  DO[121]=ON ;
  91:J P[1] 100% FINE    ;
  92:J P[2] 100% FINE    ;
  93:  GO[11]=0 ;
  94:  SELECT R[1:DEPALL COUNT]=3,CALL DEP_MHP1PU ;
  95:         =2,CALL DEP_MHP2PU ;
  96:         =1,CALL DEP_MHP3PU ;
  97:         =0,CALL DEP_MHNPFP ;
  98:         ELSE,JMP LBL[999] ;
  99:  ! ;
 100:  ! ;
 101:  LBL[999] ;
 102:  JMP LBL[111] ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   525.000  mm,	Y =     0.000  mm,	Z =     0.000  mm,
	W =  -180.000 deg,	P =     0.000 deg,	R =    17.000 deg
};
P[2]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   525.000  mm,	Y =     -.000  mm,	Z =  -120.000  mm,
	W =   180.000 deg,	P =      .000 deg,	R =    17.000 deg
};
/END
