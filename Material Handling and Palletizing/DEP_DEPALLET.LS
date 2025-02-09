/PROG  DEP_DEPALLET
/ATTR
OWNER		= ASCBIN;
COMMENT		= "";
PROG_SIZE	= 1733;
CREATE		= DATE 25-01-16  TIME 16:07:40;
MODIFIED	= DATE 25-02-06  TIME 20:25:26;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 52;
MEMORY_SIZE	= 2181;
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
   1:  !****************************** ;
   2:  ! DEPALLETIZING PROGRAM ;
   3:  !****************************** ;
   4:  LBL[1] ;
   5:  PALLETIZING-B_1 ;
   6:J PAL_1[A_1] 70% CNT50    ;
   7:L PAL_1[BTM] 100mm/sec FINE    ;
   8:  LBL[2] ;
   9:  CALL GRASP(10,10) ;
  10:  CALL CHECK_VACUUM(10,10) ;
  11:  WAIT (F[14]=ON AND F[15]=ON) TIMEOUT,LBL[5] ;
  12:  SKIP CONDITION GI[47]<5 OR GI[48]<5    ;
  13:L PAL_1[R_1] 300mm/sec CNT50 Skip,LBL[3]    ;
  14:  JMP LBL[6] ;
  15:  LBL[3] ;
  16:  PALLETIZING-END_1 ;
  17:  JMP LBL[999] ;
  18:  ! ;
  19:  ! ;
  20:  ! ;
  21:  LBL[5] ;
  22:  UALM[1] ;
  23:  R[6:RETRY COUNT]=R[6:RETRY COUNT]+1    ;
  24:  IF R[6:RETRY COUNT]>=4,JMP LBL[666] ;
  25:  JMP LBL[2] ;
  26:  ! ;
  27:  ! ;
  28:  ! ;
  29:  LBL[6] ;
  30:  UALM[1] ;
  31:  R[6:RETRY COUNT]=R[6:RETRY COUNT]+1    ;
  32:  IF R[6:RETRY COUNT]>=3,JMP LBL[666] ;
  33:  CALL RELEASE(0,0) ;
  34:  JMP LBL[1] ;
  35:  ! ;
  36:  ! ;
  37:  ! ;
  38:  LBL[666] ;
  39:  R[6:RETRY COUNT]=0    ;
  40:  CALL RELEASE(0,0) ;
  41:  DO[122]=OFF ;
  42:  DO[123]=OFF ;
  43:  DO[125]=ON ;
  44:  R[3:Dropped parts]=2    ;
  45:  GO[13]=R[3:Dropped parts] ;
  46:  UALM[2] ;
  47:  ABORT ;
  48:  ! ;
  49:  ! ;
  50:  ! ;
  51:  LBL[999] ;
  52:  R[6:RETRY COUNT]=0    ;
/POS
/END
