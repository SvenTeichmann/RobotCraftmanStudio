/PROG  FOLGE002
/ATTR
OWNER		= stephanp;
COMMENT		= "Arbeitsfolge VW4 ";
PROG_SIZE	= 4866;
CREATE		= DATE 22-07-26  TIME 07:39:24;
MODIFIED	= DATE 23-05-16  TIME 15:49:22;
FILE_NAME	= FOLGE002;
VERSION		= 0;
LINE_COUNT	= 65;
MEMORY_SIZE	= 7586;
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
   1:  ! ROB: UTOOL[3]= {X 263.372, ;
   2:  ! ROB:            Y -520.993, ;
   3:  ! ROB:            Z 477.255, ;
   4:  ! ROB:            W -179.998, ;
   5:  ! ROB:            P -71, ;
   6:  ! ROB:            R -0.001} ;
   7:  ! ********************* ;
   8:  ! **     116310R01   ** ;
   9:  ! **      VW416/PA2  ** ;
  10:  ! ********************* ;
  11:  ! **   Arbeitsfolge  ** ;
  12:  ! **   Workingfolge  ** ;
  13:  ! ********************* ;
  14:  UTOOL_NUM=3 ;
  15:  UFRAME_NUM=0 ;
  16:  PAYLOAD[3] ;
  17:J P[1] 10% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  CALL VW_USER("TECH2"=2,"Robot"=1,"BasicPos_Folge"=1," "=0," "=0," "=0," "=0," "=0,"Tech-Call"=ON) ;
      2:  DO[16:ON ]=ON ;
      3:  WAIT (DI[9:OFF])    ;
       ------ ;
  18:   ;
  19:  ! UP140 Werkzeug 1 ablegen PA1 ;
  20:  ! UP143 Werkzeug 2 holen PA2 ;
  21:  ! UP11 Ent Links_ST116310BH2_PA2 ;
  22:  ! UP12 Ent Rechts_ST116310BH2_PA2 ;
  23:J P[2] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  TIMER[1]=(0) ;
      3:  CALL MAKRO045    ;
      4:  CALL MAKRO046    ;
      5:  DO[15:OFF]=OFF ;
      6:  F[449:OFF]=(OFF) ;
      7:  WAIT ((DI[78:OFF] OR DI[77:ON ]) AND DI[57:ON ])    ;
      8:  F[931:OFF]=(DI[57:ON ] AND DI[78:OFF]) ;
      9:  F[932:ON ]=(DI[57:ON ] AND DI[77:ON ]) ;
     10:  WAIT (DI[23:OFF])    ;
     11:  TC_ONLINE (M[30:ON ]) ;
       ------ ;
  24:   ;
  25:  !UP140 Drop G01 PA1 ;
  26:  IF (M[76:OFF]),CALL UP082 ;
  27:  !UP143 Pick G02 PA2 ;
  28:  IF (!DI[537:ON ]),CALL UP143 ;
  29:   ;
  30:  ! UP11 Entn Links_ST116310BH3 ;
  31:  IF (F[932:ON ]),CALL UP011 ;
  32:  ! UP12 Entn Rechts_ST116310BH4 ;
  33:  IF (F[931:OFF]),CALL UP012 ;
  34:   ;
  35:   ;
  36:  ! UP17  Centering STN ;
  37:  CALL UP017    ;
  38:   ;
  39:  UTOOL_NUM=3 ;
  40:  UFRAME_NUM=0 ;
  41:  PAYLOAD[4] ;
  42:   ;
  43:  ! UP13 Mutter Clinchen_PA2_416/0 ;
  44:J P[3] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  WAIT (DI[23:OFF])    ;
      3:  TC_ONLINE (M[30:ON ] AND M[123:ON ]) ;
       ------ ;
  45:   ;
  46:  CALL UP013    ;
  47:   ;
  48:  UTOOL_NUM=3 ;
  49:  UFRAME_NUM=0 ;
  50:  PAYLOAD[4] ;
  51:   ;
  52:  ! UP15 Handshake PA2_416/0 ;
  53:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  LBL[1] ;
      3:  DO[18:OFF]=ON ;
      4:  WAIT ((DI[62:ON ] AND !DI[18:OFF]) OR (DI[19:OFF]))    ;
      5:  IF (DI[19:OFF]),JMP LBL[3] ;
      6:  IF (DI[62:ON ]),JMP LBL[2] ;
      7:  LBL[3] ;
      8:  DO[17:OFF]=ON ;
      9:  WAIT (DI[17:OFF])    ;
     10:  DO[17:OFF]=OFF ;
     11:  WAIT (!DI[19:OFF])    ;
     12:  JMP LBL[1] ;
     13:  LBL[2] ;
     14:  DO[18:OFF]=OFF ;
     15:  WAIT (DI[23:OFF])    ;
     16:  TC_ONLINE (M[18:ON ] AND M[27:OFF] AND M[30:ON ] AND M[123:ON ] AND DI[62:ON ]) ;
       ------ ;
  54:   ;
  55:  CALL UP015    ;
  56:   ;
  57:  UTOOL_NUM=3 ;
  58:  UFRAME_NUM=0 ;
  59:  PAYLOAD[4] ;
  60:  ! Gesamtarbeitsfertigmeldung ;
  61:  ! Total Completion notification ;
  62:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  CALL VW_USER("TECH3"=3,"ProcessingDevice"=3," "=0,"0"=0,"0"=0,"Total-FM"=15," "=0," "=0,"Tech-Call"=ON) ;
      3:  WAIT (DI[23:OFF])    ;
      4:  TC_ONLINE (M[30:ON ]) ;
       ------ ;
  63:   ;
  64:  !Homeposition ;
  65:J P[6] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  CALL VW_USER("TECH2"=2,"Robot"=1,"LastPt._Folge"=2," "=0," "=0," "=0," "=0," "=0,"Tech-Call"=ON) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U B, 0, 0, 0',
	X = -1858.556396  mm,	Y =   189.128082  mm,	Z =  2587.955322  mm,
	W =     9.370459 deg,	P =   -13.833672 deg,	R =    86.913055 deg,
	E1= -1500.000000  mm
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
	X = -1858.556396  mm,	Y =   189.128082  mm,	Z =  2587.955322  mm,
	W =     9.370459 deg,	P =   -13.833672 deg,	R =    86.913055 deg,
	E1= -1500.000000  mm
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
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -1269.838623  mm,	Y =   370.170929  mm,	Z =   900.609863  mm,
	W =    -9.220513 deg,	P =    48.156136 deg,	R =   -16.656429 deg,
	E1= -2499.999268  mm
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
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -1269.838623  mm,	Y =   370.170929  mm,	Z =   900.609863  mm,
	W =    -9.220513 deg,	P =    48.156136 deg,	R =   -16.656429 deg,
	E1= -2499.999268  mm
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
	X = -1858.556396  mm,	Y =   189.128082  mm,	Z =  2587.955322  mm,
	W =     9.370459 deg,	P =   -13.833672 deg,	R =    86.913055 deg,
	E1= -1500.000000  mm
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
	UF : 0, UT : 3,		CONFIG : 'N U B, 0, 0, 0',
	X = -1858.556396  mm,	Y =   189.128082  mm,	Z =  2587.955322  mm,
	W =     9.370459 deg,	P =   -13.833672 deg,	R =    86.913055 deg,
	E1= -1500.000000  mm
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
