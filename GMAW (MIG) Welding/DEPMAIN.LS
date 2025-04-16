/PROG  DEPMAIN
/ATTR
OWNER		= ASCBIN;
COMMENT		= "";
PROG_SIZE	= 5191;
CREATE		= DATE 25-04-10  TIME 19:07:56;
MODIFIED	= DATE 25-04-15  TIME 20:35:36;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 72;
MEMORY_SIZE	= 5539;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;

PLTZ_MODE_HEADER;
 PLTZ_MODE_ENABLE   : FALSE;
 J4TURN  : ZERORAD;
 ORIENT  : DOWNWARDS;
/MN
   1:  CALL WELDSTART    ;
   2:  UTOOL_NUM=1 ;
   3:  UFRAME_NUM=5 ;
   4:J P[1] 100% FINE    ;
   5:L P[2] 250mm/sec FINE
    :  Weld Start[1,2]    ;
   6:L P[3] WELD_SPEED FINE
    :  Weld End[1,2]    ;
   7:J P[4] 100% FINE    ;
   8:L P[5] 250mm/sec FINE    ;
   9:L P[5] 250mm/sec FINE
    :  Weld Start[1,2]    ;
  10:L P[6] WELD_SPEED CNT100    ;
  11:L P[7] WELD_SPEED FINE
    :  Weld End[1,2]    ;
  12:L P[8] 250mm/sec FINE    ;
  13:L P[9] 250mm/sec FINE    ;
  14:L P[10] 250mm/sec FINE    ;
  15:L P[10] 250mm/sec FINE
    :  Weld Start[1,1]    ;
  16:C P[11]    
    :  P[12] WELD_SPEED CNT100    ;
  17:L P[12] WELD_SPEED CNT100    ;
  18:C P[13]    
    :  P[14] WELD_SPEED CNT100    ;
  19:L P[14] WELD_SPEED FINE
    :  Weld End[1,1]    ;
  20:J P[1] 100% FINE    ;
  21:L P[15] 250mm/sec FINE    ;
  22:L P[16] 250mm/sec FINE
    :  Weld Start[1,1]    ;
  23:L P[17] WELD_SPEED CNT100    ;
  24:L P[18] WELD_SPEED FINE
    :  Weld End[1,3]    ;
  25:L P[1] 250mm/sec FINE    ;
  26:L P[19] 250mm/sec FINE
    :  Weld Start[1,2]    ;
  27:L P[20] WELD_SPEED FINE
    :  Weld End[1,2]    ;
  28:L P[1] 250mm/sec FINE    ;
  29:J P[4] 100% FINE    ;
  30:L P[21] 250mm/sec FINE
    :  Weld Start[1,2]    ;
  31:L P[22] WELD_SPEED FINE
    :  Weld End[1,2]    ;
  32:L P[23] 250mm/sec FINE    ;
  33:L P[24] 250mm/sec FINE    ;
  34:L P[25] 250mm/sec FINE
    :  Weld Start[1,1]    ;
  35:L P[26] WELD_SPEED FINE
    :  Weld End[1,1]    ;
  36:L P[27] 250mm/sec FINE    ;
  37:J P[1] 100% FINE    ;
  38:J P[28] 100% FINE    ;
  39:J P[29] 100% FINE    ;
  40:L P[30] 250mm/sec FINE
    :  Weld Start[1,1]    ;
  41:L P[31] WELD_SPEED CNT100    ;
  42:L P[32] WELD_SPEED FINE
    :  Weld End[1,1]    ;
  43:L P[33] 250mm/sec FINE    ;
  44:L P[34] 250mm/sec FINE    ;
  45:J P[1] 100% FINE    ;
  46:J P[27] 100% FINE    ;
  47:J P[35] 100% FINE    ;
  48:L P[36] 250mm/sec FINE    ;
  49:L P[36] 250mm/sec FINE
    :  Weld Start[1,1]    ;
  50:L P[37] WELD_SPEED FINE
    :  Weld End[1,1]    ;
  51:L P[38] 250mm/sec FINE    ;
  52:L P[39] 250mm/sec FINE    ;
  53:L P[40] 250mm/sec FINE    ;
  54:L P[41] 250mm/sec FINE
    :  Weld Start[1,1]    ;
  55:L P[42] WELD_SPEED FINE
    :  Weld End[1,1]    ;
  56:L P[43] 250mm/sec FINE    ;
  57:J P[44] 100% FINE    ;
  58:J P[1] 100% FINE    ;
  59:J P[45] 100% FINE    ;
  60:L P[46] 250mm/sec FINE
    :  Weld Start[1,1]    ;
  61:L P[47] WELD_SPEED FINE
    :  Weld End[1,1]    ;
  62:L P[48] 250mm/sec FINE    ;
  63:J P[49] 100% FINE    ;
  64:L P[50] 250mm/sec FINE    ;
  65:L P[50] 250mm/sec FINE
    :  Weld Start[1,1]    ;
  66:L P[51] WELD_SPEED CNT100    ;
  67:L P[52] WELD_SPEED CNT100    ;
  68:C P[53]    
    :  P[54] WELD_SPEED CNT100    ;
  69:L P[55] WELD_SPEED FINE
    :  Weld End[1,1]    ;
  70:L P[56] 250mm/sec FINE    ;
  71:L P[57] 250mm/sec FINE    ;
  72:  CALL WELDSTART    ;
/POS
P[1]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    54.150818  mm,	Y =   267.477295  mm,	Z =   -87.888145  mm,
	W =     -.157375 deg,	P =   -41.679035 deg,	R =   104.965042 deg
};
P[2]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   148.367920  mm,	Y =    46.393127  mm,	Z =    71.209633  mm,
	W =      .160086 deg,	P =   -52.510704 deg,	R =   150.133591 deg
};
P[3]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    62.746628  mm,	Y =    24.704468  mm,	Z =    72.490196  mm,
	W =      .037289 deg,	P =   -52.001377 deg,	R =    69.619064 deg
};
P[4]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   168.539948  mm,	Y =   -38.034912  mm,	Z =   -73.495766  mm,
	W =   -15.733855 deg,	P =   -56.596565 deg,	R =   -31.814508 deg
};
P[5]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   165.225739  mm,	Y =   -20.152100  mm,	Z =    83.025673  mm,
	W =   -55.475803 deg,	P =   -75.570038 deg,	R =    33.126392 deg
};
P[6]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   165.163849  mm,	Y =   -20.460144  mm,	Z =   147.044296  mm,
	W =   -55.475361 deg,	P =   -75.569702 deg,	R =    33.125992 deg
};
P[7]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   174.664459  mm,	Y =   -17.393616  mm,	Z =   170.210175  mm,
	W =   -17.697680 deg,	P =   -43.239483 deg,	R =    -6.339119 deg
};
P[8]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   240.329163  mm,	Y =   -61.910248  mm,	Z =    94.625092  mm,
	W =   -16.503916 deg,	P =   -43.607304 deg,	R =    -9.940914 deg
};
P[9]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    78.308746  mm,	Y =  -110.230042  mm,	Z =    16.136839  mm,
	W =   -19.208168 deg,	P =   -53.800766 deg,	R =   -35.755959 deg
};
P[10]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    43.000885  mm,	Y =   -16.589172  mm,	Z =    70.727165  mm,
	W =   -10.575777 deg,	P =   -46.234016 deg,	R =   -47.415916 deg
};
P[11]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    62.110550  mm,	Y =     -.593261  mm,	Z =    69.938065  mm,
	W =   -10.394918 deg,	P =   -46.035965 deg,	R =   -14.086587 deg
};
P[12]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    63.870575  mm,	Y =    27.832825  mm,	Z =    70.640671  mm,
	W =    -4.736421 deg,	P =   -35.707855 deg,	R =    27.198805 deg
};
P[13]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    45.399353  mm,	Y =    43.359131  mm,	Z =    91.678711  mm,
	W =     3.555425 deg,	P =   -50.397041 deg,	R =    80.022446 deg
};
P[14]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    23.490158  mm,	Y =    44.848816  mm,	Z =   102.449158  mm,
	W =    -4.238009 deg,	P =   -36.061306 deg,	R =   111.357727 deg
};
P[15]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   162.502319  mm,	Y =   -18.148804  mm,	Z =    55.645370  mm,
	W =    -3.148188 deg,	P =   -34.817101 deg,	R =  -159.788269 deg
};
P[16]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   164.596008  mm,	Y =   -17.550171  mm,	Z =    70.395042  mm,
	W =    -3.148279 deg,	P =   -34.816910 deg,	R =  -159.788101 deg
};
P[17]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   148.611252  mm,	Y =    47.751526  mm,	Z =    68.774750  mm,
	W =   -26.817940 deg,	P =   -32.254864 deg,	R =  -146.457596 deg
};
P[18]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   118.704224  mm,	Y =   149.815430  mm,	Z =   168.018707  mm,
	W =   -26.818722 deg,	P =   -32.254368 deg,	R =  -146.457123 deg
};
P[19]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    19.862427  mm,	Y =    51.083435  mm,	Z =   106.350105  mm,
	W =    41.458981 deg,	P =   -30.933863 deg,	R =    85.110374 deg
};
P[20]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =     2.741943  mm,	Y =   113.666504  mm,	Z =   170.710342  mm,
	W =    40.973171 deg,	P =   -29.848324 deg,	R =    85.506485 deg
};
P[21]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    51.527740  mm,	Y =   -51.458069  mm,	Z =    74.968086  mm,
	W =    -1.997151 deg,	P =   -38.355019 deg,	R =   -72.687881 deg
};
P[22]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   170.455872  mm,	Y =   -21.123291  mm,	Z =    72.552422  mm,
	W =    -1.997376 deg,	P =   -38.355499 deg,	R =   -72.687691 deg
};
P[23]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   178.126801  mm,	Y =   -49.723236  mm,	Z =    41.969727  mm,
	W =    -1.996883 deg,	P =   -38.354557 deg,	R =   -72.688080 deg
};
P[24]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   184.185852  mm,	Y =   -11.930725  mm,	Z =    90.771286  mm,
	W =  -126.460999 deg,	P =   -86.786102 deg,	R =   141.371414 deg
};
P[25]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   170.351837  mm,	Y =   -15.749084  mm,	Z =    90.871849  mm,
	W =  -126.460068 deg,	P =   -86.786171 deg,	R =   141.370483 deg
};
P[26]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   126.632599  mm,	Y =   152.623779  mm,	Z =    93.110825  mm,
	W =   -32.667984 deg,	P =   -85.520348 deg,	R =    46.616776 deg
};
P[27]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   195.504791  mm,	Y =   172.849060  mm,	Z =    92.603943  mm,
	W =   -32.674129 deg,	P =   -85.518517 deg,	R =    46.621502 deg
};
P[28]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -26.008026  mm,	Y =    67.656860  mm,	Z =    91.407303  mm,
	W =    26.739388 deg,	P =   -66.434166 deg,	R =   113.861191 deg
};
P[29]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    14.696442  mm,	Y =    45.785400  mm,	Z =   111.663948  mm,
	W =    68.362076 deg,	P =   -77.743034 deg,	R =    84.562691 deg
};
P[30]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    14.696365  mm,	Y =    45.785461  mm,	Z =   111.663948  mm,
	W =    68.362076 deg,	P =   -77.743034 deg,	R =    84.562706 deg
};
P[31]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    15.015854  mm,	Y =    45.944397  mm,	Z =   161.429474  mm,
	W =    68.363426 deg,	P =   -77.743393 deg,	R =    84.561035 deg
};
P[32]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    15.071289  mm,	Y =    45.971863  mm,	Z =   170.097198  mm,
	W =    40.755264 deg,	P =   -59.366535 deg,	R =   110.191986 deg
};
P[33]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -25.653259  mm,	Y =    34.729126  mm,	Z =   169.178482  mm,
	W =    40.755272 deg,	P =   -59.366627 deg,	R =   110.191925 deg
};
P[34]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -26.448273  mm,	Y =    34.333740  mm,	Z =    45.341614  mm,
	W =    40.752296 deg,	P =   -59.360909 deg,	R =   110.197746 deg
};
P[35]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   146.953461  mm,	Y =   159.515930  mm,	Z =   140.959198  mm,
	W =     -.163740 deg,	P =   -52.963604 deg,	R =    14.272627 deg
};
P[36]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   132.331329  mm,	Y =   155.528259  mm,	Z =   175.446060  mm,
	W =     -.518146 deg,	P =   -43.069427 deg,	R =    14.519439 deg
};
P[37]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   178.892944  mm,	Y =   -13.154663  mm,	Z =   175.685730  mm,
	W =     -.518211 deg,	P =   -43.069405 deg,	R =    14.519491 deg
};
P[38]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   196.472717  mm,	Y =    -8.343872  mm,	Z =   146.372711  mm,
	W =     -.518423 deg,	P =   -43.069328 deg,	R =    14.519638 deg
};
P[39]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   181.254883  mm,	Y =   -50.192596  mm,	Z =   146.603928  mm,
	W =     -.954018 deg,	P =   -43.559750 deg,	R =   -75.931442 deg
};
P[40]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   173.070129  mm,	Y =   -26.715332  mm,	Z =   175.035950  mm,
	W =     -.953972 deg,	P =   -43.559658 deg,	R =   -75.931496 deg
};
P[41]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   173.070129  mm,	Y =   -26.715332  mm,	Z =   175.035950  mm,
	W =     -.953972 deg,	P =   -43.559658 deg,	R =   -75.931496 deg
};
P[42]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    54.726227  mm,	Y =   -57.548492  mm,	Z =   175.894058  mm,
	W =     -.953997 deg,	P =   -43.559612 deg,	R =   -75.931496 deg
};
P[43]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    66.953033  mm,	Y =  -103.036682  mm,	Z =   130.839691  mm,
	W =     -.954088 deg,	P =   -43.560013 deg,	R =   -75.931473 deg
};
P[44]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    65.745132  mm,	Y =  -103.637512  mm,	Z =   -57.315605  mm,
	W =     -.954081 deg,	P =   -43.559982 deg,	R =   -75.931480 deg
};
P[45]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   118.810532  mm,	Y =   146.359192  mm,	Z =   175.800583  mm,
	W =     -.178477 deg,	P =   -42.974274 deg,	R =   139.555267 deg
};
P[46]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   118.810501  mm,	Y =   146.359253  mm,	Z =   175.800430  mm,
	W =     -.178468 deg,	P =   -42.974262 deg,	R =   139.555267 deg
};
P[47]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =     5.707932  mm,	Y =   116.351196  mm,	Z =   175.949905  mm,
	W =     -.134844 deg,	P =   -42.778683 deg,	R =   111.905266 deg
};
P[48]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    -3.884003  mm,	Y =   150.100647  mm,	Z =   138.077591  mm,
	W =     -.134829 deg,	P =   -42.778637 deg,	R =   111.905243 deg
};
P[49]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -18.840179  mm,	Y =    88.110962  mm,	Z =   138.371674  mm,
	W =     -.714725 deg,	P =   -43.218426 deg,	R =  -151.340729 deg
};
P[50]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =      .054260  mm,	Y =   102.343628  mm,	Z =   176.068329  mm,
	W =     -.566996 deg,	P =   -43.207653 deg,	R =  -166.542328 deg
};
P[51]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    15.840546  mm,	Y =    45.153198  mm,	Z =   176.149460  mm,
	W =     -.451750 deg,	P =   -43.178207 deg,	R =  -179.055298 deg
};
P[52]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    15.840561  mm,	Y =    45.153076  mm,	Z =   176.149460  mm,
	W =     -.451753 deg,	P =   -43.178211 deg,	R =  -179.055267 deg
};
P[53]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =     1.722198  mm,	Y =     3.689453  mm,	Z =   177.792480  mm,
	W =     -.596978 deg,	P =   -43.210819 deg,	R =  -163.261520 deg
};
P[54]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    36.433762  mm,	Y =   -20.714172  mm,	Z =   176.418137  mm,
	W =    -1.169243 deg,	P =   -43.020695 deg,	R =   -94.904930 deg
};
P[55]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    36.433762  mm,	Y =   -20.714172  mm,	Z =   176.418137  mm,
	W =    -1.169243 deg,	P =   -43.020695 deg,	R =   -94.904930 deg
};
P[56]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    39.882629  mm,	Y =   -34.368164  mm,	Z =   153.012451  mm,
	W =     -.825764 deg,	P =   -42.255573 deg,	R =   -97.586243 deg
};
P[57]{
   GP1:
	UF : 5, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    21.703857  mm,	Y =   -85.010498  mm,	Z =     4.486736  mm,
	W =     -.825881 deg,	P =   -42.255245 deg,	R =   -97.586174 deg
};
/END
