      *{Bench}prg-comment
      * scodart-l.cbl
      * scodart-l.cbl is generated from W:\mx\spro\scodart-l.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. scodart-l.
       AUTHOR. nathalie.clair.
       DATE-WRITTEN. mercredi 22 janvier 2020 15:23:00.
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
      *{Bench}file-control
       COPY "COBCAP.sl".
       COPY "MXPARAM.sl".
       COPY "MXART.sl".
       COPY "MXGRAFAM.sl".
       COPY "MXFAMART.sl".
       COPY "RECH.sl".
       COPY "RECHCMD.sl".
       COPY "MXCATFOU.sl".
       COPY "MXFOU.sl".
       COPY "MXART2.sl".
       COPY "MXARTSA.sl".
      *{Bench}end
       DATA                        DIVISION.
       FILE                        SECTION.
      *{Bench}file
       COPY "COBCAP.fd".
       COPY "MXPARAM.fd".
       COPY "MXART.fd".
       COPY "MXGRAFAM.fd".
       COPY "MXFAMART.fd".
       COPY "RECH.fd".
       COPY "RECHCMD.fd".
       COPY "MXCATFOU.fd".
       COPY "MXFOU.fd".
       COPY "MXART2.fd".
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
           COPY  "W:\mistral\copy\cobcap.wrk".
       77 Screen1-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
           COPY  "\mistral\copy\rech-expression.wrk".
           COPY  "W:\mistral\copy\Gd-Sort.wrk".
           COPY  "W:\mx\copy\LK-CALPVART.wrk".
           COPY  "W:\mx\copy\arrondi.wrk".
           COPY  "W:\mx\copy\LK-MGFA-T.wrk".
           COPY  "W:\mx\copy\LK-ART-C.wrk".
           COPY  "W:\mistral\copy\rech.wrk".
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
       77 TRIERDD10-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 VALIDER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Screen1-Gd-1-Cursor-Y-Old    PIC  9(5).
       01 Screen1-Gd-1-Record.
           05 Screen1-Gd-1-COD PIC  X(21).
           05 Screen1-Gd-1-ORI PIC  X.
           05 Screen1-Gd-1-LIB PIC  X(60).
           05 Screen1-Gd-1-STS PIC  X(8).
           05 Screen1-Gd-1-STG PIC  X(8).
           05 Screen1-Gd-1-PVT PIC  X(10).
           05 Screen1-Gd-1-CAS PIC  X(08).
           05 Screen1-Gd-1-FOU PIC  9(6).
       77 Tmp-9-3          PIC  9(5).
       77 W-REMCLI         PIC  ZZ9,99-.
       77 W-PVCLI          PIC  9(6)9V99.
       77 W-KEY-ORDER      PIC  X(1)
                  VALUE IS "A".
       77 WV-PRO           PIC  9.
       77 W-OK PIC  9(4)
                  VALUE IS 0.
       77 Z-LONG           PIC  9(4)
                  VALUE IS 0.
       77 W-NBR            PIC  9(6)
                  VALUE IS 0.
       77 W-NBR-CTF        PIC  9(6)
                  VALUE IS 0.
       77 FICRECH          PIC  X(100).
       77 FICRESULT        PIC  X(100).
       77 DEB-CMD          PIC  X(30).
       77 FIN-CMD          PIC  X(30).
       77 GUILLEMET        PIC  X(30).
       77 COMMANDE         PIC  X(500).
       77 COMMANDE2        PIC  X(500).
       77 SV-ORD           PIC  9(7)
                  VALUE IS 0.
       77 SV-ORD2          PIC  9(7)
                  VALUE IS 0.
       77 IND-ANR          PIC  9(7)
                  VALUE IS 0.
       77 J    PIC  9(6)
                  VALUE IS 0.
       77 SV-COD           PIC  X(20).
       77 SV-RFN           PIC  X(20).
       77 W-ORI            PIC  X.
       77 Fixed-Font
                  USAGE IS HANDLE OF FONT FIXED-FONT.
       77 W-MXPARAM        PIC  9(9).
       77 ENGRSIM16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-ORD            PIC  S9(1)
                  VALUE IS 0.
       01 W-HEU            PIC  9(6)V99.
       01 R-W-HEU REDEFINES W-HEU.
           02 W-HEU1           PIC  9(6).
           02 W-HEU2           PIC  99.
       77 W-REM            PIC  S99V99.
       77 W-PUB            PIC  S9(9)V99.
       77 W-STS            PIC  S9(9)V99.
       77 W-STG            PIC  S9(9)V99.
       77 W-EOF-MASA       PIC  9.
       77 W-PRI-CLI        PIC  S9(9)V99.
       77 D72  PIC  ZZZBZZ9,99.
       77 D52S PIC  --B--9,99.
       77 D50S PIC  ----B--9.
       77 W-REC            PIC  S99V99
                  OCCURS 6 TIMES.
       77 w-log-palm       PIC  999
                  VALUE IS 025.
       77 w-npr-palm       PIC  9999
                  VALUE IS 63.
      *
      *
       77 W-GTL            PIC  X(2).
       77 W-CRE            PIC  9.
       77 TCC-Default      PIC  X.
       77 ZON50            PIC  X(50).
       77 W-DIRCOBOL       PIC  X(60).
       77 W-REPCOBOL       PIC  X(60).
       77 LONG PIC  9(3).
       77 STATUS-CODE      PIC  9.
       77 W-SIZE           PIC  9(6).
       01 FILE-INFO.
           02 FILE-SIZE        PIC  X(8)
                      USAGE IS COMP-X.
           02 FILE-DATE        PIC  9(8)
                      USAGE IS COMP-X.
           02 FILE-TIME        PIC  9(8)
                      USAGE IS COMP-X.
       77 EXI-CATFOUK      PIC  9.
       77 FIC-RECHERCHE    PIC  9.
       01 TABLE-ART.
           05 T-ART            PIC  X(20)
                      OCCURS 500 TIMES.
           05 T-ORI            PIC  X
                      OCCURS 500 TIMES.
       77 MODU-DECO        PIC  9
                  VALUE IS 1.
       77 IND-CTF          PIC  9.
       77 VAL-RECHERCHE    PIC  X(50).
       77 FOR-RECHERCHE    PIC  X(50).
       77 LON-RECHERCHE    PIC  99.
       77 ERR-RECHERCHE    PIC  9.
       77 CARACTERE-FIN    PIC  9.
       77 CARACTERE-DEBUT  PIC  9.
       77 W-NB-ANREF       PIC  99.
       77 W-TAB-ANREF      PIC  X(20)
                  OCCURS 50 TIMES.
       77 I    PIC  9(6).
       77 AUTO-CREART      PIC  X.
       77 W-GCOD           PIC  9(14).
       77 W-AR2            PIC  X(16).
       77 W-SER            PIC  X(20).
       77 W-RFIN           PIC  9(8).
       77 SV-DAT           PIC  9(8).
       77 K    PIC  9(6).
       77 INTERDI16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 OCCASIO16-bmp    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FILE-STATUS      PIC  X(2).
           88 Valid-MXFAMART VALUE IS "00" THRU "09". 
       77 W-MXTABARR       PIC  9(9).
       77 W-TTC            PIC  S9(9)V99.
       77 ACHAINT16-bmp    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 SV-ART           PIC  X(20).
       77 NB-GCOD          PIC  9(3).
       77 IND-CHGGCOD      PIC  9.
       77 W-VIS-TACT       PIC  9.
       77 W-Screen1-Size   PIC  S9(4)V9(2)
                  VALUE IS 114,29.
       77 FLECHBB16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FLECHEH16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FLECHEB32-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FLECHEB16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FLECHEH32-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ASSIGN-RECH      PIC  X(60).
       77 WASS-RECH        PIC  X(20)
                  VALUE IS "SCODART-RECH".
       77 ASSIGN-RECHCMD   PIC  X(60).
       77 W-ETA            PIC  X.
       77 W-Y  PIC  9(6).
       77 W-KEY-ORDER-GD1  PIC  X.
       77 W-KEY-NUM-GD1    PIC  9.
       77 PATIENTER-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 CATARTX24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Large-Font
                  USAGE IS HANDLE OF FONT LARGE-FONT.
       77 PATIENTEG-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 PATIENTEG-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 PATIENTE2-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 CATARTB16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 PREFNON16-bmp    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 PREFOUI16-bmp    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 VALIDER32-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 QUITTER32-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TRIERAD10-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-MXPARACH       PIC  9(9).
       77 NB-SUBST         PIC  9(3).
       77 WV-PTF           PIC  9.
       77 LETTREP12-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 PATIENTER-JP     PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 PATIENTE2-JP     PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FLECHEB32-JP     PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FLECHEH32-JP     PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 VALIDER32-JP     PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 LETTREP12-JP     PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.

      *{Bench}end
       LINKAGE                     SECTION.
      *{Bench}linkage
       77 LK-ZONE-PALM     PIC  X(500).
           COPY  "W:\MX\COPY\LK-SCODART-L.WRK".
      *{Bench}end
       SCREEN                      SECTION.
      *{Bench}copy-screen
       01 Screen1.
           03 Screen1-Fr-CATFOU, Frame, 
              COL 61,57, LINE 1,08, LINES 2,54 CELLS, SIZE 26,29 CELLS, 
              COLOR IS 520, FILL-COLOR 16, FILL-PERCENT 100, 
              FULL-HEIGHT, ID IS 22, VISIBLE 0, BACKGROUND-LOW.
           03 Screen1-Gd-1, Grid, 
              COL 1,00, LINE 4,00, LINES 17,23 CELLS, 
              SIZE 107,86 CELLS, 
              3-D, CENTERED-HEADINGS, COLOR IS 514, COLUMN-HEADINGS, 
              DATA-COLUMNS (1, 22, 23, 83, 91, 99, 109, 117), 
              DISPLAY-COLUMNS (1, 23, 26, 73, 81, 89, 99, 107), 
              ALIGNMENT ("U", "C", "L", "R", "R", "R", "C", "U"), 
              DATA-TYPES ("X(21)", "X", "X(60)", "X", "X", "X", "X", "X"
              ), 
              SEPARATION (5, 5, 5, 5, 5, 5, 5, 5), 
              COLUMN-DIVIDERS (0, 1, 1, 1, 1, 1, 1, 1), 
              CURSOR-FRAME-WIDTH 0, DIVIDER-COLOR W-Divider-Color, 
              END-COLOR 16, FONT IS Default-Font, 
              HEADING-COLOR W-Heading-Color, 
              HEADING-DIVIDER-COLOR W-Heading-Divider-Color, 
              HEADING-FONT IS Small-Font, ID IS 1, NUM-COL-HEADINGS 1, 
              NUM-ROWS w-num-rows, RECORD-DATA Screen1-Gd-1-Record, 
              TILED-HEADINGS, VPADDING 50, VSCROLL, 
              EVENT PROCEDURE Screen1-Gd-1-Event-Proc.
           03 Screen1-Pb-Accept, Push-Button, 
              COL 99,43, LINE 1,00, LINES 24, SIZE 24, 
              BITMAP-HANDLE VALIDER24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              ID IS 2, NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Accepter", 
              EXCEPTION PROCEDURE Screen1-Pb-Accept-Exception-Proc.
           03 Screen1-La-1, Label, 
              COL 2,71, LINE 21,62, LINES 1,00 CELLS, SIZE 10,00 CELLS, 
              COLOR IS 5, FONT IS Default-Font, ID IS 4, 
              LABEL-OFFSET 20, 
              TITLE "Colonne O:".
           03 Screen1-La-2, Label, 
              COL 13,86, LINE 21,62, LINES 1,00 CELLS, 
              SIZE 16,29 CELLS, 
              COLOR IS 5, FONT IS Default-Font, ID IS 5, 
              LABEL-OFFSET 20, 
              TITLE "&Ancienne référence".
           03 Screen1-La-3, Label, 
              COL 35,43, LINE 21,62, LINES 1,00 CELLS, SIZE 9,43 CELLS, 
              COLOR IS 5, FONT IS Default-Font, ID IS 6, 
              LABEL-OFFSET 20, 
              TITLE "&Multi-appro".
           03 Screen1-La-4, Label, 
              COL 57,00, LINE 21,62, LINES 1,00 CELLS, 
              SIZE 17,57 CELLS, 
              COLOR IS 5, FONT IS Default-Font, ID IS 7, 
              LABEL-OFFSET 20, 
              TITLE "référence &Normalisée".
           03 Screen1-La-4a, Label, 
              COL 78,00, LINE 21,62, LINES 1,00 CELLS, 
              SIZE 14,43 CELLS, 
              COLOR IS 5, FONT IS Default-Font, ID IS 8, 
              LABEL-OFFSET 20, 
              TITLE "référence &Interne".
           03 Screen1-La-4b, Label, 
              COL 35,43, LINE 22,92, LINES 1,00 CELLS, 
              SIZE 18,29 CELLS, 
              COLOR IS 5, FONT IS Default-Font, ID IS 9, 
              LABEL-OFFSET 20, 
              TITLE "référence &Equivalente", VISIBLE REQU-MPAR.
           03 Screen1-Bt-1, Bitmap, TRANSPARENT-COLOR 12632256, 
              COL 21,86, LINE 1,54, LINES 16, SIZE 16, 
              BITMAP-HANDLE INTERDI16-BMP, BITMAP-NUMBER 1, 
              ID IS 30.
           03 Screen1-Bt-1a, Bitmap, TRANSPARENT-COLOR 10724259, 
              COL 43,57, LINE 1,54, LINES 16, SIZE 16, 
              BITMAP-HANDLE OCCASIO16-bmp, BITMAP-NUMBER 1, 
              ID IS 28.
           03 Screen1-La-4c, Label, 
              COL 57,00, LINE 22,92, LINES 1,00 CELLS, 
              SIZE 10,00 CELLS, 
              COLOR IS 5, FONT IS Default-Font, ID IS 10, 
              LABEL-OFFSET 20, 
              TITLE "&Substitution", VISIBLE REQU-MPAR.
           03 Screen1-Bt-1b, Bitmap, TRANSPARENT-COLOR 12632256, 
              COL 2,00, LINE 1,54, LINES 16, SIZE 16, 
              BITMAP-HANDLE ACHAINT16-bmp, BITMAP-NUMBER 1, 
              ID IS 11.
           03 Screen1-La-1a, Label, 
              COL 5,29, LINE 1,77, LINES 1,08 CELLS, SIZE 11,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 12, LABEL-OFFSET 0, 
              TITLE "Achat interdit", TRANSPARENT.
           03 Screen1-La-1aa, Label, 
              COL 25,14, LINE 1,77, LINES 1,08 CELLS, SIZE 11,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 13, LABEL-OFFSET 0, 
              TITLE "Vente interdite", TRANSPARENT.
           03 Screen1-Pb-FlechB, Push-Button, 
              COL 108,86, LINE 5,69, LINES 31, SIZE 31, 
              BITMAP-HANDLE FLECHEB32-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1001, ID IS 14, NO-TAB, SELF-ACT, 
              TITLE "Ligne Suivante", VISIBLE W-VIS-TACT.
           03 Screen1-Pb-FlechH, Push-Button, 
              COL 108,86, LINE 18,23, LINES 31, SIZE 31, 
              BITMAP-HANDLE FLECHEH32-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1002, ID IS 15, NO-TAB, SELF-ACT, 
              TITLE "Ligne Précédente", VISIBLE W-VIS-TACT.
           03 Screen1-La-4ca, Label, 
              COL 13,86, LINE 22,92, LINES 1,00 CELLS, 
              SIZE 18,43 CELLS, 
              COLOR IS 5, FONT IS Default-Font, ID IS 16, 
              LABEL-OFFSET 20, 
              TITLE "&Catalogue fournisseur".
           03 Screen1-Pb-CATFOU, Push-Button, 
              COL 82,14, LINE 1,00, LINES 24, SIZE 24, 
              BITMAP-HANDLE CATARTX24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 9752, ID IS 18, 
              TITLE "Rechercher dans les catalogues des fournisseurs", 
              VISIBLE 0.
           03 Screen1-La-CATFOU, Label, 
              COL 63,14, LINE 1,92, LINES 1,00 CELLS, SIZE 18,57 CELLS, 
              COLOR IS 2, FONT IS Default-Font, ID IS 19, RIGHT, 
              LABEL-OFFSET 0, 
              TITLE "Recherche catalogues", TRANSPARENT, VISIBLE 0.
           03 Screen1-Fr-100, Frame, 
              COL 5,86, LINE 19,77, LINES 1,46 CELLS, SIZE 93,29 CELLS, 
              ENGRAVED, COLOR IS 5, FILL-COLOR 16, FILL-PERCENT 100, 
              FONT IS Large-Font, ID IS 21, 
              TITLE 
              "Plus de 500  références correspondent à votre recherche. 
      -       "Veuillez SVP affiner votre sélection.", 
              TITLE-POSITION 7, VISIBLE 0, BACKGROUND-LOW.
           03 Screen1-Bt-Attente, Bitmap, 
              COL 48,71, LINE 10,54, LINES 40, SIZE 35, 
              BITMAP-HANDLE PATIENTER-JPG, BITMAP-NUMBER 8, 
              BITMAP-START 1, BITMAP-End 8, BITMAP-TIMER 8, ID IS 17, 
              VISIBLE 0.
           03 Screen1-Bt-AttenteG, Bitmap, 
              COL 88,57, LINE 1,23, LINES 28, SIZE 25, 
              BITMAP-HANDLE PATIENTE2-JPG, BITMAP-NUMBER 8, 
              BITMAP-START 1, BITMAP-End 8, BITMAP-TIMER 8, ID IS 20, 
              VISIBLE 0.
           03 Screen1-La-4aa, Label, 
              COL 78,14, LINE 22,92, LINES 1,00 CELLS, 
              SIZE 13,71 CELLS, 
              COLOR IS 5, FONT IS Default-Font, ID IS 23, 
              LABEL-OFFSET 20, 
              TITLE "art. &Préférentiel", VISIBLE MXFWK-PALM.
           03 Screen1-Bt-1c, Bitmap, TRANSPARENT-COLOR 12632256, 
              COL 72,71, LINE 22,77, LINES 16, SIZE 16, 
              BITMAP-HANDLE PREFNON16-bmp, BITMAP-NUMBER 1, 
              ID IS 24, VISIBLE MXFWK-PALM.
           03 Screen1-La-1b, Label, 
              COL 2,71, LINE 22,92, LINES 1,00 CELLS, SIZE 10,00 CELLS, 
              COLOR IS 5, FONT IS Default-Font, ID IS 25, 
              LABEL-OFFSET 20, 
              TITLE "   (origine)".
           03 Screen1-Bt-1aa, Bitmap, TRANSPARENT-COLOR 12632256, 
              COL 75,00, LINE 22,77, LINES 16, SIZE 16, 
              BITMAP-HANDLE PREFOUI16-bmp, BITMAP-NUMBER 1, 
              ID IS 26, VISIBLE MXFWK-PALM.
           03 Screen1-Bt-1d, Bitmap, 
              COL 88,43, LINE 7,23, LINES 32, SIZE 32, 
              BITMAP-HANDLE VALIDER32-JPG, BITMAP-NUMBER 1, 
              ID IS 27, VISIBLE 0.
           03 Screen1-Bt-3, Bitmap, 
              COL 1,86, LINE 3,15, LINES 16, SIZE 10, 
              BITMAP-HANDLE TRIERAE10-JPG, BITMAP-NUMBER 1, 
              ID IS 31, VISIBLE 0.
           03 Screen1-Bt-4, Bitmap, 
              COL 6,14, LINE 3,15, LINES 16, SIZE 10, 
              BITMAP-HANDLE TRIERDD10-JPG, BITMAP-NUMBER 1, 
              ID IS 32, VISIBLE 0.
           03 Screen1-Bt-5, Bitmap, 
              COL 4,71, LINE 3,15, LINES 16, SIZE 10, 
              BITMAP-HANDLE TRIERDE10-JPG, BITMAP-NUMBER 1, 
              ID IS 33, VISIBLE 0.
           03 Screen1-Bt-2a, Bitmap, 
              COL 3,29, LINE 3,15, LINES 16, SIZE 10, 
              BITMAP-HANDLE TRIERAD10-JPG, BITMAP-NUMBER 1, 
              ID IS 34, VISIBLE 0.
           03 Screen1-La-1aaa, Label, 
              COL 46,71, LINE 1,77, LINES 1,08 CELLS, SIZE 11,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 35, LABEL-OFFSET 0, 
              TITLE "Occasion", TRANSPARENT.
           03 Screen1-Bt-PTF, Bitmap, 
              COL 93,29, LINE 23,08, LINES 12, SIZE 12, 
              BITMAP-HANDLE LETTREP12-JPG, BITMAP-NUMBER 1, 
              ID IS 36, VISIBLE 0.
           03 Screen1-La-PTF, Label, 
              COL 95,57, LINE 22,92, LINES 1,00 CELLS, SIZE 7,43 CELLS, 
              COLOR IS 5, FONT IS Default-Font, ID IS 37, 
              LABEL-OFFSET 20, 
              TITLE "Prix tarif", VISIBLE 0.

      *{Bench}end

      *{Bench}linkpara
       PROCEDURE DIVISION USING LK-ZONE-PALM, LK-SCODART-L.
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
           COPY RESOURCE "VALIDER24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "VALIDER24.JPG", GIVING 
              VALIDER24-JPG
           COPY RESOURCE "INTERDI16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "INTERDI16.BMP", GIVING 
              INTERDI16-BMP
           COPY RESOURCE "OCCASIO16.bmp".
           CALL "W$BITMAP" USING WBITMAP-LOAD "OCCASIO16.bmp", GIVING 
              OCCASIO16-bmp
           COPY RESOURCE "ACHAINT16.bmp".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ACHAINT16.bmp", GIVING 
              ACHAINT16-bmp
           COPY RESOURCE "FLECHEB32.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "FLECHEB32.JPG", GIVING 
              FLECHEB32-JPG
           COPY RESOURCE "FLECHEH32.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "FLECHEH32.JPG", GIVING 
              FLECHEH32-JPG
           COPY RESOURCE "CATARTX24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "CATARTX24.JPG", GIVING 
              CATARTX24-JPG
           COPY RESOURCE "PATIENTER.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "PATIENTER.JPG", GIVING 
              PATIENTER-JPG
           COPY RESOURCE "PATIENTE2.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "PATIENTE2.JPG", GIVING 
              PATIENTE2-JPG
           COPY RESOURCE "PREFNON16.bmp".
           CALL "W$BITMAP" USING WBITMAP-LOAD "PREFNON16.bmp", GIVING 
              PREFNON16-bmp
           COPY RESOURCE "PREFOUI16.bmp".
           CALL "W$BITMAP" USING WBITMAP-LOAD "PREFOUI16.bmp", GIVING 
              PREFOUI16-bmp
           COPY RESOURCE "VALIDER32.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "VALIDER32.JPG", GIVING 
              VALIDER32-JPG
           COPY RESOURCE "TRIERAE10.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "TRIERAE10.JPG", GIVING 
              TRIERAE10-JPG
           COPY RESOURCE "TRIERDD10.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "TRIERDD10.JPG", GIVING 
              TRIERDD10-JPG
           COPY RESOURCE "TRIERDE10.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "TRIERDE10.JPG", GIVING 
              TRIERDE10-JPG
           COPY RESOURCE "TRIERAD10.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "TRIERAD10.JPG", GIVING 
              TRIERAD10-JPG
           COPY RESOURCE "LETTREP12.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "LETTREP12.JPG", GIVING 
              LETTREP12-JPG
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
           IF VALIDER24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY VALIDER24-JPG
              MOVE 0 TO VALIDER24-JPG
           END-IF
           IF INTERDI16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY INTERDI16-BMP
              MOVE 0 TO INTERDI16-BMP
           END-IF
           IF OCCASIO16-bmp NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY OCCASIO16-bmp
              MOVE 0 TO OCCASIO16-bmp
           END-IF
           IF ACHAINT16-bmp NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ACHAINT16-bmp
              MOVE 0 TO ACHAINT16-bmp
           END-IF
           IF FLECHEB32-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY FLECHEB32-JPG
              MOVE 0 TO FLECHEB32-JPG
           END-IF
           IF FLECHEH32-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY FLECHEH32-JPG
              MOVE 0 TO FLECHEH32-JPG
           END-IF
           IF CATARTX24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY CATARTX24-JPG
              MOVE 0 TO CATARTX24-JPG
           END-IF
           IF PATIENTER-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY PATIENTER-JPG
              MOVE 0 TO PATIENTER-JPG
           END-IF
           IF PATIENTE2-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY PATIENTE2-JPG
              MOVE 0 TO PATIENTE2-JPG
           END-IF
           IF PREFNON16-bmp NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY PREFNON16-bmp
              MOVE 0 TO PREFNON16-bmp
           END-IF
           IF PREFOUI16-bmp NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY PREFOUI16-bmp
              MOVE 0 TO PREFOUI16-bmp
           END-IF
           IF VALIDER32-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY VALIDER32-JPG
              MOVE 0 TO VALIDER32-JPG
           END-IF
           IF TRIERAE10-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY TRIERAE10-JPG
              MOVE 0 TO TRIERAE10-JPG
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
           IF LETTREP12-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY LETTREP12-JPG
              MOVE 0 TO LETTREP12-JPG
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
           PERFORM Screen1-BeforeCreate
      * display screen
              DISPLAY Floating GRAPHICAL WINDOW
                 LINES 23,46, SIZE W-Screen1-Size, CELL HEIGHT 13, 
                 CELL WIDTH 7, COLOR IS 65793, LABEL-OFFSET 0, 
                 LINK TO THREAD, NO SCROLL, WITH SYSTEM MENU, 
                 TITLE "ARTICLES EQUIVALENTS OU A REFERENCE SIMILAIRE", 
                 TITLE-BAR, USER-GRAY, USER-WHITE, NO WRAP, 
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
           END-PERFORM
           DESTROY Screen1-Handle
           INITIALIZE Key-Status
           .

      * Screen1-Gd-1
       Acu-Screen1-Gd-1-Content.
      * Cells Settings
           MODIFY Screen1-Gd-1, X = 1, Y = 1, CELL-DATA = "Code", 
           MODIFY Screen1-Gd-1, X = 2, Y = 1, CELL-DATA = "O", 
           MODIFY Screen1-Gd-1, X = 3, Y = 1, CELL-DATA = 
              "Désignation", 
           MODIFY Screen1-Gd-1, X = 4, Y = 1, CELL-DATA = "Stock Sté", 
           MODIFY Screen1-Gd-1, X = 5, Y = 1, CELL-DATA = "Stock Ag.", 
           MODIFY Screen1-Gd-1, X = 6, Y = 1, CELL-DATA = "PV HT", 
           MODIFY Screen1-Gd-1, X = 7, Y = 1, CELL-DATA = "Casier", 
      * Columns' Setting
           MODIFY Screen1-Gd-1, X = 1, COLUMN-COLOR = 2, 
           MODIFY Screen1-Gd-1, X = 2, COLUMN-COLOR = 2, 
           MODIFY Screen1-Gd-1, X = 3, COLUMN-COLOR = 2, 
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
      * Screen1-Pb-FlechB Link To
              WHEN Key-Status = 1001
                 PERFORM Screen1-Pb-FlechB-Link
      * Screen1-Pb-FlechH Link To
              WHEN Key-Status = 1002
                 PERFORM Screen1-Pb-FlechH-Link
      * Screen1-Pb-CATFOU Link To
              WHEN Key-Status = 9752
                 PERFORM Screen1-Pb-CATFOU-Link
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

      * MXGRAFAM

      * MXFAMART

      * RECH

      * RECHCMD

      * MXCATFOU

      * MXFOU

      * MXART2

      * MXARTSA

       Acu-Screen1-Exit.
           SET Exit-Pushed TO TRUE
           .


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
           WHEN Msg-Heading-Clicked
              PERFORM Screen1-Gd-1-Ev-Msg-Heading-Clicked
           END-EVALUATE
           .

       Screen1-Pb-Accept-Exception-Proc.
      * 
           IF Event-Occurred
              EVALUATE Event-Type
              WHEN Cmd-Clicked
                 PERFORM Screen1-Pb-Accept-Ex-Cmd-Clicked
              END-EVALUATE
           END-IF
           .
      ***   start event editor code   ***
           COPY "W:/MISTRAL/COPY/ENVMIS.CBL".
           COPY "W:/mx/copy/arrondi.cbl".
      **    COPY "W:/mx/copy/CRE-CATFOUK.cbl".
           Copy "W:/MISTRAL/COPY/rech-expression.cbl".
      **    COPY "W:/mx/copy/mep-artpref.cbl".
140319*     COPY "u:/mistral/copy/centrefenetre.cbl".
060819     COPY "W:/mistral/copy/MisCentrefenetre.cbl".

       OPEN-FILE-RTN.
           PERFORM OPEN-MXART
           IF CLI-PALM = 250624 
              OPEN I-O MXGRAFAM PERFORM STAT
              OPEN I-O MXFAMART PERFORM STAT
           END-IF.
           IF MXFWK-PALM = 1
              OPEN I-O MXART2 PERFORM STAT
           OPEN I-O MXCATFOU   PERFORM STAT.
           OPEN I-O MXFOU      PERFORM STAT.
301019     OPEN I-O MXARTSA    PERFORM STAT.

       OPEN-MXART.
           OPEN  INPUT MXART
           perform stat.




       CLOSE-FILE-RTN.
           CLOSE MXART
           IF CLI-PALM = 250624 
              CLOSE MXGRAFAM 
              CLOSE MXFAMART 
           END-IF.
           IF MXFWK-PALM = 1
              CLOSE MXART2
           END-IF
           CLOSE MXCATFOU MXFOU
301019           MXARTSA
           .

       Init-Grille.
           MOVE 0 TO W-NBR W-NBR-CTF
           MOVE SPACE TO TABLE-ART
           MOVE SPACE TO SV-RFN
            

240915* Recherche d'une désignation
           IF LK-SCODART-L-TST = 7 
                perform curseur-sablier
                PERFORM Rech-Designation
                perform curseur-fleche
                IF W-NBR = 0 
                   IF EXI-CATFOUK = 1
                      MOVE "Aucun article référencé correspondant"
                      to acu-msg-1
                      move
                      "Rechercher dans les catalogues fournisseurs ?"
                      to acu-msg-2
                      perform msg-on
                      if acu-return-value = 1
                         perform curseur-sablier
                         perform Rech-Designation-Catfou
                         perform curseur-fleche
                      end-if
                   end-if
                   if w-nbr-ctf = 0 
                      MOVE "Aucun article trouvé" to acu-msg-1
                      perform msg-info
                   end-if
                end-if
           END-IF.
240915
           IF LK-SCODART-L-TST NOT = 7
             IF SCA-MPAR = 1 AND LK-SCODART-L-IDF NOT = SPACE
                PERFORM RECH-CLE1
                PERFORM VERIF-ANREF THRU F-VERIF-ANREF
             ELSE 
                PERFORM RECH-LON-REF
                MOVE 0 TO TMP-9-3
                INSPECT LK-SCODART-L-REF TALLYING TMP-9-3 FOR ALL "*"
221015
      *          INSPECT LK-SCODART-L-REF TALLYING TMP-9-3 FOR ALL "/"
                IF LK-SCODART-L-REF(1:1) = "/" ADD 1 TO TMP-9-3
                END-IF
221015
                IF TMP-9-3 > 0 
                   perform curseur-sablier
                   PERFORM Rech-Reference                                
                   perform curseur-fleche
                END-IF
                PERFORM RECH-CLE5
                PERFORM RECH-CLE6
                PERFORM RECH-CLE7
                PERFORM RECH-CLE8
                PERFORM RECH-CLE9
                PERFORM VERIF-ANREF THRU F-VERIF-ANREF
                PERFORM RECH-ARTMA
                PERFORM RECH-ARTMA-GENCOD
                IF REQU-MPAR = 1 THEN
                   MOVE "E"   TO W-ORI
                   PERFORM RECH-EQUIV
                END-IF
020315* Substitutions
                MOVE "S" TO W-ORI
                PERFORM RECH-EQUIV
030119          IF NB-SUBST = 0
                   PERFORM RECH-SUBSTITUANT
030119          END-IF
             END-IF
           END-IF.

           IF RACF-MPAR NOT = 1 AND W-NBR = 0 AND LK-SCODART-L-RCF >= 1
           AND LK-SCODART-L-TST NOT = 7 AND EXI-CATFOUK = 1
              perform curseur-sablier
              PERFORM Rech-Reference-Catfou
              perform curseur-fleche
              MOVE 1 TO IND-CTF
           END-IF

      * Sortir immédiatement s'il n'y a rien dans la liste...
           IF W-NBR = 0 
           AND W-NBR-CTF = 0
               INITIALIZE LK-SCODART-L
                          REPLACING NUMERIC DATA BY ZEROS
                                    ALPHANUMERIC DATA BY SPACES
                                    ALPHABETIC DATA BY SPACES
               MOVE 0 TO LK-SCODART-L-EXI
               GO Acu-Exit-Rtn
           END-IF

      * Ne pas afficher de liste si un seul élément trouvé...
           IF W-NBR = 1     
           AND ((LK-SCODART-L-TST = 0 OR 3)
              OR (LK-SCODART-L-TST = 2 AND LK-SCODART-L-ART = SPACE))
              MOVE 1 TO LK-SCODART-L-EXI
              MOVE T-ART(1) TO LK-SCODART-L-ART
              IF IND-ANR = 1 AND LK-SCODART-L-AFF <> 3
                 MOVE " Référence Remplacée " TO ACU-MSG-1
                 PERFORM MSG-INFO
              END-IF
              IF T-ORI(1) = "M" AND LK-SCODART-L-AFF <> 3
                 MOVE " Référence Multi-Appro " TO ACU-MSG-1
                 PERFORM MSG-INFO
              END-IF
              perform Verif-Preferentiel
              GO Acu-Exit-Rtn
           END-IF

           MOVE 2 TO LK-SCODART-L-EXI.
           
       Mep-Un-Art.
           IF (CANN-MART = 1
240112         AND LK-SCODART-L-ANN = 0) | recherche article annulé pour ART-C 
           OR (LK-SCODART-L-LOC = 0 AND ILV-MART = 1)
           OR (LK-SCODART-L-LOC = 1 AND ILV-MART = 0)
           OR (LK-SCODART-L-VTE = 2 AND TAR-MART = 2)
           OR (LK-SCODART-L-VTE = 3 AND (TAR-MART = 2 OR WEB-MART = 1))
           OR (LK-SCODART-L-OCC = 1 AND NAT-MART = 2)
           OR (LK-SCODART-L-OCC = 2 AND NAT-MART NOT = 2)
               EXIT PARAGRAPH
           END-IF
      **     IF (LK-SCODART-L-LOC = 1)
      **         IF LK-SCODART-L-INO = 4 THEN
      **           CONTINUE
      **         ELSE
      **           IF (LK-SCODART-L-INO = 0 AND STR-MARL <> 0)
      **           OR (LK-SCODART-L-INO = 1 AND STR-MARL = 0)
      **           OR (LK-SCODART-L-INO = 2 AND STR-MARL = 2)
      **           OR (LK-SCODART-L-INO = 3 AND STR-MARL = 1)
      **               EXIT PARAGRAPH
      **           END-IF
      **         END-IF
      **     END-IF

           PERFORM MAJ-TABLE THRU F-MAJ-TABLE
           IF W-OK = 0
              EXIT PARAGRAPH
           END-IF.

           ADD 1 TO W-NBR
           .
       Remp-Grille.
           IF W-NBR > 50 
              modify Screen1-Bt-Attente, visible 1
           end-if
      * avant ajout casier : DISPLAY-COLUMNS (1, 23, 26, 73, 81, 89, 100), 
      * aprés ajout casier : DISPLAY-COLUMNS (1, 23, 26, 73, 81, 89, 99, 107), 

      * Remise à zéro de la grille...
           MODIFY Screen1-Gd-1, MASS-UPDATE = 1, RESET-GRID = 1
           IF LK-SCODART-L-AFF = 0 
      *       Désignation seule
              MODIFY Screen1-Gd-1, 
                 DISPLAY-COLUMNS (1, 23, 26, 126, 126, 126), 
           END-IF                                                      
           IF LK-SCODART-L-AFF NOT = 0 
           AND LK-SCODART-L-AGE = SPACE
      *       Désignation et stock agence
              MODIFY Screen1-Gd-1, 
                 DISPLAY-COLUMNS (1, 23, 26, 73, 85, 85), 
           END-IF
           IF LK-SCODART-L-AFF NOT = 0 
           AND AFLA-MPAR = 1 | affichage PV
301019        IF LK-SCODART-L-AGE = SPACE   
      *          Désignation et prix de vente
                 MODIFY Screen1-Gd-1, 
                    DISPLAY-COLUMNS (1, 23, 26, 85, 85, 85), 
301019              
              ELSE
      *          Désignation prix de vente casier
                 MODIFY Screen1-Gd-1, 
                    DISPLAY-COLUMNS (1, 23, 26, 85, 85, 85, 95), 
              END-IF
301019
           END-IF
           IF LK-SCODART-L-AFF NOT = 0         
           AND AFLA-MPAR = 2 | affichage stock société
           AND LK-SCODART-L-AGE = SPACE
      *       Désignation stock société et prix de vente
              MODIFY Screen1-Gd-1, 
                 DISPLAY-COLUMNS (1, 23, 26, 73, 85, 85), 
           END-IF
           IF LK-SCODART-L-AFF NOT = 0         
           AND AFLA-MPAR = 2 | affichage stock agence + société
           AND LK-SCODART-L-AGE NOT = SPACE
      *       Désignation stock société stock agence prix de vente et casier
              MODIFY Screen1-Gd-1, 
301019*           DISPLAY-COLUMNS (1, 23, 26, 73, 85, 118), 
201219*           DISPLAY-COLUMNS (1, 23, 26, 73, 85, 85, 95), 
201219           DISPLAY-COLUMNS (1, 23, 26, 73, 81, 89, 99, 107), 
           END-IF

           PERFORM Acu-Screen1-Gd-1-Content
           IF LK-SCODART-L-AFF <> 0 AND LK-SCODART-L-CLI <> 0
              MODIFY Screen1-Gd-1, X = 6, Y = 1, 
                 CELL-DATA = "PV Net Client", 
           END-IF
           IF CLI-PALM = 250624                     | Bertet Musique
              MODIFY Screen1-Gd-1, X = 6, Y = 1, 
                 CELL-DATA = "PV TTC", 
           END-IF
           IF LK-SCODART-L-AFF NOT = 0 
           AND LK-SCODART-L-AGE = SPACE
              IF LCO-MPAR = 1 
                 MODIFY Screen1-Gd-1, X = 4, Y = 1, 
                 CELL-DATA = "Stock Groupe", 
              ELSE  
                 MODIFY Screen1-Gd-1, X = 4, Y = 1, 
                 CELL-DATA = "Stock Soc.", 
              END-IF
           END-IF
           IF LK-SCODART-L-MOD =  "W" 
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

      * Remplissage de la grille...
           MOVE 2 TO Screen1-Gd-1-Cursor-Y-Old
           MOVE SPACES TO Screen1-Gd-1-COD
           MOVE 1 TO Tmp-9-3

           PERFORM VARYING J FROM 1 BY 1 UNTIL J > 500
                   OR T-ART(J) = SPACE
              MOVE T-ART(J) TO COD-MART
              READ MXART NOT INVALID PERFORM Move-Mart
              END-READ
              PERFORM STAT 
           END-PERFORM
                         
           IF W-NBR-CTF > 0 PERFORM Lect-Rech
           END-IF   

           IF TMP-9-3 >= 500
              MODIFY Screen1-Fr-100, VISIBLE 1
              modify Screen1-Gd-1, LINES 15,62
280917     ELSE
              MOVE 0   TO W-KEY-NUM-GD1
              MOVE "A" TO W-KEY-ORDER-GD1
              MODIFY Screen1-Gd-1(1, 1),
                 BITMAP TRIERAD10-JPG
                 BITMAP-TRAILING 1
              MODIFY Screen1-Gd-1(1, 3),
                 BITMAP TRIERAD10-JPG
           END-IF
      * Positionnement du curseur sur la grille...
           MODIFY Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old),
                  CURSOR-Y = Screen1-Gd-1-Cursor-Y-Old,
                  ROW-COLOR = W-Row-Hight-Color,
                  MASS-UPDATE = 0

      * Patch : sans ça, la grille peut parfois mélanger les lignes...
           MOVE SPACES TO Screen1-Gd-1-Record
           IF W-NBR > 50 
              modify Screen1-Bt-Attente, visible 0
           end-if
           .
       Move-Mart.
           ADD 1 TO Tmp-9-3
           MOVE COD-MART TO Screen1-Gd-1-COD
           MOVE DES-MART TO Screen1-Gd-1-LIB
           MOVE T-ORI(J) TO Screen1-Gd-1-ORI
111016
      **     PERFORM MEP-ARTPREF
      **     IF EXI-ARTPREF = 2
      **        MOVE "P" TO Screen1-Gd-1-ORI 
      **     END-IF
111016
           IF LK-SCODART-L-AFF <> 0  
              
301019
              IF LK-SCODART-L-AGE <> SPACE THEN
                 INITIALIZE ENR-MASA
                 MOVE COD-MART TO COD-MASA
                 MOVE LK-SCODART-L-AGE TO AGE-MASA

                 READ MXARTSA

                 PERFORM STAT

                 MOVE CAS-MASA TO Screen1-Gd-1-CAS
              END-IF
              PERFORM Remp-Prix
301019
           END-IF
           MODIFY Screen1-Gd-1,
                  RECORD-TO-ADD = Screen1-Gd-1-Record   
      * ordre: occasion, interdit, interdit achat    
           if nat-mart = 2
              MODIFY Screen1-Gd-1(Tmp-9-3, 3), 
                 bitmap OCCASIO16-bmp, bitmap-trailing = 1
280917           HIDDEN-DATA "O"
           end-if
           if ACHI-mart = 1
              MODIFY Screen1-Gd-1(Tmp-9-3, 3), 
                 bitmap ACHAINT16-bmp, bitmap-trailing = 1
280917           HIDDEN-DATA "A"
           end-if
           if TAR-mart = 2
              MODIFY Screen1-Gd-1(Tmp-9-3, 3), 
                 bitmap INTERDI16-BMP, bitmap-trailing = 1
280917           HIDDEN-DATA "I"
           end-if
111016* gestion article préférentiel Fenwick (article avec IDF = "LFR")
      **     IF EXI-ARTPREF = 1
      **        MODIFY Screen1-Gd-1(Tmp-9-3, 1), 
      **           bitmap PREFNON16-bmp 
280917**           HIDDEN-DATA "N"
      **     end-if
      **     IF EXI-ARTPREF = 2
      **        MODIFY Screen1-Gd-1(Tmp-9-3, 1), 
      **           bitmap PREFOUI16-bmp 
280917**           HIDDEN-DATA "O"
      **     end-if
           .

280917 Mep-Fleches-Gd-1.
      *----------------*
           IF W-KEY-ORDER-GD1 = "A" THEN
              MODIFY Screen1-Gd-1(1, 1),
                 BITMAP TRIERAD10-JPG
                 BITMAP-TRAILING 1
              MODIFY Screen1-Gd-1(1, 3),
                 BITMAP TRIERAD10-JPG
                 BITMAP-TRAILING 1
              MODIFY Screen1-Gd-1(1, W-KEY-NUM-GD1),
                 BITMAP TRIERAE10-JPG
                 BITMAP-TRAILING 1
           ELSE
              MODIFY Screen1-Gd-1(1, 1),
                 BITMAP TRIERDD10-JPG
                 BITMAP-TRAILING 1
              MODIFY Screen1-Gd-1(1, 3),
                 BITMAP TRIERDD10-JPG
                 BITMAP-TRAILING 1
              MODIFY Screen1-Gd-1(1, W-KEY-NUM-GD1),
                 BITMAP TRIERDE10-JPG
                 BITMAP-TRAILING 1
           END-IF
           .

280917 Screen1-Gd-1-Ev-Msg-Heading-Clicked.
      *-----------------------------------*
           IF TMP-9-3 > 500 
           OR ( Event-Data-1 <> 1
                         AND <> 3 ) THEN
              EXIT PARAGRAPH
           END-IF

           IF Event-Data-1 = W-KEY-NUM-GD1 THEN

              IF W-KEY-ORDER-GD1 = "A" THEN
                 MOVE "D" TO W-KEY-ORDER-GD1
              ELSE
                 MOVE "A" TO W-KEY-ORDER-GD1
              END-IF

           ELSE
              MOVE Event-Data-1 TO W-KEY-NUM-GD1
           END-IF

           COPY "W:/mistral/copy/Gd-SortH.cbl" REPLACING 
              ==CPYSRT-GRD== BY ==Screen1-Gd-1==
              ==CPYSRT-ROW== BY ==1==
              ==CPYSRT-KEY== BY ==W-KEY-NUM-GD1==
              ==CPYSRT-ORD== BY ==W-KEY-ORDER-GD1==
              ==CPYSRT-PROC== BY ==Tri-Ligne-Gd1==.

           PERFORM  Mep-Fleches-Gd-1
           .

280917 Tri-Ligne-Gd1.
      *-------------* Déplace la valeur hidden et le bitmap de Screen1-Gd-1
           INQUIRE Screen1-Gd-1(Gd-Sort-I, 3),
              HIDDEN-DATA IN Gd-Sort-Swap-I
           INQUIRE Screen1-Gd-1(Gd-Sort-K, 3),
              HIDDEN-DATA IN Gd-Sort-Swap-J
           MODIFY Screen1-Gd-1(Gd-Sort-I, 3),
              HIDDEN-DATA Gd-Sort-Swap-J

           MOVE Gd-Sort-I      TO W-Y
           MOVE Gd-Sort-Swap-J TO W-ETA
           PERFORM Mep-ETA

           MODIFY Screen1-Gd-1(Gd-Sort-K, 3),
              HIDDEN-DATA Gd-Sort-Swap-I

           MOVE Gd-Sort-K      TO W-Y
           MOVE Gd-Sort-Swap-I TO W-ETA
           PERFORM Mep-ETA

           INQUIRE Screen1-Gd-1(Gd-Sort-I, 1),
              HIDDEN-DATA IN Gd-Sort-Swap-I
           INQUIRE Screen1-Gd-1(Gd-Sort-K, 1),
              HIDDEN-DATA IN Gd-Sort-Swap-J
           MODIFY Screen1-Gd-1(Gd-Sort-I, 1),
              HIDDEN-DATA Gd-Sort-Swap-J

           MOVE Gd-Sort-I      TO W-Y
           MOVE Gd-Sort-Swap-J TO W-ETA
           PERFORM Mep-EXI

           MODIFY Screen1-Gd-1(Gd-Sort-K, 1),
              HIDDEN-DATA Gd-Sort-Swap-I
           MOVE Gd-Sort-K      TO W-Y
           MOVE Gd-Sort-Swap-I TO W-ETA
           PERFORM Mep-EXI
           .

280917 Mep-ETA.
      *-------*
           EVALUATE W-ETA
           WHEN "O"
               Modify Screen1-Gd-1(W-Y, 3), 
                  Bitmap OCCASIO16-bmp
           WHEN "A"
               Modify Screen1-Gd-1(W-Y, 3), 
                  Bitmap ACHAINT16-bmp
           WHEN "I"
               Modify Screen1-Gd-1(W-Y, 3), 
                  Bitmap INTERDI16-BMP
           WHEN OTHER
               Modify Screen1-Gd-1(W-Y, 3), 
                  Bitmap NULL
           END-EVALUATE
           .

280917 Mep-EXI.
      *-------*
           EVALUATE W-ETA
           WHEN "N"
               Modify Screen1-Gd-1(W-Y, 1), 
                  Bitmap PREFNON16-bmp 
           WHEN "O"
               Modify Screen1-Gd-1(W-Y, 1), 
                  Bitmap PREFOUI16-bmp
           WHEN OTHER
               Modify Screen1-Gd-1(W-Y, 1), 
                  Bitmap NULL
           END-EVALUATE
           .

       Rech-Lon-Ref.
           PERFORM VARYING Z-LONG FROM 16 BY -1 UNTIL Z-LONG = 1
                   OR LK-SCODART-L-REF(Z-LONG:1) NOT = SPACE
               CONTINUE
           END-PERFORM.
           
       Rech-Cle1.
      *-------- accès par code article avec identifiant (CLE 1)
           IF LK-SCODART-L-TST = 1 OR 2
               EXIT PARAGRAPH
           END-IF
           INITIALIZE ENR-MART W-ORI
           MOVE LK-SCODART-L-IDF TO CO1-MART
           MOVE LK-SCODART-L-REF TO CO2-MART
           MOVE 0 TO W-EOF
           READ MXART INVALID MOVE 1 TO W-EOF.
           PERFORM STAT
           IF W-EOF NOT = 1
               PERFORM MEP-UN-ART
               IF W-OK = 1 AND SV-RFN = SPACES MOVE RFN-MART TO SV-RFN
               END-IF
           END-IF.
       
       Rech-Cle5.
      *-------- accès par code article sans identifiant (CLE 5)
           IF LK-SCODART-L-TST = 1 OR 2
               EXIT PARAGRAPH
           END-IF
           INITIALIZE ENR-MART W-ORI
           MOVE LK-SCODART-L-REF TO CO2-MART
           MOVE 0 TO W-EOF
           START MXART KEY NOT < CLE5-MART INVALID MOVE 1 TO W-EOF.
           IF W-EOF = 0
               READ MXART NEXT END MOVE 1 TO W-EOF
               END-READ
               PERFORM STAT
           END-IF
           PERFORM UNTIL W-EOF = 1
           OR (LK-SCODART-L-TST NOT = 3
               AND LK-SCODART-L-REF NOT = CO2-MART)
           OR (LK-SCODART-L-TST = 3
               AND LK-SCODART-L-REF(1:Z-LONG) NOT = CO2-MART(1:Z-LONG))
               PERFORM MEP-UN-ART
               IF W-OK = 1 AND SV-RFN = SPACES MOVE RFN-MART TO SV-RFN
               END-IF
               READ MXART NEXT END MOVE 1 TO W-EOF
               END-READ
               PERFORM STAT
           END-PERFORM.
           
       Rech-Cle6.
      *-------- accès par le code interne
           IF LK-SCODART-L-TST = 2
310113     OR Z-LONG > 8 THEN | plus de 8 car -> pas de recherche
               EXIT PARAGRAPH
           END-IF

           INITIALIZE ENR-MART W-ORI
280308     MOVE "I" TO W-ORI
           MOVE 0 TO W-EOF
                     W-RFIN
           MOVE LK-SCODART-L-REF TO RFI-MART
021007     
           IF RFIA-MPAR = 1 THEN
              MOVE 0 TO I
              INSPECT LK-SCODART-L-REF TALLYING I 
                 FOR CHARACTERS BEFORE SPACE

              IF  I <> 0 
              AND LK-SCODART-L-REF(1:I) NUMERIC THEN
                 MOVE LK-SCODART-L-REF(1:I) TO RFIN-MART
                                               W-RFIN
              END-IF

           END-IF
021007     
           START MXART KEY NOT < CLE6-MART INVALID MOVE 1 TO W-EOF.
           IF W-EOF = 0 
              READ MXART NEXT END MOVE 1 TO W-EOF
              END-READ
              PERFORM STAT
           END-IF
           PERFORM UNTIL W-EOF = 1
021007     OR (     W-RFIN = 0
                AND LK-SCODART-L-REF NOT = RFI-MART )
021007     OR (     W-RFIN <> 0
021007          AND RFIN-MART <> W-RFIN )
               PERFORM Mep-Un-Art
               READ MXART NEXT END MOVE 1 TO W-EOF
               END-READ
               PERFORM STAT
           END-PERFORM.
           
       Rech-Cle7.
      *-------- accès par référence normalisée
      *  Si accès par le code article (LK-SCODART-L-TST = 0), recherche
      *  des articles ayant la même référence normalisée que l'article
      *  recherché

           IF (LK-SCODART-L-TST NOT = 0 AND LK-SCODART-L-TST NOT = 2)
      *     OR (LK-SCODART-L-TST = 0 AND SV-RFN = SPACES)
              EXIT PARAGRAPH
           END-IF

      *     INITIALIZE ENR-MART
      *     IF LK-SCODART-L-TST = 0 MOVE "N" TO W-ORI
      *     END-IF
      *     MOVE 0 TO W-EOF
      *     IF LK-SCODART-L-TST = 0
      *          MOVE SV-RFN TO RFN-MART
      *     ELSE MOVE LK-SCODART-L-REF TO RFN-MART
      *     END-IF
      *     START MXART KEY NOT < CLE7-MART INVALID MOVE 1 TO W-EOF.
      *     IF W-EOF = 0 
      *        READ MXART NEXT END MOVE 1 TO W-EOF
      *        END-READ
      *        PERFORM STAT
      *     END-IF
      *     PERFORM UNTIL W-EOF = 1
      *     OR (LK-SCODART-L-TST = 2 AND LK-SCODART-L-REF NOT = RFN-MART)
      *     OR (LK-SCODART-L-TST = 0 AND SV-RFN NOT = RFN-MART)
      *         IF COD-MART NOT= LK-SCODART-L-ART
      *             PERFORM Mep-Un-Art
      *         END-IF
      *         READ MXART NEXT END MOVE 1 TO W-EOF
      *         END-READ
      *         PERFORM STAT
      *     END-PERFORM.

           IF LK-SCODART-L-TST = 0 AND SV-RFN <> SPACE
              INITIALIZE ENR-MART
              MOVE "N" TO W-ORI
              MOVE 0 TO W-EOF
              MOVE SV-RFN TO RFN-MART
              START MXART KEY NOT < CLE7-MART INVALID MOVE 1 TO W-EOF
              END-START
              IF W-EOF = 0 
                 READ MXART NEXT END MOVE 1 TO W-EOF
                 END-READ
                 PERFORM STAT
              END-IF
              PERFORM UNTIL W-EOF = 1 OR SV-RFN NOT = RFN-MART
                 PERFORM Mep-Un-Art
                 READ MXART NEXT END MOVE 1 TO W-EOF
                 END-READ
                 PERFORM STAT
              END-PERFORM
           END-IF.     

           IF LK-SCODART-L-REF <> SPACE
              INITIALIZE ENR-MART
140610        MOVE "N" TO W-ORI
              MOVE 0 TO W-EOF
              MOVE LK-SCODART-L-REF TO RFN-MART
              START MXART KEY NOT < CLE7-MART INVALID MOVE 1 TO W-EOF
              END-START
              IF W-EOF = 0 
                 READ MXART NEXT END MOVE 1 TO W-EOF
                 END-READ
                 PERFORM STAT
              END-IF
              PERFORM UNTIL W-EOF = 1
              OR LK-SCODART-L-REF NOT = RFN-MART
                 IF COD-MART NOT= LK-SCODART-L-ART
                    PERFORM Mep-Un-Art
                 END-IF
                 READ MXART NEXT END MOVE 1 TO W-EOF
                 END-READ
                 PERFORM STAT
              END-PERFORM
           END-IF.
           
       Rech-Cle8.
      *-------- accès par référence fournisseur
           IF LK-SCODART-L-TST = 1 OR 2
               EXIT PARAGRAPH
           END-IF

           INITIALIZE ENR-MART W-ORI
           MOVE 0 TO W-EOF
           MOVE LK-SCODART-L-REF TO REF-MART
           START MXART KEY NOT < CLE8-MART INVALID MOVE 1 TO W-EOF.
           IF W-EOF = 0 
              READ MXART NEXT END MOVE 1 TO W-EOF
              END-READ
              PERFORM STAT
           END-IF
           PERFORM UNTIL W-EOF = 1
           OR (LK-SCODART-L-TST NOT = 3
               AND LK-SCODART-L-REF NOT = REF-MART)
           OR (LK-SCODART-L-TST = 3
               AND LK-SCODART-L-REF(1:Z-LONG) NOT = REF-MART(1:Z-LONG))
               PERFORM MEP-UN-ART
               READ MXART NEXT END MOVE 1 TO W-EOF
               END-READ
               PERFORM STAT
           END-PERFORM.
           
       Rech-Cle9.
      *-------- accès par le gencod
      * modif Nath le 28/06 car ne prend pas les codes sur 12 chiffres
      * (la saisie enlève les 0 devant donc il faut le gérer en numérique)

           IF LK-SCODART-L-TST = 2
               EXIT PARAGRAPH
           END-IF
280607     IF |LK-SCODART-L-REF(1:13) NUMERIC AND 
              LK-SCODART-L-REF(14:) = SPACE 
              CONTINUE
           ELSE 
              EXIT PARAGRAPH
           END-IF
           INITIALIZE ENR-MART W-ORI
           MOVE 0 TO W-EOF W-GCOD
280607*     MOVE LK-SCODART-L-REF(1:13) TO CLE9-MART
100907*     MOVE FUNCTION NUMVAL(LK-SCODART-L-REF) TO GCOD-MART Pb Java : renvoit systèmatiquement 0 aprés impression...
100907     
           MOVE 0 TO I
           INSPECT LK-SCODART-L-REF TALLYING I 
              FOR CHARACTERS BEFORE SPACE

           IF I = 0 
           OR LK-SCODART-L-REF(1:I) NOT NUMERIC THEN
              MOVE 0 TO GCOD-MART W-GCOD
           ELSE
              MOVE LK-SCODART-L-REF(1:I) TO GCOD-MART
                                            W-GCOD
           END-IF

040707     IF GCOD-MART = 0 THEN
              EXIT PARAGRAPH
040707     END-IF
           MOVE ZERO TO NB-GCOD
           START MXART KEY NOT < CLE9-MART INVALID MOVE 1 TO W-EOF.
           IF W-EOF = 0 
              READ MXART NEXT END MOVE 1 TO W-EOF
              END-READ
              PERFORM STAT
           END-IF
           PERFORM UNTIL W-EOF = 1 OR GCOD-MART <> W-GCOD 
               PERFORM Mep-Un-Art
               IF W-OK = 1 ADD 1 TO NB-GCOD END-IF
               READ MXART NEXT END MOVE 1 TO W-EOF
               END-READ
               PERFORM STAT
           END-PERFORM.
      **     IF NB-GCOD = 0 AND W-GCOD <> 0
      **        IF WG-ART <> SPACES
      **           PERFORM Mep-Un-Art.

           
       Rech-Artma.

090707
       Rech-Artma-Gencod.

       Verif-Anref.
 
       F-Verif-Anref.

       TRAIT-MXANREF.      
       F-TRAIT-MXANREF.
           EXIT.


       MAJ-TABLE.
           MOVE 0 TO J MOVE 1 TO W-OK.
       BCL-TABLE.
           ADD 1 TO J.
           IF J > 500 GO F-MAJ-TABLE.
           IF T-ART(J) = SPACE MOVE COD-MART TO T-ART(J)
                               MOVE W-ORI TO T-ORI(J)
                               GO F-MAJ-TABLE.



           IF COD-MART = T-ART(J) MOVE 0 TO W-OK GO F-MAJ-TABLE.
           GO BCL-TABLE.
       F-MAJ-TABLE.
           EXIT.
           .
       Screen1-AfterInitData.
140319*   
      *     IF LK-SCODART-L-HANDLE <> 0 THEN
      *        MOVE LK-SCODART-L-HANDLE TO WCF-HANDLE-FP
      *        PERFORM CentreFenetre
      *     END-IF
140319*
060819     PERFORM MisCentreFenetreScreen1F

           IF LK-SCODART-L-AFF = 2 OR 3 
              MODIFY Screen1-Pb-Accept, VISIBLE 0
           END-IF
           IF W-VIS-TACT = 1
051216*        MODIFY Screen1-Pb-Accept, LINES 30, SIZE 30, COL 97,14
051216        MODIFY Screen1-Pb-Accept, LINES 32, SIZE 32, COL 97,14
051216           BITMAP-HANDLE VALIDER32-JPG
051216*        MODIFY Screen1-Pb-Cancel, LINES 30, SIZE 30, COL 91,57
           END-IF             
           IF (LK-SCODART-L-TST  = 7 
               OR (LK-SCODART-L-RCF >= 0 AND IND-CTF = 0))
           AND EXI-CATFOUK = 1          
              MODIFY Screen1-Pb-CATFOU, VISIBLE 1
              MODIFY Screen1-La-CATFOU, VISIBLE 1
           END-IF
           PERFORM Remp-Grille
           .
       Screen1-Gd-1-Ev-Msg-Begin-Entry.
           INQUIRE Screen1-Gd-1(Event-Data-2, 1),
                   CELL-DATA IN LK-SCODART-L-ART
           INQUIRE Screen1-Gd-1(Event-Data-2, 3),
                   CELL-DATA IN LK-SCODART-L-DES
           INQUIRE Screen1-Gd-1(Event-Data-2, 2),
                   CELL-DATA IN W-ORI
           MOVE 0 TO W-CRE
           IF W-ORI = "C" AND (LK-SCODART-L-RCF = 2 OR 3 OR 4)
              MOVE LK-SCODART-L-ART TO REF-MCTF
301019*        INQUIRE Screen1-Gd-1(Event-Data-2, 7),
301019        INQUIRE Screen1-Gd-1(Event-Data-2, 8),
                   CELL-DATA IN FOU-MCTF
              MOVE 1 TO W-CRE
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
      *
      *     IF Event-Data-1 > 2 THEN
      *         PERFORM Mistral-TransferFocus
      *     END-IF

      * Pour voir si on a changé de ligne
           IF NOT Event-Data-2 = Screen1-Gd-1-Cursor-Y-Old THEN
               MODIFY Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old),
                      ROW-COLOR = 0
               MODIFY Screen1-Gd-1(Event-Data-2),
                      ROW-COLOR = W-Row-Hight-Color
           END-IF

           MOVE Event-Data-2 TO Screen1-Gd-1-Cursor-Y-Old
           .

      *
       Screen1-Pb-FlechB-Link.
           MOVE Screen1-Gd-1-Cursor-Y-Old TO Event-Data-2
           IF Event-Data-2 NOT < Tmp-9-3
              EXIT PARAGRAPH
           END-IF
           ADD 1 TO Event-Data-2
           PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
           MODIFY Screen1-Gd-1, CURSOR-Y = Screen1-Gd-1-Cursor-Y-Old
           .
      *
       Screen1-Pb-FlechH-Link.
           MOVE Screen1-Gd-1-Cursor-Y-Old TO Event-Data-2
           IF Event-Data-2 NOT > 2
              EXIT PARAGRAPH
           END-IF
           ADD -1 TO Event-Data-2
           PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell           
           MODIFY Screen1-Gd-1, CURSOR-Y = Screen1-Gd-1-Cursor-Y-Old
           .

       Screen1-Pb-Accept-Ex-Cmd-Clicked.
           INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old, 1),
                   CELL-DATA IN LK-SCODART-L-ART
           INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old, 3),
                   CELL-DATA IN LK-SCODART-L-DES 
           INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old, 2),
                   CELL-DATA IN W-ORI
           MOVE 0 TO W-CRE
           IF W-ORI = "C" AND (LK-SCODART-L-RCF = 2 OR 3 OR 4)
              MOVE LK-SCODART-L-ART TO REF-MCTF
301019*        INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old, 7),
301019        INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old, 8),
                   CELL-DATA IN FOU-MCTF
              MOVE 1 TO W-CRE
           END-IF  
           perform Verif-Preferentiel
           PERFORM Mistral-CloseCurrentWindow
           .
       Screen1-Pb-Cancel-Ex-Cmd-Clicked.
           MOVE 0 TO W-CRE
           PERFORM Mistral-CloseCurrentWindow
           .
       Screen1-Ev-Cmd-Close.
           PERFORM Mistral-WindowClosing
           .

111016* gestion article préférentiel Fenwick (article avec IDF = "LFR")
       Verif-Preferentiel.
           IF W-CRE = 0 
           AND LK-SCODART-L-PREF = 1
              continue
           else
              exit paragraph
           end-if   
           move LK-SCODART-L-ART to cod-mart
      ****    perform mep-artpref
      **     if exi-artpref NOT = 1
      **        EXIT PARAGRAPH
      **     END-IF

      **     string 
      **     "Voulez-vous substituer cet article par son équivalent" 
      **     " " CO2-ARTPREF " ?" delimited by "   " into acu-msg-1
      **     perform msg-on
      **     if acu-return-value = 2
      **        exit paragraph
      **     end-if   
      **     move cod-mart2 to LK-SCODART-L-ART
      **     move des-mart2 to LK-SCODART-L-DES.
           .

       Screen1-BeforeCreate.
           perform controle-call
           PERFORM Open-File-Rtn
           
      **    COPY "W:/mx/copy/lect-specifique.cbl".

           | vérif création article
      **     IF MOB-PALM = 0
      **        MOVE 25 TO LOG-PALM2
      **        MOVE 10 TO NPR-PALM2
      **        MOVE IDE-PALM TO IDE-PALM2
      **        CALL "../../mistral/o/verifacc.acu" USING ZONE-PALM
      **        CANCEL "../../mistral/o/verifacc.acu"
      **        IF CREAT-PALM2 = "X" MOVE "X" TO AUTO-CREART
      **        ELSE
      **          IF EXEC-PALM2 = "X" MOVE "X" TO AUTO-CREART
      **          END-IF
      **        END-IF
      **     END-IF.

           MOVE 1 TO FIC-RECHERCHE

           IF (LK-SCODART-L-REF = SPACE AND LK-SCODART-L-TST <> 7)
           OR (LK-SCODART-L-DES = SPACE AND LK-SCODART-L-TST = 7)
                 GO Acu-Exit-Rtn
           END-IF


           OPEN INPUT MXPARAM
           PERFORM STAT
           MOVE 1 TO W-MXPARAM
           READ MXPARAM 
           END-READ
           PERFORM STAT

           IF LK-SCODART-L-TST = 7
           OR RACF-MPAR NOT = 1
              PERFORM TEST-EXI-CATFOUK
           END-IF
        
           CLOSE MXPARAM

                   
           IF LK-SCODART-L-AFF = 2 OR 3
              MOVE 1 TO REQU-MPAR
           END-IF
           PERFORM INIT-GRILLE

           IF LK-SCODART-L-AFF = 3
              MOVE W-NBR TO LK-SCODART-L-NBR
              GO ACU-EXIT-RTN
           END-IF

           IF TACTIL-PALM = "t"
                MOVE 1 TO W-VIS-TACT
           ELSE MOVE 0 TO W-VIS-TACT.
           IF W-VIS-TACT = 0
301019*        MOVE 101,71 TO W-SCREEN1-SIZE.
301019        MOVE 108 TO W-SCREEN1-SIZE.
           .
      *
       Screen1-Aft-Routine.
           PERFORM Close-File-Rtn
      *     IF LK-SCODART-L-AFF <> 0 
      *        CANCEL "calpvart.acu"
      *     END-IF
           IF W-CRE = 1
              PERFORM TRAIT-ART-CTF
           END-IF
           .

       RECH-EQUIV.
           .
030119*-- Si article "substituant" avec stock --> on prend
       RECH-SUBSTITUANT.
           .

       Remp-Prix.
      *     INITIALIZE LK-CALPVART
      *     MOVE COD-MART TO LK-CALPVART-ART
      *     MOVE LK-SCODART-L-CLI TO LK-CALPVART-CLI
      *     MOVE LK-SCODART-L-AGE TO LK-CALPVART-AGE
      *     MOVE LK-SCODART-L-TCC TO LK-CALPVART-TCC
      *     MOVE LK-SCODART-L-MOD TO LK-CALPVART-MOD
      *     CALL "calpvart.acu" USING ZONE-PALM LK-CALPVART
           move pvt-mart to LK-CALPVART-PVNCLI
           MOVE LK-CALPVART-PVNCLI TO W-PVCLI
071114*     IF CLI-PALM = 250624 AND LK-CALPVART-PVNCLI <> PVT-MART   affichait le TTC sinon !
      *        PERFORM CAL-TTC-ART
      *        MOVE W-TTC TO W-PVCLI
      *     ELSE
      *        MOVE TTC-MART TO W-PVCLI
      *     END-IF.
      *     IF CLI-PALM = 250624 
      *        IF LK-CALPVART-PVNCLI <> PVT-MART     | Si Bertet Musique on affiche le TTC
      *           PERFORM CAL-TTC-ART
      *           MOVE W-TTC TO W-PVCLI
      *        ELSE
      *           MOVE TTC-MART TO W-PVCLI
      *        END-IF
      *     END-IF.
           MOVE W-PVCLI TO D72
           MOVE D72 TO Screen1-Gd-1-PVT
           MOVE QSTM-MASA(1) TO W-STG
           MOVE STC-MASA TO W-STS
250419     IF INO-MART = 1 OR 2 MOVE 0 TO W-STG W-STS
250419     END-IF
           MOVE W-STG TO W-HEU
           IF W-HEU2 = 0 
              MOVE W-STG TO D50S 
              MOVE D50S TO SCREEN1-GD-1-STG
           ELSE   
              MOVE W-STG TO D52S 
              MOVE D52S TO SCREEN1-GD-1-STG
           END-IF
            MOVE W-STS TO W-HEU
           IF W-HEU2 = 0 
              MOVE W-STS TO D50S 
              MOVE D50S TO SCREEN1-GD-1-STS
           ELSE   
              MOVE W-STS TO D52S 
              MOVE D52S TO SCREEN1-GD-1-STS
           END-IF.

       RECH-DECO.
       F-RECH-DECO.
      
      
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
               MOVE W-PVCLI  TO PRIARR
               MOVE TVA-MFAM TO TVAARR
               PERFORM D-CALCUL-ARRONDI THRU F-CALCUL-ARRONDI
               MOVE TTCARR TO W-TTC
           ELSE
              MOVE PVT-MART TO W-TTC
              IF TVA-MFAM NOT = ZERO
                 COMPUTE W-TTC ROUNDED =
                 PVT-MART + ( PVT-MART * TVA-MPAR(TVA-MFAM) / 100).

      ******************************************************************
      *    Recherche dans CATFOUK ou dans RECH avec egrep 
      *
       Rech-Reference-Catfou.
           MOVE SPACE TO COMMANDE FICRECH FICRESULT
                         TMP-FILE-PROCESS2

           EVALUATE FIC-RECHERCHE
           WHEN 1
              COPY "W:/mx/copy/Assign-FICTMP.cbl" REPLACING 
                 ==FICTMP==   BY ==RECH==
                 =='FICTMP'== BY ==RECH==.
              CLOSE RECH
              STRING MXCATFOU-COB "K" DELIMITED BY " " INTO FICRECH
              MOVE ASSIGN-RECH TO FICRESULT
           WHEN 2
               MOVE ASSIGN-RECH TO FICRECH
              STRING ASSIGN-RECH "R" DELIMITED BY " " INTO FICRESULT  
           END-EVALUATE
           
           MOVE "egrep '" TO DEB-CMD
           MOVE " 2>/dev/null" TO FIN-CMD
           MOVE " '" TO GUILLEMET
           
           MOVE 0 TO K TMP-9-3
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 16
              IF LK-SCODART-L-REF(I:1) = " "
                 MOVE 17 TO I EXIT PERFORM CYCLE
              END-IF
              IF LK-SCODART-L-REF(I:1) NOT = "*"                        | pas *
                 ADD 1 TO K
                 MOVE LK-SCODART-L-REF(I:1) TO TMP-FILE-PROCESS2(K:1)
                 EXIT PERFORM CYCLE
              END-IF
              IF I = 1                                                  | * au début
                 ADD 1 TO K
                 MOVE ".*" TO TMP-FILE-PROCESS2(K:2)
                 ADD 1 TO K
                 EXIT PERFORM CYCLE
              END-IF     
              IF LK-SCODART-L-REF(I + 1:1) = " "                        | * à la fin
                 ADD 1 TO K
                 MOVE ".*" TO TMP-FILE-PROCESS2(K:2)
                 ADD 1 TO K
                 MOVE "'" TO GUILLEMET
                 EXIT PERFORM CYCLE
              END-IF
              IF TMP-9-3 < 2                                            | 1ère étoile au milieu
                 ADD 1 TO K
                 MOVE ".*" TO TMP-FILE-PROCESS2(K:2)
                 ADD 1 TO K
                 ADD 1 TO TMP-9-3
                 EXIT PERFORM CYCLE
              END-IF
           END-PERFORM

           EVALUATE FIC-RECHERCHE
           WHEN 1
              STRING DEB-CMD "^......" TMP-FILE-PROCESS2 GUILLEMET
                  " " FICRECH
                  " >" FICRESULT FIN-CMD
                  DELIMITED BY "   " INTO COMMANDE
           WHEN 2
              STRING DEB-CMD "^...." TMP-FILE-PROCESS2 GUILLEMET
                  " " FICRECH
                  " >" FICRESULT FIN-CMD
                  DELIMITED BY "   " INTO COMMANDE
              MOVE FICRESULT TO ASSIGN-RECH
           END-EVALUATE
                             
           CALL "C$SYSTEM" USING COMMANDE

           OPEN INPUT RECH
           PERFORM TEST-STATUS THRU FIN-TEST-STATUS
           IF IND-STAT NOT = 0 EXIT PARAGRAPH
           END-IF
           MOVE 0 TO W-EOF
           PERFORM UNTIL W-EOF = 1
              MOVE SPACE TO ENR-RECH 
              READ RECH NEXT END MOVE 1 TO W-EOF
              END-READ
              PERFORM STAT
              IF W-EOF NOT = 1 ADD 1 TO W-NBR-CTF
              END-IF
           END-PERFORM
           CLOSE RECH.

       Lect-Rech.
140519     MOVE 0 TO WV-PTF
           OPEN INPUT RECH
           PERFORM STAT
           MOVE 0 TO W-EOF
           PERFORM UNTIL W-EOF = 1
              MOVE SPACE TO ENR-RECH 
              READ RECH NEXT END MOVE 1 TO W-EOF
              END-READ
              PERFORM STAT
              IF W-EOF NOT = 1 
                    MOVE ENR-RECH TO CLE1-MCTF
                    READ MXCATFOU INVALID EXIT PERFORM CYCLE
                    END-READ
                    PERFORM STAT
                    MOVE FOU-MCTF TO COD-MFOU
                    READ MXFOU INVALID EXIT PERFORM CYCLE
                    END-READ
                    PERFORM STAT
                    ADD 1 TO Tmp-9-3
                    MOVE SPACE TO Screen1-Gd-1-Record
                    MOVE REF-MCTF TO Screen1-Gd-1-COD
                    MOVE FOU-MCTF TO Screen1-Gd-1-FOU
                    STRING DES-MCTF "  (" RAI-MFOU ")"
                           delimited by "   " into Screen1-Gd-1-LIB 
                    MOVE "C" TO Screen1-Gd-1-ORI
                    IF LK-SCODART-L-AFF <> 0  
140519                 
                       IF PVT-MCTF <> 0 THEN
      *                   Prix de vente renseigné dans le tarif
                          MOVE PVT-MCTF TO D72
                       ELSE
                          IF PRI-MCTF <> 0 THEN   
                             MOVE 1 TO WV-PTF
                          END-IF
140519
                          MOVE PRI-MCTF TO D72
140519                 END-IF 
                       MOVE D72 TO Screen1-Gd-1-PVT
                    END-IF    
                    MODIFY Screen1-Gd-1,
                          RECORD-TO-ADD = Screen1-Gd-1-Record 
140519                 
                    IF LK-SCODART-L-AFF <> 0  
                    AND PVT-MCTF = 0 
                    AND PRI-MCTF <> 0 THEN
      *                Prix tarif affiché dans la colonne prix de vente
                       MODIFY Screen1-Gd-1(Tmp-9-3, 6), 
                          bitmap LETTREP12-JPG
                    END-IF
140519  
                    IF TMP-9-3 >= 500 MOVE 1 TO W-EOF
                    END-IF
              END-IF
           END-PERFORM
           CLOSE RECH
           DELETE FILE RECH
140519
           MODIFY Screen1-Bt-PTF,
              VISIBLE WV-PTF
           MODIFY Screen1-La-PTF,
              VISIBLE WV-PTF
140519
           .

      *
       Rech-Designation-Catfou.
           MOVE SPACE TO COMMANDE FICRECH FICRESULT
                         TMP-FILE-PROCESS2

           EVALUATE FIC-RECHERCHE
           WHEN 1
              COPY "W:/mx/copy/Assign-FICTMP.cbl" REPLACING 
                 ==FICTMP==   BY ==RECH==
                 =='FICTMP'== BY ==RECH==.
              CLOSE RECH
              STRING MXCATFOU-COB "K" DELIMITED BY " " INTO FICRECH
              MOVE ASSIGN-RECH TO FICRESULT
           WHEN 2
               MOVE ASSIGN-RECH TO FICRECH
              STRING ASSIGN-RECH "R" DELIMITED BY " " INTO FICRESULT  
           END-EVALUATE

           MOVE "egrep -i '" TO DEB-CMD
           MOVE " 2>/dev/null" TO FIN-CMD
           MOVE "'" TO GUILLEMET
           
           MOVE 0 TO K TMP-9-3 W-NBR-CTF
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 38
              IF LK-SCODART-L-DES(I:) = " "
                 MOVE 39 TO I EXIT PERFORM CYCLE
              END-IF
              IF LK-SCODART-L-DES(I:1) NOT = "*"                        | pas *
                 ADD 1 TO K
                 MOVE LK-SCODART-L-DES(I:1) TO TMP-FILE-PROCESS2(K:1)
                 EXIT PERFORM CYCLE
              END-IF
              IF I = 1                                                  | * au début
                 ADD 1 TO K
                 MOVE ".*" TO TMP-FILE-PROCESS2(K:2)
                 ADD 1 TO K
                 EXIT PERFORM CYCLE
              END-IF     
              IF LK-SCODART-L-DES(I + 1:1) = " "                        | * à la fin
                 ADD 1 TO K
                 MOVE ".*" TO TMP-FILE-PROCESS2(K:2)
                 ADD 1 TO K
                 MOVE "'" TO GUILLEMET
                 EXIT PERFORM CYCLE
              END-IF
              IF TMP-9-3 < 2                                            | 1ère étoile au milieu
                 ADD 1 TO K
                 MOVE ".*" TO TMP-FILE-PROCESS2(K:2)
                 ADD 1 TO K
                 ADD 1 TO TMP-9-3
                 EXIT PERFORM CYCLE
              END-IF
           END-PERFORM          
                    
           EVALUATE FIC-RECHERCHE
           WHEN 1
              STRING DEB-CMD "^..........................." 
                  TMP-FILE-PROCESS2 GUILLEMET
                  " " FICRECH
                  " >" FICRESULT FIN-CMD
                  DELIMITED BY "   " INTO COMMANDE
           WHEN 2
              STRING DEB-CMD "^...................." 
                  TMP-FILE-PROCESS2 GUILLEMET
                  " " FICRECH
                  " >" FICRESULT FIN-CMD
                  DELIMITED BY "   " INTO COMMANDE
              MOVE FICRESULT TO ASSIGN-RECH
           END-EVALUATE

           CALL "C$SYSTEM" USING COMMANDE
           OPEN INPUT RECH
           PERFORM TEST-STATUS THRU FIN-TEST-STATUS
           IF IND-STAT NOT = 0 EXIT PARAGRAPH
           END-IF
           MOVE 0 TO W-EOF
           PERFORM UNTIL W-EOF = 1
              MOVE SPACE TO ENR-RECH 
              READ RECH NEXT END MOVE 1 TO W-EOF
              END-READ
              PERFORM STAT
              IF W-EOF NOT = 1 ADD 1 TO W-NBR-CTF
              END-IF
           END-PERFORM
           CLOSE RECH
           .

      ******************************************************************
      *    Test existence CATFOUK
      *
       TEST-EXI-CATFOUK.
           MOVE 0 TO EXI-CATFOUK
           MOVE SPACE TO FICRECH 
           STRING MXCATFOU-COB "K"
                  DELIMITED BY " " INTO FICRECH
           CALL "C$FILEINFO" USING FICRECH FILE-INFO
                GIVING STATUS-CODE
           MOVE FILE-SIZE TO W-SIZE 
      *     IF STATUS-CODE NOT = 0 OR W-SIZE = 0     |trop long
      *        PERFORM CRE-CATFOUK
      *        CALL "C$FILEINFO" USING FICRECH FILE-INFO
      *          GIVING STATUS-CODE
      *        IF STATUS-CODE NOT = 0 EXIT PARAGRAPH
      *        END-IF
      *     END-IF
           IF W-SIZE <> 0 MOVE 1 TO EXI-CATFOUK
           END-IF.


       Rech-Reference.
           MOVE LK-SCODART-L-REF TO VAL-RECHERCHE
           PERFORM Un-RECH.

       Rech-Designation.
           MOVE LK-SCODART-L-DES TO VAL-RECHERCHE
           PERFORM Un-RECH.

       Un-RECH.
           IF VAL-RECHERCHE = SPACE      
              EXIT PARAGRAPH
           END-IF
300919*    422302 Romet : plantait si recherchait un ' : 
      *    impossible de chercher une chaine contenant ce caractère 
      *    à cause de la commande Unix du RECHCMD qui en contient déjà
           MOVE 0 TO I
           INSPECT VAL-RECHERCHE TALLYING I FOR ALL "'"

           IF I <> 0 THEN
              MOVE "Recherche impossible" TO ACU-Msg-1
              PERFORM Msg-Info
              EXIT PARAGRAPH
           END-IF
300919
           EVALUATE VAL-RECHERCHE(1:1)
           WHEN "*" MOVE 1 TO CARACTERE-DEBUT
           WHEN "/" MOVE 3 TO CARACTERE-DEBUT
           WHEN OTHER MOVE 0 TO CARACTERE-DEBUT
           END-EVALUATE

           COPY "W:/mx/copy/Assign-FICTMP.cbl" REPLACING 
              ==FICTMP==   BY ==RECH==
              =='FICTMP'== BY ==RECH==.
           CLOSE RECH.

           MOVE "ART" TO CMD-RECH-FIC
           MOVE MX-DIR TO CMD-RECH-DIR
           MOVE ASSIGN-RECH TO CMD-RECH-RESULT
           MOVE 1 TO CMD-RECH-DEBSOR
           MOVE 70 TO CMD-RECH-FINSOR

           PERFORM Mep-Zone-A-Chercher
           IF ERR-RECHERCHE <> 0 EXIT PARAGRAPH
           END-IF

           EVALUATE LK-SCODART-L-TST 
           WHEN 7  
              MOVE RECORD-POSITION OF DES-MART TO CMD-RECH-POSR(1)
              MOVE "T" TO CMD-RECH-T(1)
              MOVE 21 TO CMD-RECH-POSDT(1)
              MOVE 60 TO CMD-RECH-POSFT(1)
           WHEN OTHER
              MOVE RECORD-POSITION OF CO2-MART TO CMD-RECH-POSR(1)
              MOVE "T" TO CMD-RECH-T(1)
              MOVE 5 TO CMD-RECH-POSDT(1)
              MOVE 20 TO CMD-RECH-POSFT(1)
           END-EVALUATE
                        
           COPY "W:/mistral/copy/rech.cbl".
                               
           IF NOT (CARACTERE-DEBUT = 3
                   OR CARACTERE-FIN = 1)
              MOVE 2 TO FIC-RECHERCHE
              EVALUATE LK-SCODART-L-TST 
              WHEN 7  
                 PERFORM Rech-Designation-Catfou
              WHEN OTHER
                 PERFORM Rech-Reference-Catfou
              END-EVALUATE
              MOVE 1 TO FIC-RECHERCHE
              MOVE 0 TO W-NBR-CTF
           END-IF.

           OPEN INPUT RECH
           PERFORM STAT
           MOVE 0 TO W-EOF
           PERFORM UNTIL W-EOF = 1
              MOVE SPACE TO ENR-RECH 
              READ RECH NEXT END MOVE 1 TO W-EOF
              END-READ
              PERFORM STAT
              IF W-EOF NOT = 1 
                 MOVE ENR-RECH TO CLE1-MART
                 READ MXART INVALID EXIT PERFORM CYCLE
                 END-READ
                 PERFORM STAT
                 | avec le / au début: c'est comme avant, un rech classique
                 IF CARACTERE-DEBUT = 3
                    PERFORM MEP-UN-ART
                    EXIT PERFORM CYCLE
                 END-IF

                 EVALUATE LK-SCODART-L-TST 
                 WHEN 7  
                    MOVE FUNCTION UPPER-CASE(DES-MART) 
                                  TO TMP-FILE-PROCESS1
                 WHEN OTHER
                    MOVE FUNCTION UPPER-CASE(CO2-MART) 
                                  TO TMP-FILE-PROCESS1
                 END-EVALUATE
                 MOVE FUNCTION UPPER-CASE(FOR-RECHERCHE)
                         TO TMP-FILE-PROCESS2
                 
                 | si pas d'* au début: on recherche ce qui commence par ...
                 IF CARACTERE-DEBUT = 0
                 AND TMP-FILE-PROCESS1(1:LON-RECHERCHE) 
                  <> TMP-FILE-PROCESS2(1:LON-RECHERCHE)
                       EXIT PERFORM CYCLE
                 END-IF

      *           MOVE TMP-FILE-PROCESS2 TO RE-RECH 
      *           MOVE TMP-FILE-PROCESS1 TO RE-CHAINE
      *           PERFORM RECH-EXPRESSION
      *           IF RE-DEBUT = 0 
      *                EXIT PERFORM CYCLE
      *           END-IF

                 PERFORM MEP-UN-ART
              END-IF
           END-PERFORM
           CLOSE RECH
           DELETE FILE RECH.

      * VAL-RECHERCHE = valeur à chercher
      * LON-RECHERCHE = longueur de la valeur à chercher
      * FOR-RECHERCHE = zone à chercher après formatage
       Mep-Zone-A-Chercher.
           MOVE VAL-RECHERCHE TO FOR-RECHERCHE 
           MOVE 0 TO ERR-RECHERCHE
           IF CARACTERE-DEBUT = 1 OR 3
              MOVE VAL-RECHERCHE(2:) TO FOR-RECHERCHE 
           END-IF
                       
           MOVE 0 TO LON-RECHERCHE CARACTERE-FIN
           MOVE 0 TO K TMP-9-3
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 50
              IF FOR-RECHERCHE(I:1) = " " OR "*"
221015
      *           OR "/"
22101
                 IF I = 1 
                      MOVE 1 TO ERR-RECHERCHE
                 ELSE ADD -1 I GIVING LON-RECHERCHE 
                      IF FOR-RECHERCHE(I:1) = "*"       | 1 = étoile à la fin
                      AND FOR-RECHERCHE(I + 1 : 1) = " "
                         MOVE 1 TO CARACTERE-FIN
                      END-IF
                      IF FOR-RECHERCHE(I:1) = " "
                         MOVE 2 TO CARACTERE-FIN          | 2 = blanc à la fin
                      END-IF
                      MOVE 51 TO I
                 END-IF
                 EXIT PERFORM CYCLE
              END-IF
           END-PERFORM

           MOVE LON-RECHERCHE TO CMD-RECH-LONR(1)
           IF CARACTERE-DEBUT = 1 OR 3 
              EVALUATE LK-SCODART-L-TST 
              WHEN 7  
                  MOVE 40 TO CMD-RECH-LONR(1)
              WHEN OTHER
                  MOVE 20 TO CMD-RECH-LONR(1)
              END-EVALUATE
           END-IF

           MOVE FOR-RECHERCHE(1:LON-RECHERCHE) TO CMD-RECH-VAL(1)
           IF VAL-RECHERCHE(1:1) = "*" OR "/"
                MOVE "s2" TO CMD-RECH-OPE(1)
           ELSE MOVE "s3" TO CMD-RECH-OPE(1)
           END-IF.


      ******************************************************************
      *    Sélection référence dans CATFOU
      *
       TRAIT-ART-CTF.
           IF AUTO-CREART = "X" AND LK-SCODART-L-RCF <> 2
              MOVE SPACE TO LK-SCODART-L-ART
              EXIT PARAGRAPH
           END-IF.
           MOVE "Article non référencé." to acu-msg-1
           MOVE "Souhaitez-vous le créer ?" to acu-msg-2
           IF LK-SCODART-L-RCF = 2
              MOVE 
              "(Si non, il sera traité en 'divers non référencé')."
              TO ACU-MSG-3
           END-IF     
           MOVE 0 TO ACU-DEFAULT-BUTTON
           IF LK-SCODART-L-RCF = 3 OR 4
              PERFORM MSG-ON
           ELSE
              PERFORM MSG-ONA
           END-IF
           IF ACU-RETURN-VALUE = 3 
           OR (ACU-RETURN-VALUE = 2 AND (LK-SCODART-L-RCF = 3 OR 4))
              MOVE SPACE TO LK-SCODART-L-ART 
           ELSE
              MOVE ACU-RETURN-VALUE TO W-CRE
              PERFORM TRAIT-ART-CTF1
           END-IF.

       TRAIT-ART-CTF1.
      * finalement non
      *     IF LK-SCODART-L-RCF = 4  |pour créer directement dans ART (on vient de ART)
      *        MOVE 9 TO LK-SCODART-L-RCF 
      *        MOVE REF-MCTF TO LK-SCODART-L-REF
      *        MOVE FOU-MCTF TO LK-SCODART-L-FOU 
      *        EXIT PARAGRAPH
      *     END-IF
           OPEN I-O MXCATFOU
           PERFORM STAT
           MOVE SPACE TO LK-MGFA-T 
           READ MXCATFOU INVALID CLOSE MXCATFOU EXIT PARAGRAPH
           END-READ
           PERFORM STAT
           CLOSE MXCATFOU
           MOVE GRA-MCTF TO LK-MGFA-T-GRA
           MOVE FAM-MCTF TO LK-MGFA-T-FAM
           CALL "mgfa-t.acu" USING ZONE-PALM LK-MGFA-T
           CANCEL "mgfa-t.acu"
           IF LK-MGFA-T-GRA = ZERO
              EXIT PARAGRAPH
           END-IF
           IF W-CRE <> 1
              MOVE LK-MGFA-T-GRA TO LK-SCODART-L-ART(1:2)
              MOVE LK-MGFA-T-FAM TO LK-SCODART-L-ART(3:2)
              MOVE REF-MCTF TO LK-SCODART-L-ART(5:16) LK-SCODART-L-REF 
              MOVE FOU-MCTF TO LK-SCODART-L-FOU 
              EXIT PARAGRAPH
           END-IF
           MOVE SPACE TO LK-ART-C
           MOVE 1 TO LK-ART-C-CALL
           MOVE "C" TO LK-ART-C-CHO
           MOVE REF-MCTF TO LK-ART-C-REF
           MOVE FOU-MCTF TO LK-ART-C-FOU
           MOVE LK-SCODART-L-AGE TO LK-ART-C-AGE
           MOVE 9999 TO LK-ART-C-LINE
           MOVE LK-MGFA-T-GRA TO LK-ART-C-COD(1:2)
           MOVE LK-MGFA-T-FAM TO LK-ART-C-COD(3:2)
           CALL "art-c.acu" USING ZONE-PALM LK-ART-C
           CANCEL "art-c.acu"
           MOVE LK-ART-C-COD TO LK-SCODART-L-ART 
           .

       Screen1-Pb-CATFOU-Link.
      *     IF LK-SCODART-L-TST NOT = 7
      *        EXIT PARAGRAPH
      *     END-IF
           MODIFY Screen1-Pb-CATFOU, VISIBLE 0
           modify Screen1-Bt-AttenteG, visible 1
           modify Screen1-Fr-CATFOU, visible 1
           IF LK-SCODART-L-TST NOT = 7 
              PERFORM Rech-Reference-Catfou
           ELSE
              PERFORM Rech-Designation-Catfou
           END-IF
           IF W-NBR-CTF > 0 PERFORM Lect-Rech
           END-IF.
           MODIFY Screen1-La-CATFOU, VISIBLE 0.
           modify Screen1-Bt-AttenteG, visible 0
           modify Screen1-Fr-CATFOU, visible 0.



       

      *{Bench}end
       REPORT-COMPOSER SECTION.
