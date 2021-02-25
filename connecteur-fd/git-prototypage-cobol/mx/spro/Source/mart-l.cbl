      *{Bench}prg-comment
      * mart-l.cbl
      * mart-l.cbl is generated from W:\mx\spro\mart-l.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. mart-l.
       AUTHOR. sarah.dehecq.
       DATE-WRITTEN. vendredi 31 juillet 2020 10:29:33.
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
       COPY "W:\mx\fdt\SL-MART-L.cpy".
      *{Bench}file-control
       COPY "COBCAP.sl".
       COPY "MXPARAM.sl".
       COPY "MXART.sl".
       COPY "MXFOU.sl".
       COPY "RECH.sl".
       COPY "RECHCMD.sl".
       COPY "MXGRAFAM.sl".
       COPY "MXARTSA.sl".
       COPY "MXAGENCE.sl".
       COPY "MXCLI.sl".
       COPY "MXCLID.sl".
       COPY "MXFAMART.sl".
       COPY "MXARTSA2.sl".
       COPY "MXART2.sl".
      *{Bench}end
       DATA                        DIVISION.
       FILE                        SECTION.
       COPY "W:\mx\fdt\FD-MART-L.cpy".
      *{Bench}file
       COPY "COBCAP.fd".
       COPY "MXPARAM.fd".
       COPY "MXART.fd".
       COPY "MXFOU.fd".
       COPY "RECH.fd".
       COPY "RECHCMD.fd".
       COPY "MXGRAFAM.fd".
       COPY "MXARTSA.fd".
       COPY "MXAGENCE.fd".
       COPY "MXCLI.fd".
       COPY "MXCLID.fd".
       COPY "MXFAMART.fd".
       COPY "MXARTSA2.fd".
       COPY "MXART2.fd".
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
           88 Enter-Pushed VALUE 13.
      * property-defined variable

      * user-defined variable
           COPY  "cobcap.wrk".
           COPY  "rech.wrk".
           COPY  "Mis-Patienter.wrk".
           COPY  "LK-MFOU-L.wrk".
           COPY  "LK-CALPVART.wrk".
           COPY  "CAL-MARGE.wrk".
           COPY  "CAL-PV-ART.wrk".
           COPY  "CAL-PV-ART-GEN.WRK".
           COPY  "arrondi.wrk".
           COPY  "LK-MGFA-T.wrk".
           COPY  "numval.wrk".
           COPY  "LK-CALCREV.wrk".
           COPY  "tspvte.wrk".
       77 Screen1-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 W-STOGR          PIC  S9(9)V99.
       77 Default-Font
                  USAGE IS HANDLE OF FONT DEFAULT-FONT.
       77 Small-Font
                  USAGE IS HANDLE OF FONT SMALL-FONT.
       77 Fixed-Font
                  USAGE IS HANDLE OF FONT FIXED-FONT.
       77 TRIERAE10-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TRIER-DISABLELETTRED12-JPG   PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TRIERDE10-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TRIERDD10-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 VALIDER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ENGRSIM16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 PLUSxxx16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 QUITTER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TRIERAD10-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Screen1-Gd-1-Cursor-Y-Old    PIC  9(5).
       01 Screen1-Gd-1-Record.
           05 Screen1-Gd-1-COD PIC  X(21).
           05 Screen1-Gd-1-LIB PIC  X(60).
           05 Screen1-Gd-1-Ref PIC  X(21).
           05 Screen1-Gd-1-STO PIC  X(10).
           05 Screen1-Gd-1-Sto2            PIC  X(10).
       77 W-MXPARAM        PIC  9(9).
       77 Tmp-9-3          PIC  9(6).
       77 W-KEY-ORDER      PIC  X(1)
                  VALUE IS "A".
       77 W-NORD           PIC  9(1).
       77 W-ORDC           PIC  9(1).
       77 W-NBR            PIC  9(4)
                  VALUE IS 0.
       77 W-LOG-PALM       PIC  9(3).
       77 W-NPR-PALM       PIC  9(4).
       01 W-CODR.
           05 W-CO1            PIC  X(4).
           05 W-CO2            PIC  X(16).
       77 W-LIBDES         PIC  X(20).
       77 W-LIBIDF         PIC  X(4).
       77 Cod-Des-Visible  PIC  9
                  VALUE IS 1.
       77 W-EOF-ART        PIC  9.
       77 W-EOF-ARL        PIC  9.
       77 W-EOF-PMAT       PIC  9.
       77 W-EOF-AMA        PIC  9.
       77 W-START-AMA      PIC  9.
       77 W-TIT            PIC  X(18)
                  VALUE IS "Liste des articles".
       77 ASSIGN-RECH      PIC  X(60).
       77 WASS-RECH        PIC  X(20)
                  VALUE IS "MART-L-RECH".
       77 W-NB-ELT         PIC  X(60).
       77 Tmp-9-3-ECR      PIC  Z(5)9.
       77 Tmp-9-3-FIC      PIC  9(5).
       77 W-IND            PIC  9.
       77 ENGRDOU24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ASSIGN-RECHCMD   PIC  X(60).
       77 PLUSxxx10-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-SELECT         PIC  9.
       77 I    PIC  99.
       77 W-NAT            PIC  9.
       01 TAB-FAM.
           05 ELT-FAM
                      OCCURS 100 TIMES.
               10 GRA-FAM          PIC  9(2).
               10 FAM-FAM          PIC  9(2).
           05 NB-FAM           PIC  9(3).
       78 NBMAX-FAM VALUE IS 100. 
       77 ASSIGN-TRI       PIC  X(60).
       77 WASS-TRI         PIC  X(20)
                  VALUE IS "MART-L".
       77 W-LIBNAT         PIC  X(80).
       77 W-EOF-MAMA2      PIC  9.
       77 W-TRI            PIC  9.
       77 W-SENS           PIC  X.
       77 SV-LECT-MULTI    PIC  S9(1)
                  VALUE IS 1.
       77 IND-MULTI        PIC  9
                  VALUE IS 0.
       77 W-ABR            PIC  X(8).
       77 W-COL-STO        PIC  9.
       77 W-COL-STO2       PIC  9.
       01 S72  PIC  S9(7)V99.
       01 R-S72 REDEFINES S72.
           02 FILLER           PIC  9(7).
           02 S722 PIC  99.
           02 FILLER           PIC  X.
       77 W-LIB-MGFA       PIC  X(25)
                  VALUE IS "NOM FAM".
       77 w-eof-masa2      PIC  9.
       77 W-NON-RESET      PIC  9.
       77 W-PICSZ7VZZ      PIC  ------9,99
                  BLANK WHEN ZERO.
       77 W-PICSZ10        PIC  ---------9
                  BLANK WHEN ZERO.
       77 W-PICZ7VZZ       PIC  ZZZZZZ9,99
                  BLANK WHEN ZERO.
       77 W-RECHPLUS       PIC  9.
       77 OCCASIO16-bmp    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 OCCASIO12-bmp    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-MXTABCOE       PIC  9(9).
       77 W-MXTABRMA       PIC  9(9).
       77 INTERDI16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-TTC            PIC  S9(9)V99.
       77 W-MXTABARR       PIC  9(9).
       77 COMPOSI12-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 COMPOKI12-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ACHAINT16-bmp    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-MXPARATE       PIC  9(9).
       77 PREFNON16-bmp    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 PREFOUI16-bmp    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-ACHI           PIC  9
                  VALUE IS 1.
       77 W-VTEI           PIC  9
                  VALUE IS 1.
       77 W-PREM-RECH      PIC  9.
       77 W-PRESEL         PIC  9.
       77 W-LIB-MFOU       PIC  X(30).
       77 W-GRAX           PIC  X(10).
       77 W-FAMX           PIC  X(10).
       77 ZOOMxxx16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-LINE-REF       PIC  S9(4)V9(2)
                  VALUE IS 12,77.
       77 W-COL-REFFOU     PIC  S9(4)V9(2)
                  VALUE IS 22,71.
       77 W-COL-ORD2       PIC  S9(4)V9(2)
                  VALUE IS 69,14.
       77 W-LINE-ARF       PIC  S9(4)V9(2)
                  VALUE IS 2,00.
       77 W-COL-ARF        PIC  S9(4)V9(2)
                  VALUE IS 91,86.
       77 W-ARF            PIC  9
                  VALUE IS 0.
       77 ZOOMxxx12-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-ASTO           PIC  9
                  VALUE IS 0.
       77 WV-ASTO          PIC  9
                  VALUE IS 0.
       77 PLUSxxx16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FILE-STATUS      PIC  X(2).
           88 Valid-COBCAP VALUE IS "00" THRU "09". 
       77 flechebas-jpg    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 bateau-jpg       PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 c-bmp            PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 k-bmp            PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 c-jpg            PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 k-jpg            PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 achat-intedit-bmp            PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 achat-intedit-jpg            PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 achat-interdit-jpg           PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.

      *{Bench}end
       LINKAGE                     SECTION.
      *{Bench}linkage
       77 LK-ZONE-PALM     PIC  X(500).
           COPY  "LK-MART-L.wrk".
      *{Bench}end
       SCREEN                      SECTION.
       COPY "W:/mistral/copy/Mis-Patienter-Screen.cpy".
      *{Bench}copy-screen
       01 Screen1.
           03 Screen1-La-1, Label, 
              COL 3,00, LINE 10,85, LINES 1,23 CELLS, SIZE 23,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 7, LABEL-OFFSET 0, 
              TITLE "A partir de".
           03 Screen1-Rb-ORD1, Radio-Button, 
              COL 49,29, LINE 5,00, LINES 1,69 CELLS, SIZE 23,14 CELLS, 
              COLOR IS 2, EXCEPTION-VALUE 1000, FONT IS Small-Font, 
              GROUP 1, GROUP-VALUE 1, ID IS 4, 
              TITLE "Par code sans IDF", VALUE LK-MART-L-ORD, 
              VISIBLE Cod-Des-Visible, 
              EVENT PROCEDURE Screen1-Rb-ORD1-Event-Proc.
           03 Screen1-DaRb-REFFOU, Radio-Button, 
              COL 95,57, LINE 5,00, LINES 1,69 CELLS, SIZE 23,14 CELLS, 
              COLOR IS 2, EXCEPTION-VALUE 1005, FONT IS Small-Font, 
              GROUP 1, GROUP-VALUE 6, ID IS 24, 
              TITLE "Par référence", VALUE LK-MART-L-ORD, VISIBLE 0, 
              EVENT PROCEDURE Screen1-DaRb-REFFOU-Event-Proc.
           03 Screen1-Rb-ORD3, Radio-Button, 
              COL 3,00, LINE 5,00, LINES 1,69 CELLS, SIZE 23,14 CELLS, 
              COLOR IS 2, EXCEPTION-VALUE 1002, FONT IS Small-Font, 
              GROUP 1, GROUP-VALUE 3, ID IS 19, 
              TITLE "Par code complet", VALUE LK-MART-L-ORD, 
              VISIBLE Cod-Des-Visible, 
              EVENT PROCEDURE Screen1-Rb-ORD3-Event-Proc.
           03 Screen1-Rb-ORD2, Radio-Button, 
              COL 26,14, LINE 5,00, LINES 1,69 CELLS, SIZE 23,14 CELLS, 
              COLOR IS 2, EXCEPTION-VALUE 1003, FONT IS Small-Font, 
              GROUP 1, GROUP-VALUE 2, ID IS 5, 
              TITLE "Par désignation", VALUE LK-MART-L-ORD, 
              VISIBLE Cod-Des-Visible, 
              EVENT PROCEDURE Screen1-Rb-ORD2-Event-Proc.
           03 Screen1-DaRb-Int, Radio-Button, 
              COL 49,29, LINE 7,31, LINES 1,69 CELLS, SIZE 23,14 CELLS, 
              COLOR IS 2, EXCEPTION-VALUE 1001, FONT IS Small-Font, 
              GROUP 1, GROUP-VALUE 7, ID IS 27, 
              TITLE "Par n° interne", VALUE LK-MART-L-ORD, VISIBLE 0, 
              EVENT PROCEDURE Screen1-DaRb-Int-Event-Proc.
           03 Screen1-DaRb-NOR, Radio-Button, 
              COL 3,00, LINE 7,31, LINES 1,69 CELLS, SIZE 23,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 8, 
              ID IS 29, TERMINATION-VALUE 1008, 
              TITLE "Par réf. normalisée", VALUE LK-MART-L-ORD.
           03 Screen1-DaRb-ser, Radio-Button, 
              COL 26,14, LINE 7,31, LINES 1,69 CELLS, SIZE 23,14 CELLS, 
              COLOR IS 2, EXCEPTION-VALUE 1004, FONT IS Small-Font, 
              GROUP 1, GROUP-VALUE 4, ID IS 20, 
              TITLE "Par n° de série", VALUE LK-MART-L-ORD, VISIBLE 0, 
              EVENT PROCEDURE Screen1-DaRb-ser-Event-Proc.
           03 Screen1-DaRb-ARF, Radio-Button, 
              COL 95,57, LINE 7,31, LINES 1,69 CELLS, SIZE 23,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 10, 
              ID IS 48, TERMINATION-VALUE 1010, 
              TITLE "Par réfencement client", VALUE LK-MART-L-ORD, 
              VISIBLE W-ARF.
           03 Screen1-Rb-ORI, Radio-Button, 
              COL 72,43, LINE 5,00, LINES 1,69 CELLS, SIZE 23,14 CELLS, 
              COLOR IS 2, EXCEPTION-VALUE 1030, FONT IS Small-Font, 
              GROUP 2, GROUP-VALUE 1, ID IS 17, 
              TITLE "Fournisseur d'origine", VALUE LK-MART-L-MULTI, 
              VISIBLE IND-MULTI.
           03 Screen1-Rb-MUL, Radio-Button, 
              COL 72,43, LINE 7,31, LINES 1,69 CELLS, SIZE 23,14 CELLS, 
              COLOR IS 2, EXCEPTION-VALUE 1031, FONT IS Small-Font, 
              GROUP 2, GROUP-VALUE 2, ID IS 18, 
              TITLE "Fournisseur secondaire", VALUE LK-MART-L-MULTI, 
              VISIBLE IND-MULTI.
           03 Screen1-Ef-CO1, Entry-Field, 
              COL 19,71, LINE 10,46, LINES 1,92 CELLS, SIZE 7,14 CELLS, 
              3-D, COLOR IS 2, ID IS 25, MAX-TEXT 4, VISIBLE 0.
           03 Screen1-Ef-CO2, Entry-Field, 
              COL 27,57, LINE 10,46, LINES 2,00 CELLS, 
              SIZE 20,00 CELLS, 
              3-D, COLOR IS 2, ID IS 26, MAX-TEXT 16, VISIBLE 0.
           03 Screen1-Ef-LIB, Entry-Field, 
              COL 19,57, LINE 10,31, LINES 1,92 CELLS, 
              SIZE 27,86 CELLS, 
              3-D, COLOR IS 2, ID IS 6, MAX-TEXT 20, 
              BEFORE PROCEDURE Screen1-Ef-LIB-Bef-Procedure.
           03 Screen1-Cb-SELFOU, Check-Box, 
              COL 126,14, LINE 5,00, LINES 1,69 CELLS, 
              SIZE 23,14 CELLS, 
              COLOR IS 2, EXCEPTION-VALUE 1007, FONT IS Small-Font, 
              ID IS 49, TERMINATION-VALUE 1015, 
              TITLE "Par fournisseur", VALUE LK-MART-L-SELFOU, 
              VISIBLE 0.
           03 Screen1-Ef-FOU, Entry-Field, 
              COL 145,14, LINE 4,69, LINES 1,92 CELLS, 
              SIZE 22,43 CELLS, 
              3-D, COLOR IS 2, ID IS 46, VALUE W-LIB-MFOU, VISIBLE 0, 
              AFTER PROCEDURE Screen1-Ef-FOU-Aft-Procedure, 
              BEFORE PROCEDURE Screen1-Ef-FOU-Bef-Procedure.
           03 Screen1-Cb-SELFAM, Check-Box, 
              COL 126,14, LINE 7,31, LINES 1,69 CELLS, 
              SIZE 23,14 CELLS, 
              COLOR IS 2, EXCEPTION-VALUE 1006, FONT IS Small-Font, 
              ID IS 50, TERMINATION-VALUE 1019, 
              TITLE "Par famille", VALUE LK-MART-L-SELFAM, VISIBLE 0.
           03 Screen1-Ef-GFA, Entry-Field, 
              COL 145,14, LINE 7,62, LINES 1,92 CELLS, 
              SIZE 22,43 CELLS, 
              3-D, COLOR IS 2, ID IS 45, VALUE W-LIB-MGFA, VISIBLE 0, 
              AFTER PROCEDURE Screen1-Ef-GFA-Aft-Procedure, 
              BEFORE PROCEDURE Screen1-Ef-GFA-Bef-Procedure.
           03 Screen1-Pb-Lancer, Push-Button, 
              COL 125,00, LINE 1,92, LINES 24, SIZE 118, 
              BITMAP-HANDLE ENGRDOU24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              FONT IS Default-Font, ID IS 9, NO-AUTO-DEFAULT, NO-TAB, 
              DEFAULT-BUTTON, TERMINATION-VALUE 9859, 
              TITLE "Rechercher", ATW-CSS-CLASS "button-rechercher".
           03 Screen1-Gd-1, Grid, 
              COL 3,00, LINE 18,38, LINES 24,23 CELLS, 
              SIZE 176,86 CELLS, 
              ADJUSTABLE-COLUMNS, 3-D, CENTERED-HEADINGS, COLOR IS 2, 
              COLUMN-HEADINGS, 
              DATA-COLUMNS (1, 22, 82, 103, 113), 
              DISPLAY-COLUMNS (1, 23, 83, 103, 118), 
              ALIGNMENT ("U", "L", "U", "R", "R"), 
              DATA-TYPES ("X(21)", "X(40)", "X(21)", "X", "X"), 
              SEPARATION (5, 5, 5, 5, 5), 
              CURSOR-FRAME-WIDTH 0, DIVIDER-COLOR 8, END-COLOR 16, 
              FONT IS Default-Font, HEADING-COLOR W-Heading-Color, 
              HEADING-DIVIDER-COLOR W-Heading-Divider-Color, 
              HEADING-FONT IS Small-Font, ID IS 1, NUM-COL-HEADINGS 1, 
              NUM-ROWS W-Num-Rows, RECORD-DATA Screen1-Gd-1-Record, 
              TILED-HEADINGS, VPADDING 50, VSCROLL, 
              ATW-CSS-CLASS "table", 
              EVENT PROCEDURE Screen1-Gd-1-Event-Proc.
           03 Screen1-Pb-Accept, Push-Button, 
              COL 143,43, LINE 1,92, LINES 24, SIZE 118, 
              BITMAP-HANDLE VALIDER24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 9858, ID IS 2, NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Accepter", ATW-CSS-CLASS "button-valider".
           03 Screen1-Pb-Cancel, Push-Button, 
              COL 161,86, LINE 1,92, LINES 24, SIZE 118, 
              BITMAP-HANDLE QUITTER24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 9841, ID IS 3, NO-AUTO-DEFAULT, NO-TAB, 
              SELF-ACT, CANCEL-BUTTON, 
              TITLE "Quiitter sans sélection", 
              ATW-CSS-CLASS "button-quitter".
           03 Screen1-La-Rech, Label, 
              COL 54,57, LINE 10,69, LINES 1,69 CELLS, 
              SIZE 62,71 CELLS, 
              COLOR IS 13, FONT IS Small-Font, ID IS 10, 
              LABEL-OFFSET 0, 
              TITLE 
              "Pour rechercher un mot (chaîne de caractères), faire préc
      -       "éder par un /", TRANSPARENT.
           03 Screen1-La-nb-elt, Label, 
              COL 104,71, LINE 44,31, LINES 1,08 CELLS, 
              SIZE 42,86 CELLS, 
              COLOR IS 13, FONT IS Default-Font, ID IS 8, 
              LABEL-OFFSET 0, TRANSPARENT, VISIBLE 0.
           03 Screen1-Pb-Plus, Push-Button, 
              COL 151,71, LINE 43,62, LINES 24, SIZE 189, 
              BITMAP-HANDLE PLUSxxx16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1111, ID IS 11, NO-TAB, 
              TITLE "Afficher les 100 articles suivants (&+)", 
              VISIBLE 0, ATW-CSS-CLASS "button-af100".
           03 Screen1-Bt-1, Bitmap, 
              COL 73,43, LINE 32,54, LINES 16, SIZE 10, 
              BITMAP-HANDLE TRIERAD10-JPG, BITMAP-NUMBER 1, 
              ID IS 13, VISIBLE 0.
           03 Screen1-Bt-1a, Bitmap, 
              COL 71,29, LINE 32,54, LINES 16, SIZE 10, 
              BITMAP-HANDLE flechebas-jpg, BITMAP-NUMBER 1, 
              ID IS 14, VISIBLE 0.
           03 Screen1-Bt-1b, Bitmap, 
              COL 75,57, LINE 32,54, LINES 16, SIZE 10, 
              BITMAP-HANDLE TRIERDD10-JPG, BITMAP-NUMBER 1, 
              ID IS 15, VISIBLE 0.
           03 Screen1-Bt-1c, Bitmap, 
              COL 77,71, LINE 32,54, LINES 16, SIZE 10, 
              BITMAP-HANDLE TRIERDE10-JPG, BITMAP-NUMBER 1, 
              ID IS 16, VISIBLE 0.
           03 Screen1-La-Rech2, Label, 
              COL 117,57, LINE 10,69, LINES 1,69 CELLS, 
              SIZE 62,71 CELLS, 
              COLOR IS 13, FONT IS Small-Font, ID IS 22, 
              LABEL-OFFSET 0, 
              TITLE 
              "Pour une recherche par mot et identifiant, saisir sous la
      -       " forme /MOT /IDF", TRANSPARENT, VISIBLE 0.
           03 Screen1-Bt-1d, Bitmap, TRANSPARENT-COLOR 10724259, 
              COL 120,71, LINE 6,92, LINES 16, SIZE 16, 
              BITMAP-HANDLE OCCASIO16-bmp, BITMAP-NUMBER 1, 
              ID IS 28, VISIBLE 0.
           03 Screen1-Bt-1e, Bitmap, TRANSPARENT-COLOR 12632256, 
              COL 61,43, LINE 44,31, LINES 16, SIZE 16, 
              BITMAP-HANDLE INTERDI16-BMP, BITMAP-NUMBER 1, 
              ID IS 30, VISIBLE LK-MART-L-IVT.
           03 Screen1-Bt-1f, Bitmap, 
              COL 22,14, LINE 44,15, LINES 22, SIZE 16, 
              BITMAP-HANDLE c-jpg, BITMAP-NUMBER 1, 
              ID IS 31.
           03 Screen1-Bt-1aa, Bitmap, 
              COL 36,29, LINE 44,15, LINES 22, SIZE 16, 
              BITMAP-HANDLE k-jpg, BITMAP-NUMBER 1, 
              ID IS 32.
           03 Screen1-La-compo, Label, 
              COL 25,86, LINE 44,31, LINES 1,23 CELLS, 
              SIZE 10,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 33, LABEL-OFFSET 0, 
              TITLE "Compo", TRANSPARENT.
           03 Screen1-La-kit, Label, 
              COL 40,00, LINE 44,31, LINES 1,23 CELLS, SIZE 8,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 34, LABEL-OFFSET 0, 
              TITLE "Kit", TRANSPARENT.
           03 Screen1-Bt-1g, Bitmap, 
              COL 3,00, LINE 44,15, LINES 22, SIZE 16, 
              BITMAP-HANDLE achat-interdit-jpg, BITMAP-NUMBER 1, 
              ID IS 35.
           03 Screen1-La-achi, Label, 
              COL 5,29, LINE 16,31, LINES 1,23 CELLS, SIZE 17,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 36, LABEL-OFFSET 0, 
              TITLE "Achat interdit", TRANSPARENT.
           03 Screen1-La-tar2, Label, 
              COL 50,86, LINE 16,31, LINES 1,23 CELLS, 
              SIZE 17,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 37, LABEL-OFFSET 0, 
              TITLE "Vente interdite", TRANSPARENT, 
              VISIBLE LK-MART-L-IVT.
           03 Screen1-Bt-1h, Bitmap, TRANSPARENT-COLOR 12632256, 
              COL 81,29, LINE 44,31, LINES 16, SIZE 16, 
              BITMAP-HANDLE PREFNON16-bmp, BITMAP-NUMBER 1, 
              ID IS 39, VISIBLE MXFWK-PALM.
           03 Screen1-La-4a, Label, 
              COL 87,29, LINE 44,31, LINES 1,23 CELLS, 
              SIZE 17,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 40, 
              LABEL-OFFSET 20, 
              TITLE "Article Préférentiel", VISIBLE MXFWK-PALM.
           03 Screen1-Bt-1ab, Bitmap, TRANSPARENT-COLOR 12632256, 
              COL 84,00, LINE 44,31, LINES 16, SIZE 16, 
              BITMAP-HANDLE PREFOUI16-bmp, BITMAP-NUMBER 1, 
              ID IS 41, VISIBLE MXFWK-PALM.
           03 Screen1-Cb-ACHI, Check-Box, 
              COL 3,00, LINE 16,31, LINES 1,23 CELLS, SIZE 1,71 CELLS, 
              COLOR IS 514, EXCEPTION-VALUE 1254, FONT IS Small-Font, 
              ID IS 42, VALUE W-ACHI.
           03 Screen1-Cb-VTEI, Check-Box, 
              COL 48,57, LINE 16,31, LINES 1,23 CELLS, SIZE 1,71 CELLS, 
              COLOR IS 514, EXCEPTION-VALUE 1255, FONT IS Small-Font, 
              ID IS 43, VALUE W-VTEI, VISIBLE LK-MART-L-IVT.
           03 Screen1-Pb-FOU, Push-Button, 
              COL 168,86, LINE 4,69, LINES 24, SIZE 24, 
              BITMAP-HANDLE ZOOMxxx12-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1011, FONT IS Small-Font, ID IS 44, 
              NO-TAB, SELF-ACT, 
              TITLE "Liste des fournisseur", VISIBLE 0, 
              ATW-CSS-CLASS "button-icon fa-search".
           03 Screen1-Pb-GFA, Push-Button, 
              COL 168,86, LINE 7,62, LINES 24, SIZE 24, 
              BITMAP-HANDLE ZOOMxxx12-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1012, FONT IS Small-Font, ID IS 47, 
              NO-TAB, SELF-ACT, 
              TITLE "Liste des fournisseur", VISIBLE 0, 
              ATW-CSS-CLASS "button-icon fa-search".
           03 Screen1-La-ASTO, Label, 
              COL 28,86, LINE 16,31, LINES 1,23 CELLS, 
              SIZE 17,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 23, LABEL-OFFSET 0, 
              TITLE "Avec stock", TRANSPARENT, VISIBLE WV-ASTO.
           03 Screen1-Cb-ASTO, Check-Box, 
              COL 26,57, LINE 16,31, LINES 1,23 CELLS, SIZE 1,71 CELLS, 
              COLOR IS 514, EXCEPTION-VALUE 1158, FONT IS Small-Font, 
              ID IS 38, VALUE W-ASTO, VISIBLE WV-ASTO.
           03 Screen1-La-achia, Label, 
              COL 6,14, LINE 44,31, LINES 1,23 CELLS, SIZE 16,00 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 51, LABEL-OFFSET 0, 
              TITLE "Achat interdit", TRANSPARENT.
           03 Screen1-La-tar2a, Label, 
              COL 64,71, LINE 44,31, LINES 1,23 CELLS, 
              SIZE 15,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 52, LABEL-OFFSET 0, 
              TITLE "Vente interdite", TRANSPARENT, 
              VISIBLE LK-MART-L-IVT.
           03 Screen1-La-2, Label, 
              COL 3,00, LINE 13,46, LINES 1,92 CELLS, SIZE 47,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 53, LABEL-OFFSET 0, 
              TITLE "Filtrer par", TRANSPARENT, ATW-CSS-CLASS "h5".
           03 Screen1-La-2a, Label, 
              COL 3,00, LINE 2,23, LINES 1,92 CELLS, SIZE 47,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 54, LABEL-OFFSET 0, 
              TITLE "Critères de recherche", TRANSPARENT, 
              ATW-CSS-CLASS "h5".

      *{Bench}end

      *{Bench}linkpara
       PROCEDURE DIVISION USING LK-ZONE-PALM, LK-MART-L.
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
           COPY RESOURCE "PLUSxxx16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "PLUSxxx16.BMP", GIVING 
              PLUSxxx16-BMP
           COPY RESOURCE "TRIERAD10.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "TRIERAD10.JPG", GIVING 
              TRIERAD10-JPG
           COPY RESOURCE "flechebas.jpg".
           CALL "W$BITMAP" USING WBITMAP-LOAD "flechebas.jpg", GIVING 
              flechebas-jpg
           COPY RESOURCE "TRIERDD10.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "TRIERDD10.JPG", GIVING 
              TRIERDD10-JPG
           COPY RESOURCE "TRIERDE10.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "TRIERDE10.JPG", GIVING 
              TRIERDE10-JPG
           COPY RESOURCE "OCCASIO16.bmp".
           CALL "W$BITMAP" USING WBITMAP-LOAD "OCCASIO16.bmp", GIVING 
              OCCASIO16-bmp
           COPY RESOURCE "INTERDI16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "INTERDI16.BMP", GIVING 
              INTERDI16-BMP
           COPY RESOURCE "W:\mx\resource\c.jpg".
           CALL "W$BITMAP" USING WBITMAP-LOAD "c.jpg", GIVING c-jpg
           COPY RESOURCE "W:\mx\resource\k.jpg".
           CALL "W$BITMAP" USING WBITMAP-LOAD "k.jpg", GIVING k-jpg
           COPY RESOURCE "W:\mx\resource\achat-interdit.jpg".
           CALL "W$BITMAP" USING WBITMAP-LOAD "achat-interdit.jpg", 
              GIVING achat-interdit-jpg
           COPY RESOURCE "PREFNON16.bmp".
           CALL "W$BITMAP" USING WBITMAP-LOAD "PREFNON16.bmp", GIVING 
              PREFNON16-bmp
           COPY RESOURCE "PREFOUI16.bmp".
           CALL "W$BITMAP" USING WBITMAP-LOAD "PREFOUI16.bmp", GIVING 
              PREFOUI16-bmp
           COPY RESOURCE "ZOOMxxx12.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ZOOMxxx12.BMP", GIVING 
              ZOOMxxx12-BMP
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
           IF PLUSxxx16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY PLUSxxx16-BMP
              MOVE 0 TO PLUSxxx16-BMP
           END-IF
           IF TRIERAD10-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY TRIERAD10-JPG
              MOVE 0 TO TRIERAD10-JPG
           END-IF
           IF flechebas-jpg NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY flechebas-jpg
              MOVE 0 TO flechebas-jpg
           END-IF
           IF TRIERDD10-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY TRIERDD10-JPG
              MOVE 0 TO TRIERDD10-JPG
           END-IF
           IF TRIERDE10-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY TRIERDE10-JPG
              MOVE 0 TO TRIERDE10-JPG
           END-IF
           IF OCCASIO16-bmp NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY OCCASIO16-bmp
              MOVE 0 TO OCCASIO16-bmp
           END-IF
           IF INTERDI16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY INTERDI16-BMP
              MOVE 0 TO INTERDI16-BMP
           END-IF
           IF c-jpg NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY c-jpg
              MOVE 0 TO c-jpg
           END-IF
           IF k-jpg NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY k-jpg
              MOVE 0 TO k-jpg
           END-IF
           IF achat-interdit-jpg NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY achat-interdit-jpg
              MOVE 0 TO achat-interdit-jpg
           END-IF
           IF PREFNON16-bmp NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY PREFNON16-bmp
              MOVE 0 TO PREFNON16-bmp
           END-IF
           IF PREFOUI16-bmp NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY PREFOUI16-bmp
              MOVE 0 TO PREFOUI16-bmp
           END-IF
           IF ZOOMxxx12-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ZOOMxxx12-BMP
              MOVE 0 TO ZOOMxxx12-BMP
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
                 LINK TO THREAD, NO SCROLL, TITLE W-TIT, TITLE-BAR, 
                 USER-GRAY, USER-WHITE, VISIBLE 0, NO WRAP, 
                 ATW-CSS-ID "modal_screen_mart_l_1", 
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
      * Screen1-DaRb-NOR Link To
              WHEN Key-Status = 1008
                 PERFORM Screen1-DaRb-NOR-Link
      * Screen1-DaRb-ARF Link To
              WHEN Key-Status = 1010
                 PERFORM Screen1-DaRb-ARF-Link
      * Screen1-Pb-Lancer Link To
              WHEN Key-Status = 9859
                 PERFORM Screen1-Pb-Lancer-LinkTo
              END-EVALUATE
           END-PERFORM
           DESTROY Screen1-Handle
           INITIALIZE Key-Status
           .

      * Screen1-Gd-1
       Acu-Screen1-Gd-1-Content.
      * Cells Settings
           MODIFY Screen1-Gd-1, X = 1, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "Code", 
           MODIFY Screen1-Gd-1, X = 2, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "Libellé", 
           MODIFY Screen1-Gd-1, X = 3, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = 
              "Référence Fournisseur", 
      * Columns' Setting
           MODIFY Screen1-Gd-1, X = 1, COLUMN-COLOR = 2, 
           MODIFY Screen1-Gd-1, X = 2, COLUMN-COLOR = 2, 
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
      * Screen1-Rb-ORD1 Link To
              WHEN Key-Status = 1000
                 PERFORM Screen1-Rb-ORD1-Ev-Cmd-Clicked
      * Screen1-DaRb-REFFOU Link To
              WHEN Key-Status = 1005
                 PERFORM Screen1-DaRb-REFFOU-Ev-Cmd-Clicked
      * Screen1-Rb-ORD3 Link To
              WHEN Key-Status = 1002
                 PERFORM Screen1-Rb-ORD3-Ev-Cmd-Clicked
      * Screen1-Rb-ORD2 Link To
              WHEN Key-Status = 1003
                 PERFORM Screen1-Rb-ORD2-Ev-Cmd-Clicked
      * Screen1-DaRb-Int Link To
              WHEN Key-Status = 1001
                 PERFORM Screen1-DaRb-Int-Ev-Cmd-Clicked
      * Screen1-DaRb-ser Link To
              WHEN Key-Status = 1004
                 PERFORM Screen1-DaRb-ser-Ev-Cmd-Clicked
      * Screen1-Rb-ORI Link To
              WHEN Key-Status = 1030
                 PERFORM Screen1-Rb-ORI-Link
      * Screen1-Rb-MUL Link To
              WHEN Key-Status = 1031
                 PERFORM Screen1-Rb-ORI-Link
      * Screen1-Cb-SELFOU Link To
              WHEN Key-Status = 1007
                 PERFORM Screen1-DaRb-Fou-Ev-Cmd-Clicked
      * Screen1-Cb-SELFAM Link To
              WHEN Key-Status = 1006
                 PERFORM Screen1-DaRb-Fam-Link
      * Screen1-Pb-Accept Link To
              WHEN Key-Status = 9858
                 PERFORM Screen1-Pb-Accept-Link
      * Screen1-Pb-Cancel Link To
              WHEN Key-Status = 9841
                 PERFORM Screen1-Pb-Cancel-Link
      * Screen1-Pb-Plus Link To
              WHEN Key-Status = 1111
                 PERFORM Screen1-Pb-Plus-Link
      * Screen1-Cb-ACHI Link To
              WHEN Key-Status = 1254
                 PERFORM Screen1-Cb-ACHI-Link
      * Screen1-Cb-VTEI Link To
              WHEN Key-Status = 1255
                 PERFORM Screen1-Cb-VTEI-Link
      * Screen1-Pb-FOU Link To
              WHEN Key-Status = 1011
                 PERFORM Screen1-Pb-FOU-Link
      * Screen1-Pb-GFA Link To
              WHEN Key-Status = 1012
                 PERFORM Screen1-Pb-GFA-Link
      * Screen1-Cb-ASTO Link To
              WHEN Key-Status = 1158
                 PERFORM Screen1-Cb-ASTO-Link
           END-EVALUATE
           MOVE 1 TO Accept-Control
           .

       Acu-Close-Files.
      *    Before-Close
      *    After-Close
           .

      * COBCAP

      * MXPARAM

      * MXART

      * MXFOU

      * RECH

      * RECHCMD

      * MXGRAFAM

      * MXARTSA

      * MXAGENCE

      * MXCLI

      * MXCLID

      * MXFAMART

      * MXARTSA2

      * MXART2

       Acu-Screen1-Exit.
           SET Exit-Pushed TO TRUE
           .


       Screen1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Close
              PERFORM Screen1-Ev-Cmd-Close
           END-EVALUATE
           .

       Screen1-Rb-ORD1-Event-Proc.
           .

       Screen1-DaRb-REFFOU-Event-Proc.
           .

       Screen1-Rb-ORD3-Event-Proc.
           .

       Screen1-Rb-ORD2-Event-Proc.
           .

       Screen1-DaRb-Int-Event-Proc.
           .

       Screen1-DaRb-ser-Event-Proc.
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
           WHEN Msg-Heading-Clicked
              PERFORM Screen1-Gd-1-Ev-Msg-Heading-Clicked
           END-EVALUATE
           .
      ***   start event editor code   ***
           COPY "../../MISTRAL/COPY/ENVMIS.CBL".
           COPY "W:/mx/copy/CAL-MARGE.cbl"
             REPLACING ==W-ART== BY ==COD-MART==.
           COPY "W:/mx/copy/CAL-PV-ART-D.cbl".
           COPY "W:/mx/copy/cal-pv-art-gen.cbl".
           COPY "W:/mx/copy/arrondi.cbl".
040618     COPY "W:/mx/copy/numval.cbl".
140319*     COPY "W:/mistral/copy/centrefenetre.cbl".
250719     COPY "W:/mistral/copy/MisCentrefenetre.cbl".

       Open-File-Rtn.
           OPEN INPUT MXPARAM
           PERFORM STAT
           MOVE 1 TO W-MXPARAM
           READ MXPARAM
           PERFORM STAT
           CLOSE MXPARAM
                               
           OPEN I-O MXART    PERFORM STAT
           IF MXFWK-PALM = 1
              OPEN I-O MXART2   PERFORM STAT
           END-IF
           OPEN I-O MXFOU    PERFORM STAT

040618*     IF (W-NAT = 1  OR LK-MART-L-KEY = "G") 
      *        OR CLI-PALM = 250624                     | Bertet Musique
              OPEN I-O MXGRAFAM 
              PERFORM STAT
040618*     END-IF
           IF CLI-PALM = 250624                        | Bertet Musique
              OPEN I-O MXFAMART 
              PERFORM STAT
           END-IF

           IF  LK-MART-L-AGE <> SPACE 
           AND ( AFLA-MPAR = 2 
                          OR 3 )     
      *       Colonne stock
              OPEN I-O MXARTSA  PERFORM STAT
              OPEN I-O MXARTSA2 PERFORM STAT
           END-IF
270309
250719
           MOVE 0 TO W-ARF

250719
           .
       Close-File-Rtn.
           CLOSE MXART MXFOU 
           IF MXFWK-PALM = 1 CLOSE MXART2
           END-IF
040618*     IF (W-NAT = 1 OR LK-MART-L-KEY = "G") 
      *        OR CLI-PALM = 250624                    | Bertet musique
              CLOSE MXGRAFAM 
040618*     END-IF
           IF CLI-PALM = 250624                       | Bertet Musique
              CLOSE MXFAMART 
           END-IF
           close TRI
           delete file TRI

           IF  LK-MART-L-AGE <> SPACE 
           AND ( AFLA-MPAR = 2 
                          OR 3 )     
      *       Colonne stock
              CLOSE MXARTSA MXARTSA2 
           END-IF
           IF W-RECHPLUS = 1     
              CLOSE RECH
              DELETE FILE RECH
           END-IF
           .
       Init-Grille.
           PERFORM Reset-Grille

           INITIALIZE ENR-MART
           MOVE 0 TO W-EOF W-EOF-ART W-EOF-AMA W-START-AMA 
      *  Liste des Références par code ou désignation
           IF LK-MART-L-KEY = SPACES OR "W" 
                 EVALUATE LK-MART-L-ORD
                 WHEN 1 
                    MOVE LK-MART-L-LIB TO CO2-MART
                    START MXART KEY >= CLE5-MART
                        INVALID MOVE 1 TO W-EOF-ART
                    END-START
                 WHEN 3
                    MOVE LK-MART-L-LIB TO COD-MART
                    START MXART KEY >= CLE1-MART
                        INVALID MOVE 1 TO W-EOF-ART
                    END-START
130819*        WHEN 5
      *           MOVE LK-MART-L-FOU TO FOU-MART
      *           MOVE LK-MART-L-LIB TO REF-MART
      *           START MXART KEY >= CLE3-MART
      *               INVALID MOVE 1 TO W-EOF-ART
      *           END-START
                 WHEN 7
                    MOVE LK-MART-L-LIB TO RFI-MART
                    START MXART KEY >= CLE6-MART
                        INVALID MOVE 1 TO W-EOF-ART
                    END-START
                 WHEN 8
                    MOVE LK-MART-L-LIB TO RFN-MART
                    START MXART KEY >= CLE7-MART
                        INVALID MOVE 1 TO W-EOF-ART
                    END-START
                 WHEN OTHER
                    MOVE LK-MART-L-LIB TO DES-MART
                    START MXART KEY >= CLE2-MART
                       INVALID MOVE 1 TO W-EOF-ART
                    END-START
                 END-EVALUATE
           ELSE 
             IF LK-MART-L-KEY ="F"
      *  Liste des Références pour un fournisseur
                 IF LK-MART-L-MULTI = 1   
040618           OR IND-MULTI = 0
                    MOVE LK-MART-L-FOU TO FOU-MART 
                    MOVE LK-MART-L-LIB TO REF-MART
                    START MXART KEY >= CLE3-MART
                        INVALID MOVE 1 TO W-EOF-ART
290616                                    W-EOF | SAMIA liste avec n° ref seul si aucun article trouvé
                    END-START
                 ELSE
                    MOVE 1 TO W-EOF-ART
                 END-IF
             END-IF
           END-IF.  

           IF W-EOF-ART = 1 AND LK-MART-L-KEY NOT = "F"
              MOVE 1 TO W-EOF
           END-IF
           IF  W-EOF-ART = 0 AND (    LK-MART-L-MULTI = 1     
040618                             OR IND-MULTI = 0 )
               PERFORM READ-NEXT-MXART
           END-IF

           MOVE 2 TO Screen1-Gd-1-Cursor-Y-Old
           MOVE SPACES TO Screen1-Gd-1-COD
           MOVE 1 TO Tmp-9-3
           MOVE 0 TO W-NBR
                     W-RECHPLUS
           PERFORM REMP-GRILLE
      * Positionnement du curseur sur la grille...
           MODIFY Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old),
                  CURSOR-Y = Screen1-Gd-1-Cursor-Y-Old,
070720*                  ROW-COLOR = W-ROW-LOW-COLOR,
                  MASS-UPDATE = 0

      * Patch : sans ça, la grille peut parfois mélanger les lignes...
           MOVE SPACES TO Screen1-Gd-1-Record
           .
       REMP-GRILLE.
           PERFORM UNTIL W-EOF = 1 OR W-NBR > 100
               PERFORM Mep-Un-Art
               IF W-EOF-ART = 0 AND (    LK-MART-L-MULTI = 1
040618                                OR IND-MULTI = 0 )
                 PERFORM READ-NEXT-MXART
               END-IF
           END-PERFORM
           
           IF W-EOF = 1 
              MODIFY Screen1-Pb-Plus, VISIBLE 0
      *        MODIFY Screen1-La-Plus, VISIBLE 0
              IF W-ORDC NOT = 1 
                    AND NOT = 3 
                 PERFORM Aff-Tri
              ELSE 
                 MOVE 2   TO W-TRI
                 MOVE "D" TO W-SENS
                 PERFORM Aff-Ordre-Tri
              END-IF
           ELSE
              IF W-NAT <> 1     
                 MODIFY Screen1-Pb-Plus, VISIBLE 1
      *           MODIFY Screen1-La-Plus, VISIBLE 1
              END-IF
           END-IF
           .

       Plus-Grille.
           IF W-RECHPLUS = 0     
              MOVE SPACES TO Screen1-Gd-1-COD
              MOVE 0 TO W-NBR
              PERFORM Curseur-Sablier
              PERFORM REMP-GRILLE 
              PERFORM Curseur-Fleche
              MOVE SPACES TO Screen1-Gd-1-Record
           ELSE
              MOVE 0 TO W-NBR
              PERFORM Curseur-Sablier
              PERFORM Remp-Grille-Rech-Boucle
              PERFORM Curseur-Fleche
              MOVE SPACES TO Screen1-Gd-1-Record
           END-IF
           .
       READ-NEXT-MXART.                            
           READ MXART NEXT END MOVE 1 TO W-EOF-ART 
           END-READ
           PERFORM STAT
           PERFORM TRADUIRE-ART
           IF (LK-MART-L-KEY = "F" 
130819*     OR LK-MART-L-ORD = 5)
130819                            )
           AND LK-MART-L-FOU NOT = FOU-MART
              MOVE 1 TO W-EOF-ART
           END-IF.
           IF  LK-MART-L-KEY = "G" 
           AND (    LK-MART-L-GRA NOT = GRA-MART
                 OR LK-MART-L-FAM NOT = FAM-MART )     
              MOVE 1 TO W-EOF-ART
           END-IF.
           IF  W-EOF-ART = 1 AND 
              (LK-MART-L-KEY NOT = "F"  OR LK-MART-L-MULTI = 1    
040618                                  OR IND-MULTI = 0 )
              MOVE 1 TO W-EOF
           END-IF
           IF W-EOF-ART = 0 AND LK-MART-L-ACT NOT = "L" AND
              ILV-MART = 1 GO READ-NEXT-MXART.

           IF  (    LK-MART-L-IVT = 0 
071117           OR (     LK-MART-L-IVT = 1
071117                AND W-VTEI = 0 ) )
           AND TAR-MART = 2 
170315     AND LK-MART-L-ACT NOT = "L"
           AND W-EOF-ART = 0 THEN
      *       interdit à la vente
              GO READ-NEXT-MXART
           END-IF
071117
           IF  W-ACHI = 0 
           AND ACHI-MART = 1 THEN
      *       interdit à l'achat
              GO READ-NEXT-MXART
           END-IF
071117
           IF LK-MART-L-KEY = "W" AND WEB-MART = 1
           AND W-EOF-ART = 0
              GO READ-NEXT-MXART
           END-IF
      
      **     IF  W-EOF-ART = 0 AND
      **         LK-MART-L-ACT = "L" AND ((LK-MART-L-INO = 1
      **                AND STR-MARL = 0 )
      **           OR (LK-MART-L-INO = 2 AND STR-MARL <> 0 AND <> 1)
      **           OR (LK-MART-L-INO = 0 AND STR-MARL <> 0 )
      **           OR (LK-MART-L-INO = 3 AND STR-MARL <> 1 AND <> 2))
      **               
      **         GO READ-NEXT-MXART
      **     END-IF
130819     
           IF  W-EOF-ART = 0 
           AND LK-MART-L-SELFOU = 1
           AND FOU-MART <> LK-MART-L-FOU THEN
              GO READ-NEXT-MXART
           END-IF
130819
           .


       Screen1-AfterInitData.
140319*   
      *     IF LK-MART-L-HANDLE <> 0 THEN
      *        MOVE LK-MART-L-HANDLE TO WCF-HANDLE-FP
      *        PERFORM CentreFenetre
      *     END-IF
140319*
250719     PERFORM MisCentreFenetreScreen1

040618*     evaluate LK-MART-L-ORD déplacé
      *     when 1 
      *        perform Screen1-Rb-ORD1-Ev-Cmd-Clicked
      *     when 2 
      *        perform Screen1-Rb-ORD2-Ev-Cmd-Clicked
      *     when 3 
      *        perform Screen1-Rb-ORD3-Ev-Cmd-Clicked
      *     end-evaluate
                        
240103     MOVE 1 TO W-ORDC
           display screen1
040618*    
           evaluate LK-MART-L-ORD
           when 1 
              perform Screen1-Rb-ORD1-Ev-Cmd-Clicked
           when 2 
              perform Screen1-Rb-ORD2-Ev-Cmd-Clicked
           when 3 
              perform Screen1-Rb-ORD3-Ev-Cmd-Clicked
           END-EVALUATE
           
           IF W-PRESEL = 1 THEN
      *       Revient sur sélection précédente
              evaluate LK-MART-L-ORD
              when 4 
                 perform Screen1-DaRb-ser-Ev-Cmd-Clicked
130819*        when 5 
      *           perform Screen1-DaRb-Fou-Ev-Cmd-Clicked
              when 6 
                 perform Screen1-DaRb-REFFOU-Ev-Cmd-Clicked
              when 7 
                 perform Screen1-DaRb-Int-Ev-Cmd-Clicked
              when 8 
                 perform Screen1-DaRb-NOR-Link
130819*        when 9 
      *           perform Screen1-DaRb-Fam-Link
130819        when 10
                 perform Screen1-DaRb-ARF-Link
              end-evaluate

              IF LK-MART-L-ORD = 3 THEN
                 MOVE LK-MART-L-LIB TO W-CODR
                 MODIFY Screen1-Ef-CO1,
                    VALUE W-CO1
                 MODIFY Screen1-Ef-CO2,
                    VALUE W-CO2
              ELSE
                 MODIFY Screen1-Ef-LIB,
                    VALUE LK-MART-L-LIB
              END-IF

130819*        IF LK-MART-L-ORD = 5 THEN
130819        IF LK-MART-L-SELFOU = 1 THEN
      *          Fournisseur 
130819           perform Screen1-DaRb-Fou-Ev-Cmd-Clicked
                 PERFORM Affi-FOU
              END-IF

130819*        IF LK-MART-L-ORD = 9 THEN
130819        IF LK-MART-L-SELFAM = 1 THEN
      *          Famille 
130819           perform Screen1-DaRb-Fam-Link
                 PERFORM Affi-GFA
              END-IF

           END-IF
040618
270309   
      *  3 colonnes
           IF LK-MART-L-AGE = SPACE
           OR AFLA-MPAR <> 3   
              MODIFY Screen1-Gd-1, DISPLAY-COLUMNS (1, 23, 83, 120)
           END-IF.

           PERFORM Mep-Gd-1
270309
           IF W-NAT = 1     
              MODIFY Screen1-Pb-Plus,
                 VISIBLE 0
           END-IF
           IF LK-MART-L-SER = 1
              MODIFY Screen1-DaRb-ser, Visible True
041012*        IF LK-MART-L-ACT = "L" 
      *           MODIFY Screen1-DaRb-Int, VISIBLE 1
      *        END-IF
           END-IF 
041012
           IF ((LK-MART-L-ACT <> "L" AND RIA-MPAR = 1 )
               OR (LK-MART-L-SER = 1 AND LK-MART-L-ACT = "L" ))
           AND LK-MART-L-KEY NOT = "W"
              MODIFY Screen1-DaRb-Int, VISIBLE 1
           END-IF
           IF LK-MART-L-ACT = "L" OR LK-MART-L-KEY = "W"
              MODIFY Screen1-DaRb-NOR, VISIBLE 0
           END-IF
041012
           IF LK-MART-L-KEY <> "F" AND <> "G" AND <> "W"
           AND (LK-MART-L-ACT <> "L" OR LK-MART-L-SER <> 1)
130819*        MODIFY Screen1-DaRb-fou, Visible True
      *        MODIFY Screen1-DaRb-fam, Visible True
130819        MODIFY Screen1-Cb-SELFOU, Visible True
130819        MODIFY Screen1-Cb-SELFAM, Visible True
           END-IF 
           IF LK-MART-L-KEY = "G"     
              MODIFY Screen1-La-Rech, VISIBLE FALSE
              MODIFY Screen1-La-RECH2 VISIBLE FALSE             
           END-IF
           IF LK-MART-L-KEY = "W"     
              MODIFY Screen1-Rb-Ord1, COLOR 1
              MODIFY Screen1-Rb-Ord2, COLOR 1
              MODIFY Screen1-Rb-Ord3, COLOR 1
              MODIFY Screen1-La-1, COLOR 1
              MODIFY Screen1-EF-CO1, COLOR 1
              MODIFY Screen1-EF-CO2, COLOR 1
              MODIFY Screen1-EF-LIB, COLOR 1
           END-IF
           IF LK-MART-L-KEY = "F"     
130819                     OR "G"
             MODIFY Screen1-Rb-ORD2,  VISIBLE TRUE
             MODIFY SCreen1-DaRb-REFFOU VISIBLE TRUE
040618       IF W-PRESEL = 0 THEN
                MOVE 6 TO LK-MART-L-ORD
130819          MOVE 0 TO LK-MART-L-SELFOU
                          LK-MART-L-SELFAM
040618       END-IF
240103       MOVE 3 TO W-ORDC
             MODIFY Screen1-Rb-ORD2 VALUE LK-MART-L-ORD
             MODIFY Screen1-DaRb-REFFOU VALUE LK-MART-L-ORD
           END-IF
      ***  BS (24/11/11) pour lancer la liste directement (recherche
      ***  chaine de car.)
           IF LK-MART-L-DES(1:1) = "/"
              MODIFY Screen1-Ef-LIB, VALUE LK-MART-L-LIB
              PERFORM Screen1-Ef-LIB-Aft-Procedure
              PERFORM Screen1-Pb-Lancer-LinkTo
           END-IF

      *     MOVE 4 TO ACCEPT-CONTROL
      *     MOVE 6 TO CONTROL-ID
           .
       Screen1-Gd-1-Ev-Msg-Begin-Entry.
           INQUIRE Screen1-Gd-1(Event-Data-2, 1),
                   HIDDEN-DATA IN LK-MART-L-COD
           INQUIRE Screen1-Gd-1(Event-Data-2, 2),
                   CELL-DATA IN LK-MART-L-DES
           IF LK-MART-L-ORD = 4 
           OR (LK-MART-L-ORD = 7 AND LK-MART-L-ACT = "L" )
              INQUIRE Screen1-Gd-1(Event-Data-2, 3),
                   CELL-DATA IN LK-MART-L-NSER
           END-IF
           perform Verif-Preferentiel
           MOVE Event-Action-Fail TO Event-Action
           PERFORM Mistral-CloseCurrentWindow
           .
       Screen1-Gd-1-Ev-Msg-Goto-Cell.
      * La ligne de titre est à ignorer...
           IF Event-Data-2 < 2
               MOVE 2 TO Event-Data-2
           END-IF
      * Pour voir si on a changé de ligne
      *     IF NOT Event-Data-2 = Screen1-Gd-1-Cursor-Y-Old     
070720*               MODIFY Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old),
070720*                      ROW-COLOR = 0
070720*               MODIFY Screen1-Gd-1(Event-Data-2), 
070720*                      ROW-COLOR = W-ROW-LOW-COLOR
      *     END-IF

           MOVE Event-Data-2 TO Screen1-Gd-1-Cursor-Y-Old
           .
301006* Screen1-Pb-Accept-Ex-Cmd-Clicked.
       Screen1-Pb-Accept-Link.
           INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old, 1),
                   HIDDEN-DATA IN LK-MART-L-COD
           INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old, 2),
                   CELL-DATA IN LK-MART-L-DES
           IF LK-MART-L-ORD = 4 
           OR (     LK-MART-L-ORD = 7
041012          AND LK-MART-L-ACT = "L" )
              INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old, 3),
                   CELL-DATA IN LK-MART-L-NSER
           END-IF
           perform Verif-Preferentiel
           PERFORM Mistral-CloseCurrentWindow
           .
301006* Screen1-Pb-Cancel-Ex-Cmd-Clicked.
       Screen1-Pb-Cancel-Link.
301006*     PERFORM Mistral-CloseCurrentWindow
           PERFORM ACU-Screen1-Exit
           .
       Screen1-Pb-Lancer-LinkTo.
           MODIFY Screen1-La-nb-elt, VISIBLE FALSE
           IF LK-MART-L-ORD = 0 EXIT PARAGRAPH END-IF

           IF LK-MART-L-ORD NOT = 3
                INQUIRE Screen1-Ef-LIB, VALUE LK-MART-L-LIB
           ELSE INQUIRE Screen1-Ef-CO1, VALUE W-CO1
                INQUIRE Screen1-Ef-CO2, VALUE W-CO2
040618        MOVE SPACE TO LK-MART-L-LIB
040618        STRING W-CO1
                     W-CO2
                INTO LK-MART-L-LIB
           END-IF
           PERFORM Curseur-Sablier
081117     MOVE 1 TO W-PREM-RECH
           CLOSE TRI
           DELETE FILE TRI
           MOVE 0 TO W-TRI

           COPY "../../mx/copy/Assign-FICTMP.cbl" REPLACING 
              ==FICTMP==   BY ==TRI==
              =='FICTMP'== BY ==TRI==.
 
           MODIFY Screen1-Pb-Plus, VISIBLE 0
      *     MODIFY Screen1-La-Plus, VISIBLE 0

           IF W-RECHPLUS = 1     
              CLOSE RECH
              DELETE FILE RECH
           END-IF
  
           IF  LK-MART-L-ORD = 2 
           AND LK-MART-L-LIB(1:1) <> "/"     
      *       Recherche désignation -> tri par désignation
              MOVE 2   TO W-ORDC
              MOVE "A" TO W-SENS
           END-IF
           IF ( LK-MART-L-KEY = "G" 
170816*          OR LK-MART-L-ORD = 9  )                               | clic "Par Famille"
130819                                ) | pas pour SELFAM sinon les recherches / ou ARTREF ne marche pas                             
040618     AND LK-MART-L-ACT <> "L" 
130819     AND LK-MART-L-ORD <> 10 THEN | pas référencement client
      *       Recherche articles d'une famille
              PERFORM Recherche-FAM
           ELSE
              IF LK-MART-L-ORD = 2 AND LK-MART-L-LIB(1:1) = "/"     
                 MOVE SPACE TO W-LIBDES W-LIBIDF
                 UNSTRING LK-MART-L-LIB(2:19) DELIMITED BY "/" 
                          INTO W-LIBDES W-LIBIDF 
                 IF W-LIBIDF = SPACE     
      *            Recherche chaine de caractère
                   PERFORM RECHERCHE
                 ELSE
      *            Recherche chaine de caractere sur désignation et sur idf
                   PERFORM RECHERCHE-DES-IDF
                 END-IF
              ELSE
      *          Recherche sur Code article
                 IF LK-MART-L-ORD = 1 AND LK-MART-L-LIB(1:1) = "/"     
      *             IF LK-MART-L-KEY = "F"     
      *               PERFORM RECHERCHE-REFART
      *             ELSE
                     PERFORM RECHERCHE-CODART
      *             END-IF
                 ELSE
      *             Recherche Numéro série
                    IF LK-MART-L-ORD = 4 
                    OR (     LK-MART-L-ORD = 7 
041012                   AND LK-MART-L-ACT = "L" )
                       PERFORM RECHERCHE-SER
      *                PERFORM INIT-GRILLE-SER
                    ELSE
                      IF LK-MART-L-ORD = 6 AND LK-MART-L-LIB(1:1) = "/"     
                        PERFORM RECHERCHE-REFART
                      ELSE
                       IF W-NAT = 1 
      *                   Recherche natures
                          PERFORM Recherche-NAT
                       ELSE
                          IF  LK-MART-L-ACT = "V" 
                          AND LK-MART-L-INO <> 9  
220113                    AND LK-MART-L-INO <> 0  
      *                      Recherche des articles vente composés
                             PERFORM RECHERCHE-INO
                          ELSE 
                             IF LK-MART-L-ACT = "L"     
                                PERFORM INIT-GRILLE-LOC
                             ELSE
                                IF  LK-MART-L-KEY = "F"
                                AND LK-MART-L-ORD = 2     
      *                            Recherche libellé par fournisseur
                                   IF LK-MART-L-MULTI = 1       
040618                             OR IND-MULTI = 0     
      *                               Désignation fournisseur d'origine
                                      PERFORM RECHERCHE-DES-FOU
                                   ELSE
      *                               Désignation fournisseur secondaire
                                      PERFORM RECHERCHE-DES-FOU-MAMA
                                   END-IF
                                ELSE
250719                             
                                   IF LK-MART-L-ORD = 10 THEN
                                      PERFORM RECHERCHE-ARTREF
                                   ELSE
250719
130819
                                      IF LK-MART-L-SELFAM = 1 THEN
                                         PERFORM Recherche-FAM
                                      ELSE
130819
      *                                  Recherche standard
                                         PERFORM INIT-GRILLE
130819                                END-IF

250719                             END-IF
                                END-IF
                             END-IF
                          END-IF
                       END-IF
                      END-IF
                    END-IF
                 END-IF
              END-IF
           END-IF

           PERFORM Curseur-Fleche
           MOVE 4 TO ACCEPT-CONTROL
           MOVE 1 TO CONTROL-ID
           .
       
       Screen1-Ev-Cmd-Close.
           PERFORM Mistral-WindowClosing
           .
       Screen1-Bef-Create.
           PERFORM Controle-Call
      *    Test présence nature
           MOVE 0 TO W-NAT
        
           PERFORM VARYING I FROM 1 BY 1
              UNTIL I > 10
              IF LK-MART-L-NAT(I) = 1     
                 MOVE 1 TO W-NAT
                 EVALUATE I
                 WHEN 1
                    STRING W-LIBNAT       DELIMITED BY "  "
                           " Fournitures" DELIMITED BY SIZE
                      INTO W-LIBNAT
                 WHEN 2
                    STRING W-LIBNAT            DELIMITED BY "  "
                           " Pièces Détachées" DELIMITED BY SIZE
                      INTO W-LIBNAT
                 WHEN 3
                    STRING W-LIBNAT                DELIMITED BY "  "
                           " Accessoires/Matériel" DELIMITED BY SIZE
                      INTO W-LIBNAT
                 WHEN 4
                    STRING W-LIBNAT     DELIMITED BY "  "
                           " Outillage" DELIMITED BY SIZE
                      INTO W-LIBNAT
                 WHEN 5
                    STRING W-LIBNAT        DELIMITED BY "  "
                           " Pneumatiques" DELIMITED BY SIZE
                      INTO W-LIBNAT
                 WHEN 6
                    STRING W-LIBNAT       DELIMITED BY "  "
                           " Lubrifiants" DELIMITED BY SIZE
                      INTO W-LIBNAT
                 WHEN 7
                    STRING W-LIBNAT      DELIMITED BY "  "
                           " Carburants" DELIMITED BY SIZE
                      INTO W-LIBNAT
                 WHEN 8
                    STRING W-LIBNAT                DELIMITED BY "  "
                           " Travaux Sous-Traités" DELIMITED BY SIZE
                      INTO W-LIBNAT
                 WHEN 10
                    STRING W-LIBNAT          DELIMITED BY "  "
                           " Petit Matériel" DELIMITED BY SIZE
                      INTO W-LIBNAT
                 END-EVALUATE

              END-IF

           END-PERFORM

           PERFORM Open-File-Rtn

040618     IF LK-MART-L-ORD = 0 THEN
      *       Pas paramètres précédents ASA
              IF SCA-MPAR = 2 MOVE 1 TO LK-MART-L-ORD
                         ELSE MOVE 3 TO LK-MART-L-ORD
              END-IF
070508        IF CLA-MPAR <> 0 MOVE CLA-MPAR TO LK-MART-L-ORD
070508        END-IF
              IF LK-MART-L-KEY = "F"     
                 MOVE 6 TO LK-MART-L-ORD
              END-IF
040618
              MOVE 0 TO W-PRESEL
130819                  LK-MART-L-SELFOU
130819                  LK-MART-L-SELFAM
           ELSE
      *       Récupère derniers critères ASA 
              MOVE 1 TO W-PRESEL
           END-IF
040618     

      * Si liste classique (/code ou désignation)
           EVALUATE LK-MART-L-KEY 
           WHEN SPACES 
              MOVE 1 TO Cod-Des-Visible
           WHEN "F"
      *       Références d'un fournisseur
              MOVE ZERO TO Cod-Des-Visible
              MOVE LK-MART-L-FOU TO COD-MFOU
              READ MXFOU INVALID KEY MOVE ALL "*" TO RAI-MFOU
              END-READ
              STRING "Liste des Articles du Fournisseur ",
                     RAI-MFOU DELIMITED BY "   "
                     " (", COD-MFOU, ")" DELIMITED BY SIZE
                INTO W-TIT
           WHEN "G"
      *       Articles d'une famille        
              MOVE ZERO TO Cod-Des-Visible
              INITIALIZE            ENR-MGFA
              MOVE LK-MART-L-GRA TO GRA-MGFA

              READ MXGRAFAM
              PERFORM STAT

              MOVE ABR-MGFA      TO W-ABR
              INITIALIZE            ENR-MGFA
              MOVE LK-MART-L-GRA TO GRA-MGFA
              MOVE LK-MART-L-FAM TO FAM-MGFA

              READ MXGRAFAM

              PERFORM STAT

              STRING "Liste des Articles de la Famille ",
                     W-ABR
                     " " 
                     ABR-MGFA DELIMITED BY SIZE
                INTO W-TIT
           END-EVALUATE

           IF W-NAT = 1     
      *       Acces par famille pour accélerer
              MOVE 0 TO W-EOF
              INITIALIZE ENR-MGFA
              START MXGRAFAM KEY >= CLE1-MGFA
              INVALID
                 MOVE 1 TO W-EOF
              END-START
              PERFORM STAT

              PERFORM UNTIL W-EOF = 1
                 READ MXGRAFAM NEXT
                 AT END
                    MOVE 1 TO W-EOF
                 EXIT PERFORM
                 END-READ
                 PERFORM STAT
                 IF  FAM-MGFA <> 0
                 AND NAT-MGFA <> 0
                 AND LK-MART-L-NAT(NAT-MGFA + 1) = 1     
      *             Nature sélectionnée
                    IF NB-FAM = NBMAX-FAM     
                       MOVE "Trop de famille" TO ACU-Msg-2
                       PERFORM Close-File-Rtn
                       EXIT PROGRAM
                    END-IF

                    ADD 1 TO NB-FAM
                    MOVE GRA-MGFA TO GRA-FAM(NB-FAM)
                    MOVE FAM-MGFA TO FAM-FAM(NB-FAM)
                 END-IF
              END-PERFORM

              STRING W-TIT    DELIMITED BY "  "
                     W-LIBNAT DELIMITED BY SIZE
                INTO W-TIT
           ELSE
              IF (LK-MART-L-ACT = "V" OR "F" or "f")     
                 EVALUATE LK-MART-L-INO
                 WHEN 0
                    STRING W-TIT               DELIMITED BY "  "
                           " articles simples" DELIMITED BY SIZE
                      INTO W-TIT
                 WHEN 1
                    STRING W-TIT               DELIMITED BY "  "
                           " compositions"     DELIMITED BY SIZE
                      INTO W-TIT
                 WHEN 3
                    STRING W-TIT               DELIMITED BY "  "
                           " kits"             DELIMITED BY SIZE
                      INTO W-TIT

                 END-EVALUATE
              END-IF
           END-IF
      ***  BS (24/11/11) pour lancer la liste directement (recherche
      ***  chaine de car.)

           IF  LK-MART-L-DES(1:1) = "/"
040618     AND W-PRESEL = 0 THEN
              MOVE 2 TO LK-MART-L-ORD
              MOVE LK-MART-L-DES TO LK-MART-L-LIB
           END-IF
040618
           IF (     LK-MART-L-KEY = "F"
                AND IND-MULTI = 1 )
250719     OR (     LK-MART-L-KEY <> "F"
130819                        AND <> "G"
250719          AND W-ARF = 1 ) THEN
      *       Afiche fournisseur d'origine / secondaire ou Référencemet client
              MOVE 5,69 TO W-LINE-REF
           ELSE
              MOVE 4,9  TO W-LINE-REF
           END-IF

           IF LK-MART-L-KEY = "F"
130819                     OR "G" THEN
              MOVE 2,57  TO W-COL-REFFOU
              MOVE 20,14 TO W-COL-ORD2
250719
              IF W-ARF = 1 THEN
                 MOVE 37   TO W-COL-ARF
                 MOVE 1,46 TO W-LINE-ARF
              END-IF
250719
           ELSE
250719
              IF W-ARF = 1 THEN
                 MOVE 2,57 TO W-COL-ARF
                 MOVE 4,38 TO W-LINE-ARF
              END-IF
250719
           END-IF
040618
301019
           IF  LK-MART-L-AGE <> SPACE
           AND AFLA-MPAR = 2
                        OR 3 THEN
              MOVE 1 TO WV-ASTO
           ELSE
              MOVE 0 TO WV-ASTO
           END-IF
301019
           .
       Screen1-Aft-Routine.
           PERFORM Close-File-Rtn
           .
      *
       Screen1-Gd-1-Ev-Msg-Heading-Clicked.
      *     IF EVENT-DATA-1 = 3 PERFORM PLUS-GRILLE
      *     END-IF
           IF W-TRI = 0     
              EXIT PARAGRAPH
           END-IF
270309
           IF  LK-MART-L-AGE <> SPACE
           AND AFLA-MPAR <> 0 
           AND Event-Data-1 > 2     
      *       Pas référence en troisième colonne
              EXIT PARAGRAPH
           END-IF
270309
      *      IF Event-Data-1 = 1 MOVE 3 TO W-NORD
      *     ELSE IF Event-Data-1 = 2 MOVE 2 TO W-NORD
      *      ELSE IF Event-Data-1 = 3 MOVE 5 TO W-NORD
      *           END-IF
      *          END-IF
      *     END-IF
           MOVE Event-Data-1 TO W-NORD
      *     IF LK-MART-L-ORD = W-NORD     
           IF W-ORDC = W-NORD     

              IF W-SENS = "A"     
                 MOVE "D" TO W-SENS
              ELSE
                 MOVE "A" TO W-SENS
              END-IF

           ELSE
      *        MOVE W-NORD TO W-ORD
      *        MODIFY Screen1-Rb-ORD1,       intérêt ?
      *           VALUE W-ORD
              MOVE W-NORD TO W-ORDC
           END-IF

           PERFORM Remp-Grille-Tri
           .
      *
       Screen1-Ef-LIB-Bef-Procedure.
           IF LK-MART-L-ORD = 1      EXIT PARAGRAPH END-IF
           IF LK-MART-L-ORD = 2 
           AND (    LK-MART-L-KEY NOT = "F" 
                 OR LK-MART-L-MULTI = 1    
040618           OR IND-MULTI = 0 ) 
           AND LK-MART-L-KEY <> "G"     
             MODIFY Screen1-La-Rech, VISIBLE TRUE
      *       MODIFY Screen1-La-RECH2 VISIBLE TRUE
           END-IF
           .

       Screen1-Ef-LIB-Aft-Procedure.
           IF LK-MART-L-ORD = 2     
             MODIFY Screen1-La-Rech, VISIBLE FALSE
             MODIFY Screen1-La-RECH2 VISIBLE FALSE           
           END-IF
           .
      ******************************************************************
       Screen1-Rb-ORD1-Ev-Cmd-Clicked.
           MOVE 1 TO W-ORDC
           MODIFY Screen1-Ef-LIB, VISIBLE 1
           MODIFY Screen1-Ef-CO1, VISIBLE 0
           MODIFY Screen1-Ef-CO2, VISIBLE 0
040618*     MODIFY Screen1-Ef-FOU, VISIBLE 0 130819
040618*     MODIFY Screen1-Pb-FOU, VISIBLE 0
040618*     MODIFY Screen1-Ef-GFA, VISIBLE 0
040618*     MODIFY Screen1-Pb-GFA, VISIBLE 0

           IF LK-MART-L-KEY <> "G"     
              MODIFY Screen1-La-Rech, VISIBLE TRUE,
           TITLE = "Pour faire une recherche sur une partie de code, fai
      -            "re précéder par un /"
           END-IF
           MODIFY Screen1-La-RECH2 VISIBLE FALSE
           MODIFY Screen1-Gd-1(1 3), CELL-DATA = "Référence Fournisseur"
           PERFORM Mistral-TransferFocus
           .
      *-----------------------------------------------------------------
       Screen1-Rb-ORD2-Ev-Cmd-Clicked.
           MOVE 2 TO W-ORDC
           MODIFY Screen1-Ef-LIB, VISIBLE 1
           MODIFY Screen1-Ef-CO1, VISIBLE 0
           MODIFY Screen1-Ef-CO2, VISIBLE 0
040618*     MODIFY Screen1-Ef-FOU, VISIBLE 0 130819
040618*     MODIFY Screen1-Pb-FOU, VISIBLE 0
040618*     MODIFY Screen1-Ef-GFA, VISIBLE 0
040618*     MODIFY Screen1-Pb-GFA, VISIBLE 0

           IF LK-MART-L-KEY <> "G"     
              MODIFY Screen1-La-Rech, VISIBLE TRUE,
           TITLE = "Pour rechercher un mot (chaîne de caractères), faire
      -            " précéder par un /"
           MODIFY Screen1-La-Rech2 VISIBLE TRUE 
           TITLE = "Pour une recherche par mot et identifiant, saisir so
      -            "us la forme /MOT /IDF"
           END-IF
           MODIFY Screen1-Gd-1(1 3), CELL-DATA = "Référence Fournisseur"
           PERFORM Mistral-TransferFocus
           .
      *-----------------------------------------------------------------
       Screen1-Rb-ORD3-Ev-Cmd-Clicked.
           MOVE 1 TO W-ORDC
           MODIFY Screen1-Ef-LIB, VISIBLE 0
           MODIFY Screen1-Ef-CO1, VISIBLE 1
           MODIFY Screen1-Ef-CO2, VISIBLE 1
040618*     MODIFY Screen1-Ef-FOU, VISIBLE 0 130819
040618*     MODIFY Screen1-Pb-FOU, VISIBLE 0
040618*     MODIFY Screen1-Ef-GFA, VISIBLE 0
040618*     MODIFY Screen1-Pb-GFA, VISIBLE 0

           IF LK-MART-L-KEY <> "G"     
              MODIFY Screen1-La-Rech, VISIBLE TRUE,
           TITLE = "Pour rechercher un mot (chaîne de caractères), faire
      -            " précéder par un /"
           END-IF
           MODIFY Screen1-La-RECH2 VISIBLE FALSE
           MODIFY Screen1-Gd-1(1 3), CELL-DATA = "Référence Fournisseur"
           PERFORM Mistral-TransferFocus
           .
      *-----------------------------------------------------------------
       Screen1-DaRb-Fou-Ev-Cmd-Clicked. | 130819 rdio bouton passé en checkbox
130819*     MOVE 3 TO W-ORDC
      *     MODIFY Screen1-Ef-LIB, VISIBLE 1
      *     MODIFY Screen1-Ef-CO1, VISIBLE 0
      *     MODIFY Screen1-Ef-CO2, VISIBLE 0
      *                   
      *     MODIFY Screen1-La-RECH2 VISIBLE FALSE
      *     MODIFY Screen1-La-Rech, VISIBLE TRUE,
      *     TITLE = "Indiquez la référence à rechercher"
      *     MODIFY Screen1-Gd-1(1 3), CELL-DATA = "Réf. Fournisseur"
040618*     MODIFY Screen1-Ef-GFA, VISIBLE 0 130819
040618*     MODIFY Screen1-Pb-GFA, VISIBLE 0
130819     IF LK-MART-L-SELFOU = 1 THEN
040618        PERFORM Affi-FOU
130819     ELSE
130819        MODIFY Screen1-Ef-FOU, VISIBLE 0
130819        MODIFY Screen1-Pb-FOU, VISIBLE 0
130819     END-IF
           .
      *-----------------------------------------------------------------
       Screen1-DaRb-ser-Ev-Cmd-Clicked.
           MOVE 3 TO W-ORDC
           MODIFY Screen1-Ef-LIB, VISIBLE 1
           MODIFY Screen1-Ef-CO1, VISIBLE 0
           MODIFY Screen1-Ef-CO2, VISIBLE 0
040618*     MODIFY Screen1-Ef-FOU, VISIBLE 0 130819
040618*     MODIFY Screen1-Pb-FOU, VISIBLE 0
040618*     MODIFY Screen1-Ef-GFA, VISIBLE 0
040618*     MODIFY Screen1-Pb-GFA, VISIBLE 0

           MODIFY Screen1-Gd-1(1 3), CELL-DATA = "N° de Série"
           IF LK-MART-L-ACT = "L" 
              MODIFY Screen1-Gd-1(1 4), CELL-DATA = "N° Interne"
           end-if
           MODIFY Screen1-La-Rech, VISIBLE FALSE
           MODIFY Screen1-La-RECH2 VISIBLE FALSE
           PERFORM Mistral-TransferFocus
           .
      *-----------------------------------------------------------------
       Screen1-DaRb-Int-Ev-Cmd-Clicked.
           MOVE 3 TO W-ORDC
           MODIFY Screen1-Ef-LIB, VISIBLE 1
           MODIFY Screen1-Ef-CO1, VISIBLE 0
           MODIFY Screen1-Ef-CO2, VISIBLE 0
040618*     MODIFY Screen1-Ef-FOU, VISIBLE 0 130819
040618*     MODIFY Screen1-Pb-FOU, VISIBLE 0
040618*     MODIFY Screen1-Ef-GFA, VISIBLE 0
040618*     MODIFY Screen1-Pb-GFA, VISIBLE 0
           MODIFY Screen1-La-Rech, VISIBLE FALSE
           MODIFY Screen1-La-RECH2 VISIBLE FALSE
041012     IF LK-MART-L-ACT = "L" 
              MODIFY Screen1-Gd-1(1 3), CELL-DATA = "N° de Série"
              MODIFY Screen1-Gd-1(1 4), CELL-DATA = "N° Interne"
041012     
           ELSE
              MOVE 7 TO LK-MART-L-ORD
              MODIFY Screen1-La-Rech, VISIBLE TRUE,
                 TITLE = "Indiquez la référence à rechercher"
           end-if
041012
           PERFORM Mistral-TransferFocus
           .
      *-----------------------------------------------------------------
       Screen1-DaRb-REFFOU-Ev-Cmd-Clicked.
           MODIFY Screen1-Ef-LIB, VISIBLE 1
           MODIFY Screen1-Ef-CO1, VISIBLE 0
           MODIFY Screen1-Ef-CO2, VISIBLE 0
040618*     MODIFY Screen1-Ef-FOU, VISIBLE 0 130819
040618*     MODIFY Screen1-Pb-FOU, VISIBLE 0
040618*     MODIFY Screen1-Ef-GFA, VISIBLE 0
040618*     MODIFY Screen1-Pb-GFA, VISIBLE 0
           MOVE 6 TO LK-MART-L-ORD
           MOVE 3 TO W-ORDC
           MODIFY Screen1-La-Rech2 VISIBLE FALSE
           PERFORM Mistral-TransferFocus
           .
      *-----------------------------------------------------------------
041012 Screen1-DaRb-NOR-Link.
           MOVE 3 TO W-ORDC
           MOVE 8 TO LK-MART-L-ORD
           MODIFY Screen1-Ef-LIB, VISIBLE 1
           MODIFY Screen1-Ef-CO1, VISIBLE 0
           MODIFY Screen1-Ef-CO2, VISIBLE 0
040618*     MODIFY Screen1-Ef-FOU, VISIBLE 0 130819
040618*     MODIFY Screen1-Pb-FOU, VISIBLE 0
040618*     MODIFY Screen1-Ef-GFA, VISIBLE 0
040618*     MODIFY Screen1-Pb-GFA, VISIBLE 0
           MODIFY Screen1-La-Rech, VISIBLE TRUE,
              TITLE = "Indiquez la référence à rechercher"
           MODIFY Screen1-La-RECH2 VISIBLE FALSE
           PERFORM Mistral-TransferFocus
           .   
170816*-------------------------------- Clic "par famille - Sous-Famille"
       Screen1-DaRb-Fam-Link. | 130819 rdio bouton passé en checkbox
130819*     MOVE 3 TO W-ORDC                    | Sous-classement par référence
      *     MODIFY Screen1-Ef-LIB, VISIBLE 1
      *     MODIFY Screen1-Ef-CO1, VISIBLE 0
      *     MODIFY Screen1-Ef-CO2, VISIBLE 0
      *     MODIFY Screen1-La-Rech, VISIBLE FALSE
      *     MODIFY Screen1-La-RECH2 VISIBLE FALSE
040618*     MODIFY Screen1-La-Rech, VISIBLE TRUE,
      *     TITLE = "Indiquez la référence à rechercher"
      *     MODIFY Screen1-Gd-1(1 3), CELL-DATA = "Réf. Fournisseur"
040618*     MODIFY Screen1-Ef-FOU, VISIBLE 0
040618*     MODIFY Screen1-Pb-FOU, VISIBLE 0
040618*     IF LK-MART-L-GRA <> ZERO
      *        PERFORM Screen1-Pb-Lancer-LinkTo.

130819     IF LK-MART-L-SELFAM = 1 THEN
040618        PERFORM Affi-GFA
130819     ELSE
130819        MODIFY Screen1-Ef-GFA, VISIBLE 0 
130819        MODIFY Screen1-Pb-GFA, VISIBLE 0
130819     END-IF
           .
      *-----------------------------------------------------------------
250719 Screen1-DaRb-ARF-Link.
           MOVE 3 TO W-ORDC
           MODIFY Screen1-Ef-LIB, VISIBLE 1
           MODIFY Screen1-Ef-CO1, VISIBLE 0
           MODIFY Screen1-Ef-CO2, VISIBLE 0
      *     MODIFY Screen1-Ef-FOU, VISIBLE 0 130819
      *     MODIFY Screen1-Pb-FOU, VISIBLE 0
      *     MODIFY Screen1-Ef-GFA, VISIBLE 0
      *     MODIFY Screen1-Pb-GFA, VISIBLE 0

           MODIFY Screen1-La-Rech, VISIBLE TRUE,
           TITLE = "Pour rechercher un mot (chaîne de caractères), faire
      -            " précéder par un /"
           MODIFY Screen1-La-RECH2 VISIBLE FALSE
           MODIFY Screen1-Gd-1(1 3), CELL-DATA = "Référence client"
           PERFORM Mistral-TransferFocus
           .

      *-----------------------------------------------------------------
           
      * Clic Sur Fournisseur D'origine ou secondaire
       Screen1-Rb-ORI-Link.
           MODIFY Screen1-Ef-LIB, VISIBLE 1
           MODIFY Screen1-Ef-CO1, VISIBLE 0
           MODIFY Screen1-Ef-CO2, VISIBLE 0

           IF LK-MART-L-MULTI NOT =  SV-LECT-MULTI
              PERFORM Screen1-Pb-Lancer-LinkTo
           END-IF
           MOVE LK-MART-L-MULTI TO SV-LECT-MULTI.
           .
      ******************************************************************
       Recherche-CODART.
           PERFORM Reset-Grille
      *    Recherche chaine de caractères
           COPY "../../mx/copy/Assign-FICTMP.cbl" REPLACING 
              ==FICTMP==   BY ==RECH==
              =='FICTMP'== BY ==RECH==.
           CLOSE RECH.
      
           MOVE "ART" TO CMD-RECH-FIC
           MOVE MX-DIR TO CMD-RECH-DIR
           MOVE ASSIGN-RECH TO CMD-RECH-RESULT
           MOVE 1 TO CMD-RECH-DEBSOR
           MOVE 65 TO CMD-RECH-FINSOR
      
130819     PERFORM INIT-CMD-RECH

           MOVE RECORD-POSITION OF COD-MART TO CMD-RECH-POSR(1)
           MOVE LENGTH OF COD-MART TO CMD-RECH-LONR(1)
           MOVE LK-MART-L-LIB(2:19) TO CMD-RECH-VAL(1)
           MOVE "s2" TO CMD-RECH-OPE(1)
      
           MOVE "T" TO CMD-RECH-T(1)
           MOVE 21 TO CMD-RECH-POSDT(1)
           MOVE 61 TO CMD-RECH-POSFT(1)
      
041116*     PERFORM RAZ-RECH-CONDI-2. | RECHERCHE TRADUC/DES-IDF/INO remplissent les zones (2)

           COPY "../../mistral/copy/rech.cbl".
           MOVE 0 TO W-RECHPLUS                                   
           PERFORM Remp-Grille-Rech
      * affichage du nombre d'éléments trouvés 
           ADD -1 Tmp-9-3 GIVING Tmp-9-3-FIC
           perform Affiche-nb-elt
           .
      *
       Recherche-REFART.
           PERFORM Reset-Grille
      *    Recherche chaine de caractères
           COPY "../../mx/copy/Assign-FICTMP.cbl" REPLACING 
              ==FICTMP==   BY ==RECH==
              =='FICTMP'== BY ==RECH==.
           CLOSE RECH.
      
           MOVE "ART" TO CMD-RECH-FIC
           MOVE MX-DIR TO CMD-RECH-DIR
           MOVE ASSIGN-RECH TO CMD-RECH-RESULT
           MOVE 1 TO CMD-RECH-DEBSOR
           MOVE 65 TO CMD-RECH-FINSOR
      
130819     PERFORM INIT-CMD-RECH

           MOVE RECORD-POSITION OF REF-MART TO CMD-RECH-POSR(1)
           MOVE LENGTH OF REF-MART TO CMD-RECH-LONR(1)
           MOVE LK-MART-L-LIB(2:19) TO CMD-RECH-VAL(1)
           MOVE "s2" TO CMD-RECH-OPE(1)
      
           MOVE "T" TO CMD-RECH-T(1)
           MOVE 88 TO CMD-RECH-POSDT(1)
           MOVE 109 TO CMD-RECH-POSFT(1)
      
041116*     PERFORM RAZ-RECH-CONDI-2. | RECHERCHE TRADUC/DES-IDF/INO remplissent les zones (2)
      
           COPY "../../mistral/copy/rech.cbl".
           MOVE 0 TO W-RECHPLUS                                   
           PERFORM Remp-Grille-Rech
      * affichage du nombre d'éléments trouvés 
           ADD -1 Tmp-9-3 GIVING Tmp-9-3-FIC
           perform Affiche-nb-elt
           .
      *
       Recherche.
           PERFORM Reset-Grille
      *    Recherche chaine de caractères
           COPY "../../mx/copy/Assign-FICTMP.cbl" REPLACING 
              ==FICTMP==   BY ==RECH==
              =='FICTMP'== BY ==RECH==.
           CLOSE RECH.
      
           MOVE "ART" TO CMD-RECH-FIC
           MOVE MX-DIR TO CMD-RECH-DIR
           MOVE ASSIGN-RECH TO CMD-RECH-RESULT
           MOVE 1 TO CMD-RECH-DEBSOR
           MOVE 65 TO CMD-RECH-FINSOR
      
130819     PERFORM INIT-CMD-RECH

           MOVE RECORD-POSITION OF DES-MART TO CMD-RECH-POSR(1)
           MOVE 60          TO CMD-RECH-LONR(1)
           MOVE LK-MART-L-LIB(2:19) TO CMD-RECH-VAL(1)
           MOVE "s2"        TO CMD-RECH-OPE(1)
      
           MOVE "T"         TO CMD-RECH-T(1)
           MOVE 21          TO CMD-RECH-POSDT(1)
           MOVE 61          TO CMD-RECH-POSFT(1)
      
130819*     PERFORM RAZ-RECH-CONDI-2.

           COPY "../../mistral/copy/rech.cbl".
           MOVE 0 TO W-RECHPLUS  
           IF MXIEXP-PALM = 1 MOVE 2 TO W-NON-RESET
           END-IF
           PERFORM Remp-Grille-Rech
           MOVE 0 TO W-NON-RESET
           IF MXIEXP-PALM = 1 PERFORM Recherche-TRADUC
           END-IF
      * affichage du nombre d'éléments trouvés 
           ADD -1 Tmp-9-3 GIVING Tmp-9-3-FIC
           perform Affiche-nb-elt
           .
      *
130819* RAZ-RECH-CONDI-2.
      *     MOVE ZERO    TO CMD-RECH-POSR(2) CMD-RECH-LONR(2)
      *     MOVE SPACES  TO CMD-RECH-VAL(2)  CMD-RECH-OPE(2).
130819 INIT-CMD-RECH.
           PERFORM VARYING CMD-RECH-I FROM 1 BY 1
              UNTIL CMD-RECH-I > 15
              MOVE ZERO    TO CMD-RECH-POSR(CMD-RECH-I) 
                              CMD-RECH-LONR(CMD-RECH-I)
              MOVE SPACES  TO CMD-RECH-VAL (CMD-RECH-I)
                              CMD-RECH-OPE (CMD-RECH-I)
           END-PERFORM

           PERFORM VARYING CMD-RECH-I FROM 1 BY 1
              UNTIL CMD-RECH-I > 10
              INITIALIZE CMD-RECH-TRI(CMD-RECH-I)
           END-PERFORM
           .

       Recherche-des-idf.
           PERFORM Reset-Grille
      *    Recherche chaine de caractères dans désignation et idf
           COPY "../../mx/copy/Assign-FICTMP.cbl" REPLACING 
              ==FICTMP==   BY ==RECH==
              =='FICTMP'== BY ==RECH==.
           CLOSE RECH.
      
           MOVE "ART" TO CMD-RECH-FIC
           MOVE MX-DIR TO CMD-RECH-DIR
           MOVE ASSIGN-RECH TO CMD-RECH-RESULT
           MOVE 1 TO CMD-RECH-DEBSOR
           MOVE 65 TO CMD-RECH-FINSOR

130819     PERFORM INIT-CMD-RECH
      
           MOVE RECORD-POSITION OF DES-MART TO CMD-RECH-POSR(1)
      *     MOVE LENGTH OF DES-MART TO CMD-RECH-LONR(1)
           MOVE 60       TO CMD-RECH-LONR(1)
           MOVE W-LIBDES TO CMD-RECH-VAL(1)
           MOVE "s2"     TO CMD-RECH-OPE(1)

           MOVE RECORD-POSITION OF CO1-MART TO CMD-RECH-POSR(2)
           MOVE LENGTH OF CO1-MART TO CMD-RECH-LONR(2)
           MOVE W-LIBIDF TO CMD-RECH-VAL(2)
           MOVE "s2" TO CMD-RECH-OPE(2)
      
           MOVE "T" TO CMD-RECH-T(1)
           MOVE 21 TO CMD-RECH-POSDT(1)
           MOVE 61 TO CMD-RECH-POSFT(1)
      
      *     MOVE SPACE TO CMD-RECH
      *     STRING CMD-RECH-BASE CMD-RECH-CONDI(1)
      *            CMD-RECH-TRI(1) FIN-CMD-RECH DELIMITED BY SIZE 
      *            INTO CMD-RECH
      *     CALL "SYSTEM" USING CMD-RECH

           COPY "../../mistral/copy/rech.cbl".
           MOVE 0 TO W-RECHPLUS                                   
           PERFORM Remp-Grille-Rech
      * affichage du nombre d'éléments trouvés 
           ADD -1 Tmp-9-3 GIVING Tmp-9-3-FIC
           perform Affiche-nb-elt
           . 

       Affiche-nb-elt.
           MOVE Tmp-9-3-FIC TO Tmp-9-3-ECR
           STRING Tmp-9-3-ECR DELIMITED BY SIZE
                  " "
                  "élément(s) trouvé(s)"
                  DELIMITED BY SIZE
                  INTO W-NB-ELT
           MODIFY Screen1-La-nb-elt, VISIBLE TRUE, TITLE = W-NB-ELT.

       Recherche-SER.
041012**     PERFORM Reset-Grille
      ***    Recherche chaine de caractères
      **     COPY "../../mx/copy/Assign-FICTMP.cbl" REPLACING 
      **        ==FICTMP==   BY ==RECH==
      **        =='FICTMP'== BY ==RECH==.
      **     CLOSE RECH.
      **
      **     MOVE "PMAT" TO CMD-RECH-FIC
      **     MOVE MX-DIR TO CMD-RECH-DIR
      **     MOVE ASSIGN-RECH TO CMD-RECH-RESULT
      **     MOVE 1 TO CMD-RECH-DEBSOR           
      **     MOVE 65 TO CMD-RECH-FINSOR
      **
130819**     PERFORM INIT-CMD-RECH
      **
      **     IF LK-MART-L-ORD = 4
      **        MOVE RECORD-POSITION OF SER-MPMAT TO CMD-RECH-POSR(1)
      **        MOVE LENGTH OF SER-MPMAT TO CMD-RECH-LONR(1)
      **        MOVE LK-MART-L-LIB TO CMD-RECH-VAL(1)
      **        MOVE "s2" TO CMD-RECH-OPE(1)
      **        MOVE "T" TO CMD-RECH-T(1)
      **        MOVE 26 TO CMD-RECH-POSDT(1)
      **        MOVE 46 TO CMD-RECH-POSFT(1)
      **     else
      **        MOVE RECORD-POSITION OF NPM-MPMAT TO CMD-RECH-POSR(1)
      **                                             CMD-RECH-POSDT(1)
      **        MOVE LENGTH OF NPM-MPMAT TO CMD-RECH-LONR(1)
      **                                    CMD-RECH-POSFT(1)
      **        MOVE LK-MART-L-LIB TO CMD-RECH-VAL(1)
      **        MOVE "s2" TO CMD-RECH-OPE(1)
      **        MOVE "T" TO CMD-RECH-T(1)
      **     end-if
      **
041116***     PERFORM RAZ-RECH-CONDI-2. | RECHERCHE TRADUC/DES-IDF/INO remplissent les zones (2)
      **
      **     COPY "../../mistral/copy/rech.cbl".
      **     MOVE 0 TO W-RECHPLUS                                   
      **     PERFORM Remp-Grille-Rech-Ser
      *** affichage du nombre d'éléments trouvés 
      **     ADD -1 Tmp-9-3 GIVING Tmp-9-3-FIC
      **     perform Affiche-nb-elt
      **     .

       Reset-Grille.
      *------------*
      * Remise à zéro de la grille...
           MODIFY Screen1-Gd-1, RESET-GRID = 1|, MASS-UPDATE = 1, 
                  DISPLAY-COLUMNS (1, 23, 83, 93),
 
      * 5 colonnes
           IF W-COL-STO2 = 5
              MODIFY Screen1-Gd-1, DISPLAY-COLUMNS (1, 23, 77, 87, 97), 
           END-IF.

           PERFORM Acu-Screen1-Gd-1-Content

270309     PERFORM Mep-Gd-1

      *  3 colonnes
           IF LK-MART-L-AGE = SPACE
      *     OR AFLA-MPAR <> 3   
              MODIFY Screen1-Gd-1, DISPLAY-COLUMNS (1, 23, 83, 120)
           END-IF.   
           IF NOT (AFLA-MPAR = 3 OR (AFLA-MPAR = 2 AND AST-MPAR = 1))   
              MODIFY Screen1-Gd-1, DISPLAY-COLUMNS (1, 23, 83, 120)
           END-IF.   

      * si location avec recherche par NS: 4 colonnes 
           IF LK-MART-L-SER = 1 
           AND LK-MART-L-ACT = "L"
           AND (LK-MART-L-ORD = 4 OR 7)
              MODIFY Screen1-Gd-1, DISPLAY-COLUMNS (1, 23, 73, 93), 
           END-IF.
           .

       Remp-Grille-Rech.
      *----------------*
           IF W-NON-RESET <> 1 
              PERFORM Reset-Grille
              MOVE 2 TO Screen1-Gd-1-Cursor-Y-Old
              MOVE 1 TO Tmp-9-3
              MOVE 0 TO W-NBR
           END-IF

      * Remplissage de la grille...
           OPEN INPUT RECH
           PERFORM STAT
           INITIALIZE ENR-MART
           MOVE 0 TO W-EOF
           
           MOVE SPACES TO Screen1-Gd-1-COD

           IF W-RECHPLUS = 0     
              PERFORM UNTIL W-EOF = 1
                 MOVE SPACE TO ENR-RECH 
                 READ RECH END MOVE 1 TO W-EOF
                 END-READ
                 PERFORM STAT
                 IF W-EOF NOT = 1   
                    MOVE ENR-RECH(1:20) TO COD-MART
                    READ MXART NOT INVALID
130819
                       IF  LK-MART-L-SELFOU = 1
                       AND LK-MART-L-FOU NOT = FOU-MART THEN
                          EXIT PERFORM CYCLE
                       END-IF

                       IF  LK-MART-L-SELFAM = 1 
                       AND (          GRA-MART <> LK-MART-L-GRA
                             OR (     GRA-MART =  LK-MART-L-GRA 
                                  AND LK-MART-L-FAM <> 0
                                                AND <> FAM-MART ) ) THEN
                          EXIT PERFORM CYCLE
                       END-IF
130819
      **                 PERFORM TRADUIRE-ART
      **                 IF W-NON-RESET = 1
      **                    MOVE ENR-RECH TO ENR-MTRD(4:68)
      **                    MOVE DES-MTRD TO DES-MART
      **                    MOVE DE2-MTRD TO DE2-MART
      **                 END-IF
                       PERFORM Mep-Un-Art
                    END-READ
                    PERFORM STAT
                 END-IF
              END-PERFORM
      
              CLOSE RECH
              DELETE FILE RECH
           
           ELSE
      *       Recherche RECH avec plus
              PERFORM Remp-Grille-Rech-Boucle
           END-IF

      * Positionnement du curseur sur la grille...
           MODIFY Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old),
                  CURSOR-Y = Screen1-Gd-1-Cursor-Y-Old
070720*                  ROW-COLOR = 257,
                  |MASS-UPDATE = 0

      * Patch : sans ça, la grille peut parfois mélanger les lignes...
           MOVE SPACES TO Screen1-Gd-1-Record

           IF W-RECHPLUS = 0    
           AND W-NON-RESET <> 2
              PERFORM Aff-Tri
           END-IF   
           .

       Remp-Grille-Rech-Boucle.
      *-----------------------*
           PERFORM 
              UNTIL W-EOF = 1
                 OR W-NBR > 100        
              MOVE SPACE TO ENR-RECH 
              READ RECH END MOVE 1 TO W-EOF
              END-READ
              PERFORM STAT
              IF W-EOF NOT = 1     
250719              
      **          IF LK-MART-L-ORD = 10 THEN 
      ***            Référencement client
      **             MOVE ENR-RECH TO ENR-MARF
      **             MOVE ART-MARF TO COD-MART
      **          ELSE
250719
                   MOVE ENR-RECH(1:20) TO COD-MART
250719**         END-IF

                READ MXART NOT INVALID
130819
                   IF  LK-MART-L-SELFOU = 1
                   AND LK-MART-L-FOU NOT = FOU-MART THEN
                       EXIT PERFORM CYCLE
                   END-IF

                   IF  LK-MART-L-SELFAM = 1 
                   AND (          GRA-MART <> LK-MART-L-GRA
                         OR (     GRA-MART =  LK-MART-L-GRA 
                              AND LK-MART-L-FAM <> 0
                                            AND <> FAM-MART ) ) THEN
                       EXIT PERFORM CYCLE
                   END-IF
130819
                   PERFORM TRADUIRE-ART
                   PERFORM Mep-Un-Art
                END-READ
                PERFORM STAT
              END-IF
           END-PERFORM

           IF W-EOF = 1 
              CLOSE RECH
              DELETE FILE RECH
              MOVE 0 TO W-RECHPLUS
              MODIFY Screen1-Pb-Plus, VISIBLE 0
      *        MODIFY Screen1-La-Plus, VISIBLE 0
              IF W-ORDC NOT = 2     
      *          Pas classé par désignation
                 PERFORM Aff-Tri
              ELSE 
                 MOVE 2   TO W-TRI
                 MOVE "D" TO W-SENS
                 PERFORM Aff-Ordre-Tri
              END-IF
           ELSE
              MODIFY Screen1-Pb-Plus, VISIBLE 1
      *        MODIFY Screen1-La-Plus, VISIBLE 1
           END-IF
           .
      *
       Mep-Un-Art.
           IF CANN-MART = 1 EXIT PARAGRAPH
           END-IF
           IF  LK-MART-L-KEY = "F"
           AND FOU-MART NOT = LK-MART-L-FOU
                IF W-IND = 0 EXIT PARAGRAPH
                END-IF
           END-IF
 
           IF  (    LK-MART-L-IVT = 0 
071117           OR (     LK-MART-L-IVT = 1
071117                AND W-VTEI = 0 ) )
           AND TAR-MART = 2 
170315     AND LK-MART-L-ACT NOT = "L"
      *       interdit à la vente
              EXIT PARAGRAPH
           END-IF
071117
           IF  W-ACHI = 0 
           AND ACHI-MART = 1 THEN
      *       interdit à l'achat
              EXIT PARAGRAPH
           END-IF
071117
           IF LK-MART-L-KEY = "W" AND WEB-MART = 1
              EXIT PARAGRAPH
           END-IF
           IF W-NAT = 1     
      *          Test nature article
              PERFORM Lect-MGFA

              IF LK-MART-L-NAT(NAT-MGFA + 1) = 0     
                 EXIT PARAGRAPH
              END-IF
           END-IF
 
           IF  (LK-MART-L-ACT = "V" OR "F" or "f")
           AND ((LK-MART-L-INO = 0 AND INO-MART <> 0 )
                OR (LK-MART-L-INO = 1 AND INO-MART = 0 )
                OR (LK-MART-L-INO = 3 AND INO-MART <> 3 ) )
                     EXIT PARAGRAPH
           END-IF

      **     IF  LK-MART-L-ACT = "L" 
      **     AND ((LK-MART-L-INO = 1 AND STR-MARL = 0)
      **          OR (LK-MART-L-INO = 2 AND STR-MARL <> 0 AND <> 1 )
      **          OR (LK-MART-L-INO = 3 AND STR-MARL <> 1 AND <> 2 ))
      **               EXIT PARAGRAPH
      **     END-IF

           IF (LK-MART-L-ACT = "L" AND (ILV-MART = 1 OR 2))
           OR (     LK-MART-L-ACT NOT = "L"
201112          AND ILV-MART <> 1 )    
              ADD 1 TO Tmp-9-3 W-NBR
130317        MOVE SPACE TO Screen1-Gd-1-Record
      *          IF W-EOF-ART = 0 
              IF LK-MART-L-KEY <> "F"
              OR FOU-MART = LK-MART-L-FOU
                 STRING CO1-MART " " CO2-MART INTO Screen1-Gd-1-COD
                 MOVE SPACE TO Screen1-Gd-1-LIB

040816*          IF CLI-PALM = 991564 
      *             MOVE GRA-MART TO GRA-MGFA
      *             MOVE ZERO TO FAM-MGFA
      *             READ MXGRAFAM INVALID INITIALIZE ENR-MGFA
      *             END-READ
      *             PERFORM STAT
      *             MOVE ABR-MGFA TO W-LIB-MGFA
      *             PERFORM LECT-MGFA
      *             STRING W-LIB-MGFA " " ABR-MGFA " " DES-MART 
      *                  " " 
      *                  DE2-MART DELIMITED BY "       "
      *             INTO Screen1-Gd-1-LIB
040816*           ELSE
                   STRING DES-MART 
                        " " 
                        DE2-MART DELIMITED BY SIZE 
                   INTO Screen1-Gd-1-LIB
      *           END-IF
            
                 IF  LK-MART-L-AGE <> SPACE
                 AND AFLA-MPAR <> 0     
      *             Colonnes prix de vente et/ou stock
                    IF AFLA-MPAR = 1
                                OR 3     
      *                 
                       IF LK-MART-L-CLI = 0
                          IF CLI-PALM = 250624                 | Bertet Musique (affich TTC)
                             MOVE TTC-MART   TO W-PICZ7VZZ
                          ELSE 
                             MOVE PVT-MART   TO W-PICZ7VZZ
                          END-IF
                       ELSE
                          PERFORM Mep-prix 
                       END-IF
                       MOVE W-PICZ7VZZ TO Screen1-Gd-1-Ref
                    END-IF

                    IF W-COL-STO <> 0 
241014              AND (INO-MART < 1 OR > 2)
                       INITIALIZE            ENR-MASA
                       MOVE COD-MART      TO COD-MASA
                       MOVE LK-MART-L-AGE TO AGE-MASA

                       READ MXARTSA INVALID
                          MOVE 2 TO STO-MASA
                       END-READ
                       PERFORM STAT

                       IF STO-MASA <> 2     
                          EVALUATE STLA-MPAR
                          WHEN 0
      *                      Stock théorique
                             MOVE QSTM-MASA(1) TO W-STO
                          WHEN 1
      *                      Stock dispo
                             SUBTRACT QCC-MASA FROM QSTM-MASA(1) 
                               GIVING W-STO
                          WHEN 2
      *                      Stock prévisionnel
                             COMPUTE W-STO = QSTM-MASA(1) 
                                           - QCC-MASA
                                           + QCF-MASA
110119
                          WHEN 3
      *                      Stock dispo sans commandes contre-marquées
      *                       INITIALIZE LK-CALCREV
      *                       MOVE AGE-MASA TO LK-CALCREV-AGE
      *                       MOVE COD-MASA TO LK-CALCREV-ART
      *                       CALL "calcrev.acu" USING 
      *                          ZONE-PALM LK-CALCREV
      *                       CANCEL "calcrev.acu"
                             COMPUTE W-STO = QSTM-MASA(1) 
                                            - LK-CALCREV-QCC
                                            + LK-CALCREV-QCCM
110119
                          END-EVALUATE
301019
                          IF  W-ASTO = 1
                          AND W-STO <= 0 THEN
      *                      Pas de stock et avec stock
                             SUBTRACT 1 FROM Tmp-9-3 W-NBR
                             EXIT PARAGRAPH
                          END-IF
301019
                          MOVE W-STO TO W-PICSZ7VZZ 
                                        W-PICSZ10 
                                        S72
                          IF S722 = 0     
                             IF W-COL-STO = 3     
                                MOVE W-PICSZ10 TO Screen1-Gd-1-REF
                             ELSE
                                MOVE W-PICSZ10 TO Screen1-Gd-1-STO
                             END-IF
                          ELSE
                             IF W-COL-STO = 3     
                                MOVE W-PICSZ7VZZ TO Screen1-Gd-1-REF
                             ELSE
                                MOVE W-PICSZ7VZZ TO Screen1-Gd-1-STO
                             END-IF
                          END-IF
161109                 ELSE
301019
                          IF W-ASTO = 1 THEN
      *                      non géré et avec stock    
                             SUBTRACT 1 FROM Tmp-9-3 W-NBR
                             EXIT PARAGRAPH
                          END-IF
301019
                          IF W-COL-STO = 3     
                             MOVE SPACE TO Screen1-Gd-1-REF
                          ELSE
                             MOVE SPACE TO Screen1-Gd-1-STO
                          END-IF
191214                    IF MOB-PALM > 0                 | Pour Beaubelique/MobiDis: affiche indic. gestion de stock
                             IF STOMOB-MART <> 2
                                IF W-COL-STO = 3 
                                   MOVE "Oui" TO Screen1-Gd-1-REF
                                ELSE
                                   MOVE "Oui" TO Screen1-Gd-1-STO
                                END-IF
                             ELSE
                                IF W-COL-STO = 3 
                                   MOVE "Non" TO Screen1-Gd-1-REF
                                ELSE
                                   MOVE "Non" TO Screen1-Gd-1-STO
                                END-IF
                             END-IF
191214                    END-IF
                       END-IF
270212
                       IF W-COL-STO2 <> 0
                          PERFORM CAL-STO-STE
                          MOVE W-STOGR TO W-PICSZ7VZZ 
                                          W-PICSZ10 
                                          S72
                          IF S722 = 0     
                             IF W-COL-STO2 = 4
                                MOVE W-PICSZ10 TO Screen1-Gd-1-STO
                             ELSE
                                MOVE W-PICSZ10 TO Screen1-Gd-1-STO2
                             END-IF
                          ELSE
                             IF W-COL-STO2 = 4
                                MOVE W-PICSZ7VZZ TO Screen1-Gd-1-STO2
                             ELSE
                                MOVE W-PICSZ7VZZ TO Screen1-Gd-1-STO2
                             END-IF
                          END-IF
                       END-IF
270212
                    END-IF

                 ELSE
270309
041012              
                    IF LK-MART-L-ORD = 8 THEN
                       MOVE RFN-MART TO Screen1-Gd-1-REF
                    ELSE
                       IF LK-MART-L-ORD = 7 THEN
                          MOVE RFI-MART TO Screen1-Gd-1-REF
                       ELSE
041012
250719
      **                    IF LK-MART-L-ORD = 10 THEN
      **                       MOVE RFC-MARF TO Screen1-Gd-1-REF
      **                    ELSE
250719**
                             MOVE REF-MART TO Screen1-Gd-1-REF
250719**                    END-IF
041012
                       END-IF
                    END-IF
041012
270309           END-IF

              ELSE 
                 MOVE SPACES TO Screen1-Gd-1-COD

      **           IF NPR-MAMA2 = 1     
      ***                 STRING REF-MAMA DELIMITED BY "   "
      **              STRING CO1-MART DELIMITED BY "   "
      **                     " "      DELIMITED BY SIZE
      **                     CO2-MART DELIMITED BY "   "
      **                     "  (P)"  DELIMITED BY SIZE
      **                INTO Screen1-Gd-1-COD
      **           ELSE
      *                 STRING REF-MAMA DELIMITED BY "   "
                    STRING CO1-MART DELIMITED BY "   "
                           " "      DELIMITED BY SIZE
                           CO2-MART DELIMITED BY "   "
                           "  (S)"  DELIMITED BY SIZE
                      INTO Screen1-Gd-1-COD
      **           END-IF

250719
      **           IF LK-MART-L-ORD = 10 THEN
      **              MOVE RFC-MARF TO Screen1-Gd-1-REF
      **           ELSE
250719**
      **             MOVE REF-MAMA2 TO Screen1-Gd-1-REF
250719**           END-IF
      **
      **           MOVE DES-MAMA2 TO Screen1-Gd-1-LIB
              END-IF

              MODIFY Screen1-Gd-1,
                 RECORD-TO-ADD = Screen1-Gd-1-Record

              if nat-mart = 2
                 MODIFY Screen1-Gd-1(Tmp-9-3, 1), 
                 hidden-data = cod-mart,
                 x = 2, bitmap OCCASIO16-bmp, bitmap-trailing = 1
              else
                 EVALUATE INO-mart 
                 WHEN 1 
                 WHEN 2
                   MODIFY Screen1-Gd-1(Tmp-9-3, 1), 
                      hidden-data = cod-mart,
                      x = 2, bitmap C-jpg, bitmap-trailing = 1
                 WHEN 3
                   MODIFY Screen1-Gd-1(Tmp-9-3, 1), 
                      hidden-data = cod-mart,
                      x = 2, bitmap K-jpg, bitmap-trailing = 1
      *                x = 2, bitmap K-jpg
                 WHEN OTHER
                   MODIFY Screen1-Gd-1(Tmp-9-3, 1), 
                      hidden-data = cod-mart,
                 end-evaluate
              end-if                

      * ordre: occasion, interdit, interdit achat    
              if ACHI-mart = 1
                 MODIFY Screen1-Gd-1(Tmp-9-3, 1), 
                    bitmap achat-interdit-jpg, bitmap-trailing = 1
               end-if
              if TAR-mart = 2
170315        AND LK-MART-L-ACT NOT = "L"
                 MODIFY Screen1-Gd-1(Tmp-9-3, 1), 
                    bitmap INTERDI16-BMP, bitmap-trailing = 1
              end-if

111016* gestion article préférentiel Fenwick (article avec "LFR")
      **        PERFORM MEP-ARTPREF
      **        IF EXI-ARTPREF = 1
      **           MODIFY Screen1-Gd-1(Tmp-9-3, 1), 
      **                    bitmap PREFNON16-bmp 
      **        end-if
      **        IF EXI-ARTPREF = 2
      **           MODIFY Screen1-Gd-1(Tmp-9-3, 1), 
      **                    bitmap PREFOUI16-bmp 
      **        end-if
111016
              IF W-TRI = 0     
                 MOVE COD-MART TO CLE1-TRI
                 MOVE DES-MART TO CLE2-TRI
                 MOVE DE2-MART TO DE2-TRI
250719
      **           IF LK-MART-L-ORD = 10 THEN
      **              MOVE RFC-MARF TO CLE3-TRI
      **           ELSE
250719
                    MOVE REF-MART TO CLE3-TRI
250719**           END-IF

                 IF (    (     LK-MART-L-ACT = "L" 
                           AND ( ILV-MART = 1 
                                         OR 2 ) )
                      OR LK-MART-L-ACT NOT = "L" )
                 AND LK-MART-L-KEY = "F"
                 AND FOU-MART <> LK-MART-L-FOU     
250719
      **              IF LK-MART-L-ORD = 10 THEN
      **                 MOVE RFC-MARF TO REF-TRI
      **              ELSE
250719**
      **                 MOVE REF-MAMA2 TO REF-TRI
250719**             END-IF
      **
      **             MOVE DES-MAMA2 TO DES-TRI
                   MOVE SPACE TO DE2-TRI
                 END-IF
                 WRITE ENR-TRI 
                 PERFORM STAT
              END-IF
           END-IF
           .
       

      *
       Screen1-Pb-Plus-Link.
           PERFORM PLUS-GRILLE
           .

       Lect-MGFA.
      *---------*
           MOVE GRA-MART TO GRA-MGFA
           MOVE FAM-MART TO FAM-MGFA
           READ MXGRAFAM
           INVALID
              INITIALIZE ENR-MGFA
           END-READ
           PERFORM STAT
           .

       Recherche-NAT.
      *-------------*
      *    Recherche article des familles ayant les natures sélectionnées
           MOVE 1 TO ScreenPatienter-PB-Visible

           PERFORM Mis-Patienter-Debut

           PERFORM VARYING I FROM 1 BY 1
              UNTIL I > NB-FAM
                 OR ScreenPatienter-End = 1

              INITIALIZE ENR-MART
              MOVE 0 TO W-EOF
              MOVE GRA-FAM(I) TO GRA-MART
              MOVE FAM-FAM(I) TO FAM-MART

              START MXART KEY >= CLE4-MART
              INVALID
                 MOVE 1 TO W-EOF
              END-START

              PERFORM STAT

              PERFORM
                 UNTIL W-EOF = 1 
                    OR ScreenPatienter-End = 1

                 READ MXART NEXT
                 AT END
                    MOVE 1 TO W-EOF
                    EXIT PERFORM
                 END-READ
                 PERFORM STAT

                 PERFORM TRADUIRE-ART
                 
                 IF GRA-MART <> GRA-FAM(I)
                 OR FAM-MART <> FAM-FAM(I)     
                    MOVE 1 TO W-EOF
                    EXIT PERFORM
                 END-IF

                 IF CANN-MART = 1     
                    EXIT PERFORM CYCLE
                 END-IF

                 MOVE COD-MART TO CLE1-TRI
                 MOVE DES-MART TO CLE2-TRI
                 MOVE DE2-MART TO DE2-TRI
                 MOVE REF-MART TO CLE3-TRI

                 WRITE ENR-TRI

                 PERFORM STAT

              END-PERFORM

           END-PERFORM

           PERFORM Mis-Patienter-Fin

           CLOSE TRI
           OPEN INPUT TRI
           PERFORM STAT

           MOVE "D" TO W-SENS
           MOVE 1 TO W-TRI

           PERFORM Remp-Grille-Tri
           .

       Remp-Grille-Tri.
      *---------------*
      * Remise à zéro de la grille...
           MODIFY Screen1-Gd-1, RESET-GRID = 1|, MASS-UPDATE = 1, 
           PERFORM Acu-Screen1-Gd-1-Content
041012*     IF LK-MART-L-ORD = 4 OR 7 mis dans Mep-Gd-1
      *        MODIFY Screen1-Gd-1(1 3), 
      *            CELL-DATA = "N° de Série"
      *        IF LK-MART-L-ACT = "L"
      *           MODIFY Screen1-Gd-1(1 4), 
      *            CELL-DATA = "N° Interne"
      *        END-IF
      *     END-IF.

           PERFORM Mep-Gd-1

           INITIALIZE ENR-MART
           MOVE 0 TO W-EOF W-EOF-ART
           MOVE 2 TO Screen1-Gd-1-Cursor-Y-Old
           MOVE SPACES TO Screen1-Gd-1-COD
           MOVE 1 TO Tmp-9-3
           MOVE 0 TO W-NBR
           INITIALIZE ENR-TRI

           EVALUATE W-ORDC
           WHEN 1

              IF W-SENS = "D"     
                 IF W-TRI = 1     
                    MOVE LK-MART-L-LIB TO CLE1-TRI
                 END-IF
                 START TRI KEY >= CLE1-TRI
                 INVALID
                    MOVE 1 TO W-EOF
                 END-START
              ELSE
                 IF  W-TRI = 1 
                 AND LK-MART-L-LIB <> SPACE     
                    MOVE LK-MART-L-LIB TO CLE1-TRI
                 ELSE
                    MOVE HIGH-VALUE TO CLE1-TRI
                 END-IF
                 START TRI KEY <= CLE1-TRI
                 INVALID
                    MOVE 1 TO W-EOF
                 END-START
              END-IF

           WHEN 2

              IF W-SENS = "D"     
                 IF W-TRI = 1     
                    MOVE LK-MART-L-LIB TO CLE2-TRI
                 END-IF
                 START TRI KEY >= CLE2-TRI
                 INVALID
                    MOVE 1 TO W-EOF
                 END-START
              ELSE
                 IF  W-TRI = 1 
                 AND LK-MART-L-LIB <> SPACE     
                    MOVE LK-MART-L-LIB TO CLE2-TRI
                 ELSE
                    MOVE HIGH-VALUE TO CLE2-TRI
                 END-IF
                 START TRI KEY <= CLE2-TRI
                 INVALID
                    MOVE 1 TO W-EOF
                 END-START

              END-IF

           WHEN 3

              IF W-SENS = "D"     
                 IF W-TRI = 1     
                    MOVE LK-MART-L-LIB TO CLE3-TRI
                 END-IF
                 START TRI KEY >= CLE3-TRI
                 INVALID
                    MOVE 1 TO W-EOF
                 END-START
              ELSE
                 IF  W-TRI = 1  
                 AND LK-MART-L-LIB <> SPACE     
                    MOVE LK-MART-L-LIB TO CLE3-TRI
                 ELSE
                    MOVE HIGH-VALUE TO CLE3-TRI
                 END-IF
                 START TRI KEY <= CLE3-TRI
                 INVALID
                    MOVE 1 TO W-EOF
                 END-START
              END-IF

           END-EVALUATE
           PERFORM STAT

           PERFORM UNTIL W-EOF = 1
              IF W-SENS = "D"     
                 READ TRI NEXT
                 END 
                    MOVE 1 TO W-EOF
                 END-READ
              ELSE
                 READ TRI PREVIOUS
                 END 
                    MOVE 1 TO W-EOF
                 END-READ
              END-IF
              PERFORM STAT

              IF W-EOF NOT = 1     
                MOVE ENR-TRI TO COD-MART
                READ MXART NOT INVALID

030216
      *             PERFORM TRADUIRE-ART
                   MOVE DES-TRI TO DES-MART
                   MOVE DE2-TRI TO DE2-MART
030216
                   IF LK-MART-L-ORD = 4 
                   OR (     LK-MART-L-ORD = 7 
041012                  AND LK-MART-L-ACT = "L" )
                      PERFORM Mep-Un-Art-ser
                   ELSE
250719
      **                IF LK-MART-L-ORD = 10
      **                   MOVE REF-TRI TO RFC-MARF
      **                END-IF
250719
                      PERFORM Mep-Un-Art
                   END-IF
                END-READ
                PERFORM STAT
              END-IF
           END-PERFORM

      * affichage du nombre d'éléments trouvés 
           ADD -1 Tmp-9-3 GIVING Tmp-9-3-FIC
           perform Affiche-nb-elt
      * Positionnement du curseur sur la grille...
           MODIFY Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old),
                  CURSOR-Y = Screen1-Gd-1-Cursor-Y-Old
070720*                  ROW-COLOR = 257,
                  |MASS-UPDATE = 0

      * Patch : sans ça, la grille peut parfois mélanger les lignes...
           MOVE SPACES TO Screen1-Gd-1-Record
           MODIFY Screen1-Pb-Plus, 
              VISIBLE 0
      *     MODIFY Screen1-La-Plus, 
      *        VISIBLE 0

           Perform Aff-Ordre-Tri
           .

       Recherche-INO.
      *-------------*
      *    Recherche des articles vente composés
           PERFORM Reset-Grille
           COPY "../../mx/copy/Assign-FICTMP.cbl" REPLACING 
              ==FICTMP==   BY ==RECH==
              =='FICTMP'== BY ==RECH==.
           CLOSE RECH.
      
           MOVE "ART"                       TO CMD-RECH-FIC
           MOVE MX-DIR                      TO CMD-RECH-DIR
           MOVE ASSIGN-RECH                 TO CMD-RECH-RESULT
           MOVE 1                           TO CMD-RECH-DEBSOR
           ADD  RECORD-POSITION OF DES-MART 
                LENGTH          OF DES-MART GIVING CMD-RECH-FINSOR

130819     PERFORM INIT-CMD-RECH
      
           MOVE RECORD-POSITION OF INO-MART TO CMD-RECH-POSR(1)
           MOVE LENGTH          OF INO-MART TO CMD-RECH-LONR(1)

           EVALUATE LK-MART-L-INO 
           WHEN 0
              MOVE "0"  TO CMD-RECH-VAL(1)
              MOVE "==" TO CMD-RECH-OPE(1)
           WHEN 1
              MOVE "0"  TO CMD-RECH-VAL(1)
              MOVE "!=" TO CMD-RECH-OPE(1)
           WHEN 3
              MOVE "3"  TO CMD-RECH-VAL(1)
              MOVE "==" TO CMD-RECH-OPE(1)
           END-EVALUATE

210113*     IF LK-MART-L-ORD = 1     
210113
           EVALUATE LK-MART-L-ORD 
           WHEN 1
              MOVE RECORD-POSITION OF CO2-MART TO CMD-RECH-POSR(2)
              MOVE LENGTH          OF CO2-MART TO CMD-RECH-LONR(2)
              MOVE LK-MART-L-LIB               TO CMD-RECH-VAL (2)
              MOVE "'>='"                      TO CMD-RECH-OPE (2)
210113      
              MOVE "T"                         TO CMD-RECH-T(1)
210113        MOVE RECORD-POSITION OF COD-MART TO CMD-RECH-POSDT(1)
              MOVE LENGTH          OF COD-MART TO CMD-RECH-POSFT(1)
210113*     ELSE
210113     WHEN 2
210113
              MOVE RECORD-POSITION OF DES-MART TO CMD-RECH-POSR(2)
              MOVE LENGTH          OF DES-MART TO CMD-RECH-LONR(2)
              MOVE LK-MART-L-LIB               TO CMD-RECH-VAL (2)
              MOVE "'>='"                      TO CMD-RECH-OPE (2)
210113      
              MOVE "T"                         TO CMD-RECH-T(1)
              MOVE RECORD-POSITION OF DES-MART TO CMD-RECH-POSDT(1)
              MOVE LENGTH          OF DES-MART TO CMD-RECH-POSFT(1)

210113*     END-IF
210113     WHEN 3

              MOVE RECORD-POSITION OF COD-MART TO CMD-RECH-POSR(2)
              MOVE LENGTH          OF COD-MART TO CMD-RECH-LONR(2)
              MOVE LK-MART-L-LIB               TO CMD-RECH-VAL (2)
              MOVE "'>='"                      TO CMD-RECH-OPE (2)
              MOVE "T"                         TO CMD-RECH-T(1)
              MOVE RECORD-POSITION OF COD-MART TO CMD-RECH-POSDT(1)
              MOVE LENGTH          OF COD-MART TO CMD-RECH-POSFT(1)
210113     END-EVALUATE
040618
130819*     IF  LK-MART-L-ORD = 5 
130819     IF  LK-MART-L-SELFOU = 1 
           AND LK-MART-L-FOU <> 0 THEN
              MOVE RECORD-POSITION OF FOU-MART TO CMD-RECH-POSR(3)
              MOVE LENGTH          OF FOU-MART TO CMD-RECH-LONR(3)
              MOVE LK-MART-L-FOU               TO CMD-RECH-VAL (3)
              MOVE "'=='"                      TO CMD-RECH-OPE (3)
           END-IF

130819*     IF  LK-MART-L-ORD = 9 
130819     IF  LK-MART-L-SELFAM = 1 
           AND LK-MART-L-GRA <> 0 THEN
              MOVE RECORD-POSITION OF GRA-MART TO CMD-RECH-POSR(4)
              MOVE LENGTH          OF GRA-MART TO CMD-RECH-LONR(4)
              MOVE LK-MART-L-GRA               TO CMD-RECH-VAL (4)
              MOVE "'=='"                      TO CMD-RECH-OPE (4)

              IF LK-MART-L-FAM <> 0 THEN
                 MOVE RECORD-POSITION OF FAM-MART TO CMD-RECH-POSR(5)
                 MOVE LENGTH          OF FAM-MART TO CMD-RECH-LONR(5)
                 MOVE LK-MART-L-FAM               TO CMD-RECH-VAL (5)
                 MOVE "'=='"                      TO CMD-RECH-OPE (5)
              END-IF

           END-IF
040618
           COPY "../../mistral/copy/rech.cbl".
           MOVE 0 TO W-RECHPLUS                                   
           PERFORM Remp-Grille-Rech
           .


       Aff-Tri.
      *-------*
           MOVE 2   TO W-TRI
           MOVE "D" TO W-SENS
           CLOSE TRI
           OPEN INPUT TRI PERFORM STAT

           MODIFY Screen1-Pb-Plus, VISIBLE 0
      *     MODIFY Screen1-La-Plus, VISIBLE 0
       
           PERFORM Remp-Grille-Tri
           .
   
       Aff-Ordre-Tri.
      *-------------*
           IF W-SENS = "A"     
              MODIFY Screen1-Gd-1(1, 1),
                 BITMAP TRIERAD10-JPG,
                 BITMAP-TRAILING 1
              MODIFY Screen1-Gd-1(1, 2),
                 BITMAP TRIERAD10-JPG,
                 BITMAP-TRAILING 1

270309        IF LK-MART-L-AGE = SPACE
270309        OR AFLA-MPAR = 0     
      *          Référence en troisième colonne
                 MODIFY Screen1-Gd-1(1, 3),
                    BITMAP TRIERAD10-JPG,
                    BITMAP-TRAILING 1
270309        END-IF

              MODIFY Screen1-Gd-1(1, W-ORDC),
                 BITMAP TRIERAE10-JPG,
                 BITMAP-TRAILING 1
           ELSE
              MODIFY Screen1-Gd-1(1, 1),
                 BITMAP TRIERDD10-JPG,
                 BITMAP-TRAILING 1
              MODIFY Screen1-Gd-1(1, 2),
                 BITMAP TRIERDD10-JPG,
                 BITMAP-TRAILING 1

270309        IF LK-MART-L-AGE = SPACE
270309        OR AFLA-MPAR = 0     
      *          Référence en troisième colonne
                 MODIFY Screen1-Gd-1(1, 3),
                    BITMAP TRIERDD10-JPG,
                    BITMAP-TRAILING 1
270309        END-IF

              MODIFY Screen1-Gd-1(1, W-ORDC),
                 BITMAP TRIERDE10-JPG,
                 BITMAP-TRAILING 1
           END-IF
           .
      *-----------------------------------------------------------------
       Init-Grille-Loc.
      * Remise à zéro de la grille...

      **     MODIFY Screen1-Gd-1, RESET-GRID = 1
      ***      MASS-UPDATE = 1
      **     PERFORM Acu-Screen1-Gd-1-Content
      **     INITIALIZE ENR-MARL
      **     MOVE 0 TO W-EOF W-EOF-ARL 
      ***  Liste des Références par code ou désignation
      **     EVALUATE LK-MART-L-ORD
      **     WHEN 1 
      **        MOVE LK-MART-L-LIB TO CO2-MARL
      **        START MXARTLOC KEY >= CLE4-MARL
      **            INVALID MOVE 1 TO W-EOF-ARL
      **        END-START
      **     WHEN 3
      **        MOVE LK-MART-L-LIB TO COD-MARL
      **        START MXARTLOC KEY >= CLE1-MARL
      **            INVALID MOVE 1 TO W-EOF-ARL
      **        END-START
      **     WHEN OTHER
      **        MOVE LK-MART-L-LIB TO DES-MARL
      **        START MXARTLOC KEY >= CLE2-MARL
      **              INVALID MOVE 1 TO W-EOF-ARL
      **        END-START
      **     END-EVALUATE
      **     IF W-EOF-ARL = 1 
      **        MOVE 1 TO W-EOF
      **     ELSE
      **       PERFORM READ-NEXT-ARTLOC
      **     END-IF
      **     MOVE 2 TO Screen1-Gd-1-Cursor-Y-Old
      **     MOVE SPACES TO Screen1-Gd-1-COD
      **     MOVE 1 TO Tmp-9-3
      **     MOVE 0 TO W-NBR
      **     PERFORM REMP-GRILLE-LOC
      *** Positionnement du curseur sur la grille...
      **     MODIFY Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old),
      **            CURSOR-Y = Screen1-Gd-1-Cursor-Y-Old,
      **            ROW-COLOR = W-ROW-LOW-COLOR,
      **            MASS-UPDATE = 0
      **
      *** Patch : sans ça, la grille peut parfois mélanger les lignes...
      **     MOVE SPACES TO Screen1-Gd-1-Record
      **     .
      ** READ-NEXT-ARTLOC.
      **     READ MXARTLOC NEXT END MOVE 1 TO W-EOF-ARL END-READ
      **     PERFORM STAT
      **     IF  W-EOF-ARL = 1
      **        MOVE 1 TO W-EOF
      **     END-IF
      **     IF W-EOF-ARL NOT = 1 AND
      **        (    (LK-MART-L-INO = 1 AND STR-MARL = 0 )
      **          OR (LK-MART-L-INO = 2 AND STR-MARL <> 0 AND <> 1 )
      **          OR (LK-MART-L-INO = 0 AND STR-MARL <> 0 )
      **          OR (LK-MART-L-INO = 3 AND STR-MARL <> 1 AND <> 2 ) 
      **         )     
      **        GO READ-NEXT-ARTLOC
      **     END-IF
      **     IF W-EOF-ARL NOT = 1     
      **       | test existence dans MXART
      **       MOVE COD-MARL TO COD-MART
      **       READ MXART INVALID GO READ-NEXT-ARTLOC
      **       END-READ
      **       PERFORM STAT
040618**
      **       IF  LK-MART-L-ORD = 5 
      **       AND LK-MART-L-FOU <> 0 
      **                     AND <> FOU-MART THEN
      **          GO READ-NEXT-ARTLOC
      **       END-IF
      **
      **       IF  LK-MART-L-ORD = 9 
      **       AND (    ( LK-MART-L-GRA <> 0 
      **                            AND <> GRA-MART )
      **             OR (    LK-MART-L-FAM <> 0
      **                               AND <> FAM-MART ) ) THEN
      **          GO READ-NEXT-ARTLOC
      **       END-IF
040618**
      **       PERFORM TRADUIRE-ART
      **     END-IF
      **     .
      ** REMP-GRILLE-LOC.
      **     PERFORM UNTIL W-EOF = 1 OR W-NBR > 100
      **         PERFORM Mep-Un-Art
      **         PERFORM READ-NEXT-ARTLOC
      **     END-PERFORM
      **     
      **     IF W-EOF = 1 
      **        MODIFY Screen1-Pb-Plus, 
      **           VISIBLE 0
      **        MODIFY Screen1-La-Plus, 
      **           VISIBLE 0
      **
      ***        IF LK-MART-L-KEY = "F"                   
      ***           MOVE 3 TO LK-MART-L-ORD          
      ***           MODIFY Screen1-Rb-ORD1,
      ***              VALUE W-ORD
      ***        END-IF
      **
      **        PERFORM Aff-Tri
      **     ELSE
      ***        IF LK-MART-L-KEY = "F"
      **        IF W-NAT <> 1     
      **           MODIFY Screen1-Pb-Plus, 
      **              VISIBLE 1
      **           MODIFY Screen1-La-Plus, 
      **              VISIBLE 1
      **        END-IF
      **     END-IF
      **     .
      *
      *-----------------------------------------------------------------
      * Init-Grille-Ser.
      ** Remise à zéro de la grille...
      *     MODIFY Screen1-Gd-1, RESET-GRID = 1
      *     PERFORM Acu-Screen1-Gd-1-Content
      *     MODIFY Screen1-Gd-1(1 3), CELL-DATA = "N° de Série"
      *
      *     INITIALIZE ENR-MPMAT
      *     MOVE 0 TO W-EOF W-EOF-PMAT
      **    Liste des articles par numéros de série
      *     MOVE LK-MART-L-LIB TO SER-MPMAT
      *     START MXPMAT KEY NOT < CLE5-MPMAT
      *           INVALID MOVE 1 TO W-EOF-PMAT
      *     END-START
      *     IF W-EOF-PMAT = 1 
      *        MOVE 1 TO W-EOF
      *     ELSE
      *        PERFORM READ-NEXT-MXPMAT
      *     END-IF
      *     MOVE 2 TO Screen1-Gd-1-Cursor-Y-Old
      *     MOVE SPACES TO Screen1-Gd-1-COD
      *     MOVE 1 TO Tmp-9-3
      *     MOVE 0 TO W-NBR
      *     PERFORM REMP-GRILLE-SER
      ** Positionnement du curseur sur la grille...
      *     MODIFY Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old),
      *            CURSOR-Y = Screen1-Gd-1-Cursor-Y-Old,
      *            ROW-COLOR = W-ROW-LOW-COLOR,
      *            MASS-UPDATE = 0
      *
      ** Patch : sans ça, la grille peut parfois mélanger les lignes...
      *     MOVE SPACES TO Screen1-Gd-1-Record
      *     .
      * READ-NEXT-MXPMAT.
      *     READ MXPMAT NEXT END MOVE 1 TO W-EOF-PMAT END-READ
      *     PERFORM STAT
      *     IF W-EOF-PMAT = 1
      *        MOVE 1 TO W-EOF
      *     END-IF
      *     IF W-EOF-PMAT NOT = 1 AND 
      *        ( CSO-MPMAT NOT = 0 
      *          OR ( LK-MART-L-ACT = "L" AND ACT-MPMAT NOT = "P" )
      *          OR ( LK-MART-L-ACT NOT = "L" AND ACT-MPMAT NOT = "S" )
      *        )     
      *        GO READ-NEXT-MXPMAT
      *     END-IF
      *     IF W-EOF-PMAT NOT = 1     
      *        | test existence dans MXART
      *        MOVE ART-MPMAT TO COD-MART
      *        READ MXART INVALID GO READ-NEXT-MXPMAT
      *        END-READ
      *        PERFORM STAT
      *     END-IF
      *     .
      * REMP-GRILLE-SER.
      *     PERFORM UNTIL W-EOF = 1 OR W-NBR > 100
      *        PERFORM MEP-UN-ART-SER
      *        PERFORM READ-NEXT-MXPMAT
      *     END-PERFORM
      *     
      *     IF W-EOF = 1 
      *        MODIFY Screen1-Pb-Plus, VISIBLE 0
      *        MODIFY Screen1-La-Plus, VISIBLE 0
      **        PERFORM AFF-TRI
      *     ELSE
      *        IF LK-MART-L-KEY = "F"
      *           MODIFY Screen1-Pb-Plus, VISIBLE 1
      *           MODIFY Screen1-La-Plus, VISIBLE 1
      *        END-IF
      *     END-IF
      *     .

       MEP-UN-ART-SER.
      **     IF CANN-MART = 1 EXIT PARAGRAPH
      **     END-IF
      **
      **     STRING CO1-MART " " CO2-MART INTO Screen1-Gd-1-COD
      **     MOVE SER-MPMAT TO Screen1-Gd-1-REF
      **     IF LK-MART-L-ACT = "L"
      **        MOVE NPM-MPMAT TO Screen1-Gd-1-STO
      **     END-IF
      **     MOVE SPACE     TO Screen1-Gd-1-LIB
      **     STRING DES-MART " " DE2-MART DELIMITED BY SIZE 
      **     INTO Screen1-Gd-1-LIB
      **
      **     MODIFY Screen1-Gd-1, RECORD-TO-ADD = Screen1-Gd-1-Record
      **     Add 1 To Tmp-9-3
      **     MODIFY Screen1-Gd-1(Tmp-9-3, 1), hidden-data = COD-MART
      **
      **     IF W-TRI = 0     
      **        INITIALIZE ENR-TRI
      **        MOVE COD-MART  TO CLE1-TRI
      **        MOVE DES-MART  TO CLE2-TRI
      **        MOVE DE2-MART  TO DE2-TRI
      **        MOVE SER-MPMAT TO CLE3-TRI
      **
      **        WRITE ENR-TRI PERFORM STAT
      **     END-IF
      **     .


       Remp-Grille-Rech-Ser.
      *--------------------*              
      * Remise à zéro de la grille...
      **     MODIFY Screen1-Gd-1, RESET-GRID = 1|, MASS-UPDATE = 1, 
      **     PERFORM Acu-Screen1-Gd-1-Content
      **     MODIFY Screen1-Gd-1(1 3), CELL-DATA = "N° de Série"
      **     IF LK-MART-L-ACT = "L"
      **        MODIFY Screen1-Gd-1(1 4), CELL-DATA = "N° Interne"
      **     END-IF
      **
      *** Remplissage de la grille...
      **     OPEN INPUT RECH
      **     PERFORM STAT
      **     INITIALIZE ENR-MPMAT
      **     MOVE 0 TO W-EOF
      **     MOVE 2 TO Screen1-Gd-1-Cursor-Y-Old
      **     MOVE SPACES TO Screen1-Gd-1-COD
      **     MOVE 1 TO Tmp-9-3
      **     MOVE 0 TO W-NBR
      **
      **     PERFORM UNTIL W-EOF = 1
      **        MOVE SPACE TO ENR-RECH 
      **        READ RECH END MOVE 1 TO W-EOF
      **        END-READ
      **        PERFORM STAT
      **        IF W-EOF NOT = 1     
      **
      **          IF W-EOF-PMAT NOT = 1 AND 
      **          ( CSO-MPMAT NOT = 0 
      **          OR ( LK-MART-L-ACT = "L" AND ACT-MPMAT NOT = "P" )
      **          OR ( LK-MART-L-ACT NOT = "L" AND ACT-MPMAT NOT = "S" )
      **          )     
      **            MOVE 1 TO W-EOF-PMAT
      **          END-IF
      **          IF W-EOF-PMAT NOT = 1     
      **            | test existence dans MXART
      **            MOVE ART-MPMAT TO COD-MART
      **            READ MXART INVALID 
      **              MOVE 1 TO W-EOF-PMAT
      **            END-READ
      **            PERFORM STAT
      **            PERFORM TRADUIRE-ART
      **            IF W-EOF-PMAT NOT = 1     
      **              PERFORM MEP-UN-ART-SER
      **            END-IF
      **          END-IF
      **        END-IF
      **     END-PERFORM
      **     CLOSE RECH
      **     DELETE FILE RECH
      **     IF W-EOF = 1 
      **        MODIFY Screen1-Pb-Plus, VISIBLE 0
      **        MODIFY Screen1-La-Plus, VISIBLE 0
      **     ELSE
      ***        IF LK-MART-L-KEY = "F"
      **        IF W-NAT <> 1     
      **           MODIFY Screen1-Pb-Plus, VISIBLE 1
      **           MODIFY Screen1-La-Plus, VISIBLE 1
      **        END-IF
      **     END-IF 
           .

       Recherche-FAM.
      *-------------*
      *  Liste des articles d'une famille
           MOVE 1 TO ScreenPatienter-PB-Visible

           PERFORM Mis-Patienter-Debut

              INITIALIZE ENR-MART
              MOVE 0 TO W-EOF
              MOVE LK-MART-L-GRA TO GRA-MART
              MOVE LK-MART-L-FAM TO FAM-MART

              START MXART KEY >= CLE4-MART
              INVALID 
                 MOVE 1 TO W-EOF-ART
              END-START

              PERFORM
                 UNTIL W-EOF = 1 
                    OR ScreenPatienter-End = 1

                 READ MXART NEXT
                 AT END
                    MOVE 1 TO W-EOF
                    EXIT PERFORM
                 END-READ
                 PERFORM STAT
                 
                 PERFORM TRADUIRE-ART
                         
                 IF GRA-MART <> LK-MART-L-GRA
                 OR (     FAM-MART <> LK-MART-L-FAM     
040618                AND LK-MART-L-FAM <> ZERO )     
                    MOVE 1 TO W-EOF
                    EXIT PERFORM
                 END-IF

                 IF CANN-MART = 1 
                 OR LK-MART-L-LIB > CO2-MART     
                    EXIT PERFORM CYCLE
                 END-IF
130819           
                 IF  LK-MART-L-SELFOU = 1
                 AND LK-MART-L-FOU NOT = FOU-MART THEN
                    EXIT PERFORM CYCLE
                 END-IF
130819
                 MOVE COD-MART TO CLE1-TRI
                 MOVE DES-MART TO CLE2-TRI
                 MOVE DE2-MART TO DE2-TRI

130819           EVALUATE LK-MART-L-ORD
130819           WHEN 8
130819              MOVE RFN-MART TO CLE3-TRI
130819           WHEN 7
130819              MOVE RFI-MART TO CLE3-TRI
130819*           WHEN 10
130819*              MOVE RFC-MARF TO CLE3-TRI
130819           WHEN OTHER
                    MOVE REF-MART TO CLE3-TRI
130819           END-EVALUATE

                 WRITE ENR-TRI

                 PERFORM STAT

              END-PERFORM


           PERFORM Mis-Patienter-Fin

           CLOSE TRI
           OPEN INPUT TRI
           PERFORM STAT

           MOVE "D" TO W-SENS
           MOVE 1 TO W-TRI

           PERFORM Remp-Grille-Tri
           .

       Recherche-DES-FOU.
      *-----------------*
      *    Recherche des articles d'un fournisseur d'origine par désignation
           PERFORM Reset-Grille
           COPY "../../mx/copy/Assign-FICTMP.cbl" REPLACING 
              ==FICTMP==   BY ==RECH==
              =='FICTMP'== BY ==RECH==.
           CLOSE RECH.
      
           MOVE "ART"                       TO CMD-RECH-FIC
           MOVE MX-DIR                      TO CMD-RECH-DIR
           MOVE ASSIGN-RECH                 TO CMD-RECH-RESULT
           MOVE 1                           TO CMD-RECH-DEBSOR
           ADD  RECORD-POSITION OF DES-MART 
                60  GIVING CMD-RECH-FINSOR
      
130819     PERFORM INIT-CMD-RECH

           MOVE RECORD-POSITION OF FOU-MART TO CMD-RECH-POSR(1)
           MOVE LENGTH          OF FOU-MART TO CMD-RECH-LONR(1)
           MOVE LK-MART-L-FOU               TO CMD-RECH-VAL (1)
           MOVE "=="                        TO CMD-RECH-OPE (1)
           MOVE RECORD-POSITION OF DES-MART TO CMD-RECH-POSR(2)
300407*    MOVE LENGTH          OF DES-MART TO CMD-RECH-LONR(2)
300407     MOVE 60                          TO CMD-RECH-LONR(2)
           MOVE LK-MART-L-LIB               TO CMD-RECH-VAL (2)
           MOVE "'>='"                      TO CMD-RECH-OPE (2)

           MOVE "T"                         TO CMD-RECH-T    (1)
           MOVE RECORD-POSITION OF DES-MART TO CMD-RECH-POSDT(1)
           MOVE LENGTH          OF DES-MART TO CMD-RECH-POSFT(1)
      
           COPY "../../mistral/copy/rech.cbl".
           MOVE 1 TO W-RECHPLUS                                   
           PERFORM Remp-Grille-Rech
           .

       Recherche-DES-FOU-MAMA.
      *----------------------*
      ***    Recherche des articles d'un fournisseur secondaire par désignation 
      **     COPY "../../mx/copy/Assign-FICTMP.cbl" REPLACING 
      **        ==FICTMP==   BY ==RECH==
      **        =='FICTMP'== BY ==RECH==.
      **     CLOSE RECH.
      **
      **     MOVE "ARTMA"                     TO CMD-RECH-FIC
      **     MOVE MX-DIR                      TO CMD-RECH-DIR
      **     MOVE ASSIGN-RECH                 TO CMD-RECH-RESULT
      **     MOVE 1                           TO CMD-RECH-DEBSOR
      **     ADD  RECORD-POSITION OF DES-MAMA 
      **          LENGTH          OF DES-MAMA GIVING CMD-RECH-FINSOR
      **
130819**     PERFORM INIT-CMD-RECH
      **
      **     MOVE RECORD-POSITION OF FOU-MAMA TO CMD-RECH-POSR(1)
      **     MOVE LENGTH          OF FOU-MAMA TO CMD-RECH-LONR(1)
      **     MOVE LK-MART-L-FOU               TO CMD-RECH-VAL (1)
      **     MOVE "=="                        TO CMD-RECH-OPE (1)
      **     MOVE RECORD-POSITION OF DES-MAMA TO CMD-RECH-POSR(2)
      **     MOVE LENGTH          OF DES-MAMA TO CMD-RECH-LONR(2)
      **     MOVE LK-MART-L-LIB               TO CMD-RECH-VAL (2)
      **     MOVE "'>='"                      TO CMD-RECH-OPE (2)
      **
      **     MOVE "T"                         TO CMD-RECH-T    (1)
      **     MOVE RECORD-POSITION OF DES-MAMA TO CMD-RECH-POSDT(1)
      **     MOVE LENGTH          OF DES-MAMA TO CMD-RECH-POSFT(1)
      **
      **     COPY "../../mistral/copy/rech.cbl".
      **                             
      **     PERFORM Remp-Grille-Rech-MAMA
           .

       Remp-Grille-Rech-MAMA.
      *---------------------*
      * Remise à zéro de la grille...
           MODIFY Screen1-Gd-1, RESET-GRID = 1|, MASS-UPDATE = 1, 
           PERFORM Acu-Screen1-Gd-1-Content
      *     display message command

      * Remplissage de la grille...
           OPEN INPUT RECH
           PERFORM STAT
      **     INITIALIZE ENR-MAMA
           MOVE 0 TO W-EOF
           MOVE 2 TO Screen1-Gd-1-Cursor-Y-Old
           MOVE SPACES TO Screen1-Gd-1-COD
           MOVE 1 TO Tmp-9-3
           MOVE 0 TO W-NBR

           PERFORM UNTIL W-EOF = 1
              MOVE SPACE TO ENR-RECH 
              READ RECH END MOVE 1 TO W-EOF
              END-READ
              PERFORM STAT
           END-PERFORM

           CLOSE RECH
           DELETE FILE RECH

      * Positionnement du curseur sur la grille...
           MODIFY Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old),
                  CURSOR-Y = Screen1-Gd-1-Cursor-Y-Old,
070720*                  ROW-COLOR = 257,
                  |MASS-UPDATE = 0

      * Patch : sans ça, la grille peut parfois mélanger les lignes...
           MOVE SPACES TO Screen1-Gd-1-Record
           PERFORM Aff-Tri
           .

270309 Mep-Gd-1.
      *----------*
           IF  LK-MART-L-AGE <> SPACE
           AND AFLA-MPAR <> 0     
      *       Pas référence en troisième colonne
              MODIFY Screen1-Gd-1,
                 ALIGNMENT ("U", "L", "R", "R") 
              MOVE 0 TO W-COL-STO W-COL-STO2

              IF AFLA-MPAR = 1
                          OR 3     
                 IF LK-MART-L-CLI = 0
                    MODIFY Screen1-Gd-1(1, 3),
                       CELL-DATA "Prix de vente"
                 ELSE
                    MODIFY Screen1-Gd-1(1, 3),
                       CELL-DATA "PV Net Client"
                 END-IF
                 IF CLI-PALM = 250624                    | Bertet Musique
                    MODIFY Screen1-Gd-1(1, 3),
                       CELL-DATA "PV TTC"
                 END-IF
              END-IF

              IF AFLA-MPAR = 2     
                 MOVE 3 TO W-COL-STO
                 IF AST-MPAR = 1 MOVE 4 TO W-COL-STO2
                 END-IF
              END-IF

              IF AFLA-MPAR = 3     
                 MOVE 4 TO W-COL-STO
                 IF AST-MPAR = 1 MOVE 5 TO W-COL-STO2
                 END-IF
              END-IF

              IF W-COL-STO <> 0     
                 EVALUATE STLA-MPAR
                 WHEN 0
                    MODIFY Screen1-Gd-1(1, W-COL-STO),
                       CELL-DATA "Stock théorique"
                 WHEN 1
                    MODIFY Screen1-Gd-1(1, W-COL-STO),
                       CELL-DATA "Stock disponible"
                 WHEN 2
                    MODIFY Screen1-Gd-1(1, W-COL-STO),
                       CELL-DATA "Stock prévisionnel"
                 WHEN 3
                    MODIFY Screen1-Gd-1(1, W-COL-STO),
                       CELL-DATA "Stock disponible HC"
                 END-EVALUATE
191214           IF MOB-PALM > 0                           | Pour Beaubelique, dans MobiDis affichage indic gestion de stock
191214              MODIFY Screen1-Gd-1(1, W-COL-STO),
191214                 CELL-DATA "Gestion Stock"
191214           END-IF
              END-IF

              IF W-COL-STO2 <> 0     
                 IF LCO-MPAR = 1
                    MODIFY Screen1-Gd-1(1, W-COL-STO2),
                       CELL-DATA "Stock groupe"
                 ELSE
                    MODIFY Screen1-Gd-1(1, W-COL-STO2),
                       CELL-DATA "Stock société"
                 END-IF
              END-IF

           END-IF
041012     
           IF AFLA-MPAR = 0
060613*                 OR 3 THEN ?

              IF LK-MART-L-ORD = 8 THEN
                 MODIFY Screen1-Gd-1(1 3), 
                     CELL-DATA = "Référence Normalisée"
                 
              END-IF

              IF LK-MART-L-ORD = 7 THEN
                 MODIFY Screen1-Gd-1(1 3), 
                  CELL-DATA = "N° Interne"
              END-IF
250719
              IF LK-MART-L-ORD = 10
                 MODIFY Screen1-Gd-1(1 3), CELL-DATA= "Référence client"
              END-IF
250719
           END-IF

           IF LK-MART-L-ORD = 4
              MODIFY Screen1-Gd-1(1 3), 
                  CELL-DATA = "N° de Série"
           END-IF

           IF  LK-MART-L-ORD = 7 
           AND LK-MART-L-ACT = "L"
              MODIFY Screen1-Gd-1(1 4), 
                  CELL-DATA = "N° Interne"
           END-IF
041012     
           IF LK-MART-L-KEY =  "W" 
              modify Screen1-Gd-1, 
                X = 1, column-color 1
                X = 2, column-color 1
                X = 3, column-color 1
              modify Screen1-Gd-1, Y = 1,
                X = 1, cell-color 481
                X = 2, cell-color 481
                X = 3, cell-color 481
                DIVIDER-COLOR 9
                HEADING-DIVIDER-COLOR 9,
           end-if
           .

       Mis-Patienter-Debut.
      *-------------------*
      *     MODIFY Screen1-La-INC,
      *        VISIBLE 0

190819*     COPY "../../mistral/copy/Mis-Patienter-Debut.cbl".
190819     COPY "../../mistral/copy/Mis-Patienter-Debut-Centre.cbl".
           .

       Mis-Patienter-Fin.
      *-----------------*
           COPY "../../mistral/copy/Mis-Patienter-Fin.cbl".

      *     IF ScreenPatienter-End = 1     
      *        MODIFY Screen1-La-INC,
      *           VISIBLE 1
      *     END-IF
           .
       TRADUIRE-ART.
      **     IF NLAN-PALM = 0 
      **        EXIT PARAGRAPH
      **     END-IF
      **     MOVE "A"       TO INP-MTRD
      **     MOVE COD-MART  TO ART-MTRD
      **     MOVE NLAN-PALM TO LAN-MTRD
      **     PERFORM LECT-TRADUC
      **     IF DES-MTRD NOT = SPACE
      **        MOVE DES-MTRD TO DES-MART
      **        MOVE DE2-MTRD TO DE2-MART
      **     END-IF.
      *

       Mep-prix.
           INITIALIZE LK-CALPVART  
           MOVE COD-MART TO LK-CALPVART-ART
           MOVE LK-MART-L-CLI TO LK-CALPVART-CLI
           MOVE LK-MART-L-AGE TO LK-CALPVART-AGE
           MOVE LK-MART-L-TCC TO LK-CALPVART-TCC
130114     MOVE LK-MART-L-MOD TO LK-CALPVART-MOD
           PERFORM REMP-PRIX     
      *     CALL "calpvart.acu" USING ZONE-PALM LK-CALPVART
      *     CANCEL "calpvart.acu"
           MOVE PVT-MART TO LK-CALPVART-PVNCLI W-PICZ7VZZ.

       Cal-Sto-Ste.
           move cod-masa to cod-masa2
           move 0 to W-STOGR w-eof-masa2  
           start mxartsa2 key not < cle3-masa2 invalid 
                 move 1 to w-eof-masa2
           end-start
           perform until w-eof-masa2 = 1
              read mxartsa2 next end move 1 to w-eof-masa2
                                     exit perform cycle
              end-read
              perform stat
              if cod-masa <> cod-masa2 
                 move 1 to w-eof-masa2
                 exit perform cycle
              end-if
              ADD QSTM-MASA2(1) TO W-STOGR
              EVALUATE STLA-MPAR
              WHEN 1
                 SUBTRACT QCC-MASA2 FROM W-STOGR
              WHEN 2
                 SUBTRACT QCC-MASA2 FROM W-STOGR
                 ADD QCF-MASA2 TO W-STOGR
              END-EVALUATE
           end-perform.
110119
      *     IF STLA-MPAR = 3
      *        INITIALIZE LK-CALCREV
      *        MOVE SPACE TO LK-CALCREV-AGE
      *        MOVE COD-MASA TO LK-CALCREV-ART
      *        CALL "calcrev.acu" USING ZONE-PALM LK-CALCREV
      *        CANCEL "calcrev.acu"
      *        SUBTRACT LK-CALCREV-QCC FROM W-STOGR
      *        ADD LK-CALCREV-QCCM TO W-STOGR
      *     END-IF.
110119

      *--- Pour Bertet Musique: recalcul TTC 
       CAL-TTC-ART.
           MOVE GRA-MART TO GRA-MGFA GRA-MFAM
           MOVE ZERO     TO FAM-MGFA
           MOVE FAM-MART TO FAM-MFAM
           READ MXGRAFAM INVALID MOVE ZERO TO ARR-MGFA.
           PERFORM STAT
           READ MXFAMART 
           PERFORM STAT
           MOVE ARR-MGFA TO INDARR
           IF INDARR = 1 OR 2
               MOVE LK-CALPVART-PVNCLI TO PRIARR
               MOVE TVA-MFAM TO TVAARR
               PERFORM D-CALCUL-ARRONDI THRU F-CALCUL-ARRONDI
               MOVE TTCARR TO W-TTC
           ELSE
              MOVE LK-CALPVART-PVNCLI TO W-TTC
              IF TVA-MFAM NOT = ZERO
                 COMPUTE W-TTC ROUNDED =
                     LK-CALPVART-PVNCLI + 
                     ( PVT-MART * TVA-MPAR(TVA-MFAM) / 100).
 
030216* Recherche dans les traductions (devis Foraloc)
       Recherche-TRADUC.


111016* gestion article préférentiel Fenwick (article avec IDF = "LFR")
       Verif-Preferentiel.
      **     IF LK-MART-L-PREF = 1
      **     and mxfwk-palm = 1
      **     and LK-MART-L-NSER = space
      **        continue
      **     else
      **        exit paragraph
      **     end-if   
      **     move LK-MART-L-COD to cod-mart
      **     PERFORM MEP-ARTPREF
      **     if exi-artpref <> 1
      **        EXIT PARAGRAPH
      **     END-IF
      **
      **     string 
      **     "Voulez-vous substituer cet article par son équivalent" 
      **     " " CO2-ARTPREF " ?" delimited by "   " into acu-msg-1
      **     perform msg-on
      **     if acu-return-value = 2
      **        exit paragraph
      **     end-if   
      **     move cod-mart2 to LK-MART-L-COD
      **     move des-mart2 to LK-MART-L-DES.
      *
081117 Screen1-Cb-ACHI-Link.
      *--------------------*
           IF W-PREM-RECH = 1 THEN
              PERFORM Screen1-Pb-Lancer-LinkTo
           END-IF
           .
      *
081117 Screen1-Cb-VTEI-Link.
      *--------------------*
           IF W-PREM-RECH = 1 THEN
              PERFORM Screen1-Pb-Lancer-LinkTo
           END-IF
           .

040618 Affi-FOU.
      *--------*
           IF LK-MART-L-FOU = 0 THEN
              MOVE SPACE TO W-LIB-MFOU
           ELSE
              MOVE LK-MART-L-FOU TO COD-MFOU
              READ MXFOU INVALID KEY MOVE ALL "*" TO RAI-MFOU
              END-READ
              PERFORM STAT
              MOVE RAI-MFOU TO W-LIB-MFOU
           END-IF

           MODIFY Screen1-Ef-FOU,
              VALUE W-LIB-MFOU
              VISIBLE 1
           MODIFY Screen1-Pb-FOU,
              VISIBLE 1
           .

040618 Affi-GFA.
      *--------*
           MOVE SPACE TO W-LIB-MGFA

           IF LK-MART-L-GRA <> ZERO THEN
              INITIALIZE            ENR-MGFA
              MOVE LK-MART-L-GRA TO GRA-MGFA

              READ MXGRAFAM

              PERFORM STAT

              MOVE ABR-MGFA TO W-ABR

              IF LK-mART-L-FAM <> ZERO THEN
                 INITIALIZE            ENR-MGFA
                 MOVE LK-MART-L-GRA TO GRA-MGFA
                 MOVE LK-MART-L-FAM TO FAM-MGFA

                 READ MXGRAFAM

                 PERFORM STAT

                 STRING W-ABR 
                        "-" 
                       ABR-MGFA
                  INTO W-LIB-MGFA
              ELSE
                 MOVE W-ABR TO W-LIB-MGFA
              END-IF

           END-IF

           MODIFY Screen1-Ef-GFA,
              VALUE W-LIB-MGFA
              VISIBLE 1
           MODIFY Screen1-Pb-GFA,
              VISIBLE 1
           .
      *
060418 Screen1-Ef-FOU-Bef-Procedure.
      *----------------------------*
           MODIFY Screen1-La-Rech, VISIBLE TRUE,
           TITLE = "Saisissez le code fournisseur"
           MOVE SPACE TO W-LIB-MFOU

           IF LK-MART-L-FOU <> 0 THEN
              MOVE LK-MART-L-FOU TO W-LIB-MFOU
           END-IF

           MODIFY Screen1-Ef-FOU,
              VALUE W-LIB-MFOU
           .
      *
060418 Screen1-Ef-FOU-Aft-Procedure.
      *----------------------------*
           INQUIRE Screen1-Ef-FOU,
              VALUE IN LK-MART-L-FOU
           PERFORM Affi-FOU
           MODIFY Screen1-La-Rech, VISIBLE TRUE,
           TITLE = "Indiquez la référence à rechercher"
           .
      *
060418 Screen1-Pb-FOU-Link.
      *-------------------*
           CALL   "mfou-l.acu" USING ZONE-PALM LK-MFOU-L
           CANCEL "mfou-l.acu"
           MOVE LK-MFOU-L-COD TO LK-MART-L-FOU
           PERFORM Affi-FOU
           .
      *
040618 Screen1-Ef-GFA-Bef-Procedure.
      *----------------------------*
           MODIFY Screen1-La-Rech, VISIBLE TRUE,
           TITLE = "Saisissez le code famille sous-famille"
           MOVE SPACE TO W-LIB-MGFA

           IF LK-MART-L-GRA <> ZERO THEN

              IF LK-MART-L-FAM = ZERO THEN
                 MOVE LK-MART-L-GRA TO W-LIB-MGFA
              ELSE
                 STRING LK-MART-L-GRA 
                        LK-MART-L-FAM
                   INTO W-LIB-MGFA
              END-IF
                 
           END-IF
              
           MODIFY Screen1-Ef-GFA,
              VALUE W-LIB-MGFA
           .
      *
040618 Screen1-Ef-GFA-Aft-Procedure.
      *----------------------------*
           MOVE ZERO TO LK-MART-L-GRA
                        LK-MART-L-FAM
           INQUIRE Screen1-Ef-GFA,
              VALUE IN W-LIB-MGFA

           MOVE 0 TO I
           INSPECT W-LIB-MGFA TALLYING I FOR ALL "-"

           IF I = 0 THEN

              IF W-LIB-MGFA(1:2) NUMERIC THEN
                 MOVE W-LIB-MGFA(1:2) TO LK-MART-L-GRA

                 IF W-LIB-MGFA(3:2) NUMERIC THEN
                    MOVE W-LIB-MGFA(3:2) TO LK-MART-L-FAM
                 END-IF

              ELSE

                 IF W-LIB-MGFA(1:1) NUMERIC THEN
                    MOVE W-LIB-MGFA(1:1) TO LK-MART-L-GRA
                 END-IF

              END-IF

           ELSE
              UNSTRING W-LIB-MGFA DELIMITED BY "-"
                 INTO W-GRAX
                      W-FAMX
               MOVE W-GRAX TO NUMVAL-ENT
               PERFORM NUMVAL
               MOVE NUMVAL-SOR TO LK-MART-L-GRA
               MOVE W-FAMX TO NUMVAL-ENT
               PERFORM NUMVAL
               MOVE NUMVAL-SOR TO LK-MART-L-FAM
           END-IF

           PERFORM Affi-GFA
           MODIFY Screen1-La-Rech, VISIBLE TRUE,
           TITLE = "Indiquez la référence à rechercher"
           .
      *
040618 Screen1-Pb-GFA-Link.
      *-------------------*
      *     MOVE ZERO TO LK-MART-L-GRA LK-MART-L-FAM
           CALL "../../mx/o/mgfa-t.acu" USING ZONE-PALM, LK-MGFA-T
           CANCEL "../../mx/o/mgfa-t.acu"
           MOVE LK-MGFA-T-GRA TO LK-MART-L-GRA
           MOVE LK-MGFA-T-FAM TO LK-MART-L-FAM
           PERFORM Affi-GFA
           .

250719 RECHERCHE-ARTREF.
      *----------------*
 

081117 Screen1-Cb-ASTO-Link.
      *--------------------*
           IF W-PREM-RECH = 1 THEN
              PERFORM Screen1-Pb-Lancer-LinkTo
           END-IF
           .

       

      *{Bench}end
       REPORT-COMPOSER SECTION.
