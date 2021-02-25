      *{Bench}prg-comment
      * hiv-FZS.cbl
      * hiv-FZS.cbl is generated from W:\mx\spro\hiv-FZS.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. hiv-FZS.
       AUTHOR. anthony.pfeifer.
       DATE-WRITTEN. vendredi 3 juillet 2020 10:39:56.
       REMARKS. 
      *{Bench}end
       ENVIRONMENT                 DIVISION.
       CONFIGURATION               SECTION.
       SPECIAL-NAMES.
      *{Bench}activex-def
      *{Bench}end
      *{Bench}decimal-point
           DECIMAL-POINT IS COMMA.
      *{Bench}end
       INPUT-OUTPUT                SECTION.
       FILE-CONTROL.
       COPY "../../mx/fdt/SL-HIV-C.CPY".
      *{Bench}file-control
       COPY "MXPARAM.sl".
       COPY "COBCAP.sl".
       COPY "MXAGENCE.sl".
       COPY "MXART.sl".
       COPY "MXCLI.sl".
       COPY "MXMARQUE.sl".
       COPY "MXHISVTE.sl".
       COPY "XMLOut-File.sl".
       COPY "MXHISVTE2.sl".
       COPY "MXGRAFAM.sl".
       COPY "MXAGENCE2.sl".
       COPY "INTSEL.sl".
       COPY "MXBDIS.sl".
       COPY "MXFOU.sl".
      *{Bench}end
       DATA                        DIVISION.
       FILE                        SECTION.
       COPY "../../mx/fdt/FD-HIV-C.CPY".
      *{Bench}file
       COPY "MXPARAM.fd".
       COPY "COBCAP.fd".
       COPY "MXAGENCE.fd".
       COPY "MXART.fd".
       COPY "MXCLI.fd".
       COPY "MXMARQUE.fd".
       COPY "MXHISVTE.fd".
       COPY "XMLOut-File.fd".
       COPY "MXHISVTE2.fd".
       COPY "MXGRAFAM.fd".
       COPY "MXAGENCE2.fd".
       COPY "INTSEL.fd".
       COPY "MXBDIS.fd".
       COPY "MXFOU.fd".
      *{Bench}end
       WORKING-STORAGE             SECTION.
      *{Bench}acu-def
       COPY "acugui.def".
       COPY "acucobol.def".
       COPY "crtvars.def".
       COPY "fonts.def".
       COPY "palette.def".
       COPY "showmsg.def".
      *{Bench}end

      *{Bench}copy-working
       77 Key-Status IS SPECIAL-NAMES CRT STATUS PIC 9(5) VALUE 0.
           88 Enter-Pushed VALUE 13.
           88 Exit-Pushed VALUE 27.
           88 Message-Received VALUE 95.
           88 Event-Occurred VALUE 96.
           88 Screen-No-Input-Field VALUE 97.
           88 Screen-Time-Out VALUE 99.
      * property-defined variable

      * user-defined variable
           COPY  "cobcap.wrk".
           COPY  "Ef-Date.wrk".
           COPY  "LK-LISTE.wrk".
           COPY  "LK-LISTE2.wrk".
           COPY  "XMLOut.wrk".
           COPY  "LK-IMPRIME.wrk".
           COPY  "LK-INT.wrk".
           COPY  "Mis-EnregOccupe.wrk".
           COPY  "Ef-Pos.wrk".
           COPY  "Ef-Tel.wrk".
           COPY  "LK-MART-M.wrk".
           COPY  "LK-MCLI-M.wrk".
           COPY  "NSA-Donnees.wrk".
           COPY  "LK-SBD-C.wrk".
           COPY  "LK-MCDV-L.wrk".
           COPY  "LK-MCHC-L.wrk".
           COPY  "Mis-ProgressBar.wrk".
           COPY  "Mis-Patienter.wrk".
       77 W-LOG-PALM       PIC  9(3)
                  VALUE IS 25.
       77 W-NPR-PALM       PIC  9(4)
                  VALUE IS 69.
       77 Small-Font
                  USAGE IS HANDLE OF FONT SMALL-FONT.
       77 Large-Font
                  USAGE IS HANDLE OF FONT LARGE-FONT.
       77 Fixed-Font
                  USAGE IS HANDLE OF FONT FIXED-FONT.
       77 Default-Font
                  USAGE IS HANDLE OF FONT DEFAULT-FONT.
       77 USERxxx20-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 EXPANDxx7-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ENGRSIM16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 OKBOULE10-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 COLLAPSE7-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ZOOMxxx16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FLECHEG16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FLECHED16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ZOOMxxx24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 IMPRIME24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TRIERDD10-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TRIERDE10-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TRIERAD10-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TRIERAE10-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ZOOMxxx12-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ZOOMxxx16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-KEY-ORDER      PIC  X(1)
                  VALUE IS "D".
       77 W-KEY-NUM        PIC  9(2)
                  VALUE IS 0.
       77 Screen1-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 Screen1-St-1-Handle
                  USAGE IS HANDLE OF STATUS-BAR VALUE NULL.
       77 Screen1-Mn-1-Handle
                  USAGE IS HANDLE OF MENU VALUE NULL.
       77 Screen1-Gd-1-Row-Highlight-Color         PIC  9(6).
       77 Screen1-Gd-1-Cursor-X        PIC  9(5).
       77 Screen1-Gd-1-Cursor-Y        PIC  9(5).
       77 Screen1-Gd-1-Cursor-X-Old    PIC  9(5).
       77 Screen1-Gd-1-Cursor-Y-Old    PIC  9(5).
       77 WPOS PIC  9(3).
       77 W    PIC  9(3).
       77 I    PIC  9(4)
                  USAGE IS COMP.
       77 W-REDS           PIC  9(1)
                  VALUE IS 0.
       77 W-REDA           PIC  9(1)
                  VALUE IS 0.
       77 WVISIBLE         PIC  9(1)
                  VALUE IS 0.
       77 WVISIBLE2        PIC  9.
       77 W-DIF            PIC  S9(5)V99.
       77 W-LIN            PIC  S9(5)V99.
       77 W-LINP           PIC  S9(5)V99.
       77 W-PICSZ10VZZ     PIC  ---------9,99
                  BLANK WHEN ZERO.
       77 W-PICSZ7VZZ      PIC  -------9,99
                  BLANK WHEN ZERO.
       77 W-PICSZZVZZ      PIC  --9,99
                  BLANK WHEN ZERO.
       77 W-PICSZ6         PIC  ------9
                  BLANK WHEN ZERO.
       77 W-PICSZ8         PIC  ------9
                  BLANK WHEN ZERO.
       77 W-PICSZ13        PIC  ------------9
                  BLANK WHEN ZERO.
       77 W-PICSZ8V2       PIC  ------9,99
                  BLANK WHEN ZERO.
       77 W-PICX10         PIC  X(10).
       77 W-PICX15         PIC  X(15).
       77 W-PICX30         PIC  X(30).
       77 W-PICX60         PIC  X(60).
       01 W-INT-DEC        PIC  9(9)V999.
       01 W-INT-DEC-R REDEFINES W-INT-DEC.
           05 W-INT1           PIC  9(9).
           05 W-DECX           PIC  XXX.
           05 W-DEC9 REDEFINES W-DECX  PIC  9(3).
       77 W-DATE98         PIC  9(8).
       01 W-PERIODE.
           02 W-PER.
               04 MOI-MPAR         PIC  99.
               04 Wrk-item05       PIC  X
                          VALUE IS "/".
               04 SIE-MPAR         PIC  99.
               04 ANN-MPAR         PIC  99.
       77 W-TROUVE         PIC  9.
       77 W-DATE           PIC  X(10).
       77 W-MXPARAM        PIC  9(9).
       77 W-EOF-MAGC       PIC  9(3).
       77 PERSON-FILE-STATUS           PIC  X(2).
       77 W-EOF-MHIV       PIC  9.
       77 PMELICEN-FILE-STATUS         PIC  X(2).
       77 ASSIGN-TRI       PIC  X(60).
       77 WASS-TRI         PIC  X(20)
                  VALUE IS "HIV".
       77 TRI-FILE-STATUS  PIC  X(2).
           88 Valid-TRI VALUE IS "00" THRU "09". 
       77 W-EOF-TRI        PIC  9.
       77 W-DATE1          PIC  X(10).
       77 W-DATE2          PIC  X(10).
       01 W-OK PIC  9.
       01 Screen1-Gd-1-Record.
           05 Screen1-Gd-1-VID PIC  X.
           05 Screen1-Gd-1-DSP PIC  X(10).
           05 Screen1-Gd-1-DAT PIC  x(10).
           05 Screen1-Gd-1-ART PIC  X(20).
           05 Screen1-Gd-1-CRF PIC  X(1).
           05 Screen1-Gd-1-DES PIC  X(30).
           05 Screen1-Gd-1-QTE PIC  X(13).
           05 Screen1-Gd-1-PRI PIC  X(13).
           05 Screen1-Gd-1-HT  PIC  X(13).
           05 Screen1-Gd-1-REM PIC  X(13).
           05 Screen1-Gd-1-MAR PIC  X(13).
           05 Screen1-Gd-1-REP PIC  X(6).
           05 Screen1-Gd-1-ICC PIC  X.
           05 Screen1-Gd-1-CLI PIC  X(6).
           05 Screen1-Gd-1-NOM PIC  X(30).
           05 Screen1-Gd-1-VIL PIC  X(30).
           05 Screen1-Gd-1-AGE PIC  X(08).
           05 Screen1-Gd-1-BON PIC  X(08).
           05 Screen1-Gd-1-FAC PIC  X(6).
           05 Screen1-Gd-1-MAT PIC  X(21).
           05 Screen1-Gd-1-ORI PIC  X(3).
           05 Screen1-Gd-1-NAF PIC  X(10).
           05 Screen1-Gd-1-DEP PIC  X(3).
           05 Screen1-Gd-1-NVC PIC  X(3).
           05 Screen1-Gd-1-FOU PIC  X(30).
           05 Screen1-Gd-1-FAM PIC  X(25).
           05 Screen1-Gd-1-RFN PIC  X(21).
           05 Screen1-Gd-1-ISA PIC  X(4).
           05 Screen1-Gd-1-CHC PIC  X(20).
           05 Screen1-Gd-1-VID2            PIC  X.
       77 Screen2-SF-HANDLE
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 Screen3-St-1-Handle
                  USAGE IS HANDLE OF STATUS-BAR VALUE NULL.
       77 Screen2-Ef-1-Value           PIC  X(30).
       01 Screen2-Gd-1-Record.
           05 Screen2-Gd-1-ART PIC  X(20).
           05 Screen2-Gd-1-DES PIC  X(60).
           05 Screen2-Gd-1-QTE PIC  X(13).
           05 Screen2-Gd-1-INO PIC  X(1).
       78 Nombre-Colonnes VALUE IS 30. 
       01 INT.
           02 NSA-INT          PIC  9
                      VALUE IS 2.
           02 AGE-INT          PIC  X(3).
           02 REG-INT          PIC  XX.
           02 DA1-INT          PIC  9(8).
           02 DA2-INT          PIC  9(8).
           02 ACT-INT.
               10 TAB-ACT
                          OCCURS 4 TIMES.
                   15 LIB-TAB-ACT      PIC  X(30).
                   15 COD-TAB-ACT      PIC  X.
                   15 VAL-TAB-ACT      PIC  9.
                   15 VIS-TAB-ACT      PIC  9
                              VALUE IS 0.
               10 NB-ACT           PIC  9.
               10 NB-SEL-ACT       PIC  9.
           02 CLI-INT          PIC  9
                      VALUE IS 1.
           02 DIV-INT          PIC  9
                      VALUE IS 0.
           02 CDV-INT          PIC  9
                      VALUE IS 1.
           02 LIV-INT          PIC  9
                      VALUE IS 1.
           02 ART-INT          PIC  9
                      VALUE IS 1.
           02 PER-INT          PIC  9
                      VALUE IS 1.
           02 POS-INT          PIC  9
                      VALUE IS 1.
           02 MAR-INT          PIC  9
                      VALUE IS 1.
           02 TYP-INT          PIC  X(20).
           02 DEP-INT          PIC  9
                      VALUE IS 1.
           02 VEN-INT          PIC  9
                      VALUE IS 1.
           02 TEC-INT          PIC  9
                      VALUE IS 1.
           02 SOR-INT          PIC  9
                      VALUE IS 1.
           02 RET-INT          PIC  9
                      VALUE IS 2.
           02 ADV-INT.
               05 AR1-INT          PIC  X(4).
               05 AR2-INT          PIC  X(16).
           02 AFF-INT          PIC  X(10).
           02 AGS-INT          PIC  X(3).
           02 LOT-INT          PIC  X(10).
           02 Tab-AFF-Gd-1-Record.
               03 AFF-Gd-1-Record.
                   05 AFF-VID-INT      PIC  9(3)
                              VALUE IS 1.
                   05 AFF-DSP-INT      PIC  9(3)
                              VALUE IS 1.
                   05 AFF-DAT-INT      PIC  9(3)
                              VALUE IS 0.
                   05 AFF-ART-INT      PIC  9(3)
                              VALUE IS 1.
                   05 AFF-CRF-INT      PIC  9(3)
                              VALUE IS 1.
                   05 AFF-DES-INT      PIC  9(3)
                              VALUE IS 1.
                   05 AFF-QTE-INT      PIC  9(3)
                              VALUE IS 1.
                   05 AFF-PRI-INT      PIC  9(3)
                              VALUE IS 1.
                   05 AFF-HT-INT       PIC  9(3)
                              VALUE IS 1.
                   05 AFF-REM-INT      PIC  9(3)
                              VALUE IS 1.
                   05 AFF-MAR-INT      PIC  9(3)
                              VALUE IS 1.
                   05 AFF-REP-INT      PIC  9(3)
                              VALUE IS 1.
                   05 AFF-ICC-INT      PIC  9(3)
                              VALUE IS 0.
                   05 AFF-CLI-INT      PIC  9(3)
                              VALUE IS 1.
                   05 AFF-NOM-INT      PIC  9(3)
                              VALUE IS 1.
                   05 AFF-VIL-INT      PIC  9(3)
                              VALUE IS 1.
                   05 AFF-AGE-INT      PIC  9(3)
                              VALUE IS 1.
                   05 AFF-BON-INT      PIC  9(3)
                              VALUE IS 1.
                   05 AFF-FAC-INT      PIC  9(3)
                              VALUE IS 1.
                   05 AFF-MAT-INT      PIC  9(3)
                              VALUE IS 1.
                   05 AFF-ORI-INT      PIC  9(3)
                              VALUE IS 1.
                   05 AFF-NAF-INT      PIC  9(3)
                              VALUE IS 1.
                   05 AFF-DEP-INT      PIC  9(3)
                              VALUE IS 1.
                   05 AFF-NVC-INT      PIC  9(3)
                              VALUE IS 0.
                   05 AFF-FOU-INT      PIC  9(3)
                              VALUE IS 0.
                   05 AFF-FAM-INT      PIC  9(3)
                              VALUE IS 0.
                   05 AFF-RFN-INT      PIC  9(3)
                              VALUE IS 0.
                   05 AFF-ISA-INT      PIC  9(3)
                              VALUE IS 0.
                   05 AFF-CHC-INT      PIC  9(3)
                              VALUE IS 0.
                   05 AFF-VID2-INT     PIC  9(3)
                              VALUE IS 0.
               03 R-AFF-Gd-1-Record REDEFINES AFF-Gd-1-Record.
                   05 ELT-AFF-Gd-1-Record          PIC  9(3)
                              OCCURS NOMBRE-COLONNES TIMES.
               03 AFF-TOT-INT      PIC  9(3)
                          VALUE IS 1.
           02 DFA-INT          PIC  9.
           02 AOR-INT          PIC  9
                      VALUE IS 1.
           02 AAD-INT          PIC  9
                      VALUE IS 1.
           02 AOC-INT          PIC  9
                      VALUE IS 1.
           02 ADI-INT          PIC  9
                      VALUE IS 1.
           02 FOU3-INT         PIC  9(6).
           02 INT-INT          PIC  9.
       01 Init-Tab-Aff-Gd-1-Record.
           02 Init-Aff-Gd-1-Record.
               05 Init-Elt-Aff-Gd-1-Record     PIC  9(3)
                          OCCURS NOMBRE-COLONNES TIMES.
           02 Init-AFF-TOT-INT PIC  9(3)
                      VALUE IS 1.
       01 WMOD.
           05 WMODD            PIC  X.
           05 WMODM            PIC  X.
           05 WMODR            PIC  X.
           05 WMODL            PIC  X.
       01 TAB-AGENCE.
           02 ELT-AGE          PIC  XX
                      OCCURS 500 TIMES.
           02 NB-AGENCE        PIC  9(3).
       77 I-BOU            PIC  9(3).
       01 TOT-HT           PIC  S9(9)V99.
       77 TOT-QTE          PIC  S9(9)V99
                  VALUE IS 0.
       01 TOTFAM-HT        PIC  S9(9)V99.
       77 TOTFAM-QTE       PIC  S9(9)V99.
       01 TOT-MAR          PIC  S9(9)V99.
       01 TOTFAM-MAR       PIC  S9(9)V99.
       01 W-PUB            PIC  S9(9)V99.
       77 W-MAR            PIC  S9(8)V99.
       77 PMB-LIG          PIC  S999V99.
       01 Pos-Gd-1-Record.
           05 Pos-col-VID      PIC  9(3)
                      VALUE IS 1.
           05 Pos-col-DSP      PIC  9(3)
                      VALUE IS 2.
           05 Pos-col-DAT      PIC  9(3)
                      VALUE IS 12.
           05 Pos-col-ART      PIC  9(3)
                      VALUE IS 22.
           05 Pos-col-CRF      PIC  9(3)
                      VALUE IS 42.
           05 Pos-Col-DES      PIC  9(3)
                      VALUE IS 43.
           05 Pos-Col-QTE      PIC  9(3)
                      VALUE IS 73.
           05 Pos-Col-PRI      PIC  9(3)
                      VALUE IS 86.
           05 Pos-Col-HT       PIC  9(3)
                      VALUE IS 99.
           05 Pos-Col-REM      PIC  9(3)
                      VALUE IS 112.
           05 Pos-Col-MAR      PIC  9(3)
                      VALUE IS 125.
           05 Pos-Col-REP      PIC  9(3)
                      VALUE IS 138.
           05 Pos-Col-ICC      PIC  9(3)
                      VALUE IS 144.
           05 Pos-Col-CLI      PIC  9(3)
                      VALUE IS 145.
           05 Pos-Col-NOM      PIC  9(3)
                      VALUE IS 151.
           05 Pos-Col-VIL      PIC  9(3)
                      VALUE IS 181.
           05 Pos-Col-AGE      PIC  9(3)
                      VALUE IS 211.
           05 Pos-Col-BON      PIC  9(3)
                      VALUE IS 219.
           05 Pos-Col-FAC      PIC  9(3)
                      VALUE IS 227.
           05 Pos-Col-MAT      PIC  9(3)
                      VALUE IS 233.
           05 Pos-Col-ORI      PIC  9(3)
                      VALUE IS 254.
           05 Pos-Col-NAF      PIC  9(3)
                      VALUE IS 257.
           05 Pos-Col-DEP      PIC  9(3)
                      VALUE IS 267.
           05 Pos-Col-NVC      PIC  9(3)
                      VALUE IS 270.
           05 Pos-Col-FOU      PIC  9(3)
                      VALUE IS 273.
           05 Pos-Col-FAM      PIC  9(3)
                      VALUE IS 303.
           05 Pos-Col-RFN      PIC  9(3)
                      VALUE IS 328.
           05 Pos-Col-ISA      PIC  9(3)
                      VALUE IS 349.
           05 Pos-Col-CHC      PIC  9(3)
                      VALUE IS 353.
           05 Pos-Col-VID2     PIC  9(3)
                      VALUE IS 373.
       01 R-Pos-Gd-1-Record REDEFINES Pos-Gd-1-Record.
           05 Elt-Pos-Gd-1-Record          PIC  9(3)
                      OCCURS NOMBRE-COLONNES TIMES.
       01 Lon-Gd-1-Record.
           05 Lon-col-VID      PIC  9(3)
                      VALUE IS 1.
           05 Lon-col-DSP      PIC  9(3)
                      VALUE IS 11.
           05 Lon-col-DAT      PIC  9(3)
                      VALUE IS 11.
           05 Lon-col-ART      PIC  9(3)
                      VALUE IS 24.
           05 Lon-col-CRF      PIC  9(3)
                      VALUE IS 3.
           05 Lon-Col-DES      PIC  9(3)
                      VALUE IS 30.
           05 Lon-Col-QTE      PIC  9(3)
                      VALUE IS 8.
           05 Lon-Col-PRI      PIC  9(3)
                      VALUE IS 10.
           05 Lon-Col-HT       PIC  9(3)
                      VALUE IS 10.
           05 Lon-Col-REM      PIC  9(3)
                      VALUE IS 6.
           05 Lon-Col-MAR      PIC  9(3)
                      VALUE IS 10.
           05 Lon-Col-REP      PIC  9(3)
                      VALUE IS 6.
           05 Lon-Col-ICC      PIC  9(3)
                      VALUE IS 3.
           05 Lon-Col-CLI      PIC  9(3)
                      VALUE IS 7.
           05 Lon-Col-NOM      PIC  9(3)
                      VALUE IS 30.
           05 Lon-Col-VIL      PIC  9(3)
                      VALUE IS 30.
           05 Lon-Col-AGE      PIC  9(3)
                      VALUE IS 4.
           05 Lon-Col-BON      PIC  9(3)
                      VALUE IS 10.
           05 Lon-Col-FAC      PIC  9(3)
                      VALUE IS 10.
           05 Lon-Col-MAT      PIC  9(3)
                      VALUE IS 21.
           05 Lon-Col-ORI      PIC  9(3)
                      VALUE IS 5.
           05 Lon-Col-NAF      PIC  9(3)
                      VALUE IS 11.
           05 Lon-Col-DEP      PIC  9(3)
                      VALUE IS 6.
           05 Lon-Col-NVC      PIC  9(3)
                      VALUE IS 4.
           05 Lon-Col-FOU      PIC  9(3)
                      VALUE IS 7.
           05 Lon-Col-FAM      PIC  9(3)
                      VALUE IS 5.
           05 Lon-Col-RFN      PIC  9(3)
                      VALUE IS 22.
           05 Lon-Col-ISA      PIC  9(3)
                      VALUE IS 5.
           05 Lon-Col-CHC      PIC  9(3)
                      VALUE IS 21.
           05 Lon-Col-VID2     PIC  9(3)
                      VALUE IS 1.
       01 R-Lon-Gd-1-Record REDEFINES Lon-Gd-1-Record.
           05 Elt-Lon-Gd-1-Record          PIC  9(3)
                      OCCURS NOMBRE-COLONNES TIMES.
       01 Init-Lon-Gd-1-Record.
           05 Init-Elt-Lon-Gd-1-Record     PIC  9(3)
                      OCCURS NOMBRE-COLONNES TIMES.
       01 Tit-Record.
           05 Elt-Tit-Record   PIC  X(20)
                      OCCURS NOMBRE-COLONNES TIMES.
       01 Justify-Record.
           05 Jus-VID          PIC  X(3)
                      VALUE IS "C".
           05 Jus-DSP          PIC  X(3)
                      VALUE IS "C".
           05 Jus-DAT          PIC  X(3)
                      VALUE IS "C".
           05 Jus-ART          PIC  X(3)
                      VALUE IS "L".
           05 Jus-CRF          PIC  X(3)
                      VALUE IS "C".
           05 Jus-DES          PIC  X(3)
                      VALUE IS "L".
           05 Jus-QTE          PIC  X(3)
                      VALUE IS "R".
           05 Jus-PRI          PIC  X(3)
                      VALUE IS "R".
           05 Jus-HT           PIC  X(3)
                      VALUE IS "R".
           05 Jus-REM          PIC  X(3)
                      VALUE IS "R".
           05 Jus-MAR          PIC  X(3)
                      VALUE IS "R".
           05 Jus-REP          PIC  X(3)
                      VALUE IS "C".
           05 Jus-ICC          PIC  X(3)
                      VALUE IS "C".
           05 Jus-CLI          PIC  X(3)
                      VALUE IS "L".
           05 Jus-NOM          PIC  X(3)
                      VALUE IS "L".
           05 Jus-VIL          PIC  X(3)
                      VALUE IS "L".
           05 Jus-AGE          PIC  X(3)
                      VALUE IS "C".
           05 Jus-BON          PIC  X(3)
                      VALUE IS "R".
           05 Jus-FAC          PIC  X(3)
                      VALUE IS "R".
           05 Jus-MAT          PIC  X(3)
                      VALUE IS "L".
           05 Jus-ORI          PIC  X(3)
                      VALUE IS "C".
           05 Jus-NAF          PIC  X(3)
                      VALUE IS "C".
           05 Jus-DEP          PIC  X(3)
                      VALUE IS "C".
           05 Jus-NVC          PIC  X(3)
                      VALUE IS "C".
           05 Jus-FOU          PIC  X(3)
                      VALUE IS "L".
           05 Jus-FAM          PIC  X(3)
                      VALUE IS "L".
           05 Jus-RFN          PIC  X(3)
                      VALUE IS "L".
           05 Jus-ISA          PIC  X(3)
                      VALUE IS "C".
           05 Jus-CHC          PIC  X(3)
                      VALUE IS "L".
       01 R-Justify-Record REDEFINES Justify-Record.
           05 Elt-Jus-Record   PIC  X(3)
                      OCCURS NOMBRE-COLONNES TIMES.
       01 W-Display-Columns.
           05 WDi  PIC  9(3)
                      OCCURS NOMBRE-COLONNES TIMES.
       01 W-Data-Columns.
           05 WDa  PIC  9(3)
                      OCCURS NOMBRE-COLONNES TIMES.
       01 W-Align-Columns.
           05 WDl  PIC  X(3)
                      OCCURS NOMBRE-COLONNES TIMES.
       01 Liste-Messages-Aide.
           05 Aide-VID         PIC  X(80).
           05 Aide-DSP         PIC  X(80)
                      VALUE IS "Date de saisie".
           05 Aide-DAT         PIC  X(80)
                      VALUE IS "Date de facture".
           05 Aide-ART         PIC  X(80)
                      VALUE IS "Code article".
           05 Aide-CRF         PIC  X(80)
                      VALUE IS "Référence remplacée".
           05 Aide-DES         PIC  X(80)
                      VALUE IS "Désignation article".
           05 Aide-QTE         PIC  X(80)
                      VALUE IS "Quantité".
           05 Aide-PRI         PIC  X(80)
                      VALUE IS "Prix unitaire".
           05 Aide-HT          PIC  X(80)
                      VALUE IS "Total HT Net".
           05 Aide-REM         PIC  X(80)
                      VALUE IS "Remise".
           05 Aide-MAR         PIC  X(80)
                      VALUE IS "% Marge".
           05 Aide-REP2        PIC  X(80)
                      VALUE IS "Commercial".
           05 Aide-ICC         PIC  X(80)
                      VALUE IS " ".
           05 Aide-CLI         PIC  X(80)
                      VALUE IS "Code client ou poste CI".
           05 Aide-NOM         PIC  X(80)
                      VALUE IS "Nom client ou poste CI ou type mouvement
      -    "".
           05 Aide-VIL         PIC  X(80)
                      VALUE IS "Ville client".
           05 Aide-AGE         PIC  X(80)
                      VALUE IS "Agence".
           05 Aide-BON         PIC  X(80)
                      VALUE IS "N° bon".
           05 Aide-FAC         PIC  X(80)
                      VALUE IS "N° facture".
           05 Aide-MAT         PIC  X(80)
                      VALUE IS "Matériel : N° Matricule ou (C) N° Parc C
      -    "lient ou (E) N° Entrée".
           05 Aide-ORI         PIC  X(80)
                      VALUE IS "Activité".
           05 Aide-NAF         PIC  X(80)
                      VALUE IS "Numéro d'affaire".
           05 Aide-DEP         PIC  X(80)
                      VALUE IS "Code dépôt".
           05 Aide-NVC         PIC  X(80)
                      VALUE IS "Niveau de commande".
           05 Aide-FOU         PIC  X(80)
                      VALUE IS "Fournisseur commande article divers ou f
      -    "ournisseur principal".
           05 Aide-FAM         PIC  X(80)
                      VALUE IS "Famille article".
           05 Aide-RFN         PIC  X(80)
                      VALUE IS "Référence normalisée".
           05 Aide-ISA         PIC  X(60)
                      VALUE IS "Code preneur d'ordre".
           05 Aide-CHC         PIC  X(60)
                      VALUE IS "Chantier".
       01 R-Liste-Messages-Aide REDEFINES Liste-Messages-Aide.
           05 Message-Aide     PIC  X(80)
                      OCCURS NOMBRE-COLONNES TIMES.
       77 W-Message-Aide   PIC  X(80).
       77 I-COL-DSP        PIC  9(3)
                  VALUE IS 2.
       77 I-COL-DAT        PIC  9(3)
                  VALUE IS 3.
       77 I-COL-ART        PIC  9(3)
                  VALUE IS 4.
       77 I-COL-DES        PIC  9(3)
                  VALUE IS 6.
       77 I-COL-MAR        PIC  9(3)
                  VALUE IS 11.
       77 I-COL-REP        PIC  9(3)
                  VALUE IS 12.
       77 I-COL-CLI        PIC  9(3)
                  VALUE IS 14.
       77 I-COL-NOM        PIC  9(3)
                  VALUE IS 15.
       77 I-COL-BON        PIC  9(3)
                  VALUE IS 18.
       77 I-COL-FAC        PIC  9(3)
                  VALUE IS 19.
       77 I-COL-MAT        PIC  9(3)
                  VALUE IS 20.
       77 I-COL-DEP        PIC  9(3)
                  VALUE IS 23.
       77 I-COL-FOU        PIC  9(3)
                  VALUE IS 25.
       77 I-COL-FAM        PIC  9(3)
                  VALUE IS 26.
       77 I-COL-RFN        PIC  9(3)
                  VALUE IS 27.
       77 I-COL-CHC        PIC  9(3)
                  VALUE IS 29.
       77 I-COL-TRI        PIC  9(3).
       77 W-COL-DSP        PIC  9(3).
       77 W-COL-DAT        PIC  9(3).
       77 W-COL-ART        PIC  9(3).
       77 W-COL-DES        PIC  9(3).
       77 W-COL-MAR        PIC  9(3).
       77 W-COL-REP        PIC  9(3).
       77 W-COL-CLI        PIC  9(3).
       77 W-COL-NOM        PIC  9(3).
       77 W-COL-BON        PIC  9(3).
       77 W-COL-FAC        PIC  9(3).
       77 W-COL-MAT        PIC  9(3).
       77 W-COL-NVC        PIC  9(3).
       77 W-COL-DEP        PIC  9(3).
       77 W-COL-FOU        PIC  9(3).
       77 W-COL-FAM        PIC  9(3).
       77 W-COL-RFN        PIC  9(3).
       77 W-COL-CHC        PIC  9(3).
       77 D-I  PIC  9(3).
       77 W-NB-COLONNES-ACTUEL         PIC  9(3).
       77 W-SEL            PIC  X(80)
                  VALUE IS "Critères".
       77 W-SEL-IMP        PIC  X(80)
                  VALUE IS "Critères".
       01 W-CLE9-MHIV.
           05 SV-AGE           PIC  X(3).
           05 SV-ORI           PIC  X.
           05 SV-BLO           PIC  X(8).
           05 SV-LIG           PIC  9(4).
       77 W-MHIV-OK        PIC  9.
       77 AUTO-MODPR       PIC  9.
       77 SV-RUP           PIC  X(20).
       77 W-NB-RUP         PIC  9(3).
       77 W-LIB-RUP        PIC  X(80).
       77 W-IMPRIME        PIC  9.
       77 W-NB-AFFI        PIC  9(6).
       77 W-NB-TRI         PIC  9(6).
       77 W-DEB            PIC  9.
       77 ASSIGN-LISFICIMP PIC  X(60).
       77 W-ART            PIC  9.
       77 W-FAC            PIC  9.
       77 W-BON            PIC  9.
       77 s    PIC  X(256).
       77 W-MXPARDIS       PIC  9(9).
       77 W-MXPARMAT       PIC  9(9).
       77 W-NB-AN          PIC  9.
       77 W-NB-MOIS        PIC  99.
       01 W-GFA.
           05 W-GRA            PIC  99.
           05 W-FAM            PIC  99.
       77 SV-NIV           PIC  9.
       77 W-CXSOC          PIC  9(9).
       77 IND-COL          PIC  9
                  VALUE IS 1.
       77 Screen1-Mn-2-Handle
                  USAGE IS HANDLE OF MENU VALUE NULL.
       77 W-ETAT           PIC  9.
       77 W-AFF            PIC  9.
       77 W-COL            PIC  99.
       77 W-COL-QTE        PIC  99.
       77 W-COL-HT         PIC  99.
       77 K    PIC  9(3).
       77 J    PIC  9(3).
       77 IsMobVisible     PIC  X(30).
       77 PREVISU24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 IND-RAPPEL       PIC  9
                  VALUE IS 0.
       77 FILE-STATUS      PIC  X(2).
           88 Valid-SVINT VALUE IS "00" THRU "09". 
       01 W-TAB-COLONNE.
           05 W-COLONNE        PIC  99
                      OCCURS NOMBRE-COLONNES TIMES.
       77 W-SEL-TRI        PIC  9.
       77 I-SER            PIC  9.
       77 NB-SER           PIC  9(3).
       77 ZF-ORI           PIC  XXX.
       77 ZF-CLE           PIC  X(30).
       77 W-DFA            PIC  S9(1)
                  VALUE IS 0.
       77 AVO-INT          PIC  9
                  VALUE IS 0.
       77 FLAGS            PIC  99.
       77 MODU-PRIM        PIC  9.
       77 W-PRIM           PIC  9
                  VALUE IS 0.
       77 W-LIB-CLI4       PIC  X(19)
                  VALUE IS "Plusieurs 'Groupes'".
       77 W-WIDTH          PIC  9(3).
       77 SV-ZONE-PALM     PIC  X(500).
       77 W-TITSOC         PIC  9(9).
       77 IMPRIMER24-png   PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 IMPRIMER24-bmp   PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 IMPRIMER24-jpg   PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 IMPRIMER32-BMP   PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 PREVISU32-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ENGRENAGE32-BMP  PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FLECHED32-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ZOOM20-BMP       PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Calibri12B
                  USAGE IS HANDLE OF FONT VALUE NULL.
       77 Calibri12
                  USAGE IS HANDLE OF FONT VALUE NULL.
       77 Calibri11B
                  USAGE IS HANDLE OF FONT VALUE NULL.
       77 Calibri9
                  USAGE IS HANDLE OF FONT VALUE NULL.
       77 Calibri10
                  USAGE IS HANDLE OF FONT VALUE NULL.
       77 Calibri11
                  USAGE IS HANDLE OF FONT VALUE NULL.
       77 RAFRAICHIR32-BMP PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 EXPORT32-BMP     PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Calibri14B
                  USAGE IS HANDLE OF FONT VALUE NULL.
       77 W-MSGNB          PIC  X(30).
       77 SCREENBARRE
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 SCREENBARRE-PB-ANNULER
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 SCREENBARRE-LA-ANNULER0
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 SCREENPATIENTER
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 SCREENPATIENTER-PB-1
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 S-GRAND          PIC  S9(4)V9(2)
                  VALUE IS 210,00.
       77 Wenable-Rem      PIC  9
                  VALUE IS 1.
       77 Wenable-Mar      PIC  9
                  VALUE IS 1.

      *{Bench}end
       LINKAGE                     SECTION.
      *{Bench}linkage
       77 LK-ZONE-PALM     PIC  X(500).
           COPY  "\\192.63.63.102\webp\mx\copy\LK-HIV-C.wrk".
      *{Bench}end
       SCREEN                      SECTION.
      *{Bench}copy-screen
       01 Screen1, HELP-ID 250069.
           03 Screen1-Fr-LOT, Frame, 
              COL 158,14, LINE 26,46, LINES 5,85 CELLS, 
              SIZE 33,00 CELLS, 
              ENGRAVED, COLOR IS 521, FONT IS Calibri12B, ID IS 115, 
              VISIBLE 0, BACKGROUND-LOW, ATW-CSS-CLASS "card-bottom".
           03 Screen1-La-13, Label, 
              COL 158,86, LINE 27,62, LINES 1,54 CELLS, 
              SIZE 9,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 108, 
              LABEL-OFFSET 0, 
              TITLE "N° Lot", TRANSPARENT, ATW-CSS-CLASS "h3".
           03 Screen1-Fr-AFF, Frame, 
              COL 158,14, LINE 10,62, LINES 5,46 CELLS, 
              SIZE 33,00 CELLS, 
              ENGRAVED, COLOR IS 521, FONT IS Calibri12B, ID IS 37, 
              VISIBLE 0, BACKGROUND-LOW, ATW-CSS-CLASS "card-bottom".
           03 Screen1-La-8, Label, 
              COL 158,86, LINE 11,77, LINES 1,54 CELLS, 
              SIZE 13,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 106, 
              LABEL-OFFSET 0, 
              TITLE "N° Affaire", TRANSPARENT, ATW-CSS-CLASS "h3".
           03 Screen1-Fr-NIV, Frame, 
              COL 2,43, LINE 10,62, LINES 15,08 CELLS, 
              SIZE 50,14 CELLS, 
              ENGRAVED, COLOR IS 521, FONT IS Calibri12B, ID IS 38, 
              VISIBLE 0, BACKGROUND-LOW, ATW-CSS-CLASS "card-bottom".
           03 Screen1-Fr-VEN, Frame, 
              COL 193,86, LINE 36,77, LINES 8,15 CELLS, 
              SIZE 15,29 CELLS, 
              ENGRAVED, COLOR IS 521, FONT IS Calibri12B, ID IS 68, 
              VISIBLE 0, BACKGROUND-LOW, ATW-CSS-CLASS "card-bottom".
           03 Screen1-La-12, Label, 
              COL 194,43, LINE 37,92, LINES 1,46 CELLS, 
              SIZE 14,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 118, 
              LABEL-OFFSET 0, 
              TITLE "Vendeurs *", TRANSPARENT, ATW-CSS-CLASS "h3".
           03 Screen1-Fr-DEP, Frame, 
              COL 193,86, LINE 10,62, LINES 8,15 CELLS, 
              SIZE 15,29 CELLS, 
              ENGRAVED, COLOR IS 521, FONT IS Calibri12B, ID IS 84, 
              VISIBLE 0, BACKGROUND-LOW, ATW-CSS-CLASS "card-bottom".
           03 Screen1-La-9, Label, 
              COL 194,71, LINE 11,77, LINES 1,46 CELLS, 
              SIZE 10,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 107, 
              LABEL-OFFSET 0, 
              TITLE "Dépôts", TRANSPARENT, ATW-CSS-CLASS "h3".
           03 Screen1-Fr-CLI, Frame, 
              COL 106,71, LINE 26,46, LINES 18,46 CELLS, 
              SIZE 48,71 CELLS, 
              ENGRAVED, COLOR IS 521, FONT IS Calibri12B, ID IS 62, 
              VISIBLE 0, BACKGROUND-LOW, ATW-CSS-CLASS "card-bottom".
           03 Screen1-La-5, Label, 
              COL 107,43, LINE 27,62, LINES 2,00 CELLS, 
              SIZE 17,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 9, LABEL-OFFSET 0, 
              TITLE "Clients *", TRANSPARENT, ATW-CSS-CLASS "h3".
           03 Screen1-Fr-RET, Frame, 
              COL 158,14, LINE 32,54, LINES 12,38 CELLS, 
              SIZE 33,00 CELLS, 
              ENGRAVED, COLOR IS 521, FONT IS Calibri12B, ID IS 90, 
              VISIBLE 0, BACKGROUND-LOW, ATW-CSS-CLASS "card-bottom".
           03 Screen1-La-6, Label, 
              COL 158,86, LINE 33,69, LINES 2,15 CELLS, 
              SIZE 14,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 10, LABEL-OFFSET 0, 
              TITLE "Ventes", TRANSPARENT, VISIBLE 0, 
              ATW-CSS-CLASS "h3".
           03 Screen1-Fr-POS, Frame, 
              COL 193,86, LINE 19,46, LINES 8,15 CELLS, 
              SIZE 15,29 CELLS, 
              ENGRAVED, COLOR IS 521, FONT IS Calibri12B, ID IS 71, 
              VISIBLE 0, BACKGROUND-LOW, ATW-CSS-CLASS "card-bottom".
           03 Screen1-La-10, Label, 
              COL 194,57, LINE 20,62, LINES 1,92 CELLS, 
              SIZE 14,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 117, 
              LABEL-OFFSET 0, 
              TITLE "Postes CI *", TRANSPARENT, ATW-CSS-CLASS "h3".
           03 Screen1-Fr-A, Frame, 
              COL 2,43, LINE 45,54, LINES 8,00 CELLS, 
              SIZE 186,71 CELLS, 
              LOWERED, COLOR IS 521, FILL-COLOR 16, FILL-PERCENT 100, 
              FONT IS Calibri12B, ID IS 43, VISIBLE 0, BACKGROUND-LOW, 
              ATW-CSS-CLASS "card-bottom".
           03 Screen1-Cb-DSP, Check-Box, 
              COL 3,86, LINE 48,54, LINES 1,62 CELLS, SIZE 18,29 CELLS, 
              COLOR IS 1, FONT IS Calibri11, ID IS 44, 
              TITLE "Date sortie", VALUE AFF-DSP-INT, VISIBLE 0.
           03 Screen1-Cb-CLI, Check-Box, 
              COL 21,86, LINE 48,54, LINES 1,62 CELLS, 
              SIZE 18,29 CELLS, 
              COLOR IS 1, FONT IS Calibri11, ID IS 59, 
              TITLE "Client", VALUE AFF-CLI-INT, VISIBLE 0.
           03 Screen1-Cb-BON, Check-Box, 
              COL 35,57, LINE 48,54, LINES 1,62 CELLS, 
              SIZE 18,29 CELLS, 
              COLOR IS 1, FONT IS Calibri11, ID IS 60, 
              TITLE "Bon", VALUE AFF-BON-INT, VISIBLE 0.
           03 Screen1-Cb-ART, Check-Box, 
              COL 47,86, LINE 48,54, LINES 1,62 CELLS, 
              SIZE 18,29 CELLS, 
              COLOR IS 1, FONT IS Calibri11, ID IS 45, 
              TITLE "Référence", VALUE AFF-ART-INT, VISIBLE 0.
           03 Screen1-Cb-RFN, Check-Box, 
              COL 66,14, LINE 48,54, LINES 1,62 CELLS, 
              SIZE 18,29 CELLS, 
              COLOR IS 1, FONT IS Calibri11, ID IS 141, 
              TITLE "Réf. Norm.", VALUE AFF-RFN-INT, VISIBLE 0.
           03 Screen1-Cb-REP, Check-Box, 
              COL 84,00, LINE 48,54, LINES 1,62 CELLS, 
              SIZE 18,29 CELLS, 
              COLOR IS 1, FONT IS Calibri11, ID IS 58, 
              TITLE "Vendeur", VALUE AFF-REP-INT, VISIBLE 0.
           03 Screen1-Cb-FOU, Check-Box, 
              COL 35,57, LINE 50,92, LINES 1,62 CELLS, 
              SIZE 18,29 CELLS, 
              COLOR IS 1, FONT IS Calibri11, ID IS 129, 
              TITLE "FRN", VALUE AFF-FOU-INT, VISIBLE 0.
           03 Screen1-Cb-DEP, Check-Box, 
              COL 113,71, LINE 48,54, LINES 1,62 CELLS, 
              SIZE 18,29 CELLS, 
              COLOR IS 1, FONT IS Calibri11, ID IS 114, 
              TITLE "Dépôt", VALUE AFF-DEP-INT, VISIBLE 0.
           03 Screen1-Cb-QTE, Check-Box, 
              COL 126,86, LINE 48,54, LINES 1,62 CELLS, 
              SIZE 18,29 CELLS, 
              COLOR IS 1, FONT IS Calibri11, ID IS 48, 
              TITLE "Quantité", VALUE AFF-QTE-INT, VISIBLE 0.
           03 Screen1-Cb-NAF, Check-Box, 
              COL 142,57, LINE 48,54, LINES 1,62 CELLS, 
              SIZE 18,29 CELLS, 
              COLOR IS 1, FONT IS Calibri11, ID IS 113, 
              TITLE "Affaire", VALUE AFF-NAF-INT, VISIBLE 0.
           03 Screen1-Cb-REM, Check-Box, 
              COL 142,57, LINE 50,92, LINES 1,62 CELLS, 
              SIZE 18,29 CELLS, 
              COLOR IS 1, ENABLED Wenable-Rem, FONT IS Calibri11, 
              ID IS 56, 
              TITLE "Remise", VALUE AFF-REM-INT, VISIBLE 0.
           03 Screen1-Cb-HT, Check-Box, 
              COL 157,00, LINE 48,54, LINES 1,62 CELLS, 
              SIZE 18,29 CELLS, 
              COLOR IS 1, FONT IS Calibri11, ID IS 78, 
              TITLE "Total HT Net", VALUE AFF-HT-INT, VISIBLE 0.
           03 Screen1-Cb-Dat, Check-Box, 
              COL 3,86, LINE 50,92, LINES 1,62 CELLS, SIZE 18,29 CELLS, 
              COLOR IS 1, FONT IS Calibri11, ID IS 91, 
              TITLE "Date facture", VALUE AFF-Dat-INT, VISIBLE 0.
           03 Screen1-Cb-CHC, Check-Box, 
              COL 175,29, LINE 48,54, LINES 1,62 CELLS, 
              SIZE 13,29 CELLS, 
              COLOR IS 1, FONT IS Calibri11, ID IS 145, 
              TITLE "Lieu", VALUE AFF-CHC-INT, VISIBLE 0.
           03 Screen1-Cb-FAC, Check-Box, 
              COL 84,00, LINE 50,92, LINES 1,62 CELLS, 
              SIZE 18,29 CELLS, 
              COLOR IS 1, FONT IS Calibri11, ID IS 61, 
              TITLE "Facture", VALUE AFF-FAC-INT, VISIBLE 0.
           03 Screen1-Cb-DES, Check-Box, 
              COL 47,86, LINE 50,92, LINES 1,62 CELLS, 
              SIZE 18,29 CELLS, 
              COLOR IS 1, FONT IS Calibri11, ID IS 46, 
              TITLE "Désignation", VALUE AFF-DES-INT, VISIBLE 0.
           03 Screen1-Cb-FAM, Check-Box, 
              COL 66,14, LINE 50,92, LINES 1,62 CELLS, 
              SIZE 18,29 CELLS, 
              COLOR IS 1, FONT IS Calibri11, ID IS 131, 
              TITLE "Fam. art.", VALUE AFF-FAM-INT, VISIBLE 0.
           03 Screen1-Cb-ISA, Check-Box, 
              COL 99,43, LINE 48,54, LINES 1,62 CELLS, 
              SIZE 14,71 CELLS, 
              COLOR IS 1, FONT IS Calibri11, ID IS 143, 
              TITLE "Pr.ordre", VALUE AFF-ISA-INT, VISIBLE 0.
           03 Screen1-Cb-NVC, Check-Box, 
              COL 99,43, LINE 50,92, LINES 1,62 CELLS, 
              SIZE 19,57 CELLS, 
              COLOR IS 1, FONT IS Calibri11, ID IS 116, 
              TITLE "Niv. Cde", VALUE AFF-NVC-INT, VISIBLE 0.
           03 Screen1-Cb-MAT, Check-Box, 
              COL 126,86, LINE 50,92, LINES 1,62 CELLS, 
              SIZE 18,29 CELLS, 
              COLOR IS 1, FONT IS Calibri11, ID IS 104, 
              TITLE "Matériel", VALUE AFF-MAT-INT, VISIBLE 0.
           03 Screen1-Cb-PRI, Check-Box, 
              COL 113,71, LINE 50,92, LINES 1,62 CELLS, 
              SIZE 14,00 CELLS, 
              COLOR IS 1, FONT IS Calibri11, ID IS 55, 
              TITLE "Prix", VALUE AFF-PRI-INT, VISIBLE 0.
           03 Screen1-Cb-TOT, Check-Box, 
              COL 157,00, LINE 50,92, LINES 1,62 CELLS, 
              SIZE 20,29 CELLS, 
              COLOR IS 1, FONT IS Calibri11, ID IS 96, 
              TITLE "Cumuls HT et Qté", VALUE AFF-TOT-INT, VISIBLE 0.
           03 Screen1-Cb-MAR, Check-Box, 
              COL 21,86, LINE 50,92, LINES 1,62 CELLS, 
              SIZE 13,43 CELLS, 
              COLOR IS 1, ENABLED Wenable-Mar, FONT IS Calibri11, 
              ID IS 57, 
              TITLE "Marge", VALUE AFF-MAR-INT, VISIBLE 0.
           03 Screen1-La-14, Label, 
              COL 3,57, LINE 46,46, LINES 2,08 CELLS, SIZE 38,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 119, 
              LABEL-OFFSET 0, 
              TITLE "Critères d'affichage", TRANSPARENT, 
              ATW-CSS-CLASS "h3".
           03 Screen1-Gd-1, Grid, 
              COL 1,43, LINE 54,00, LINES 10,46 CELLS, 
              SIZE 209,00 CELLS, 
              ADJUSTABLE-COLUMNS, 3-D, CENTERED-HEADINGS, COLOR IS 1, 
              COLUMN-HEADINGS, 
              DATA-COLUMNS (1, 2, 12, 22, 42, 43, 73, 86, 99, 112, 125,
              138, 144, 145, 151, 181, 211, 219, 227, 233, 254, 257,
              267, 270, 273, 303, 328, 349, 353, 373), 
              DISPLAY-COLUMNS (1, 2, 13, 24, 45, 48, 78, 86, 96, 106,
              112, 120, 125, 128, 135, 165, 195, 199, 207, 217, 238,
              242, 253, 257, 261, 268, 273, 295, 300, 321), 
              ALIGNMENT ("U", "C", "C", "L", "U", "L", "R", "R", "R", "R
      -       "", "R", "C", "C", "L", "L", "L", "C", "R", "L", "U", "C"
              , "C", "C", "C", "L", "L", "L", "C", "U", "U"), 
              SEPARATION (5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
              5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5), 
              CURSOR-FRAME-WIDTH 0, DIVIDER-COLOR W-Divider-Color, 
              END-COLOR W-End-Color, FONT IS Calibri11, 
              HEADING-COLOR 304, HEADING-DIVIDER-COLOR 8, 
              HEADING-FONT IS Calibri11B, HSCROLL, ID IS 2, 
              NUM-COL-HEADINGS 1, NUM-ROWS W-Num-Rows, 
              POP-UP MENU IS Screen1-Mn-1-Handle, 
              RECORD-DATA Screen1-Gd-1-Record, TILED-HEADINGS, USE-TAB, 
              VPADDING 50, VISIBLE 0, VSCROLL, ATW-CSS-CLASS "table", 
              EVENT PROCEDURE Screen1-Gd-1-Event-Proc.
           03 Screen1-Fr-DAT, Frame, 
              COL 55,29, LINE 10,62, LINES 15,08 CELLS, 
              SIZE 48,71 CELLS, 
              ENGRAVED, COLOR IS 521, FONT IS Calibri12B, ID IS 8, 
              VISIBLE 0, BACKGROUND-LOW, ATW-CSS-CLASS "card-bottom".
           03 Screen1-La-2, Label, 
              COL 56,00, LINE 11,77, LINES 1,85 CELLS, 
              SIZE 11,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 110, 
              LABEL-OFFSET 0, 
              TITLE "Dates", TRANSPARENT, VISIBLE 0, 
              ATW-CSS-CLASS "h3".
           03 Screen1-Fr-ACT, Frame, 
              COL 106,71, LINE 10,62, LINES 15,08 CELLS, 
              SIZE 48,71 CELLS, 
              ENGRAVED, COLOR IS 521, FONT IS Calibri12B, ID IS 30, 
              VISIBLE 0, BACKGROUND-LOW, ATW-CSS-CLASS "card-bottom".
           03 Screen1-La-3, Label, 
              COL 107,43, LINE 11,77, LINES 1,54 CELLS, 
              SIZE 11,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 111, 
              LABEL-OFFSET 0, 
              TITLE "Activités", TRANSPARENT, VISIBLE 0, 
              ATW-CSS-CLASS "h3".
           03 Screen1-Fr-TEC, Frame, 
              COL 193,86, LINE 28,31, LINES 8,15 CELLS, 
              SIZE 15,29 CELLS, 
              ENGRAVED, COLOR IS 521, FONT IS Calibri12B, ID IS 89, 
              TITLE IsMobVisible, VISIBLE 0, BACKGROUND-LOW, 
              ATW-CSS-CLASS "card-bottom".
           03 Screen1-La-11, Label, 
              COL 194,29, LINE 29,46, LINES 1,69 CELLS, 
              SIZE 14,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 109, 
              LABEL-OFFSET 0, 
              TITLE "Techniciens", TRANSPARENT, ATW-CSS-CLASS "h3".
           03 Screen1-Fr-SOR, Frame, 
              COL 2,29, LINE 39,00, LINES 5,92 CELLS, 
              SIZE 101,57 CELLS, 
              ENGRAVED, COLOR IS 521, ID IS 52, VISIBLE 0, 
              BACKGROUND-LOW, ATW-CSS-CLASS "card-bottom".
           03 Screen1-Fr-MAR, Frame, 
              COL 158,14, LINE 15,62, LINES 10,08 CELLS, 
              SIZE 33,00 CELLS, 
              ENGRAVED, COLOR IS 521, FONT IS Calibri12B, ID IS 74, 
              VISIBLE 0, BACKGROUND-LOW, ATW-CSS-CLASS "card-bottom".
           03 Screen1-La-7, Label, 
              COL 160,00, LINE 16,85, LINES 2,08 CELLS, 
              SIZE 24,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 12, LABEL-OFFSET 0, 
              TITLE "Marques Matériel", TRANSPARENT, VISIBLE 0, 
              ATW-CSS-CLASS "h3".
           03 Screen1-Fr-ART, Frame, 
              COL 2,43, LINE 26,46, LINES 11,54 CELLS, 
              SIZE 101,57 CELLS, 
              ENGRAVED, COLOR IS 521, FONT IS Calibri12B, ID IS 63, 
              VISIBLE 0, BACKGROUND-LOW, ATW-CSS-CLASS "card-bottom".
           03 Screen1-La-4, Label, 
              COL 3,14, LINE 27,62, LINES 1,77 CELLS, SIZE 15,00 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 7, LABEL-OFFSET 0, 
              TITLE "Articles *", TRANSPARENT, VISIBLE 0, 
              ATW-CSS-CLASS "h3".
           03 Screen1-Rb-NIV1, Radio-Button, 
              COL 5,43, LINE 14,77, LINES 1,69 CELLS, SIZE 9,71 CELLS, 
              COLOR IS 2, FONT IS Calibri12, GROUP 1, GROUP-VALUE 1, 
              ID IS 82, 
              TITLE "Société", VALUE NSA-INT, VISIBLE 0, 
              EVENT PROCEDURE Screen1-Rb-NIV1-Event-Proc.
           03 Screen1-Rb-NIV2, Radio-Button, 
              COL 24,57, LINE 14,77, LINES 1,69 CELLS, SIZE 9,71 CELLS, 
              COLOR IS 2, FONT IS Calibri12, GROUP 1, GROUP-VALUE 2, 
              ID IS 83, 
              TITLE "Agence", VALUE NSA-INT, VISIBLE 0, 
              EVENT PROCEDURE Screen1-Rb-NIV2-Event-Proc.
           03 Screen1-Ef-Age, Entry-Field, 
              COL 3,86, LINE 19,31, LINES 1,85 CELLS, SIZE 6,71 CELLS, 
              3-D, COLOR IS 513, FONT IS Calibri12, ID IS 76, CENTER, 
              VALUE AGE-INT, VISIBLE 0, 
              AFTER PROCEDURE Screen1-Ef-Age-Aft-Procedure, 
              EVENT PROCEDURE Screen1-Ef-Age-Event-Proc.
           03 Screen1-Ef-DATE1, Entry-Field, 
              COL 60,57, LINE 19,31, LINES 1,85 CELLS, 
              SIZE 17,29 CELLS, 
              3-D, COLOR IS 1, FONT IS Calibri12, ID IS 17, CENTER, 
              VALUE W-DATE1, VISIBLE 0, 
              AFTER PROCEDURE Screen1-Ef-DATE1-Aft-Procedure, 
              EVENT PROCEDURE Screen1-Ef-DATE1-Event-Proc.
           03 Screen1-Ef-DATE2, Entry-Field, 
              COL 84,43, LINE 19,31, LINES 1,85 CELLS, 
              SIZE 17,29 CELLS, 
              3-D, COLOR IS 1, FONT IS Calibri12, ID IS 20, CENTER, 
              VALUE W-DATE2, VISIBLE 0, 
              AFTER PROCEDURE Screen1-Ef-DATE2-Aft-Procedure, 
              EVENT PROCEDURE Screen1-Ef-DATE2-Event-Proc.
           03 Screen1-Ef-AFF, Entry-Field, 
              COL 164,29, LINE 13,54, LINES 1,85 CELLS, 
              SIZE 23,71 CELLS, 
              3-D, COLOR IS 1, FONT IS Calibri12, ID IS 40, LEFT, 
              VALUE AFF-INT, VISIBLE 0.
           03 Screen1-Ef-LOT, Entry-Field, 
              COL 164,29, LINE 29,69, LINES 1,85 CELLS, 
              SIZE 23,71 CELLS, 
              3-D, COLOR IS 1, FONT IS Calibri12, ID IS 39, LEFT, 
              VALUE LOT-INT, VISIBLE 0.
           03 Screen1-Cb-ACT1, Check-Box, 
              COL 110,29, LINE 14,77, LINES 1,92 CELLS, 
              SIZE 22,57 CELLS, 
              COLOR IS 2, FONT IS Calibri12, ID IS 4, 
              TITLE LIB-TAB-ACT(1), VALUE VAL-TAB-ACT(1), VISIBLE 0.
           03 Screen1-Cb-ACT2, Check-Box, 
              COL 110,29, LINE 17,54, LINES 1,92 CELLS, 
              SIZE 22,57 CELLS, 
              COLOR IS 2, FONT IS Calibri12, ID IS 14, 
              TITLE LIB-TAB-ACT(2), VALUE VAL-TAB-ACT(2), VISIBLE 0.
           03 Screen1-Cb-ACT3, Check-Box, 
              COL 110,29, LINE 20,31, LINES 1,92 CELLS, 
              SIZE 22,57 CELLS, 
              COLOR IS 2, FONT IS Calibri12, ID IS 15, 
              TITLE LIB-TAB-ACT(3), VALUE VAL-TAB-ACT(3), VISIBLE 0.
           03 Screen1-Cb-ACT4, Check-Box, 
              COL 110,29, LINE 23,08, LINES 1,92 CELLS, 
              SIZE 22,57 CELLS, 
              COLOR IS 2, FONT IS Calibri12, ID IS 18, 
              TITLE LIB-TAB-ACT(4), VALUE VAL-TAB-ACT(4), VISIBLE 0.
           03 Screen1-Rb-CLI1, Radio-Button, 
              COL 110,57, LINE 30,92, LINES 1,23 CELLS, 
              SIZE 26,86 CELLS, 
              COLOR IS 2, FONT IS Calibri12, GROUP 2, GROUP-VALUE 1, 
              ID IS 66, 
              TITLE "Tous", VALUE CLI-INT, VISIBLE 0, 
              EVENT PROCEDURE Screen1-Rb-CLI1-Event-Proc.
           03 Screen1-Rb-CLI2, Radio-Button, 
              COL 110,57, LINE 32,54, LINES 1,23 CELLS, 
              SIZE 26,86 CELLS, 
              COLOR IS 2, FONT IS Calibri12, GROUP 2, GROUP-VALUE 2, 
              ID IS 67, 
              TITLE "Plusieurs", VALUE CLI-INT, VISIBLE 0, 
              EVENT PROCEDURE Screen1-Rb-CLI2-Event-Proc.
           03 Screen1-Rb-CLI3, Radio-Button, 
              COL 110,57, LINE 34,15, LINES 1,23 CELLS, 
              SIZE 26,86 CELLS, 
              COLOR IS 2, FONT IS Calibri12, GROUP 2, GROUP-VALUE 3, 
              ID IS 103, 
              TITLE "Aucun", VALUE CLI-INT, VISIBLE 0, 
              EVENT PROCEDURE Screen1-Rb-CLI3-Event-Proc.
           03 Screen1-Rb-CDV1, Radio-Button, 
              COL 110,57, LINE 36,38, LINES 1,23 CELLS, 
              SIZE 26,86 CELLS, 
              COLOR IS 2, FONT IS Calibri12, GROUP 12, GROUP-VALUE 1, 
              ID IS 25, 
              TITLE "Tous les clients divers", VALUE CDV-INT, 
              VISIBLE 0, 
              EVENT PROCEDURE Screen1-Rb-CDV1-Event-Proc.
           03 Screen1-Rb-CDV2, Radio-Button, 
              COL 110,57, LINE 38,00, LINES 1,23 CELLS, 
              SIZE 26,86 CELLS, 
              COLOR IS 2, FONT IS Calibri12, GROUP 12, GROUP-VALUE 2, 
              ID IS 26, 
              TITLE "Un client divers", VALUE CDV-INT, VISIBLE 0, 
              EVENT PROCEDURE Screen1-Rb-CDV2-Event-Proc.
           03 Screen1-Rb-LIV1, Radio-Button, 
              COL 110,57, LINE 40,38, LINES 1,23 CELLS, 
              SIZE 26,86 CELLS, 
              COLOR IS 2, FONT IS Calibri12, GROUP 13, GROUP-VALUE 1, 
              ID IS 27, 
              TITLE "Tous les lieux de livraison", VALUE LIV-INT, 
              VISIBLE 0, 
              EVENT PROCEDURE Screen1-Rb-LIV1-Event-Proc.
           03 Screen1-Rb-LIV2, Radio-Button, 
              COL 110,57, LINE 41,77, LINES 1,23 CELLS, 
              SIZE 26,86 CELLS, 
              COLOR IS 2, FONT IS Calibri12, GROUP 13, GROUP-VALUE 2, 
              ID IS 29, 
              TITLE "Un lieu de livraison", VALUE LIV-INT, VISIBLE 0, 
              EVENT PROCEDURE Screen1-Rb-LIV2-Event-Proc.
           03 Screen1-Rb-ART1, Radio-Button, 
              COL 4,57, LINE 30,77, LINES 1,23 CELLS, SIZE 25,29 CELLS, 
              COLOR IS 2, FONT IS Calibri12, GROUP 3, GROUP-VALUE 1, 
              ID IS 64, 
              TITLE "Tous", VALUE ART-INT, VISIBLE 0, 
              EVENT PROCEDURE Screen1-Rb-ART1-Event-Proc.
           03 Screen1-Rb-ART2, Radio-Button, 
              COL 4,57, LINE 32,62, LINES 1,23 CELLS, SIZE 25,29 CELLS, 
              COLOR IS 2, FONT IS Calibri12, GROUP 3, GROUP-VALUE 2, 
              ID IS 65, 
              TITLE "Plusieurs", VALUE ART-INT, VISIBLE 0, 
              EVENT PROCEDURE Screen1-Rb-ART2-Event-Proc.
           03 Screen1-Rb-ART3, Radio-Button, 
              COL 4,57, LINE 34,46, LINES 1,23 CELLS, SIZE 25,29 CELLS, 
              COLOR IS 2, FONT IS Calibri12, GROUP 3, GROUP-VALUE 3, 
              ID IS 34, 
              TITLE "Un article divers ", VALUE ART-INT, VISIBLE 0, 
              EVENT PROCEDURE Screen1-Rb-ART3-Event-Proc.
           03 Screen1-Rb-ART6, Radio-Button, 
              COL 4,57, LINE 36,31, LINES 1,23 CELLS, SIZE 25,29 CELLS, 
              COLOR IS 2, FONT IS Calibri12, GROUP 3, GROUP-VALUE 6, 
              ID IS 137, 
              TITLE "Articles d'un fournisseur", VALUE ART-INT, 
              VISIBLE 0, 
              EVENT PROCEDURE Screen1-Rb-ART6-Event-Proc.
           03 Screen1-Ef-AR1, Entry-Field, 
              COL 56,57, LINE 34,08, LINES 1,85 CELLS, SIZE 5,00 CELLS, 
              3-D, COLOR IS 2, FONT IS Small-Font, ID IS 35, LEFT, 
              NUMERIC, VALUE AR1-INT, VISIBLE 0.
           03 Screen1-Ef-AR2, Entry-Field, 
              COL 62,29, LINE 34,08, LINES 1,85 CELLS, 
              SIZE 18,00 CELLS, 
              3-D, COLOR IS 2, FONT IS Small-Font, ID IS 36, LEFT, 
              VALUE AR2-INT, VISIBLE 0.
           03 Screen1-Ef-FOU, Entry-Field, 
              COL 53,43, LINE 34,15, LINES 1,85 CELLS, SIZE 8,00 CELLS, 
              3-D, COLOR IS 2, FONT IS Calibri12, ID IS 138, CENTER, 
              VALUE FOU3-INT, VISIBLE 0, 
              AFTER PROCEDURE Screen1-Ef-FOU-Aft-Procedure.
           03 Screen1-Cb-AOR, Check-Box, 
              COL 35,86, LINE 30,77, LINES 1,69 CELLS, 
              SIZE 12,71 CELLS, 
              COLOR IS 2, FONT IS Calibri12, ID IS 132, 
              TITLE "Origine", VALUE AOR-INT.
           03 Screen1-Cb-AAD, Check-Box, 
              COL 51,29, LINE 30,77, LINES 1,69 CELLS, 
              SIZE 16,43 CELLS, 
              COLOR IS 2, FONT IS Calibri12, ID IS 133, 
              TITLE "Adaptable", VALUE AAD-INT.
           03 Screen1-Cb-AOC, Check-Box, 
              COL 70,86, LINE 30,77, LINES 1,69 CELLS, 
              SIZE 13,86 CELLS, 
              COLOR IS 2, FONT IS Calibri12, ID IS 134, 
              TITLE "Occasion", VALUE AOC-INT.
           03 Screen1-Cb-ADI, Check-Box, 
              COL 87,14, LINE 30,77, LINES 1,69 CELLS, 
              SIZE 10,57 CELLS, 
              COLOR IS 2, FONT IS Calibri12, ID IS 135, 
              TITLE "Divers", VALUE ADI-INT.
           03 Screen1-Cb-SOR, Check-Box, 
              COL 3,71, LINE 40,00, LINES 1,69 CELLS, SIZE 28,86 CELLS, 
              COLOR IS 2, FONT IS Calibri12, ID IS 53, 
              TITLE "Sans les transferts / agence", VALUE SOR-INT.
           03 Screen1-Ef-TYPE, Entry-Field, 
              COL 164,29, LINE 23,62, LINES 1,85 CELLS, 
              SIZE 23,71 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, FONT IS Small-Font, ID IS 24, 
              LEFT, VALUE TYP-INT, VISIBLE 0.
           03 Screen1-Rb-MAR1, Radio-Button, 
              COL 159,57, LINE 19,62, LINES 1,23 CELLS, 
              SIZE 22,57 CELLS, 
              COLOR IS 2, ENABLED 0, FONT IS Calibri12, GROUP 7, 
              GROUP-VALUE 1, ID IS 75, 
              TITLE "Tous", VALUE MAR-INT, VISIBLE 0.
           03 Screen1-Rb-MAR2, Radio-Button, 
              COL 159,71, LINE 21,38, LINES 1,23 CELLS, 
              SIZE 22,57 CELLS, 
              COLOR IS 2, ENABLED 0, FONT IS Calibri12, GROUP 7, 
              GROUP-VALUE 2, ID IS 77, 
              TITLE "Plusieurs", VALUE MAR-INT, VISIBLE 0, 
              EVENT PROCEDURE Screen1-Rb-MAR2-Event-Proc.
           03 Screen1-Rb-RET1, Radio-Button, 
              COL 159,86, LINE 36,38, LINES 1,23 CELLS, 
              SIZE 25,71 CELLS, 
              COLOR IS 2, FONT IS Calibri12, GROUP 10, GROUP-VALUE 1, 
              ID IS 49, 
              TITLE "Sans Rétrocessions", VALUE RET-INT, VISIBLE 0.
           03 Screen1-Rb-RET2, Radio-Button, 
              COL 159,86, LINE 38,85, LINES 1,23 CELLS, 
              SIZE 25,71 CELLS, 
              COLOR IS 2, FONT IS Calibri12, GROUP 10, GROUP-VALUE 2, 
              ID IS 50, 
              TITLE "Avec Rétrocessions", VALUE RET-INT, VISIBLE 0.
           03 Screen1-Rb-RET3, Radio-Button, 
              COL 159,86, LINE 41,31, LINES 1,23 CELLS, 
              SIZE 25,71 CELLS, 
              COLOR IS 2, FONT IS Calibri12, GROUP 10, GROUP-VALUE 3, 
              ID IS 51, 
              TITLE "Rétrocessions Seules", VALUE RET-INT, VISIBLE 0.
           03 Screen1-Rb-VEN1, Radio-Button, 
              COL 196,00, LINE 39,54, LINES 1,23 CELLS, 
              SIZE 11,71 CELLS, 
              COLOR IS 2, ENABLED 0, FONT IS Calibri12, GROUP 4, 
              GROUP-VALUE 1, ID IS 69, 
              TITLE "Tous", VALUE VEN-INT, VISIBLE 0.
           03 Screen1-Rb-VEN2, Radio-Button, 
              COL 196,00, LINE 41,62, LINES 1,23 CELLS, 
              SIZE 11,71 CELLS, 
              COLOR IS 2, ENABLED 0, FONT IS Calibri12, GROUP 4, 
              GROUP-VALUE 2, ID IS 70, 
              TITLE "Plusieurs", VALUE VEN-INT, VISIBLE 0, 
              EVENT PROCEDURE Screen1-Rb-VEN2-Event-Proc.
           03 Screen1-Rb-TEC1, Radio-Button, 
              COL 196,00, LINE 32,00, LINES 1,23 CELLS, 
              SIZE 11,71 CELLS, 
              COLOR IS 2, ENABLED 0, FONT IS Calibri12, GROUP 5, 
              GROUP-VALUE 1, ID IS 88, 
              TITLE "Tous", VALUE TEC-INT, VISIBLE 0.
           03 Screen1-Rb-TEC2, Radio-Button, 
              COL 196,00, LINE 34,23, LINES 1,23 CELLS, 
              SIZE 11,71 CELLS, 
              COLOR IS 2, ENABLED 0, FONT IS Calibri12, GROUP 5, 
              GROUP-VALUE 2, ID IS 87, 
              TITLE "Plusieurs", VALUE TEC-INT, VISIBLE 0, 
              EVENT PROCEDURE Screen1-Rb-TEC2-Event-Proc.
           03 Screen1-Rb-POS1, Radio-Button, 
              COL 196,00, LINE 22,46, LINES 1,23 CELLS, 
              SIZE 11,71 CELLS, 
              COLOR IS 2, ENABLED 0, FONT IS Calibri12, GROUP 6, 
              GROUP-VALUE 1, ID IS 72, 
              TITLE "Tous", VALUE POS-INT, VISIBLE 0.
           03 Screen1-Rb-POS2, Radio-Button, 
              COL 196,00, LINE 24,15, LINES 1,23 CELLS, 
              SIZE 11,71 CELLS, 
              COLOR IS 2, ENABLED 0, FONT IS Calibri12, GROUP 6, 
              GROUP-VALUE 2, ID IS 73, 
              TITLE "Plusieurs", VALUE POS-INT, VISIBLE 0, 
              EVENT PROCEDURE Screen1-Rb-POS2-Event-Proc.
           03 Screen1-Rb-POS3, Radio-Button, 
              COL 196,00, LINE 25,85, LINES 1,23 CELLS, 
              SIZE 11,71 CELLS, 
              COLOR IS 2, ENABLED 0, FONT IS Calibri12, GROUP 6, 
              GROUP-VALUE 3, ID IS 102, 
              TITLE "Aucun", VALUE POS-INT, VISIBLE 0.
           03 Screen1-Rb-DEP1, Radio-Button, 
              COL 196,00, LINE 14,15, LINES 1,23 CELLS, 
              SIZE 11,71 CELLS, 
              COLOR IS 2, ENABLED 0, FONT IS Calibri12, GROUP 9, 
              GROUP-VALUE 1, ID IS 85, 
              TITLE "Tous", VALUE DEP-INT, VISIBLE 0.
           03 Screen1-Rb-DEP2, Radio-Button, 
              COL 196,14, LINE 16,31, LINES 1,23 CELLS, 
              SIZE 11,71 CELLS, 
              COLOR IS 2, ENABLED 0, FONT IS Calibri12, GROUP 9, 
              GROUP-VALUE 2, ID IS 86, 
              TITLE "Plusieurs", VALUE DEP-INT, VISIBLE 0, 
              EVENT PROCEDURE Screen1-Rb-DEP2-Event-Proc.
           03 Screen1-Pb-LancerS, Push-Button, 
              COL 202,43, LINE 1,77, LINES 24, SIZE 32, 
              BITMAP-HANDLE ENGRENAGE32-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 5006, FLAT, ID IS 13, NO-TAB, 
              TITLE "Rechercher", 
              ATW-CSS-CLASS "button-icon fas fa-search".
           03 Screen1-Pb-ReduireS, Push-Button, 
              COL 196,71, LINE 4,92, LINES 3,00 CELLS, 
              SIZE 13,71 CELLS, 
              COLOR IS 513, BACKGROUND-RGB H#00FFFFFF, 
              EXCEPTION-VALUE 8001, FLAT, FONT IS Calibri11B, ID IS 33, 
              TRANSPARENT-COLOR 16777215, NO-TAB, 
              TITLE "- de critères".
           03 Screen1-Bt-2, Bitmap, TRANSPARENT-COLOR 16777215, 
              COL 88,43, LINE 1,69, LINES 20, SIZE 20, 
              BITMAP-HANDLE ZOOM20-BMP, BITMAP-NUMBER 1, 
              ID IS 255, VISIBLE 0, 
              ATW-CSS-CLASS "button-icon fas fa-search".
           03 Screen1-Ef-Date, Entry-Field, 
              COL 50,43, LINE 1,38, LINES 1,77 CELLS, SIZE 13,00 CELLS, 
              BOXED, COLOR IS 32770, BORDER-COLOR 8, ENABLED 0, 
              FONT IS Calibri12B, ID IS 6, CENTER, MAX-TEXT 10, 
              VALUE W-DATE.
           03 Screen1-Ef-NomAge, Entry-Field, 
              COL 11,43, LINE 19,31, LINES 1,85 CELLS, 
              SIZE 37,14 CELLS, 
              3-D, COLOR IS 513, ENABLED 0, FONT IS Calibri12, 
              ID IS 79, NO-TAB, USE-TAB, VISIBLE 0.
           03 Screen1-La-DATE1, Label, 
              COL 57,00, LINE 19,31, LINES 1,46 CELLS, SIZE 2,86 CELLS, 
              COLOR IS 2, FONT IS Calibri12, ID IS 16, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Du", TRANSPARENT, VISIBLE 0.
           03 Screen1-La-DATE2, Label, 
              COL 81,00, LINE 19,31, LINES 1,46 CELLS, SIZE 2,71 CELLS, 
              COLOR IS 2, FONT IS Calibri12, ID IS 19, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Au", TRANSPARENT, VISIBLE 0.
           03 Screen1-La-TYPE, Label, 
              COL 84,43, LINE 33,23, LINES 1,38 CELLS, SIZE 5,43 CELLS, 
              COLOR IS 2, FONT IS Calibri11, ID IS 21, RIGHT, 
              LABEL-OFFSET 0, 
              TITLE "Type ", TRANSPARENT, VISIBLE 0.
           03 Screen1-Pb-Imprimer, Push-Button, 
              COL 181,14, LINE 1,77, LINES 24, SIZE 91, 
              BITMAP-HANDLE EXPORT32-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 1001, FLAT, ID IS 41, NO-AUTO-DEFAULT, 
              NO-TAB, 
              TITLE "Impression", VISIBLE 0, 
              ATW-CSS-CLASS "button-imprimer".
           03 Screen1-Pb-LancerA, Push-Button, 
              COL 189,57, LINE 46,69, LINES 24, SIZE 32, 
              BITMAP-HANDLE RAFRAICHIR32-BMP, BITMAP-NUMBER 1, 
              UNFRAMED, SQUARE, 
              EXCEPTION-VALUE 6006, FLAT, ID IS 80, NO-TAB, 
              TITLE "Rafraichir", VISIBLE 0, 
              ATW-CSS-CLASS "button-icon fas fa-sync".
           03 Screen1-Pb-ReduireA, Push-Button, 
              COL 195,43, LINE 46,69, LINES 3,00 CELLS, 
              SIZE 13,71 CELLS, 
              COLOR IS 513, BACKGROUND-RGB H#00FFFFFF, 
              EXCEPTION-VALUE 8005, FLAT, FONT IS Calibri11B, ID IS 81, 
              NO-TAB, MULTILINE, 
              TITLE "- de critères".
           03 Screen1-La-Sel, Label, 
              COL 2,57, LINE 4,46, LINES 1,38 CELLS, SIZE 91,86 CELLS, 
              COLOR IS 1, FONT IS Calibri11B, ID IS 11, LEFT, 
              LABEL-OFFSET 0, TITLE W-SEL, TRANSPARENT, VISIBLE 0.
           03 Screen1-Bt-2c, Bitmap, 
              COL 98,43, LINE 1,69, LINES 16, SIZE 10, 
              BITMAP-HANDLE TRIERDD10-JPG, BITMAP-NUMBER 1, 
              ID IS 100, VISIBLE 0.
           03 Screen1-Bt-2b, Bitmap, 
              COL 96,29, LINE 1,69, LINES 16, SIZE 10, 
              BITMAP-HANDLE TRIERDE10-JPG, BITMAP-NUMBER 1, 
              ID IS 99, VISIBLE 0.
           03 Screen1-Bt-2a, Bitmap, 
              COL 94,14, LINE 1,69, LINES 16, SIZE 10, 
              BITMAP-HANDLE TRIERAD10-JPG, BITMAP-NUMBER 1, 
              ID IS 98, VISIBLE 0.
           03 Screen1-Bt-2d, Bitmap, 
              COL 92,00, LINE 1,69, LINES 16, SIZE 10, 
              BITMAP-HANDLE TRIERAE10-JPG, BITMAP-NUMBER 1, 
              ID IS 101, VISIBLE 0.
           03 Screen1-La-PB, Label, 
              COL 1,71, LINE 6,38, LINES 1,31 CELLS, SIZE 46,57 CELLS, 
              COLOR IS 5, FONT IS Calibri11B, ID IS 97, LABEL-OFFSET 0, 
              TITLE W-PBThread-Msg, TRANSPARENT, VISIBLE 0.
           03 Screen1-Fr-Tot, Frame, 
              COL 60,00, LINE 4,38, LINES 3,15 CELLS, SIZE 61,57 CELLS, 
              COLOR IS 297, FILL-COLOR 9, FILL-PERCENT 100, ID IS 112, 
              VISIBLE 0, BACKGROUND-LOW.
           03 Screen1-La-TOT, Label, 
              COL 64,71, LINE 5,23, LINES 2,00 CELLS, SIZE 12,57 CELLS, 
              COLOR IS 33072, FONT IS Calibri14B, ID IS 92, CENTER, 
              LABEL-OFFSET 0, 
              TITLE "Totaux : Qté=", VISIBLE 0.
           03 Screen1-Ef-TOT-QTE, Entry-Field, 
              COL 77,29, LINE 4,77, LINES 1,46 CELLS, SIZE 14,14 CELLS, 
              NO-BOX, COLOR IS 33072, FONT IS Calibri14B, ID IS 95, 
              LEFT, VALUE TOT-QTE, VISIBLE 0.
           03 Screen1-La-HT, Label, 
              COL 93,43, LINE 5,23, LINES 2,00 CELLS, SIZE 4,43 CELLS, 
              COLOR IS 33072, FONT IS Calibri14B, ID IS 94, CENTER, 
              LABEL-OFFSET 0, 
              TITLE "HT=", VISIBLE 0.
           03 Screen1-Ef-TOT-HT, Entry-Field, 
              COL 97,71, LINE 4,77, LINES 1,46 CELLS, SIZE 21,14 CELLS, 
              NO-BOX, COLOR IS 33072, FONT IS Calibri14B, ID IS 93, 
              LEFT, VALUE "0", VISIBLE 0.
           03 Screen1-Pb-Preview, Push-Button, 
              COL 196,00, LINE 1,77, LINES 24, SIZE 32, 
              BITMAP-HANDLE IMPRIMER32-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1002, FLAT, ID IS 124, 
              TITLE "Aperçu avant impression", VISIBLE 0, 
              ATW-CSS-CLASS "button-icon fas fa-eye".
           03 Screen1-Rb-DFA0, Radio-Button, 
              COL 57,00, LINE 14,77, LINES 1,23 CELLS, 
              SIZE 13,29 CELLS, 
              COLOR IS 2, FONT IS Calibri12, GROUP 11, GROUP-VALUE 1, 
              ID IS 127, 
              TITLE "Date sortie", VALUE W-DFA, 
              EVENT PROCEDURE Screen1-Rb-DFA0-Event-Proc.
           03 Screen1-Rb-DFA1, Radio-Button, 
              COL 81,00, LINE 14,77, LINES 1,23 CELLS, 
              SIZE 14,57 CELLS, 
              COLOR IS 2, FONT IS Calibri12, GROUP 11, GROUP-VALUE 2, 
              ID IS 128, 
              TITLE "Date facture", VALUE W-DFA, 
              EVENT PROCEDURE Screen1-Rb-DFA1-Event-Proc.
           03 Screen1-Cb-AVO, Check-Box, 
              COL 3,71, LINE 42,23, LINES 1,69 CELLS, SIZE 36,57 CELLS, 
              COLOR IS 2, FONT IS Calibri12, ID IS 130, 
              TITLE "Seulement les mouvements négatifs", VALUE AVO-INT.
           03 Screen1-Ef-NomFou, Entry-Field, 
              COL 62,71, LINE 34,15, LINES 1,85 CELLS, 
              SIZE 23,71 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, FONT IS Calibri12, ID IS 140, 
              USE-TAB, VISIBLE 0.
           03 Screen1-Cb-INT, Check-Box, 
              COL 48,00, LINE 40,00, LINES 1,69 CELLS, 
              SIZE 31,14 CELLS, 
              COLOR IS 2, FONT IS Calibri12, ID IS 142, 
              TITLE "Sans les mouvements internes", VALUE INT-INT.
           03 Screen1-Ef-Company, Entry-Field, 
              COL 1,71, LINE 1,38, LINES 1,77 CELLS, SIZE 40,57 CELLS, 
              BOXED, COLOR IS W-COLOR-PROTO, BORDER-COLOR 8, ENABLED 0, 
              FONT IS Calibri12B, ID IS 1, CENTER, MAX-TEXT 25, 
              NO-AUTOSEL, NO-TAB, READ-ONLY, VALUE RAI-MPAR.
           03 Screen1-Ef-User, Entry-Field, 
              COL 42,86, LINE 1,38, LINES 1,77 CELLS, SIZE 6,86 CELLS, 
              BOXED, COLOR IS 1, BORDER-COLOR 8, ENABLED 0, 
              FONT IS Calibri12B, ID IS 3, CENTER, MAX-TEXT 30, 
              NO-AUTOSEL, NO-TAB, READ-ONLY, VALUE IDE-PALM.
           03 Screen1-La-MSGNB, Label, 
              COL 123,86, LINE 5,38, LINES 1,46 CELLS, 
              SIZE 29,29 CELLS, 
              COLOR IS 513, FONT IS Calibri12, ID IS 5, LABEL-OFFSET 0, 
              TRANSPARENT.
           03 Screen1-La-1, Label, 
              COL 3,71, LINE 11,77, LINES 1,85 CELLS, SIZE 15,71 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 105, 
              LABEL-OFFSET 0, 
              TITLE "Entité", TRANSPARENT, VISIBLE 0, 
              ATW-CSS-CLASS "h3".
       01 Screen2, HELP-ID 1.
           03 Screen2-Gd-1, Grid, 
              COL 1,90, LINE 8,80, LINES 30,30 CELLS, SIZE 62,20 CELLS, 
              3-D, CENTERED-HEADINGS, COLOR IS 2, COLUMN-HEADINGS, 
              DATA-COLUMNS (1, 21, 81, 94), 
              DISPLAY-COLUMNS (1, 22, 82, 95), 
              ALIGNMENT ("L", "L", "C", "C"), 
              DATA-TYPES ("X", "X", "9", "X"), 
              SEPARATION (5, 5, 5, 5), 
              CURSOR-FRAME-WIDTH 0, DIVIDER-COLOR W-Divider-Color, 
              END-COLOR W-End-Color, FONT IS Small-Font, 
              HEADING-COLOR W-Heading-Color, 
              HEADING-DIVIDER-COLOR W-Heading-Divider-Color, ID IS 4, 
              NUM-COL-HEADINGS 1, NUM-ROWS W-NUM-ROWS, 
              RECORD-DATA Screen2-Gd-1-Record, TILED-HEADINGS, USE-TAB, 
              VPADDING 50, VSCROLL, 
              EVENT PROCEDURE Screen2-Gd-1-Event-Proc.
           03 Screen2-La-TIT, Label, 
              COL 1,80, LINE 3,00, LINES 1,80 CELLS, SIZE 62,20 CELLS, 
              COLOR IS 112, FONT IS Large-Font, ID IS 11, CENTER, 
              LABEL-OFFSET 0, 
              TITLE "COMPOSITION".
           03 Screen2-Ef-COD, Entry-Field, 
              COL 2,10, LINE 5,90, LINES 1,80 CELLS, SIZE 21,00 CELLS, 
              3-D, COLOR IS 32962, ID IS 16, CENTER, VALUE COD-MART.
           03 Screen2-Ef-DES, Entry-Field, 
              COL 24,50, LINE 5,90, LINES 1,80 CELLS, SIZE 39,20 CELLS, 
              3-D, COLOR IS 32962, ID IS 17, CENTER, VALUE DES-MART.

      *{Bench}end

      *{Bench}linkpara
       PROCEDURE DIVISION USING LK-ZONE-PALM, LK-HIV-C.
      *{Bench}end
      *{Bench}declarative
       DECLARATIVES.
       INPUT-ERROR SECTION.
           USE AFTER STANDARD ERROR PROCEDURE ON INPUT.
       0100-DECL.
           EXIT.
       I-O-ERROR SECTION.
           USE AFTER STANDARD ERROR PROCEDURE ON I-O.
       0200-DECL.
           EXIT.
       OUTPUT-ERROR SECTION.
           USE AFTER STANDARD ERROR PROCEDURE ON OUTPUT.
       0300-DECL.
           EXIT.
       END DECLARATIVES.
      *{Bench}end

       Acu-Main-Logic.
      *{Bench}entry-befprg
      *    Before-Program
      *{Bench}end
           PERFORM Acu-Initial-Routine
      * run main screen
      *{Bench}run-mainscr
           PERFORM Acu-Screen1-Routine
      *{Bench}end
           PERFORM Acu-Exit-Rtn
           .

      *{Bench}copy-procedure
       COPY "showmsg.cpy".

       Acu-Initial-Routine.
      *    Before-Init
      * get system information
           ACCEPT System-Information FROM System-Info
      * get terminal information
           ACCEPT Terminal-Abilities FROM Terminal-Info
      * set custom color
           MOVE 3 TO Wpal-Color-Id
           MOVE 69 TO Wpal-Red
           MOVE 122 TO Wpal-Green
           MOVE 211 TO Wpal-Blue
           CALL "W$PALETTE" USING Wpalette-Set-Color, Wpalette-Data
           MOVE 6 TO Wpal-Color-Id
           MOVE 223 TO Wpal-Red
           MOVE 223 TO Wpal-Green
           MOVE 255 TO Wpal-Blue
           CALL "W$PALETTE" USING Wpalette-Set-Color, Wpalette-Data
           MOVE 15 TO Wpal-Color-Id
           MOVE 255 TO Wpal-Red
           MOVE 255 TO Wpal-Green
           MOVE 128 TO Wpal-Blue
           CALL "W$PALETTE" USING Wpalette-Set-Color, Wpalette-Data
      * set font
           PERFORM Acu-Init-Font
      * load bitmap
           PERFORM Acu-Init-Bmp
      * create pop-up menu
           PERFORM Acu-Init-Popup
      * open file
           PERFORM Acu-Open-Files
      *    After-Init
           .

       Acu-Init-Font.
      * font setting
           INITIALIZE WFONT-DATA Calibri12B
           MOVE 12 TO WFONT-SIZE
           MOVE "Calibri" TO WFONT-NAME
           SET WFCHARSET-DEFAULT TO TRUE
           SET WFONT-BOLD TO TRUE
           SET WFONT-ITALIC TO FALSE
           SET WFONT-UNDERLINE TO FALSE
           SET WFONT-STRIKEOUT TO FALSE
           SET WFFAMILY-DONT-CARE TO TRUE
           SET WFONT-FIXED-PITCH TO FALSE
           CALL "W$FONT" USING WFONT-GET-FONT, Calibri12B, WFONT-DATA
           INITIALIZE WFONT-DATA Calibri11
           MOVE 11 TO WFONT-SIZE
           MOVE "Calibri" TO WFONT-NAME
           SET WFCHARSET-DEFAULT TO TRUE
           SET WFONT-BOLD TO FALSE
           SET WFONT-ITALIC TO FALSE
           SET WFONT-UNDERLINE TO FALSE
           SET WFONT-STRIKEOUT TO FALSE
           SET WFFAMILY-DONT-CARE TO TRUE
           SET WFONT-FIXED-PITCH TO FALSE
           CALL "W$FONT" USING WFONT-GET-FONT, Calibri11, WFONT-DATA
           INITIALIZE WFONT-DATA Calibri11B
           MOVE 11 TO WFONT-SIZE
           MOVE "Calibri" TO WFONT-NAME
           SET WFCHARSET-DEFAULT TO TRUE
           SET WFONT-BOLD TO TRUE
           SET WFONT-ITALIC TO FALSE
           SET WFONT-UNDERLINE TO FALSE
           SET WFONT-STRIKEOUT TO FALSE
           SET WFFAMILY-DONT-CARE TO TRUE
           SET WFONT-FIXED-PITCH TO FALSE
           CALL "W$FONT" USING WFONT-GET-FONT, Calibri11B, WFONT-DATA
           INITIALIZE WFONT-DATA Calibri12
           MOVE 12 TO WFONT-SIZE
           MOVE "Calibri" TO WFONT-NAME
           SET WFCHARSET-DEFAULT TO TRUE
           SET WFONT-BOLD TO FALSE
           SET WFONT-ITALIC TO FALSE
           SET WFONT-UNDERLINE TO FALSE
           SET WFONT-STRIKEOUT TO FALSE
           SET WFFAMILY-DONT-CARE TO TRUE
           SET WFONT-FIXED-PITCH TO FALSE
           CALL "W$FONT" USING WFONT-GET-FONT, Calibri12, WFONT-DATA
           INITIALIZE WFONT-DATA Calibri14B
           MOVE 14 TO WFONT-SIZE
           MOVE "Calibri" TO WFONT-NAME
           SET WFCHARSET-DEFAULT TO TRUE
           SET WFONT-BOLD TO TRUE
           SET WFONT-ITALIC TO FALSE
           SET WFONT-UNDERLINE TO FALSE
           SET WFONT-STRIKEOUT TO FALSE
           SET WFFAMILY-DONT-CARE TO TRUE
           SET WFONT-FIXED-PITCH TO FALSE
           CALL "W$FONT" USING WFONT-GET-FONT, Calibri14B, WFONT-DATA
           .

       Acu-Init-Bmp.
      * bitmap loading
           COPY RESOURCE "ENGRENAGE32.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ENGRENAGE32.BMP", GIVING 
              ENGRENAGE32-BMP
           COPY RESOURCE "ZOOM20.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ZOOM20.BMP", GIVING 
              ZOOM20-BMP
           COPY RESOURCE "EXPORT32.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "EXPORT32.BMP", GIVING 
              EXPORT32-BMP
           COPY RESOURCE "RAFRAICHIR32.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "RAFRAICHIR32.BMP", 
              GIVING RAFRAICHIR32-BMP
           COPY RESOURCE "TRIERDD10.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "TRIERDD10.JPG", GIVING 
              TRIERDD10-JPG
           COPY RESOURCE "TRIERDE10.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "TRIERDE10.JPG", GIVING 
              TRIERDE10-JPG
           COPY RESOURCE "TRIERAD10.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "TRIERAD10.JPG", GIVING 
              TRIERAD10-JPG
           COPY RESOURCE "TRIERAE10.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "TRIERAE10.JPG", GIVING 
              TRIERAE10-JPG
           COPY RESOURCE "IMPRIMER32.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "IMPRIMER32.BMP", GIVING 
              IMPRIMER32-BMP
           .

       Acu-Init-Popup.
           PERFORM Acu-Screen1-Mn-1-Menu
           MOVE Menu-Handle TO Screen1-Mn-1-Handle
           PERFORM Acu-Screen1-Mn-2-Menu
           MOVE Menu-Handle TO Screen1-Mn-2-Handle
           .

       Acu-Exit-Rtn.
      * destroy font
           PERFORM Acu-Exit-Font
      * destroy bitmap
           PERFORM Acu-Exit-Bmp
           PERFORM Acu-Close-Files
      *    After-Program
           EXIT PROGRAM
           STOP RUN
           .
       Acu-Exit-Font.
      * font destroy
           IF Calibri12B NOT = NULL
              DESTROY Calibri12B
              SET Calibri12B TO NULL
           END-IF
           IF Calibri11 NOT = NULL
              DESTROY Calibri11
              SET Calibri11 TO NULL
           END-IF
           IF Calibri11B NOT = NULL
              DESTROY Calibri11B
              SET Calibri11B TO NULL
           END-IF
           IF Calibri12 NOT = NULL
              DESTROY Calibri12
              SET Calibri12 TO NULL
           END-IF
           IF Calibri14B NOT = NULL
              DESTROY Calibri14B
              SET Calibri14B TO NULL
           END-IF
           .

       Acu-Exit-Bmp.
      * bitmap destroy
           IF ENGRENAGE32-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ENGRENAGE32-BMP
              MOVE 0 TO ENGRENAGE32-BMP
           END-IF
           IF ZOOM20-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ZOOM20-BMP
              MOVE 0 TO ZOOM20-BMP
           END-IF
           IF EXPORT32-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY EXPORT32-BMP
              MOVE 0 TO EXPORT32-BMP
           END-IF
           IF RAFRAICHIR32-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY RAFRAICHIR32-BMP
              MOVE 0 TO RAFRAICHIR32-BMP
           END-IF
           IF TRIERDD10-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY TRIERDD10-JPG
              MOVE 0 TO TRIERDD10-JPG
           END-IF
           IF TRIERDE10-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY TRIERDE10-JPG
              MOVE 0 TO TRIERDE10-JPG
           END-IF
           IF TRIERAD10-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY TRIERAD10-JPG
              MOVE 0 TO TRIERAD10-JPG
           END-IF
           IF TRIERAE10-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY TRIERAE10-JPG
              MOVE 0 TO TRIERAE10-JPG
           END-IF
           IF IMPRIMER32-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY IMPRIMER32-BMP
              MOVE 0 TO IMPRIMER32-BMP
           END-IF
           .

       Acu-Open-Files.
      *    Before-Open
      *    After-Open
           .

       Acu-Screen1-Routine.
      *    Before-Routine
           PERFORM Acu-Screen1-Scrn
           PERFORM Acu-Screen1-Proc
           PERFORM Screen1-Aft-Routine
           .

       Acu-Screen2-Routine.
      *    Before-Routine
           PERFORM Acu-Screen2-Scrn
           PERFORM Acu-Screen2-Proc
      *    After-Routine
           .

       Acu-Screen1-Scrn.
           PERFORM Acu-Screen1-Create-Win
           PERFORM Acu-Screen1-Init-Data
           .

       Acu-Screen2-Scrn.
           PERFORM Acu-Screen2-Create-Win
           PERFORM Acu-Screen2-Init-Data
           .

       Acu-Screen1-Create-Win.
           PERFORM Screen1-BeforeCreate
      * display screen
              DISPLAY Independent GRAPHICAL WINDOW
                 SCREEN LINE INIT-LINE, SCREEN COLUMN INIT-COLUMN, 
                 LINES 65,15, SIZE S-GRAND, CELL HEIGHT 13, 
                 CELL WIDTH 7, AUTO-MINIMIZE, COLOR IS 131329, 
                 LABEL-OFFSET 0, LINK TO THREAD, MODELESS, NO SCROLL, 
                 WITH SYSTEM MENU, 
                 TITLE "Consultation Historique des Ventes Articles", 
                 TITLE-BAR, USER-GRAY, USER-WHITE, VISIBLE 0, NO WRAP, 
                 ATW-CSS-ID "max_screen_hiv_FZS", 
                 EVENT PROCEDURE Screen1-Event-Proc, 
                 HANDLE IS Screen1-Handle
      * toolbar
      * status-bar
           DISPLAY STATUS-BAR
              PANEL-WIDTHS 512, 
              PANEL-STYLE 1, 
              PANEL-TEXT SPACE, 
              FONT IS Small-Font, 
              HANDLE IS Screen1-St-1-Handle
           DISPLAY Screen1 UPON Screen1-Handle
      *    After-Create
           .

       Acu-Screen2-Create-Win.
      *    Before-Create
      * display screen
              DISPLAY Floating GRAPHICAL WINDOW
                 LINES 44,40, SIZE 64,00, CELL HEIGHT 10, 
                 CELL WIDTH 10, COLOR IS 65793, ERASE, LABEL-OFFSET 0, 
                 LINK TO THREAD, NO SCROLL, WITH SYSTEM MENU, 
                 TITLE PROLOG-PALM, TITLE-BAR, NO WRAP, 
                 EVENT PROCEDURE Screen2-Event-Proc, 
                 HANDLE IS Screen2-SF-HANDLE
      * toolbar
      * status-bar
           DISPLAY STATUS-BAR
              PANEL-WIDTHS 512, 
              PANEL-STYLE 1, 
              PANEL-TEXT SPACE, 
              FONT IS Small-Font, 
              HANDLE IS Screen3-St-1-Handle
           DISPLAY Screen2 UPON Screen2-SF-HANDLE
      *    After-Create
           .

       Acu-Screen1-Init-Data.
      *    Before-Initdata
           PERFORM Acu-Screen1-Gd-1-Content
           PERFORM Screen1-AfterInitData
           .

       Acu-Screen2-Init-Data.
      *    Before-Initdata
           PERFORM Acu-Screen2-Gd-1-Content
           PERFORM Screen2-AfterInitdata
           .
      * Screen1
       Acu-Screen1-Proc.
           PERFORM UNTIL Exit-Pushed
              ACCEPT Screen1  
                 ON EXCEPTION PERFORM Acu-Screen1-Evaluate-Func
              END-ACCEPT
           END-PERFORM
           DESTROY Screen1-Handle
           INITIALIZE Key-Status
           .
      * Screen2
       Acu-Screen2-Proc.
           PERFORM UNTIL Exit-Pushed
              ACCEPT Screen2  
                 ON EXCEPTION PERFORM Acu-Screen2-Evaluate-Func
              END-ACCEPT
           END-PERFORM
           DESTROY Screen2-SF-HANDLE
           INITIALIZE Key-Status
           .

      * Screen1-Gd-1
       Acu-Screen1-Gd-1-Content.
      * Cells Settings
           MODIFY Screen1-Gd-1, X = 2, Y = 1, CELL-COLOR = 304, 
              CELL-DATA = "Date S.", 
           MODIFY Screen1-Gd-1, X = 3, Y = 1, CELL-COLOR = 304, 
              CELL-FONT = Small-Font, CELL-DATA = "Date F.", 
           MODIFY Screen1-Gd-1, X = 4, Y = 1, CELL-COLOR = 304, 
              CELL-FONT = Small-Font, CELL-DATA = "Référence", 
           MODIFY Screen1-Gd-1, X = 5, Y = 1, CELL-COLOR = 304, 
              CELL-FONT = Small-Font, CELL-DATA = "R", 
           MODIFY Screen1-Gd-1, X = 6, Y = 1, CELL-COLOR = 304, 
              CELL-DATA = "Désignation", 
           MODIFY Screen1-Gd-1, X = 7, Y = 1, CELL-COLOR = 304, 
              CELL-DATA = "Quantité", 
           MODIFY Screen1-Gd-1, X = 8, Y = 1, CELL-COLOR = 304, 
              CELL-DATA = "Prix", 
           MODIFY Screen1-Gd-1, X = 9, Y = 1, CELL-COLOR = 304, 
              CELL-DATA = "HT Net", 
           MODIFY Screen1-Gd-1, X = 10, Y = 1, CELL-COLOR = 304, 
              CELL-DATA = "Rem", 
           MODIFY Screen1-Gd-1, X = 11, Y = 1, CELL-COLOR = 304, 
              CELL-DATA = "Marge", 
           MODIFY Screen1-Gd-1, X = 12, Y = 1, CELL-COLOR = 304, 
              CELL-DATA = "Ven", 
           MODIFY Screen1-Gd-1, X = 13, Y = 1, CELL-COLOR = 304, 
              CELL-DATA = "I", 
           MODIFY Screen1-Gd-1, X = 14, Y = 1, CELL-COLOR = 304, 
              CELL-DATA = "Client", 
           MODIFY Screen1-Gd-1, X = 15, Y = 1, CELL-COLOR = 304, 
              CELL-DATA = "Nom", 
           MODIFY Screen1-Gd-1, X = 16, Y = 1, CELL-COLOR = 304, 
              CELL-DATA = "Ville", 
           MODIFY Screen1-Gd-1, X = 17, Y = 1, CELL-COLOR = 304, 
              CELL-DATA = "Ag", 
           MODIFY Screen1-Gd-1, X = 18, Y = 1, CELL-COLOR = 304, 
              CELL-DATA = "Bon", 
           MODIFY Screen1-Gd-1, X = 19, Y = 1, CELL-COLOR = 304, 
              CELL-DATA = "Fac", 
           MODIFY Screen1-Gd-1, X = 20, Y = 1, CELL-COLOR = 304, 
              CELL-DATA = "Matériel", 
           MODIFY Screen1-Gd-1, X = 21, Y = 1, CELL-COLOR = 304, 
              CELL-DATA = "Act", 
           MODIFY Screen1-Gd-1, X = 22, Y = 1, CELL-COLOR = 304, 
              CELL-DATA = "Affaire", 
           MODIFY Screen1-Gd-1, X = 23, Y = 1, CELL-COLOR = 304, 
              CELL-DATA = "Dép", 
           MODIFY Screen1-Gd-1, X = 24, Y = 1, CELL-COLOR = 304, 
              CELL-DATA = "Niv Cde", 
           MODIFY Screen1-Gd-1, X = 25, Y = 1, CELL-COLOR = 304, 
              CELL-DATA = "FRN", 
           MODIFY Screen1-Gd-1, X = 26, Y = 1, CELL-COLOR = 304, 
              CELL-DATA = "Fam", 
           MODIFY Screen1-Gd-1, X = 27, Y = 1, CELL-COLOR = 304, 
              CELL-DATA = "Réf. normalisée", 
           MODIFY Screen1-Gd-1, X = 28, Y = 1, CELL-COLOR = 304, 
              CELL-DATA = "P.ord", 
           MODIFY Screen1-Gd-1, X = 29, Y = 1, CELL-COLOR = 304, 
              CELL-DATA = "Chantier", 
           .

      * Screen2-Gd-1
       Acu-Screen2-Gd-1-Content.
      * Cells Settings
           MODIFY Screen2-Gd-1, X = 1, Y = 1, CELL-COLOR = 112, 
              CELL-DATA = "Code", 
           MODIFY Screen2-Gd-1, X = 2, Y = 1, CELL-COLOR = 112, 
              CELL-DATA = "Désignation", 
           MODIFY Screen2-Gd-1, X = 3, Y = 1, CELL-COLOR = 112, 
              CELL-DATA = "Quantité", 
           MODIFY Screen2-Gd-1, X = 4, Y = 1, CELL-COLOR = 112, 
              CELL-DATA = "E", 
           .

      * Screen1
       Acu-Screen1-Evaluate-Func.
           EVALUATE TRUE
              WHEN Exit-Pushed
                 PERFORM Acu-Screen1-Exit
              WHEN Event-Occurred
                 IF Event-Type = Cmd-Close
                    PERFORM Acu-Screen1-Exit
                 END-IF
      * Screen1-Pb-LancerS Link To
              WHEN Key-Status = 5006
                 PERFORM Screen1-Pb-LancerS-Link
      * Screen1-Pb-ReduireS Link To
              WHEN Key-Status = 8001
                 PERFORM Screen1-Pb-ReduireS-Link
      * Screen1-Pb-Imprimer Link To
              WHEN Key-Status = 1001
                 PERFORM Screen1-Pb-Imprimer-Link
      * Screen1-Pb-LancerA Link To
              WHEN Key-Status = 6006
                 PERFORM Screen1-Pb-LancerA-Link
      * Screen1-Pb-ReduireA Link To
              WHEN Key-Status = 8005
                 PERFORM Screen1-Pb-ReduireA-Link
      * MI-Composition Link To
              WHEN Key-Status = 4002
                 PERFORM Screen1-Mn-1-MI-Composition-Link
      * MI-Etatcomplet Link To
              WHEN Key-Status = 1901
                 PERFORM Screen1-Mn-2-MI-Etatcomplet-Link
      * MI-EtatColonnes Link To
              WHEN Key-Status = 1902
                 PERFORM Screen1-Mn-2-MI-EtatColonnes-Link
      * Screen1-Pb-Preview Link To
              WHEN Key-Status = 1002
                 PERFORM Screen1-Pb-Preview-Link
           END-EVALUATE
           MOVE 1 TO Accept-Control
           .

      * Screen2
       Acu-Screen2-Evaluate-Func.
           EVALUATE TRUE
              WHEN Exit-Pushed
                 PERFORM Acu-Screen2-Exit
              WHEN Event-Occurred
                 IF Event-Type = Cmd-Close
                    PERFORM Acu-Screen2-Exit
                 END-IF
           END-EVALUATE
           MOVE 1 TO Accept-Control
           .

       Acu-Screen1-Display-Status-Msg.
           MODIFY Screen1-St-1-Handle
              PANEL-WIDTHS 512, 
              PANEL-STYLE 1, 
              PANEL-TEXT SPACE, 
              FONT IS Small-Font, 
           .

       Acu-Screen1-Clear-Status-Msg.
           PERFORM Acu-Screen1-Display-Status-Msg
           .

       Acu-Screen2-Display-Status-Msg.
           MODIFY Screen3-St-1-Handle
              PANEL-WIDTHS 512, 
              PANEL-STYLE 1, 
              PANEL-TEXT SPACE, 
              FONT IS Small-Font, 
           .

       Acu-Screen2-Clear-Status-Msg.
           PERFORM Acu-Screen2-Display-Status-Msg
           .

       Acu-Close-Files.
      *    Before-Close
      *    After-Close
           .

      * MXPARAM

      * COBCAP

      * MXAGENCE

      * MXART

      * MXHISVTE

      * MXMARQUE

      * MXCLI

      * XMLOut-File

      * MXHISVTE2

      * MXGRAFAM

      * MXAGENCE2

      * INTSEL

      * MXBDIS

      * MXFOU

       Acu-Screen1-Exit.
           SET Exit-Pushed TO TRUE
           .

       Acu-Screen2-Exit.
           SET Exit-Pushed TO TRUE
           .

      * Screen1-Mn-1
       Acu-Screen1-Mn-1-Menu.
           PERFORM Acu-Screen1-Mn-1
              THRU Acu-Screen1-Mn-1-Exit.

       Acu-Screen1-Mn-1.
           CALL "W$MENU" USING Wmenu-New-Popup GIVING Menu-Handle
           IF Menu-Handle = ZERO
              GO TO Acu-Screen1-Mn-1-Exit
           END-IF
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, 
              "Consultation composition", 4002
           .

       Acu-Screen1-Mn-1-Exit.
           MOVE ZERO TO Return-Code.

      * Screen1-Mn-2
       Acu-Screen1-Mn-2-Menu.
           PERFORM Acu-Screen1-Mn-2
              THRU Acu-Screen1-Mn-2-Exit.

       Acu-Screen1-Mn-2.
           CALL "W$MENU" USING Wmenu-New-Popup GIVING Menu-Handle
           IF Menu-Handle = ZERO
              GO TO Acu-Screen1-Mn-2-Exit
           END-IF
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, 
              "Etat complet condensé", 1901
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, 
              "Etat limité aux colonnes sélectionnées", 1902
           .

       Acu-Screen1-Mn-2-Exit.
           MOVE ZERO TO Return-Code.


       Screen1-Event-Proc.
           .

       Screen1-Gd-1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Begin-Entry
              PERFORM Screen1-Gd-1-Ev-Msg-Begin-Entry
           WHEN Msg-Bitmap-Clicked
              PERFORM Screen1-Gd-1-Ev-Msg-Bitmap-Clicked
           WHEN Msg-Col-Width-Changed
              PERFORM Screen1-Gd-1-Ev-Msg-Col-Width-Changed
           WHEN Msg-End-Drag
              PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell
              PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell-Drag
              PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell-Mouse
              PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Heading-Clicked
              PERFORM Screen1-Gd-1-Ev-Msg-Heading-Clicked
           WHEN Msg-Init-Menu
              PERFORM Screen1-Gd-1-Ev-Msg-Init-Menu
           END-EVALUATE
           .

       Screen1-Rb-NIV1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-Rb-NIV1-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-Rb-NIV2-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-Rb-NIV2-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-Ef-Age-Event-Proc.
           .

       Screen1-Ef-DATE1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Goto
              PERFORM Screen1-Ef-DATE1-Ev-Cmd-Goto
           WHEN Other
              PERFORM Screen1-Ef-DATE1-Ev-Other
           END-EVALUATE
           .

       Screen1-Ef-DATE2-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Goto
              PERFORM Screen1-Ef-DATE2-Ev-Cmd-Goto
           WHEN Other
              PERFORM Screen1-Ef-DATE2-Ev-Other
           END-EVALUATE
           .

       Screen1-Rb-CLI1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-Rb-CLI1-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-Rb-CLI2-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-Rb-CLI2-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-Rb-CLI3-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-Rb-CLI3-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-Rb-CDV1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-Rb-CDV1-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-Rb-CDV2-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-Rb-CDV2-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-Rb-LIV1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-Rb-LIV1-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-Rb-LIV2-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-Rb-LIV2-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-Rb-ART1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-Rb-ART1-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-Rb-ART2-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-Rb-ART2-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-Rb-ART3-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-Rb-ART3-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-Rb-ART6-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-Rb-ART6-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-Rb-MAR2-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-Rb-MAR2-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-Rb-VEN2-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-Rb-VEN2-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-Rb-TEC2-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-Rb-TEC2-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-Rb-POS2-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-Rb-POS2-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-Rb-DEP2-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-Rb-DEP2-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-Rb-DFA0-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-Rb-DFA0-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-Rb-DFA1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-Rb-DFA1-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen2-Event-Proc.
           .

       Screen2-Gd-1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Begin-Entry
              PERFORM Screen2-Gd-1-Ev-Msg-Begin-Entry
           END-EVALUATE
           .
      ***   start event editor code   ***
           COPY "../../MISTRAL/COPY/ENVMIS.CBL".
           COPY "../../MISTRAL/COPY/XMLOut.cbl".
           COPY "../../mistral/copy/MisCentrefenetre.cbl".

       Open-File-Rtn.
      *-------------*
           OPEN INPUT MXHISVTE
           PERFORM STAT
           OPEN INPUT MXHISVTE2          
           PERFORM STAT
           OPEN INPUT MXAGENCE          
           PERFORM STAT
           OPEN INPUT MXART          
           PERFORM STAT          
           OPEN INPUT MXCLI           
           PERFORM STAT           
           OPEN INPUT MXMARQUE
           PERFORM STAT
           OPEN I-O MXGRAFAM           
           PERFORM STAT
           OPEN INPUT MXFOU
           PERFORM STAT
           OPEN INPUT MXPARAM
           PERFORM STAT
           MOVE 1 TO W-MXPARAM
           READ MXPARAM
           PERFORM STAT
           CLOSE MXPARAM  

           COPY "W:/mx/copy/Assign-FICTMP.cbl" REPLACING 
              ==FICTMP==   BY ==TRI==
              =='FICTMP'== BY ==TRI==.
           .

       Close-File-Rtn.
      *--------------*
           CLOSE MXHISVTE
           CLOSE MXHISVTE2
           CLOSE MXAGENCE
           CLOSE MXART
           CLOSE MXCLI
           CLOSE MXMARQUE
           CLOSE MXGRAFAM 
           CLOSE MXFOU
           CLOSE TRI

           DELETE FILE TRI
           .

       ERREUR.
           PERFORM MSG-ERREUR
           PERFORM CLOSE-FILE-RTN
           GO ACU-EXIT-RTN
           .

      *-------------------------------------------------------------------------
      * Screen1
      *-------------------------------------------------------------------------
       Screen1-BeforeCreate.
      *--------------------*
           PERFORM Controle-PalmeC
           
           move 0 to auto-modpr

           MOVE 1 TO WAGC-AUTO

           MOVE CORR R-PCOURS-MPAR TO W-PER

           PERFORM Open-File-Rtn

           IF AGS-MPAR = SPACE     
      *      Agence siège non renseignée (pas normal)
             MOVE "00" TO AGS-MPAR
           END-IF
           move ags-mpar to age-int

           MOVE DTT-PALM TO W-DATE98
                            DA2-INT

           COPY "W:/mistral/copy/Ef-Date10-Fic2Ecr.cbl" REPLACING 
              ==CPYDAT-FIC== BY ==W-DATE98==
              ==CPYDAT-ECR== BY ==W-DATE==.
  
           MOVE W-DATE TO W-DATE2

           IF NBMHV-MPAR = 0     
              MOVE DDE-MPAR TO DA1-INT   
           ELSE
              MOVE DTT-PALM TO D-SAMJ
              MOVE 01 TO J-SAMJ

              DIVIDE NBMHV-MPAR BY 12 GIVING W-NB-AN 
                 REMAINDER W-NB-MOIS
 
              SUBTRACT W-NB-AN FROM SA-SAMJ

              IF W-NB-MOIS >= M-SAMJ     
                 SUBTRACT 1 FROM SA-SAMJ
                 COMPUTE M-SAMJ = M-SAMJ + 12 - W-NB-MOIS
              ELSE
                 SUBTRACT W-NB-MOIS FROM M-SAMJ
              END-IF

              MOVE D-SAMJ TO DA1-INT
           END-IF

           COPY "../../mistral/copy/Ef-Date10-Fic2Ecr.cbl" REPLACING 
              ==CPYDAT-FIC== BY ==DA1-INT==
              ==CPYDAT-ECR== BY ==W-DATE1==.

           IF LK-HIV-C-AGE = SPACE 
           AND  LK-HIV-C-REG = SPACE
           AND (    LK-HIV-C-ART <> SPACE
                 OR LK-HIV-C-CLI <> ZERO )     
              MOVE 1 TO NSA-INT
           END-IF

           IF LK-HIV-C-ART <> SPACE     
              MOVE LK-HIV-C-ART TO LK-MART-M-COD(1)
              MOVE 1           TO LK-MART-M-NBSEL
              MOVE 2           TO ART-INT
              MOVE 1           TO CLI-INT   
              MOVE 0           TO AFF-ART-INT
                                  AFF-CRF-INT
                                  AFF-DES-INT
                                  SOR-INT
                                  AVO-INT
           END-IF

           IF LK-HIV-C-CLI <> ZERO     
              MOVE LK-HIV-C-CLI TO LK-MCLI-M-COD(1)
              MOVE 1          TO LK-MCLI-M-NBSEL
              MOVE 2          TO CLI-INT
              MOVE 0          TO AFF-CLI-INT
                                 AFF-NOM-INT
                                 AFF-VIL-INT
           END-IF
      * Remplissage checkbox activités
           MOVE 0 TO NB-ACT

           IF MXDIS-PALM = 1     
              ADD 1 TO NB-ACT
              MOVE "DISTRIBUTION" TO LIB-TAB-ACT (NB-ACT)
              MOVE "D"            TO COD-TAB-ACT (NB-ACT)
              MOVE 1              TO VAL-TAB-ACT (NB-ACT)
                                     VIS-TAB-ACT (NB-ACT)             
           END-IF

           | Visibilité de la colonne Niveau de commande
           MOVE 0 TO W-COL-NVC
           IF MXMAT-PALM = 1     
              ADD 1 TO NB-ACT
              MOVE "VENTE MATERIEL" TO LIB-TAB-ACT (NB-ACT)
              MOVE "M"              TO COD-TAB-ACT (NB-ACT)
              MOVE 1                TO VAL-TAB-ACT (NB-ACT)
                                       VIS-TAB-ACT (NB-ACT) 
           END-IF

           IF MXREP-PALM = 1     
              ADD 1 TO NB-ACT
              MOVE "ENTRETIEN - S.A.V." TO LIB-TAB-ACT (NB-ACT)
              MOVE "R"                  TO COD-TAB-ACT (NB-ACT)
              MOVE 1                    TO VAL-TAB-ACT (NB-ACT)
                                           VIS-TAB-ACT (NB-ACT) 
           END-IF

           IF MXLOC-PALM = 1     
              ADD 1 TO NB-ACT
              MOVE "LOCATION" TO LIB-TAB-ACT (NB-ACT)
              MOVE "L"        TO COD-TAB-ACT (NB-ACT)
              MOVE 1          TO VAL-TAB-ACT (NB-ACT)
                                 VIS-TAB-ACT (NB-ACT) 
           END-IF

           MOVE NB-ACT TO NB-SEL-ACT

           MOVE 0 TO W-SEL-TRI
           MOVE 1 TO W-DFA     
           .

       Screen1-AfterInitData.
      *---------------------*
           IF LK-HIV-C-AGE <> SPACE     
             MOVE LK-HIV-C-AGE TO AGE-INT COD-MAGC
             READ MXAGENCE
             MODIFY Screen1-Ef-Age, VALUE AGE-INT
             MODIFY Screen1-Ef-NomAge, VALUE NOM-MAGC
             PERFORM Screen1-Ef-Age-Aft-Procedure
           END-IF.

           IF WAGC-OK = 2     
      *       Agence bloquée
              MOVE 2 TO NSA-INT
              MODIFY Screen1-Rb-NIV1, VALUE  NSA-INT
              MODIFY Screen1-Rb-NIV2, VALUE  NSA-INT
           END-IF

           IF WAGC-OK = 1     
              MOVE AGE-INT TO AGS-INT
           END-IF

           PERFORM VARYING I FROM 1 BY 1 UNTIL I > NOMBRE-COLONNES
             INQUIRE Screen1-Gd-1 ( 1, I ),
                     CELL-DATA IN Elt-Tit-Record(I)
           END-PERFORM

           IF LK-HIV-C-ART <> SPACE OR LK-HIV-C-CLI <> ZERO     
      *       Programme appelé avec recherche : cache sélections
              PERFORM Screen1-Pb-ReduireS-Link           
              PERFORM Screen1-Pb-ReduireS-Link
              PERFORM Screen1-Pb-ReduireA-Link   
              MOVE 1 TO WVISIBLE              
           ELSE
      *       Critères d'affichage cachés au départ : les réaffiche
              PERFORM Screen1-Pb-ReduireA-Link           
              PERFORM Screen1-Pb-ReduireA-Link           
              MOVE 1 TO WVISIBLE
              PERFORM Affi-Sel
           END-IF

           PERFORM AdaptGrid

           IF (    LK-HIV-C-ART <> SPACE
                OR LK-HIV-C-CLI <> ZERO )
121207     AND (    NSA-INT <> 2             | Agence utilisateur défini ou pas niveau agence
121207           OR AGE-INT <> SPACE )     

      *        MOVE DDE-MPAR   TO DA1-INT
      *           COPY "../../mistral/copy/Ef-Date10-Fic2Ecr.cbl" 
      *              REPLACING ==CPYDAT-FIC== BY ==DA1-INT==
      *                        ==CPYDAT-ECR== BY ==W-DATE1==.
      *        MODIFY Screen1-Ef-DATE1, 
      *              VALUE W-DATE1
      *
      *        MOVE DTT-PALM TO DA2-INT 
      *
      *        COPY "W:/mistral/copy/Ef-Date10-Fic2Ecr.cbl" REPLACING 
      *           ==CPYDAT-FIC== BY ==DA2-INT==
      *           ==CPYDAT-ECR== BY ==W-DATE2==.
      *
      *        MODIFY Screen1-Ef-DATE2, 
      *           VALUE W-DATE2

              PERFORM Test-Act

120819        MOVE HANDLE-PALM TO MCF-HANDLE-FP
              PERFORM Creation-TRI
      
070307
              IF W-NB-TRI = 0     
      *          Recherche si mouvement pour cette sélection sans la date de début
                 MOVE 0 TO DA1-INT
120819           MOVE HANDLE-PALM TO MCF-HANDLE-FP

                 PERFORM Creation-TRI
070307
                 IF W-NB-TRI = 0     
      *             Aucun historique à afficher
                    MOVE "Aucun mouvement pour cette sélection" 
                      TO ACU-Msg-1
280612*
      *              MOVE "Sélectionner une autre période?" 
      *                TO ACU-Msg-2
      *              move 2 to acu-default-button
      *              PERFORM Msg-On
      *              if acu-return-value not = 1
280612*
                       PERFORM ACU-Screen1-Exit
      
                       EXIT PARAGRAPH
                    END-IF
280612*           END-IF

              ELSE
      
120819           MOVE HANDLE-PALM TO MCF-HANDLE-FP
                 PERFORM Affiche-Grille
      
              END-IF

           END-IF

120819     PERFORM MisCentreFenetreScreen1

           MODIFY Screen1-Handle,
              VISIBLE TRUE
           .
 
       Screen1-Aft-Routine.
      *-------------------*
           PERFORM Close-File-Rtn
           .

       Screen1-Ev-Cmd-Close.
      *--------------------*
           PERFORM Mistral-WindowClosing
           .

       Screen1-Rb-NIV1-Ev-Cmd-Clicked.
      *------------------------------*
      *    Société
           MOVE 1 TO NSA-INT
           PERFORM Affi-Sel
           .

       Screen1-Rb-NIV2-Ev-Cmd-Clicked.
      *------------------------------*
      *    Agence
           MOVE 2 TO NSA-INT
           PERFORM Affi-Sel
           .

       Screen1-Ef-Age-Aft-Procedure.
      *-----------------------------*
           COPY "../../mx/copy/NSA-Ef-Agence.cbl".
           .
      *
      *-----------------------------------------------------------------
       Screen1-Rb-DFA0-Ev-Cmd-Clicked.
      *------------------------------*
           MOVE 0 TO DFA-INT
           .

       Screen1-Rb-DFA1-Ev-Cmd-Clicked.
      *------------------------------*
           MOVE 1 TO DFA-INT
           .

       Screen1-Ef-DATE1-Ev-Cmd-Goto.
      *----------------------------*
           MODIFY Screen1-St-1-Handle, 
              TITLE 
              "0 = Depuis l'origine, sinon date JJMMAA ou JJ/MM/AAAA"
           .

       Screen1-Ef-DATE1-Aft-Procedure.
      *------------------------------*
           INQUIRE Screen1-Ef-DATE1, 
              VALUE IN W-DATE1

           IF W-DATE1  <> 0 
           AND W-DATE1 <> SPACE     

              COPY "../../mistral/copy/Ef-Date10-Ecr2Fic.cbl" REPLACING 
                 ==CPYDAT-FIC== BY ==DA1-INT==
                 ==CPYDAT-ECR== BY ==W-DATE1==.

              MODIFY Screen1-Ef-DATE1, 
                 VALUE W-DATE1

              IF Ef-Date-Erreur = 1     
      *          Reste sur le champ date
                 MOVE 4  TO ACCEPT-CONTROL
                 MOVE 16 TO CONTROL-ID

                 EXIT PARAGRAPH

              END-IF

           ELSE
              MOVE 0 TO DA1-INT
           END-IF
           .

       Screen1-Ef-DATE1-Ev-Other.
      *-------------------------*
           PERFORM Affi-Sel
           .

       Screen1-Ef-DATE2-Ev-Cmd-Goto.
      *----------------------------*
           MODIFY Screen1-St-1-Handle, 
              TITLE "0 = Date du jour, sinon date JJMMAA ou JJ/MM/AAAA"
           .

       Screen1-Ef-DATE2-Aft-Procedure.
      *------------------------------*
           INQUIRE Screen1-Ef-DATE2, 
              VALUE IN W-DATE2

           IF W-DATE2 = 0 
           OR W-DATE2 = SPACE     
              ACCEPT DA2-INT FROM CENTURY-DATE

              COPY "W:/mistral/copy/Ef-Date10-Fic2Ecr.cbl" REPLACING 
                 ==CPYDAT-FIC== BY ==DA2-INT==
                 ==CPYDAT-ECR== BY ==W-DATE2==.

           ELSE

              COPY "../../mistral/copy/Ef-Date10-Ecr2Fic.cbl" REPLACING 
                 ==CPYDAT-FIC== BY ==DA2-INT==
                 ==CPYDAT-ECR== BY ==W-DATE2==.

           END-IF

           MODIFY Screen1-Ef-DATE2, 
              VALUE W-DATE2

           IF Ef-Date-Erreur = 1     
      *       Reste sur le champ date
              MOVE 4  TO ACCEPT-CONTROL
              MOVE 18 TO CONTROL-ID

              EXIT PARAGRAPH

           END-IF
           .

       Screen1-Ef-DATE2-Ev-Other.
      *-------------------------*
           PERFORM Affi-Sel
           .

       Screen1-Rb-CLI1-Ev-Cmd-Clicked.
      *------------------------------*
           MOVE 1 TO CLI-INT
                     CDV-INT
                     LIV-INT
           MOVE 0 TO DIV-INT

           MODIFY Screen1-Rb-CDV1, 
              VALUE CDV-INT
           MODIFY Screen1-Rb-CDV2, 
              VALUE CDV-INT
           MODIFY Screen1-Rb-LIV1, 
              VALUE LIV-INT
           MODIFY Screen1-Rb-LIV2, 
              VALUE LIV-INT

           PERFORM Affi-Sel
           .

       Screen1-Rb-CLI2-Ev-Cmd-Clicked.
      *------------------------------*
           MOVE 2 TO CLI-INT
           MOVE 0 TO DIV-INT

           CALL "mcli-m.acu" USING ZONE-PALM LK-MCLI-M
           CANCEL "mcli-m.acu"

           IF LK-MCLI-M-NBSEL = 0     
              MOVE "Vous devez sélectionner au moins un client"
                TO ACU-MSG-1      
              PERFORM MSG-INFO      
      *     ELSE
      *        IF LK-MCLI-M-NBSEL = 1     
      *           MOVE LK-MCLI-M-COD(1) TO COD-MCLI
      *
      *           READ MXCLI KEY CLE6-MCLI  
      *           INVALID
      *              INITIALIZE ENR-MCLI
      *           END-READ
      *           PERFORM STAT
      *
      *           IF IDV-MCLI = 1     
      *              MOVE 1 TO DIV-INT
      *           END-IF
      *
      *           IF  CDV-INT = 2 
      *           AND (    DIV-INT = 0
      *                 OR LK-MCDV-L-CLI <> LK-MCLI-M-COD(1) )     
      *              MOVE 1 TO CDV-INT
      *              MOVE SPACE TO LK-MCDV-L
      *           END-IF
      *
      *           IF  LIV-INT = 2
      *           AND (    DIV-INT = 1
      *                 OR LK-MCHC-L-NCP <> ORD-MCLI )     
      *              MOVE 1 TO LIV-INT
      *              MOVE SPACE TO LK-MCHC-L
      *           END-IF
      *
      *        ELSE
      *           MOVE 1 TO CDV-INT
      *                     LIV-INT
      *           MOVE SPACE TO LK-MCDV-L
      *                         LK-MCHC-L
      *                         
      *        END-IF
      *
      *        MODIFY Screen1-Rb-CDV1, 
      *           VALUE CDV-INT
      *        MODIFY Screen1-Rb-CDV2, 
      *           VALUE CDV-INT
      *        MODIFY Screen1-Rb-LIV1, 
      *           VALUE LIV-INT
      *        MODIFY Screen1-Rb-LIV2, 
      *           VALUE LIV-INT
           END-IF

           PERFORM Affi-Sel
           .

       Screen1-Rb-CLI3-Ev-Cmd-Clicked.
      *------------------------------*
           MOVE 3 TO CLI-INT
           MOVE 1 TO CDV-INT
                     LIV-INT
           MOVE 0 TO DIV-INT

           MODIFY Screen1-Rb-CDV1, 
              VALUE CDV-INT
           MODIFY Screen1-Rb-CDV2, 
              VALUE CDV-INT
           MODIFY Screen1-Rb-LIV1, 
              VALUE LIV-INT
           MODIFY Screen1-Rb-LIV2, 
              VALUE LIV-INT

           PERFORM Affi-Sel
           .               

      *
       Screen1-Rb-CDV1-Ev-Cmd-Clicked.
      *------------------------------*
           MOVE SPACE TO LK-MCDV-L
           .      
      *
       Screen1-Rb-CDV2-Ev-Cmd-Clicked.
      *------------------------------*
           .      
      *
       Screen1-Rb-LIV1-Ev-Cmd-Clicked.
      *------------------------------*
           MOVE SPACE TO LK-MCHC-L
           .
      *
       Screen1-Rb-LIV2-Ev-Cmd-Clicked.
      *------------------------------*
           .

       Screen1-Rb-ART1-Ev-Cmd-Clicked.
      *------------------------------*
           MOVE 1 TO ART-INT

           PERFORM Affi-Sel
           .
      *
       Screen1-Rb-ART2-Ev-Cmd-Clicked.
      *------------------------------*
           MOVE 2 TO ART-INT

      *    Lance fenêtre recherche article
           CALL "mart-m.acu" 
              USING ZONE-PALM 
                    LK-MART-M
           CANCEL "mart-m.acu"

           IF LK-MART-M-NBSEL = 0     
              MOVE "Vous devez sélectionner au moins un article"
                TO ACU-MSG-1
      
              PERFORM MSG-INFO
      
           END-IF

           PERFORM Affi-Sel
           .

       Screen1-Rb-ART3-Ev-Cmd-Clicked.
      *------------------------------*
           MOVE 3 TO ART-INT

           PERFORM Affi-Sel
030212
           MOVE 1 TO ADI-INT
           MODIFY Screen1-Cb-ADI,
              VALUE ADI-INT
030212
           .

210212 Screen1-Rb-ART6-Ev-Cmd-Clicked.
      *------------------------------*
           MOVE 6 TO ART-INT
           PERFORM Affi-Sel
           .

       Screen1-Rb-MAR1-Ev-Cmd-Clicked.
      *------------------------------*
      * Toutes marques
           MOVE 1 TO MAR-INT

           PERFORM Affi-Sel
          . 

       Screen1-Rb-MAR2-Ev-Cmd-Clicked.
      *------------------------------*
      * Plusieurs marques
           . 

       Screen1-Rb-VEN2-Ev-Cmd-Clicked.
      *------------------------------*
           .      
      *
       Screen1-Rb-TEC2-Ev-Cmd-Clicked.
      *------------------------------*
           .      
      *
       Screen1-Rb-POS2-Ev-Cmd-Clicked.
      *------------------------------*
           .

       Screen1-Rb-DEP2-Ev-Cmd-Clicked.
      *------------------------------*
           . 
      *
210212 Screen1-Ef-FOU-Aft-Procedure.
      *----------------------------*     
           MOVE FOU3-INT TO COD-MFOU
           MODIFY Screen1-Ef-NomFOU, 
              VALUE SPACE

           MOVE 1 TO W-OK

           READ MXFOU 
           INVALID 
              MOVE 0 TO W-OK
              INITIALIZE ENR-MFOU
           END-READ

           PERFORM STAT

           IF CANN-MFOU = 1 
           OR COD-MFOU  = 0 THEN 
              MOVE 0 TO W-OK
           END-IF

           IF W-OK = 0 THEN
              MOVE "Fournisseur Inexistant" TO ACU-MSG-1
              PERFORM MSG-INFO
              MOVE ZERO TO FOU3-INT
              MODIFY Screen1-Ef-FOU, 
                 VALUE SPACE
              MOVE 119 TO CONTROL-ID
              MOVE 4   TO ACCEPT-CONTROL
              EXIT PARAGRAPH
           END-IF

           MODIFY Screen1-Ef-NomFOU, 
              VALUE RAI-MFOU
           .

      *
       Screen1-Pb-LancerS-Link.
      *-----------------------*
      *    Lancement du traitement en fonction des sélections
           IF NSA-INT = 2     
              PERFORM Screen1-Ef-Age-Aft-Procedure              
              IF WAGC-OK = 0     
                 MOVE "Agence incorrecte" TO ACU-MSG-1
                 PERFORM MSG-INFO
                 EXIT PARAGRAPH
              END-IF
           END-IF

           PERFORM Screen1-Ef-DATE1-Aft-Procedure

           IF Ef-Date-Erreur = 1     

              EXIT PARAGRAPH

           END-IF

           PERFORM Screen1-Ef-DATE2-Aft-Procedure

           IF Ef-Date-Erreur = 1     

              EXIT PARAGRAPH

           END-IF

           IF DA1-INT > DA2-INT     
              MOVE "Les dates sont incorrectes" TO ACU-MSG-1
      
              PERFORM MSG-INFO
      
              EXIT PARAGRAPH

           END-IF

           PERFORM Test-ACT

           IF NB-SEL-ACT = 0     
      ***     29/10/2009 /BS (pour avoir seulement les transferts ou ..)
      **        MOVE "Vous devez sélectionner au moins une activité"
      **          TO ACU-MSG-1      
      **        PERFORM MSG-INFO      
      **        EXIT PARAGRAPH
              MOVE "Aucune activité sélectionnée !" TO ACU-MSG-1      
              MOVE "Etes-vous sûr(e) ?" TO ACU-MSG-2
              PERFORM MSG-ON
              IF ACU-RETURN-VALUE NOT = 1 EXIT PARAGRAPH
              END-IF
           END-IF

           IF  CLI-INT = 2
           AND LK-MCLI-M-NBSEL = 0     
              MOVE "Vous devez sélectionner au moins un client"
                TO ACU-MSG-1
      
              PERFORM MSG-INFO
      
              EXIT PARAGRAPH

           END-IF
      

           IF  CDV-INT = 2
           AND LK-MCDV-L-COD = 0     
              MOVE "Vous devez sélectionner un client divers"
                TO ACU-MSG-1
      
              PERFORM MSG-INFO
      
              EXIT PARAGRAPH

           END-IF

           IF  LIV-INT = 2
           AND LK-MCHC-L-ORD =0     
              MOVE "Vous devez sélectionner une adresse de livraison"
                TO ACU-MSG-1
      
              PERFORM MSG-INFO
      
              EXIT PARAGRAPH

           END-IF

           IF  ART-INT = 2
           AND LK-MART-M-NBSEL = 0     
              MOVE "Vous devez sélectionner au moins un article"
                TO ACU-MSG-1
      
              PERFORM MSG-INFO
      
              EXIT PARAGRAPH

           END-IF

           IF  ART-INT = 3 
           AND AR1-INT = 0     
              MOVE "Article divers incorrect"
                TO ACU-MSG-1
              PERFORM MSG-INFO
      
              EXIT PARAGRAPH

           END-IF

           IF  ART-INT = 3 
           AND ADI-INT = 0     
              MOVE "Articles divers non sélectionnés"
                TO ACU-MSG-1
              PERFORM MSG-INFO
      
              EXIT PARAGRAPH

           END-IF

           IF  AOR-INT = 0
           AND AAD-INT = 0
           AND AOC-INT = 0
           AND ADI-INT = 0 THEN
              MOVE "Vous devez sélectionner un type d'article"
                TO ACU-Msg-1
           END-IF

           IF IND-RAPPEL = 0 
              
              IF  CLI-INT = 2 
              AND LK-MCLI-M-NBSEL = 1 
              AND (    DIV-INT = 0 
                    OR CDV-INT = 2 )     
                 MOVE 0 TO AFF-CLI-INT
                 MODIFY Screen1-Cb-CLI, 
                    VALUE AFF-CLI-INT
              END-IF
              
              IF  CLI-INT = 1     
                 MOVE 1 TO AFF-CLI-INT
                 MODIFY Screen1-Cb-CLI, 
                    VALUE AFF-CLI-INT
              
                 IF (    (     ART-INT = 2 
                         AND LK-MART-M-NBSEL = 1 )
                       OR ART-INT = 3 )     
                    MOVE 0 TO AFF-ART-INT
                    MODIFY Screen1-Cb-ART, 
                       VALUE AFF-ART-INT
                    MOVE 0 TO AFF-DES-INT
                    MODIFY Screen1-Cb-DES, 
                       VALUE AFF-ART-INT
                 END-IF
              
              END-IF
              
              IF ART-INT = 1      
                 MOVE 1 TO AFF-ART-INT
                 MODIFY Screen1-Cb-ART, 
                    VALUE AFF-ART-INT
                 MOVE 1 TO AFF-DES-INT
                 MODIFY Screen1-Cb-DES, 
                    VALUE AFF-ART-INT
              
              
              END-IF

              IF VEN-INT = 1     
                 IF  CLI-INT = 1
                 AND ART-INT = 1
                 AND LK-LISTE-NBSEL OF LK-LISTE = 1     
                    MOVE 0 TO AFF-CLI-INT
                    MODIFY Screen1-Cb-CLI, 
                       VALUE AFF-CLI-INT
                 END-IF
              
              END-IF
           END-IF

           MOVE SPACE TO LK-HIV-C-ART
           MOVE 0     TO LK-HIV-C-CLI

           PERFORM Creation-TRI

           PERFORM Affiche-Grille
           .

       Screen1-Pb-ReduireS-Link.
      *------------------------*
      *    Cache ou montre les sélections

           IF W-REDS = 1     
              MOVE 0 TO W-REDS
           ELSE 
              MOVE 1 TO W-REDS
           END-IF

           IF W-REDS = 1     
              MOVE 0     TO WVISIBLE
      *        MOVE -22,3 TO W-DIF 
              MOVE -23,9 TO W-DIF 
           ELSE
              MOVE 1     TO WVISIBLE
      *        MOVE 22,3  TO W-DIF 
              MOVE 23,9  TO W-DIF 
           END-IF.

           PERFORM Redim-Sel

           PERFORM Affi-Sel

           IF W-REDS = 1     

              IF W-DEB = 0     
                 MOVE 1 TO W-DEB
              ELSE
                 MODIFY Screen1-Gd-1, 
                    VISIBLE 1
              END-IF

              MODIFY Screen1-Pb-ReduireS, 
                 BITMAP-HANDLE EXPANDxx7-JPG
              MODIFY Screen1-Pb-ReduireS, 
                 TITLE "+ de critères"
              MODIFY Screen1-La-SEL,
                 VISIBLE 1
              MODIFY Screen1-La-TOT,
                 VISIBLE 1
              MODIFY Screen1-Ef-TOT-QTE,
                 VISIBLE 1
              MODIFY Screen1-La-HT,
                 VISIBLE 1
              MODIFY Screen1-Ef-TOT-HT,
                 VISIBLE 1
              MODIFY Screen1-Fr-TOT,
                 VISIBLE 1
           ELSE 
              MODIFY Screen1-Gd-1, 
                 VISIBLE 0
              MODIFY Screen1-Pb-ReduireS, 
                 BITMAP-HANDLE COLLAPSE7-JPG
              MODIFY Screen1-Pb-ReduireS, 
                 TITLE "- de critères"
              MODIFY Screen1-La-SEL,
                 VISIBLE 0
              MODIFY Screen1-La-TOT,
                 VISIBLE 0
              MODIFY Screen1-Ef-TOT-QTE,
                 VISIBLE 0
              MODIFY Screen1-La-HT,
                 VISIBLE 0
              MODIFY Screen1-Ef-TOT-HT,
                 VISIBLE 0
              MODIFY Screen1-FR-TOT,
                 VISIBLE 0
           END-IF
           .

       Screen1-Pb-LancerA-Link. 
      *-----------------------*
 
300309*     PERFORM Creation-TRI intérêt ? Ralentit en recommençant la recherche

           PERFORM Affiche-Grille
           .

       Screen1-Pb-ReduireA-Link.
      *------------------------*

           IF W-REDA = 1 
              MOVE 0 TO W-REDA
           ELSE 
              MOVE 1 TO W-REDA
           END-IF

           IF W-REDA = 1 
              MOVE -4 TO W-DIF 
              MOVE 0 TO WVISIBLE
           ELSE 
              MOVE 4 TO W-DIF 
              MOVE 1 TO WVISIBLE
           END-IF.

           MODIFY Screen1-Cb-DSP,    
              VISIBLE WVISIBLE 
           MODIFY Screen1-Cb-DAT,    
              VISIBLE WVISIBLE
           MODIFY Screen1-Cb-ART,    
              VISIBLE WVISIBLE 
           MODIFY Screen1-Cb-DES,    
              VISIBLE WVISIBLE 
           MODIFY Screen1-Cb-QTE,    
              VISIBLE WVISIBLE 
           MODIFY Screen1-Cb-PRI,    
              VISIBLE WVISIBLE 
           MODIFY Screen1-Cb-REM,    
              VISIBLE WVISIBLE 
           IF MOB-PALM = 0 
              MODIFY Screen1-Cb-MAR, VISIBLE WVISIBLE
           ELSE 
              MODIFY Screen1-Cb-MAR, VISIBLE 0 value 0
              MOVE ZERO TO AFF-MAR-INT
           END-IF
           MODIFY Screen1-Cb-REP,    
              VISIBLE WVISIBLE 
           MODIFY Screen1-Cb-CLI,    
              VISIBLE WVISIBLE 
           MODIFY Screen1-Cb-BON,    
              VISIBLE WVISIBLE 
           MODIFY Screen1-Cb-FAC,    
              VISIBLE WVISIBLE 
           MODIFY Screen1-Cb-HT,    
              VISIBLE WVISIBLE 
150612     MODIFY Screen1-Cb-TOT,    
              VISIBLE WVISIBLE 
           MODIFY Screen1-Cb-MAT,    
              VISIBLE WVISIBLE 
           MODIFY Screen1-Cb-NAF,    
              VISIBLE WVISIBLE 
           MODIFY Screen1-Cb-DEP,    
              VISIBLE WVISIBLE
           IF W-COL-NVC NOT = 0
              MODIFY Screen1-Cb-NVC,
                 VISIBLE WVISIBLE 
           END-IF
141210     MODIFY Screen1-Cb-FOU,    
              VISIBLE WVISIBLE 
           MODIFY Screen1-Cb-FAM,    
              VISIBLE WVISIBLE
           MODIFY Screen1-Cb-RFN,    
              VISIBLE WVISIBLE
           MODIFY Screen1-Cb-TOT,    
              VISIBLE WVISIBLE 
           MODIFY Screen1-Cb-ISA,    
              VISIBLE WVISIBLE
           MODIFY Screen1-Cb-NVC,    
              VISIBLE WVISIBLE
090415     MODIFY Screen1-Cb-CHC,    
              VISIBLE WVISIBLE
      *     MODIFY Screen1-La-A,
      *        VISIBLE 1
           INQUIRE Screen1-Fr-A, 
              LINES IN W-LINP
           ADD W-DIF TO W-LINP
           MODIFY Screen1-Fr-A, 
              LINES W-LINP
              VISIBLE 1
           
           INQUIRE Screen1-Gd-1, 
              LINE  IN W-LIN, 
              LINES IN W-LINP
           ADD W-DIF TO W-LIN 
           SUBTRACT W-DIF FROM W-LINP
           MODIFY Screen1-Gd-1, 
              LINES W-LINP, 
              LINE  W-LIN

           IF W-REDA = 1
              MODIFY Screen1-Pb-ReduireA, 
                 BITMAP-HANDLE EXPANDxx7-JPG
              MODIFY Screen1-Pb-ReduireA, 
                 TITLE "+ de critères"
           ELSE 
              MODIFY Screen1-Pb-ReduireA, 
                 BITMAP-HANDLE COLLAPSE7-JPG
              MODIFY Screen1-Pb-ReduireA, 
                 TITLE "- de critères"
           END-IF
           .
      *
       Screen1-Pb-Preview-Link.
      *------------------------*
           INQUIRE Screen1-Pb-Preview,
              VISIBLE IN W-VS-PB

           IF W-VS-PB = 0     
              EXIT PARAGRAPH
           END-IF

           MOVE SPACE TO LK-IMPRIME
           MOVE "P" TO LK-IMPRIME-PRVW
           
           PERFORM Edition
           .
      *
       Screen1-Pb-Imprimer-Link.
      *------------------------*
           INQUIRE Screen1-Pb-Imprimer,
              VISIBLE IN W-VS-PB

           IF W-VS-PB = 0     
              EXIT PARAGRAPH
           END-IF

           MOVE SPACE TO LK-IMPRIME
           
           PERFORM Edition
           .

       Screen1-Pb-Quit-LinkTo.
      *----------------------*
           PERFORM Acu-Screen1-EXIT
           .

       Screen1-Gd-1-Ev-Msg-Goto-Cell.
      *-----------------------------*
      * La ligne de titre est à ignorer...
           IF Event-Data-2 < 2
               MOVE 2 TO Event-Data-2
           END-IF
      * Pour voir si on a changé de ligne
           IF Event-Data-2 = Screen1-Gd-1-Cursor-Y-Old     
              MOVE Event-Data-1 TO Screen1-Gd-1-Cursor-X-Old
           ELSE
      *       Enlève la couleur de l'ancienne ligne courante
              INQUIRE Screen1-Gd-1 ( Screen1-Gd-1-Cursor-Y-Old, 1 ), 
                 HIDDEN-DATA IN CLE1-MHIV

              IF CLE1-MHIV = SPACE     
      *          Ligne total
                 MODIFY Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old),
                    ROW-COLOR W-Row-High-Color
              ELSE
                 MODIFY Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old),
                    ROW-COLOR 0
              END-IF

              INITIALIZE ENR-MHIV
              INQUIRE Screen1-Gd-1 ( Event-Data-2, 1 ), 
                 HIDDEN-DATA IN CLE1-MHIV
              READ MXHISVTE 
              PERFORM STAT

              IF  FAC-MHIV <> 0            
191114*        AND Screen1-Gd-1-ORI <> "t" 
191114        AND ORI-MHIV <> "t" 
                       AND <> "T"  
                 MOVE 1 TO W-FAC
              ELSE
                 MOVE 0 TO W-FAC
              END-IF

      *       Gestion loupe de la colonne facture (pas disponible sur MobiVip)
              IF W-COL-FAC <> 0 and MOB-PALM = 0  
                 MODIFY Screen1-Gd-1
                       (Screen1-Gd-1-Cursor-Y-Old, W-COL-FAC),
                    BITMAP NULL
                 IF W-FAC = 1     
                    MODIFY Screen1-Gd-1(Event-Data-2, W-COL-FAC),
                       BITMAP          ZOOM20-BMP,
                       BITMAP-TRAILING 0
                 END-IF
              END-IF
170111
      *       Gestion loupe de la colonne bon (pas disponible sur MobiVip)
              IF W-COL-BON <> 0 and MOB-PALM = 0 
                 MODIFY Screen1-Gd-1
                       (Screen1-Gd-1-Cursor-Y-Old, W-COL-BON),
                    BITMAP NULL
                 MOVE 0 TO W-AFF
                 PERFORM LECT-BON
                 IF W-BON = 1                                  
                    MODIFY Screen1-Gd-1(Event-Data-2, W-COL-BON),
                       BITMAP          ZOOM20-BMP,
                       BITMAP-TRAILING 0
                 END-IF
              END-IF
170111
              MOVE CLE9-MHIV TO W-CLE9-MHIV
              PERFORM TEST-COMPO
              MOVE W-TROUVE TO W-ART

              IF W-COL-ART <> 0     
      *          Enlève la loupe de la colonne article
                 MODIFY Screen1-Gd-1
                       (Screen1-Gd-1-Cursor-Y-Old, W-COL-ART),
                    BITMAP NULL

                 IF W-ART = 1     
      *             Ajoute la loupe à la colonne article
                    MODIFY Screen1-Gd-1(Event-Data-2, W-COL-ART),
                       BITMAP          ZOOM20-BMP,
                       BITMAP-TRAILING 1
                 END-IF

              END-IF

      *       Change la couleur de la ligne courante
              MODIFY Screen1-Gd-1(Event-Data-2),
                 ROW-COLOR Screen1-Gd-1-Row-Highlight-Color
           END-IF

           MOVE Event-Data-1 TO Screen1-Gd-1-Cursor-X
                                Screen1-Gd-1-Cursor-X-Old
           MOVE Event-Data-2 TO Screen1-Gd-1-Cursor-Y
                                Screen1-Gd-1-Cursor-Y-Old
      * Alimente la status-bar...
           
           INQUIRE Screen1-Gd-1(1, Event-Data-1),  
                  HIDDEN-DATA IN W-Message-Aide
           MODIFY Screen1-St-1-Handle,
                  TITLE W-Message-Aide

           IF  W-FAC = 1
           AND Event-Data-1 = W-COL-FAC     
              STRING W-Message-Aide DELIMITED BY "  "
                     ". Cliquez sur la loupe pour voir la facture"
                     DELIMITED BY SIZE
                INTO W-PICX60
              MODIFY Screen1-St-1-Handle,
                 TITLE W-PICX60
           END-IF

           IF  W-ART = 1
           AND Event-Data-1 = W-COL-ART 
               STRING W-Message-Aide DELIMITED BY "  "
                    ". Cliquez sur la loupe pour voir la composition"
                     DELIMITED BY SIZE
                INTO W-PICX60
              MODIFY Screen1-St-1-Handle,
                 TITLE W-PICX60
           END-IF
           .

       Screen1-Gd-1-Ev-Msg-Heading-Clicked.
      *-----------------------------------*
           IF Event-Data-1 = W-COL-DAT 
                          OR W-COL-DSP 
                          OR W-COL-ART
                          OR W-COL-DES
                          OR W-COL-REP
100913                    OR W-COL-MAR
                          OR W-COL-CLI
                          OR W-COL-NOM
                          OR W-COL-BON
                          OR W-COL-FAC 
                          OR W-COL-MAT 
                          OR W-COL-DEP
                          OR W-COL-FOU
                          OR W-COL-FAM 
090415                    OR W-COL-CHC THEN

              IF Event-Data-1 = W-KEY-NUM     

                 IF W-KEY-ORDER = "A"     
                    MOVE "D" TO W-KEY-ORDER
                 ELSE
                    MOVE "A" TO W-KEY-ORDER
                 END-IF

              ELSE
                 MOVE Event-Data-1 TO W-KEY-NUM
              END-IF

              PERFORM Affiche-Grille

           END-IF.

       Screen1-Gd-1-Ev-Msg-Begin-Entry.
      *-------------------------------*
      * Grille verrouillée en mode "Interrogation"...
           IF Event-Data-2 > 1 
           AND W-COL-FAC <> 0     
              MOVE W-COL-FAC TO Event-Data-1
           END-IF

           PERFORM Screen1-Gd-1-Ev-Msg-Bitmap-Clicked

           MOVE Event-Action-Fail TO Event-Action
           .

       Screen1-Gd-1-Ev-Msg-Col-Width-Changed.
      *-------------------------------------*     
           IF event-data-1 > 0 
                       and <= W-NB-COLONNES-ACTUEL
      *       Colonne modifiée -> stocke largeur
              MOVE W-COLONNE(Event-Data-1) TO I
              move event-data-2 to Elt-Lon-Gd-1-Record(I)
           end-if
           .
      *
       Screen1-Gd-1-Ev-Msg-Bitmap-Clicked.
      *----------------------------------*
           IF  Event-Data-2 > 1     

              EVALUATE Event-Data-1 

              WHEN W-COL-ART
      *          Colonne article : Affiche écran composition article
                 PERFORM Acu-screen2-Routine
 
      *        WHEN W-COL-FAC 
      **          Colonne facture : Affiche écran facture
      *           PERFORM Consultation-Facture
      *
              WHEN W-COL-BON
      *          Colonne bon : Consulte le bon
                 MOVE 1 TO W-AFF
                 PERFORM LECT-BON

              END-EVALUATE

           END-IF
           .

       Screen1-Gd-1-Ev-Msg-Init-Menu.
      *-----------------------------*
           IF W-FAC = 1
           OR W-ART = 1     
291019     OR ART-MHIV(1:4) NOT NUMERIC THEN
291019        
              IF ART-MHIV(1:4) NOT NUMERIC THEN
                 CALL "W$MENU" USING WMENU-ENABLE, 
                                     Screen1-Mn-1-Handle, 
                                     4000
              ELSE
                 CALL "W$MENU" USING WMENU-DISABLE, 
                                     Screen1-Mn-1-Handle, 
                                     4000
              END-IF
291019
              IF W-FAC = 1            
                 CALL "W$MENU" USING WMENU-ENABLE, 
                                     Screen1-Mn-1-Handle,
                                     4001
              ELSE
                 CALL "W$MENU" USING WMENU-DISABLE, 
                                     Screen1-Mn-1-Handle,
                                     4001
              END-IF

              IF W-ART = 1     
                 CALL "W$MENU" USING WMENU-ENABLE, 
                                     Screen1-Mn-1-Handle, 
                                     4002
              ELSE
                 CALL "W$MENU" USING WMENU-DISABLE, 
                                     Screen1-Mn-1-Handle, 
                                     4002
              END-IF
           ELSE
              SET Event-Action TO Event-Action-Fail
           END-IF
           .

       Screen1-Mn-1-MI-Composition-Link.
      *--------------------------------*
           PERFORM Acu-screen2-Routine
           .

       Init-Agence.
      *-----------*  
      *    Agence par défaut
           IF MOB-PALM NOT = 0
              MOVE 1 TO WAGC-OK
              MOVE 2 TO ATA-PALM
           ELSE 
              COPY "../../mx/copy/Init-Agence.cbl" REPLACING
                     ==DCN-AGE==       BY ==AGE-INT==
                     ==DCN-Ef-Age==    BY ==Screen1-Ef-Age==
                     ==DCN-Ef-NomAge== BY ==Screen1-Ef-NomAge== .
           END-IF
           .

      
       Test-Act.
      *--------*
           MOVE SPACE TO WMOD
           MOVE 0 TO NB-SEL-ACT

           PERFORM VARYING I FROM 1 BY 1
              UNTIL I > NB-ACT

              IF VAL-TAB-ACT (I) = 1     
                 ADD 1 TO NB-SEL-ACT

                 EVALUATE COD-TAB-ACT(I)
                 WHEN "D"
                    MOVE "D" TO WMODD
                 WHEN "M"
                    MOVE "M" TO WMODM
                 WHEN "R"
                    MOVE "R" TO WMODR
                 WHEN "L"
                    MOVE "L" TO WMODL
                 END-EVALUATE

              END-IF

           END-PERFORM
           .

       Affi-Sel.
      *--------*

      *     MODIFY Screen1-Fr-S,
      *        VISIBLE 1
           MODIFY Screen1-Fr-NIV,  
              VISIBLE WVISIBLE 

           MOVE NSA-INT TO SV-NIV

           COPY "../../mx/copy/TestNiveau2.cbl" REPLACING
              ==nsa-int==   BY ==NSA-INT==
              ==visible 1== BY ==visible WVISIBLE==.
      
           IF WAGC-OK = 2     
              MODIFY Screen1-Rb-NIV2,
                 VISIBLE WVISIBLE  
           END-IF
      *    Proto
           MODIFY Screen1-La-1,
                 VISIBLE WVISIBLE  
           MODIFY Screen1-La-2,
                 VISIBLE WVISIBLE 
           MODIFY Screen1-La-3,
                 VISIBLE WVISIBLE 
           MODIFY Screen1-La-4,
                 VISIBLE WVISIBLE 
           MODIFY Screen1-La-5,
                 VISIBLE WVISIBLE  
           MODIFY Screen1-La-6,
                 VISIBLE WVISIBLE 
           MODIFY Screen1-La-7,
                 VISIBLE WVISIBLE                                    
      
           IF NSA-INT <> SV-NIV     
              MODIFY Screen1-Rb-NIV1, VALUE  NSA-INT
              MODIFY Screen1-Rb-NIV2, VALUE  NSA-INT
           END-IF
                 
           MODIFY Screen1-Fr-DAT,  
              VISIBLE WVISIBLE 
           MODIFY Screen1-La-DATE1,    
              VISIBLE WVISIBLE
           MODIFY Screen1-Ef-DATE1,    
              VISIBLE WVISIBLE
           MODIFY Screen1-La-DATE2,    
              VISIBLE WVISIBLE
           MODIFY Screen1-Ef-DATE2,    
              VISIBLE WVISIBLE
      
           MODIFY Screen1-Rb-DFA0,    
              VISIBLE WVISIBLE
           MODIFY Screen1-Rb-DFA1,    
              VISIBLE WVISIBLE
      
           MOVE WVISIBLE TO WVISIBLE2
           MODIFY Screen1-Fr-AFF,   
              VISIBLE WVISIBLE2
           MODIFY Screen1-Ef-AFF,   
              VISIBLE WVISIBLE2
           MODIFY Screen1-Fr-LOT,   
              VISIBLE WVISIBLE2
           MODIFY Screen1-Ef-LOT,   
              VISIBLE WVISIBLE2
           MODIFY Screen1-Fr-ACT,
              VISIBLE WVISIBLE

           IF VIS-TAB-ACT(1) = 1     
              MODIFY Screen1-Cb-ACT1,
                 VISIBLE WVISIBLE
           END-IF

           IF VIS-TAB-ACT(2) = 1     
              MODIFY Screen1-Cb-ACT2,
                 VISIBLE WVISIBLE
           END-IF

           IF VIS-TAB-ACT(3) = 1     
              MODIFY Screen1-Cb-ACT3,
                 VISIBLE WVISIBLE
           END-IF

           IF VIS-TAB-ACT(4) = 1     
              MODIFY Screen1-Cb-ACT4,
                 VISIBLE WVISIBLE
           END-IF

           MODIFY Screen1-Fr-CLI,
              VISIBLE WVISIBLE
      *    Supp de l'* pour raison de maquettage
260620*     MODIFY Screen1-La-CLI,
      *        VISIBLE WVISIBLE

           MODIFY Screen1-Rb-CLI1,    
              VISIBLE WVISIBLE
           MODIFY Screen1-Rb-CLI2,     
              VISIBLE WVISIBLE
           MODIFY Screen1-Rb-CLI3,     
              VISIBLE WVISIBLE     
      
           IF RGC-MPAR = 0 THEN
              MOVE 0        TO WVISIBLE2
           ELSE
              MOVE WVISIBLE TO WVISIBLE2
           END-IF

      *     MODIFY Screen1-Br-CLI1,
      *        VISIBLE WVISIBLE

           IF CLI-INT = 1  
           OR CLI-INT = 3  
           OR DIV-INT = 0     
      *       Tous clients ou pas un client divers
              MOVE 0        TO WVISIBLE2
           ELSE
              MOVE WVISIBLE TO WVISIBLE2
           END-IF

           MODIFY Screen1-Rb-CDV1, 
              VISIBLE WVISIBLE2
           MODIFY Screen1-Rb-CDV2, 
              VISIBLE WVISIBLE2

      *     MODIFY Screen1-Br-CLI2,
      *        VISIBLE WVISIBLE

           IF  CLI-INT = 2
           AND LK-MCLI-M-NBSEL = 1 
           AND DIV-INT = 0     
      *       Un client
              MOVE WVISIBLE TO WVISIBLE2
           ELSE
              MOVE 0        TO WVISIBLE2
           END-IF

           MODIFY Screen1-Rb-LIV1, 
              VISIBLE WVISIBLE2
           MODIFY Screen1-Rb-LIV2, 
              VISIBLE WVISIBLE2

           MODIFY Screen1-Fr-ART,
              VISIBLE WVISIBLE
      *    Supp de l'* pour raison de maquettage
260620*     MODIFY Screen1-La-ART,
      *        VISIBLE WVISIBLE
           MODIFY Screen1-Rb-ART1,    
              VISIBLE WVISIBLE
           MODIFY Screen1-Rb-ART2,     
              VISIBLE WVISIBLE
           MODIFY Screen1-Rb-ART3,     
              VISIBLE WVISIBLE
      
     
210212     MODIFY Screen1-Rb-ART6,     
              VISIBLE WVISIBLE
030212
           MODIFY Screen1-Cb-AOR,     
              VISIBLE WVISIBLE
           MODIFY Screen1-Cb-AAD,     
              VISIBLE WVISIBLE
           MODIFY Screen1-Cb-AOC,     
              VISIBLE WVISIBLE
           MODIFY Screen1-Cb-ADI,     
              VISIBLE WVISIBLE
030212
           IF ART-INT = 3     
      *       Référence diverse
              MOVE WVISIBLE TO WVISIBLE2
           ELSE
              MOVE 0        TO WVISIBLE2
           END-IF

           MODIFY Screen1-Ef-AR1,     
              VISIBLE WVISIBLE2
           MODIFY Screen1-Ef-AR2,     
              VISIBLE WVISIBLE2
210212
           IF ART-INT = 6    
      *       Fournisseur
              MOVE WVISIBLE TO WVISIBLE2
           ELSE
              MOVE 0        TO WVISIBLE2
           END-IF

           MODIFY Screen1-Ef-FOU,     
              VISIBLE WVISIBLE2
           MODIFY Screen1-Ef-NomFou,     
              VISIBLE WVISIBLE2

210212
           MODIFY Screen1-Fr-SOR,   
              VISIBLE WVISIBLE
      *     MODIFY Screen1-Rb-SOR1,   
      *        VISIBLE WVISIBLE
      *     MODIFY Screen1-Rb-SOR2,   
      *        VISIBLE WVISIBLE
           MODIFY Screen1-Cb-SOR,   
              VISIBLE WVISIBLE
           MODIFY Screen1-Cb-AVO,   
              VISIBLE WVISIBLE
211112     MODIFY Screen1-Cb-INT,   
              VISIBLE WVISIBLE

           MODIFY Screen1-Fr-MAR,    
              VISIBLE WVISIBLE
           MODIFY Screen1-Rb-MAR1,    
              VISIBLE WVISIBLE
           MODIFY Screen1-Rb-MAR2,    
              VISIBLE WVISIBLE          

           IF MAR-INT = 1            
      *       Toutes ou plusieurs marques
              MOVE 0        TO WVISIBLE2
           ELSE
              MOVE WVISIBLE TO WVISIBLE2
           END-IF

           MODIFY Screen1-La-TYPE,   
              VISIBLE WVISIBLE2
           MODIFY Screen1-Ef-TYPE,   
              VISIBLE WVISIBLE2

           MODIFY Screen1-Fr-RET,   
              VISIBLE WVISIBLE
           MODIFY Screen1-Rb-RET1,   
              VISIBLE WVISIBLE
           MODIFY Screen1-Rb-RET2,   
              VISIBLE WVISIBLE
           MODIFY Screen1-Rb-RET3,   
              VISIBLE WVISIBLE

           MODIFY Screen1-Fr-VEN,    
              VISIBLE WVISIBLE
      *     MODIFY Screen1-La-VEN,    
      *        VISIBLE WVISIBLE
           MODIFY Screen1-Rb-VEN1,    
              VISIBLE WVISIBLE
           MODIFY Screen1-Rb-VEN2,    
              VISIBLE WVISIBLE          

           IF MXREP-PALM = 1 AND MOB-PALM = 0     
      *       Réparation
              MOVE WVISIBLE TO WVISIBLE2
           ELSE
              MOVE 0        TO WVISIBLE2
           END-IF

           MODIFY Screen1-Fr-TEC,    
              VISIBLE WVISIBLE2
           MODIFY Screen1-Rb-TEC1,    
              VISIBLE WVISIBLE2
           MODIFY Screen1-Rb-TEC2,    
              VISIBLE WVISIBLE2          

           IF MOB-PALM = 0     
              MOVE WVISIBLE TO WVISIBLE2
           ELSE
              MOVE 0        TO WVISIBLE2
           END-IF
           MODIFY Screen1-Fr-POS,    
              VISIBLE WVISIBLE2
      *     MODIFY Screen1-La-POS,    
      *        VISIBLE WVISIBLE2
           MODIFY Screen1-Rb-POS1,    
              VISIBLE WVISIBLE2
           MODIFY Screen1-Rb-POS2,    
              VISIBLE WVISIBLE2          
           MODIFY Screen1-Rb-POS3,    
              VISIBLE WVISIBLE2   
       
           IF MOB-PALM = 0     
              MOVE WVISIBLE TO WVISIBLE2
           ELSE
              MOVE 0        TO WVISIBLE2
           END-IF
           MODIFY Screen1-Fr-DEP,   
              VISIBLE WVISIBLE2
           MODIFY Screen1-Rb-DEP1,   
              VISIBLE WVISIBLE2
           MODIFY Screen1-Rb-DEP2,   
              VISIBLE WVISIBLE2

           IF W-REDS = 0     
              MODIFY Screen1-St-1-Handle, 
                 TITLE "Sélectionner les critères, de préférence au moin
      -                "s un avec une étoile, puis cliquer sur le bouton
      -                " validant la sélection"
           ELSE
              MODIFY Screen1-St-1-Handle, 
                 TITLE "Consulter la liste, ou modifier les critères, ou 
      -                " sélectionner les colonnes, ou imprimer"
           .

       Redim-Sel.
      *---------*
      *     INQUIRE Screen1-Fr-S, 
      *        LINES IN W-LINP
      *     ADD W-DIF TO W-LINP
      *     MODIFY Screen1-Fr-S, 
      *        LINES W-LINP
           INQUIRE Screen1-Gd-1, 
              LINE  IN W-LIN, 
              LINES IN W-LINP
           ADD W-DIF TO W-LIN 
           SUBTRACT W-DIF FROM W-LINP
           MODIFY Screen1-Gd-1, 
              LINES W-LINP, 
              LINE  W-LIN
           INQUIRE Screen1-Fr-A, 
              LINE IN W-LINP
           ADD W-DIF TO W-LINP
           MODIFY Screen1-Fr-A, 
              LINE W-LINP
      *     INQUIRE Screen1-La-A, 
      *        LINE IN W-LIN
      *     ADD W-DIF TO W-LIN
      *     MODIFY Screen1-La-A, 
      *        LINE W-LIN
           INQUIRE Screen1-Cb-DSP, 
              LINE IN W-LIN
           ADD W-DIF TO W-LIN
           MODIFY Screen1-Cb-DSP, 
              LINE W-LIN
           INQUIRE Screen1-Cb-DAT, 
              LINE IN W-LIN
           ADD W-DIF TO W-LIN
           MODIFY Screen1-Cb-DAT, 
              LINE W-LIN
           INQUIRE Screen1-Cb-ART, 
              LINE IN W-LIN
           ADD W-DIF TO W-LIN
           MODIFY Screen1-Cb-ART, 
              LINE W-LIN
           INQUIRE Screen1-Cb-DES, 
              LINE IN W-LIN
           ADD W-DIF TO W-LIN
           MODIFY Screen1-Cb-DES, 
              LINE W-LIN
           INQUIRE Screen1-Cb-QTE, 
              LINE IN W-LIN
           ADD W-DIF TO W-LIN
           MODIFY Screen1-Cb-QTE, 
              LINE W-LIN
           INQUIRE Screen1-Cb-PRI, 
              LINE IN W-LIN
           ADD W-DIF TO W-LIN
           MODIFY Screen1-Cb-PRI, 
              LINE W-LIN
           INQUIRE Screen1-Cb-REM, 
              LINE IN W-LIN
           ADD W-DIF TO W-LIN
           MODIFY Screen1-Cb-REM, 
              LINE W-LIN
           INQUIRE Screen1-Cb-MAR, 
              LINE IN W-LIN
           ADD W-DIF TO W-LIN
           MODIFY Screen1-Cb-MAR, 
              LINE W-LIN
           INQUIRE Screen1-Cb-REP, 
              LINE IN W-LIN
           ADD W-DIF TO W-LIN
           MODIFY Screen1-Cb-REP, 
              LINE W-LIN
           INQUIRE Screen1-Cb-CLI, 
              LINE IN W-LIN
           ADD W-DIF TO W-LIN
           MODIFY Screen1-Cb-CLI, 
              LINE W-LIN
           INQUIRE Screen1-Cb-BON, 
              LINE IN W-LIN
           ADD W-DIF TO W-LIN
           MODIFY Screen1-Cb-BON, 
              LINE W-LIN
           INQUIRE Screen1-Cb-FAC, 
              LINE IN W-LIN
           ADD W-DIF TO W-LIN
           MODIFY Screen1-Cb-FAC, 
              LINE W-LIN
141210
           INQUIRE Screen1-Cb-FOU, 
              LINE IN W-LIN
           ADD W-DIF TO W-LIN
           MODIFY Screen1-Cb-FOU, 
              LINE W-LIN
141210
      
           INQUIRE Screen1-Cb-FAM, 
              LINE IN W-LIN
           ADD W-DIF TO W-LIN
           MODIFY Screen1-Cb-FAM, 
              LINE W-LIN
      
200613
           INQUIRE Screen1-Cb-NVC, 
              LINE IN W-LIN
           ADD W-DIF TO W-LIN
           MODIFY Screen1-Cb-NVC, 
              LINE W-LIN
200613
           INQUIRE Screen1-Cb-RFN, 
              LINE IN W-LIN
           ADD W-DIF TO W-LIN
           MODIFY Screen1-Cb-RFN, 
              LINE W-LIN

           INQUIRE Screen1-Cb-HT, 
              LINE IN W-LIN
           ADD W-DIF TO W-LIN
           MODIFY Screen1-Cb-HT, 
              LINE W-LIN
           INQUIRE Screen1-Cb-MAT, 
              LINE IN W-LIN
           ADD W-DIF TO W-LIN
           MODIFY Screen1-Cb-MAT, 
              LINE W-LIN
           INQUIRE Screen1-Cb-NAF, 
              LINE IN W-LIN
           ADD W-DIF TO W-LIN
           MODIFY Screen1-Cb-NAF, 
              LINE W-LIN
           INQUIRE Screen1-Cb-DEP, 
              LINE IN W-LIN
           ADD W-DIF TO W-LIN
           MODIFY Screen1-Cb-DEP, 
              LINE W-LIN
           INQUIRE Screen1-Cb-NVC, 
              LINE IN W-LIN
      
           INQUIRE Screen1-Cb-ISA, 
              LINE IN W-LIN
           ADD W-DIF TO W-LIN
           MODIFY Screen1-Cb-ISA, 
              LINE W-LIN
      
090415
           INQUIRE Screen1-Cb-CHC, 
              LINE IN W-LIN
           ADD W-DIF TO W-LIN
           MODIFY Screen1-Cb-CHC, 
              LINE W-LIN
090415
           ADD W-DIF TO W-LIN
           MODIFY Screen1-Cb-NVC, 
              LINE W-LIN
           INQUIRE Screen1-Cb-TOT, 
              LINE IN W-LIN
           ADD W-DIF TO W-LIN
           MODIFY Screen1-Cb-TOT, 
              LINE W-LIN
           INQUIRE Screen1-Pb-LancerA, 
              LINE IN W-LIN
           ADD W-DIF TO W-LIN
           MODIFY Screen1-Pb-LancerA, 
              LINE W-LIN
           INQUIRE Screen1-Pb-ReduireA, 
              LINE IN W-LIN
           ADD W-DIF TO W-LIN
           MODIFY Screen1-Pb-ReduireA, 
              LINE W-LIN
           .

       AdaptGrid.
      *---------*

           IF AFF-CLI-INT = 0     
              MOVE 0 TO AFF-NOM-INT
                        AFF-VIL-INT

           ELSE
              MOVE 1 TO AFF-NOM-INT
                        AFF-VIL-INT
           END-IF

           IF AFF-ART-INT = 0     
              MOVE 0 TO AFF-CRF-INT
           ELSE
              MOVE 1 TO AFF-CRF-INT
           END-IF

           IF W-SEL-TRI = 0     
      *       Sauvegarde clé tri
              MOVE 0 TO I-COL-TRI

              EVALUATE W-KEY-NUM
              WHEN W-COL-DAT

                 MOVE I-COL-DAT TO I-COL-TRI
              
              WHEN W-COL-DSP

                 MOVE I-COL-DSP TO I-COL-TRI

              WHEN W-COL-ART
                 
                 MOVE I-COL-ART TO I-COL-TRI

              WHEN W-COL-DES

                 MOVE I-COL-DES TO I-COL-TRI

100913        WHEN W-COL-MAR

                 MOVE I-COL-MAR TO I-COL-TRI

              WHEN W-COL-REP

                 MOVE I-COL-REP TO I-COL-TRI

              WHEN W-COL-CLI

                 MOVE I-COL-CLI TO I-COL-TRI

              WHEN W-COL-NOM

                 MOVE I-COL-NOM TO I-COL-TRI

              WHEN W-COL-BON

                 MOVE I-COL-BON TO I-COL-TRI

              WHEN W-COL-FAC

                 MOVE I-COL-FAC TO I-COL-TRI

              WHEN W-COL-MAT

                 MOVE I-COL-MAT TO I-COL-TRI

              WHEN W-COL-DEP

                 MOVE I-COL-DEP TO I-COL-TRI

              WHEN W-COL-FOU

                 MOVE I-COL-FOU TO I-COL-TRI

              WHEN W-COL-FAM

                 MOVE I-COL-FAM TO I-COL-TRI

090415        WHEN W-COL-CHC

                 MOVE I-COL-CHC TO I-COL-TRI

              END-EVALUATE

           END-IF

           INITIALIZE W-Display-Columns 
                      W-Data-Columns 
                      W-Align-Columns
171208                W-TAB-COLONNE

           MOVE 1 TO WPOS
           MOVE 0 TO W 
                     W-COL-DAT
                     W-COL-DSP
                     W-COL-ART
                     W-COL-DES
100913               W-COL-MAR
                     W-COL-REP
                     W-COL-CLI
                     W-COL-NOM
                     W-COL-BON
                     W-COL-FAC
                     W-COL-MAT
                     W-COL-DEP
                     W-COL-FOU
                     W-COL-FAM
                     W-COL-RFN
090415               W-COL-CHC
                     W-KEY-NUM

           PERFORM VARYING I FROM 1 BY 1 
              UNTIL I > Nombre-Colonnes

              IF ELT-AFF-Gd-1-Record(I) = 1 
                 ADD 1 TO W
                 MOVE WPOS                   TO WDi(W)
                 MOVE Elt-Pos-Gd-1-Record(I) to WDa(W)
                 MOVE Elt-Jus-Record(I)      to Wdl(W)
      *           ADD  Elt-Lon-Gd-1-Record(I) to WPOS
                 ADD  Elt-Lon-Gd-1-Record(I) 3 to WPOS
171208*          Stocke rang colonnes réelles    
171208           MOVE I TO W-COLONNE(W)
                 MODIFY Screen1-Gd-1, 
                    X = W, 
                    Y = 1, 
                    CELL-COLOR  W-Heading-Color, 
                    CELL-DATA   Elt-Tit-Record(I),
                    BITMAP      NULL, 
                    HIDDEN-DATA Message-Aide(I)
      *          Stocke colonnes réelles
                 IF I = I-COL-DAT
                    MOVE W TO W-COL-DAT

                    IF I = I-COL-TRI     
                       MOVE W TO W-KEY-NUM
                    END-IF

                 END-IF

                 IF I = I-COL-DSP
                    MOVE W TO W-COL-DSP

                    IF I = I-COL-TRI     
                       MOVE W TO W-KEY-NUM
                    END-IF

                 END-IF

                 IF I = I-COL-ART
                    MOVE W TO W-COL-ART

                    IF I = I-COL-TRI     
                       MOVE W TO W-KEY-NUM
                    END-IF

                 END-IF

                 IF I = I-COL-DES
                    MOVE W TO W-COL-DES

                    IF I = I-COL-TRI     
                       MOVE W TO W-KEY-NUM
                    END-IF

                 END-IF
100913
                 IF I = I-COL-MAR
                    MOVE W TO W-COL-MAR

                    IF I = I-COL-TRI     
                       MOVE W TO W-KEY-NUM
                    END-IF

                 END-IF
100913
                 IF I = I-COL-REP
                    MOVE W TO W-COL-REP

                    IF I = I-COL-TRI     
                       MOVE W TO W-KEY-NUM
                    END-IF

                 END-IF

                 IF I = I-COL-CLI
                    MOVE W TO W-COL-CLI

                    IF I = I-COL-TRI     
                       MOVE W TO W-KEY-NUM
                    END-IF

                 END-IF

                 IF I = I-COL-NOM
                    MOVE W TO W-COL-NOM

                    IF I = I-COL-TRI     
                       MOVE W TO W-KEY-NUM
                    END-IF

                 END-IF

                 IF I = I-COL-BON
                    MOVE W TO W-COL-BON

                    IF I = I-COL-TRI     
                       MOVE W TO W-KEY-NUM
                    END-IF

                 END-IF

                 IF I = I-COL-FAC 
                    MOVE W TO W-COL-FAC

                    IF I = I-COL-TRI     
                       MOVE W TO W-KEY-NUM
                    END-IF

                 END-IF

                 IF I = I-COL-MAT 
                    MOVE W TO W-COL-MAT

                    IF I = I-COL-TRI     
                       MOVE W TO W-KEY-NUM
                    END-IF

                 END-IF
      
                 IF I = I-COL-DEP
           
                    IF  AFF-DEP-INT = 1
                    AND AFF-NVC-INT = 0     
                    AND AFF-FOU-INT = 0     
                    AND AFF-FAM-INT = 0     
                    AND AFF-RFN-INT = 0     
090415              AND AFF-ISA-INT = 0     
090415              AND AFF-CHC-INT = 0     
      *                Bug Acucobol : renvoie la dernière colonne (non affichée !) quand on clique sur la colonne dépôt
301213*                 MOVE Nombre-Colonnes TO W-COL-DEP
301213                 SUBTRACT 1 FROM Nombre-Colonnes GIVING W-COL-DEP
                    ELSE
                       MOVE W TO W-COL-DEP
                    END-IF

                    IF I = I-COL-TRI     
                       MOVE W-COL-DEP TO W-KEY-NUM
                    END-IF

                 END-IF
      
      
                 IF I = I-COL-FOU

                    IF  AFF-FOU-INT = 1     
                    AND AFF-FAM-INT = 0     
                    AND AFF-RFN-INT = 0     
090415              AND AFF-ISA-INT = 0     
090415              AND AFF-CHC-INT = 0     
      *                Bug Acucobol : renvoie la dernière colonne (non affichée !) quand on clique sur la colonne 
090415*                 MOVE Nombre-Colonnes TO W-COL-FOU
090415                 SUBTRACT 1 FROM Nombre-Colonnes GIVING W-COL-FOU
                    ELSE
                       MOVE W TO W-COL-FOU
                    END-IF

                    IF I = I-COL-TRI
                       MOVE W-COL-FOU TO W-KEY-NUM
                    END-IF

                 END-IF

                 IF I = I-COL-FAM
      *              MOVE W TO W-COL-FAM
                    IF  AFF-FAM-INT = 1     
                    AND AFF-RFN-INT = 0     
090415              AND AFF-ISA-INT = 0     
090415              AND AFF-CHC-INT = 0     
      *                Bug Acucobol : renvoie la dernière colonne (non affichée !) quand on clique sur la colonne 
090415*                 MOVE Nombre-Colonnes TO W-COL-FAM
090415                 SUBTRACT 1 FROM Nombre-Colonnes GIVING W-COL-FAM
                    ELSE
                       MOVE W TO W-COL-FAM
                    END-IF

                    IF I = I-COL-TRI
                       MOVE W-COL-FAM TO W-KEY-NUM
                    END-IF

                 END-IF
090415
                 IF I = I-COL-CHC
                    SUBTRACT 1 FROM Nombre-Colonnes GIVING W-COL-CHC

                    IF I = I-COL-TRI
                       MOVE W-COL-CHC TO W-KEY-NUM
                    END-IF

                 END-IF
090415
                 MOVE I TO D-I
              END-IF

           END-PERFORM
      
           MOVE W TO W-NB-COLONNES-ACTUEL

           IF W < Nombre-Colonnes 
      
              PERFORM 
                 UNTIL W NOT < Nombre-Colonnes
      
                 ADD 1 TO W
                 MOVE Wdi(W - 1) TO WDi(W)
                 MOVE Wda(W - 1) to WDa(W)
                 MODIFY Screen1-Gd-1, 
                    X = W, 
                    Y = 1, 
                    CELL-COLOR  W-Heading-Color, 
                    CELL-DATA   Elt-Tit-Record(D-I),
                    BITMAP      NULL, 
                    HIDDEN-DATA Message-Aide(D-I)
               END-PERFORM
      
               ADD -1 TO W
           END-IF

090415     ADD WPOS W-NB-COLONNES-ACTUEL GIVING W-WIDTH
           MODIFY Screen1-Gd-1, 
             DATA-COLUMNS (WDa(1), WDa(2), WDa(3), WDa(4), WDa(5), 
                           WDa(6), WDa(7), WDa(8), WDa(9), WDa(10), 
                           WDa(11), WDa(12), WDa(13), WDa(14), WDa(15),
                           WDa(16), WDa(17), WDa(18), WDa(19), Wda(20), 
                           Wda(21), Wda(22), Wda(23), Wda(24), Wda(25), 
                           Wda(26), Wda(27), Wda(28),
090415                     Wda(29)),
             DISPLAY-COLUMNS (WDi(1), WDi(2), WDi(3), WDi(4), WDi(5), 
                           WDi(6), WDi(7), WDi(8), WDi(9), WDi(10), 
                           WDi(11), WDi(12), WDi(13), WDi(14), WDi(15),
                           WDi(16), WDi(17), WDi(18), WDi(19), WDi(20), 
                           WDi(21), WDi(22), WDi(23), WDi(24), WDi(25), 
                           WDi(26), WDi(27), WDi(28), 
090415                     WDi(29)),
             ALIGNMENT SPACE
      *       VIRTUAL-WIDTH WPOS
090415       VIRTUAL-WIDTH W-WIDTH

           PERFORM VARYING I FROM 1 BY 1
              UNTIL I > W-NB-COLONNES-ACTUEL

              MODIFY Screen1-Gd-1, 
                 ALIGNMENT WDl(I)
           END-PERFORM

           IF W-KEY-NUM = 0     
      *       Colonne de tri plus à l'écran : prend la première affichée
              EVALUATE 1
              WHEN AFF-DAT-INT 
                 MOVE W-COL-DAT TO W-KEY-NUM
              WHEN AFF-DSP-INT 
                 MOVE W-COL-DSP TO W-KEY-NUM
              WHEN AFF-ART-INT 
                 MOVE W-COL-ART TO W-KEY-NUM
              WHEN AFF-DES-INT 
                 MOVE W-COL-DES TO W-KEY-NUM
100913        WHEN AFF-MAR-INT
                 MOVE W-COL-MAR TO W-KEY-NUM
              WHEN AFF-REP-INT 
                 MOVE W-COL-REP TO W-KEY-NUM
              WHEN AFF-CLI-INT 
                 MOVE W-COL-CLI TO W-KEY-NUM
              WHEN AFF-NOM-INT
                 MOVE W-COL-NOM TO W-KEY-NUM
              WHEN AFF-BON-INT
                 MOVE W-COL-BON TO W-KEY-NUM
              WHEN AFF-FAC-INT
                 MOVE W-COL-FAC TO W-KEY-NUM
              WHEN AFF-MAT-INT
                 MOVE W-COL-MAT TO W-KEY-NUM
              WHEN AFF-DEP-INT
                 MOVE W-COL-DEP TO W-KEY-NUM
              WHEN AFF-FOU-INT
                 MOVE W-COL-FOU TO W-KEY-NUM
              WHEN AFF-FAM-INT
                 MOVE W-COL-FAM TO W-KEY-NUM
090415        WHEN AFF-CHC-INT
                 MOVE W-COL-CHC TO W-KEY-NUM
              END-EVALUATE

           END-IF
           .
  

       Test-Compo.
      *----------*
      *    Recherche si composition
           MOVE 0 TO W-TROUVE
           IF LIN-MHIV NOT = 0 EXIT PARAGRAPH
           END-IF
           MOVE CLE9-MHIV TO CLE9-MHIV2
           MOVE 1         TO LIN-MHIV2

           START MXHISVTE2 KEY NOT < CLE9-MHIV2 INVALID EXIT PARAGRAPH
           END-START
           PERFORM STAT
           READ MXHISVTE2 NEXT AT END EXIT PARAGRAPH
           END-READ
           PERFORM STAT

           IF  SV-AGE = AGE-MHIV2 
           AND SV-ORI = ORI-MHIV2 
           AND SV-BLO = BLO-MHIV2
           AND SV-LIG = LIG-MHIV2     
              MOVE 1 TO W-TROUVE
           END-IF
           .

      ******************************************************************
      *                 CREATION FICHIER TRI                           *
      ******************************************************************

       Creation-TRI.
      *------------*
           MOVE 1 TO ScreenPatienter-PB-Visible

           PERFORM Patienter-Debut

           PERFORM D-Creation-TRI THRU F-Creation-TRI

           PERFORM Patienter-Fin
           .

       D-Creation-Tri.
      *--------------*
           MODIFY Screen1-La-PB, VISIBLE 0
           CLOSE TRI
           OPEN OUTPUT TRI
           PERFORM STAT
           CLOSE TRI
           OPEN I-O TRI
           PERFORM STAT

           MOVE SPACE TO W-SEL 
                         W-SEL-IMP
           MOVE 0 TO W-NB-TRI

           EVALUATE NSA-INT 
           WHEN 1
              MOVE "Société" TO W-SEL
           WHEN 2 
      
              MOVE AGE-INT TO COD-MAGC 

              READ MXAGENCE

              PERFORM STAT
                    
              STRING "Ag." DELIMITED BY SIZE
                     " " delimited by size
                     ABR-MAGC  DELIMITED BY SIZE
                INTO W-SEL
           WHEN 3 
              STRING "Rg." DELIMITED BY SIZE
                     " " delimited by size
                     REG-INT   DELIMITED BY SIZE
                INTO W-SEL
      *       Recherche agences région
      **        PERFORM Rech-Agence
      
           WHEN 4
              MOVE "Plusieurs Ag." TO W-SEL
           WHEN 5
              MOVE AGE-INT TO COD-MAGC 

              READ MXAGENCE

              PERFORM STAT

              MOVE STC-MAGC TO W-STC
              STRING "Ag.si." DELIMITED BY SIZE
                     ABR-MAGC  DELIMITED BY SIZE
                INTO W-SEL
      *       Recherche agences société
      **        PERFORM Rech-Agence
      
           END-EVALUATE

      *----NSA
           EVALUATE NSA-INT
              WHEN 2
240311               IF CAA-PALM = 1 
240311                  MOVE AGS-MPAR TO AGE-INT
240311               ELSE
                        INQUIRE Screen1-Ef-AGE, VALUE AGE-INT
                     END-IF
           END-EVALUATE
           EVALUATE NSA-INT
              WHEN 1 COPY "../../mx/copy/NSA-Tab-Societe.cbl".
              WHEN 2 COPY "../../mx/copy/NSA-Tab-Agence.cbl".
           END-EVALUATE
      *----

           MOVE W-SEL TO W-PICX60

           IF DA1-INT = 0     
              STRING W-PICX60 DELIMITED BY "   "
                     ", jusqu'au" 
                     " " W-DATE2  DELIMITED BY SIZE
                INTO W-SEL
           ELSE
              STRING W-PICX60  DELIMITED BY "   "
                     ", du"
                     " " W-DATE1
                     " au" 
                     " " W-DATE2  DELIMITED BY SIZE
                INTO W-SEL
           END-IF
                    
           MOVE W-SEL TO W-PICX60
      D   STOP "DEBUG"
           IF  CLI-INT = 2     
      *       Plusieurs clients
              IF CDV-INT = 2     
                 CONTINUE
              ELSE

                 IF DIV-INT = 1     
                    MOVE LK-MCLI-M-COD(1) TO COD-MCLI

                    READ MXCLI KEY CLE6-MCLI 
                    INVALID
                       INITIALIZE ENR-MCLI
                    END-READ

                    PERFORM STAT

                    STRING "CDV" LK-MCLI-M-COD(1) " "              
                           RAI-MCLI         DELIMITED BY SIZE 
                      INTO W-SEL-IMP
                    STRING W-PICX60         DELIMITED BY "   "
                           ","             DELIMITED BY SIZE
                           " " delimited by size
                           W-SEL-IMP        DELIMITED BY SIZE 
                      INTO W-SEL
                 ELSE

                    IF LK-MCLI-M-NBSEL = 1     
                       MOVE LK-MCLI-M-COD(1) TO COD-MCLI

                       READ MXCLI KEY CLE6-MCLI 
                       INVALID
                          INITIALIZE ENR-MCLI
                       END-READ

                       PERFORM STAT

                       STRING "client" DELIMITED BY SIZE
                              " " delimited by size
                              LK-MCLI-M-COD(1)    DELIMITED BY SIZE
                              " "                 DELIMITED BY SIZE
                              RAI-MCLI            DELIMITED BY SIZE 
                         INTO W-SEL-IMP
                       STRING W-PICX60            DELIMITED BY "   "
                              ","                DELIMITED BY SIZE
                              " " delimited by size
                              W-SEL-IMP           DELIMITED BY "  "
                         INTO W-SEL
                    END-IF

                 END-IF

              END-IF

              PERFORM VARYING I-BOU FROM 1 BY 1
                 UNTIL I-BOU > LK-MCLI-M-NBSEL
                    OR ScreenPatienter-End = 1   

                 INITIALIZE ENR-MHIV
                 MOVE LK-MCLI-M-COD(I-BOU) TO CLI-MHIV

                 IF CDV-INT = 2     
                    MOVE LK-MCDV-L-COD TO CDV-MHIV
                 END-IF

                 IF DFA-INT = 0     
                    MOVE DA1-INT TO DSP-MHIV
                 END-IF

                 MOVE 0 TO W-EOF-MHIV

                 START MXHISVTE KEY >= CLE2-MHIV  
                 INVALID
                    MOVE 1 TO W-EOF-MHIV
                 END-START

                 PERFORM STAT

                 PERFORM LECT-MHIV
                    UNTIL W-EOF-MHIV = 1
                       OR ScreenPatienter-End = 1   

              END-PERFORM

           ELSE

              IF ART-INT = 2
                        OR 3     

                 IF ART-INT = 2     
      *             Plusieurs articles
                    IF LK-MART-M-NBSEL = 1     
                       MOVE LK-MART-M-COD(1) TO COD-MART
                       READ MXART
                       INVALID
                          MOVE ALL "*" TO DES-MART
                       END-READ

                       PERFORM STAT

                       STRING " " DELIMITED BY SIZE
                              LK-MART-M-COD(1)  DELIMITED BY "  "
                              " "
                              DES-MART          DELIMITED BY SIZE
                         INTO W-SEL-IMP
                       STRING W-PICX60          DELIMITED BY "   "
                              ","              DELIMITED BY SIZE
                              " " delimited by size
                              W-SEL-IMP         DELIMITED BY "   "
                         INTO W-SEL
                    END-IF

                    PERFORM VARYING I-BOU FROM 1 BY 1
                       UNTIL I-BOU > LK-MART-M-NBSEL

                       INITIALIZE ENR-MHIV
                       MOVE LK-MART-M-COD(I-BOU) TO ART-MHIV

                       IF LK-HIV-C-ART <> SPACE     
      *                   Recherche sur article -> 100 derniers

      *                   Recherche suivant
                          MOVE 0 TO W-EOF-MHIV
      *                    MOVE DA2-INT TO DSP-MHIV
                          MOVE 99999999 TO DSP-MHIV
                          START MXHISVTE KEY >= CLE3-MHIV 
                          INVALID
                             MOVE 1 TO W-EOF-MHIV
                          END-START

                          PERFORM STAT

                          IF W-EOF-MHIV = 0     
      *                      Lit le suivant, la prochaine lecture lira le dernier
                             READ MXHISVTE PREVIOUS
                             AT END
                                MOVE 1 TO W-EOF-MHIV
                             END-READ

                             PERFORM STAT

                          END-IF

                          IF W-EOF-MHIV = 1     
      *                      Pas de suivant -> recherche classique
                             MOVE SPACE TO LK-HIV-C-ART
                          END-IF

                       END-IF
                          
                       IF LK-HIV-C-ART = SPACE     
      *                   Recherche classique
                          MOVE 0 TO W-EOF-MHIV

                          IF DFA-INT = 0     
                             MOVE DA1-INT TO DSP-MHIV 
                          END-IF

                          START MXHISVTE KEY >= CLE3-MHIV  
                          INVALID
                             MOVE 1 TO W-EOF-MHIV
                          END-START

                          PERFORM STAT

                       END-IF

                       PERFORM LECT-MHIV
                          UNTIL W-EOF-MHIV = 1
                             OR ScreenPatienter-End = 1   

                    END-PERFORM

                 ELSE
      *             Une référence article divers
                    STRING "Pour l'article divers" DELIMITED BY SIZE
                           " " delimited by size
                           ADV-INT                  DELIMITED BY SIZE
                      INTO W-SEL-IMP
                    STRING W-PICX60                 DELIMITED BY "   "
                           ","                     DELIMITED BY SIZE
                           " " delimited by size
                           W-SEL-IMP                DELIMITED BY "  "
                      INTO W-SEL
                    INITIALIZE ENR-MHIV
                    MOVE ADV-INT TO ART-MHIV
                    MOVE 0 TO W-EOF-MHIV

                    IF DFA-INT = 0     
                       MOVE DA1-INT TO DSP-MHIV
                    END-IF
                    
                    START MXHISVTE KEY >= CLE3-MHIV  
                    INVALID
                       MOVE 1 TO W-EOF-MHIV
                    END-START

                    PERFORM STAT

                    PERFORM LECT-MHIV
                       UNTIL W-EOF-MHIV = 1
                          OR ScreenPatienter-End = 1   

                 END-IF

              ELSE      

      *                Sinon sur la date
                       INITIALIZE ENR-MHIV
                       MOVE 0 TO W-EOF-MHIV

                       IF DFA-INT = 0     
                          MOVE DA1-INT TO DSP-MHIV

                          START MXHISVTE KEY >= CLE7-MHIV  
                          INVALID
                             MOVE 1 TO W-EOF-MHIV
                          END-START
                 
                       ELSE
                          MOVE DA1-INT TO DAT-MHIV

                          START MXHISVTE KEY >= CLE8-MHIV  
                          INVALID
                             MOVE 1 TO W-EOF-MHIV
                          END-START

                       END-IF
                 
                       PERFORM STAT

                       PERFORM LECT-MHIV
                          UNTIL W-EOF-MHIV = 1
                             OR ScreenPatienter-End = 1   

                    END-IF

           END-IF
           .

       F-Creation-TRI.
      *--------------*
           IF ScreenPatienter-End = 1     
              MODIFY Screen1-La-PB, 
                 VISIBLE 1
              MOVE W-SEL-IMP TO W-PICX30

              IF LK-HIV-C-ART = SPACE     
      * enlevé par Nath sinon erreur memory quand on coupe 2 fois de suite
      *           MOVE "Traitement arrêté - Sélection incomplète" 
      *             TO ACU-MSG-1
      *           PERFORM MSG-INFO
                 STRING W-PICX30 DELIMITED BY SIZE
                        " : Traitement arrêté - Sélection incomplète"
                              DELIMITED BY SIZE
                   INTO W-SEL-IMP
                 MODIFY Screen1-La-Pb,
                    TITLE "Traitement arrêté - Sélection incomplète" 
              ELSE
                 STRING W-PICX30 DELIMITED BY SIZE
                        " : 100 derniers - Sélection incomplète"
                              DELIMITED BY SIZE
                   INTO W-SEL-IMP
                 MODIFY Screen1-La-Pb,
                    TITLE "100 derniers - Sélection incomplète" 
              END-IF

           ELSE
              MOVE 1 TO ScreenPatienter-End
           END-IF

           MODIFY Screen1-La-Sel,
              TITLE W-SEL
           .

      ******************************************************************
      *                      AFFICHAGE GRILLE                          *
      ******************************************************************
       Affiche-Grille.
      *--------------*
           MOVE 0 TO ScreenPatienter-PB-Visible

           PERFORM Patienter-Debut

           PERFORM D-Affiche-Grille THRU F-Affiche-Grille

           PERFORM Patienter-Fin

           PERFORM S-Affiche-Grille
           .

       D-Affiche-Grille.
      *----------------*
           MOVE 0 TO TOT-HT 
                     TOT-QTE
                     TOTFAM-HT
                     TOTFAM-QTE
                     W-NB-RUP
240918               TOT-MAR
240918               TOTFAM-MAR

           MOVE HIGH-VALUE TO SV-RUP

           IF W-REDS = 0     
      *       Cache les sélections et montre la grille

              PERFORM Screen1-Pb-ReduireS-Link

           END-IF

           MOVE W-Row-Low-Color TO Screen1-Gd-1-Row-Highlight-Color
      * Remise à zéro de la grille...
           MODIFY Screen1-Gd-1,
              RESET-GRID 1,
              VISIBLE    1

           PERFORM AdaptGrid 
      * Remplissage de la grille...
           MOVE 1 TO Screen1-Gd-1-Cursor-Y

           PERFORM START-TRI

           PERFORM 
              UNTIL W-EOF-TRI = 1
                 OR ScreenPatienter-End = 1  
 
              PERFORM Lect-TRI
                  
              IF AFF-TOT-INT = 1
              AND (    (     W-KEY-NUM = W-COL-ART 
                         AND ART-TRI <> SV-RUP )
                    OR (     W-KEY-NUM = W-COL-REP 
                         AND REP-TRI <> SV-RUP )
                    OR (     W-KEY-NUM = W-COL-CLI 
                         AND CLI-TRI <> SV-RUP ) 
                    OR (     W-KEY-NUM = W-COL-MAT 
                         AND MAT-TRI <> SV-RUP ) 
                    OR (     W-KEY-NUM = W-COL-DSP 
                         AND DSP-TRI(1:4) <> SV-RUP ) 
                    OR (     W-KEY-NUM = W-COL-DEP
                         AND DEP-TRI <> SV-RUP ) 
                    OR (     W-KEY-NUM = W-COL-FOU
                         AND FOU-TRI <> SV-RUP ) 
                    OR (     W-KEY-NUM = W-COL-FAM
                         AND FAM-TRI <> SV-RUP ) 
090415              OR (     W-KEY-NUM = W-COL-CHC
090415                   AND CHC-TRI <> SV-RUP ) 
                    OR W-EOF-TRI = 1 )
              AND (    AFF-QTE-INT = 1 
                    OR AFF-HT-INT  = 1 )     
      *          Rupture 
                 IF  SV-RUP <> HIGH-VALUE 
                 AND W-NB-RUP > 1 
                 AND SV-RUP <> SPACE     
      *             Affiche ligne total
                    MOVE SPACE TO Screen1-Gd-1-Record

                    EVALUATE W-KEY-NUM 
                    WHEN W-COL-ART 
                       MOVE SV-RUP TO Screen1-Gd-1-ART
                    WHEN W-COL-REP 
                       MOVE SV-RUP TO Screen1-Gd-1-REP
                    WHEN W-COL-CLI 
                       MOVE SV-RUP TO Screen1-Gd-1-CLI
                    WHEN W-COL-MAT
                       MOVE SV-RUP TO Screen1-Gd-1-MAT
                    WHEN W-COL-DSP
                       MOVE SV-RUP TO Screen1-Gd-1-DSP
                    WHEN W-COL-DEP
                       MOVE SV-RUP TO Screen1-Gd-1-DEP
                    WHEN W-COL-FOU
                       MOVE SV-RUP TO Screen1-Gd-1-FOU
                    WHEN W-COL-FAM
                       MOVE SV-RUP TO Screen1-Gd-1-FAM
090415              WHEN W-COL-CHC
                       MOVE SV-RUP TO Screen1-Gd-1-CHC
                    END-EVALUATE

                    IF AFF-QTE-INT = 1     

                       MOVE TOTFAM-QTE TO W-INT-DEC

                       IF W-DEC9 <> 0     
                          MOVE TOTFAM-QTE   TO W-PICSZ10VZZ
                          MOVE W-PICSZ10VZZ TO Screen1-Gd-1-QTE
                       ELSE
                          MOVE TOTFAM-QTE   TO W-PICSZ13
                          MOVE W-PICSZ13    TO Screen1-Gd-1-QTE
                       END-IF

                    END-IF

                    IF AFF-HT-INT = 1     
                       MOVE TOTFAM-HT    TO W-PICSZ10VZZ
                       MOVE W-PICSZ10VZZ TO Screen1-Gd-1-HT
                    END-IF
240918
                    IF  AFF-MAR-INT = 1
                    AND TOTFAM-HT <> 0 
                       COMPUTE PMB-LIG ROUNDED = ( 100 * TOTFAM-MAR )
                                               / TOTFAM-HT
                       MOVE PMB-LIG      TO W-PICSZ10VZZ
                       MOVE W-PICSZ10VZZ TO Screen1-Gd-1-MAR
                    END-IF
240918
                    MODIFY Screen1-Gd-1, 
                       RECORD-TO-ADD Screen1-Gd-1-Record

                    ADD 1 TO Screen1-Gd-1-Cursor-Y

                    MODIFY Screen1-Gd-1(Screen1-Gd-1-Cursor-Y), 
                       ROW-COLOR W-Row-High-Color

                 END-IF

                 EVALUATE W-KEY-NUM 
                 WHEN W-COL-ART 
                    MOVE ART-TRI TO SV-RUP 
                 WHEN W-COL-REP 
                    MOVE REP-TRI TO SV-RUP 
                 WHEN W-COL-CLI 
                    MOVE CLI-TRI TO SV-RUP 
                 WHEN W-COL-MAT
                    MOVE MAT-TRI TO SV-RUP 
                 WHEN W-COL-DSP
                    MOVE DSP-TRI(1:4) TO SV-RUP 
                 WHEN W-COL-DEP
                    MOVE DEP-TRI TO SV-RUP 
                 WHEN W-COL-FOU
                    MOVE FOU-TRI TO SV-RUP 
                 WHEN W-COL-FAM
                    MOVE FAM-TRI TO SV-RUP 
090415           WHEN W-COL-CHC
                    MOVE CHC-TRI TO SV-RUP 
                 END-EVALUATE

                 MOVE 0 TO TOTFAM-HT
                           TOTFAM-QTE
                           W-NB-RUP
240918                     TOTFAM-MAR
              END-IF

              IF W-EOF-TRI = 1     

                 EXIT PERFORM

              END-IF

              PERFORM Mep-Record
      *       Efface colonne non affichée sinon affichage incohérent...   
              IF AFF-DSP-INT = 0     
                 MOVE SPACE TO Screen1-Gd-1-DSP
              END-IF

              IF AFF-DAT-INT = 0     
                 MOVE SPACE TO Screen1-Gd-1-DAT
              END-IF

              IF AFF-ART-INT = 0     
                 MOVE SPACE TO Screen1-Gd-1-ART
              END-IF

              IF AFF-CRF-INT = 0     
                 MOVE SPACE TO Screen1-Gd-1-CRF
              END-IF

              IF AFF-DES-INT = 0     
                 MOVE SPACE TO Screen1-Gd-1-DES
              END-IF

              IF AFF-QTE-INT = 0     
                 MOVE SPACE TO Screen1-Gd-1-QTE
              END-IF

              IF AFF-PRI-INT = 0     
                 MOVE SPACE TO Screen1-Gd-1-PRI
              END-IF

              IF AFF-REM-INT = 0     
                 MOVE SPACE TO Screen1-Gd-1-REM
              END-IF

              IF AFF-MAR-INT = 0     
                 MOVE SPACE TO Screen1-Gd-1-MAR
              END-IF

              IF AFF-REP-INT = 0     
                 MOVE SPACE TO Screen1-Gd-1-REP
              END-IF

              IF AFF-ICC-INT = 0     
                 MOVE SPACE TO Screen1-Gd-1-ICC
              END-IF

              IF AFF-CLI-INT = 0     
                 MOVE SPACE TO Screen1-Gd-1-CLI
              END-IF

              IF AFF-NOM-INT = 0     
                 MOVE SPACE TO Screen1-Gd-1-NOM
              END-IF

              IF AFF-VIL-INT = 0     
                 MOVE SPACE TO Screen1-Gd-1-VIL
              END-IF

              IF AFF-AGE-INT = 0     
                 MOVE SPACE TO Screen1-Gd-1-AGE
              END-IF

              IF AFF-BON-INT = 0     
                 MOVE SPACE TO Screen1-Gd-1-BON
              END-IF

              IF AFF-FAC-INT = 0     
                 MOVE SPACE TO Screen1-Gd-1-FAC
              END-IF

              IF AFF-ORI-INT = 0     
                 MOVE SPACE TO Screen1-Gd-1-ORI
              END-IF

              IF AFF-MAT-INT = 0     
                 MOVE SPACE TO Screen1-Gd-1-MAT
              END-IF

              IF AFF-NAF-INT = 0     
                 MOVE SPACE TO Screen1-Gd-1-NAF
              END-IF

              IF AFF-DEP-INT = 0     
                 MOVE SPACE TO Screen1-Gd-1-DEP
              END-IF

              IF AFF-NVC-INT = 0     
                 MOVE SPACE TO Screen1-Gd-1-NVC
              END-IF
141210
              IF AFF-FOU-INT = 0     
                 MOVE SPACE TO Screen1-Gd-1-FOU
              END-IF
141210 
      
              IF AFF-FAM-INT = 0     
                 MOVE SPACE TO Screen1-Gd-1-FAM
              END-IF
       
              IF AFF-HT-INT = 0     
                 MOVE SPACE TO Screen1-Gd-1-HT
              END-IF

              IF AFF-RFN-INT = 0     
                 MOVE SPACE TO Screen1-Gd-1-RFN
              END-IF
      
              IF AFF-ISA-INT = 0 THEN
                 MOVE SPACE TO Screen1-Gd-1-ISA
              END-IF
      
090415
              IF AFF-CHC-INT = 0 THEN
                 MOVE SPACE TO Screen1-Gd-1-CHC
              END-IF
090415
              MODIFY Screen1-Gd-1, 
                 RECORD-TO-ADD Screen1-Gd-1-Record

              ADD 1 TO Screen1-Gd-1-Cursor-Y
                       W-NB-RUP

              MODIFY Screen1-Gd-1 (Screen1-Gd-1-Cursor-Y, 1)
                 HIDDEN-DATA CLE1-TRI

           END-PERFORM
      * Indique la clé sélectionnée...
           IF W-KEY-ORDER = "A"     

              IF W-COL-DAT NOT = 0 
                 MODIFY Screen1-Gd-1(1, W-COL-DAT), 
                    BITMAP TRIERAD10-JPG
              END-IF

              IF W-COL-DSP NOT = 0 
                 MODIFY Screen1-Gd-1(1, W-COL-DSP), 
                    BITMAP TRIERAD10-JPG
              END-IF

              IF W-COL-ART NOT = 0 
                 MODIFY Screen1-Gd-1(1, W-COL-ART), 
                    BITMAP TRIERAD10-JPG
              END-IF

              IF W-COL-DES NOT = 0 
                 MODIFY Screen1-Gd-1(1, W-COL-DES), 
                    BITMAP TRIERAD10-JPG
              END-IF
100913
              IF W-COL-MAR NOT = 0 
                 MODIFY Screen1-Gd-1(1, W-COL-MAR), 
                    BITMAP TRIERAD10-JPG
              END-IF
100913
              IF W-COL-REP NOT = 0 
                 MODIFY Screen1-Gd-1(1, W-COL-REP), 
                    BITMAP TRIERAD10-JPG
              END-IF

              IF W-COL-CLI NOT = 0 
                 MODIFY Screen1-Gd-1(1, W-COL-CLI), 
                    BITMAP TRIERAD10-JPG
              END-IF

              IF W-COL-NOM NOT = 0 
                 MODIFY Screen1-Gd-1(1, W-COL-NOM), 
                    BITMAP TRIERAD10-JPG
              END-IF

              IF W-COL-BON NOT = 0 
                 MODIFY Screen1-Gd-1(1, W-COL-BON), 
                    BITMAP TRIERAD10-JPG
              END-IF

              IF W-COL-FAC NOT = 0 
                 MODIFY Screen1-Gd-1(1, W-COL-FAC), 
                    BITMAP TRIERAD10-JPG
              END-IF

              IF W-COL-MAT NOT = 0 
                 MODIFY Screen1-Gd-1(1, W-COL-MAT), 
                    BITMAP TRIERAD10-JPG
              END-IF
      
              IF W-COL-DEP NOT = 0 
                 MODIFY Screen1-Gd-1(1, W-COL-DEP), 
                    BITMAP TRIERAD10-JPG
              END-IF
      
      
              IF W-COL-FOU NOT = 0 
                 MODIFY Screen1-Gd-1(1, W-COL-FOU), 
                    BITMAP TRIERAD10-JPG
              END-IF

              IF W-COL-FAM NOT = 0 
                 MODIFY Screen1-Gd-1(1, W-COL-FAM), 
                    BITMAP TRIERAD10-JPG
              END-IF
      
090415
              IF W-COL-CHC NOT = 0 
                 MODIFY Screen1-Gd-1(1, W-COL-CHC), 
                    BITMAP TRIERAD10-JPG
              END-IF
090415
              MODIFY Screen1-Gd-1(1, W-KEY-NUM),
                 BITMAP TRIERAE10-JPG
           ELSE
                                 
              IF W-COL-DAT NOT = 0 
                 MODIFY Screen1-Gd-1(1, W-COL-DAT), 
                    BITMAP TRIERDD10-JPG
              END-IF

              IF W-COL-DSP NOT = 0 
                 MODIFY Screen1-Gd-1(1, W-COL-DSP), 
                    BITMAP TRIERDD10-JPG
              END-IF

              IF W-COL-ART NOT = 0 
                 MODIFY Screen1-Gd-1(1, W-COL-ART), 
                    BITMAP TRIERDD10-JPG
              END-IF

              IF W-COL-DES NOT = 0 
                 MODIFY Screen1-Gd-1(1, W-COL-DES), 
                    BITMAP TRIERDD10-JPG
              END-IF
100913
              IF W-COL-MAR NOT = 0 
                 MODIFY Screen1-Gd-1(1, W-COL-MAR), 
                    BITMAP TRIERDD10-JPG
              END-IF
100913
              IF W-COL-REP NOT = 0 
                 MODIFY Screen1-Gd-1(1, W-COL-REP), 
                    BITMAP TRIERDD10-JPG
              END-IF

              IF W-COL-CLI NOT = 0 
                 MODIFY Screen1-Gd-1(1, W-COL-CLI), 
                    BITMAP TRIERDD10-JPG
              END-IF

              IF W-COL-NOM NOT = 0 
                 MODIFY Screen1-Gd-1(1, W-COL-NOM), 
                    BITMAP TRIERDD10-JPG
              END-IF

              IF W-COL-BON NOT = 0 
                 MODIFY Screen1-Gd-1(1, W-COL-BON), 
                    BITMAP TRIERDD10-JPG
              END-IF

              IF W-COL-FAC NOT = 0 
                 MODIFY Screen1-Gd-1(1, W-COL-FAC), 
                    BITMAP TRIERDD10-JPG
              END-IF

              IF W-COL-MAT NOT = 0 
                 MODIFY Screen1-Gd-1(1, W-COL-MAT), 
                    BITMAP TRIERDD10-JPG
              END-IF
      
              IF W-COL-DEP NOT = 0 
                 MODIFY Screen1-Gd-1(1, W-COL-DEP), 
                    BITMAP TRIERDD10-JPG
              END-IF
      
      
              IF W-COL-FOU NOT = 0 
                 MODIFY Screen1-Gd-1(1, W-COL-FOU), 
                    BITMAP TRIERDD10-JPG
              END-IF

              IF W-COL-FAM NOT = 0 
                 MODIFY Screen1-Gd-1(1, W-COL-FAM), 
                    BITMAP TRIERDD10-JPG
              END-IF
      
090415
              IF W-COL-CHC NOT = 0 
                 MODIFY Screen1-Gd-1(1, W-COL-CHC), 
                    BITMAP TRIERDD10-JPG
              END-IF
090415
              MODIFY Screen1-Gd-1(1, W-KEY-NUM),
                 BITMAP TRIERDE10-JPG
           END-IF

           MODIFY Screen1-Gd-1, 
              MASS-UPDATE 0

           MOVE SPACE TO Screen1-Gd-1-Record
           .

       F-Affiche-Grille.
      *----------------*
           MOVE 1 TO ScreenPatienter-End
           .

       S-Affiche-Grille.
      *----------------*
      * Positionnement du curseur sur la grille...
           MOVE 1 TO Event-Data-1 
           MOVE 2 TO Event-Data-2 
           MOVE 0 TO Screen1-Gd-1-Cursor-Y-Old
           
           MOVE SPACE TO Screen1-Gd-1-Record

           SUBTRACT 1 FROM Screen1-Gd-1-Cursor-Y GIVING W-NB-AFFI
           MOVE SPACES TO W-MSGNB
           STRING "Nombre de lignes = " W-NB-AFFI INTO W-MSGNB
           MODIFY Screen1-La-MSGNB title W-MSGNB

           IF TOT-QTE <> 0     
              MOVE TOT-QTE TO W-PICSZ8
260208                        W-INT-DEC
260208                        W-PICSZ8V2

260208        IF W-DEC9 = 0            

                 MODIFY Screen1-Ef-TOT-QTE, 
                    VALUE W-PICSZ8
260208        ELSE
260208           MODIFY Screen1-Ef-TOT-QTE, 
260208              VALUE W-PICSZ8V2
260208        END-IF

           ELSE
              MODIFY Screen1-Ef-TOT-QTE, 
                 VALUE SPACE
           END-IF

           MOVE SPACE TO W-PICX15

           IF TOT-HT <> 0     
              MOVE TOT-HT TO W-PICSZ10VZZ
              STRING W-PICSZ10VZZ DELIMITED BY SIZE
                     " "          DELIMITED BY SIZE
                     ABRD-MPAR    DELIMITED BY SIZE
                INTO W-PICX15
           END-IF

           MODIFY Screen1-Ef-TOT-HT, 
              VALUE W-PICX15

           IF W-NB-AFFI = 0     
              MOVE "Aucune vente sur cette période !" TO ACU-MSG-1

              PERFORM MSG-INFO

              MODIFY Screen1-Pb-LancerA, 
                 VISIBLE 0
              MODIFY Screen1-Pb-Imprimer, 
                 VISIBLE 0
              MODIFY Screen1-Pb-Preview, 
                 VISIBLE 0

              IF W-REDS = 1     
      *          Montre les sélections
                 PERFORM Screen1-Pb-ReduireS-Link

              END-IF

           ELSE
              MODIFY Screen1-Pb-LancerA, 
                 VISIBLE 1
              MODIFY Screen1-Pb-Imprimer, 
                 VISIBLE 1
              MODIFY Screen1-Pb-Preview, 
                 VISIBLE 1
           END-IF

           PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
           Modify Screen1-St-1-Handle title = ACU-MSG-1.
           .

       LECT-MHIV.
      *---------*

           PERFORM TEST-MHIV

           IF W-MHIV-OK = 0     

              EXIT PARAGRAPH

           END-IF
   
           INITIALIZE ENR-TRI

           MOVE CLE1-MHIV TO CLE1-TRI

           IF DSP-MHIV = 0     
              MOVE DAT-MHIV TO DSP-TRI
           ELSE
              MOVE DSP-MHIV TO DSP-TRI
           END-IF

           MOVE DAT-MHIV TO DAT-TRI
           MOVE ART-MHIV TO ART-TRI

           IF ART-MHIV (1:4) NUMERIC     
      *       Article divers
              MOVE DES-MHIV TO DES-TRI
              MOVE ART-MHIV (1:4) TO FAM-TRI
              MOVE FOU-MHIV TO FOU-TRI
           ELSE

              IF ART-MHIV <> COD-MART     
                 MOVE ART-MHIV TO COD-MART

                 PERFORM LECT-MART

              END-IF
              
              IF  MOD-MART = 1
              AND DES-MHIV <> SPACE     
                 MOVE DES-MHIV TO DES-TRI
              ELSE
              
                 MOVE DES-MART TO DES-TRI
              END-IF

      
              MOVE FOU-MART TO FOU-TRI

              MOVE CLE4-MART TO FAM-TRI
      
              MOVE RFN-MART TO RFN-TRI

           END-IF

           MOVE REP-MHIV TO REP-TRI
           MOVE CLI-MHIV  TO CLI-TRI
           MOVE CDV-MHIV  TO CDV-TRI
           MOVE PCI-MHIV  TO PCI-TRI
           MOVE DEP-MHIV  TO DEP-TRI

           IF ICC-MHIV = 0     
      *       Client
              MOVE CLI-MHIV TO CLI-TRI

              IF CLI-MHIV <> 0     
              
                 IF COD-MCLI <> CLI-MHIV     
                    MOVE CLI-MHIV TO COD-MCLI

                    READ MXCLI KEY CLE6-MCLI 
                    INVALID 
                       MOVE ALL "*" TO RAI-MCLI
                    END-READ

                    PERFORM STAT

                 END-IF

                 MOVE RAI-MCLI TO NOM-TRI
                 MOVE VIL-MCLI TO VIL-TRI
              END-IF

              IF ORI-MHIV = "K"     
                 MOVE "Mouvement de Stock" TO NOM-TRI
                 MOVE LIBSTO-MHIV TO VIL-TRI
              END-IF

              IF ORI-MHIV = "H" 
                         OR "C"     
                 MOVE SPACE TO NOM-TRI
                 IF ORI-MHIV = "H"     
                    STRING "Habillage" DELIMITED BY SIZE
                      INTO NOM-TRI
                 ELSE
                    STRING "Achat /Mat." DELIMITED BY SIZE
                      INTO NOM-TRI
                 END-IF

              END-IF

              IF ORI-MHIV = "i"      
                 MOVE "Ajustement d'Inventaire" TO NOM-TRI
              END-IF

              IF ORI-MHIV = "k"     

                 IF QTE-MHIV NOT < 0     
                    MOVE "Assemblage Kit"    TO NOM-TRI
                 ELSE 
                    MOVE "Désassemblage Kit" TO NOM-TRI
                 END-IF

              END-IF

              IF ORI-MHIV = "T" OR "t"     
                 MOVE ATR-MHIV TO COD-MAGC
                 READ MXAGENCE
                 PERFORM STAT
                 MOVE SPACE TO Screen1-Gd-1-CLI  NOM-TRI VIL-TRI
                 STRING "Transfert à l'agence" 
                        " " 
                        ATR-MHIV
                        " " 
                        ABR-MAGC  DELIMITED BY SIZE 
                   INTO NOM-TRI
                 MOVE VIL-MAGC TO VIL-TRI
              END-IF

              IF  ORI-MHIV = "T" 
              AND ACA-MHIV = 1     
                 MOVE SPACE TO Screen1-Gd-1-CLI
                 STRING "Transfert à la Loc/Ag" 
                        " " 
                        ATR-MHIV
                        " " 
                        ABR-MAGC DELIMITED BY SIZE 
                   INTO NOM-TRI
              END-IF

           ELSE 
      *       Cession
              IF PCI-MHIV NOT = 0     
                 MOVE PCI-MHIV TO CLI-TRI
              ELSE 
                 MOVE CLI-MHIV TO CLI-TRI
              END-IF

              MOVE "Cession interne" TO NOM-TRI
 
              IF CLL-MHIV <> 0 
                 MOVE CLL-MHIV TO COD-MCLI
                 READ MXCLI KEY CLE6-MCLI 
                    INVALID 
                       MOVE ALL " " TO RAI-MCLI
                 END-READ
                PERFORM STAT
                IF RAI-MCLI <> SPACE 
                   MOVE SPACE TO NOM-TRI
                   STRING "CI/" RAI-MCLI DELIMITED BY "   "
                   INTO NOM-TRI
                END-IF
             END-IF
 
           END-IF

           MOVE FAC-MHIV  TO FAC-TRI

           if isq-mhiv = 1 
              move pub-mhiv to mcu-mhiv
           end-if
           if pze-mhiv = "E" or "G" MOVE 0 TO pub-mhiv mcu-mhiv
           end-if

           IF  ( IGA-MHIV = SPACE 
                       OR "0" 
                       OR "l" ) 
           AND ( PUB-MHIV NOT = 0 )     
              IF ISQ-MHIV NOT = 1
                 IF UPR-MHIV = 0     
                    COMPUTE W-MAR  ROUNDED = MCU-MHIV * QTE-MHIV
                 ELSE 
                    COMPUTE W-MAR  ROUNDED = MCU-MHIV * QTE-MHIV 
                                           / UPR-MHIV
                 END-IF
              ELSE
                 IF QTE-MHIV = -1 THEN
      *             Avoir
                    COMPUTE W-MAR = - MCU-MHIV           
                 ELSE
                     compute w-mar rounded = pub-mhiv * 1      | marge = CA si régul iem eev-e
                 END-IF
              END-IF

              IF ISQ-MHIV NOT = 1

                 IF UPR-MHIV = 0     
                    COMPUTE W-PUB  ROUNDED = PUB-MHIV * QTE-MHIV
                 ELSE 
                    COMPUTE W-PUB  ROUNDED = PUB-MHIV * QTE-MHIV 
                                           / UPR-MHIV
                 END-IF

              ELSE
                 IF QTE-MHIV = -1 THEN
      *             Avoir
                    COMPUTE W-PUB = - PUB-MHIV           
                 ELSE
                    MOVE PUB-MHIV TO W-PUB           
                 END-IF
              END-IF
150519
           ELSE 
150519*        MOVE ZERO TO PMB-LIG
150519        MOVE ZERO TO W-MAR
                           W-PUB
           END-IF

      *    Idem eev-e
           if isq-mhiv = 1
           and qte-mhiv <> -1
              MOVE 100 TO MAR-TRI   | marge = CA si régul
           ELSE
      *       Calcul signe % marge / signes qté prix et marge
              IF W-PUB = 0 THEN
                 MOVE 0 TO MAR-TRI
              ELSE
                 COMPUTE MAR-TRI ROUNDED = W-MAR / W-PUB * 100
              END-IF

           END-IF
           ADD 1000 MAR-TRI GIVING TMA-TRI | clé tri / marge

           WRITE ENR-TRI
           INVALID
              MOVE "Erreur écriture TRI" TO ACU-MSG-1
              MOVE CLE1-TRI              TO ACU-MSG-2

              PERFORM MSG-ERREUR

              MOVE 0 TO W-OK

           END-WRITE

           PERFORM STAT

           ADD 1 TO W-NB-TRI

           IF  LK-HIV-C-ART <> SPACE
           AND W-NB-TRI = 100     
      *       Fin lecture 100 derniers
              MOVE 1 TO ScreenPatienter-End
           END-IF
           .

       TEST-MHIV.
      *---------*
           MOVE 0 TO W-MHIV-OK

           IF LK-HIV-C-ART <> SPACE     
      *       100 derniers : lit par date décroissante
              READ MXHISVTE PREVIOUS
              AT END
                 MOVE 1 TO W-EOF-MHIV
                 EXIT PARAGRAPH
              END-READ
           ELSE
              READ MXHISVTE NEXT
              AT END
                 MOVE 1 TO W-EOF-MHIV
                 EXIT PARAGRAPH
              END-READ
           END-IF
           PERFORM STAT
           IF ORI-MHIV = "U" EXIT PARAGRAPH END-IF    | Regul Automatique

           IF (     CLI-INT = 2 
                AND (    CLI-MHIV <> LK-MCLI-M-COD(I-BOU)
                      OR (     CDV-INT = 2 
                           AND (     CDV-MHIV <> LK-MCDV-L-COD 
                                 OR  (     DSP-MHIV > DA2-INT
                                       AND DFA-INT = 0 ) ) ) ) )
           OR (     ART-INT = 2 
                AND CLI-INT <> 2
                AND (    ART-MHIV <> LK-MART-M-COD(I-BOU)
                      OR (     LK-HIV-C-ART = SPACE 
                           AND DSP-MHIV > DA2-INT 
                           AND DFA-INT = 0 ) 
                      OR (     LK-HIV-C-ART <> SPACE 
                           AND DSP-MHIV < DA1-INT  
                           AND DFA-INT = 0 ) ) )
           OR (     ART-INT = 3
                AND CLI-INT <> 2
                AND (    ART-MHIV <> ADV-INT
                      OR (     DSP-MHIV > DA2-INT
                           AND DFA-INT = 0 ) ) ) 
           OR (     CLI-INT <> 2 
261207*          AND ART-INT = 1
261207          AND ART-INT <> 2
261207                  AND <> 3
                AND VEN-INT = 1
                AND POS-INT = 1 
                AND (    (     DSP-MHIV > DA2-INT 
                           AND DFA-INT = 0 )
                      OR (     DAT-MHIV > DA2-INT 
                           AND DFA-INT = 1 ) ) )     

              MOVE 1 TO W-EOF-MHIV
         
              EXIT PARAGRAPH

           END-IF
           

061011
           IF ICC-MHIV = 0 AND (RET-INT = 3 OR 1)
           AND LCO-MPAR = 1 AND ICC-MHIV = 0
           AND CLI-MHIV <> 0
               MOVE CLI-MHIV TO COD-MCLI
               READ MXCLI KEY CLE6-MCLI INVALID 
                       MOVE 0 TO IAG-MCLI
               END-READ
               PERFORM STAT
               IF IAG-MCLI = 1 MOVE 1 TO IVR-MHIV
               END-IF
           END-IF


061011

           IF (     (    DSP-MHIV < DA1-INT 
                      OR DSP-MHIV > DA2-INT )
                 AND DFA-INT = 0 )
           OR (     (    DAT-MHIV < DA1-INT 
                      OR DAT-MHIV > DA2-INT )
                 AND DFA-INT = 1 )
           OR ( AFF-INT <> SPACE 
                     AND <> NAF-MHIV )
           OR ( LOT-INT <> SPACE 
                     AND <> LOT-MHIV )
           OR (     ( ORI-MHIV = "D"
                              OR "J" )
                AND WMODD <> "D" )
           OR (     ORI-MHIV = "M"
                AND WMODM <> "M" )
           OR (     ( ORI-MHIV = "S"
                              OR "I"
                              OR "A"
                              OR "L" )
                AND WMODL <> "L" )
           OR (     ( ORI-MHIV = "R"
                              OR "r" )
                AND WMODR <> "R" )
           OR (     CLI-INT = 2
                AND (    ( ORI-MHIV = "T"
                                   OR "t" )
                      OR ICC-MHIV <> 0 ) )
           OR (     CLI-INT = 3 
                AND ICC-MHIV = 0 )
           OR (     POS-INT = 3 
                AND ICC-MHIV <> 0 )
      *--- Les composants d'un article composé ne sont affichés que
      *    si la consultation est par article
           OR (     (CLI-INT NOT = 1
                OR ART-INT NOT = 2)
                AND LIN-MHIV <> 0 )
           OR (     LIV-INT = 2 
                AND CHC-MHIV <> LK-MCHC-L-ORD )
           OR (     RET-INT = 1 
                AND IVR-MHIV = 1 )
           OR (     RET-INT = 3 
                AND IVR-MHIV <> 1 )
           OR (     SOR-INT = 1 
                AND ( ORI-MHIV = "T"
                              OR "t" ) ) 
120111     OR (     AVO-INT = 1 
120111          AND (QTE-MHIV >= 0 OR ISQ-MHIV = 1))
211112     OR (     INT-INT = 1 
211112          AND ( ORI-MHIV = "i" 
                              OR "K" 
060313                        OR "k" 
060313                        OR "H" ) )

              EXIT PARAGRAPH

           END-IF

240111** on ne prend pas les retours de pièces si on ne veut que les avoirs
      *     IF AVO-INT = 1 AND ORI-MHIV = "R"
      *        MOVE AGE-MHIV TO AGE-MOTL
      *        MOVE 1        TO TYB-MOTL
      *        MOVE BON-MHIV TO BON-MOTL
      *        MOVE LIG-MHIV TO LIG-MOTL
      *        MOVE "R"      TO TYL-MOTL
      *        READ MXOTL NOT INVALID EXIT PARAGRAPH
      *        END-READ
      *        PERFORM STAT
      *     END-IF

      *----NSA
           MOVE 0 TO TNSA-RAGE
           PERFORM VARYING TNSA-IAGE FROM 1 BY 1
           UNTIL TNSA-IAGE > TNSA-NAGE
              OR TNSA-AGE(TNSA-IAGE) = SPACE
              OR TNSA-RAGE = 1
              IF TNSA-AGE(TNSA-IAGE) = AGE-MHIV     
                 MOVE 1 TO TNSA-RAGE
              END-IF
           END-PERFORM   
           IF TNSA-RAGE = 0     
              EXIT PARAGRAPH
           END-IF
      *----     

           IF  CLI-INT = 2 
           AND ART-INT = 2     
      *       Client sélectionné -> teste article
              MOVE 0 TO W-TROUVE

              PERFORM VARYING I FROM 1 BY 1
                 UNTIL I > LK-MART-M-NBSEL 

                 IF ART-MHIV = LK-MART-M-COD (I)     
                    MOVE 1 TO W-TROUVE
                    EXIT PERFORM
                 END-IF

              END-PERFORM

              IF W-TROUVE = 0     

                 EXIT PARAGRAPH

              END-IF

           END-IF
      

           IF  ADI-INT = 0
           AND ART-MHIV(1:4) NUMERIC THEN
              EXIT PARAGRAPH
           END-IF

           IF (    AOR-INT = 0     
                OR AAD-INT = 0
                OR AOC-INT = 0 )
           AND ART-MHIV(1:4) NOT NUMERIC THEN
      *       Teste article
              IF ART-MHIV <> COD-MART     
                 MOVE ART-MHIV TO COD-MART

                 PERFORM LECT-MART

              END-IF

              IF (     AOR-INT  = 0
                   AND NAT-MART = 0 )
              OR (     AAD-INT  = 0
                   AND NAT-MART = 1 )
              OR (     AOC-INT  = 0
                   AND NAT-MART = 2 ) THEN
                 EXIT PARAGRAPH
              END-IF

           END-IF
030212              
210212
           IF ART-INT = 6 THEN
      *       Fournisseur
              IF ART-MHIV(1:4) NUMERIC     
                 MOVE FOU-MHIV TO FOU-MART
              ELSE
070814
                 IF ART-MHIV <> COD-MART     
                    MOVE ART-MHIV TO COD-MART
                    PERFORM LECT-MART
                 END-IF

070814        END-IF

              IF FOU-MART <> FOU3-INT THEN
                 EXIT PARAGRAPH
              END-IF

           END-IF
      
           MOVE 1 TO W-MHIV-OK
           .

       Start-TRI.
      *---------*
           INITIALIZE ENR-TRI
           MOVE 0 TO W-EOF-TRI

           EVALUATE W-KEY-NUM
           WHEN W-COL-DAT


              IF W-KEY-ORDER = "A"
              OR w-IMPRIME = 1     
                 START TRI KEY >= CLE2-TRI
                 INVALID 

                    MOVE 1 TO W-EOF-TRI
                 END-START

              ELSE
                 MOVE HIGH-VALUE TO ENR-TRI

                 START TRI KEY <= CLE2-TRI
                 INVALID 
                    MOVE 1 TO W-EOF-TRI
                 END-START

              END-IF

              MOVE I-COL-DAT TO I-COL-TRI
              
           WHEN W-COL-DSP

              IF W-KEY-ORDER = "A"
              OR w-IMPRIME = 1     
                 START TRI KEY >= CLE3-TRI
                 INVALID 
                    MOVE 1 TO W-EOF-TRI
                 END-START

              ELSE
                 MOVE HIGH-VALUE TO ENR-TRI

                 START TRI KEY <= CLE3-TRI
                 INVALID 
                    MOVE 1 TO W-EOF-TRI
                 END-START

               END-IF

              MOVE I-COL-DSP TO I-COL-TRI

           WHEN W-COL-ART

              IF W-KEY-ORDER = "A"
              OR w-IMPRIME = 1     
                 START TRI KEY >= CLE4-TRI
                 INVALID 
                    MOVE 1 TO W-EOF-TRI
                 END-START

              ELSE
                 MOVE HIGH-VALUE TO ENR-TRI

                 START TRI KEY <= CLE4-TRI
                 INVALID 
                    MOVE 1 TO W-EOF-TRI
                 END-START

               END-IF

              MOVE I-COL-ART TO I-COL-TRI

           WHEN W-COL-DES

              IF W-KEY-ORDER = "A"
              OR w-IMPRIME = 1     
                 START TRI KEY >= CLE5-TRI
                 INVALID 
                    MOVE 1 TO W-EOF-TRI
                 END-START

              ELSE
                 MOVE HIGH-VALUE TO ENR-TRI

                 START TRI KEY <= CLE5-TRI
                 INVALID 
                    MOVE 1 TO W-EOF-TRI
                 END-START

               END-IF

              MOVE I-COL-DES TO I-COL-TRI

           WHEN W-COL-REP

              IF W-KEY-ORDER = "A"
              OR w-IMPRIME = 1     
                 START TRI KEY >= CLE6-TRI
                 INVALID 
                    MOVE 1 TO W-EOF-TRI
                 END-START

              ELSE
                 MOVE HIGH-VALUE TO ENR-TRI

                 START TRI KEY <= CLE6-TRI
                 INVALID 
                    MOVE 1 TO W-EOF-TRI
                 END-START

              END-IF

              MOVE I-COL-REP TO I-COL-TRI

           WHEN W-COL-CLI

              IF W-KEY-ORDER = "A"
              OR w-IMPRIME = 1     
                 START TRI KEY >= CLE7-TRI
                 INVALID 
                    MOVE 1 TO W-EOF-TRI
                 END-START

              ELSE
                 MOVE HIGH-VALUE TO ENR-TRI

                 START TRI KEY <= CLE7-TRI
                 INVALID 
                    MOVE 1 TO W-EOF-TRI
                 END-START

              END-IF

              MOVE I-COL-CLI TO I-COL-TRI

           WHEN W-COL-NOM

              IF W-KEY-ORDER = "A"
              OR w-IMPRIME = 1     
                 START TRI KEY >= CLE8-TRI
                 INVALID 
                    MOVE 1 TO W-EOF-TRI
                 END-START

              ELSE
                 MOVE HIGH-VALUE TO ENR-TRI

                 START TRI KEY <= CLE8-TRI
                 INVALID 
                    MOVE 1 TO W-EOF-TRI
                 END-START

              END-IF

              MOVE I-COL-NOM TO I-COL-TRI

           WHEN W-COL-BON

              IF W-KEY-ORDER = "A"
              OR w-IMPRIME = 1     
                 START TRI KEY >= CLE9-TRI
                 INVALID 
                    MOVE 1 TO W-EOF-TRI
                 END-START

              ELSE
                 MOVE HIGH-VALUE TO ENR-TRI

                 START TRI KEY <= CLE9-TRI
                 INVALID 
                    MOVE 1 TO W-EOF-TRI
                 END-START

               END-IF

              MOVE I-COL-BON TO I-COL-TRI

           WHEN W-COL-FAC

              IF W-KEY-ORDER = "A"
              OR w-IMPRIME = 1     
                 START TRI KEY >= CLE10-TRI
                 INVALID 
                    MOVE 1 TO W-EOF-TRI
                 END-START

              ELSE
                 MOVE HIGH-VALUE TO ENR-TRI

                 START TRI KEY <= CLE10-TRI
                 INVALID 
                    MOVE 1 TO W-EOF-TRI
                 END-START

              END-IF

              MOVE I-COL-FAC TO I-COL-TRI

           WHEN W-COL-MAT

              IF W-KEY-ORDER = "A"
              OR w-IMPRIME = 1     
                 START TRI KEY >= CLE12-TRI
                 INVALID 
                    MOVE 1 TO W-EOF-TRI
                 END-START

              ELSE
                 MOVE HIGH-VALUE TO ENR-TRI

                 START TRI KEY <= CLE12-TRI
                 INVALID 
                    MOVE 1 TO W-EOF-TRI
                 END-START

              END-IF

              MOVE I-COL-MAT TO I-COL-TRI

           WHEN W-COL-DEP

              IF W-KEY-ORDER = "A"
              OR w-IMPRIME = 1     
                 START TRI KEY >= CLE13-TRI
                 INVALID 
                    MOVE 1 TO W-EOF-TRI
                 END-START

              ELSE
                 MOVE HIGH-VALUE TO ENR-TRI

                 START TRI KEY <= CLE13-TRI
                 INVALID 
                    MOVE 1 TO W-EOF-TRI
                 END-START

              END-IF

              MOVE I-COL-DEP TO I-COL-TRI

           WHEN W-COL-FOU

              IF W-KEY-ORDER = "A"
              OR w-IMPRIME = 1     
                 START TRI KEY >= CLE14-TRI
                 INVALID 
                    MOVE 1 TO W-EOF-TRI
                 END-START

              ELSE
                 MOVE HIGH-VALUE TO ENR-TRI

                 START TRI KEY <= CLE14-TRI
                 INVALID 
                    MOVE 1 TO W-EOF-TRI
                 END-START

              END-IF

              MOVE I-COL-FOU TO I-COL-TRI

           WHEN W-COL-FAM

              IF W-KEY-ORDER = "A"
              OR w-IMPRIME = 1     
                 START TRI KEY >= CLE15-TRI
                 INVALID 
                    MOVE 1 TO W-EOF-TRI
                 END-START

              ELSE
                 MOVE HIGH-VALUE TO ENR-TRI

                 START TRI KEY <= CLE15-TRI
                 INVALID 
                    MOVE 1 TO W-EOF-TRI
                 END-START

              END-IF

              MOVE I-COL-FAM TO I-COL-TRI

10091      WHEN W-COL-MAR

              IF W-KEY-ORDER = "A"
              OR w-IMPRIME = 1     
                 START TRI KEY >= CLE16-TRI
                 INVALID 
                    MOVE 1 TO W-EOF-TRI
                 END-START

              ELSE
                 MOVE HIGH-VALUE TO ENR-TRI

                 START TRI KEY <= CLE16-TRI
                 INVALID 
                    MOVE 1 TO W-EOF-TRI
                 END-START

              END-IF

              MOVE I-COL-MAR TO I-COL-TRI

090415     WHEN W-COL-CHC

              IF W-KEY-ORDER = "A"
              OR w-IMPRIME = 1     
                 START TRI KEY >= CLE17-TRI
                 INVALID 
                    MOVE 1 TO W-EOF-TRI
                 END-START

              ELSE
                 MOVE HIGH-VALUE TO ENR-TRI

                 START TRI KEY <= CLE17-TRI
                 INVALID 
                    MOVE 1 TO W-EOF-TRI
                 END-START

              END-IF

              MOVE I-COL-CHC TO I-COL-TRI

           END-EVALUATE

           PERFORM STAT
           .

       Lect-TRI.
      *----------*
           IF W-KEY-ORDER = "A" 
           OR W-IMPRIME = 1     

              READ TRI NEXT 
              END 
                 MOVE 1 TO W-EOF-TRI 

                 EXIT PARAGRAPH

              END-READ

           ELSE

              READ TRI PREVIOUS 
              END 
                 MOVE 1 TO W-EOF-TRI 

                 EXIT PARAGRAPH

              END-READ

           END-IF
               
           PERFORM STAT
      *    Récupère enr MXHISVTE
           MOVE CLE1-TRI TO CLE1-MHIV

           READ MXHISVTE

           PERFORM STAT
           .

       Mep-Record.
      *----------*
           MOVE SPACE TO Screen1-Gd-1-Record
150519*    Idem eev-e
           if pze-mhiv = "E" or "G" MOVE 0 TO pub-mhiv mcu-mhiv
           end-if
150519
291107     IF ISQ-MHIV NOT = 1
              ADD QTE-MHIV TO TOT-QTE
                           TOTFAM-QTE
270614
              IF UPR-MHIV = 0     
                 COMPUTE W-PUB  ROUNDED = PUB-MHIV * QTE-MHIV
              ELSE 

                 COMPUTE W-PUB  ROUNDED = PUB-MHIV * QTE-MHIV / UPR-MHIV
              END-IF
270614
           ELSE
140909        MOVE PUB-MHIV TO MCU-MHIV
270614
              IF QTE-MHIV = -1 THEN
      *          Avoir
                 COMPUTE W-PUB = - PUB-MHIV           
              ELSE
                 MOVE PUB-MHIV TO W-PUB           
              END-IF
270614
291107     END-IF
240918
           IF  ( IGA-MHIV = SPACE 
                       OR "0" 
                       OR "l" ) 
           AND ( PUB-MHIV NOT = 0 )     

              IF ISQ-MHIV NOT = 1
                 IF UPR-MHIV = 0     
                    COMPUTE W-MAR  ROUNDED = MCU-MHIV * QTE-MHIV
                 ELSE 
                    COMPUTE W-MAR  ROUNDED = MCU-MHIV * QTE-MHIV 
                                           / UPR-MHIV
                 END-IF
              ELSE
                 IF QTE-MHIV = -1 THEN
      *             Avoir
                    COMPUTE W-MAR = - MCU-MHIV           
                 ELSE
150519*              MOVE MCU-MHIV TO W-MAR           
150519               compute w-mar rounded = pub-mhiv * 1      | marge = CA si régul iem eev-e
                 END-IF
              END-IF
           ELSE 
              MOVE ZERO TO W-MAR
           END-IF
240918
270614*     IF UPR-MHIV = 0     
      *        COMPUTE W-PUB  ROUNDED = PUB-MHIV * QTE-MHIV
      *     ELSE 
      *
      *        COMPUTE W-PUB  ROUNDED = PUB-MHIV * QTE-MHIV / UPR-MHIV
      *     END-IF

200412*    Suite pb Alabeurthe gratuit avec prix 
           IF PZE-MHIV = "G"     
              MOVE "Gratuit " TO Screen1-Gd-1-PRI 
           ELSE
200412
              IF IGA-MHIV = SPACE 
                      OR "0" 
                      OR "l"     
                 ADD W-PUB TO TOT-HT
                              TOTFAM-HT
                 MOVE W-PUB        TO W-PICSZ10VZZ
                 MOVE W-PICSZ10VZZ TO Screen1-Gd-1-HT
                 MOVE PUB-MHIV     TO W-PICSZ10VZZ
                 MOVE W-PICSZ10VZZ TO Screen1-Gd-1-PRI
240918
                 ADD W-MAR TO TOT-MAR
                              TOTFAM-MAR
240918
              ELSE 
                 MOVE "Garantie"   TO Screen1-Gd-1-PRI 
              END-IF

200412     END-IF

           IF DSP-MHIV = 0     
              MOVE DAT-MHIV TO DSP-MHIV
           END-IF

           COPY "W:/mistral/copy/Ef-Date10-Fic2Ecr.cbl" REPLACING 
              ==CPYDAT-FIC== BY ==DSP-MHIV==
              ==CPYDAT-ECR== BY ==Screen1-Gd-1-DSP==.

           COPY "W:/mistral/copy/Ef-Date10-Fic2Ecr.cbl" REPLACING 
              ==CPYDAT-FIC== BY ==DAT-MHIV==
              ==CPYDAT-ECR== BY ==Screen1-Gd-1-DAT==.

           MOVE ART-MHIV TO Screen1-Gd-1-ART
           MOVE DES-TRI  TO Screen1-Gd-1-DES

           IF ICR-MHIV = 1     
      *       Changement de référence
              MOVE "*" TO Screen1-Gd-1-CRF
           END-IF

           IF ISQ-MHIV = 1     
              MOVE "Régul" TO Screen1-Gd-1-QTE
           ELSE
              MOVE QTE-MHIV TO W-INT-DEC

              IF W-DEC9 <> 0     
                 MOVE QTE-MHIV     TO W-PICSZ10VZZ
                 MOVE W-PICSZ10VZZ TO Screen1-Gd-1-QTE
              ELSE
                 MOVE QTE-MHIV     TO W-PICSZ13
                 MOVE W-PICSZ13    TO Screen1-Gd-1-QTE
              END-IF

           END-IF

           IF PZE-MHIV = "E"     
              MOVE "Echange " TO Screen1-Gd-1-PRI 
              MOVE ZERO TO MCU-MHIV 
           END-IF

200412*     IF PZE-MHIV = "G" mis plus haut
      *          MOVE "Gratuit " TO Screen1-Gd-1-PRI 
      *     END-IF

           MOVE REM-MHIV     TO W-PICSZ10VZZ
           MOVE W-PICSZ10VZZ TO Screen1-Gd-1-REM
           MOVE REP-TRI      TO Screen1-Gd-1-REP

           IF ICC-MHIV <> 0     
              MOVE ICC-MHIV TO Screen1-Gd-1-ICC
           END-IF

           IF IRD-MHIV = 1      
              MOVE "Réf D" TO Screen1-Gd-1-REM
           END-IF

100913*     IF  ( IGA-MHIV = SPACE           Mis plus haut
      *                 OR "0" 
      *                 OR "l" ) 
      *     AND ( PUB-MHIV NOT = 0 )     
      *        COMPUTE PMB-LIG ROUNDED = (100 * MCU-MHIV) / PUB-MHIV
      *     ELSE 
      *        MOVE ZERO TO PMB-LIG
      *     END-IF
      *
      *     MOVE PMB-LIG      TO W-PICSZ10VZZ
100913     MOVE MAR-TRI      TO W-PICSZ10VZZ
           MOVE W-PICSZ10VZZ TO Screen1-Gd-1-MAR

           IF ORI-MHIV = "t"
                      OR "T"     
              MOVE ATR-MHIV  TO Screen1-Gd-1-CLI
           ELSE
              MOVE CLI-TRI   TO Screen1-Gd-1-CLI
           END-IF

           MOVE NOM-TRI      TO Screen1-Gd-1-NOM
           MOVE VIL-TRI      TO Screen1-Gd-1-VIL

170111*     IF FAC-MHIV <> 0     

              IF COD-MAGC <> AGE-MHIV     
                 MOVE AGE-MHIV TO COD-MAGC
                 READ MXAGENCE
                 INVALID 
                    MOVE "??" TO ABR-MAGC
                 END-READ
                 PERFORM STAT
              END-IF
              MOVE ABR-MAGC TO Screen1-Gd-1-AGE
170111*     END-IF

           IF ICC-MHIV <> 0     
              MOVE ICC-MHIV TO Screen1-Gd-1-ICC
           END-IF
           
           IF ORI-MHIV = "J"     

              IF BLO-MHIV <> 0     
                 MOVE BLO-MHIV TO Screen1-Gd-1-BON
              END-IF

           ELSE

              IF BON-MHIV <> 0     
                 MOVE BON-MHIV TO W-PICSZ8
                 MOVE W-PICSZ8 TO Screen1-Gd-1-BON
              END-IF

           END-IF

           IF FAC-MHIV <> 0     
              MOVE FAC-MHIV TO Screen1-Gd-1-FAC
           END-IF

           IF ORI-MHIV = "L" 
                      OR "S" 
                      OR "I" 
                      OR "A"     
              MOVE "L" TO Screen1-Gd-1-ORI
           ELSE 

              IF  ( ORI-MHIV = "R" 
                            OR "r" ) 
              AND ICC-MHIV = 1     
                 MOVE "I" TO Screen1-Gd-1-ORI
              ELSE 

                 IF ORI-MHIV = "r"     
                    MOVE "R"      TO Screen1-Gd-1-ORI
                 ELSE 
                    MOVE ORI-MHIV TO Screen1-Gd-1-ORI
                 END-IF

              END-IF

           END-IF

      *    Colonne Niveau de Commande
           IF ORI-MHIV = "D" OR "M"
              EVALUATE W-COL-NVC
              WHEN 1 | PARDIS
              WHEN 2 | PARMAT
              WHEN OTHER
                MOVE SPACES TO Screen1-Gd-1-NVC
              END-EVALUATE
           END-IF


           MOVE MAT-TRI  TO Screen1-Gd-1-MAT
           MOVE NAF-MHIV TO Screen1-Gd-1-NAF
           MOVE DEP-TRI TO Screen1-Gd-1-DEP     

           IF FOU-TRI <> ZERO THEN
              MOVE FOU-TRI TO Screen1-Gd-1-FOU
              INITIALIZE      ENR-MFOU
              MOVE FOU-TRI TO COD-MFOU

              READ MXFOU

              PERFORM STAT

              MOVE RAI-MFOU TO Screen1-Gd-1-FOU(8:)
           END-IF

           IF FAM-TRI <> ZERO THEN
              MOVE FAM-TRI TO Screen1-Gd-1-FAM

              INITIALIZE           ENR-MGFA
              MOVE FAM-TRI(1:2) TO GRA-MGFA

              READ MXGRAFAM

              PERFORM STAT

              MOVE ABR-MGFA TO Screen1-Gd-1-FAM(6:) 

              INITIALIZE           ENR-MGFA
              MOVE FAM-TRI(1:2) TO GRA-MGFA
              MOVE FAM-TRI(3:2) TO FAM-MGFA

              READ MXGRAFAM

              PERFORM STAT

              MOVE ABR-MGFA TO Screen1-Gd-1-FAM(16:) 

           END-IF
      
           MOVE RFN-TRI TO Screen1-Gd-1-RFN
           MOVE ISA-MHIV TO Screen1-Gd-1-ISA
090415     MOVE CHC-TRI TO Screen1-Gd-1-CHC
           .

       LECT-MART.
      *---------*
           READ MXART
           INVALID
              MOVE ALL "*" TO DES-MART
           END-READ

           PERFORM STAT
           .

       Edition.
      *-------*     
           CALL "W$MENU" USING WMENU-POPUP, Screen1-Mn-2-Handle
           .
      *
       Screen1-Mn-2-MI-Etatcomplet-Link.
      *--------------------------------*   
           MOVE 1 TO W-ETAT  
           PERFORM LANCE-IMPRIME
           .
      *
       Screen1-Mn-2-MI-EtatColonnes-Link.
      *---------------------------------* Etat limité aux colonnes sélectionnées           
           MOVE 2 TO W-ETAT  
           PERFORM LANCE-IMPRIME
           .

       LANCE-IMPRIME.
      *-------------*
           MOVE 1 TO W-PBThread-Annul 
120819*     COPY "../../mistral/copy/Mis-ProgressBar.cbl" 
120819     MOVE HANDLE-PALM TO MCF-HANDLE-FP
120819     COPY "../../mistral/copy/Mis-ProgressBar-Centre.cbl" 
           REPLACING 
              ==PBTRAIT==         BY ==D-IMPRIME==,
              ==F-PBTRAIT==       BY ==F-IMPRIME==,
              ==PBSCREEN-Handle== BY ==Screen1-handle==.

           PERFORM SORTIE-IMPRIME
           .

       D-IMPRIME.
      *---------*
           MOVE "HIV"   TO XMLOut-Id
           MOVE MX-DIR  TO XMLOut-Dir

           PERFORM XMLOut-Assign-Tmp

           PERFORM XMLOut-Open

      *----NSA
           EVALUATE NSA-INT
              WHEN 2 INQUIRE Screen1-Ef-AGE, VALUE AGE-INT
           END-EVALUATE

           EVALUATE NSA-INT
              WHEN 1 COPY "../../mx/copy/NSA-Ent-Societe.cbl".
              WHEN 2 COPY "../../mx/copy/NSA-Ent-Agence.cbl".
           END-EVALUATE
      *----
            
           MOVE "HISTORIQUE DES VENTES ARTICLES" TO XMLOut-Titre

           MOVE "dat"            TO XMLOut-NomTit(1)
           MOVE "Date S."        TO XMLOut-ZonTit(1)
           MOVE "num"            TO XMLOut-NomTit(2)
           MOVE "N° Client"      TO XMLOut-ZonTit(2)
           MOVE "ref"            TO XMLOut-NomTit(3)
           MOVE "Référence"      TO XMLOut-ZonTit(3)
           MOVE "des"            TO XMLOut-NomTit(4)
           MOVE "Désignation"    TO XMLOut-ZonTit(4)
           MOVE "rrr"            TO XMLOut-NomTit(5)
           MOVE "R"              TO XMLOut-ZonTit(5)
           MOVE "cli"            TO XMLOut-NomTit(6)
           MOVE "Client"         TO XMLOut-ZonTit(6)
           MOVE "vil"            TO XMLOut-NomTit(7)
           MOVE "Ville"          TO XMLOut-ZonTit(7)
           MOVE "qte"            TO XMLOut-NomTit(8)
           MOVE "Qté"            TO XMLOut-ZonTit(8)
           MOVE "age"            TO XMLOut-NomTit(9)
           MOVE "Ag"             TO XMLOut-ZonTit(9)
           MOVE "punet"          TO XMLOut-NomTit(10)
           MOVE "PU Net"         TO XMLOut-ZonTit(10)
           MOVE "mtht"           TO XMLOut-NomTit(11)
           MOVE "MT HT"          TO XMLOut-ZonTit(11)
           MOVE "nbon"           TO XMLOut-NomTit(12)
           MOVE "N° Bon"         TO XMLOut-ZonTit(12)
           MOVE "nfac"           TO XMLOut-NomTit(13)
           MOVE "N° Fac"         TO XMLOut-ZonTit(13)
           MOVE "rem"            TO XMLOut-NomTit(14)
           MOVE "Rem."           TO XMLOut-ZonTit(14)
           MOVE "act"            TO XMLOut-NomTit(15)
           MOVE "Act."           TO XMLOut-ZonTit(15)
           IF MOB-PALM = 0 
              MOVE "marge"          TO XMLOut-NomTit(16)
              MOVE "Marge"          TO XMLOut-ZonTit(16)
           ELSE
              MOVE "     "          TO XMLOut-NomTit(16)
              MOVE "     "          TO XMLOut-ZonTit(16)
           END-IF
           MOVE "mat"            TO XMLOut-NomTit(17)
           MOVE "Matériel"       TO XMLOut-ZonTit(17)
           MOVE "cial"           TO XMLOut-NomTit(18)
           MOVE "Cial"           TO XMLOut-ZonTit(18)
           MOVE "cri"            TO XMLOut-NomTit(19)
           MOVE "Critères :"     TO XMLOut-ZonTit(19)
           MOVE "abr"            TO XMLOut-NomTit(20)
           MOVE "Abréviations :" TO XMLOut-ZonTit(20)
           MOVE "dfac2"          TO XMLOut-NomTit(21)
           MOVE "Date Facture"   TO XMLOut-ZonTit(21)
           MOVE "qte2"           TO XMLOut-NomTit(22)
           MOVE "Quantité"       TO XMLOut-ZonTit(22)
           MOVE "age2"           TO XMLOut-NomTit(23)
           MOVE "Agence"         TO XMLOut-ZonTit(23)
           MOVE "nfac2"          TO XMLOut-NomTit(24)
           MOVE "N° Facture"     TO XMLOut-ZonTit(24)
           MOVE "rem2"           TO XMLOut-NomTit(25)
           MOVE "Remise"         TO XMLOut-ZonTit(25)
           MOVE "cial2"          TO XMLOut-NomTit(26)
           MOVE "Commercial"     TO XMLOut-ZonTit(26)
           MOVE "per"            TO XMLOut-NomTit(27)
           MOVE "Preneur d'ordre" TO XMLOut-ZonTit(27)  
           MOVE "ags"            TO XMLOut-NomTit(28)
           MOVE "Ag sortie"      TO XMLOut-ZonTit(28)  
           MOVE "pos"            TO XMLOut-NomTit(29)
           MOVE "CP"             TO XMLOut-ZonTit(29)  
           MOVE "adr"            TO XMLOut-NomTit(30)
           MOVE "Adresse"        TO XMLOut-ZonTit(30)  
      
           MOVE "tel"            TO XMLOut-NomTit(31)
           MOVE "Téléphone"      TO XMLOut-ZonTit(31)  
           MOVE "mail"           TO XMLOut-NomTit(32)
           MOVE "Email"          TO XMLOut-ZonTit(32)  
      
           MOVE "crf"           TO XMLOut-NomTit(33)
           MOVE "CRF"           TO XMLOut-ZonTit(33)
           MOVE "ar2"           TO XMLOut-NomTit(34)
           MOVE "Article sans IDF" TO XMLOut-ZonTit(34)
090415     MOVE "chc"           TO XMLOut-NomTit(35)
090415     MOVE "Chantier"      TO XMLOut-ZonTit(35)
230715     MOVE "rff"           TO XMLOut-NomTit(36)
230715     MOVE "Référence FRN" TO XMLOut-ZonTit(36)
250915
           MOVE "tit"            TO XMLOut-NomTit(37)
           MOVE "Titre"          TO XMLOut-ZonTit(37)  
           MOVE "tel2"           TO XMLOut-NomTit(38)
           MOVE "Téléphone 2"    TO XMLOut-ZonTit(38)  
250915
181115
           MOVE "vol"            TO XMLOut-NomTit(39)
           MOVE "Volume / Condt" TO XMLOut-ZonTit(39)  
181115
120617     MOVE "rfc"            TO XMLOut-NomTit(40)
120617     MOVE "Ref. client"    TO XMLOut-ZonTit(40) 
240918     MOVE "poi"            TO XMLOut-NomTit(41)
240918     MOVE "Poi / Condt"    TO XMLOut-ZonTit(41)  
040619     MOVE "pay"            TO XMLOut-NomTit(42)
040619     MOVE "Pays"           TO XMLOut-ZonTit(42)  
070318
           IF RIA-MPAR = 1 THEN
              MOVE "rfi"            TO XMLOut-NomTit(43) | à laisser en fin
              MOVE "Ref. interne"   TO XMLOut-ZonTit(43) 
           END-IF
070318
           MOVE SPACE TO XMLOut-FORMAT

           IF W-ETAT = 2     
      *       Titre,largeur et justification Colonnes 
              MOVE 0 TO W-COL 
                        K
       
              PERFORM VARYING I FROM 2 BY 1 
                 UNTIL I = Nombre-Colonnes

                 IF ELT-AFF-Gd-1-Record(I) = 1     
                    ADD 1 TO W-COL
                    ADD Elt-Lon-Gd-1-Record(I) TO K
                    STRING "coltit" 
                           W-COL 
                      DELIMITED BY "     "   |version internationale
                      INTO XMLOut-TagToAdd
                    ADD 1 TO W-COL GIVING J
                    INQUIRE Screen1-Gd-1(1, J),
                       CELL-DATA IN XMLOut-DataToAdd
                    PERFORM XMLOut-Append-TaggedData
                    STRING "collon"  
                           W-COL 
                      DELIMITED BY "     "   |version internationale
                      INTO XMLOut-TagToAdd
                    MOVE Elt-Lon-Gd-1-Record(I) TO XMLOut-DataToAdd
                    PERFORM XMLOut-Append-TaggedData
                    string "coljus"  
                           W-COL 
                      DELIMITED BY "     "   |version internationale
                      INTO XMLOut-TagToAdd

                    EVALUATE Elt-Jus-Record(I)
                    WHEN "C"
                       MOVE "center"  TO XMLOut-DataToAdd
                    WHEN "L"
                       MOVE "left"    TO XMLOut-DataToAdd
                    WHEN "R"
                       MOVE "right"   TO XMLOut-DataToAdd
                    END-EVALUATE

                    PERFORM XMLOut-Append-TaggedData
                 END-IF

              END-PERFORM

              MOVE "nbcol" TO XMLOut-TagToAdd
              MOVE W-COL   TO XMLOut-DataToAdd
              PERFORM XMLOut-Append-TaggedData
              MOVE "loncol" TO XMLOut-TagToAdd
              MOVE K        TO XMLOut-DataToAdd
              PERFORM XMLOut-Append-TaggedData

              IF K > 145     
                 MOVE "P" TO XMLOut-FORMAT
                 MOVE "format" TO XMLOut-TagToAdd
                 MOVE "P"      TO XMLOut-DataToAdd
                 PERFORM XMLOut-Append-TaggedData
              END-IF

           END-IF
      
      
           MOVE SPACE TO W-PICX30

           IF DA1-INT = 0     
              MOVE "Du Début" TO W-PICX30
           ELSE
              STRING "Du"   DELIMITED BY SIZE
                     " " 
                     W-DATE1   DELIMITED BY SIZE
                INTO W-PICX30
              END-IF

           STRING W-PICX30  DELIMITED BY "   "
                  "  Au"   DELIMITED BY SIZE
                  " " 
                  W-DATE2   DELIMITED BY SIZE
              INTO XMLOut-Periode
      
           MOVE LK-INT-NOMSEL TO XMLOut-Nomsel
           PERFORM XMLOut-EnteteListe THRU F-XMLOut-EnteteListe
           PERFORM XMLOut-PiedListe   THRU F-XMLOut-PiedListe

           MOVE 1 TO IND-COL

           MOVE "sel"     TO XMLOut-TagToAdd
           MOVE W-SEL-IMP TO XMLOut-DataToAdd
           PERFORM           XMLOut-Append-TaggedData

           MOVE "<fam>" TO XMLOut-ItemToAdd
           PERFORM         XMLOut-Append-Tag
           
           INITIALIZE ENR-TRI
           MOVE HIGH-VALUE TO SV-RUP
           MOVE 0 TO W-EOF-TRI
                     TOT-QTE
                     TOT-HT
                     TOTFAM-HT
                     TOTFAM-QTE
                     W-NB-RUP
240918               TOT-MAR
240918               TOTFAM-MAR
           MOVE 1 TO W-IMPRIME

           PERFORM START-TRI

           IF W-ETAT = 1     

              PERFORM IMPR-TRI
                 UNTIL W-EOF-TRI = 1
                    OR W-PBThread-End = 1
           ELSE

              PERFORM IMPR-TRI-COL
                 UNTIL W-EOF-TRI = 1
                    OR W-PBThread-End = 1

           END-IF

           MOVE "</fam>" TO XMLOut-ItemToAdd
           PERFORM         XMLOut-Append-Tag

           IF W-PBThread-End = 0     

              IF W-ETAT = 1     
                 MOVE "<total>" TO XMLOut-ItemToAdd
                 PERFORM           XMLOut-Append-Tag

                 MOVE "lib"   TO XMLOut-TagToAdd
                 MOVE "TOTAL   GENERAL" 
                   TO XMLOut-DataToAdd
                 PERFORM         XMLOut-Append-TaggedData
                 MOVE "qte"   TO XMLOut-TagToAdd
                 MOVE TOT-QTE TO W-INT-DEC

                 IF W-DEC9 <> 0     
                    MOVE TOT-QTE TO XMLOut-NumberV2ToAdd
                 ELSE
                    MOVE TOT-QTE TO XMLOut-NumberV0ToAdd
                 END-IF
                    
                 PERFORM         XMLOut-Append-TaggedData
                 MOVE "ht"    TO XMLOut-TagToAdd
                 MOVE TOT-HT  TO XMLOut-NumberV2ToAdd
                 PERFORM         XMLOut-Append-TaggedData
240918
                 MOVE "mar"      TO XMLOut-TagToAdd

                 IF TOT-HT <> 0 
                    COMPUTE PMB-LIG ROUNDED = ( 100 * TOT-MAR )
                                               / TOT-HT
                    MOVE PMB-LIG TO XMLOut-NumberV2ToAdd
                 END-IF

                 PERFORM           XMLOut-Append-TaggedData
240918
                 MOVE "</total>" TO XMLOut-ItemToAdd
                 PERFORM            XMLOut-Append-Tag
              ELSE

                 IF  AFF-TOT-INT = 1
                 AND (    AFF-QTE-INT = 1  
                       OR AFF-HT-INT  = 1  
240918                 OR AFF-MAR-INT = 1 )     
                    MOVE "<total>" TO XMLOut-ItemToAdd
                    PERFORM           XMLOut-Append-Tag

                    MOVE "TOTAL GENERAL" TO XMLOut-DataToAdd
                    SUBTRACT 1 FROM W-KEY-NUM GIVING W-COL
                    PERFORM Col-Imp

                    IF AFF-QTE-INT = 1     
                       MOVE TOT-QTE TO W-INT-DEC

                       IF W-DEC9 <> 0     
                          MOVE TOT-QTE      TO W-PICSZ10VZZ
                          MOVE W-PICSZ10VZZ TO XMLOut-DataToAdd
                       ELSE
                          MOVE TOT-QTE      TO W-PICSZ13
                          MOVE W-PICSZ13    TO XMLOut-DataToAdd
                       END-IF

                       MOVE W-COL-QTE TO W-COL
                       PERFORM Col-Imp
                    END-IF

                    IF AFF-HT-INT = 1     
                       MOVE TOT-HT       TO W-PICSZ10VZZ     
                       MOVE W-PICSZ10VZZ TO XMLOut-DataToAdd
                       MOVE W-COL-HT TO W-COL
                       PERFORM Col-Imp
                    END-IF
240918
                    IF  TOT-HT <> 0 
                    AND AFF-MAR-INT = 1 
                       COMPUTE PMB-LIG ROUNDED = ( 100 * TOT-MAR )
                                               / TOT-HT
                       MOVE PMB-LIG      TO W-PICSZ10VZZ
                       MOVE W-PICSZ10VZZ TO XMLOut-DataToAdd
                       COMPUTE W-COL = W-COL-MAR - 1
                       PERFORM Col-Imp
                    END-IF
240918
                    MOVE "</total>" TO XMLOut-ItemToAdd
                    PERFORM            XMLOut-Append-Tag
                 END-IF

              END-IF

              MOVE "<criteres>" TO XMLOut-ItemToAdd
              PERFORM              XMLOut-Append-Tag
      
              MOVE "cri"            TO XMLOut-TagToAdd

              IF DFA-INT = 0     
                 MOVE "Test sur date de sortie"  TO XMLOut-DataToAdd
              ELSE
                 MOVE "Test sur date de facture" TO XMLOut-DataToAdd
              END-IF

              PERFORM XMLOut-Append-TaggedData
      
              MOVE "cri"            TO XMLOut-TagToAdd
              EVALUATE NSA-INT 
              WHEN 1 MOVE "Niveau Société" TO XMLOut-DataToAdd
              WHEN 2 MOVE "Niveau Agence"  TO XMLOut-DataToAdd
              WHEN 3 MOVE "Niveau Région"  TO XMLOut-DataToAdd
              WHEN 4 MOVE "Plusieurs Agences : " TO XMLOut-DataToAdd
              WHEN 5 MOVE "Niveau Société Comptable" TO XMLOut-DataToAdd
              END-EVALUATE
              PERFORM XMLOut-Append-TaggedData

              MOVE "abr"                 TO XMLOut-TagToAdd
              MOVE "Col ""R"" = Référence remplacée" TO XMLOut-DataToAdd
              PERFORM                       XMLOut-Append-TaggedData

              IF W-ETAT = 1
              OR (     W-ETAT = 2
                   AND AFF-ORI-INT = 1 )     
                 MOVE "abr"                 TO XMLOut-TagToAdd
                 MOVE "Col ""Act"" = Activité" TO XMLOut-DataToAdd
                 PERFORM                       XMLOut-Append-TaggedData
                 MOVE "abr"                 TO XMLOut-TagToAdd
                 MOVE "&#160;D = Distribution" TO XMLOut-DataToAdd
                 PERFORM                       XMLOut-Append-TaggedData
                 MOVE "abr"                 TO XMLOut-TagToAdd
                 MOVE "&#160;R = Réparation" TO XMLOut-DataToAdd
                 PERFORM                       XMLOut-Append-TaggedData
                 MOVE "abr"                 TO XMLOut-TagToAdd
                 MOVE "&#160;I = Réparation (Cde interne)"
                                            TO XMLOut-DataToAdd
                 PERFORM                       XMLOut-Append-TaggedData
                 MOVE "abr"                 TO XMLOut-TagToAdd
                 MOVE "&#160;M = Vente matériel" TO XMLOut-DataToAdd
                 PERFORM                       XMLOut-Append-TaggedData
                 MOVE "abr"                 TO XMLOut-TagToAdd
                 MOVE "&#160;L = Location"  TO XMLOut-DataToAdd
                 PERFORM                       XMLOut-Append-TaggedData
                 MOVE "abr"                 TO XMLOut-TagToAdd
                 MOVE "&#160;F = Location longue durée"  
                                            TO XMLOut-DataToAdd
                 PERFORM                       XMLOut-Append-TaggedData
                 MOVE "abr"                 TO XMLOut-TagToAdd
                 MOVE "&#160;J = Libre service"  
                                            TO XMLOut-DataToAdd
                 PERFORM                       XMLOut-Append-TaggedData
                 MOVE "abr"                 TO XMLOut-TagToAdd
                 MOVE "&#160;T = Transfert entre agence"  
                                            TO XMLOut-DataToAdd
                 PERFORM                       XMLOut-Append-TaggedData
                 MOVE "abr"                 TO XMLOut-TagToAdd
                 MOVE "&#160;K = Mouvement de stock"  
                                            TO XMLOut-DataToAdd
                 PERFORM                       XMLOut-Append-TaggedData
                 MOVE "abr"                 TO XMLOut-TagToAdd
                 MOVE "&#160;k = Assemblage kit"  
                                            TO XMLOut-DataToAdd
                 PERFORM                       XMLOut-Append-TaggedData
                 MOVE "abr"                 TO XMLOut-TagToAdd
                 MOVE "&#160;H = Habillage" TO XMLOut-DataToAdd
                 PERFORM                       XMLOut-Append-TaggedData
                 MOVE "abr"                 TO XMLOut-TagToAdd
                 MOVE "&#160;P = Fabrication"  
                                            TO XMLOut-DataToAdd
                 PERFORM                       XMLOut-Append-TaggedData
                 MOVE "abr"                 TO XMLOut-TagToAdd
                 MOVE "&#160;C = Affectation Achat/Matériel"  
                                            TO XMLOut-DataToAdd
                 PERFORM                       XMLOut-Append-TaggedData
                 MOVE "abr"                 TO XMLOut-TagToAdd
                 MOVE "Col ""Matériel"" :"  TO XMLOut-DataToAdd
                 PERFORM                       XMLOut-Append-TaggedData
                 MOVE "abr"                 TO XMLOut-TagToAdd
                 MOVE 
      *         "(E)xxx = Matériel sans matricule de numéro d'entrée xxx"     
               "(E)xxx = Matériel sans matricule - Numéro d'entrée=xxx"    
                                            TO XMLOut-DataToAdd
                 PERFORM                       XMLOut-Append-TaggedData
              END-IF

              IF AFF-INT <> SPACE     
                 MOVE "cri" TO XMLOut-TagToAdd
                 STRING "Affaire" DELIMITED BY SIZE
                        " " AFF-INT    DELIMITED BY SIZE
                   INTO  XMLOut-DataToAdd
                 PERFORM XMLOut-Append-TaggedData
              END-IF
              IF LOT-INT <> SPACE     
                 MOVE "cri" TO XMLOut-TagToAdd
                 STRING "Lot n°" DELIMITED BY SIZE
                        " " LOT-INT    DELIMITED BY SIZE
                   INTO  XMLOut-DataToAdd
                 PERFORM XMLOut-Append-TaggedData
              END-IF

              MOVE "cri"           TO XMLOut-TagToAdd
              MOVE "ACTIVITE(S) :" TO XMLOut-DataToAdd
              PERFORM                 XMLOut-Append-TaggedData

              PERFORM 
                 VARYING I FROM 1 BY 1
                    UNTIL I > NB-ACT

                 IF VAL-TAB-ACT(I) = 1     
                    MOVE "cri" TO XMLOut-TagToAdd
                    STRING "-"           DELIMITED BY SIZE
                           " " LIB-TAB-ACT(I) DELIMITED BY SIZE
                             INTO XMLOut-DataToAdd
                    PERFORM       XMLOut-Append-TaggedData
                 END-IF

              END-PERFORM

              IF  CLI-INT = 2 
              AND LK-MCLI-M-NBSEL > 1     
                 MOVE "cri"                 TO XMLOut-TagToAdd
                 MOVE "Sélection clients :" TO XMLOut-DataToAdd
                 PERFORM                       XMLOut-Append-TaggedData

                 PERFORM VARYING I FROM 1 BY 1 
                    UNTIL I > LK-MCLI-M-NBSEL

                    MOVE LK-MCLI-M-COD(I) TO COD-MCLI

                    READ MXCLI KEY CLE6-MCLI 
                    INVALID
                       INITIALIZE ENR-MCLI
                       MOVE LK-MCLI-M-COD(I) TO RAI-MCLI
                    END-READ

                    PERFORM STAT

                    MOVE "cri" TO XMLOut-TagToAdd
                    STRING "-"  DELIMITED BY SIZE
                        " " delimited by size
                        RAI-MCLI DELIMITED BY "  "
                        " "      DELIMITED BY SIZE
                        POS-MCLI DELIMITED BY SIZE
                        " "      DELIMITED BY SIZE
                        VIL-MCLI DELIMITED BY SIZE
                       INTO XMLOut-DataToAdd
                    PERFORM XMLOut-Append-TaggedData

                 END-PERFORM

              END-IF

              IF  CLI-INT = 3     
                 MOVE "cri"          TO XMLOut-TagToAdd
                 MOVE "Aucun client" TO XMLOut-DataToAdd
                 PERFORM                XMLOut-Append-TaggedData
              END-IF
      
              IF  ART-INT = 2
              AND LK-MART-M-NBSEL > 1     
                 MOVE "cri"                  TO XMLOut-TagToAdd
                 MOVE "Sélection articles :" TO XMLOut-DataToAdd
                 PERFORM                        XMLOut-Append-TaggedData

                 PERFORM VARYING I FROM 1 BY 1 
                    UNTIL I > LK-MART-M-NBSEL

                    MOVE LK-MART-M-COD(I) TO COD-MART

                    READ MXART
                    INVALID
                       MOVE SPACE TO DES-MART
                    END-READ

                    PERFORM STAT

                    MOVE "cri" TO XMLOut-TagToAdd
                    STRING "-"  DELIMITED BY SIZE
                        " " delimited by size
                        COD-MART DELIMITED BY "  "
                        " "      DELIMITED BY SIZE
                        DES-MART DELIMITED BY SIZE
                       INTO XMLOut-DataToAdd
                    PERFORM XMLOut-Append-TaggedData

                 END-PERFORM

              END-IF

              IF  ART-INT = 3 
              AND CLI-INT = 2     
                 MOVE "cri" TO XMLOut-TagToAdd
                 STRING "Article divers" DELIMITED BY SIZE
                        " " ADV-INT           DELIMITED BY SIZE
                         INTO  XMLOut-DataToAdd
                 PERFORM       XMLOut-Append-TaggedData
              END-IF
      
              IF SOR-INT = 1     
                 MOVE "cri" TO XMLOut-TagToAdd
                 MOVE "Sans les transferts / Agences" 
                            TO XMLOut-DataToAdd
                 PERFORM       XMLOut-Append-TaggedData
              END-IF

              MOVE "cri" TO XMLOut-TagToAdd

              EVALUATE RET-INT
              WHEN 1
                 MOVE "Sans rétrocessions"   TO XMLOut-DataToAdd
              WHEN 2
                 MOVE "Avec rétrocessions"   TO XMLOut-DataToAdd
              WHEN 3
                 MOVE "Rétrocessions seules" TO XMLOut-DataToAdd
              END-EVALUATE

              PERFORM XMLOut-Append-TaggedData


              IF  POS-INT = 2     
                 MOVE "cri" TO XMLOut-TagToAdd
                 MOVE "Sélection postes CI :" 
                            TO XMLOut-DataToAdd
                 PERFORM       XMLOut-Append-TaggedData

                 PERFORM VARYING I FROM 1 BY 1 
                    UNTIL I > LK-LISTE-NBSEL OF LK-LISTE

                    MOVE "cri" TO XMLOut-TagToAdd
                    MOVE LK-LISTE-COD OF LK-LISTE (I) 
                               TO XMLOut-DataToAdd
                    PERFORM       XMLOut-Append-TaggedData
                 END-PERFORM

              END-IF

              IF  POS-INT = 3     
                 MOVE "cri"            TO XMLOut-TagToAdd
                 MOVE "Aucun poste CI" TO XMLOut-DataToAdd
                 PERFORM                  XMLOut-Append-TaggedData
              END-IF

              IF  DEP-INT = 2     
                 MOVE "cri" TO XMLOut-TagToAdd
                 MOVE "Sélection dépôts :" 
                            TO XMLOut-DataToAdd
                 PERFORM       XMLOut-Append-TaggedData

                 PERFORM VARYING I FROM 1 BY 1 
                    UNTIL I > LK-LISTE-NBSEL OF LK-LISTE2

                    MOVE LK-LISTE-COD OF LK-LISTE2 (I) 
                       TO XMLOut-DataToAdd
                    MOVE "cri"    TO XMLOut-TagToAdd
                    PERFORM          XMLOut-Append-TaggedData
                 END-PERFORM

              END-IF

              MOVE "</criteres>" TO XMLOut-ItemToAdd
              PERFORM               XMLOut-Append-Tag
           END-IF
           .

       F-IMPRIME.
      *---------*
           IF W-PBThread-End = 0     
              MOVE 1 TO W-OK
           ELSE
              MOVE 0 TO W-OK
           END-IF

           MOVE 1 TO W-PBThread-End
           .

       SORTIE-IMPRIME.
      *--------------*
           PERFORM XMLOut-Close

           IF W-OK = 1     
                 IF W-ETAT = 1     
                    MOVE "/mx/fop/hiv.xsl"     TO LK-IMPRIME-XSL
                    MOVE "/mx/fop/hiv.fic.xsl" TO LK-IMPRIME-FIC
                 ELSE
                    MOVE "/mx/fop/hiv2.xsl"     TO LK-IMPRIME-XSL
                    MOVE "/mx/fop/hiv2.fic.xsl" TO LK-IMPRIME-FIC
                 END-IF

                 MOVE XMLOut-Assign     TO LK-IMPRIME-XML
                 MOVE "pdf"             TO LK-IMPRIME-FORMAT
      *           MOVE "P"               TO LK-IMPRIME-PRVW

                 CALL   "imprime.acu" USING ZONE-PALM, LK-IMPRIME
                 CANCEL "imprime.acu"
           end-if

           PERFORM XMLOut-Delete

           MOVE 0 TO W-IMPRIME
           .

       IMPR-TRI.
      *---------*
           PERFORM Lect-Tri

           IF (     W-KEY-NUM = W-COL-ART 
                AND ART-TRI <> SV-RUP )
           OR (     W-KEY-NUM = W-COL-REP 
                AND REP-TRI <> SV-RUP )
           OR (     W-KEY-NUM = W-COL-CLI 
                AND CLI-TRI <> SV-RUP ) 
           OR (     W-KEY-NUM = W-COL-MAT
                AND MAT-TRI <> SV-RUP ) 
           OR (     W-KEY-NUM = W-COL-DSP
                AND DSP-TRI(1:4) <> SV-RUP ) 
           OR (     W-KEY-NUM = W-COL-DEP
                AND DEP-TRI <> SV-RUP ) 
           OR (     W-KEY-NUM = W-COL-FOU
                AND FOU-TRI <> SV-RUP ) 
           OR (     W-KEY-NUM = W-COL-FAM
                AND FAM-TRI <> SV-RUP ) 
090415     OR (     W-KEY-NUM = W-COL-CHC
090415          AND CHC-TRI <> SV-RUP ) 
           OR W-EOF-TRI = 1     
      *       Rupture 
              IF  SV-RUP <> HIGH-VALUE 

                 IF  W-NB-RUP > 1 
                 AND SV-RUP <> SPACE     

                    MOVE 1 TO IND-COL

      *             Affiche ligne total
                    MOVE "<art>" TO XMLOut-ItemToAdd
                    PERFORM         XMLOut-Append-Tag
                    MOVE "lig"   TO XMLOut-TagToAdd
                    MOVE 2       TO XMLOut-DataToAdd
                    PERFORM         XMLOut-Append-TaggedData

                    MOVE "lib"     TO XMLOut-TagToAdd
                    MOVE W-LIB-RUP TO XMLOut-DataToAdd
                    PERFORM           XMLOut-Append-TaggedData

                    MOVE "qte"            TO XMLOut-TagToAdd
                    MOVE TOTFAM-QTE TO W-INT-DEC

                    IF W-DEC9 <> 0     
                       MOVE TOTFAM-QTE TO XMLOut-NumberV2ToAdd
                    ELSE
                       MOVE TOTFAM-QTE TO XMLOut-NumberV0ToAdd
                    END-IF
                    
                    PERFORM           XMLOut-Append-TaggedData
                    MOVE "ht"      TO XMLOut-TagToAdd
                    MOVE TOTFAM-HT TO XMLOut-NumberV2ToAdd
                    PERFORM           XMLOut-Append-TaggedData
240918
                    MOVE "mar"      TO XMLOut-TagToAdd

                    IF TOTFAM-HT <> 0 
                       COMPUTE PMB-LIG ROUNDED = ( 100 * TOTFAM-MAR )
                                               / TOTFAM-HT
                       MOVE PMB-LIG TO XMLOut-NumberV2ToAdd
                    END-IF

                    PERFORM           XMLOut-Append-TaggedData
240918
                    MOVE "</art>" TO XMLOut-ItemToAdd
                    PERFORM         XMLOut-Append-Tag
                 ELSE
                    MOVE "lib"     TO XMLOut-TagToAdd
                    MOVE SPACE     TO XMLOut-DataToAdd
                    PERFORM           XMLOut-Append-TaggedData
                 END-IF

              END-IF

      *        IF SV-RUP <> HIGH-VALUE 
      *        OR W-EOF-TRI = 1     
      *           MOVE "</fam>" TO XMLOut-ItemToAdd
      *           PERFORM          XMLOut-Append-Tag
      *        END-IF

              IF W-EOF-TRI = 1     

                 EXIT PARAGRAPH

              END-IF

      *        MOVE "<fam>" TO XMLOut-ItemToAdd
      *        PERFORM         XMLOut-Append-Tag
              PERFORM LIB-RUP

              MOVE 0 TO TOTFAM-HT
                        TOTFAM-QTE
                        W-NB-RUP
240918                  TOTFAM-MAR
           END-IF

           PERFORM Mep-Record

           IF IND-COL = 0
                MOVE 1 TO IND-COL
           ELSE MOVE 0 TO IND-COL
           END-IF

           IF ART-MHIV(1:4) NOT NUMERIC THEN
              MOVE ART-MHIV TO COD-MART
              PERFORM LECT-MART
           END-IF

           MOVE "<art>" TO XMLOut-ItemToAdd
           PERFORM         XMLOut-Append-Tag

           MOVE "lig"   TO XMLOut-TagToAdd
           MOVE 1       TO XMLOut-DataToAdd
           PERFORM         XMLOut-Append-TaggedData
           MOVE "col"   TO XMLOut-TagToAdd
           MOVE IND-COL TO XMLOut-DataToAdd
           PERFORM         XMLOut-Append-TaggedData
                      
           MOVE "dat"            TO XMLOut-TagToAdd
           MOVE Screen1-Gd-1-DSP TO XMLOut-DataToAdd
           PERFORM                  XMLOut-Append-TaggedData
           MOVE "art"            TO XMLOut-TagToAdd
           IF W-PRIM = 1 AND ART-MHIV(1:4) NOT NUMERIC
              MOVE REF-MART TO XMLOut-DataToAdd                | Si export pour interface PRIM, c'est la référence et non le code article qui est exporté
           ELSE
              MOVE ART-MHIV TO XMLOut-DataToAdd | avait disparu...
           END-IF
           PERFORM                  XMLOut-Append-TaggedData
      
           MOVE "ar2"            TO XMLOut-TagToAdd
           MOVE ART-MHIV(5:)     TO XMLOut-DataToAdd 
           PERFORM                  XMLOut-Append-TaggedData
      
           MOVE "crf"            TO XMLOut-TagToAdd
           MOVE Screen1-Gd-1-CRF TO XMLOut-DataToAdd
           PERFORM                  XMLOut-Append-TaggedData
           MOVE "des"            TO XMLOut-TagToAdd
           INSPECT Screen1-Gd-1-DES CONVERTING "'" TO " " | GONNIN pb export csv libellé avec des guillemets
           INSPECT Screen1-Gd-1-DES CONVERTING '"' TO " "
           MOVE Screen1-Gd-1-DES TO XMLOut-DataToAdd
           PERFORM                  XMLOut-Append-TaggedData
           MOVE "qte"            TO XMLOut-TagToAdd
           MOVE Screen1-Gd-1-QTE TO XMLOut-DataToAdd
           PERFORM                  XMLOut-Append-TaggedData
           MOVE "pri"            TO XMLOut-TagToAdd
           MOVE Screen1-Gd-1-PRI TO XMLOut-DataToAdd
           PERFORM                  XMLOut-Append-TaggedData
           MOVE "ht"             TO XMLOut-TagToAdd

           MOVE Screen1-Gd-1-HT  TO XMLOut-DataToAdd
           PERFORM                  XMLOut-Append-TaggedData

           MOVE "rem"            TO XMLOut-TagToAdd
           MOVE Screen1-Gd-1-REM TO XMLOut-DataToAdd
           PERFORM                  XMLOut-Append-TaggedData  

           MOVE "mar"            TO XMLOut-TagToAdd
           MOVE Screen1-Gd-1-MAR TO XMLOut-DataToAdd
           PERFORM                  XMLOut-Append-TaggedData
           MOVE "rep"            TO XMLOut-TagToAdd
           MOVE Screen1-Gd-1-REP TO XMLOut-DataToAdd
           PERFORM                  XMLOut-Append-TaggedData
           MOVE "cli"            TO XMLOut-TagToAdd
           MOVE Screen1-Gd-1-CLI TO XMLOut-DataToAdd
           PERFORM                  XMLOut-Append-TaggedData
           MOVE "nom"            TO XMLOut-TagToAdd
           MOVE Screen1-Gd-1-NOM TO XMLOut-DataToAdd
           PERFORM                  XMLOut-Append-TaggedData
           MOVE "vil"            TO XMLOut-TagToAdd
           MOVE Screen1-Gd-1-VIL TO XMLOut-DataToAdd
           PERFORM                  XMLOut-Append-TaggedData
           MOVE "age"            TO XMLOut-TagToAdd
           MOVE Screen1-Gd-1-AGE TO XMLOut-DataToAdd
           PERFORM                  XMLOut-Append-TaggedData
           MOVE "bon"            TO XMLOut-TagToAdd
           MOVE Screen1-Gd-1-BON TO XMLOut-DataToAdd
           PERFORM                  XMLOut-Append-TaggedData
           MOVE "fac"            TO XMLOut-TagToAdd
           MOVE Screen1-Gd-1-FAC TO XMLOut-DataToAdd
           PERFORM                  XMLOut-Append-TaggedData
           MOVE "ori"            TO XMLOut-TagToAdd
           MOVE Screen1-Gd-1-ORI TO XMLOut-DataToAdd
           PERFORM                  XMLOut-Append-TaggedData
           MOVE "mat"            TO XMLOut-TagToAdd
           MOVE Screen1-Gd-1-MAT TO XMLOut-DataToAdd
           PERFORM                  XMLOut-Append-TaggedData
           MOVE "naf"            TO XMLOut-TagToAdd
           MOVE Screen1-Gd-1-NAF TO XMLOut-DataToAdd
           PERFORM                  XMLOut-Append-TaggedData
           MOVE "dep"            TO XMLOut-TagToAdd
           MOVE Screen1-Gd-1-DEP TO XMLOut-DataToAdd
           PERFORM                  XMLOut-Append-TaggedData
      *    pour export CSV
           MOVE "per"            TO XMLOut-TagToAdd
           MOVE Screen1-Gd-1-ISA TO XMLOut-DataToAdd
           PERFORM                  XMLOut-Append-TaggedData
           MOVE "ags"            TO XMLOut-TagToAdd
           MOVE AGS-MHIV         TO XMLOut-DataToAdd
           IF AGS-MHIV = SPACE MOVE AGE-MHIV TO XMLOut-DataToAdd
           END-IF
           PERFORM                  XMLOut-Append-TaggedData
      
090415
           MOVE "chc"            TO XMLOut-TagToAdd
           MOVE Screen1-Gd-1-CHC TO XMLOut-DataToAdd
           PERFORM                  XMLOut-Append-TaggedData
090415
      
           IF ART-MHIV(1:4) NOT NUMERIC THEN
              MOVE "crf2"   TO XMLOut-TagToAdd
              MOVE CRF-MART TO XMLOut-DataToAdd
              PERFORM          XMLOut-Append-TaggedData
111815
              MOVE "vol"    TO XMLOut-TagToAdd
              MOVE VOL-MART TO XMLOut-NumberV2BToAdd
              PERFORM          XMLOut-Append-TaggedData
111815
240918
              MOVE "poi"    TO XMLOut-TagToAdd
              MOVE POI-MART TO XMLOut-NumberV2BToAdd
              PERFORM          XMLOut-Append-TaggedData
240918
           END-IF
230715
           MOVE "rff"            TO XMLOut-TagToAdd
           IF ART-MHIV(1:4) NOT NUMERIC
              MOVE REF-MART     TO XMLOut-DataToAdd                
           ELSE
              MOVE ART-MHIV(5:) TO XMLOut-DataToAdd 
           END-IF
           PERFORM                  XMLOut-Append-TaggedData
230715
070318
           IF RIA-MPAR = 1 THEN
              MOVE "rfi"    TO XMLOut-TagToAdd

              IF  RFI-MART IS NUMERIC
              AND RFIN-MART <> 0 
                 MOVE RFIN-MART TO XMLOut-NumberV0ToAdd
              ELSE
                 MOVE RFI-MART TO XMLOut-DataToAdd
              END-IF

              PERFORM XMLOut-Append-TaggedData
           END-IF
070318
      *    pour export CSV Bonfils
           IF  ICC-MHIV = 0     
           AND CLI-MHIV <> 0 THEN
              INITIALIZE       ENR-MCLI
              MOVE CLI-MHIV TO COD-MCLI

              READ MXCLI KEY CLE6-MCLI 
              PERFORM STAT
              INSPECT ADR-MCLI REPLACING ALL W-NEWLINE BY "  "

              MOVE "adr"    TO XMLOut-TagToAdd
              MOVE ADR-MCLI TO XMLOut-DataToAdd
              PERFORM          XMLOut-Append-TaggedData
              MOVE "pos"    TO XMLOut-TagToAdd
              COPY "../../mistral/copy/Ef-Pos-Fic2Ecr.cbl"
                  REPLACING ==CPYPOS-PAYS== BY ==PAY-MCLI==
                            ==CPYPOS-ECR==  BY ==XMLOut-DataToAdd==
                            ==CPYPOS-FIC==  BY ==POS-MCLI==.
              PERFORM          XMLOut-Append-TaggedData
      
              IF TEL-MCLI <> SPACE THEN
                 MOVE "tel"    TO XMLOut-TagToAdd
                 COPY "../../mistral/copy/Ef-Tel-Fic2Ecr.cbl"
                    REPLACING ==CPYTEL-PAYS== BY ==PAY-MCLI==
                              ==CPYTEL-ECR==  BY ==XMLOut-DataToAdd==
                              ==CPYTEL-FIC==  BY ==TEL-MCLI==.
                 PERFORM          XMLOut-Append-TaggedData
              END-IF

              IF TE2-MCLI <> SPACE THEN
                 MOVE "tel2"   TO XMLOut-TagToAdd
                 COPY "../../mistral/copy/Ef-Tel-Fic2Ecr.cbl"
                    REPLACING ==CPYTEL-PAYS== BY ==PAY-MCLI==
                              ==CPYTEL-ECR==  BY ==XMLOut-DataToAdd==
                              ==CPYTEL-FIC==  BY ==TE2-MCLI==.
                 PERFORM          XMLOut-Append-TaggedData
              END-IF

           END-IF

200515     move 1 TO I-SER perform rech-Serie THRU F-rech-Serie
                 
           ADD 1 TO W-NB-RUP

           MOVE "</art>" TO XMLOut-ItemToAdd
           PERFORM          XMLOut-Append-Tag 
           
200515     move 2 TO I-SER perform rech-Serie THRU F-rech-Serie
           .

       IMPR-TRI-COL.
      *------------*
           PERFORM Lect-Tri

           IF AFF-TOT-INT = 1
           AND (    (     W-KEY-NUM = W-COL-ART 
                      AND ART-TRI <> SV-RUP )
                 OR (     W-KEY-NUM = W-COL-REP 
                      AND REP-TRI <> SV-RUP )
                 OR (     W-KEY-NUM = W-COL-CLI 
                      AND CLI-TRI <> SV-RUP ) 
                 OR (     W-KEY-NUM = W-COL-MAT 
                      AND MAT-TRI <> SV-RUP ) 
                 OR (     W-KEY-NUM = W-COL-DSP 
                      AND DSP-TRI(1:4) <> SV-RUP ) 
                 OR (     W-KEY-NUM = W-COL-DEP 
                      AND DEP-TRI <> SV-RUP ) 
260412           OR (     W-KEY-NUM = W-COL-FOU
260412                AND FOU-TRI <> SV-RUP ) 
260412           OR (     W-KEY-NUM = W-COL-FAM
260412                AND FAM-TRI <> SV-RUP ) 
090415           OR (     W-KEY-NUM = W-COL-CHC
090415                AND CHC-TRI <> SV-RUP ) 
                 OR W-EOF-TRI = 1 )
           AND (    AFF-QTE-INT = 1 
                 OR AFF-HT-INT  = 1 )     
      *       Rupture 
              IF SV-RUP <> HIGH-VALUE     

                 IF  W-NB-RUP > 1 
                 AND SV-RUP <> SPACE     
      *             Affiche ligne total
                    MOVE "<art>" TO XMLOut-ItemToAdd
                    PERFORM          XMLOut-Append-Tag
                    MOVE "lig" TO XMLOut-TagToAdd
                    MOVE 2     TO XMLOut-DataToAdd
                    PERFORM       XMLOut-Append-TaggedData
      
                    MOVE SV-RUP TO XMLOut-DataToAdd
 
                    SUBTRACT 1 FROM W-KEY-NUM GIVING W-COL
                    PERFORM Col-Imp
      
                    MOVE TOTFAM-QTE TO W-INT-DEC
      
                    IF W-DEC9 <> 0     
                       MOVE TOTFAM-QTE   TO W-PICSZ10VZZ
                       MOVE W-PICSZ10VZZ TO XMLOut-DataToAdd
                    ELSE
                       MOVE TOTFAM-QTE   TO W-PICSZ13
                       MOVE W-PICSZ13    TO XMLOut-DataToAdd
                    END-IF
                    
                    MOVE W-COL-QTE TO W-COL
                    PERFORM Col-Imp

                    MOVE TOTFAM-HT    TO W-PICSZ10VZZ
                    MOVE W-PICSZ10VZZ TO XMLOut-DataToAdd
      
                    MOVE W-COL-HT TO W-COL
                    PERFORM Col-Imp
240918
                    IF TOTFAM-HT <> 0 
                       COMPUTE PMB-LIG ROUNDED = ( 100 * TOTFAM-MAR )
                                               / TOTFAM-HT
                       MOVE PMB-LIG      TO W-PICSZ10VZZ
                       MOVE W-PICSZ10VZZ TO XMLOut-DataToAdd
                       COMPUTE W-COL = W-COL-MAR - 1
                       PERFORM Col-Imp
                    END-IF
240918
                    MOVE "</art>" TO XMLOut-ItemToAdd
                    PERFORM          XMLOut-Append-Tag
                 ELSE
                    MOVE "lib"        TO XMLOut-TagToAdd
                    MOVE SPACE        TO XMLOut-DataToAdd
                    PERFORM              XMLOut-Append-TaggedData
                 END-IF
      
              END-IF

      *        IF W-EOF-TRI = 1     
      *           EXIT PARAGRAPH               | Lignes déplacées ci-dessous
      *        END-IF

              PERFORM LIB-RUP
              MOVE 0 TO TOTFAM-HT
                        TOTFAM-QTE
                        W-NB-RUP
240918                  TOTFAM-MAR
           END-IF

           IF W-EOF-TRI = 1     
              EXIT PARAGRAPH
           END-IF

           PERFORM Mep-Record
      *    couleur
           IF IND-COL = 0      
              MOVE 1 TO IND-COL
           ELSE 
              MOVE 0 TO IND-COL
           END-IF

           MOVE "<art>" TO XMLOut-ItemToAdd
           PERFORM         XMLOut-Append-Tag
      
           MOVE "lig"   TO XMLOut-TagToAdd
           MOVE 1       TO XMLOut-DataToAdd
           PERFORM         XMLOut-Append-TaggedData
           MOVE "col"   TO XMLOut-TagToAdd
           MOVE IND-COL TO XMLOut-DataToAdd
           PERFORM         XMLOut-Append-TaggedData

           IF ART-MHIV(1:4) NOT NUMERIC THEN
              MOVE ART-MHIV TO COD-MART
              PERFORM LECT-MART
           END-IF

           MOVE 0 TO W-COL

           IF AFF-DSP-INT = 1     
              MOVE Screen1-Gd-1-DSP TO XMLOut-DataToAdd
              PERFORM Add-Col-Imp
           END-IF

           IF AFF-DAT-INT = 1     
              MOVE Screen1-Gd-1-DAT TO XMLOut-DataToAdd
              PERFORM Add-Col-Imp
           END-IF

           IF AFF-ART-INT = 1     
              MOVE Screen1-Gd-1-ART TO XMLOut-DataToAdd
              IF W-PRIM = 1 AND ART-MHIV(1:4) NOT NUMERIC
                 MOVE REF-MART TO XMLOut-DataToAdd                | Si export pour interface PRIM, c'est la référence et non le code article qui est exporté
              END-IF
              PERFORM Add-Col-Imp
           END-IF

           IF AFF-CRF-INT = 1     
              MOVE Screen1-Gd-1-CRF TO XMLOut-DataToAdd
              PERFORM Add-Col-Imp
           END-IF

           IF AFF-DES-INT = 1     
              INSPECT Screen1-Gd-1-DES CONVERTING "'" TO " " | GONNIN pb export csv libellé avec des guillemets
              INSPECT Screen1-Gd-1-DES CONVERTING '"' TO " "
              MOVE Screen1-Gd-1-DES TO XMLOut-DataToAdd
              PERFORM Add-Col-Imp
           END-IF

           IF AFF-QTE-INT = 1     
              MOVE Screen1-Gd-1-QTE TO XMLOut-DataToAdd
              PERFORM Add-Col-Imp
              MOVE W-COL TO W-COL-QTE
           END-IF

           IF AFF-PRI-INT = 1     
              MOVE Screen1-Gd-1-PRI TO XMLOut-DataToAdd
              PERFORM Add-Col-Imp
           END-IF

           IF AFF-HT-INT = 1     
              MOVE Screen1-Gd-1-HT  TO XMLOut-DataToAdd
              PERFORM Add-Col-Imp
              MOVE W-COL TO W-COL-HT
           END-IF

           IF AFF-REM-INT = 1     
              MOVE Screen1-Gd-1-REM TO XMLOut-DataToAdd
              PERFORM Add-Col-Imp
           END-IF

           IF AFF-MAR-INT = 1     
              MOVE Screen1-Gd-1-MAR TO XMLOut-DataToAdd
              PERFORM Add-Col-Imp
           END-IF

           IF AFF-REP-INT = 1     
              MOVE Screen1-Gd-1-REP TO XMLOut-DataToAdd
              PERFORM Add-Col-Imp
           END-IF

           IF AFF-ICC-INT = 1     
              MOVE Screen1-Gd-1-ICC TO XMLOut-DataToAdd
              PERFORM Add-Col-Imp
           END-IF

           IF AFF-CLI-INT = 1     
              MOVE Screen1-Gd-1-CLI TO XMLOut-DataToAdd
              PERFORM Add-Col-Imp
           END-IF

           IF AFF-NOM-INT = 1     
              MOVE Screen1-Gd-1-NOM TO XMLOut-DataToAdd
              PERFORM Add-Col-Imp
           END-IF

           IF AFF-VIL-INT = 1     
              MOVE Screen1-Gd-1-VIL TO XMLOut-DataToAdd
              PERFORM Add-Col-Imp
           END-IF

           IF AFF-AGE-INT = 1     
              MOVE Screen1-Gd-1-AGE TO XMLOut-DataToAdd
              PERFORM Add-Col-Imp
           END-IF

           IF AFF-BON-INT = 1     
              MOVE Screen1-Gd-1-BON TO XMLOut-DataToAdd
              PERFORM Add-Col-Imp
           END-IF

           IF AFF-FAC-INT = 1     
              MOVE Screen1-Gd-1-FAC TO XMLOut-DataToAdd
              PERFORM Add-Col-Imp
           END-IF

           IF AFF-MAT-INT = 1     
              MOVE Screen1-Gd-1-MAT TO XMLOut-DataToAdd
              PERFORM Add-Col-Imp
           END-IF

           IF AFF-ORI-INT = 1     
              MOVE Screen1-Gd-1-ORI TO XMLOut-DataToAdd
              PERFORM Add-Col-Imp
           END-IF

           IF AFF-NAF-INT = 1     
              MOVE Screen1-Gd-1-NAF TO XMLOut-DataToAdd
              PERFORM Add-Col-Imp
           END-IF

           IF AFF-DEP-INT = 1     
              MOVE Screen1-Gd-1-DEP TO XMLOut-DataToAdd
              PERFORM Add-Col-Imp
           END-IF

           IF AFF-NVC-INT = 1     
              MOVE Screen1-Gd-1-NVC TO XMLOut-DataToAdd
              PERFORM Add-Col-Imp
           END-IF
141210
           IF AFF-FOU-INT = 1     
              MOVE Screen1-Gd-1-FOU TO XMLOut-DataToAdd
              PERFORM Add-Col-Imp
           END-IF
141210
      
           IF AFF-FAM-INT = 1     
              MOVE Screen1-Gd-1-FAM TO XMLOut-DataToAdd
              PERFORM Add-Col-Imp
           END-IF
      
           IF AFF-RFN-INT = 1     
              MOVE Screen1-Gd-1-RFN TO XMLOut-DataToAdd
              PERFORM Add-Col-Imp
           END-IF
      
           IF AFF-ISA-INT = 1 THEN
              MOVE Screen1-Gd-1-ISA TO XMLOut-DataToAdd
              PERFORM Add-Col-Imp
           END-IF
      
090415
           IF AFF-CHC-INT = 1 THEN
              MOVE Screen1-Gd-1-CHC TO XMLOut-DataToAdd
              PERFORM Add-Col-Imp
           END-IF
090415
           ADD 1 TO W-NB-RUP
      
           MOVE "</art>" TO XMLOut-ItemToAdd
           PERFORM          XMLOut-Append-Tag
           .

       Add-Col-Imp.
      *-----------*
           ADD 1 TO W-COL
           STRING "col" 
                  W-COL 
             DELIMITED BY "     "   |version internationale
             INTO XMLOut-TagToAdd
           PERFORM XMLOut-Append-TaggedData 
           .

       Col-Imp.
      *-------*
           STRING "col" 
                  W-COL 
             DELIMITED BY "     "   |version internationale
             INTO XMLOut-TagToAdd
           PERFORM XMLOut-Append-TaggedData 
           .

       LIB-RUP.
      *-------*
           MOVE SPACE TO W-LIB-RUP

           EVALUATE W-KEY-NUM 
           WHEN W-COL-ART 

              MOVE ART-TRI TO SV-RUP 
                              COD-MART

              READ MXART
              INVALID
                 MOVE SPACE TO DES-MART
              END-READ

              PERFORM STAT

              STRING "TOTAL" 
                     " " 
                     COD-MART 
                     " "      
                     DES-MART DELIMITED BY SIZE
                INTO W-LIB-RUP

           WHEN W-COL-REP 

              MOVE REP-TRI TO SV-RUP 
              STRING "TOTAL" 
                     " " 
                     REP-TRI  DELIMITED BY SIZE
                INTO W-LIB-RUP

           WHEN W-COL-CLI 

              MOVE CLI-TRI TO SV-RUP 
                              COD-MCLI

              IF PCI-MHIV NOT = 0     

                 STRING "TOTAL" 
                        " " 
                        PCI-MHIV 
                        " "      
                        "Cession interne" DELIMITED BY SIZE
                   INTO W-LIB-RUP
              ELSE

                 IF ORI-MHIV = "t"
                            OR "T"     
                    STRING "TOTAL AGENCE" 
                           " " 
                           ATR-MHIV        DELIMITED BY SIZE
                      INTO W-LIB-RUP
                 ELSE
                    READ MXCLI KEY CLE6-MCLI  
                    INVALID
                       INITIALIZE ENR-MCLI
                    END-READ

                    PERFORM STAT

                    STRING "TOTAL" 
                           " " 
                           COD-MCLI 
                           " "      DELIMITED BY SIZE
                           RAI-MCLI DELIMITED BY "  "
                           " "      
                           POS-MCLI 
                           " "      
                           VIL-MCLI DELIMITED BY SIZE
                      INTO W-LIB-RUP
                 END-IF

              END-IF

           WHEN W-COL-MAT

              MOVE MAT-TRI TO SV-RUP 
              STRING "TOTAL" 
                     " " 
                     MAT-TRI  DELIMITED BY SIZE
                INTO W-LIB-RUP

           WHEN W-COL-DSP

              MOVE DSP-TRI(1:4) TO SV-RUP 
              STRING "TOTAL" 
                     " " 
                     DSP-TRI(1:4) DELIMITED BY SIZE
                INTO W-LIB-RUP

           END-EVALUATE
           .
      *-------------------------------------------------------------------------
      * Screen2 : Interrogation composition article
      *-------------------------------------------------------------------------
      *
       Screen2-AfterInitData.
      *---------------------*
120819     MOVE Screen2-SF-HANDLE TO MCF-HANDLE-FS
120819     PERFORM MisCentreFenetre

           PERFORM Test-Compo

           IF W-TROUVE = 0     

              PERFORM Acu-Screen2-Exit

              EXIT PARAGRAPH

           END-IF

           MODIFY Screen2-Gd-1, 
              MASS-UPDATE 1

           PERFORM 
              UNTIL W-TROUVE = 0

              MOVE SPACE TO Screen2-Gd-1-Record

              MOVE ART-MHIV2 TO Screen2-Gd-1-ART


              IF ART-MHIV2 (1:4) NUMERIC     
                 MOVE DES-MHIV2 TO Screen2-Gd-1-DES
              ELSE
                 
                 IF ART-MHIV2 <> COD-MART     
                    MOVE ART-MHIV2 TO COD-MART

                    PERFORM LECT-MART

                 END-IF

                 MOVE SPACE TO Screen2-Gd-1-DES
                 STRING DES-MART " " DE2-MART
                     DELIMITED BY SIZE INTO Screen2-Gd-1-DES
              END-IF

              IF ISQ-MHIV2 = 1     
                 MOVE "Régul" TO Screen2-Gd-1-QTE
              ELSE
                 MOVE QTE-MHIV2 TO W-INT-DEC

                 IF W-DEC9 <> 0     
                    MOVE QTE-MHIV2    TO W-PICSZ10VZZ
                    MOVE W-PICSZ10VZZ TO Screen2-Gd-1-QTE
                 ELSE
                    MOVE QTE-MHIV2    TO W-PICSZ13
                    MOVE W-PICSZ13    TO Screen2-Gd-1-QTE
                 END-IF

              END-IF

              IF INO-MHIV2 = 3     
                 MOVE "N" TO Screen2-Gd-1-INO
              END-IF

              MODIFY Screen2-Gd-1, 
                 RECORD-TO-ADD Screen2-Gd-1-Record

              READ MXHISVTE2 NEXT
              AT END
                 MOVE 0 TO W-TROUVE
              END-READ

              PERFORM STAT

              IF SV-AGE <> AGE-MHIV2 
              OR SV-ORI <> ORI-MHIV2 
              OR SV-BLO <> BLO-MHIV2
              OR SV-LIG <> LIG-MHIV2     
                 MOVE 0 TO W-TROUVE
              END-IF

           END-PERFORM

           MODIFY Screen2-Gd-1, 
              MASS-UPDATE 0
           .

       Screen2-Gd-1-Ev-Msg-Begin-Entry.

      *-------------------------------*

           MOVE Event-Action-Fail TO Event-Action
           .
      *
       Screen2-Pb-Quit-Link.
      *--------------------*
           PERFORM Acu-Screen2-EXIT
           .
           
       Screen2-Ev-Cmd-Close.
      *--------------------*
           PERFORM Mistral-WindowClosing
           .

       Patienter-Debut.
      *---------------*
120819*     COPY "../../mistral/copy/Mis-Patienter-Debut.cbl".
120819     COPY "../../mistral/copy/Mis-Patienter-Debut-Centre.cbl".
           .

       Patienter-Fin.
      *-------------*
           COPY "../../mistral/copy/Mis-Patienter-Fin.cbl".
           .
      ******************************************************************
       Assign-INT.
           IF ASSIGN-INT NOT = SPACE EXIT PARAGRAPH
           END-IF

           MOVE "HIV-INT-" TO WASS-INT

           COPY "../../mx/copy/Assign-FICTMP.cbl" REPLACING 
                ==FICTMP==   BY ==INTSEL==
                =='FICTMP'== BY ==INTSEL==.
           .
       LECT-BON.
           MOVE 0 TO W-BON
           EVALUATE ORI-MHIV
           when "D"
              open i-o mxbdis
              perform stat
              move space to lk-sbd-c
              move "I" to lk-sbd-c-cho
              move age-mhiv to age-mbdi lk-sbd-c-age
              move bon-mhiv to bon-mbdi lk-sbd-c-bon
              read mxbdis invalid close mxbdis 
                                  exit paragraph
              end-read
              perform stat
              close mxbdis
              move 1 to w-bon
              if w-aff = 1 
                 call "../../mx/o/sbd-c.acu" using zone-palm lk-sbd-c
                 cancel "../../mx/o/sbd-c.acu"
              end-if
           end-evaluate.

       Rech-Serie.
       F-rech-Serie.
   

       

      *{Bench}end
       REPORT-COMPOSER SECTION.
