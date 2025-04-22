/PROG  DEP_SPOT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 3195;
CREATE		= DATE 25-03-13  TIME 14:45:05;
MODIFIED	= DATE 25-03-13  TIME 17:36:20;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 52;
MEMORY_SIZE	= 3455;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,1,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
  SPOT : TRUE ; 
  SPOT Welding Equipment Number : 1 ;
/MN
   1:  TIMER[1]=RESET ;
   2:  TIMER[1]=START ;
   3:  !Motion To Ready ;
   4:J P[1] 100% FINE    ;
   5:  !Begin Weld ;
   6:J P[2] 100% CNT20    ;
   7:  !Weld 18GA ;
   8:L P[3] 1500mm/sec FINE
    :  SPOT[P=1,S=1,BU=1]    ;
   9:L P[2] 2000mm/sec CNT100    ;
  10:L P[4] 2000mm/sec CNT100    ;
  11:L P[5] 2000mm/sec CNT50    ;
  12:  !Weld 22GA ;
  13:L P[6] 1500mm/sec FINE
    :  SPOT[P=3,S=3,BU=1]    ;
  14:L P[7] 2000mm/sec CNT100    ;
  15:L P[8] 2000mm/sec CNT100    ;
  16:  !Weld 20GA ;
  17:L P[9] 1500mm/sec FINE
    :  SPOT[P=2,S=2,BU=1]    ;
  18:L P[10] 2000mm/sec CNT100    ;
  19:L P[11] 2000mm/sec CNT100    ;
  20:L P[12] 2000mm/sec CNT100    ;
  21:  !Weld 22GA ;
  22:L P[13] 1500mm/sec FINE
    :  SPOT[P=3,S=3,BU=1]    ;
  23:L P[12] 2000mm/sec CNT100    ;
  24:L P[14] 2000mm/sec CNT100    ;
  25:  !Weld 22GA ;
  26:L P[15] 1500mm/sec FINE
    :  SPOT[P=3,S=3,BU=1]    ;
  27:L P[14] 2000mm/sec CNT100    ;
  28:L P[16] 2000mm/sec CNT100    ;
  29:L P[17] 2000mm/sec CNT100    ;
  30:L P[18] 2000mm/sec CNT100    ;
  31:  !Weld 20GA ;
  32:L P[19] 1500mm/sec FINE
    :  SPOT[P=2,S=2,BU=1]    ;
  33:L P[18] 2000mm/sec CNT100    ;
  34:L P[20] 2000mm/sec CNT100    ;
  35:  !Weld 18GA ;
  36:L P[21] 1500mm/sec FINE
    :  SPOT[P=1,S=1,BU=1]    ;
  37:L P[20] 2000mm/sec CNT100    ;
  38:L P[22] 2000mm/sec CNT100    ;
  39:L P[23] 2000mm/sec CNT100    ;
  40:L P[24] 2000mm/sec CNT100    ;
  41:L P[25] 2000mm/sec CNT100    ;
  42:  !Weld 18GA ;
  43:L P[26] 1500mm/sec FINE
    :  SPOT[P=1,S=1,BU=1]    ;
  44:L P[25] 2000mm/sec CNT100    ;
  45:L P[27] 2000mm/sec CNT100    ;
  46:  !Weld 20GA ;
  47:L P[28] 1500mm/sec FINE
    :  SPOT[P=2,S=2,BU=1]    ;
  48:L P[27] 2000mm/sec CNT100    ;
  49:L P[29] 2000mm/sec CNT100    ;
  50:L P[1] 2000mm/sec FINE    ;
  51:  TIMER[1]=STOP ;
  52:  R[1]=TIMER[1]    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  1251.873  mm,	Y = -1107.160  mm,	Z =   708.499  mm,
	W =     1.281 deg,	P =    -3.343 deg,	R =   -85.931 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -64.305  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  2029.636  mm,	Y = -1492.732  mm,	Z =   458.069  mm,
	W =     1.282 deg,	P =    -3.343 deg,	R =   -85.931 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -64.303  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  2029.373  mm,	Y = -1541.518  mm,	Z =   477.267  mm,
	W =     1.281 deg,	P =    -3.343 deg,	R =   -85.931 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -64.303  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  1774.793  mm,	Y = -1269.355  mm,	Z =   438.552  mm,
	W =     1.278 deg,	P =    -3.340 deg,	R =   -85.930 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -64.303  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  1497.992  mm,	Y = -1541.653  mm,	Z =   460.284  mm,
	W =     1.278 deg,	P =    -3.341 deg,	R =   -85.930 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -64.303  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  1496.947  mm,	Y = -1539.452  mm,	Z =   499.199  mm,
	W =     1.275 deg,	P =    -3.338 deg,	R =   -85.931 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -64.303  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  1148.427  mm,	Y = -1283.652  mm,	Z =   459.684  mm,
	W =     1.269 deg,	P =    -3.332 deg,	R =   -85.926 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -64.274  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =   876.925  mm,	Y = -1551.486  mm,	Z =   464.285  mm,
	W =     1.283 deg,	P =   -12.792 deg,	R =   -85.821 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -64.303  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =   876.851  mm,	Y = -1555.560  mm,	Z =   482.183  mm,
	W =     1.283 deg,	P =   -12.792 deg,	R =   -85.822 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -64.303  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =   831.205  mm,	Y = -1480.548  mm,	Z =   451.616  mm,
	W =     1.281 deg,	P =   -12.789 deg,	R =   -85.821 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -64.299  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =   863.538  mm,	Y = -1401.159  mm,	Z =   956.752  mm,
	W =   -46.803 deg,	P =   -12.786 deg,	R =   -85.819 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -64.299  mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =   877.360  mm,	Y = -1537.208  mm,	Z =  1002.882  mm,
	W =   -46.805 deg,	P =   -12.783 deg,	R =   -85.819 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -64.299  mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =   902.171  mm,	Y = -1529.949  mm,	Z =  1026.208  mm,
	W =   -44.355 deg,	P =   -14.007 deg,	R =   -84.413 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -64.299  mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  1125.802  mm,	Y = -1545.988  mm,	Z =   845.107  mm,
	W =   -42.468 deg,	P =   -14.004 deg,	R =   -84.413 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -64.299  mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  1143.808  mm,	Y = -1539.291  mm,	Z =   864.722  mm,
	W =   -39.807 deg,	P =   -14.000 deg,	R =   -84.413 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -64.299  mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  1189.977  mm,	Y = -1544.509  mm,	Z =   815.454  mm,
	W =   -39.805 deg,	P =   -13.997 deg,	R =   -84.414 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -64.298  mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  1377.834  mm,	Y = -1560.575  mm,	Z =  1014.984  mm,
	W =   -33.386 deg,	P =   -17.910 deg,	R =   -81.771 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -64.298  mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  1428.683  mm,	Y = -1560.466  mm,	Z =   992.717  mm,
	W =   -33.390 deg,	P =   -17.905 deg,	R =   -81.770 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -64.297  mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  1436.132  mm,	Y = -1555.605  mm,	Z =  1004.254  mm,
	W =   -33.392 deg,	P =   -17.903 deg,	R =   -81.770 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -64.297  mm
};
P[20]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  1195.224  mm,	Y = -1558.147  mm,	Z =  1114.119  mm,
	W =   -37.155 deg,	P =   -17.902 deg,	R =   -81.769 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -64.297  mm
};
P[21]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  1203.235  mm,	Y = -1553.459  mm,	Z =  1124.917  mm,
	W =   -37.155 deg,	P =   -17.901 deg,	R =   -81.769 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -64.297  mm
};
P[22]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  1184.298  mm,	Y = -1482.516  mm,	Z =  1089.342  mm,
	W =   -37.155 deg,	P =   -17.899 deg,	R =   -81.769 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -64.297  mm
};
P[23]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  1370.877  mm,	Y = -1446.675  mm,	Z =  1091.030  mm,
	W =     8.044 deg,	P =   -24.047 deg,	R =   -90.029 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -64.297  mm
};
P[24]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  1706.036  mm,	Y = -1386.865  mm,	Z =  1144.044  mm,
	W =    91.544 deg,	P =    -4.930 deg,	R =   -89.817 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -64.296  mm
};
P[25]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  1710.690  mm,	Y = -1556.667  mm,	Z =  1148.762  mm,
	W =    91.544 deg,	P =    -4.930 deg,	R =   -89.816 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -64.296  mm
};
P[26]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  1697.980  mm,	Y = -1556.742  mm,	Z =  1148.239  mm,
	W =    91.539 deg,	P =    -4.928 deg,	R =   -89.815 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -64.296  mm
};
P[27]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  1716.856  mm,	Y = -1553.532  mm,	Z =   918.510  mm,
	W =    91.541 deg,	P =    -4.929 deg,	R =   -89.816 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -64.295  mm
};
P[28]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  1706.781  mm,	Y = -1553.587  mm,	Z =   918.240  mm,
	W =    91.541 deg,	P =    -4.929 deg,	R =   -89.816 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -64.295  mm
};
P[29]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  1716.649  mm,	Y = -1500.252  mm,	Z =   914.956  mm,
	W =    81.827 deg,	P =    -4.929 deg,	R =   -89.816 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -64.295  mm
};
/END
