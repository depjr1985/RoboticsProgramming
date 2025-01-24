/PROG  DEP_PALLET
/ATTR
OWNER		= ASCBIN;
COMMENT		= "";
PROG_SIZE	= 1309;
CREATE		= DATE 25-01-16  TIME 16:06:44;
MODIFIED	= DATE 25-01-23  TIME 21:10:52;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 15;
MEMORY_SIZE	= 1637;
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

   6:  !****************************** ;
   7:  ! PALLETIZING PROGRAM ;
   8:  !****************************** ;
  :	LBL[1];
  :	PALLETIZING-B_2 ;
  :	J PAL_2[A_1] 70% CNT50    ;
  :	L PAL_2[BTM] 100mm/sec FINE    ;
  :	MONITOR END DEP_CONDMON ;
  : LBL[2];
  :	CALL RELEASE(0,0) ;
  :	WAIT (F[14]=OFF AND F[15]=OFF) TIMEOUT,LBL[5]	;
  :	L PAL_2[R_1] 200mm/sec CNT50    ;
  :	PALLETIZING-END_2 ;
  :	JMP LBL[999]	;
  :	!	;
  :	!	;
  :	! ERROR HANDLING FOR Part Drop-off Vacuum Failure;
  :	LBL[5]	;
  :	UALM[4]	;
  : R[6] = R[6] + 1	;
  :	IF R[6] >= 4, JMP LBL[666]	;
  :	JMP LBL[2]	;
  :	!	;
  :	!	;
  :	! ABORT DUE TO EXCESS RETRY FAILURE;
  :	LBL[666];
  :	R[6:REJECT COUNTER]=0    ;
  :	CALL RELEASE(0,0) ;
  :	DO[122]=OFF ;
  :	DO[124]=OFF ;
  :	DO[125]=ON ;
  :	GO[13]=5 ;
  :	UALM[5] ;
  :	ABORT ;
  : ! ;
  : ! ;
  : ! ;
  :	LBL[999]	;
  :	R[6] = 0	;

/POS
/END
