/PROG  UP011
/ATTR
OWNER		= thomasbe;
COMMENT		= "Entnehmen Links_ ";
PROG_SIZE	= 10092;
CREATE		= DATE 22-12-08  TIME 07:22:48;
MODIFIED	= DATE 23-06-07  TIME 14:29:34;
FILE_NAME	= UP011;
VERSION		= 0;
LINE_COUNT	= 44;
MEMORY_SIZE	= 17476;
PROTECT		= READ_WRITE;
STORAGE		= SHADOW;
TCD:  STACK_SIZE	= 500,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,1,1,1,1;
CONTROL_CODE	= 00000000 00000000;
/APPL
  SPOT : TRUE ; 
  SPOT Welding Equipment Number : 1 ;
/MN
   1:  ! ROB: UTOOL[3]= {X 333.367, ;
   2:  ! ROB:            Y -521.001, ;
   3:  ! ROB:            Z 477.205, ;
   4:  ! ROB:            W -179.999, ;
   5:  ! ROB:            P -71, ;
   6:  ! ROB:            R 0} ;
   7:  ! ********************* ;
   8:  ! **     116310R01   ** ;
   9:  ! **      VW416/PA2  ** ;
  10:  ! ********************* ;
  11:  ! **     Entnehmen   ** ;
  12:  ! **      Picking    ** ;
  13:  ! ********************* ;
  14:   ;
  15:  PAYLOAD[3] ;
  16:  UFRAME_NUM=0 ;
  17:  UTOOL_NUM=3 ;
  18:  ! PF ST116310BH3 Links aus ;
  19:  ! PF ST116310BH3 Left aus ;
  20:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  TIMER[3]=(0) ;
      3:  DO[16:ON ]=ON ;
      4:  CALL MAKRO045    ;
      5:  CALL MAKRO046    ;
      6:  F[449:OFF]=(OFF) ;
      7:  WAIT (M[17:OFF] AND M[77:ON ])    ;
      8:  F[1:OFF]=(ON) ;
      9:  F[2:OFF]=(ON) ;
     10:  F[3:OFF]=(ON) ;
     11:  F[4:OFF]=(ON) ;
     12:  F[17:OFF]=(ON) ;
     13:  F[18:OFF]=(ON) ;
     14:  F[19:OFF]=(ON) ;
     15:  M[190:OFF]=(!M[17:OFF]) ;
     16:  CALL MAKRO342    ;
     17:  CALL MAKRO340    ;
     18:  WAIT (M[17:OFF] AND M[31:ON ] AND M[33:OFF] AND M[35:OFF] AND M[37:OFF] AND !M[63:ON ] AND !M[64:ON ] AND !M[65:ON ])    ;
     19:  WAIT (DI[57:ON ] AND DI[77:ON ])    ;
     20:  DO[77:ON ]=OFF ;
     21:  WAIT (DI[23:OFF])    ;
     22:  TC_ONLINE (M[17:OFF] AND M[25:OFF] AND M[30:ON ] AND !M[63:ON ] AND !M[64:ON ] AND !M[65:ON ] AND M[77:ON ] AND DI[57:ON ] AND DI[77:ON ]) ;
       ------ ;
  21:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[17:OFF] AND M[25:OFF] AND M[30:ON ] AND !M[63:ON ] AND !M[64:ON ] AND !M[65:ON ] AND M[77:ON ] AND DI[57:ON ] AND DI[77:ON ]) ;
       ------ ;
  22:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[17:OFF] AND M[25:OFF] AND M[30:ON ] AND !M[63:ON ] AND !M[64:ON ] AND !M[65:ON ] AND M[77:ON ] AND DI[57:ON ] AND DI[77:ON ]) ;
       ------ ;
  23:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[17:OFF] AND M[25:OFF] AND M[30:ON ] AND !M[63:ON ] AND !M[64:ON ] AND !M[65:ON ] AND M[77:ON ] AND DI[57:ON ] AND DI[77:ON ]) ;
       ------ ;
  24:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[17:OFF] AND M[25:OFF] AND M[30:ON ] AND !M[63:ON ] AND !M[64:ON ] AND !M[65:ON ] AND M[77:ON ] AND DI[57:ON ] AND DI[77:ON ]) ;
       ------ ;
  25:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[17:OFF] AND M[25:OFF] AND M[30:ON ] AND !M[63:ON ] AND !M[64:ON ] AND !M[65:ON ] AND M[77:ON ] AND DI[57:ON ] AND DI[77:ON ]) ;
       ------ ;
  26:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[17:OFF] AND M[25:OFF] AND M[30:ON ] AND !M[63:ON ] AND !M[64:ON ] AND !M[65:ON ] AND M[77:ON ] AND DI[57:ON ] AND DI[77:ON ]) ;
       ------ ;
  27:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[17:OFF] AND M[25:OFF] AND M[30:ON ] AND !M[63:ON ] AND !M[64:ON ] AND !M[65:ON ] AND M[77:ON ] AND DI[57:ON ] AND DI[77:ON ]) ;
       ------ ;
  28:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[17:OFF] AND M[25:OFF] AND M[30:ON ] AND !M[63:ON ] AND !M[64:ON ] AND !M[65:ON ] AND M[77:ON ] AND DI[57:ON ] AND DI[77:ON ]) ;
       ------ ;
  29:L P[10] 2000mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  F[4:OFF]=(ON) ;
      3:  CALL MAKRO343    ;
      4:  CALL MAKRO340    ;
      5:  WAIT (M[38:ON ])    ;
      6:  DO[577:ON ]=ON ;
      7:  DO[617:OFF]=ON ;
      8:  DO[619:OFF]=ON ;
      9:  DO[621:OFF]=ON ;
     10:  TC_ONLINE (M[25:OFF] AND M[30:ON ] AND M[77:ON ] AND DI[57:ON ] AND DI[77:ON ]) ;
       ------ ;
  30:   ;
  31:  CALL SUCHL011    ;
  32:   ;
  33:L P[11] 2000mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (M[18:ON ] AND M[26:ON ] AND M[30:ON ] AND M[63:ON ] AND M[64:ON ] AND M[65:ON ] AND M[77:ON ] AND DI[77:ON ]) ;
       ------ ;
  34:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[18:ON ] AND M[26:ON ] AND M[30:ON ] AND M[63:ON ] AND M[64:ON ] AND M[65:ON ] AND M[77:ON ] AND DI[77:ON ]) ;
       ------ ;
  35:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[18:ON ] AND M[26:ON ] AND M[30:ON ] AND M[63:ON ] AND M[64:ON ] AND M[65:ON ] AND M[77:ON ] AND DI[77:ON ]) ;
       ------ ;
  36:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[18:ON ] AND M[26:ON ] AND M[30:ON ] AND M[63:ON ] AND M[64:ON ] AND M[65:ON ] AND M[77:ON ] AND DI[77:ON ]) ;
       ------ ;
  37:   ;
  38:  ! PF ST116310BH2 Links ein ;
  39:  ! PF ST116310BH2 Left set ;
  40:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[78:ON ]=ON ;
      3:  TC_ONLINE (M[18:ON ] AND M[26:ON ] AND M[30:ON ] AND M[63:ON ] AND M[64:ON ] AND M[65:ON ] AND M[77:ON ]) ;
       ------ ;
  41:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[18:ON ] AND M[26:ON ] AND M[30:ON ] AND M[63:ON ] AND M[64:ON ] AND M[65:ON ] AND M[77:ON ] AND DI[77:ON ]) ;
       ------ ;
  42:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[18:ON ] AND M[26:ON ] AND M[30:ON ] AND M[63:ON ] AND M[64:ON ] AND M[65:ON ] AND M[77:ON ] AND DI[77:ON ]) ;
       ------ ;
  43:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[18:ON ] AND M[26:ON ] AND M[30:ON ] AND M[63:ON ] AND M[64:ON ] AND M[65:ON ] AND M[77:ON ] AND DI[77:ON ]) ;
       ------ ;
  44:J P[19] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  TIMER[3]=STOP ;
      3:  TIMER[4]=(TIMER[3]) ;
      4:  TIMER[4]=STOP ;
      5:  CALL MAKRO045    ;
      6:  CALL MAKRO046    ;
      7:  WAIT (DI[23:OFF])    ;
      8:  TC_ONLINE (M[18:ON ] AND M[26:ON ] AND M[30:ON ] AND M[63:ON ] AND M[64:ON ] AND M[65:ON ] AND M[77:ON ]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U B, 0, 0, 0',
	X = -1858.578613  mm,	Y =   189.136383  mm,	Z =  2587.866211  mm,
	W =     9.367821 deg,	P =   -13.830062 deg,	R =    86.914360 deg,
	E1= -1499.999390  mm
   GP2:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm,	J5= 0.000000e+00  mm,	J6= 0.000000e+00  mm,
	J7= 0.000000e+00  mm
   GP3:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP4:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP5:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm
};
P[2]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U B, 0, 0, 0',
	X = -2302.384277  mm,	Y =   -42.564423  mm,	Z =  2668.469482  mm,
	W =    10.261599 deg,	P =   -13.992680 deg,	R =   104.206146 deg,
	E1= -1848.835693  mm
   GP2:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm,	J5= 0.000000e+00  mm,	J6= 0.000000e+00  mm,
	J7= 0.000000e+00  mm
   GP3:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP4:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP5:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm
};
P[3]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U B, 0, 0, 0',
	X = -5014.808594  mm,	Y =   -55.009247  mm,	Z =  2680.702881  mm,
	W =    10.300623 deg,	P =   -14.495603 deg,	R =   104.196831 deg,
	E1= -4565.401855  mm
   GP2:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm,	J5= 0.000000e+00  mm,	J6= 0.000000e+00  mm,
	J7= 0.000000e+00  mm
   GP3:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP4:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP5:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm
};
P[4]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U B, 0, 0, 0',
	X = -4660.915527  mm,	Y =  -841.949829  mm,	Z =  2528.104004  mm,
	W =    10.300376 deg,	P =   -14.495555 deg,	R =   176.649353 deg,
	E1= -4565.401855  mm
   GP2:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm,	J5= 0.000000e+00  mm,	J6= 0.000000e+00  mm,
	J7= 0.000000e+00  mm
   GP3:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP4:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP5:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm
};
P[5]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U B, 0, 0, 0',
	X = -5432.849609  mm,	Y =  -868.915649  mm,	Z =  2634.403076  mm,
	W =    13.640969 deg,	P =   -14.661561 deg,	R =  -160.842407 deg,
	E1= -5469.404297  mm
   GP2:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm,	J5= 0.000000e+00  mm,	J6= 0.000000e+00  mm,
	J7= 0.000000e+00  mm
   GP3:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP4:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP5:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm
};
P[6]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 1, 0, 0',
	X = -6257.430664  mm,	Y =  -656.491150  mm,	Z =  1849.192505  mm,
	W =   -35.886345 deg,	P =    -5.134656 deg,	R =  -165.913864 deg,
	E1= -5468.445801  mm
   GP2:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm,	J5= 0.000000e+00  mm,	J6= 0.000000e+00  mm,
	J7= 0.000000e+00  mm
   GP3:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP4:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP5:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm
};
P[7]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 1, 0, 0',
	X = -7564.781250  mm,	Y =   726.366882  mm,	Z =   935.849121  mm,
	W =  -125.255249 deg,	P =    -5.576948 deg,	R =   102.598000 deg,
	E1= -5468.445801  mm
   GP2:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm,	J5= 0.000000e+00  mm,	J6= 0.000000e+00  mm,
	J7= 0.000000e+00  mm
   GP3:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP4:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP5:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm
};
P[8]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 1, 0, 0',
	X = -7574.748047  mm,	Y =   861.523804  mm,	Z =   140.790100  mm,
	W =  -155.608994 deg,	P =-4.710107e-01 deg,	R =   100.601875 deg,
	E1= -6000.000000  mm
   GP2:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm,	J5= 0.000000e+00  mm,	J6= 0.000000e+00  mm,
	J7= 0.000000e+00  mm
   GP3:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP4:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP5:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm
};
P[9]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -7407.036133  mm,	Y =   911.238403  mm,	Z =  -454.256226  mm,
	W =   179.913406 deg,	P =    10.576975 deg,	R =    89.626198 deg,
	E1= -6539.505371  mm
   GP2:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm,	J5= 0.000000e+00  mm,	J6= 0.000000e+00  mm,
	J7= 0.000000e+00  mm
   GP3:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP4:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP5:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm
};
P[10]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -7407.036133  mm,	Y =   911.238403  mm,	Z =  -454.256226  mm,
	W =   179.913406 deg,	P =    10.576972 deg,	R =    89.626198 deg,
	E1= -6539.505371  mm
   GP2:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm,	J5= 0.000000e+00  mm,	J6= 0.000000e+00  mm,
	J7= 0.000000e+00  mm
   GP3:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP4:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP5:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm
};
P[11]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -7404.390625  mm,	Y =  1574.134155  mm,	Z =  -401.557190  mm,
	W =   179.873734 deg,	P =    15.679413 deg,	R =    90.540138 deg,
	E1= -6797.435547  mm
   GP2:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm,	J5= 0.000000e+00  mm,	J6= 0.000000e+00  mm,
	J7= 0.000000e+00  mm
   GP3:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP4:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP5:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm
};
P[12]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 1, 0, 0',
	X = -7574.748047  mm,	Y =   861.523376  mm,	Z =   140.790009  mm,
	W =  -155.608994 deg,	P =-4.710108e-01 deg,	R =   100.601891 deg,
	E1= -6000.000000  mm
   GP2:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm,	J5= 0.000000e+00  mm,	J6= 0.000000e+00  mm,
	J7= 0.000000e+00  mm
   GP3:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP4:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP5:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm
};
P[13]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 1, 0, 0',
	X = -7700.869141  mm,	Y =   325.698456  mm,	Z =    37.397888  mm,
	W =  -122.141006 deg,	P =    38.578995 deg,	R =   111.278999 deg,
	E1= -6000.000000  mm
   GP2:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm,	J5= 0.000000e+00  mm,	J6= 0.000000e+00  mm,
	J7= 0.000000e+00  mm
   GP3:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP4:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP5:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm
};
P[14]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 1, 0, 0',
	X = -7688.277344  mm,	Y =  -431.186188  mm,	Z =   619.513062  mm,
	W =   -53.817001 deg,	P =    48.712994 deg,	R =   169.724915 deg,
	E1= -6000.000000  mm
   GP2:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm,	J5= 0.000000e+00  mm,	J6= 0.000000e+00  mm,
	J7= 0.000000e+00  mm
   GP3:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP4:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP5:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm
};
P[15]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U B, 0, 0, 0',
	X = -6036.271484  mm,	Y =  -636.301819  mm,	Z =  2525.698975  mm,
	W =    11.653164 deg,	P =   -13.810909 deg,	R =  -172.235168 deg,
	E1= -6000.945313  mm
   GP2:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm,	J5= 0.000000e+00  mm,	J6= 0.000000e+00  mm,
	J7= 0.000000e+00  mm
   GP3:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP4:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP5:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm
};
P[16]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U B, 0, 0, 0',
	X = -4660.915039  mm,	Y =  -841.950073  mm,	Z =  2528.104004  mm,
	W =    10.300381 deg,	P =   -14.495559 deg,	R =   176.649353 deg,
	E1= -4565.401855  mm
   GP2:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm,	J5= 0.000000e+00  mm,	J6= 0.000000e+00  mm,
	J7= 0.000000e+00  mm
   GP3:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP4:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP5:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm
};
P[17]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U B, 0, 0, 0',
	X = -5014.808594  mm,	Y =   -55.009338  mm,	Z =  2680.702881  mm,
	W =    10.300626 deg,	P =   -14.495606 deg,	R =   104.196823 deg,
	E1= -4565.401855  mm
   GP2:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm,	J5= 0.000000e+00  mm,	J6= 0.000000e+00  mm,
	J7= 0.000000e+00  mm
   GP3:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP4:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP5:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm
};
P[18]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U B, 0, 0, 0',
	X = -2298.243164  mm,	Y =   -55.009277  mm,	Z =  2680.702881  mm,
	W =    10.300625 deg,	P =   -14.495608 deg,	R =   104.196823 deg,
	E1= -1848.836304  mm
   GP2:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm,	J5= 0.000000e+00  mm,	J6= 0.000000e+00  mm,
	J7= 0.000000e+00  mm
   GP3:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP4:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP5:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm
};
P[19]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U B, 0, 0, 0',
	X = -1858.578857  mm,	Y =   189.136169  mm,	Z =  2587.866699  mm,
	W =     9.367819 deg,	P =   -13.830074 deg,	R =    86.914360 deg,
	E1= -1499.999512  mm
   GP2:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm,	J5= 0.000000e+00  mm,	J6= 0.000000e+00  mm,
	J7= 0.000000e+00  mm
   GP3:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP4:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm
   GP5:
	UF : 0, UT : 3,	
	J1= 0.000000e+00  mm,	J2= 0.000000e+00  mm,	J3= 0.000000e+00  mm,
	J4= 0.000000e+00  mm
};
/END
