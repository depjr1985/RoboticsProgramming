/PROG  DEP_PALLET
/ATTR
OWNER		= ASCBIN;
COMMENT		= "";
PROG_SIZE	= 1669;
CREATE		= DATE 25-01-16  TIME 16:06:44;
MODIFIED	= DATE 25-01-30  TIME 21:54:22;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 41;
MEMORY_SIZE	= 2161;
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
Palletizing[2];
	CONFIG:
		PALLETIZING-B_2 "" ;
		TYPE = 	PALLET   ;
		INCR = 	1 ;
		PAL REG   = 	2 ;
		ORDER  = 	RCL ;
		ROWS    = 	[3] ;
		COLUMNS = 	[3] ;
		LAYERS  = 	[1] ;
		AUXILIARY POS = [NO ] ;
		APPR = 1 ;
		RTRT = 1 ;
	BOTTOM:
		P [1,1,1]{
		     GP1:
			 UF : 0, UT : 5,    CONFIG : 'N U T, 0, 0, 0',
			 X =  410.832  mm,  Y =  -17.031  mm,  Z = -306.416  mm,
			 W = -179.997 deg,  P =     .006 deg,  R =   17.851 deg
		};
		P [3,1,1]{
		     GP1:
			 UF : 0, UT : 5,    CONFIG : 'N U T, 0, 0, 0',
			 X =  582.913  mm,  Y =  -17.031  mm,  Z = -301.136  mm,
			 W = -179.997 deg,  P =     .006 deg,  R =   17.851 deg
		};
		P [1,3,1]{
		     GP1:
			 UF : 0, UT : 5,    CONFIG : 'N U T, 0, 0, 0',
			 X =  411.213  mm,  Y =  158.268  mm,  Z = -307.616  mm,
			 W = -179.997 deg,  P =     .006 deg,  R =   17.851 deg
		};
	ROUTE:
		   P [A_1]{
		     GP1:
			 UF : 0, UT : 5,    CONFIG : 'N U T, 0, 0, 0',
			 X =  411.933  mm,  Y =  -16.453  mm,  Z = -294.897  mm,
			 W = -179.997 deg,  P =     .006 deg,  R =   17.851 deg
		   };
		   P [BTM]{
		     GP1:
			 UF : 0, UT : 5,    CONFIG : 'N U T, 0, 0, 0',
			 X =  411.933  mm,  Y =  -16.452  mm,  Z = -308.336  mm,
			 W = -179.997 deg,  P =     .006 deg,  R =   17.851 deg
		   };
		   P [R_1]{
		     GP1:
			 UF : 0, UT : 5,    CONFIG : 'N U T, 0, 0, 0',
			 X =  411.933  mm,  Y =  -16.453  mm,  Z = -294.897  mm,
			 W = -179.997 deg,  P =     .006 deg,  R =   17.851 deg
		   };
/APPL
/MN
   1:  !****************************** ;
   2:  ! PALLETIZING PROGRAM ;
   3:  !****************************** ;
   4:  LBL[1] ;
   5:  PALLETIZING-B_2 ;
   6:J PAL_2[A_1] 70% CNT50    ;
   7:L PAL_2[BTM] 100mm/sec FINE    ;
   8:  MONITOR END DEP_CONDMON ;
   9:  LBL[2] ;
  10:  CALL RELEASE(0,0) ;
  11:  CALL CHECK_VACUUM(0,0) ;
  12:  WAIT (F[14]=OFF AND F[15]=OFF) TIMEOUT,LBL[5] ;
  13:L PAL_2[R_1] 200mm/sec CNT50    ;
  14:  PALLETIZING-END_2 ;
  15:  JMP LBL[999] ;
  16:  ! ;
  17:  ! ;
  18:  ! ERROR HANDLING FOR Part Drop-of ;
  19:  LBL[5] ;
  20:  UALM[4] ;
  21:  R[6:REJECT COUNTER]=R[6:REJECT COUNTER]+1    ;
  22:  IF R[6:REJECT COUNTER]>=4,JMP LBL[666] ;
  23:  JMP LBL[2] ;
  24:  ! ;
  25:  ! ;
  26:  ! ABORT DUE TO EXCESS RETRY FAILU ;
  27:  LBL[666] ;
  28:  R[6:REJECT COUNTER]=0    ;
  29:  CALL RELEASE(0,0) ;
  30:  DO[122]=OFF ;
  31:  DO[124]=OFF ;
  32:  DO[125]=ON ;
  33:  R[3:Dropped parts]=5    ;
  34:  GO[13]=R[3:Dropped parts] ;
  35:  UALM[5] ;
  36:  ABORT ;
  37:  ! ;
  38:  ! ;
  39:  ! ;
  40:  LBL[999] ;
  41:  R[6:REJECT COUNTER]=0    ;
/POS
/END
