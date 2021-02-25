      *{Bench}prg-comment
      * mbdi-l.cbl
      * mbdi-l.cbl is generated from W:\mx\spro\mbdi-l.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. mbdi-l.
       AUTHOR. fatima-zahra.selouan.
       DATE-WRITTEN. mardi 21 juillet 2020 14:05:27.
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
       COPY "../../mx/fdt/SL-MBDI-L.cpy".
      *{Bench}file-control
       COPY "COBCAP.sl".
       COPY "MXCLI.sl".
       COPY "MXBDIS.sl".
       COPY "MXART.sl".
       COPY "MXPREGEN.sl".
       COPY "MXLDIS.sl".
       COPY "MXAGENCE.sl".
       COPY "RECH.sl".
       COPY "RECHCMD.sl".
       COPY "MXARTSA.sl".
      *{Bench}end
       DATA                        DIVISION.
       FILE                        SECTION.
       COPY "../../mx/fdt/FD-MBDI-L.cpy".
      *{Bench}file
       COPY "COBCAP.fd".
       COPY "MXCLI.fd".
       COPY "MXBDIS.fd".
       COPY "MXART.fd".
       COPY "MXPREGEN.fd".
       COPY "MXLDIS.fd".
       COPY "MXAGENCE.fd".
       COPY "RECH.fd".
       COPY "RECHCMD.fd".
       COPY "MXARTSA.fd".
      *{Bench}end
       WORKING-STORAGE             SECTION.
      *{Bench}acu-def
       COPY "acugui.def".
       COPY "acucobol.def".
       COPY "crtvars.def".
       COPY "palette.def".
       COPY "showmsg.def".
      *{Bench}end

      *{Bench}copy-working                                                                                                                                                                                                                                       
       77 Key-Status IS SPECIAL-NAMES CRT STATUS PIC 9(5) VALUE 0.
           88 Exit-Pushed VALUE 27.
           88 Message-Received VALUE 95.
           88 Event-Occurred VALUE 96.
      * property-defined variable

      * user-defined variable
           COPY  "cobcap.wrk".
           COPY  "LK-MCDV-L.wrk".
           COPY  "LK-MCLI-L.wrk".
           COPY  "Ef-Pos.wrk".
           COPY  "LK-SBD-C.wrk".
           COPY  "Mis-Patienter.wrk".
           COPY  "rech.wrk".
       77 Screen1-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 Default-Font
                  USAGE IS HANDLE OF FONT DEFAULT-FONT.
       77 Small-Font
                  USAGE IS HANDLE OF FONT SMALL-FONT.
       77 TRIERAE10-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TRIERDE10-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Screen1-Gd-1-Cursor-Y-Old    PIC  9(5).
       01 Screen1-Gd-1-Record.
           05 Screen1-Gd-1-Sel PIC  X(1).
           05 Screen1-Gd-1-DAT PIC  X(8).
           05 Screen1-Gd-1-Age PIC  X(2).
           05 Screen1-Gd-1-BON PIC  Z(8).
           05 Screen1-Gd-1-TYC PIC  X(3).
           05 Screen1-Gd-1-Rai PIC  X(28).
           05 Screen1-Gd-1-Pos PIC  X(08).
           05 Screen1-Gd-1-Vil PIC  X(30).
           05 Screen1-Gd-1-TRA PIC  X.
           05 Screen1-Gd-1-Codage          PIC  X(3).
           05 Screen1-Gd-1-Fac PIC  X(10).
           05 Screen1-Gd-1-Dfa PIC  X(8).
       77 FILE-STATUS      PIC  X(2).
       77 Tmp-9-3          PIC  9(6).
       77 W-KEY-ORDER      PIC  X(1)
                  VALUE IS "A".
       77 W-KEY-IS         PIC  S9(2)
                  VALUE IS 1.
       77 W-KEY-IS-Old     PIC  S9(2)
                  VALUE IS 1.
       77 W-INIT           PIC  S9(2)
                  VALUE IS 0.
       77 VALIDER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ANNULER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ASSIGN-MBDI-L-TRI            PIC  X(60).
       77 WASS-MBDI-L-TRI  PIC  X(20)
                  VALUE IS "MBDI-L-TRI".
       77 W-LOG-PALM       PIC  9(3).
       77 W-NPR-PALM       PIC  9(3).
       77 ZOOMxxx12-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ENGRSIM16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TRIERAD10-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TRIERDD10-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 WCHO PIC  S9(1)
                  VALUE IS 1.
       77 W-IND            PIC  S9(1)
                  VALUE IS 0.
       77 W-CLI            PIC  9(6).
       77 W-CDV            PIC  9(6).
       77 W-FCO            PIC  9(8).
       77 Af-Pos           PIC  X(8).
       77 PAYS-FILE-STATUS PIC  X(2).
           88 Valid-PAYS VALUE IS "00" THRU "09". 
       77 WTIT PIC  X(80)
                  VALUE IS "Liste des bons de distribution".
       77 WVISIBLE-FAC     PIC  9
                  VALUE IS 1.
       77 WVISIBLE-FR      PIC  9
                  VALUE IS 1.
       77 W-IND-FAC        PIC  9
                  VALUE IS 0.
       77 WVISIBLE-FCO     PIC  9
                  VALUE IS 1.
       77 Screen1-Mn-1-Handle
                  USAGE IS HANDLE OF MENU VALUE NULL.
       77 ENGRDOU16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ENGRDOU24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 S    PIC  X(50).
       77 W-Count          PIC  9(3).
       77 A3   PIC  ZZZ.
       77 COL-CLI          PIC  99.
       77 COL-BON          PIC  99.
       77 COL-DAT          PIC  99.
       77 COL-VIL          PIC  99.
       77 COL-STA          PIC  99.
       77 PREML            PIC  9.
       77 W-LIV            PIC  9.
       77 W-NLIV           PIC  9.
       77 VALIDER16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-SEL            PIC  9.
       77 W-Controle       PIC  9(3).
       77 VALIDER12-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 I    PIC  9(3).
       77 DxOPENx16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 DxEDITE16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 DxLOCKx16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 DxUNKNO16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 DxCHECK16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TMP-9-32         PIC  9(6).
       77 DxVALID16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 DxSAISI16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 DxFLAGx16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 PXLRESE16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 PXBRESE16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 PXBCTRA16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 PXLCTRA16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 QUITTER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 DxREFRx16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 PXVCTRA16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 PXOCTRA16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 WV-devis         PIC  9
                  VALUE IS 0.
       77 WV-BON           PIC  9
                  VALUE IS 0.
       77 WV-CDE           PIC  9
                  VALUE IS 0.
      *
      *
       77 ASSIGN-RECH      PIC  X(60).
       77 WASS-RECH        PIC  X(20)
                  VALUE IS "RECH-SBD".
      *
      *
       77 ASSIGN-RECHCMD   PIC  X(60).
       77 RETOURP16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 WV-Valider       PIC  9
                  VALUE IS 1.
       77 W-PICS7          PIC  -(6)9.
       77 WV-TOTAL         PIC  9
                  VALUE IS 0.
       77 W-TOTAL          PIC  S9(10)V99.
       77 W-PICS10         PIC  -(9)9.
       77 DxLOCKx16-bmp    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 DxVALID16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 DxOPENx16-bmp    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 icon-trier       PIC  X(30)
                  VALUE IS "".
       77 SORTUP-JPG       PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Capture-JPG      PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 flechebas-jpg    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 flechebasnoir-jpg            PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 flecheHautnoir-jpg           PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 flechebasbleu-jpg            PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 flechehautbleu-jpg           PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 arrow-up-blue-full-bmp       PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 arrow-down-blue-bmp          PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 arrow-down-blue-full-bmp     PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 arrow-up-blue-bmp            PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.

      *{Bench}end
       LINKAGE                     SECTION.
      *{Bench}linkage
       77 LK-ZONE-PALM     PIC  X(500).
           COPY  "LK-MBDI-L.WRK".
      *{Bench}end
       SCREEN                      SECTION.
       COPY "W:/mistral/copy/Mis-Patienter-Screen.cpy".
      *{Bench}copy-screen
       01 Screen1.
           03 Screen1-Pb-Lancer, Push-Button, 
              COL 125,00, LINE 1,92, LINES 24, SIZE 118, 
              BITMAP-HANDLE ENGRDOU24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              ID IS 16, SELF-ACT, DEFAULT-BUTTON, 
              TERMINATION-VALUE 9859, 
              TITLE "Lancer la recherche", 
              ATW-CSS-CLASS "button-rechercher".
           03 Screen1-Gd-1, Grid, 
              COL 2,00, LINE 10,54, LINES 32,38 CELLS, 
              SIZE 177,86 CELLS, 
              3-D, CENTERED-HEADINGS, COLOR IS 2, COLUMN-HEADINGS, 
              DATA-COLUMNS (1, 2, 10, 12, 20, 23, 51, 59, 89, 90, 93,
              103), 
              DISPLAY-COLUMNS (1, 4, 14, 19, 29, 32, 62, 72, 107, 110,
              110, 118), 
              ALIGNMENT ("U", "C", "U", "U", "C", "U", "U", "U", "U", "U
      -       "", "U", "U"), 
              DATA-TYPES ("X", "X(8)", "XX", "9(8)", "X", "X(28)", "X(8)
      -       "", "X(25)", "X", "XXX", "X", "X"), 
              SEPARATION (5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5), 
              COLUMN-DIVIDERS (1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1), 
              CURSOR-FRAME-WIDTH 0, DIVIDER-COLOR W-Divider-Color, 
              END-COLOR W-End-Color, FONT IS Small-Font, 
              HEADING-COLOR W-Heading-Color, 
              HEADING-DIVIDER-COLOR W-Heading-Divider-Color, ID IS 1, 
              NO-TAB, NUM-COL-HEADINGS 1, NUM-ROWS w-num-rows, 
              RECORD-DATA Screen1-Gd-1-Record, TILED-HEADINGS, 
              VPADDING 50, VSCROLL, ATW-CSS-CLASS "table", 
              EVENT PROCEDURE Screen1-Gd-1-Event-Proc.
           03 Screen1-Fr-2, Frame, 
              COL 120,43, LINE 7,31, LINES 2,62 CELLS, 
              SIZE 18,00 CELLS, 
              COLOR IS 9, FILL-COLOR 16, FILL-PERCENT 100, 
              FONT IS Small-Font, ID IS 8, VISIBLE WVISIBLE-FAC, 
              BACKGROUND-LOW, ATW-CSS-CLASS "card-bottom".
           03 Screen1-Fr-1, Frame, 
              COL 2,14, LINE 1,38, LINES 8,54 CELLS, SIZE 36,14 CELLS, 
              COLOR IS 9, FILL-COLOR 16, FILL-PERCENT 100, 
              FONT IS Small-Font, ID IS 6, BACKGROUND-LOW, 
              ATW-CSS-CLASS "card".
           03 Screen1-Pb-Accept, Push-Button, 
              COL 143,43, LINE 1,92, LINES 24, SIZE 118, 
              BITMAP-HANDLE VALIDER24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 9858, ID IS 2, NO-AUTO-DEFAULT, NO-TAB, 
              SELF-ACT, 
              TITLE "Accepter", VISIBLE WV-Valider, 
              ATW-CSS-CLASS "button-valider", 
              EXCEPTION PROCEDURE Screen1-Pb-Accept-Exception-Proc.
           03 Screen1-Pb-Cancel, Push-Button, 
              COL 161,86, LINE 1,92, LINES 24, SIZE 118, 
              BITMAP-HANDLE QUITTER24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 9841, ID IS 3, NO-AUTO-DEFAULT, NO-TAB, 
              SELF-ACT, 
              TITLE "Quitter sans sélection", 
              ATW-CSS-CLASS "button-quitter", 
              EXCEPTION PROCEDURE Screen1-Pb-Cancel-Exception-Proc.
           03 Screen1-Rb-1, Radio-Button, 
              COL 3,86, LINE 3,00, LINES 1,23 CELLS, SIZE 22,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 1, 
              ID IS 4, 
              TITLE "Tous les clients", VALUE WCHO, 
              EVENT PROCEDURE Screen1-Rb-1-Event-Proc.
           03 Screen1-Rb-2, Radio-Button, 
              COL 3,86, LINE 5,23, LINES 1,23 CELLS, SIZE 22,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 2, 
              ID IS 5, TERMINATION-VALUE 3201, 
              TITLE "Un client", VALUE WCHO, 
              EVENT PROCEDURE Screen1-Rb-2-Event-Proc.
           03 Screen1-Cb-Fac, Check-Box, 
              COL 121,86, LINE 8,15, LINES 1,23 CELLS, 
              SIZE 16,00 CELLS, 
              COLOR IS 514, EXCEPTION-VALUE 1224, FONT IS Small-Font, 
              ID IS 7, 
              TITLE "Bons facturés", VALUE W-IND-FAC, 
              VISIBLE WVISIBLE-FAC.
           03 Screen1-Fr-1a, Frame, 
              COL 39,29, LINE 1,38, LINES 8,54 CELLS, SIZE 80,29 CELLS, 
              COLOR IS 9, FILL-COLOR 16, FILL-PERCENT 100, 
              FONT IS Small-Font, ID IS 9, BACKGROUND-LOW, 
              ATW-CSS-CLASS "card".
           03 Screen1-Ef-Cli, Entry-Field, 
              COL 41,00, LINE 2,92, LINES 2,46 CELLS, SIZE 11,43 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 10, 
              EVENT PROCEDURE Screen1-Ef-Cli-Event-Proc.
           03 Screen1-Ef-Rai, Entry-Field, 
              COL 54,71, LINE 2,85, LINES 2,46 CELLS, SIZE 35,71 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 11.
           03 Screen1-Pb-Liste, Push-Button, 
              COL 112,86, LINE 3,38, LINES 24, SIZE 24, 
              BITMAP-HANDLE ZOOMxxx12-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              ENABLED 0, EXCEPTION-VALUE 1002, ID IS 12, SELF-ACT, 
              TITLE "Liste des clients", 
              ATW-CSS-CLASS "button-icon fa-search".
           03 Screen1-Rb-3, Radio-Button, 
              COL 3,86, LINE 7,46, LINES 1,23 CELLS, SIZE 22,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 3, 
              ID IS 13, TERMINATION-VALUE 3202, 
              TITLE "Un prospect", VALUE WCHO, VISIBLE WVISIBLE-FCO, 
              EVENT PROCEDURE Screen1-Rb-3-Event-Proc.
           03 Screen1-Ef-Vil, Entry-Field, 
              COL 54,71, LINE 6,46, LINES 2,46 CELLS, SIZE 35,71 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 14.
           03 Screen1-Ef-Pos, Entry-Field, 
              COL 41,14, LINE 6,46, LINES 2,46 CELLS, SIZE 11,43 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 15.
           03 Screen1-Bt-1, Bitmap, 
              COL 58,14, LINE 1,38, LINES 16, SIZE 10, 
              BITMAP-HANDLE flechebasnoir-jpg, BITMAP-NUMBER 1, 
              ID IS 17, VISIBLE 0.
           03 Screen1-Bt-2, Bitmap, 
              COL 59,57, LINE 1,38, LINES 16, SIZE 10, 
              BITMAP-HANDLE flechebasbleu-jpg, BITMAP-NUMBER 1, 
              ID IS 18, VISIBLE 0.
           03 Screen1-Bt-3, Bitmap, 
              COL 61,00, LINE 1,38, LINES 16, SIZE 10, 
              BITMAP-HANDLE flecheHautnoir-jpg, BITMAP-NUMBER 1, 
              ID IS 19, VISIBLE 0.
           03 Screen1-Bt-4, Bitmap, TRANSPARENT-COLOR 15494240, 
              COL 56,57, LINE 1,38, LINES 16, SIZE 10, 
              BITMAP-HANDLE flechehautbleu-jpg, BITMAP-NUMBER 1, 
              ID IS 20, VISIBLE 0.
           03 Screen1-Bt-5, Bitmap, 
              COL 137,86, LINE 7,15, LINES 16, SIZE 16, 
              BITMAP-HANDLE VALIDER16-BMP, BITMAP-NUMBER 1, 
              ID IS 21, VISIBLE 0.
           03 Screen1-Fr-2a, Frame, 
              COL 2,00, LINE 43,23, LINES 3,23 CELLS, 
              SIZE 177,86 CELLS, 
              COLOR IS 9, FILL-COLOR 16, FILL-PERCENT 100, 
              FONT IS Small-Font, ID IS 31, BACKGROUND-LOW, 
              ATW-CSS-CLASS "card-bottom".
           03 Screen1-Bt-ouv, Bitmap, TRANSPARENT-COLOR 12632256, 
              COL 4,00, LINE 44,38, LINES 16, SIZE 16, 
              BITMAP-HANDLE DxOPENx16-bmp, BITMAP-NUMBER 1, 
              ID IS 26, VISIBLE WV-BON.
           03 Screen1-La-Ouv, Label, 
              COL 7,00, LINE 44,54, LINES 1,00 CELLS, SIZE 15,43 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 27, 
              LABEL-OFFSET 0, 
              TITLE "Bon ouvert", TRANSPARENT, VISIBLE WV-BON.
           03 Screen1-Bt-cde, Bitmap, 
              COL 3,71, LINE 44,38, LINES 16, SIZE 16, 
              BITMAP-HANDLE PXBCTRA16-BMP, BITMAP-NUMBER 1, 
              ID IS 24, VISIBLE WV-CDE.
           03 Screen1-La-clo, Label, 
              COL 25,00, LINE 44,54, LINES 1,00 CELLS, 
              SIZE 15,43 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 29, 
              LABEL-OFFSET 0, 
              TITLE "Bon à facturer", TRANSPARENT, VISIBLE WV-BON.
           03 Screen1-Bt-FAC, Bitmap, 
              COL 41,86, LINE 44,38, LINES 16, SIZE 16, 
              BITMAP-HANDLE DxLOCKx16-bmp, BITMAP-NUMBER 1, 
              ID IS 25, VISIBLE WV-BON.
           03 Screen1-La-FAC, Label, 
              COL 45,00, LINE 44,54, LINES 1,00 CELLS, 
              SIZE 15,43 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 28, 
              LABEL-OFFSET 0, 
              TITLE "Bon facturé", TRANSPARENT, VISIBLE WV-BON.
           03 Screen1-Bt-devis, Bitmap, 
              COL 95,86, LINE 44,38, LINES 16, SIZE 16, 
              BITMAP-HANDLE PXBRESE16-BMP, BITMAP-NUMBER 1, 
              ID IS 32, VISIBLE WV-devis.
           03 Screen1-Bt-clo, Bitmap, 
              COL 21,86, LINE 44,38, LINES 16, SIZE 16, 
              BITMAP-HANDLE DxVALID16-BMP, BITMAP-NUMBER 1, 
              ID IS 30, VISIBLE WV-BON.
           03 Screen1-La-cde, Label, 
              COL 16,86, LINE 44,54, LINES 1,00 CELLS, 
              SIZE 29,86 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 34, 
              LABEL-OFFSET 0, 
              TITLE "Commande (en cours/à servir)", TRANSPARENT, 
              VISIBLE WV-CDE.
           03 Screen1-Bt-2a, Bitmap, 
              COL 141,57, LINE 7,23, LINES 10, SIZE 16, 
              BITMAP-HANDLE PXLCTRA16-BMP, BITMAP-NUMBER 1, 
              ID IS 22, VISIBLE 0.
           03 Screen1-Bt-3a, Bitmap, 
              COL 146,43, LINE 10,54, LINES 8, SIZE 23, 
              BITMAP-HANDLE PXLRESE16-BMP, BITMAP-NUMBER 1, 
              ID IS 23, VISIBLE 0.
           03 Screen1-Bt-TRA, Bitmap, 
              COL 58,29, LINE 44,31, LINES 16, SIZE 16, 
              BITMAP-HANDLE DxREFRx16-JPG, BITMAP-NUMBER 1, 
              ID IS 35, VISIBLE 0.
           03 Screen1-La-TRA, Label, 
              COL 61,14, LINE 44,54, LINES 1,00 CELLS, SIZE 9,86 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 36, 
              LABEL-OFFSET 0, 
              TITLE "Bon transféré", TRANSPARENT, VISIBLE 0.
           03 Screen1-Bt-CDESTO, Bitmap, 
              COL 12,57, LINE 44,38, LINES 16, SIZE 16, 
              BITMAP-HANDLE PXVCTRA16-BMP, BITMAP-NUMBER 1, 
              ID IS 37, VISIBLE WV-CDE.
           03 Screen1-Bt-PXP, Bitmap, 
              COL 8,14, LINE 44,38, LINES 16, SIZE 15, 
              BITMAP-HANDLE PXOCTRA16-BMP, BITMAP-NUMBER 1, 
              ID IS 39, VISIBLE WV-CDE.
           03 Screen1-Bt-1a, Bitmap, 
              COL 134,29, LINE 7,23, LINES 16, SIZE 16, 
              BITMAP-HANDLE RETOURP16-JPG, BITMAP-NUMBER 1, 
              ID IS 38, VISIBLE 0.
           03 Screen1-La-devis, Label, 
              COL 98,57, LINE 44,54, LINES 1,00 CELLS, 
              SIZE 11,29 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 33, 
              LABEL-OFFSET 0, 
              TITLE "Devis", TRANSPARENT, VISIBLE WV-devis.
           03 Screen1-La-TOTAL, Label, 
              COL 72,57, LINE 44,54, LINES 1,38 CELLS, SIZE 5,29 CELLS, 
              COLOR IS 2, FONT IS Default-Font, ID IS 40, 
              LABEL-OFFSET 0, 
              TITLE "Total", TRANSPARENT, VISIBLE WV-TOTAL.
           03 Screen1-La-MON, Label, 
              COL 79,71, LINE 44,54, LINES 1,38 CELLS, SIZE 9,14 CELLS, 
              COLOR IS 2, FONT IS Default-Font, ID IS 41, RIGHT, 
              LABEL-OFFSET 0, TRANSPARENT, VISIBLE WV-TOTAL.

      *{Bench}end

      *{Bench}linkpara
       PROCEDURE DIVISION USING LK-ZONE-PALM, LK-MBDI-L.
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
      * load bitmap
           PERFORM Acu-Init-Bmp
      * create pop-up menu
           PERFORM Acu-Init-Popup
      * open file
           PERFORM Acu-Open-Files
      *    After-Init
           .

       Acu-Init-Bmp.
      * bitmap loading
           COPY RESOURCE "ENGRDOU24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ENGRDOU24.JPG", GIVING 
              ENGRDOU24-JPG
           COPY RESOURCE "VALIDER24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "VALIDER24.JPG", GIVING 
              VALIDER24-JPG
           COPY RESOURCE "QUITTER24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "QUITTER24.JPG", GIVING 
              QUITTER24-JPG
           COPY RESOURCE "ZOOMxxx12.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ZOOMxxx12.JPG", GIVING 
              ZOOMxxx12-JPG
           COPY RESOURCE "W:\mx\resource\flechebasnoir.jpg".
           CALL "W$BITMAP" USING WBITMAP-LOAD "flechebasnoir.jpg", 
              GIVING flechebasnoir-jpg
           COPY RESOURCE "W:\mx\resource\flechebasbleu.jpg".
           CALL "W$BITMAP" USING WBITMAP-LOAD "flechebasbleu.jpg", 
              GIVING flechebasbleu-jpg
           COPY RESOURCE "W:\mx\resource\flecheHautnoir.jpg".
           CALL "W$BITMAP" USING WBITMAP-LOAD "flecheHautnoir.jpg", 
              GIVING flecheHautnoir-jpg
           COPY RESOURCE "W:\mx\resource\flechehautbleu.jpg".
           CALL "W$BITMAP" USING WBITMAP-LOAD "flechehautbleu.jpg", 
              GIVING flechehautbleu-jpg
           COPY RESOURCE "VALIDER16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "VALIDER16.BMP", GIVING 
              VALIDER16-BMP
           COPY RESOURCE "DxOPENx16.bmp".
           CALL "W$BITMAP" USING WBITMAP-LOAD "DxOPENx16.bmp", GIVING 
              DxOPENx16-bmp
           COPY RESOURCE "PXBCTRA16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "PXBCTRA16.BMP", GIVING 
              PXBCTRA16-BMP
           COPY RESOURCE "DxLOCKx16.bmp".
           CALL "W$BITMAP" USING WBITMAP-LOAD "DxLOCKx16.bmp", GIVING 
              DxLOCKx16-bmp
           COPY RESOURCE "PXBRESE16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "PXBRESE16.BMP", GIVING 
              PXBRESE16-BMP
           COPY RESOURCE "DxVALID16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "DxVALID16.BMP", GIVING 
              DxVALID16-BMP
           COPY RESOURCE "PXLCTRA16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "PXLCTRA16.BMP", GIVING 
              PXLCTRA16-BMP
           COPY RESOURCE "PXLRESE16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "PXLRESE16.BMP", GIVING 
              PXLRESE16-BMP
           COPY RESOURCE "DxREFRx16.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "DxREFRx16.JPG", GIVING 
              DxREFRx16-JPG
           COPY RESOURCE "PXVCTRA16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "PXVCTRA16.BMP", GIVING 
              PXVCTRA16-BMP
           COPY RESOURCE "PXOCTRA16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "PXOCTRA16.BMP", GIVING 
              PXOCTRA16-BMP
           COPY RESOURCE "RETOURP16.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "RETOURP16.JPG", GIVING 
              RETOURP16-JPG
           .

       Acu-Init-Popup.
           PERFORM Acu-Screen1-Mn-1-Menu
           MOVE Menu-Handle TO Screen1-Mn-1-Handle
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
           .

       Acu-Exit-Bmp.
      * bitmap destroy
           IF ENGRDOU24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ENGRDOU24-JPG
              MOVE 0 TO ENGRDOU24-JPG
           END-IF
           IF VALIDER24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY VALIDER24-JPG
              MOVE 0 TO VALIDER24-JPG
           END-IF
           IF QUITTER24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY QUITTER24-JPG
              MOVE 0 TO QUITTER24-JPG
           END-IF
           IF ZOOMxxx12-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ZOOMxxx12-JPG
              MOVE 0 TO ZOOMxxx12-JPG
           END-IF
           IF flechebasnoir-jpg NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY flechebasnoir-jpg
              MOVE 0 TO flechebasnoir-jpg
           END-IF
           IF flechebasbleu-jpg NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY flechebasbleu-jpg
              MOVE 0 TO flechebasbleu-jpg
           END-IF
           IF flecheHautnoir-jpg NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY flecheHautnoir-jpg
              MOVE 0 TO flecheHautnoir-jpg
           END-IF
           IF flechehautbleu-jpg NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY flechehautbleu-jpg
              MOVE 0 TO flechehautbleu-jpg
           END-IF
           IF VALIDER16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY VALIDER16-BMP
              MOVE 0 TO VALIDER16-BMP
           END-IF
           IF DxOPENx16-bmp NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY DxOPENx16-bmp
              MOVE 0 TO DxOPENx16-bmp
           END-IF
           IF PXBCTRA16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY PXBCTRA16-BMP
              MOVE 0 TO PXBCTRA16-BMP
           END-IF
           IF DxLOCKx16-bmp NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY DxLOCKx16-bmp
              MOVE 0 TO DxLOCKx16-bmp
           END-IF
           IF PXBRESE16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY PXBRESE16-BMP
              MOVE 0 TO PXBRESE16-BMP
           END-IF
           IF DxVALID16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY DxVALID16-BMP
              MOVE 0 TO DxVALID16-BMP
           END-IF
           IF PXLCTRA16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY PXLCTRA16-BMP
              MOVE 0 TO PXLCTRA16-BMP
           END-IF
           IF PXLRESE16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY PXLRESE16-BMP
              MOVE 0 TO PXLRESE16-BMP
           END-IF
           IF DxREFRx16-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY DxREFRx16-JPG
              MOVE 0 TO DxREFRx16-JPG
           END-IF
           IF PXVCTRA16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY PXVCTRA16-BMP
              MOVE 0 TO PXVCTRA16-BMP
           END-IF
           IF PXOCTRA16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY PXOCTRA16-BMP
              MOVE 0 TO PXOCTRA16-BMP
           END-IF
           IF RETOURP16-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY RETOURP16-JPG
              MOVE 0 TO RETOURP16-JPG
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

       Acu-Screen1-Scrn.
           PERFORM Acu-Screen1-Create-Win
           PERFORM Acu-Screen1-Init-Data
           .

       Acu-Screen1-Create-Win.
           PERFORM Screen1-Bef-Create
      * display screen
              DISPLAY Floating GRAPHICAL WINDOW
                 LINES 46,77, SIZE 181,00, CELL HEIGHT 13, 
                 CELL WIDTH 7, COLOR IS 65793, LABEL-OFFSET 0, 
                 LINK TO THREAD, NO SCROLL, TITLE WTIT, TITLE-BAR, 
                 USER-GRAY, USER-WHITE, VISIBLE 0, NO WRAP, 
                 ATW-CSS-ID "modal_screen_mbdi_l", 
                 EVENT PROCEDURE Screen1-Event-Proc, 
                 HANDLE IS Screen1-Handle
      * toolbar
           DISPLAY Screen1 UPON Screen1-Handle
      *    After-Create
           .

       Acu-Screen1-Init-Data.
      *    Before-Initdata
           PERFORM Acu-Screen1-Gd-1-Content
           PERFORM Screen1-AfterInitData
           .
      * Screen1
       Acu-Screen1-Proc.
           PERFORM UNTIL Exit-Pushed
              ACCEPT Screen1  
                 ON EXCEPTION PERFORM Acu-Screen1-Evaluate-Func
              END-ACCEPT
              EVALUATE TRUE
      * Screen1-Pb-Lancer Link To
              WHEN Key-Status = 9859
                 PERFORM Screen1-Pb-Lancer-Link
      * Screen1-Rb-2 Link To
              WHEN Key-Status = 3201
                 PERFORM Screen1-Rb-2-Link
      * Screen1-Rb-3 Link To
              WHEN Key-Status = 3202
                 PERFORM Screen1-Rb-3-Link
              END-EVALUATE
           END-PERFORM
           DESTROY Screen1-Handle
           INITIALIZE Key-Status
           .

      * Screen1-Gd-1
       Acu-Screen1-Gd-1-Content.
      * Cells Settings
           MODIFY Screen1-Gd-1, X = 1, Y = 1, 
              CELL-COLOR = W-Heading-Color, CELL-FONT = Small-Font, 
           MODIFY Screen1-Gd-1, X = 2, Y = 1, 
              CELL-COLOR = W-Heading-Color, CELL-FONT = Small-Font, 
           MODIFY Screen1-Gd-1, X = 3, Y = 1, 
              CELL-COLOR = W-Heading-Color, CELL-FONT = Small-Font, 
           MODIFY Screen1-Gd-1, X = 4, Y = 1, 
              CELL-COLOR = W-Heading-Color, CELL-FONT = Small-Font, 
           MODIFY Screen1-Gd-1, X = 5, Y = 1, CELL-FONT = Small-Font, 
           MODIFY Screen1-Gd-1, X = 6, Y = 1, CELL-FONT = Small-Font, 
           MODIFY Screen1-Gd-1, X = 7, Y = 1, CELL-FONT = Small-Font, 
           MODIFY Screen1-Gd-1, X = 8, Y = 1, CELL-FONT = Small-Font, 
      * Columns' Setting
           MODIFY Screen1-Gd-1, X = 2, COLUMN-COLOR = 2, X = 2, 
              COLUMN-FONT = Small-Font, 
           MODIFY Screen1-Gd-1, X = 4, COLUMN-COLOR = 2, 
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
      * Screen1-Pb-Accept Link To
              WHEN Key-Status = 9858
                 PERFORM Screen1-Pb-Accept-Ex-Cmd-Clicked
      * Screen1-Pb-Cancel Link To
              WHEN Key-Status = 9841
                 PERFORM Screen1-Pb-Cancel-Ex-Cmd-Clicked
      * Screen1-Cb-Fac Link To
              WHEN Key-Status = 1224
                 PERFORM Screen1-Cb-Fac-Link
      * Screen1-Pb-Liste Link To
              WHEN Key-Status = 1002
                 PERFORM Screen1-Pb-Liste-Link
      * MI-Consultation Link To
              WHEN Key-Status = 1001
                 PERFORM Screen1-Mn-1-MI-Consultation-Link
           END-EVALUATE
           MOVE 1 TO Accept-Control
           .

       Acu-Close-Files.
      *    Before-Close
      *    After-Close
           .

      * COBCAP

      * MXCLI

      * MXBDIS

      * MXART

      * MXPREGEN

      * MXLDIS

      * MXAGENCE

      * RECH

      * RECHCMD

      * MXARTSA

       Acu-Screen1-Exit.
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
              "Consultation", 1001
           .

       Acu-Screen1-Mn-1-Exit.
           MOVE ZERO TO Return-Code.


       Screen1-Event-Proc.
           .

       Screen1-Gd-1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Begin-Entry
              PERFORM Screen1-Gd-1-Ev-Msg-Begin-Entry
           WHEN Msg-End-Drag
              PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell
              PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell-Mouse
              PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Grid-Rbutton-Down
              PERFORM Screen1-Gd-1-Ev-Msg-Grid-Rbutton-Down
           WHEN Msg-Heading-Clicked
              PERFORM Screen1-Gd-1-Ev-Msg-Heading-Clicked
           END-EVALUATE
           .

       Screen1-Pb-Accept-Exception-Proc.
           .

       Screen1-Pb-Cancel-Exception-Proc.
           .

       Screen1-Rb-1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-Rb-1-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-Rb-2-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-Rb-2-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-Ef-Cli-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-Ef-Cli-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-Rb-3-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-Rb-3-Ev-Cmd-Clicked
           END-EVALUATE
           .
      ***   start event editor code   ***
       COPY "../../mistral/copy/envmis.cbl".
090419     COPY "W:/mistral/copy/MisCentrefenetre.cbl".

       INIT-BMP.
         
       OPEN-FILE-RTN.
           OPEN  I-O MXCLI  PERFORM STAT.
           OPEN  I-O MXBDIS PERFORM STAT.
           OPEN  I-O MXART PERFORM STAT.
           OPEN  I-O MXARTSA PERFORM STAT.
           OPEN  I-O MXPREGEN PERFORM STAT.
           OPEN  I-O MXLDIS PERFORM STAT.
           OPEN  INPUT MXAGENCE PERFORM STAT.

       CLOSE-FILE-RTN.
           CLOSE MXCLI MXBDIS MXLDIS MXART MXPREGEN MXARTSA
                 MXAGENCE.
          
       BeforeExit.
           CLOSE MBDI-L-TRI
           DELETE FILE MBDI-L-TRI.

       Creat-Tri.
      * Assignation et ouverture fichier de TRI
           COPY "../../mx/copy/Assign-FICTMP.cbl"
                REPLACING ==FICTMP== BY ==MBDI-L-TRI==
                          =='FICTMP'== BY ==MBDI-L-TRI==.
           close MBDI-L-TRI.

       MBDI-L-TRI-Read-Next.
           IF W-KEY-ORDER = "A"
                READ MBDI-L-TRI NEXT END MOVE 1 TO W-EOF
           ELSE READ MBDI-L-TRI PREVIOUS END MOVE 1 TO W-EOF
           END-IF
           PERFORM STAT
           .

       MBDI-L-TRI-InitStart.
      *    Initialisation du Start:
      *         KEY-IS = 1 --> par date (clé 3)
      *         KEY-IS = 3 --> par n° bon (clé 1)
      *         KEY-IS = 5 --> par raison sociale client (clé 2)
           EVALUATE W-KEY-IS
           WHEN COL-DAT
              IF W-KEY-ORDER = "A"
                 MOVE Low-Value TO CLE3-MBDI-L-TRI
              ELSE
                 MOVE High-Value TO CLE3-MBDI-L-TRI
              END-IF
           WHEN COL-BON
              IF W-KEY-ORDER = "A"
                 MOVE Low-Value TO CLE1-MBDI-L-TRI
              ELSE
                 MOVE High-Value TO CLE1-MBDI-L-TRI
              END-IF
           WHEN COL-CLI
              IF W-KEY-ORDER = "A"
                 MOVE Low-Value TO CLE2-MBDI-L-TRI
              ELSE
                 MOVE High-Value TO CLE2-MBDI-L-TRI
              END-IF
           WHEN COL-STA
              IF W-KEY-ORDER = "A"
                 MOVE Low-Value TO TTYP-MBDI-L-TRI
                                   IFA-MBDI-L-TRI
                                   DAT-MBDI-L-TRI
              ELSE
                 MOVE High-Value TO TTYP-MBDI-L-TRI
                                    IFA-MBDI-L-TRI
                                    DAT-MBDI-L-TRI
              END-IF
           END-EVALUATE
           .

       MBDI-L-TRI-Start.
           MOVE 0 TO W-EOF
           EVALUATE W-KEY-IS
           WHEN COL-DAT
              IF W-KEY-ORDER = "A"
                 START MBDI-L-TRI KEY >= CLE3-MBDI-L-TRI
                       INVALID MOVE 1 TO W-EOF
              ELSE
                 START MBDI-L-TRI KEY <= CLE3-MBDI-L-TRI
                       INVALID MOVE 1 TO W-EOF
              END-IF
           WHEN COL-BON
              IF W-KEY-ORDER = "A"
                 START MBDI-L-TRI KEY >= CLE1-MBDI-L-TRI
                       INVALID MOVE 1 TO W-EOF
              ELSE
                 START MBDI-L-TRI KEY <= CLE1-MBDI-L-TRI
                       INVALID MOVE 1 TO W-EOF
              END-IF
           WHEN COL-CLI
              IF W-KEY-ORDER = "A"
                 START MBDI-L-TRI KEY >= CLE2-MBDI-L-TRI
                       INVALID MOVE 1 TO W-EOF
              ELSE
                 START MBDI-L-TRI KEY <= CLE2-MBDI-L-TRI
                       INVALID MOVE 1 TO W-EOF
              END-IF
           WHEN COL-STA
              IF W-KEY-ORDER = "A"
                 START MBDI-L-TRI KEY >= CLE4-MBDI-L-TRI
                       INVALID MOVE 1 TO W-EOF
              ELSE
                 START MBDI-L-TRI KEY <= CLE4-MBDI-L-TRI
                       INVALID MOVE 1 TO W-EOF
              END-IF
           END-EVALUATE
           .

       Mep-Un-Bl.
           IF (LK-MBDI-L-TYP = 0 AND TYP-MBDI NOT = 0)
           OR (LK-MBDI-L-TYP = 8 AND TYP-MBDI NOT = 8)
           OR (LK-MBDI-L-TYP = 2 AND TYC-MBDI NOT = 7)
           OR (LK-MBDI-L-TYP = 4 AND TYC-MBDI NOT = 1)
           OR (LK-MBDI-L-TYP NOT = 2 AND TYC-MBDI = 7)
           OR (LK-MBDI-L-TYP = 1 AND (TYP-MBDI NOT = 1 AND NOT = 2))
           OR (LK-MBDI-L-TYP = 3 AND TYP-MBDI NOT = 3)
           OR (LK-MBDI-L-TYP = 6 AND (TYP-MBDI NOT = 1 AND NOT = 3))
           OR (LK-MBDI-L-TYP = 7 AND 
                (TYP-MBDI NOT = 0 AND NOT = 8 AND NOT = 1))
           OR (W-IND-FAC = 0 AND TRA-MBDI = 1)
           OR (TYP-MBDI = 9)
110619     OR (LK-MBDI-L-IND = 9 | tout sauf devis filtré sur références client
110619         AND (    TYP-MBDI = 8 
110619               OR LK-MBDI-L-REF1 <> REF-MBDI(1)
110619               OR LK-MBDI-L-REF2 <> REF-MBDI(2)) )
              EXIT PARAGRAPH.

           MOVE SPACES TO ENR-MBDI-L-TRI
           MOVE AGE-MBDI TO AGE-MBDI-L-TRI
           MOVE BON-MBDI TO BON-MBDI-L-TRI
           MOVE DAT-MBDI TO DAT-MBDI-L-TRI
           MOVE TYP-MBDI TO TYP-MBDI-L-TRI
           MOVE TRA-MBDI TO TRA-MBDI-L-TRI
           MOVE IFA-MBDI TO IFA-MBDI-L-TRI
           IF TRA-MBDI = 1
              MOVE DFA-MBDI TO DFA-MBDI-L-TRI
              MOVE AGE-MBDI-L-TRI TO COD-MAGC
              READ MXAGENCE
              PERFORM STAT
              STRING ABR-MAGC FAC-MBDI "/D" DELIMITED BY " " 
              INTO FAC-MBDI-L-TRI
           END-IF

           IF WCHO = 1
              IF CLI-MBDI NOT = 0
                 MOVE SPACE TO ENR-MCLI
                 MOVE CLI-MBDI TO COD-MCLI
                 READ MXCLI KEY CLE6-MCLI
                 PERFORM STAT
              ELSE 
                 MOVE SPACE TO ENR-MCLI
                 MOVE FCO-MBDI TO FCO-MCLI
                 READ MXCLI KEY CLE7-MCLI
                 PERFORM STAT
              END-IF
           END-IF

151110* pour afficher si la commande est livrable
           IF LK-MBDI-L-TYP = 0 AND WCHO = 1
               PERFORM RECH-MXLDIS THRU F-RECH-MXLDIS
           END-IF
           IF WCHO = 1
               MOVE RAI-MCLI TO RAI-MBDI-L-TRI
               MOVE POS-MCLI TO POS-MBDI-L-TRI
               MOVE VIL-MCLI TO VIL-MBDI-L-TRI
           ELSE
               MOVE REF-MBDI(1) TO RAI-MBDI-L-TRI
110619        
               IF LK-MBDI-L-IND = 9 THEN

                  IF TYP-MBDI = 3 THEN
                     COMPUTE MON-MBDI-L-TRI = - TAT-MBDI 
                  ELSE
                     MOVE TAT-MBDI TO MON-MBDI-L-TRI
                  END-IF

               END-IF
110619     
               PERFORM RECH-MXLDIS THRU F-RECH-MXLDIS
           END-IF

171110
           EVALUATE TYP-MBDI 
           WHEN 8 
              MOVE 0 TO TTYP-MBDI-L-TRI
           WHEN 0 
              MOVE 3 TO TTYP-MBDI-L-TRI
              IF W-LIV = 1 AND W-NLIV = 0 MOVE 1 TO TTYP-MBDI-L-TRI
              END-IF
              IF W-LIV = 1 AND W-NLIV = 1 MOVE 2 TO TTYP-MBDI-L-TRI
              END-IF
              IF IRP-MBDI = 1 MOVE 4 TO TTYP-MBDI-L-TRI
              END-IF             
           WHEN OTHER 
              IF IFA-MBDI = 1 MOVE 8 TO TTYP-MBDI-L-TRI | bon à facturer
                         ELSE MOVE 7 TO TTYP-MBDI-L-TRI | bon en attente
              END-IF
           END-EVALUATE
171110

211008     MOVE IES-MBDI TO IES-MBDI-L-TRI

           IF TYC-MBDI = 2
                MOVE "C" TO LTYC-MBDI-L-TRI
           END-IF
           IF TYC-MBDI = 8
                MOVE "F" TO LTYC-MBDI-L-TRI
           END-IF
           IF TYC-MBDI = 1
                MOVE "I" TO LTYC-MBDI-L-TRI
           END-IF
           WRITE ENR-MBDI-L-TRI
           PERFORM STAT
           .

       Screen1-AfterInitData.
090419   
      *     IF LK-MBDI-L-HANDLE <> 0 THEN    
      *        MOVE LK-MBDI-L-HANDLE TO WCF-HANDLE-FP
      *        PERFORM CentreFenetre
      *     ELSE
      *        MODIFY Screen1-Handle,
      *           VISIBLE 1
      *     END-IF
090419
070619     PERFORM MisCentreFenetreScreen1F
           If LK-MBDI-L-MAXSEL > 1
              If LK-MBDI-L-MAXSEL < w-count
                 Move Spaces To s
                 move LK-MBDI-L-MAXSEL to A3
                 String "Nombre de Sélections autorisées : "
                        " " A3 Delimited By Size  
                 Into s
      *           Modify Screen1-La-maxsel, Title Is s
              End-If
      *        Modify Screen1-Pb-Check,   Visible = True
      *        Modify Screen1-Pb-Uncheck, Visible = True
      *        Modify Screen1-Pb-Invert,  Visible = True
      *     Else
      *        Modify Screen1-Pb-Unselect, Visible = True
           End-If        
           IF LK-MBDI-L-STA = 2
              move 1 to W-IND-FAC
              modify Screen1-Cb-Fac, VALUE W-IND-FAC
           end-if
           IF LK-MBDI-L-STA = 1
              move 1 to W-IND-FAC
              modify Screen1-Cb-Fac, VALUE W-IND-FAC, ENABLED 0
           end-if
           PERFORM AdaptGrid
           MOVE COL-DAT TO W-KEY-IS W-KEY-IS-Old
           IF LK-MBDI-L-TYP = 7
              MOVE COL-STA TO W-KEY-IS W-KEY-IS-Old
           END-IF
           PERFORM Creat-Tri
           CLOSE MBDI-L-TRI.
           IF (WCHO = 2 AND LK-MBDI-L-CLI NOT = 0)
           OR (WCHO = 3 AND LK-MBDI-L-FCO NOT = 0 AND NOT = SPACE)
              MODIFY Screen1-Pb-Lancer, VISIBLE FALSE
              MODIFY Screen1-Rb-1, ENABLED FALSE
              MODIFY Screen1-Rb-2, ENABLED FALSE
              MODIFY Screen1-Rb-3, ENABLED FALSE.
           IF WCHO = 2 AND LK-MBDI-L-CLI NOT = 0
              MODIFY Screen1-Ef-Cli, VALUE LK-MBDI-L-CLI
              PERFORM Screen1-Ef-Cli-Ev-Msg-Validate
              IF W-CLI NOT = 0 PERFORM Screen1-Pb-Lancer-Link.
           IF WCHO = 3 AND LK-MBDI-L-FCO NOT = 0 AND NOT = SPACE
              MODIFY Screen1-Ef-Cli, VALUE LK-MBDI-L-FCO
              PERFORM Screen1-Ef-Cli-Ev-Msg-Validate
              IF W-FCO NOT = 0 PERFORM Screen1-Pb-Lancer-Link.
           IF CLI-PALM = 690141 |FORALOC
              modify Screen1-Rb-2, value 2
              PERFORM Screen1-Rb-2-Ev-Cmd-Clicked
              MOVE 2 TO WCHO
           END-IF
           IF MOB-PALM > 0
              MODIFY Screen1-La-TRA visible 1
              MODIFY Screen1-Bt-TRA visible 1
           END-IF
           .

       AdaptGrid.
211008     IF MOB-PALM = 0 THEN
              IF LK-MBDI-L-STA = 1
                 MODIFY Screen1-Gd-1,
                 DISPLAY-COLUMNS (1, 4, 14, 19, 29, 30, 52, 67, 87, 88,
                 89, 118), 
              ELSE
                 MODIFY Screen1-Gd-1,  
                 DATA-COLUMNS (1, 2, 10, 12, 20, 23, 51, 59, 89, 90), 
                    DISPLAY-COLUMNS 
                   (1, 4, 14, 19, 29, 32, 62, 72, 107, 110), 
                 ALIGNMENT ("U", "C", "U", "U", "C", "U", "U", "U", "U",
                 "U"), 
                 DATA-TYPES ("X", "X(8)", "XX", "9(8)", "X", "X(28)",
                 "X(8)", "X(25)", "X", "XXX"), 
                    SEPARATION (5, 5, 5, 5, 5, 5, 5, 5, 5, 5), 
              END-IF
211008
           ELSE
              MODIFY Screen1-Gd-1,  
              DATA-COLUMNS (1, 2, 10, 12, 20, 23, 51, 59, 89, 90), 
              DISPLAY-COLUMNS (1, 4, 14, 19, 29, 32, 62, 72, 98, 110), 
              ALIGNMENT ("U", "C", "U", "U", "C", "U", "U", "U", "U",
              "U"), 
              DATA-TYPES ("X", "X(8)", "XX", "9(8)", "X", "X(28)",
              "X(8)", "X(25)", "X", "XXX"), 
              SEPARATION (5, 5, 5, 5, 5, 5, 5, 5, 5, 5), 
           END-IF
211008
           MOVE 2 TO COL-DAT
           MOVE 4 TO COL-BON
           MOVE 6 TO COL-CLI
           MOVE 8 TO COL-VIL
           MOVE 1 TO COL-STA
110619
           IF LK-MBDI-L-IND = 9 THEN
      *       Ajout montant à la place du code postal
               MODIFY Screen1-Gd-1, 
                  COLUMN-DIVIDERS (1, 1, 0, 0, 1, 1, 1, 1, 1, 1), 
                  ALIGNMENT ("U", "C", "U", "U", "C", "U", "R", "U", 
                             "U", "U") 
           ELSE
110619
              IF WCHO = 2 OR 3
                 MODIFY Screen1-Gd-1, 
                      COLUMN-DIVIDERS (1, 1, 0, 0, 1, 0, 1, 1, 1, 1) 
              ELSE
                 MODIFY Screen1-Gd-1, 
                      COLUMN-DIVIDERS (1, 1, 0, 0, 1, 0, 0, 1, 1, 1)
              END-IF
110619     END-IF
           .

       INIT-TRI.
           CLOSE MBDI-L-TRI.
           OPEN OUTPUT MBDI-L-TRI
           PERFORM STAT
           CLOSE MBDI-L-TRI
           OPEN I-O MBDI-L-TRI
           PERFORM STAT

           INITIALIZE ENR-MBDI
           MOVE LK-MBDI-L-AGE(1) TO AGE-MBDI
           IF WCHO = 1 
              IF W-IND-FAC = 1
                 START MXBDIS KEY NOT < CLE3-MBDI INVALID GO F-INIT-TRI
              ELSE
                 MOVE 0 TO TRA-MBDI
                 START MXBDIS KEY NOT < CLE5-MBDI INVALID GO F-INIT-TRI
              END-IF
           ELSE
              MOVE W-CLI TO CLI-MBDI 
              START MXBDIS KEY NOT < CLE4-MBDI INVALID GO F-INIT-TRI.
       BCL-INIT.
           READ MXBDIS NEXT END GO F-INIT-TRI.
           PERFORM STAT
           IF AGE-MBDI NOT = LK-MBDI-L-AGE(1)
           AND LK-MBDI-L-AGE(1) NOT = SPACE  
              IF WCHO = 1 GO F-INIT-TRI
                     ELSE GO BCL-INIT.
           IF (WCHO = 2 OR 3) AND CLI-MBDI NOT = W-CLI GO F-INIT-TRI.
           IF WCHO = 3 AND FCO-MBDI NOT = W-FCO GO BCL-INIT.
           IF WCHO = 2 AND W-CDV NOT = 0 AND CDV-MBDI NOT = W-CDV 
                                                GO BCL-INIT.
           IF LK-MBDI-L-STA = 1 AND TRA-MBDI <> 1 GO BCL-INIT.

           IF ScreenPatienter-End = 1 GO F-INIT-TRI.        
           PERFORM Mep-Un-Bl

           GO BCL-INIT.
       F-INIT-TRI.
111212
      *     IF WCHO = 2 AND FCO-MCLI <> 0 AND (LK-MBDI-L-TYP = 7 OR 8)
      *        PERFORM RECH-DEVIS
      *     END-IF.
111212        


       RECH-DEVIS.
           COPY "../../mx/copy/Assign-FICTMP.cbl" REPLACING 
                 ==FICTMP==   BY ==RECH==
                 =='FICTMP'== BY ==RECH==.
           CLOSE RECH.
      
           MOVE "BDIS" TO CMD-RECH-FIC
           MOVE MX-DIR TO CMD-RECH-DIR
           MOVE ASSIGN-RECH TO CMD-RECH-RESULT
           MOVE 1 TO CMD-RECH-DEBSOR
           MOVE 200 TO CMD-RECH-FINSOR

           MOVE RECORD-POSITION OF FCO-MBDI TO CMD-RECH-POSR(1)
           MOVE LENGTH OF FCO-MBDI TO CMD-RECH-LONR(1)
           MOVE FCO-MCLI TO CMD-RECH-VAL(1)
           MOVE "==" TO CMD-RECH-OPE(1)

           MOVE "T" TO CMD-RECH-T(1)
           MOVE 1 TO CMD-RECH-POSDT(1)
           MOVE 11 TO CMD-RECH-POSFT(1)
           
           COPY "W:/mistral/copy/rech.cbl".

           OPEN INPUT RECH
           PERFORM STAT
           MOVE 0 TO W-EOF  
           PERFORM UNTIL W-EOF = 1
              MOVE SPACE TO ENR-RECH
              READ RECH END MOVE 1 TO W-EOF
              END-READ
              PERFORM STAT
              IF W-EOF = 0 
                 MOVE ENR-RECH TO CLE1-MBDI
                 READ MXBDIS INVALID EXIT PERFORM CYCLE
                 END-READ
                 PERFORM STAT
                 IF FCO-MBDI NOT = FCO-MCLI EXIT PERFORM CYCLE
                 END-IF
                 IF TYP-MBDI <> 8 EXIT PERFORM CYCLE
                 END-IF
                 IF LK-MBDI-L-IND = 8
                    ADD 1 TO LK-MBDI-L-NBSEL
                    MOVE 1 TO W-EOF
                 ELSE
                    PERFORM MEP-UN-BL
                 END-IF
              END-IF
           END-PERFORM
           
           CLOSE RECH 
           DELETE FILE RECH.

       Affiche-grille.
      * Remise à zéro de la grille...
           MODIFY Screen1-Gd-1, RESET-GRID = 1, MASS-UPDATE = 1
           PERFORM Acu-Screen1-Gd-1-Content
           MODIFY Screen1-Gd-1, 
               X = COL-DAT, Y = 1, CELL-DATA = "Date" 
               X = (COL-BON - 1) , Y = 1, CELL-DATA = "Ag", 
               X = COL-BON, Y = 1, CELL-DATA = "N° Bon", 
               X = COL-CLI, Y = 1, CELL-DATA = "Client" 

           IF WCHO = 2 OR 3
              MODIFY Screen1-Gd-1(1 COL-CLI), 
                     CELL-DATA = "Références Client"
              MODIFY Screen1-Gd-1(1 COL-VIL), CELL-DATA = "Produit"
              if LK-MBDI-L-STA = 1
                 MODIFY Screen1-Gd-1(1 11), CELL-DATA = "N° facture"
              end-if
           ELSE
              MODIFY Screen1-Gd-1(1 COL-VIL), CELL-DATA = SPACE
           END-IF
211008
           IF MOB-PALM > 0 THEN
              MODIFY Screen1-Gd-1(1, 9), CELL-DATA = "T"
           END-IF
211008
110619
           IF LK-MBDI-L-IND = 9 THEN
              MODIFY Screen1-Gd-1(1, 7), CELL-DATA = "Montant"
              MOVE 0 TO W-TOTAL
           END-IF
110619
      * Remplissage de la grille...
           PERFORM MBDI-L-TRI-InitStart
           PERFORM MBDI-L-TRI-Start
           IF W-EOF = 1 MODIFY Screen1-Gd-1, ENABLED 0
                        EXIT PARAGRAPH
           END-IF
           PERFORM MBDI-L-TRI-Read-Next
          
           MOVE 2 TO Screen1-Gd-1-Cursor-Y-Old
           MOVE 1 TO Tmp-9-3
           MOVE 0 TO W-Count

           PERFORM UNTIL W-EOF = 1
              ADD 1 TO Tmp-9-3 W-Count
              MOVE AGE-MBDI-L-TRI TO Screen1-Gd-1-CODAGE COD-MAGC
              READ MXAGENCE
              PERFORM STAT
              MOVE ABR-MAGC TO Screen1-Gd-1-AGE
              MOVE BON-MBDI-L-TRI TO Screen1-Gd-1-BON
              MOVE DAT-MBDI-L-TRI TO D-SAMJ
              PERFORM CONVDAT-SAMJ-JMSA
              MOVE L-DAT6 TO Screen1-Gd-1-DAT
              MOVE RAI-MBDI-L-TRI TO Screen1-Gd-1-Rai
              MOVE POS-MBDI-L-TRI TO Screen1-Gd-1-Pos
110619
              IF LK-MBDI-L-IND = 9 THEN
                 COMPUTE W-PICS7 ROUNDED = MON-MBDI-L-TRI 
                 MOVE W-PICS7 TO Screen1-Gd-1-Pos
                 ADD MON-MBDI-L-TRI TO W-TOTAL
              END-IF
110619
              MOVE VIL-MBDI-L-TRI TO Screen1-Gd-1-Vil
              MOVE LTYC-MBDI-L-TRI TO Screen1-Gd-1-Tyc
              MOVE FAC-MBDI-L-TRI TO Screen1-Gd-1-Fac
              MOVE DFA-MBDI-L-TRI TO Screen1-Gd-1-Dfa
              
              MODIFY Screen1-Gd-1,
                   RECORD-TO-ADD = Screen1-Gd-1-Record
              if lk-mbdi-l-maxsel > 1 
                 perform PreSelection
              ELSE
                 MOVE 1 TO TMP-9-32
                 EVALUATE TYP-MBDI-L-TRI 
                 WHEN 8 
                    Modify Screen1-Gd-1, X = TMP-9-32, Y = tmp-9-3,
                       BITMAP PXLRESE16-BMP 
                 WHEN 0 
                    Modify Screen1-Gd-1, X = TMP-9-32, Y = tmp-9-3,
                       BITMAP PXLCTRA16-BMP
                 WHEN OTHER 
                    IF TRA-MBDI-L-TRI = 1
                       Modify Screen1-Gd-1, X = TMP-9-32, Y = tmp-9-3,
                       BITMAP DxLOCKx16-BMP
                    ELSE IF IFA-MBDI-L-TRI = 1
                       Modify Screen1-Gd-1, X = TMP-9-32, Y = tmp-9-3,
                       BITMAP DxVALID16-BMP
                    ELSE
                       Modify Screen1-Gd-1, X = TMP-9-32, Y = tmp-9-3,
                       BITMAP DxOPENx16-BMP
                    END-IF
                    END-IF
                 END-EVALUATE
                 if TTYP-MBDI-L-TRI = 1 
                    Modify Screen1-Gd-1, X = TMP-9-32, Y = tmp-9-3,
                       BITMAP PXVCTRA16-BMP
                 END-IF
                 if TTYP-MBDI-L-TRI = 2 
                    Modify Screen1-Gd-1, X = TMP-9-32, Y = tmp-9-3,
                       BITMAP PXOCTRA16-BMP
                 END-IF
                 if TTYP-MBDI-L-TRI = 4 
                    Modify Screen1-Gd-1, X = TMP-9-32, Y = tmp-9-3,
                       BITMAP RETOURP16-JPG
                 END-IF
              END-IF
211008
              IF  MOB-PALM > 0 
              AND IES-MBDI-L-TRI > 1 THEN
                 Modify Screen1-Gd-1, X = 9, Y = tmp-9-3,
                    BITMAP DxREFRx16-JPG
              END-IF
211008
              PERFORM MBDI-L-TRI-Read-Next
           END-PERFORM

      * Sortir immédiatement s'il n'y a rien dans la liste...
           IF Tmp-9-3 = 1 THEN
               MODIFY Screen1-Gd-1, ENABLED 0
               EXIT PARAGRAPH
           END-IF

           MODIFY Screen1-Gd-1, ENABLED 1   
           MODIFY Screen1-Gd-1(1, COL-DAT), BITMAP = SORTUP-JPG
           MODIFY Screen1-Gd-1(1, COL-BON), BITMAP = arrow-down-blue-bmp
           IF WCHO = 2   
              MODIFY Screen1-Gd-1(1, COL-STA), 
              BITMAP =arrow-down-blue-bmp 
           END-IF
           IF WCHO NOT = 2 AND NOT = 3   
              MODIFY Screen1-Gd-1(1, COL-CLI), 
                     BITMAP =arrow-down-blue-bmp 
           END-IF
           IF W-KEY-ORDER = "D" THEN 
              MODIFY Screen1-Gd-1(1, W-KEY-IS), 
              BITMAP=arrow-down-blue-full-bmp 
           ELSE 
              MODIFY Screen1-Gd-1(1, W-KEY-IS),
                      BITMAP=arrow-up-blue-full-bmp 
           END-IF

      * Positionnement du curseur sur la grille...
           MODIFY Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old),
                  CURSOR-Y = Screen1-Gd-1-Cursor-Y-Old,
070720*                  ROW-COLOR = W-Row-Low-Color,
                  MASS-UPDATE = 0
110619
           IF LK-MBDI-L-IND = 9 THEN
              COMPUTE W-PICS10 ROUNDED = W-TOTAL 
              MODIFY Screen1-La-MON,
                 TITLE W-PICS10
              END-IF
110619

      * Patch : sans ça, la grille peut parfois mélanger les lignes...
           MOVE SPACES TO Screen1-Gd-1-Record
           .
       Screen1-Gd-1-Ev-Msg-Begin-Entry.
           if lk-mbdi-l-maxsel < 2
              INQUIRE Screen1-Gd-1(Event-Data-2, 4),
                   CELL-DATA IN LK-MBDI-L-BON(1)
              INQUIRE Screen1-Gd-1(Event-Data-2, 10),
                   CELL-DATA IN LK-MBDI-L-AGE(1)
              INQUIRE Screen1-Gd-1(Event-Data-2, 11),
                   CELL-DATA IN LK-MBDI-L-FAC
              INQUIRE Screen1-Gd-1(Event-Data-2, 12),
                   CELL-DATA IN LK-MBDI-L-DFA
              MOVE Event-Action-Fail TO Event-Action
              PERFORM Mistral-CloseCurrentWindow
           else
              perform InvertCheck
              Move event-action-fail To event-action
           end-if.

       Screen1-Gd-1-Ev-Msg-Goto-Cell.
      * La ligne de titre est à ignorer...
           IF Event-Data-2 < 2
               MOVE 2 TO Event-Data-2
           END-IF

      * Pour voir si on a changé de ligne
           IF NOT Event-Data-2 = Screen1-Gd-1-Cursor-Y-Old THEN
                continue
070720*               MODIFY Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old),
070720*                      ROW-COLOR = 0
070720*               MODIFY Screen1-Gd-1(Event-Data-2), 
070720*                      ROW-COLOR = W-Row-Low-Color
           END-IF

           MOVE Event-Data-2 TO Screen1-Gd-1-Cursor-Y-Old
           .
       Screen1-Gd-1-Ev-Msg-Heading-Clicked.
      *    Changement de TRI:
      *         KEY-IS = 1 --> par date (clé 3)
      *         KEY-IS = 3 --> par n° bon (clé 1)
      *         KEY-IS = 5 --> par raison sociale client (clé 2)
           MOVE W-KEY-IS TO W-KEY-IS-Old
           MOVE ZERO TO W-KEY-IS
           IF Event-Data-1 = COL-DAT MOVE COL-DAT TO W-KEY-IS.
           IF Event-Data-1 = COL-BON MOVE COL-BON TO W-KEY-IS.
           IF Event-Data-1 = COL-CLI MOVE COL-CLI TO W-KEY-IS.
           IF Event-Data-1 = COL-STA MOVE COL-STA TO W-KEY-IS.
           IF W-KEY-IS = 0 EXIT PARAGRAPH.

           IF W-KEY-IS NOT = W-KEY-IS-Old
               MOVE "A" TO W-KEY-ORDER
           ELSE
               IF W-KEY-ORDER = "A" THEN
                   MOVE "D" TO W-KEY-ORDER
               ELSE
                   MOVE "A" TO W-KEY-ORDER
               END-IF
           END-IF

           PERFORM Affiche-grille
           .

       Screen1-Pb-Accept-Ex-Cmd-Clicked.
110619
           INQUIRE Screen1-Pb-Accept,
              VISIBLE IN W-VS-PB
           IF W-VS-PB <> 1 THEN   
              EXIT PARAGRAPH
           END-IF
110619
           if lk-mbdi-l-maxsel < 2
              INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old, 4),
                   CELL-DATA IN LK-MBDI-L-BON(1)
              INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old, 10),
                   CELL-DATA IN LK-MBDI-L-AGE(1)
              INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old, 11),
                   CELL-DATA IN LK-MBDI-L-FAC
              INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old, 12),
                   CELL-DATA IN LK-MBDI-L-DFA
              Move 1 To LK-MBDI-L-NBSEL
              PERFORM Acu-Screen1-Exit
           ELSE
              Move 0 To LK-MBDI-L-NBSEL
              Perform Varying tmp-9-3 From 1 By 1 
                      Until tmp-9-3 > w-count
                Inquire Screen1-Gd-1(tmp-9-3 + 1, 1), 
                    Hidden-Data In w-sel
                 If w-sel = 1
                    Add 1 To LK-MBDI-L-NBSEL
                 End-If
              End-Perform
              If LK-MBDI-L-NBSEL > LK-MBDI-L-MAXSEL
                 Move Spaces To s
                 move LK-MBDI-L-MAXSEL to A3
                 String "Sélection de "     Delimited By Size
                        " " delimited by size
                        A3                  Delimited By Size
                        " bons maximum !" Delimited By Size
                        Into s
                 MOVE s to acu-msg-1
                 perform msg-info
                 Exit Paragraph
              End-If
              Perform FillSelect
              Perform Acu-Screen1-Exit           
           END-IF.

       FillSelect.
           Move 0 To LK-MBDI-L-NBSEL
           Perform Varying tmp-9-3 From 1 By 1 Until tmp-9-3 > 40
                Move 0 To LK-MBDI-L-BON(tmp-9-3) 
           End-Perform
           Perform Varying tmp-9-3 From 1 By 1 Until tmp-9-3 > w-count
               Inquire Screen1-Gd-1(tmp-9-3 + 1, 1), 
                  Hidden-Data In w-sel
               If w-sel = 1
                 Add 1 To LK-MBDI-L-NBSEL
211008*           Inquire Screen1-Gd-1(tmp-9-3 + 1, 9), 
211008           Inquire Screen1-Gd-1(tmp-9-3 + 1, 10), 
                      Cell-Data In LK-MBDI-L-AGE(LK-MBDI-L-NBSEL)
                 Inquire Screen1-Gd-1(tmp-9-3 + 1, 4), 
                      Cell-Data In LK-MBDI-L-BON(LK-MBDI-L-NBSEL)
               End-If
           End-Perform
           .        

       Screen1-Pb-Cancel-Ex-Cmd-Clicked.
           Move 0 To LK-MBDI-L-NBSEL
           Perform Varying tmp-9-3 From 1 By 1 Until tmp-9-3 > 40
                Move 0 To LK-MBDI-L-BON(tmp-9-3) 
           End-Perform
           PERFORM Acu-Screen1-Exit
           .
      *
       Screen1-Bef-Create.
           perform Controle-Call

      *     COPY "W:/mistral/copy/debjbuser.cbl".

           perform Open-File-Rtn
           MOVE 0 TO WVISIBLE-FCO
           IF LK-MBDI-L-TYP = 0 
              MOVE "Liste des bons de commande" TO WTIT
              MOVE 0 TO WVISIBLE-FAC WV-BON WV-DEVIS
              MOVE 1 TO WV-CDE.
           IF LK-MBDI-L-TYP = 1 
              MOVE "Liste des bons de livraison" TO WTIT
              MOVE 1 TO WV-BON 
              MOVE 0 TO WV-CDE WV-DEVIS.
           IF LK-MBDI-L-TYP = 2 
              MOVE "Liste des refacturations fournisseurs" TO WTIT
              MOVE 1 TO WV-BON 
              MOVE 0 TO WV-CDE WV-DEVIS.
           IF LK-MBDI-L-TYP = 3 
              MOVE "Liste des avoirs" TO WTIT
              MOVE 1 TO WV-BON 
              MOVE 0 TO WV-CDE WV-DEVIS.
           IF LK-MBDI-L-TYP = 4
              MOVE "Liste des b/l inter-agence" TO WTIT
              MOVE 1 TO WV-BON 
              MOVE 0 TO WV-CDE WV-DEVIS. 
           IF LK-MBDI-L-TYP = 6
              MOVE "Liste des b/l et avoirs" TO WTIT
              MOVE 1 TO WV-BON 
              MOVE 0 TO WV-CDE WV-DEVIS.   
           IF LK-MBDI-L-TYP = 7
              MOVE "Liste des devis, commandes et b/l en cours" TO WTIT
              MOVE 0 TO WVISIBLE-FAC
              MOVE 1 TO WV-BON 
              MOVE 1 TO WV-CDE WV-DEVIS.   
           IF LK-MBDI-L-TYP = 8 
              MOVE "Liste des devis" TO WTIT
              MOVE 0 TO WVISIBLE-FAC
              MOVE 1 TO WVISIBLE-FCO
              MOVE 1 TO WV-DEVIS 
              MOVE 0 TO WV-CDE WV-BON. 
110619     IF LK-MBDI-L-IND = 9
              MOVE "Liste des bons d'une reference client" TO WTIT
              MOVE 0 TO WVISIBLE-FCO
              MOVE 0 TO WV-DEVIS 
              MOVE 0 TO WV-CDE WV-BON
                        WV-Valider
              MOVE 1 TO WV-Total
              . 
           IF LK-MBDI-L-CLI NOT = 0
              MOVE 2 TO WCHO
           ELSE IF LK-MBDI-L-FCO NOT = 0 AND NOT = SPACE
              MOVE 3 TO WCHO.
           IF MOB-PALM > 0
              MOVE 0 TO WV-CDE WV-BON WV-DEVIS
              IF LK-MBDI-L-TYP = 1 MOVE 1 TO W-IND-FAC.     | Si B/L et MobiDis --> Visu B/L facturés par défaut
           IF LK-MBDI-L-IND = 8             | nombre de devis pour un prospect
              MOVE LK-MBDI-L-FCO TO FCO-MCLI
              move 0 to LK-MBDI-L-NBSEL
      *        PERFORM RECH-DEVIS
              GO ACU-EXIT-RTN
           END-IF.
      *
       Screen1-Aft-Routine.
           perform Close-File-Rtn

      *     COPY "W:/mistral/copy/finjbuser.cbl".

           perform BeforeExit
           .
      *
       Screen1-Pb-Lancer-Link.
           IF WCHO = 2 OR 3 PERFORM Screen1-Ef-Cli-Ev-Msg-Validate
           END-IF

           move 1 to ScreenPatienter-PB-Visible
      *     copy "W:/mistral/copy/mis-patienter-debut.cbl".
           PERFORM INIT-TRI THRU F-INIT-TRI
           MOVE 1 TO Screen1-Gd-1-Cursor-Y-Old
           PERFORM AFFICHE-GRILLE
      *     copy "W:/mistral/copy/mis-patienter-fin.cbl".
           move 1 TO control-id
           move 4 to accept-control
           .
      *
       Screen1-Rb-2-Ev-Cmd-Clicked.
           MODIFY Screen1-Ef-Cli, ENABLED 1
           MODIFY Screen1-Pb-Liste, ENABLED 1
           MOVE 10 TO CONTROL-ID
           MOVE 4 TO ACCEPT-CONTROL
           .
      *
       Screen1-Rb-1-Ev-Cmd-Clicked.
           MODIFY Screen1-Ef-Cli, ENABLED 0
           MODIFY Screen1-Pb-Liste, ENABLED 0
           PERFORM Efface-Cli.

       Efface-Cli.
           MODIFY Screen1-Ef-Cli, VALUE SPACE
           MODIFY Screen1-Ef-Rai, VALUE SPACE
           MODIFY Screen1-Ef-Vil, VALUE SPACE
           MODIFY Screen1-Ef-Pos, VALUE SPACE
           .

       Affich-Cli.
           MODIFY Screen1-Ef-Rai, VALUE RAI-MCLI
           MODIFY Screen1-Ef-Vil, VALUE VIL-MCLI
           COPY "../../mistral/copy/Ef-Pos-Fic2Ecr.cbl"
                REPLACING ==CPYPOS-PAYS== BY ==PAY-MCLI==
                          ==CPYPOS-FIC==  BY ==POS-MCLI==
                          ==CPYPOS-ECR==  BY ==Af-POS==.
           MODIFY Screen1-Ef-Pos, VALUE Af-POS.


       Screen1-Rb-3-Ev-Cmd-Clicked.
           MODIFY Screen1-Ef-Cli, ENABLED 1
           MODIFY Screen1-Pb-Liste, ENABLED 1
           MOVE 10 TO CONTROL-ID
           MOVE 4 TO ACCEPT-CONTROL
           .
      
       Screen1-Ef-Cli-Ev-Msg-Validate.
           IF WCHO = 2 PERFORM Valid-CLI
                  ELSE PERFORM Valid-FCO.
                  
       VALID-CLI.
           INQUIRE Screen1-Ef-Cli, VALUE W-CLI
           IF W-CLI = 0 EXIT PARAGRAPH.
           MOVE W-CLI TO COD-MCLI 
           READ MXCLI KEY CLE6-MCLI INVALID
              MOVE " Client Erroné " TO ACU-MSG-1
              PERFORM MSG-INFO
              MOVE ZERO TO W-CLI
              PERFORM Efface-CLI
              EXIT PARAGRAPH.
           PERFORM STAT
           IF IDV-MCLI = 1 AND MOB-PALM > 0 
              MOVE " Client divers non géré sur les mobiles " 
              TO ACU-MSG-1
              PERFORM MSG-INFO
              MOVE ZERO TO W-CLI
              PERFORM Efface-CLI
              EXIT PARAGRAPH.
           MOVE 0 TO W-CDV
           PERFORM Affich-Cli.

       VALID-FCO.
           INQUIRE Screen1-Ef-Cli, VALUE W-FCO.
           IF W-FCO = 0 OR SPACE EXIT PARAGRAPH.
           MOVE W-FCO TO FCO-MCLI
           READ MXCLI KEY CLE7-MCLI INVALID
              MOVE " Prospect Erroné " TO ACU-MSG-1
              PERFORM MSG-INFO
              MOVE 0 TO W-FCO
              PERFORM Efface-CLI
              EXIT PARAGRAPH.
           PERFORM STAT.
           PERFORM Affich-Cli.
      *
       Screen1-Pb-Liste-Link.
           IF WCHO = 2 PERFORM ListeCli
                  ELSE PERFORM ListeFco.

       ListeCli.
           MOVE SPACE TO LK-MCLI-L
           MOVE 1 TO LK-MCLI-L-NumFiltre
090419*     MOVE Screen1-Handle TO LK-MCLI-L-Handle
090419     MOVE Screen1-Handle TO HANDLE-PALM
           CALL "mcli-l.acu" USING ZONE-PALM LK-MCLI-L
           CANCEL "mcli-l.acu"
           IF LK-MCLI-L-COD = 0 EXIT PARAGRAPH.
           MOVE LK-MCLI-L-COD TO COD-MCLI W-CLI
           READ MXCLI KEY CLE6-MCLI INVALID
              MOVE " Client Erroné " TO ACU-MSG-1
              PERFORM MSG-INFO
              MOVE ZERO TO W-CLI
              MODIFY Screen1-Ef-Cli, VALUE W-CLI
              EXIT PARAGRAPH.
           PERFORM STAT
           MODIFY Screen1-Ef-Cli, VALUE COD-MCLI
           MOVE COD-MCLI TO W-CLI
           PERFORM Affich-Cli
           .

       ListeFco.
           MOVE SPACE TO LK-MCLI-L
           MOVE 2 TO LK-MCLI-L-NumFiltre
090419*     MOVE Screen1-Handle TO LK-MCLI-L-Handle
050819     MOVE Screen1-Handle TO HANDLE-PALM
           CALL "mcli-l.acu" USING ZONE-PALM LK-MCLI-L
           CANCEL "mcli-l.acu"
           IF LK-MCLI-L-FCO = 0 OR SPACE EXIT PARAGRAPH.
           MOVE LK-MCLI-L-FCO TO FCO-MCLI W-FCO
           READ MXCLI KEY CLE7-MCLI INVALID
              MOVE " Prospect Erroné " TO ACU-MSG-1
              PERFORM MSG-INFO
              MOVE 0 TO W-FCO
              MODIFY Screen1-Ef-Cli, VALUE W-FCO
              EXIT PARAGRAPH.
           PERFORM STAT
           MODIFY Screen1-Ef-Cli, VALUE FCO-MCLI
           MOVE FCO-MCLI TO W-FCO
           PERFORM Affich-Cli
           .

       RECH-MXLDIS.
           MOVE AGE-MBDI TO AGE-MLDI
           MOVE BON-MBDI TO BON-MLDI
           MOVE ZERO     TO RAN-MLDI
           MOVE 1 TO PREML 
           MOVE 0 TO W-LIV W-NLIV
           START MXLDIS KEY NOT < CLE4-MLDI INVALID GO F-RECH-MXLDIS.
       LECT-MXLDIS.
           READ MXLDIS NEXT END GO F-RECH-MXLDIS.
           PERFORM STAT
           IF AGE-MBDI NOT = AGE-MLDI
           OR BON-MBDI NOT = BON-MLDI GO F-RECH-MXLDIS.
           IF INP-MLDI = "C" GO LECT-MXLDIS.
           IF INP-MLDI = "A" GO LECT-ART.
           IF INP-MLDI = "P" AND PREML = 1 GO LECT-PREGEN.
           GO LECT-MXLDIS.
       LECT-ART.
           MOVE ART-MLDI TO COD-MART
           READ MXART INVALID MOVE SPACE TO ENR-MART.
           PERFORM STAT
           IF PREML = 1
              IF ART-MLDI(1:4) NUMERIC OR MOD-MART = 1 
                   MOVE DES-MLDI TO VIL-MBDI-L-TRI
              ELSE MOVE DES-MART TO VIL-MBDI-L-TRI
              END-IF 
           END-IF
           IF LK-MBDI-L-TYP NOT = 7 AND NOT = 0 GO F-RECH-MXLDIS.
           MOVE ART-MLDI TO COD-MASA
           MOVE AGE-MLDI TO AGE-MASA
090120
           IF AGS-MLDI <> SPACE MOVE AGS-MLDI TO AGE-MASA
           END-IF
090120
           READ MXARTSA INVALID MOVE SPACE TO ENR-MASA.
           PERFORM STAT
           IF QSTM-MASA(1) >= QTE-MLDI 
           AND TLI-MLDI <> 1
              MOVE 1 TO W-LIV
           END-IF
           IF QSTM-MASA(1) < QTE-MLDI 
           AND TLI-MLDI <> 1
              MOVE 1 TO W-NLIV
           END-IF
           MOVE 0 TO PREML   
           GO LECT-MXLDIS.
        LECT-PREGEN.
           MOVE PRE-MLDI TO COD-MPGE
           READ MXPREGEN INVALID MOVE SPACE TO ENR-MPGE.
           PERFORM STAT
           IF PREML = 1
              IF INL-MPGE = 1 MOVE LPR-MLDI TO VIL-MBDI-L-TRI
                         ELSE MOVE LIB-MPGE TO VIL-MBDI-L-TRI
              END-IF
           END-IF
           MOVE 0 TO PREML
           IF LK-MBDI-L-TYP = 7 OR 0 GO LECT-MXLDIS.
           GO F-RECH-MXLDIS.
       F-RECH-MXLDIS.
           EXIT.
      *
       Screen1-Mn-1-MI-Consultation-Link.
      *     INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old, 9),
211008     INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old, 10),
                   CELL-DATA IN LK-SBD-C-AGE 
           INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old, 4),
                   CELL-DATA IN LK-SBD-C-BON 
           MOVE "I" TO LK-SBD-C-CHO
           CALL "sbd-c.acu" 
                USING ZONE-PALM LK-SBD-C
240519*     CALL "sbd-c.acu".
240519     CANCEL "sbd-c.acu".
     
       Screen1-Gd-1-Ev-Msg-Grid-Rbutton-Down.
           PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
           CALL "W$MENU" USING WMENU-POPUP, Screen1-Mn-1-Handle.

       Screen1-Rb-2-Link.
           move 4 to accept-control move 10 to control-id.

       Screen1-Rb-3-Link.
           move 4 to accept-control move 10 to control-id
090414     MOVE 0 TO W-CLI
           .
           
       InvertCheck.
           Inquire Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old, 1), 
              Hidden-Data In w-sel
           If w-sel = 0
              Modify Screen1-Gd-1, Y = Screen1-Gd-1-Cursor-Y-Old, X = 1, 
                 Hidden-Data = 1,
                 BITMAP VALIDER12-BMP, 
                 BITMAP-TRAILING 1
              Add 1 To w-controle
           Else
              Modify Screen1-Gd-1, Y = Screen1-Gd-1-Cursor-Y-Old, X = 1, 
                 Hidden-Data = 0,
                 BITMAP NULL
              Subtract 1 From w-controle
           End-If.
           
       Preselection.
           Move LK-MBDI-L-NBSEL To W-controle
           Move 1 To i
           Perform Until i > 40 Or LK-MBDI-L-BON(i) = ZERO
                If (LK-MBDI-L-BON(i) = BON-MBDI-L-TRI) 
                    Modify Screen1-Gd-1, X = 1, Y = tmp-9-3,
                       BITMAP VALIDER12-BMP, 
                       BITMAP-TRAILING 1,
                       Hidden-Data = 1
                    Exit Paragraph
                End-If
                Add 1 To i
           End-Perform
           Modify Screen1-Gd-1, X = 1, Y = tmp-9-3,
                 BITMAP NULL,
                 Hidden-Data = 0.
      *
110619 Screen1-Cb-Fac-Link.
      *-------------------*
           IF LK-MBDI-L-IND = 9 THEN
              PERFORM Screen1-Pb-Lancer-Link
           END-IF
           .

       

      *{Bench}end
       REPORT-COMPOSER SECTION.
