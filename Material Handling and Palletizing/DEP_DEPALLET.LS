/PROG  DEP_DEPALLET
/ATTR
OWNER		= ASCBIN;
COMMENT		= "";
PROG_SIZE	= 1893;
CREATE		= DATE 25-01-16  TIME 16:07:40;
MODIFIED	= DATE 25-01-23  TIME 21:12:18;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 49;
MEMORY_SIZE	= 2353;
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
Palletizing[1];
	CONFIG:
		PALLETIZING-B_1 "" ;
		TYPE = 	DEPALLET ;
		INCR = 	1 ;
		PAL REG   = 	1 ;
		ORDER  = 	RCL ;
		ROWS    = 	[1] ;
		COLUMNS = 	[1] ;
		LAYERS  = 	[9] ;
		AUXILIARY POS = [NO ] ;
		APPR = 1 ;
		RTRT = 1 ;
	BOTTOM:
		P [1,1,1]{
		     GP1:
			 UF : 0, UT : 5,    CONFIG : 'N U T, 0, 0, 0',
			 X =  410.830  mm,  Y = -178.529  mm,  Z = -314.100  mm,
			 W = -179.996 deg,  P =     .007 deg,  R =   17.851 deg
		};
		P [1,1,9]{
		     GP1:
			 UF : 0, UT : 5,    CONFIG : 'N U T, 0, 0, 0',
			 X =  410.811  mm,  Y = -178.521  mm,  Z = -287.294  mm,
			 W = -179.994 deg,  P =     .010 deg,  R =   17.851 deg
		};
	ROUTE:
		   P [A_1]{
		     GP1:
			 UF : 0, UT : 5,    CONFIG : 'N U T, 0, 0, 0',
			 X =  410.811  mm,  Y = -178.521  mm,  Z = -258.254  mm,
			 W = -179.994 deg,  P =     .010 deg,  R =   17.851 deg
		   };
		   P [BTM]{
		     GP1:
			 UF : 0, UT : 5,    CONFIG : 'N U T, 0, 0, 0',
			 X =  410.811  mm,  Y = -178.521  mm,  Z = -281.534  mm,
			 W = -179.994 deg,  P =     .010 deg,  R =   17.851 deg
		   };
		   P [R_1]{
		     GP1:
			 UF : 0, UT : 5,    CONFIG : 'N U T, 0, 0, 0',
			 X =  410.811  mm,  Y = -178.521  mm,  Z = -258.254  mm,
			 W = -179.994 deg,  P =     .010 deg,  R =   17.851 deg
		   };
/APPL
/MN

   6:  !****************************** ;
   7:  ! DEPALLETIZING PROGRAM ;
   8:  !****************************** ;
   9:  LBL[1] ;
  10:  PALLETIZING-B_1 ;
  11:J PAL_1[A_1] 70% CNT50    ;
  12:L PAL_1[BTM] 100mm/sec FINE    ;
  13:  CALL GRASP(10,10) ;
  14:  CALL CHECK_VACUUM(10,10) ;
  15:  WAIT (F[14]=ON AND F[15]=ON) TIMEOUT,LBL[5] ;
  16:  LBL[2] ;
  17:  SKIP CONDITION GI[47]<5 OR GI[48]<5    ;
  18:L PAL_1[R_1] 300mm/sec CNT50 Skip,LBL[3]    ;
  19:  JMP LBL[6] ;
  20:  LBL[3] ;
  21:  PALLETIZING-END_1 ;
  22:  JMP LBL[999] ;
  : ! ;
  : ! ;
  : ! ;
  23:  LBL[5] ;
  24:  UALM[1] ;
  25:  R[6:REJECT COUNTER]=R[6:REJECT COUNTER]+1    ;
  26:  IF R[6:REJECT COUNTER]>=4,JMP LBL[666] ;
  27:  CALL RELEASE(0,0) ;
  28:  CALL GRASP(10,10) ;
  29:  CALL CHECK_VACUUM(10,10) ;
  30:  WAIT (F[14]=ON AND F[15]=ON) TIMEOUT,LBL[5] ;
  31:  R[6:REJECT COUNTER]=0    ;
  32:  JMP LBL[2] ;
  : ! ;
  : ! ;
  : ! ;
  33:  LBL[6] ;
  34:  UALM[1] ;
  35:  R[6:REJECT COUNTER]=R[6:REJECT COUNTER]+1    ;
  36:  IF R[6:REJECT COUNTER]>=3,JMP LBL[666] ;
  37:  CALL RELEASE(0,0) ;
  38:  JMP LBL[1] ;
  : ! ;
  : ! ;
  : ! ;
  39:  LBL[666] ;
  40:  R[6:REJECT COUNTER]=0    ;
  41:  CALL RELEASE(0,0) ;
  42:  DO[122]=OFF ;
  43:  DO[123]=OFF ;
  44:  DO[125]=ON ;
  45:  GO[13]=2 ;
  46:  UALM[2] ;
  47:  ABORT ;
  : ! ;
  : ! ;
  : ! ;
  48:  LBL[999] ;
  49:  R[6] = 0    ;
/POS
/END
