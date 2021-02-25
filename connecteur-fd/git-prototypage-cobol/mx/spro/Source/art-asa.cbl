      *{Bench}prg-comment
      * art-asa.cbl
      * art-asa.cbl is generated from W:\mx\spro\art-asa.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. art-asa.
       AUTHOR. mistral.
       DATE-WRITTEN. jeudi 23 janvier 2020 18:25:56.
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
       COPY "MXAGENCE.sl".
       COPY "MXARTSA.sl".
       COPY "XMLOut-File.sl".
       COPY "MXFOU.sl".
       COPY "MXFAMART.sl".
      *{Bench}end
       DATA                        DIVISION.
       FILE                        SECTION.
      *{Bench}file
       COPY "COBCAP.fd".
       COPY "MXPARAM.fd".
       COPY "MXART.fd".
       COPY "MXAGENCE.fd".
       COPY "MXARTSA.fd".
       COPY "XMLOut-File.fd".
       COPY "MXFOU.fd".
       COPY "MXFAMART.fd".
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
           88 Enter-Pushed VALUE 13.
           88 Exit-Pushed VALUE 27.
           88 Message-Received VALUE 95.
           88 Event-Occurred VALUE 96.
           88 Screen-No-Input-Field VALUE 97.
           88 Screen-Time-Out VALUE 99.
      * property-defined variable

      * user-defined variable
       77 Screen1-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 Screen1-St-1-Handle
                  USAGE IS HANDLE OF STATUS-BAR VALUE NULL.
       77 Default-Font
                  USAGE IS HANDLE OF FONT DEFAULT-FONT.
       77 Small-Font
                  USAGE IS HANDLE OF FONT SMALL-FONT.
       77 Large-Font
                  USAGE IS HANDLE OF FONT LARGE-FONT.
       77 Medium-Font
                  USAGE IS HANDLE OF FONT MEDIUM-FONT.
       77 USERxxx20-JPG    PIC  S9(9)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 RAFRAIC24-JPG    PIC  S9(9)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 MODIFIE24-JPG    PIC  S9(9)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 SAUVEGA24-JPG    PIC  S9(9)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 IMPRIME24-JPG    PIC  S9(9)
                  USAGE IS COMP-4
                  VALUE IS 0.
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
       77 QUITTER24-JPG    PIC  S9(9)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 AIDExxx24-JPG    PIC  S9(9)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 CBCHECK13-JPG    PIC  S9(9)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 CBUNCHK13-JPG    PIC  S9(9)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-LOG-PALM       PIC  9(3)
                  VALUE IS 25.
       77 W-NPR-PALM       PIC  9(4)
                  VALUE IS 631.
       78 Nombre-Messages-Aide VALUE IS 11. 
       01 Liste-Messages-Aide.
           05 FILLER           PIC  X(70)
                      VALUE IS "Agence de Stockage".
           05 FILLER           PIC  X(70)
                      VALUE IS "Gestion du Stock : Oui / Non / Dépôt-Ven
      -    "te".
           05 FILLER           PIC  X(70)
                      VALUE IS "Localisation".
           05 FILLER           PIC  X(70)
                      VALUE IS "Code Etiquetage (Suivi de la lettre 'B' 
      -    "si étiquette code barre)".
           05 FILLER           PIC  X(70)
                      VALUE IS "Réapprovisionnement automatique: Oui / N
      -    "on  (si géré en stock)".
           05 FILLER           PIC  X(70)
                      VALUE IS "Seuil Mini  (si géré en stock)".
           05 FILLER           PIC  X(70)
                      VALUE IS "Seuil Maxi  (si géré en stock)".
           05 FILLER           PIC  X(70)
                      VALUE IS "Date Mini/Maxi".
           05 FILLER           PIC  X(70)
                      VALUE IS "Périodicité inventaire (en jours)".
           05 FILLER           PIC  X(70)
                      VALUE IS "Prix d'Achat Moyen Pondéré".
           05 FILLER           PIC  X(70)
                      VALUE IS "Observations".
       01 Message-Aide REDEFINES Liste-Messages-Aide  PIC  X(70)
                  OCCURS NOMBRE-MESSAGES-AIDE TIMES.
       77 CDFB PIC  X.
       77 CDF  PIC  X.
       77 W-MXPARAM        PIC  9(9).
           COPY  "\mx\copy\LK-LSTDIR-L.wrk".
           COPY  "\mx\copy\numval.wrk".
           COPY  "W:\mistral\copy\Mis-EnregOccupe.wrk".
           COPY  "W:\mistral\copy\Gd-Sort.wrk".
           COPY  "W:\mistral\copy\Ef-Date.wrk".
           COPY  "W:\mistral\copy\cobcap.wrk".
           COPY  "W:\mistral\copy\LK-LISTE.wrk".
       77 isModifying      PIC  9
                  VALUE IS 1.
       77 isModifyVisible  PIC  9
                  VALUE IS 1.
       77 isValidVisible   PIC  9
                  VALUE IS 1.
       77 isDeleteVisible  PIC  9
                  VALUE IS 1.
       77 isPrintVisible   PIC  9
                  VALUE IS 1.
       77 Screen1-DaGd-1-Row-Highlight-Color       PIC  9(6).
       77 Screen1-DaGd-1-Cursor-Y      PIC  9(5).
       77 Screen1-DaGd-1-Cursor-Y-Old  PIC  9(5).
       01 Screen1-DaGd-1-BUF.
           06 Screen1-DaGd-1-BUF-AGE       PIC  X(6).
           06 Screen1-DaGd-1-BUF-STO       PIC  X(7).
           06 Screen1-DaGd-1-BUF-CAS       PIC  X(7).
           06 Screen1-DaGd-1-BUF-ETI       PIC  X(3).
           06 Screen1-DaGd-1-BUF-REA       PIC  X(7).
           06 Screen1-DaGd-1-BUF-MIN       PIC  ZZZ9 BLANK WHEN ZERO.
           06 Screen1-DaGd-1-BUF-MAX       PIC  ZZZZ9 BLANK WHEN ZERO.
           06 Screen1-DaGd-1-BUF-DAM       PIC  X(10).
           06 Screen1-DaGd-1-BUF-PINV      PIC  X(6).
           06 Screen1-DaGd-1-BUF-PAMP      PIC  ZZZZZZ9,99 BLANK WHEN 
           ZERO.
           06 Screen1-DaGd-1-BUF-OBS       PIC  X(60).
           06 Screen1-DaGd-1-BUF-STO2      PIC  9(1).
           06 Screen1-DaGd-1-BUF-REA2      PIC  9(1).
       01 Screen1-DaGd-1-Record.
           05 Screen1-DaGd-1-AGE-ABR-MAGC  PIC  X(6).
           05 Screen1-DaGd-1-LIB-STO-MASA  PIC  X(7).
           05 Screen1-DaGd-1-CAS-MASA      PIC  X(7).
           05 Screen1-DaGd-1-ETI-MASA      PIC  X(3).
           05 Screen1-DaGd-1-LIB-REA-MASA  PIC  X(7).
           05 Screen1-DaGd-1-MIN-MASA      PIC  9(4).
           05 Screen1-DaGd-1-MAX-MASA      PIC  9(5).
           05 Screen1-DaGd-1-DAM-MASA      PIC  X(10).
           05 Screen1-DaGd-1-PINV-MASA     PIC  X(6).
           05 FILLER           PIC  X(10).
           05 Screen1-DaGd-1-OBS-MASA      PIC  X(60).
           05 Screen1-DaGd-1-STO-MASA      PIC  9(1).
           05 Screen1-DaGd-1-REA-MASA      PIC  9(1).
       01 Screen1-DaGd-1-Record-Old    PIC  X(150).
       01 W-AGE-ABR-MAGC.
           05 W-COD-MAGC       PIC  X(3).
           05 FILLER           PIC  X(1).
           05 W-ABR-MAGC       PIC  X(2).
       77 W-KEY-ORDER      PIC  X(1).
       77 W-KEY-NUM        PIC  9(2)
                  VALUE IS 1.
       77 W-PATCH          PIC  9
                  VALUE IS 0.
       77 COL-STO          PIC  9
                  VALUE IS 2.
       77 COL-CAS          PIC  9
                  VALUE IS 3.
       77 COL-ETI          PIC  9
                  VALUE IS 4.
       77 COL-REA          PIC  9
                  VALUE IS 5.
       77 COL-MIN          PIC  9
                  VALUE IS 6.
       77 COL-MAX          PIC  9
                  VALUE IS 7.
       77 COL-DAM          PIC  9
                  VALUE IS 8.
       77 COL-PINV         PIC  9
                  VALUE IS 9.
       77 COL-PAMP         PIC  99
                  VALUE IS 10.
       77 COL-OBS          PIC  99
                  VALUE IS 11.
       77 COL2-STO         PIC  99
                  VALUE IS 12.
       77 COL2-REA         PIC  99
                  VALUE IS 13.
       77 Screen2-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 Screen2-Gd-1-Cursor-Y-Old    PIC  9(5).
       01 Screen2-Gd-1-Record.
           05 Screen2-Gd-1-LIB PIC  X(20).
           05 Screen2-Gd-1-NUM PIC  X(1).
       77 LK-MASA-NUM      PIC  9(1).
       77 Screen3-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 Screen3-Gd-1-Cursor-Y-Old    PIC  9(5).
       01 Screen3-Gd-1-Record.
           05 Screen3-Gd-1-LIB PIC  X(20).
           05 Screen3-Gd-1-NUM PIC  9(1).
       77 PMELICEN-FILE-STATUS         PIC  X(2).
           88 Valid-PMELICEN VALUE IS "00" THRU "09". 
       77 Screen4-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       01 Screen4-Gd-1-Record.
           05 Gd-1-Col-AGE     PIC  X(8).
           05 Gd-1-Col-CRE     PIC  X.
           05 Gd-1-Col-MOD     PIC  X.
       77 VALIDER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ANNULER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Screen4-St-1-Handle
                  USAGE IS HANDLE OF STATUS-BAR VALUE NULL.
       77 NB-AGE           PIC  9(3).
       77 W-OK-AGE         PIC  9.
       77 Z    PIC  9(3).
       77 W-OK PIC  9.
       01 TAB-AGE.
           02 T-AGE-COD        PIC  XXX
                      OCCURS 300 TIMES.
           02 T-AGE-CRE        PIC  9
                      OCCURS 300 TIMES.
           02 T-AGE-MOD        PIC  9
                      OCCURS 300 TIMES.
       77 ENGRSIM16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ENGRDOU24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 X-DAM            PIC  X(10).
       77 W-D-CAS          PIC  9.
       77 W-D-STO          PIC  9.
       77 W-D-REA          PIC  9.
       77 W-D-ETI          PIC  9.
       77 W-D-MIN          PIC  9.
       77 W-V-MIN          PIC  9(4).
       77 W-V-MAX          PIC  9(5).
       77 W-V-DAM          PIC  9(8).
       77 W-V-STO          PIC  S9(1)
                  VALUE IS 0.
       77 W-V-REA          PIC  S9(1)
                  VALUE IS 0.
       77 W-V-CAS          PIC  X(7).
       77 W-V-TETI         PIC  X.
       77 W-V-ETI          PIC  99.
       77 W-ENABLE-INFO    PIC  9.
       77 TRIERAD10-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FILE-STATUS      PIC  X(2).
       77 W-EXI            PIC  9(1).
       77 TOUTCOC24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TOUTDEC24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 INVSELE24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ZOOMxxx10-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Screen1-Mn-1-Handle
                  USAGE IS HANDLE OF MENU VALUE NULL.
       77 MODU-LECTOPT     PIC  9
                  VALUE IS 1.
       77 ZOOMxxx12-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 isIFAVisible     PIC  9
                  VALUE IS 1.
       77 ScreenPamp-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 Screen1-Mn-2-Handle
                  USAGE IS HANDLE OF MENU VALUE NULL.
       77 SV-PAMP          PIC  9(7)V99.
       77 SV-PRMP          PIC  9(7)V99.
       77 SV-PAMP1         PIC  9(7)V99.
       77 SV-PRMP1         PIC  9(7)V99.
       77 IND-MAJ          PIC  9.
       77 AUTO-MODPAMP     PIC  9.
       77 AUTO-VISU-AGINT  PIC  9.
       77 AUTO-MODAGE      PIC  9.
       77 SV-STO           PIC  9.
       77 W-MIN            PIC  9(4).
       77 W-MAX            PIC  9(5).
       77 W-LSTO           PIC  XXX.
       77 W-LREA           PIC  XXX.
       77 Screen1-Mn-3-Handle
                  USAGE IS HANDLE OF MENU VALUE NULL.
       77 Screen1-Mn-4-Handle
                  USAGE IS HANDLE OF MENU VALUE NULL.
       77 A3   PIC  ZZZ.
       77 IMPORTx24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ScreenImport-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 ZOOMxxx16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-FIC            PIC  X(50).
       77 ASSIGN-FIMPORT   PIC  X(100).
       77 ASSIGN-FMSG      PIC  X(100).
       77 W-IMP            PIC  S9(1)
                  VALUE IS 0.
       77 I-AGE            PIC  XXX.
       77 W-ART            PIC  X(20).
       77 A-MIN            PIC  X(10).
       77 A-MAX            PIC  X(10).
       77 A-DEP            PIC  X(10).
       77 W-DEP            PIC  9(3).
       77 W-PINV           PIC  X.
       77 W-ERR            PIC  9.
       77 NB-LU            PIC  9(6).
       77 NB-MAJ           PIC  9(6).
       77 NB-ERR           PIC  9(6).
       77 A6   PIC  Z(5)9.
       77 T-CHO            PIC  X.
      *
      *
       01 TABMOI.
           02 FILLER           PIC  X(27)
                      VALUE IS "Janvier  Février  Mars     ".
           02 FILLER           PIC  X(27)
                      VALUE IS "Avril    Mai      Juin     ".
           02 FILLER           PIC  X(27)
                      VALUE IS "Juillet  Aout     Septembre".
           02 FILLER           PIC  X(27)
                      VALUE IS "Octobre  Novembre Décembre ".
       01 TMOI REDEFINES TABMOI.
           02 MOI  PIC  X(9)
                      OCCURS 12 TIMES.
       77 W-M1 PIC  99.
       77 MODIFIE16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 XMLOut-Assign    PIC  X(32).
       77 ZOOMxxx16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.

      *{Bench}end
       LINKAGE                     SECTION.
      *{Bench}linkage
       77 LK-ZONE-PALM     PIC  X(500).
           COPY  "W:\mx\copy\LK-ART-ASA.wrk".
      *{Bench}end
       SCREEN                      SECTION.
       COPY "W:/mistral/copy/Mis-EnregOccupe-Screen.cpy".
      *{Bench}copy-screen
       01 Screen1.
           03 Screen1-Pb-Refresh, Push-Button, 
              COL 101,00, LINE 1,31, LINES 24, SIZE 24, 
              BITMAP-HANDLE RAFRAIC24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 1001, FONT IS Default-Font, ID IS 5, 
              NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Rafraîchir".
           03 Screen1-Pb-Modify, Push-Button, 
              COL 105,71, LINE 1,31, LINES 24, SIZE 24, 
              BITMAP-HANDLE MODIFIE24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 1002, FONT IS Default-Font, ID IS 6, 
              NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Modifier", VISIBLE isModifyVisible.
           03 Screen1-Pb-MAJ, Push-Button, 
              COL 96,57, LINE 1,31, LINES 24, SIZE 24, 
              BITMAP-HANDLE ENGRDOU24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 1010, ID IS 12, NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Création/Modif. Automatique".
           03 Screen1-Fr-Identification, Frame, 
              COL 1,57, LINE 1,00, LINES 3,62 CELLS, SIZE 89,57 CELLS, 
              ENGRAVED, COLOR IS 2, FONT IS Small-Font, ID IS 13, 
              TITLE "Article", BACKGROUND-LOW.
           03 Screen1-Ef-CO2, Entry-Field, 
              COL 10,00, LINE 2,31, LINES 1,38 CELLS, SIZE 18,43 CELLS, 
              3-D, COLOR IS 194, ID IS 14, CENTER, MAX-TEXT 20, 
              NO-AUTOSEL, NO-TAB, READ-ONLY, VALUE CO2-MART.
           03 Screen1-Ef-DES, Entry-Field, 
              COL 29,29, LINE 2,31, LINES 1,38 CELLS, SIZE 35,14 CELLS, 
              3-D, COLOR IS 194, ID IS 15, CENTER, MAX-TEXT 40, 
              NO-AUTOSEL, NO-TAB, READ-ONLY, VALUE DES-MART.
           03 Screen1-Ef-CO1, Entry-Field, 
              COL 4,00, LINE 2,31, LINES 1,38 CELLS, SIZE 5,43 CELLS, 
              3-D, COLOR IS 194, ID IS 1, CENTER, MAX-TEXT 20, 
              NO-AUTOSEL, NO-TAB, READ-ONLY, VALUE CO1-MART.
           03 Screen1-Ef-DE2, Entry-Field, 
              COL 65,57, LINE 2,31, LINES 1,38 CELLS, SIZE 23,29 CELLS, 
              3-D, COLOR IS 194, ID IS 7, CENTER, MAX-TEXT 40, 
              NO-AUTOSEL, NO-TAB, READ-ONLY, VALUE DE2-MART.
           03 Screen1-DaGd-1, Grid, 
              COL 1,57, LINE 5,92, LINES 23,08 CELLS, 
              SIZE 113,14 CELLS, 
              NO-BOX, CENTERED-HEADINGS, COLOR IS 2, COLUMN-HEADINGS, 
              DATA-COLUMNS (1, 7, 14, 21, 24, 31, 35, 40, 50, 56, 66,
              126, 127), 
              DISPLAY-COLUMNS (1, 10, 18, 26, 32, 40, 46, 52, 62, 68,
              78, 123, 124), 
              ALIGNMENT ("C", "C", "L", "C", "C", "R", "R", "C", "U", "R
      -       "", "U", "U", "C"), 
              DATA-TYPES ("X(6)", "X(7)", "X(7)", "X(3)", "X(7)", "9(4)"
              , "9(5)", "X(10)", "X", "9999999V99", "X(60)", "9(1)", "9(
      -       "1)"), 
              SEPARATION (5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5), 
              CURSOR-FRAME-WIDTH 1, DIVIDER-COLOR 8, 
              END-COLOR W-End-Color, HEADING-COLOR W-Heading-Color, 
              HEADING-DIVIDER-COLOR W-Heading-Divider-Color, ID IS 16, 
              NUM-COL-HEADINGS 1, NUM-ROWS W-Num-Rows, TILED-HEADINGS, 
              USE-TAB, VPADDING 50, VSCROLL, 
              AFTER PROCEDURE Screen1-DaGd-1-Aft-Procedure, 
              EVENT PROCEDURE Screen1-DaGd-1-Event-Proc.
           03 Screen1-Bt-1, Bitmap, 
              COL 87,71, LINE 4,85, LINES 10, SIZE 10, 
              BITMAP-HANDLE ZOOMxxx10-BMP, BITMAP-NUMBER 1, 
              ID IS 2, VISIBLE 0.
           03 Screen1-Bt-1a, Bitmap, 
              COL 82,14, LINE 4,85, LINES 13, SIZE 13, 
              BITMAP-HANDLE CBCHECK13-JPG, BITMAP-NUMBER 1, 
              ID IS 3, VISIBLE 0.
           03 Screen1-Bt-1aa, Bitmap, 
              COL 84,71, LINE 4,85, LINES 13, SIZE 13, 
              BITMAP-HANDLE CBUNCHK13-JPG, BITMAP-NUMBER 1, 
              ID IS 4, VISIBLE 0.
           03 Screen1-Pb-Import, Push-Button, 
              COL 92,14, LINE 1,31, LINES 24, SIZE 24, 
              BITMAP-HANDLE IMPORTx24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 1081, FONT IS Default-Font, ID IS 8, 
              NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Import données".
       01 Screen2.
           03 Screen2-Gd-1, Grid, 
              COL 1,00, LINE 1,00, LINES 6,15 CELLS, SIZE 16,57 CELLS, 
              NO-BOX, CENTERED-HEADINGS, COLOR IS 2, COLUMN-HEADINGS, 
              DATA-COLUMNS (1, 16), 
              DISPLAY-COLUMNS (1, 21), 
              ALIGNMENT ("C", "C"), 
              DATA-TYPES ("X(15)", "9(1)"), 
              SEPARATION (5, 5), 
              COLUMN-DIVIDERS (0, 0), 
              CURSOR-FRAME-WIDTH 0, DIVIDER-COLOR 8, END-COLOR 16, 
              FONT IS Small-Font, HEADING-COLOR 257, 
              HEADING-DIVIDER-COLOR 1, ID IS 12, NO-TAB, 
              NUM-COL-HEADINGS 1, NUM-ROWS 4, 
              RECORD-DATA Screen2-Gd-1-Record, TILED-HEADINGS, 
              VPADDING 50, 
              EVENT PROCEDURE Screen2-Gd-1-Event-Proc.
       01 Screen3.
           03 Screen3-Gd-1, Grid, 
              COL 1,00, LINE 1,00, LINES 6,15 CELLS, SIZE 16,57 CELLS, 
              NO-BOX, CENTERED-HEADINGS, COLOR IS 2, COLUMN-HEADINGS, 
              DATA-COLUMNS (1, 21), 
              DISPLAY-COLUMNS (1, 21), 
              ALIGNMENT ("C", "C"), 
              DATA-TYPES ("X(15)", "9(1)"), 
              SEPARATION (5, 5), 
              COLUMN-DIVIDERS (0, 0), 
              CURSOR-FRAME-WIDTH 0, DIVIDER-COLOR 8, END-COLOR 16, 
              FONT IS Small-Font, HEADING-COLOR 257, 
              HEADING-DIVIDER-COLOR 1, ID IS 12, NO-TAB, 
              NUM-COL-HEADINGS 1, NUM-ROWS 4, 
              RECORD-DATA Screen2-Gd-1-Record, TILED-HEADINGS, 
              VPADDING 50, 
              EVENT PROCEDURE Screen3-Gd-1-Event-Proc.
       01 Screen4.
           03 Screen4-Fr-3a, Frame, 
              COL 52,14, LINE 21,23, LINES 5,69 CELLS, 
              SIZE 20,14 CELLS, 
              RIMMED, ID IS 45, BACKGROUND-LOW.
           03 Screen4-Fr-3, Frame, 
              COL 52,14, LINE 15,38, LINES 5,69 CELLS, 
              SIZE 20,14 CELLS, 
              RIMMED, ID IS 44, BACKGROUND-LOW.
           03 Screen4-Fr-2, Frame, 
              COL 1,43, LINE 1,00, LINES 5,46 CELLS, SIZE 71,43 CELLS, 
              ENGRAVED, COLOR IS 2, FILL-COLOR 16, FILL-PERCENT 100, 
              ID IS 25, BACKGROUND-LOW.
           03 Screen4-Fr-1, Frame, 
              COL 1,43, LINE 6,00, LINES 9,31 CELLS, SIZE 71,43 CELLS, 
              ENGRAVED, COLOR IS 2, FILL-COLOR 16, FILL-PERCENT 100, 
              ID IS 8, BACKGROUND-LOW.
           03 Screen4-Pb-LETI, Push-Button, 
              COL 49,57, LINE 12,23, LINES 12, SIZE 12, 
              BITMAP-HANDLE ZOOMxxx12-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              ID IS 47, TERMINATION-VALUE 1084, 
              TITLE "Liste des modèles d'étiquettes".
           03 Screen4-La-1, Label, 
              COL 2,86, LINE 8,15, LINES 1,08 CELLS, SIZE 12,00 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 1, LABEL-OFFSET 0, 
              TITLE "Gestion de Stock", TRANSPARENT.
           03 Screen4-La-1a, Label, 
              COL 37,43, LINE 8,15, LINES 1,08 CELLS, SIZE 6,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 2, LABEL-OFFSET 0, 
              TITLE "Casier", TRANSPARENT.
           03 Screen4-La-1b, Label, 
              COL 39,00, LINE 11,08, LINES 1,08 CELLS, SIZE 8,71 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 3, LABEL-OFFSET 0, 
              TITLE "Etiquetage", TRANSPARENT.
           03 Screen4-La-1c, Label, 
              COL 55,00, LINE 8,15, LINES 1,08 CELLS, SIZE 6,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 4, LABEL-OFFSET 0, 
              TITLE "Mini", TRANSPARENT.
           03 Screen4-La-1d, Label, 
              COL 64,00, LINE 8,15, LINES 1,08 CELLS, SIZE 5,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 5, LABEL-OFFSET 0, 
              TITLE "Maxi", TRANSPARENT.
           03 Screen4-La-1ba, Label, 
              COL 17,86, LINE 8,15, LINES 1,08 CELLS, SIZE 9,71 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 6, LABEL-OFFSET 0, 
              TITLE "Réappro", TRANSPARENT.
           03 Screen4-La-2, Label, 
              COL 56,57, LINE 11,08, LINES 1,08 CELLS, 
              SIZE 10,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 7, LABEL-OFFSET 0, 
              TITLE "Date Mini-Maxi", TRANSPARENT.
           03 Screen4-Rb-STO1, Radio-Button, 
              COL 3,29, LINE 9,62, LINES 1,00 CELLS, SIZE 11,29 CELLS, 
              COLOR IS 514, FONT IS Small-Font, GROUP 1, GROUP-VALUE 1, 
              ID IS 9, 
              TITLE "Oui", VALUE 1, 
              EVENT PROCEDURE Screen4-Rb-STO1-Event-Proc.
           03 Screen4-Rb-STO2, Radio-Button, 
              COL 3,29, LINE 11,08, LINES 1,00 CELLS, SIZE 11,29 CELLS, 
              COLOR IS 514, FONT IS Small-Font, GROUP 1, GROUP-VALUE 2, 
              ID IS 10, 
              TITLE "Non", 
              EVENT PROCEDURE Screen4-Rb-STO2-Event-Proc.
           03 Screen4-Rb-STO3, Radio-Button, 
              COL 3,29, LINE 12,54, LINES 1,00 CELLS, SIZE 11,29 CELLS, 
              COLOR IS 514, FONT IS Small-Font, GROUP 1, GROUP-VALUE 3, 
              ID IS 11, 
              TITLE "Dépôt-Vente", VALUE 9, 
              EVENT PROCEDURE Screen4-Rb-STO3-Event-Proc.
           03 Screen4-Ef-CAS, Entry-Field, 
              COL 35,57, LINE 9,31, LINES 1,38 CELLS, SIZE 9,00 CELLS, 
              3-D, COLOR IS 2, ID IS 12, MAX-TEXT 7.
           03 Screen4-Ef-ETI, Entry-Field, 
              COL 45,29, LINE 12,31, LINES 1,38 CELLS, SIZE 4,14 CELLS, 
              3-D, COLOR IS 2, ID IS 13, MAX-TEXT 2, 
              EVENT PROCEDURE Screen4-Ef-ETI-Event-Proc.
           03 Screen4-Rb-REA1, Radio-Button, 
              COL 17,14, LINE 9,62, LINES 1,00 CELLS, SIZE 11,29 CELLS, 
              COLOR IS 514, FONT IS Small-Font, GROUP 2, GROUP-VALUE 1, 
              ID IS 14, 
              TITLE "Oui", VALUE 1, 
              EVENT PROCEDURE Screen4-Rb-REA1-Event-Proc.
           03 Screen4-Rb-REA2, Radio-Button, 
              COL 17,14, LINE 11,00, LINES 1,00 CELLS, 
              SIZE 11,29 CELLS, 
              COLOR IS 514, FONT IS Small-Font, GROUP 2, GROUP-VALUE 2, 
              ID IS 15, 
              TITLE "Non", 
              EVENT PROCEDURE Screen4-Rb-REA2-Event-Proc.
           03 Screen4-Rb-REA3, Radio-Button, 
              COL 17,14, LINE 12,38, LINES 1,00 CELLS, 
              SIZE 16,00 CELLS, 
              COLOR IS 514, FONT IS Small-Font, GROUP 2, GROUP-VALUE 3, 
              ID IS 16, 
              TITLE "Mini-Maxi/F.Wilson", 
              EVENT PROCEDURE Screen4-Rb-REA3-Event-Proc.
           03 Screen4-Ef-MIN, Entry-Field, 
              COL 54,00, LINE 9,31, LINES 1,38 CELLS, SIZE 6,71 CELLS, 
              3-D, COLOR IS 2, ID IS 17, 
              EVENT PROCEDURE Screen4-Ef-MIN-Event-Proc.
           03 Screen4-Ef-MAX, Entry-Field, 
              COL 62,71, LINE 9,31, LINES 1,38 CELLS, SIZE 7,29 CELLS, 
              3-D, COLOR IS 2, ID IS 18, 
              EVENT PROCEDURE Screen4-Ef-MAX-Event-Proc.
           03 Screen4-Ef-DAM, Entry-Field, 
              COL 56,00, LINE 12,38, LINES 1,38 CELLS, 
              SIZE 12,43 CELLS, 
              3-D, COLOR IS 2, ID IS 19, VALUE X-DAM, 
              EVENT PROCEDURE Screen4-Ef-DAM-Event-Proc.
           03 Screen4-La-1e, Label, 
              COL 3,29, LINE 2,85, LINES 1,08 CELLS, SIZE 12,00 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 20, LABEL-OFFSET 0, 
              TITLE "Gestion de Stock", TRANSPARENT.
           03 Screen4-La-1aa, Label, 
              COL 39,00, LINE 2,85, LINES 1,08 CELLS, SIZE 6,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 21, LABEL-OFFSET 0, 
              TITLE "Casier", TRANSPARENT.
           03 Screen4-La-1bb, Label, 
              COL 27,14, LINE 2,85, LINES 1,08 CELLS, SIZE 8,71 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 22, LABEL-OFFSET 0, 
              TITLE "Etiquetage", TRANSPARENT.
           03 Screen4-La-1baa, Label, 
              COL 17,86, LINE 2,85, LINES 1,08 CELLS, SIZE 7,00 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 23, LABEL-OFFSET 0, 
              TITLE "Réappro", TRANSPARENT.
           03 Screen4-La-1ca, Label, 
              COL 47,86, LINE 2,85, LINES 1,08 CELLS, SIZE 8,00 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 24, LABEL-OFFSET 0, 
              TITLE "Mini - Maxi", TRANSPARENT.
           03 Screen4-Cb-STO, Check-Box, 
              COL 8,57, LINE 4,15, LINES 1,23 CELLS, SIZE 3,57 CELLS, 
              COLOR IS 512, ID IS 27.
           03 Screen4-Cb-REA, Check-Box, 
              COL 19,29, LINE 4,15, LINES 1,23 CELLS, SIZE 3,57 CELLS, 
              COLOR IS 512, ID IS 28.
           03 Screen4-Cb-MIN, Check-Box, 
              COL 49,71, LINE 4,15, LINES 1,23 CELLS, SIZE 3,57 CELLS, 
              COLOR IS 512, EXCEPTION-VALUE 4041, ID IS 29, 
              EVENT PROCEDURE Screen4-Cb-MIN-Event-Proc.
           03 Screen4-Cb-CAS, Check-Box, 
              COL 39,86, LINE 4,23, LINES 1,23 CELLS, SIZE 3,57 CELLS, 
              COLOR IS 512, EXCEPTION-VALUE 4040, ID IS 32, 
              EVENT PROCEDURE Screen4-Cb-CAS-Event-Proc.
           03 Screen4-Cb-ETI, Check-Box, 
              COL 29,43, LINE 4,15, LINES 1,23 CELLS, SIZE 3,57 CELLS, 
              COLOR IS 512, ID IS 33.
           03 Screen4-Gd-1, Grid, 
              COL 5,14, LINE 15,69, LINES 18,38 CELLS, 
              SIZE 28,29 CELLS, 
              3-D, CENTERED-HEADINGS, COLOR IS 2, COLUMN-HEADINGS, 
              DATA-COLUMNS (1, 9, 10), 
              DISPLAY-COLUMNS (1, 9, 17), 
              ALIGNMENT ("C", "U", "U"), 
              SEPARATION (5, 5, 5), 
              CURSOR-FRAME-WIDTH 3, DIVIDER-COLOR w-divider-color, 
              DRAG-COLOR 1, END-COLOR w-end-color, 
              HEADING-COLOR w-heading-color, 
              HEADING-DIVIDER-COLOR w-heading-divider-color, ID IS 26, 
              NUM-COL-HEADINGS 1, NUM-ROWS 300, 
              RECORD-DATA Screen4-Gd-1-Record, TILED-HEADINGS, 
              VPADDING 50, VSCROLL, 
              EVENT PROCEDURE Screen4-Gd-1-Event-Proc.
           03 Screen4-Pb-C1, Push-Button, 
              COL 55,43, LINE 17,69, LINES 24, SIZE 24, 
              BITMAP-HANDLE TOUTCOC24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 4030, FONT IS Small-Font, ID IS 30, 
              TITLE "Tout cocher".
           03 Screen4-Pb-D1, Push-Button, 
              COL 60,00, LINE 17,69, LINES 24, SIZE 24, 
              BITMAP-HANDLE TOUTDEC24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 4031, FONT IS Small-Font, ID IS 31, 
              TITLE "Tout Décocher".
           03 Screen4-Pb-I1, Push-Button, 
              COL 64,57, LINE 17,69, LINES 24, SIZE 24, 
              BITMAP-HANDLE INVSELE24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 4032, FONT IS Small-Font, ID IS 34, 
              TITLE "Inverser".
           03 Screen4-La-3, Label, 
              COL 52,86, LINE 16,08, LINES 1,08 CELLS, 
              SIZE 18,86 CELLS, 
              COLOR IS W-Heading-Color, FONT IS Default-Font, ID IS 35, 
              CENTER, LABEL-OFFSET 0, 
              TITLE 'Colonne "à créer"'.
           03 Screen4-Pb-C2, Push-Button, 
              COL 55,43, LINE 23,69, LINES 24, SIZE 24, 
              BITMAP-HANDLE TOUTCOC24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 4033, FONT IS Small-Font, ID IS 36, 
              TITLE "Tout cocher".
           03 Screen4-Pb-D2, Push-Button, 
              COL 60,00, LINE 23,69, LINES 24, SIZE 24, 
              BITMAP-HANDLE TOUTDEC24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 4034, FONT IS Small-Font, ID IS 37, 
              TITLE "Tout Décocher".
           03 Screen4-Pb-I2, Push-Button, 
              COL 64,57, LINE 23,69, LINES 24, SIZE 24, 
              BITMAP-HANDLE INVSELE24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 4035, FONT IS Small-Font, ID IS 38, 
              TITLE "Inverser".
           03 Screen4-La-3a, Label, 
              COL 52,86, LINE 22,00, LINES 1,08 CELLS, 
              SIZE 18,86 CELLS, 
              COLOR IS W-Heading-Color, FONT IS Default-Font, ID IS 39, 
              CENTER, LABEL-OFFSET 0, 
              TITLE 'Colonne "à modifier"'.
           03 Screen4-Pb-VALIDER, Push-Button, 
              COL 62,86, LINE 31,92, LINES 24, SIZE 24, 
              BITMAP-HANDLE VALIDER24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 4020, ID IS 40, 
              TITLE "Valider".
           03 Screen4-Pb-ANNULER, Push-Button, 
              COL 67,43, LINE 31,92, LINES 24, SIZE 24, 
              BITMAP-HANDLE ANNULER24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 4010, ID IS 41, 
              TITLE "Annuler".
           03 Screen4-La-4, Label, 
              COL 1,71, LINE 1,46, LINES 1,08 CELLS, SIZE 70,86 CELLS, 
              COLOR IS 194, FONT IS Medium-Font, ID IS 42, 
              LABEL-OFFSET 0, 
              TITLE " Informations à actualiser".
           03 Screen4-La-5, Label, 
              COL 1,71, LINE 6,46, LINES 1,23 CELLS, SIZE 70,86 CELLS, 
              COLOR IS 194, FONT IS Medium-Font, ID IS 43, 
              LABEL-OFFSET 0, 
              TITLE "  Valeur des informations".
           03 Screen4-Cm-TETI, Combo-Box, 
              COL 34,14, LINE 12,31, LINES 3,31 CELLS, 
              SIZE 11,14 CELLS, 
              3-D, COLOR IS 2, ENABLED MODU-LECTOPT, 
              FONT IS Small-Font, ID IS 46, MASS-UPDATE 0, 
              NOTIFY-SELCHANGE, DROP-LIST, UNSORTED, 
              EVENT PROCEDURE Screen4-Cm-TETI-Event-Proc.
           03 Screen4-Rb-REA4, Radio-Button, 
              COL 17,14, LINE 13,77, LINES 1,00 CELLS, 
              SIZE 16,00 CELLS, 
              COLOR IS 514, FONT IS Small-Font, GROUP 2, GROUP-VALUE 3, 
              ID IS 48, 
              TITLE "Minii/Conso", 
              EVENT PROCEDURE Screen4-Rb-REA3-Event-Proc.
       01 ScreenPamp.
           03 ScreenPamp-Fr-2, Frame, 
              COL 1,43, LINE 1,00, LINES 12,62 CELLS, SIZE 51,86 CELLS, 
              ENGRAVED, COLOR IS 2, FILL-COLOR 16, FILL-PERCENT 100, 
              ID IS 25, BACKGROUND-LOW.
           03 ScreenPamp-La-1, Label, 
              COL 2,00, LINE 1,46, LINES 1,08 CELLS, SIZE 51,00 CELLS, 
              COLOR IS 194, FONT IS Medium-Font, ID IS 42, 
              LABEL-OFFSET 0, 
              TITLE "Modification PAMP - PRMP".
           03 ScreenPamp-La-M1, Label, 
              COL 3,86, LINE 5,69, LINES 1,31 CELLS, SIZE 9,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 3, LABEL-OFFSET 0, 
              TRANSPARENT.
           03 ScreenPamp-La-M, Label, 
              COL 3,86, LINE 8,31, LINES 1,31 CELLS, SIZE 9,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 4, LABEL-OFFSET 0, 
              TRANSPARENT.
           03 ScreenPamp-Pb-Mod-M1, Push-Button, 
              COL 48,71, LINE 5,38, LINES 16, SIZE 16, 
              BITMAP-HANDLE MODIFIE16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 2025, ID IS 5, 
              TITLE "Modifier PAMP et PRMP du mois -1 ", 
              EVENT PROCEDURE ScreenPamp-Pb-Mod-M1-Event-Proc.
           03 ScreenPamp-La-2, Label, 
              COL 20,00, LINE 3,77, LINES 1,23 CELLS, SIZE 5,71 CELLS, 
              COLOR IS 2, FONT IS Large-Font, ID IS 43, LABEL-OFFSET 0, 
              TITLE "PAMP", TRANSPARENT.
           03 ScreenPamp-Ef-PAMP1, Entry-Field, 
              COL 14,43, LINE 5,38, LINES 1,77 CELLS, SIZE 16,14 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 1, RIGHT, 
              AFTER PROCEDURE ScreenPamp-Ef-PAMP1-Aft-Procedure.
           03 ScreenPamp-Ef-PRMP1, Entry-Field, 
              COL 31,71, LINE 5,38, LINES 1,77 CELLS, SIZE 16,14 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 2, RIGHT, 
              AFTER PROCEDURE ScreenPamp-Ef-PRMP1-Aft-Procedure.
           03 ScreenPamp-Ef-PAMP, Entry-Field, 
              COL 14,43, LINE 8,15, LINES 1,77 CELLS, SIZE 16,14 CELLS, 
              3-D, COLOR IS 2, ID IS 44, RIGHT, 
              AFTER PROCEDURE ScreenPamp-Ef-PAMP-Aft-Procedure.
           03 ScreenPamp-Ef-PRMP, Entry-Field, 
              COL 31,71, LINE 8,15, LINES 1,77 CELLS, SIZE 16,14 CELLS, 
              3-D, COLOR IS 2, ID IS 46, RIGHT, 
              AFTER PROCEDURE ScreenPamp-Ef-PRMP-Aft-Procedure.
           03 ScreenPamp-La-2a, Label, 
              COL 36,57, LINE 3,77, LINES 1,23 CELLS, SIZE 6,00 CELLS, 
              COLOR IS 2, FONT IS Large-Font, ID IS 45, LABEL-OFFSET 0, 
              TITLE "PRMP", TRANSPARENT.
           03 ScreenPamp-Pb-VALIDER, Push-Button, 
              COL 43,14, LINE 10,54, LINES 24, SIZE 24, 
              BITMAP-HANDLE VALIDER24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 4020, ID IS 40, 
              TITLE "Valider".
           03 ScreenPamp-Pb-ANNULER, Push-Button, 
              COL 47,71, LINE 10,54, LINES 24, SIZE 24, 
              BITMAP-HANDLE ANNULER24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 4010, ID IS 41, 
              TITLE "Annuler".
       01 ScreenImport.
           03 ScreenImpo-Fr-1, Frame, 
              COL 1,29, LINE 1,08, LINES 18,15 CELLS, SIZE 65,43 CELLS, 
              ENGRAVED, COLOR IS 514, FILL-COLOR 16, FILL-PERCENT 100, 
              FULL-HEIGHT, ID IS 4, BACKGROUND-LOW.
           03 ScreenImpo-Fr-2, Frame, 
              COL 2,86, LINE 8,38, LINES 4,92 CELLS, SIZE 61,43 CELLS, 
              ENGRAVED, COLOR IS 2, ID IS 6, 
              TITLE "Format du fichier", TITLE-POSITION 2, 
              BACKGROUND-LOW.
           03 ScreenImpo-La-DesFic, Label, 
              COL 3,43, LINE 9,54, LINES 3,15 CELLS, SIZE 60,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 7, LABEL-OFFSET 0, 
              TRANSPARENT.
           03 ScreenImpo-Ef-FIC, Entry-Field, 
              COL 10,86, LINE 6,08, LINES 1,62 CELLS, SIZE 49,29 CELLS, 
              3-D, COLOR IS 2, ID IS 8, VALUE W-FIC.
           03 ScreenImpo-Pb-FIC, Push-Button, 
              COL 60,57, LINE 5,92, LINES 16, SIZE 16, 
              BITMAP-HANDLE ZOOMxxx16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1080, ID IS 9, 
              TITLE "Liste des fichiers".
           03 ScreenImpo-Pb-Import, Push-Button, 
              COL 57,43, LINE 1,23, LINES 24, SIZE 24, 
              BITMAP-HANDLE ENGRDOU24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 1083, ID IS 12, NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Import".
           03 ScreenImpo-La-1, Label, 
              COL 5,71, LINE 13,92, LINES 1,15 CELLS, SIZE 9,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 10, LABEL-OFFSET 0, 
              TITLE "Nombre lus", TRANSPARENT.
           03 ScreenImpo-La-1a, Label, 
              COL 5,71, LINE 15,69, LINES 1,15 CELLS, SIZE 12,71 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 13, LABEL-OFFSET 0, 
              TITLE "Nombre mis à jour", TRANSPARENT.
           03 ScreenImpo-La-1aa, Label, 
              COL 5,71, LINE 17,46, LINES 1,15 CELLS, SIZE 12,71 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 14, LABEL-OFFSET 0, 
              TITLE "Nombre erreurs", TRANSPARENT.
           03 ScreenImpo-Ef-LU, Entry-Field, 
              COL 19,29, LINE 13,69, LINES 1,38 CELLS, SIZE 9,14 CELLS, 
              3-D, COLOR IS 2, ID IS 15, READ-ONLY.
           03 ScreenImpo-Ef-MAJ, Entry-Field, 
              COL 19,29, LINE 15,46, LINES 1,38 CELLS, SIZE 9,14 CELLS, 
              3-D, COLOR IS 2, ID IS 16, READ-ONLY.
           03 ScreenImpo-Ef-ERR, Entry-Field, 
              COL 19,29, LINE 17,23, LINES 1,38 CELLS, SIZE 9,14 CELLS, 
              3-D, COLOR IS 2, ID IS 17, READ-ONLY.
           03 ScreenImpo-La-1b, Label, 
              COL 3,29, LINE 2,31, LINES 1,15 CELLS, SIZE 6,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 1, LABEL-OFFSET 0, 
              TITLE "Import ", TRANSPARENT.
           03 ScreenImpo-Rb-IMP1, Radio-Button, 
              COL 10,86, LINE 2,31, LINES 1,23 CELLS, SIZE 22,29 CELLS, 
              COLOR IS 514, EXCEPTION-VALUE 1086, FONT IS Small-Font, 
              GROUP 1, GROUP-VALUE 1, ID IS 2, 
              TITLE "Stock mini - maxi", VALUE W-IMP, 
              EVENT PROCEDURE ScreenImpo-Rb-IMP1-Event-Proc.
           03 ScreenImpo-Rb-IMP2, Radio-Button, 
              COL 10,86, LINE 3,77, LINES 1,23 CELLS, SIZE 22,29 CELLS, 
              COLOR IS 514, EXCEPTION-VALUE 1085, FONT IS Small-Font, 
              GROUP 1, GROUP-VALUE 2, ID IS 3, 
              TITLE "Périodicité d'inventaire", VALUE W-IMP, 
              EVENT PROCEDURE ScreenImpo-Rb-IMP2-Event-Proc.
           03 ScreenImpo-La-1ab, Label, 
              COL 3,29, LINE 6,15, LINES 1,15 CELLS, SIZE 6,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 5, LABEL-OFFSET 0, 
              TITLE "Fichier", TRANSPARENT.

      *{Bench}end

      *{Bench}linkpara
       PROCEDURE DIVISION USING LK-ZONE-PALM, LK-ART-ASA.
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
           COPY RESOURCE "RAFRAIC24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "RAFRAIC24.JPG", GIVING 
              RAFRAIC24-JPG
           COPY RESOURCE "MODIFIE24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "MODIFIE24.JPG", GIVING 
              MODIFIE24-JPG
           COPY RESOURCE "ENGRDOU24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ENGRDOU24.JPG", GIVING 
              ENGRDOU24-JPG
           COPY RESOURCE "TRIERAE10.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "TRIERAE10.JPG", GIVING 
              TRIERAE10-JPG
           COPY RESOURCE "TRIERAD10.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "TRIERAD10.JPG", GIVING 
              TRIERAD10-JPG
           COPY RESOURCE "TRIERDE10.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "TRIERDE10.JPG", GIVING 
              TRIERDE10-JPG
           COPY RESOURCE "TRIERDD10.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "TRIERDD10.JPG", GIVING 
              TRIERDD10-JPG
           COPY RESOURCE "ZOOMxxx10.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ZOOMxxx10.BMP", GIVING 
              ZOOMxxx10-BMP
           COPY RESOURCE "CBCHECK13.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "CBCHECK13.JPG", GIVING 
              CBCHECK13-JPG
           COPY RESOURCE "CBUNCHK13.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "CBUNCHK13.JPG", GIVING 
              CBUNCHK13-JPG
           COPY RESOURCE "IMPORTx24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "IMPORTx24.JPG", GIVING 
              IMPORTx24-JPG
           COPY RESOURCE "ZOOMxxx12.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ZOOMxxx12.BMP", GIVING 
              ZOOMxxx12-BMP
           COPY RESOURCE "TOUTCOC24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "TOUTCOC24.JPG", GIVING 
              TOUTCOC24-JPG
           COPY RESOURCE "TOUTDEC24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "TOUTDEC24.JPG", GIVING 
              TOUTDEC24-JPG
           COPY RESOURCE "INVSELE24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "INVSELE24.JPG", GIVING 
              INVSELE24-JPG
           COPY RESOURCE "VALIDER24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "VALIDER24.JPG", GIVING 
              VALIDER24-JPG
           COPY RESOURCE "ANNULER24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ANNULER24.JPG", GIVING 
              ANNULER24-JPG
           COPY RESOURCE "MODIFIE16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "MODIFIE16.BMP", GIVING 
              MODIFIE16-BMP
           COPY RESOURCE "ZOOMxxx16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ZOOMxxx16.BMP", GIVING 
              ZOOMxxx16-BMP
           .

       Acu-Init-Popup.
           PERFORM Acu-Screen1-Mn-1-Menu
           MOVE Menu-Handle TO Screen1-Mn-1-Handle
           PERFORM Acu-Screen1-Mn-2-Menu
           MOVE Menu-Handle TO Screen1-Mn-2-Handle
           PERFORM Acu-Screen1-Mn-3-Menu
           MOVE Menu-Handle TO Screen1-Mn-3-Handle
           PERFORM Acu-Screen1-Mn-4-Menu
           MOVE Menu-Handle TO Screen1-Mn-4-Handle
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
           IF RAFRAIC24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY RAFRAIC24-JPG
              MOVE 0 TO RAFRAIC24-JPG
           END-IF
           IF MODIFIE24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY MODIFIE24-JPG
              MOVE 0 TO MODIFIE24-JPG
           END-IF
           IF ENGRDOU24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ENGRDOU24-JPG
              MOVE 0 TO ENGRDOU24-JPG
           END-IF
           IF TRIERAE10-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY TRIERAE10-JPG
              MOVE 0 TO TRIERAE10-JPG
           END-IF
           IF TRIERAD10-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY TRIERAD10-JPG
              MOVE 0 TO TRIERAD10-JPG
           END-IF
           IF TRIERDE10-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY TRIERDE10-JPG
              MOVE 0 TO TRIERDE10-JPG
           END-IF
           IF TRIERDD10-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY TRIERDD10-JPG
              MOVE 0 TO TRIERDD10-JPG
           END-IF
           IF ZOOMxxx10-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ZOOMxxx10-BMP
              MOVE 0 TO ZOOMxxx10-BMP
           END-IF
           IF CBCHECK13-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY CBCHECK13-JPG
              MOVE 0 TO CBCHECK13-JPG
           END-IF
           IF CBUNCHK13-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY CBUNCHK13-JPG
              MOVE 0 TO CBUNCHK13-JPG
           END-IF
           IF IMPORTx24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY IMPORTx24-JPG
              MOVE 0 TO IMPORTx24-JPG
           END-IF
           IF ZOOMxxx12-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ZOOMxxx12-BMP
              MOVE 0 TO ZOOMxxx12-BMP
           END-IF
           IF TOUTCOC24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY TOUTCOC24-JPG
              MOVE 0 TO TOUTCOC24-JPG
           END-IF
           IF TOUTDEC24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY TOUTDEC24-JPG
              MOVE 0 TO TOUTDEC24-JPG
           END-IF
           IF INVSELE24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY INVSELE24-JPG
              MOVE 0 TO INVSELE24-JPG
           END-IF
           IF VALIDER24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY VALIDER24-JPG
              MOVE 0 TO VALIDER24-JPG
           END-IF
           IF ANNULER24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ANNULER24-JPG
              MOVE 0 TO ANNULER24-JPG
           END-IF
           IF MODIFIE16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY MODIFIE16-BMP
              MOVE 0 TO MODIFIE16-BMP
           END-IF
           IF ZOOMxxx16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ZOOMxxx16-BMP
              MOVE 0 TO ZOOMxxx16-BMP
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

       Acu-Screen3-Routine.
      *    Before-Routine
           PERFORM Acu-Screen3-Scrn
           PERFORM Acu-Screen3-Proc
      *    After-Routine
           .

       Acu-Screen4-Routine.
      *    Before-Routine
           PERFORM Acu-Screen4-Scrn
           PERFORM Acu-Screen4-Proc
      *    After-Routine
           .

       Acu-ScreenPamp-Routine.
      *    Before-Routine
           PERFORM Acu-ScreenPamp-Scrn
           PERFORM Acu-ScreenPamp-Proc
      *    After-Routine
           .

       Acu-ScreenImport-Routine.
      *    Before-Routine
           PERFORM Acu-ScreenImport-Scrn
           PERFORM Acu-ScreenImport-Proc
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

       Acu-Screen3-Scrn.
           PERFORM Acu-Screen3-Create-Win
           PERFORM Acu-Screen3-Init-Data
           .

       Acu-Screen4-Scrn.
           PERFORM Acu-Screen4-Create-Win
           PERFORM Acu-Screen4-Init-Data
           .

       Acu-ScreenPamp-Scrn.
           PERFORM Acu-ScreenPamp-Create-Win
           PERFORM Acu-ScreenPamp-Init-Data
           .

       Acu-ScreenImport-Scrn.
           PERFORM Acu-ScreenImport-Create-Win
           PERFORM Acu-ScreenImport-Init-Data
           .

       Acu-Screen1-Create-Win.
           PERFORM Screen1-Bef-Create
      * display screen
              DISPLAY Floating GRAPHICAL WINDOW
                 LINES 30,00, SIZE 114,29, CELL HEIGHT 13, 
                 CELL WIDTH 7, COLOR IS 65793, LABEL-OFFSET 20, 
                 LINK TO THREAD, MODELESS, NO SCROLL, WITH SYSTEM MENU, 
                 TITLE ZONE-TITRE, TITLE-BAR, USER-GRAY, USER-WHITE, 
                 VISIBLE 0, NO WRAP, 
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
           PERFORM Screen2-Bef-Create
      * display screen
              DISPLAY Floating GRAPHICAL WINDOW
                 LINES 6,23, SIZE 16,57, CELL HEIGHT 13, CELL WIDTH 7, 
                 COLOR IS 65793, LABEL-OFFSET 20, LINK TO THREAD, 
                 NO SCROLL, USER-GRAY, USER-WHITE, NO WRAP, 
                 EVENT PROCEDURE Screen2-Event-Proc, 
                 HANDLE IS Screen2-Handle
      * toolbar
           DISPLAY Screen2 UPON Screen2-Handle
      *    After-Create
           .

       Acu-Screen3-Create-Win.
           PERFORM Screen3-Bef-Create
      * display screen
              DISPLAY Floating GRAPHICAL WINDOW
                 LINES 6,15, SIZE 16,57, CELL HEIGHT 13, CELL WIDTH 7, 
                 COLOR IS 65793, LABEL-OFFSET 20, LINK TO THREAD, 
                 NO SCROLL, USER-GRAY, USER-WHITE, NO WRAP, 
                 EVENT PROCEDURE Screen3-Event-Proc, 
                 HANDLE IS Screen3-Handle
      * toolbar
           DISPLAY Screen3 UPON Screen3-Handle
      *    After-Create
           .

       Acu-Screen4-Create-Win.
      *    Before-Create
      * display screen
              DISPLAY Floating GRAPHICAL WINDOW
                 LINES 35,38, SIZE 71,86, CELL HEIGHT 13, CELL WIDTH 7, 
                 COLOR IS 65793, LABEL-OFFSET 0, LINK TO THREAD, 
                 MODELESS, NO SCROLL, TITLE ZONE-TITRE, TITLE-BAR, 
                 USER-GRAY, USER-WHITE, NO WRAP, 
                 EVENT PROCEDURE Screen4-Event-Proc, 
                 HANDLE IS Screen4-Handle
      * toolbar
      * status-bar
           DISPLAY STATUS-BAR
              GRIP, 
              HANDLE IS Screen4-St-1-Handle
           DISPLAY Screen4 UPON Screen4-Handle
      *    After-Create
           .

       Acu-ScreenPamp-Create-Win.
      *    Before-Create
      * display screen
              DISPLAY Floating GRAPHICAL WINDOW
                 LINES 12,85, SIZE 52,43, CELL HEIGHT 13, CELL WIDTH 7, 
                 COLOR IS 65793, LABEL-OFFSET 0, LINK TO THREAD, 
                 MODELESS, NO SCROLL, 
                 TITLE "Paramètres Gestion de Stock", TITLE-BAR, 
                 USER-GRAY, USER-WHITE, NO WRAP, 
                 EVENT PROCEDURE ScreenPamp-Event-Proc, 
                 HANDLE IS ScreenPamp-Handle
      * toolbar
           DISPLAY ScreenPamp UPON ScreenPamp-Handle
      *    After-Create
           .

       Acu-ScreenImport-Create-Win.
      *    Before-Create
      * display screen
              DISPLAY Floating GRAPHICAL WINDOW
                 LINES 18,31, SIZE 66,14, CELL HEIGHT 13, CELL WIDTH 7, 
                 COLOR IS 65793, LABEL-OFFSET 0, LINK TO THREAD, 
                 MODELESS, NO SCROLL, WITH SYSTEM MENU, 
                 TITLE "Import données stock", TITLE-BAR, USER-GRAY, 
                 USER-WHITE, NO WRAP, 
                 EVENT PROCEDURE ScreenImport-Event-Proc, 
                 HANDLE IS ScreenImport-Handle
      * toolbar
           DISPLAY ScreenImport UPON ScreenImport-Handle
      *    After-Create
           .

       Acu-Screen1-Init-Data.
      *    Before-Initdata
           PERFORM Acu-Screen1-DaGd-1-Content
           PERFORM Screen1-AfterInitData
           .

       Acu-Screen2-Init-Data.
      *    Before-Initdata
           PERFORM Acu-Screen2-Gd-1-Content
           PERFORM Screen2-AfterInitData
           .

       Acu-Screen3-Init-Data.
      *    Before-Initdata
           PERFORM Acu-Screen3-Gd-1-Content
           PERFORM Screen3-AfterInitData
           .

       Acu-Screen4-Init-Data.
           PERFORM Screen4-Bef-Initdata
           PERFORM Acu-Screen4-Gd-1-Content
           PERFORM Acu-Screen4-Cm-TETI-Content
           PERFORM Screen4-Aft-Initdata
           .

       Acu-ScreenPamp-Init-Data.
      *    Before-Initdata
           PERFORM ScreenPamp-Aft-Initdata
           .

       Acu-ScreenImport-Init-Data.
      *    Before-Initdata
           PERFORM ScreenImport-Aft-Initdata
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
           DESTROY Screen2-Handle
           INITIALIZE Key-Status
           .
      * Screen3
       Acu-Screen3-Proc.
           PERFORM UNTIL Exit-Pushed
              ACCEPT Screen3  
                 ON EXCEPTION PERFORM Acu-Screen3-Evaluate-Func
              END-ACCEPT
           END-PERFORM
           DESTROY Screen3-Handle
           INITIALIZE Key-Status
           .
      * Screen4
       Acu-Screen4-Proc.
           PERFORM UNTIL Exit-Pushed
              ACCEPT Screen4  
                 ON EXCEPTION PERFORM Acu-Screen4-Evaluate-Func
              END-ACCEPT
              EVALUATE TRUE
      * Screen4-Pb-LETI Link To
              WHEN Key-Status = 1084
                 PERFORM Screen4-Pb-LETI-Link
              END-EVALUATE
           END-PERFORM
           DESTROY Screen4-Handle
           INITIALIZE Key-Status
           .
      * ScreenPamp
       Acu-ScreenPamp-Proc.
           PERFORM UNTIL Exit-Pushed
              ACCEPT ScreenPamp  
                 ON EXCEPTION PERFORM Acu-ScreenPamp-Evaluate-Func
              END-ACCEPT
           END-PERFORM
           DESTROY ScreenPamp-Handle
           INITIALIZE Key-Status
           .
      * ScreenImport
       Acu-ScreenImport-Proc.
           PERFORM UNTIL Exit-Pushed
              ACCEPT ScreenImport  
                 ON EXCEPTION PERFORM Acu-ScreenImport-Evaluate-Func
              END-ACCEPT
           END-PERFORM
           DESTROY ScreenImport-Handle
           INITIALIZE Key-Status
           .

      * Screen1-DaGd-1
       Acu-Screen1-DaGd-1-Content.
      * Cells Settings
           MODIFY Screen1-DaGd-1, X = 1, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "Agence", 
              BITMAP = TRIERAE10-JPG, BITMAP-TRAILING = 1, 
              BITMAP-NUMBER = 1, BITMAP-WIDTH = 16, 
           MODIFY Screen1-DaGd-1, X = 2, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "G/Stck", 
              BITMAP = TRIERAD10-JPG, BITMAP-TRAILING = 1, 
              BITMAP-NUMBER = 1, BITMAP-WIDTH = 16, 
           MODIFY Screen1-DaGd-1, X = 3, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "Casier", 
              BITMAP = TRIERDE10-JPG, BITMAP-TRAILING = 1, 
              BITMAP-NUMBER = 1, BITMAP-WIDTH = 16, 
           MODIFY Screen1-DaGd-1, X = 4, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "Etiq.", 
              BITMAP = TRIERDD10-JPG, BITMAP-TRAILING = 1, 
              BITMAP-NUMBER = 1, BITMAP-WIDTH = 16, 
           MODIFY Screen1-DaGd-1, X = 5, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "Réa.", 
              BITMAP = TRIERDE10-JPG, BITMAP-TRAILING = 1, 
              BITMAP-NUMBER = 1, BITMAP-WIDTH = 16, 
           MODIFY Screen1-DaGd-1, X = 6, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "Min", 
              BITMAP = TRIERAD10-JPG, BITMAP-TRAILING = 1, 
              BITMAP-NUMBER = 1, BITMAP-WIDTH = 16, 
           MODIFY Screen1-DaGd-1, X = 7, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "Max", 
              BITMAP = TRIERAE10-JPG, BITMAP-TRAILING = 1, 
              BITMAP-NUMBER = 1, BITMAP-WIDTH = 16, 
           MODIFY Screen1-DaGd-1, X = 8, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "Date", 
              BITMAP = TRIERAE10-JPG, BITMAP-TRAILING = 1, 
              BITMAP-NUMBER = 1, BITMAP-WIDTH = 16, 
           MODIFY Screen1-DaGd-1, X = 9, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "Inv.", 
              BITMAP = TRIERAE10-JPG, BITMAP-TRAILING = 1, 
              BITMAP-NUMBER = 1, BITMAP-WIDTH = 16, 
           MODIFY Screen1-DaGd-1, X = 10, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "PAMP", 
              BITMAP = TRIERAE10-JPG, BITMAP-TRAILING = 1, 
              BITMAP-NUMBER = 1, BITMAP-WIDTH = 16, 
           MODIFY Screen1-DaGd-1, X = 11, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "Observations", 
              BITMAP = TRIERAE10-JPG, BITMAP-TRAILING = 1, 
              BITMAP-NUMBER = 1, BITMAP-WIDTH = 16, 
           MODIFY Screen1-DaGd-1, X = 12, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, 
           MODIFY Screen1-DaGd-1, X = 13, Y = 1, CELL-COLOR = 112, 
      * Columns' Setting
           MODIFY Screen1-DaGd-1, X = 1, COLUMN-COLOR = 2, X = 1, 
              COLUMN-FONT = Small-Font, 
           MODIFY Screen1-DaGd-1, X = 2, COLUMN-COLOR = 2, X = 2, 
              COLUMN-FONT = Small-Font, 
           MODIFY Screen1-DaGd-1, X = 3, COLUMN-COLOR = 2, X = 3, 
              COLUMN-FONT = Small-Font, 
           MODIFY Screen1-DaGd-1, X = 4, COLUMN-COLOR = 2, X = 4, 
              COLUMN-FONT = Small-Font, 
           MODIFY Screen1-DaGd-1, X = 5, COLUMN-COLOR = 2, X = 5, 
              COLUMN-FONT = Small-Font, 
           MODIFY Screen1-DaGd-1, X = 6, COLUMN-COLOR = 2, X = 6, 
              COLUMN-FONT = Small-Font, 
           MODIFY Screen1-DaGd-1, X = 7, COLUMN-COLOR = 2, X = 7, 
              COLUMN-FONT = Small-Font, 
           MODIFY Screen1-DaGd-1, X = 8, COLUMN-COLOR = 2, X = 8, 
              COLUMN-FONT = Small-Font, 
           MODIFY Screen1-DaGd-1, X = 9, X = 9, 
              COLUMN-FONT = Small-Font, 
           MODIFY Screen1-DaGd-1, X = 10, COLUMN-COLOR = 2, X = 10, 
              COLUMN-FONT = Small-Font, 
           MODIFY Screen1-DaGd-1, X = 11, COLUMN-COLOR = 2, X = 11, 
              COLUMN-FONT = Small-Font, 
           MODIFY Screen1-DaGd-1, X = 12, COLUMN-COLOR = 2, X = 12, 
              COLUMN-FONT = Small-Font, 
           MODIFY Screen1-DaGd-1, X = 13, X = 13, 
              COLUMN-FONT = Small-Font, 
           .

      * Screen2-Gd-1
       Acu-Screen2-Gd-1-Content.
      * Cells Settings
           MODIFY Screen2-Gd-1, X = 1, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "Gestion Stock", 
           MODIFY Screen2-Gd-1, X = 2, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, 
      * Columns' Setting
           MODIFY Screen2-Gd-1, X = 1, COLUMN-COLOR = 2, X = 1, 
              COLUMN-FONT = Default-Font, 
           MODIFY Screen2-Gd-1, X = 2, COLUMN-COLOR = 2, X = 2, 
              COLUMN-FONT = Small-Font, 
           .

      * Screen3-Gd-1
       Acu-Screen3-Gd-1-Content.
      * Cells Settings
           MODIFY Screen3-Gd-1, X = 1, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = 
              "Réapprovisionnement", 
           MODIFY Screen3-Gd-1, X = 2, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, 
      * Columns' Setting
           MODIFY Screen3-Gd-1, X = 1, COLUMN-COLOR = 2, X = 1, 
              COLUMN-FONT = Default-Font, 
           MODIFY Screen3-Gd-1, X = 2, COLUMN-COLOR = 2, X = 2, 
              COLUMN-FONT = Small-Font, 
           .

      * Screen4-Gd-1
       Acu-Screen4-Gd-1-Content.
      * Cells Settings
           MODIFY Screen4-Gd-1, X = 1, Y = 1, CELL-FONT = Small-Font, 
              CELL-DATA = "Agence", 
           MODIFY Screen4-Gd-1, X = 2, Y = 1, CELL-FONT = Small-Font, 
              CELL-DATA = "A créer", 
           MODIFY Screen4-Gd-1, X = 3, Y = 1, CELL-FONT = Small-Font, 
              CELL-DATA = "A modifier", 
           .

      * Screen4-Cm-TETI
       Acu-Screen4-Cm-TETI-Content.
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
      * Screen1-Pb-Refresh Link To
              WHEN Key-Status = 1001
                 PERFORM Screen1-Pb-Refresh-LinkTo
      * Screen1-Pb-Modify Link To
              WHEN Key-Status = 1002
                 PERFORM Screen1-Pb-Modify-LinkTo
      * Screen1-Pb-MAJ Link To
              WHEN Key-Status = 1010
                 PERFORM Screen1-Pb-MAJ-Link
      * MI-EtiquetteClassiqueLaser Link To
              WHEN Key-Status = 1050
                 PERFORM Screen1-Mn-1-MI-EtiquetteClassique-Link
      * MI-EtiquetteCodeBarre Link To
              WHEN Key-Status = 1051
                 PERFORM Screen1-Mn-1-MI-EtiquetteCodeBarre-Link
      * MI-ModificationPAMP Link To
              WHEN Key-Status = 1003
                 PERFORM Screen1-Mn-1-MI-ModificationPAMP-Link
      * MI-Géréenstock Link To
              WHEN Key-Status = 1004
                 PERFORM Screen1-Mn-3-MI-Géréenstock-Link
      * MI-Nongéréenstock Link To
              WHEN Key-Status = 1005
                 PERFORM Screen1-Mn-3-MI-Nongéréenstock-Link
      * MI-Dépotvente Link To
              WHEN Key-Status = 1006
                 PERFORM Screen1-Mn-3-MI-Dépotvente-Link
      * MI-Oui Link To
              WHEN Key-Status = 1007
                 PERFORM Screen1-Mn-4-MI-Oui-Link
      * MI-Non Link To
              WHEN Key-Status = 1008
                 PERFORM Screen1-Mn-4-MI-Non-Link
      * MI-MiniMaxiFWilson Link To
              WHEN Key-Status = 1009
                 PERFORM Screen1-Mn-4-MI-MiniMaxiFWilson-Link
      * Screen1-Pb-Import Link To
              WHEN Key-Status = 1081
                 PERFORM Screen1-Pb-Import-Link
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

      * Screen3
       Acu-Screen3-Evaluate-Func.
           EVALUATE TRUE
              WHEN Exit-Pushed
                 PERFORM Acu-Screen3-Exit
              WHEN Event-Occurred
                 IF Event-Type = Cmd-Close
                    PERFORM Acu-Screen3-Exit
                 END-IF
           END-EVALUATE
           MOVE 1 TO Accept-Control
           .

      * Screen4
       Acu-Screen4-Evaluate-Func.
           EVALUATE TRUE
              WHEN Exit-Pushed
                 PERFORM Acu-Screen4-Exit
              WHEN Event-Occurred
                 IF Event-Type = Cmd-Close
                    PERFORM Acu-Screen4-Exit
                 END-IF
      * Screen4-Cb-MIN Link To
              WHEN Key-Status = 4041
                 PERFORM Screen4-Cb-MIN-Link
      * Screen4-Cb-CAS Link To
              WHEN Key-Status = 4040
                 PERFORM Screen4-Cb-CAS-Link
      * Screen4-Pb-C1 Link To
              WHEN Key-Status = 4030
                 PERFORM Screen4-Pb-C1-Link
      * Screen4-Pb-D1 Link To
              WHEN Key-Status = 4031
                 PERFORM Screen4-Pb-D1-Link
      * Screen4-Pb-I1 Link To
              WHEN Key-Status = 4032
                 PERFORM Screen4-Pb-I1-Link
      * Screen4-Pb-C2 Link To
              WHEN Key-Status = 4033
                 PERFORM Screen4-Pb-C2-Link
      * Screen4-Pb-D2 Link To
              WHEN Key-Status = 4034
                 PERFORM Screen4-Pb-D2-Link
      * Screen4-Pb-I2 Link To
              WHEN Key-Status = 4035
                 PERFORM Screen4-Pb-I2-Link
      * Screen4-Pb-VALIDER Link To
              WHEN Key-Status = 4020
                 PERFORM Screen4-Pb-VALIDER-Link
      * Screen4-Pb-ANNULER Link To
              WHEN Key-Status = 4010
                 PERFORM Screen4-Pb-ANNULER-Link
           END-EVALUATE
           MOVE 1 TO Accept-Control
           .

      * ScreenPamp
       Acu-ScreenPamp-Evaluate-Func.
           EVALUATE TRUE
              WHEN Exit-Pushed
                 PERFORM Acu-ScreenPamp-Exit
              WHEN Event-Occurred
                 IF Event-Type = Cmd-Close
                    PERFORM Acu-ScreenPamp-Exit
                 END-IF
      * ScreenPamp-Pb-Mod-M1 Link To
              WHEN Key-Status = 2025
                 PERFORM ScreenPamp-Pb-Mod-M1-Ev-Cmd-Clicked
      * ScreenPamp-Pb-VALIDER Link To
              WHEN Key-Status = 4020
                 PERFORM ScreenPamp-Pb-VALIDER-Link
      * ScreenPamp-Pb-ANNULER Link To
              WHEN Key-Status = 4010
                 PERFORM ScreenPamp-Pb-ANNULER-Link
           END-EVALUATE
           MOVE 1 TO Accept-Control
           .

      * ScreenImport
       Acu-ScreenImport-Evaluate-Func.
           EVALUATE TRUE
              WHEN Exit-Pushed
                 PERFORM Acu-ScreenImport-Exit
              WHEN Event-Occurred
                 IF Event-Type = Cmd-Close
                    PERFORM Acu-ScreenImport-Exit
                 END-IF
      * ScreenImpo-Pb-FIC Link To
              WHEN Key-Status = 1080
                 PERFORM ScreenImpo-Pb-FIC-Link
      * ScreenImpo-Pb-Import Link To
              WHEN Key-Status = 1083
                 PERFORM ScreenImpo-Pb-Import-Link
      * ScreenImpo-Rb-IMP1 Link To
              WHEN Key-Status = 1086
                 PERFORM ScreenImpo-Rb-IMP1-Link
      * ScreenImpo-Rb-IMP2 Link To
              WHEN Key-Status = 1085
                 PERFORM ScreenImpo-Rb-IMP2-Link
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

       Acu-Screen4-Display-Status-Msg.
           MODIFY Screen4-St-1-Handle
              GRIP, 
           .

       Acu-Screen4-Clear-Status-Msg.
           PERFORM Acu-Screen4-Display-Status-Msg
           .

       Acu-Close-Files.
      *    Before-Close
      *    After-Close
           .

      * COBCAP

      * MXPARAM

      * MXART

      * MXAGENCE

      * MXARTSA

      * XMLOut-File

      * MXFOU

      * MXFAMART

       Acu-Screen1-Exit.
           SET Exit-Pushed TO TRUE
           .

       Acu-Screen2-Exit.
           SET Exit-Pushed TO TRUE
           .

       Acu-Screen3-Exit.
           SET Exit-Pushed TO TRUE
           .

       Acu-Screen4-Exit.
           SET Exit-Pushed TO TRUE
           .

       Acu-ScreenPamp-Exit.
           SET Exit-Pushed TO TRUE
           .

       Acu-ScreenImport-Exit.
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
              "Etiquette Classique ", 1050
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, 
              "Etiquette Code Barre", 1051
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
              "Modification PAMP", 1003
           .

       Acu-Screen1-Mn-2-Exit.
           MOVE ZERO TO Return-Code.

      * Screen1-Mn-3
       Acu-Screen1-Mn-3-Menu.
           PERFORM Acu-Screen1-Mn-3
              THRU Acu-Screen1-Mn-3-Exit.

       Acu-Screen1-Mn-3.
           CALL "W$MENU" USING Wmenu-New-Popup GIVING Menu-Handle
           IF Menu-Handle = ZERO
              GO TO Acu-Screen1-Mn-3-Exit
           END-IF
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, 
              "Géré en stock ", 1004
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, 
              "Non géré en stock", 1005
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, 
              "Dépot vente", 1006
           .

       Acu-Screen1-Mn-3-Exit.
           MOVE ZERO TO Return-Code.

      * Screen1-Mn-4
       Acu-Screen1-Mn-4-Menu.
           PERFORM Acu-Screen1-Mn-4
              THRU Acu-Screen1-Mn-4-Exit.

       Acu-Screen1-Mn-4.
           CALL "W$MENU" USING Wmenu-New-Popup GIVING Menu-Handle
           IF Menu-Handle = ZERO
              GO TO Acu-Screen1-Mn-4-Exit
           END-IF
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, "Oui", 1007
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, "Non", 1008
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, 
              "Mini-Maxi /F.Wilson", 1009
           .

       Acu-Screen1-Mn-4-Exit.
           MOVE ZERO TO Return-Code.


       Screen1-Event-Proc.
           .

       Screen1-DaGd-1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Begin-Entry
              PERFORM Screen1-DaGd-1-Ev-Msg-Begin-Entry
           WHEN Msg-Bitmap-Clicked
              PERFORM Screen1-DaGd-1-Ev-Msg-Bitmap-Clicked
           WHEN Msg-End-Drag
              PERFORM Screen1-DaGd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Finish-Entry
              PERFORM Screen1-DaGd-1-Ev-Msg-Finish-Entry
           WHEN Msg-Goto-Cell
              PERFORM Screen1-DaGd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell-Mouse
              PERFORM Screen1-DaGd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Grid-Rbutton-Down
              PERFORM Screen1-DaGd-1-Ev-Msg-Grid-Rbutton-Down
           WHEN Msg-Heading-Clicked
              PERFORM Screen1-DaGd-1-Ev-Msg-Heading-Clicked
           END-EVALUATE
           .

       Screen2-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Close
              PERFORM Screen2-Ev-Cmd-Close
           END-EVALUATE
           .

       Screen2-Gd-1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Begin-Entry
              PERFORM Screen2-Gd-1-Ev-Msg-Begin-Entry
           WHEN Msg-End-Drag
              PERFORM Screen2-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell
              PERFORM Screen2-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell-Mouse
              PERFORM Screen2-Gd-1-Ev-Msg-Goto-Cell
           END-EVALUATE
           .

       Screen3-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Close
              PERFORM Screen3-Ev-Cmd-Close
           END-EVALUATE
           .

       Screen3-Gd-1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Begin-Entry
              PERFORM Screen3-Gd-1-Ev-Msg-Begin-Entry
           WHEN Msg-End-Drag
              PERFORM Screen3-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell
              PERFORM Screen3-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell-Mouse
              PERFORM Screen3-Gd-1-Ev-Msg-Goto-Cell
           END-EVALUATE
           .

       Screen4-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Close
              PERFORM Screen4-Ev-Cmd-Close
           END-EVALUATE
           .

       Screen4-Rb-STO1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen4-Rb-STO1-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen4-Rb-STO2-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen4-Rb-STO2-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen4-Rb-STO3-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen4-Rb-STO3-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen4-Ef-ETI-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen4-Ef-ETI-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen4-Rb-REA1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen4-Rb-REA1-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen4-Rb-REA2-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen4-Rb-REA2-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen4-Rb-REA3-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              EVALUATE Event-Control-Id
              WHEN 16
                 PERFORM Screen4-Rb-REA3-Ev-Cmd-Clicked
              WHEN 48
                 PERFORM Screen4-Rb-REA4-Ev-Cmd-Clicked
              END-EVALUATE
           END-EVALUATE
           .

       Screen4-Ef-MIN-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen4-Ef-MIN-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen4-Ef-MAX-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen4-Ef-MIN-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen4-Ef-DAM-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen4-Ef-DAM-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen4-Cb-MIN-Event-Proc.
           .

       Screen4-Cb-CAS-Event-Proc.
           .

       Screen4-Gd-1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Begin-Entry
              PERFORM Screen4-Gd-1-Ev-Msg-Begin-Entry
           WHEN Msg-Goto-Cell-Mouse
              PERFORM Screen4-Gd-1-Ev-Msg-Goto-Cell-Mouse
           END-EVALUATE
           .

       Screen4-Cm-TETI-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Ntf-Selchange
              PERFORM Screen4-Cm-TETI-Ev-Ntf-Selchange
           END-EVALUATE
           .

       ScreenPamp-Event-Proc.
           .

       ScreenPamp-Pb-Mod-M1-Event-Proc.
           .

       ScreenImport-Event-Proc.
           .

       ScreenImpo-Rb-IMP1-Event-Proc.
           .

       ScreenImpo-Rb-IMP2-Event-Proc.
           .
      ***   start event editor code   ***
           COPY "W:/MISTRAL/COPY/ENVMIS.CBL".
           COPY "W:/mx/copy/numval.cbl".
120819     COPY "W:/mistral/copy/MisCentrefenetre.cbl".

       Init-BMP.
      *     COPY "../../MISTRAL/COPY/INITBMP.CBL"
      *          REPLACING =='CPYBMP'== BY =='USERxxx20.JPG'==,
      *                    ==CPYBMP== BY ==USERxxx20-JPG==.
      *     COPY "../../MISTRAL/COPY/INITBMP.CBL"
      *          REPLACING =='CPYBMP'== BY =='RAFRAIC24.JPG'==,
      *                    ==CPYBMP== BY ==RAFRAIC24-JPG==.
      *     COPY "../../MISTRAL/COPY/INITBMP.CBL"
      *          REPLACING =='CPYBMP'== BY =='MODIFIE24.JPG'==,
      *                    ==CPYBMP== BY ==MODIFIE24-JPG==.
      *     COPY "../../MISTRAL/COPY/INITBMP.CBL"
      *          REPLACING =='CPYBMP'== BY =='IMPRIME24.JPG'==,
      *                    ==CPYBMP== BY ==IMPRIME24-JPG==.
      *     COPY "../../MISTRAL/COPY/INITBMP.CBL"
      *          REPLACING =='CPYBMP'== BY =='QUITTER24.JPG'==,
      *                    ==CPYBMP== BY ==QUITTER24-JPG==.
      *     COPY "../../MISTRAL/COPY/INITBMP.CBL"
      *          REPLACING =='CPYBMP'== BY =='ENGRDOU24.JPG'==,
      *                    ==CPYBMP== BY ==ENGRDOU24-JPG==.
      *     COPY "../../MISTRAL/COPY/INITBMP.CBL"
      *          REPLACING =='CPYBMP'== BY =='TRIERAE10.JPG'==,
      *                    ==CPYBMP== BY ==TRIERAE10-JPG==.
      *     COPY "../../MISTRAL/COPY/INITBMP.CBL"
      *          REPLACING =='CPYBMP'== BY =='TRIERAD10.JPG'==,
      *                    ==CPYBMP== BY ==TRIERAD10-JPG==.
      *     COPY "../../MISTRAL/COPY/INITBMP.CBL"
      *          REPLACING =='CPYBMP'== BY =='TRIERDE10.JPG'==,
      *                    ==CPYBMP== BY ==TRIERDE10-JPG==.
      *     COPY "../../MISTRAL/COPY/INITBMP.CBL"
      *          REPLACING =='CPYBMP'== BY =='TRIERDD10.JPG'==,
      *                    ==CPYBMP== BY ==TRIERDD10-JPG==.
      *     COPY "../../MISTRAL/COPY/INITBMP.CBL"
      *          REPLACING =='CPYBMP'== BY =='VALIDER24.JPG'==,
      *                    ==CPYBMP== BY ==VALIDER24-JPG==.
      *     COPY "../../MISTRAL/COPY/INITBMP.CBL"
      *          REPLACING =='CPYBMP'== BY =='ANNULER24.JPG'==,
      *                    ==CPYBMP== BY ==ANNULER24-JPG==.
      *     COPY "../../MISTRAL/COPY/INITBMP.CBL"
      *          REPLACING =='CPYBMP'== BY =='CBCHECK13.JPG'==,
      *                    ==CPYBMP== BY ==CBCHECK13-JPG==.
      *     COPY "../../MISTRAL/COPY/INITBMP.CBL"
      *          REPLACING =='CPYBMP'== BY =='CBUNCHK13.JPG'==,
      *                    ==CPYBMP== BY ==CBUNCHK13-JPG==.
           .
       Open-File-Rtn.
           OPEN INPUT MXAGENCE
           PERFORM STAT

           OPEN I-O MXARTSA
           PERFORM STAT
           .
       Close-File-Rtn.
           CLOSE MXAGENCE
           CLOSE MXARTSA
           .
       Affiche-Grille.
      * Affiche la grille de sélection après l'avoir initialisé.
      * ---------------------------------------------------------------
           PERFORM Mode-Interrogation
           IF ANNUL-PALM = "X" THEN
               MOVE 0 TO isDeleteVisible
           ELSE
               MOVE 1 TO isDeleteVisible
           END-IF
           
      * Remise à zéro de la grille...
           MODIFY Screen1-DaGd-1, MASS-UPDATE = 1, RESET-GRID = 1
           PERFORM Acu-Screen1-DaGd-1-Content
           PERFORM REMP-GRILLE THRU F-REMP-GRILLE.       
      * Positionnement du curseur sur la grille...
           MOVE 2 TO Event-Data-2 Screen1-DaGd-1-Cursor-Y
                     Screen1-DaGd-1-Cursor-Y-Old
           MODIFY Screen1-DaGd-1(Event-Data-2),
                  ROW-COLOR = Screen1-DaGd-1-Row-Highlight-Color
      * Indique la clé sélectionnée et les clés utilisables...
           IF W-KEY-ORDER = "A" THEN
               MODIFY Screen1-DaGd-1(1, 1),      
                      BITMAP = TRIERAD10-JPG
               MODIFY Screen1-DaGd-1(1, COL-STO),
                      BITMAP = TRIERAD10-JPG
               MODIFY Screen1-DaGd-1(1, COL-CAS),
                      BITMAP = TRIERAD10-JPG
               MODIFY Screen1-DaGd-1(1, COL-ETI),
                      BITMAP = TRIERAD10-JPG
               MODIFY Screen1-DaGd-1(1, COL-REA),
                      BITMAP = TRIERAD10-JPG
               MODIFY Screen1-DaGd-1(1, COL-MIN),
                      BITMAP = TRIERAD10-JPG
               MODIFY Screen1-DaGd-1(1, COL-MAX),
                      BITMAP = TRIERAD10-JPG
               MODIFY Screen1-DaGd-1(1, COL-DAM),
                      BITMAP = TRIERAD10-JPG
               MODIFY Screen1-DaGd-1(1, COL-PINV),
                      BITMAP = TRIERAD10-JPG
               MODIFY Screen1-DaGd-1(1, COL-PAMP),
                      BITMAP = TRIERAD10-JPG
               MODIFY Screen1-DaGd-1(1, COL-OBS),
                      BITMAP = TRIERAD10-JPG
               MODIFY Screen1-DaGd-1(1, W-KEY-NUM), 
                      BITMAP = TRIERAE10-JPG
           ELSE
               MODIFY Screen1-DaGd-1(1, 1),
                      BITMAP = TRIERDD10-JPG
               MODIFY Screen1-DaGd-1(1, COL-STO),
                      BITMAP = TRIERDD10-JPG
               MODIFY Screen1-DaGd-1(1, COL-CAS),
                      BITMAP = TRIERDD10-JPG
               MODIFY Screen1-DaGd-1(1, COL-ETI),
                      BITMAP = TRIERDD10-JPG
               MODIFY Screen1-DaGd-1(1, COL-REA),
                      BITMAP = TRIERDD10-JPG
               MODIFY Screen1-DaGd-1(1, COL-MIN),
                      BITMAP = TRIERDD10-JPG
               MODIFY Screen1-DaGd-1(1, COL-MAX),
                      BITMAP = TRIERDD10-JPG
               MODIFY Screen1-DaGd-1(1, COL-DAM),
                      BITMAP = TRIERDD10-JPG
               MODIFY Screen1-DaGd-1(1, COL-PINV),
                      BITMAP = TRIERDD10-JPG
               MODIFY Screen1-DaGd-1(1, COL-PAMP),
                      BITMAP = TRIERDD10-JPG
               MODIFY Screen1-DaGd-1(1, COL-OBS),
                      BITMAP = TRIERDD10-JPG
               MODIFY Screen1-DaGd-1(1, W-KEY-NUM),
                      BITMAP = TRIERDE10-JPG
           END-IF
           COPY "W:/mistral/copy/Gd-Sort.cbl"
                REPLACING ==CPYSRT-GRD== BY ==Screen1-DaGd-1==
                          ==CPYSRT-ROW== BY ==1==
                          ==CPYSRT-KEY== BY ==W-KEY-NUM==
                          ==CPYSRT-ORD== BY ==W-KEY-ORDER==.

           MODIFY Screen1-DaGd-1, MASS-UPDATE = 0, VISIBLE 1
           MODIFY Screen1-DaGd-1, Y = 2

           MOVE SPACES TO Screen1-DaGd-1-Record
           .
      * Remplissage de la grille  (Ecran 1)
       REMP-GRILLE.
           MOVE 0 TO W-EOF NB-AGE
           INITIALIZE ENR-MAGC
           START MXAGENCE KEY >= CLE1-MAGC INVALID GO F-REMP-GRILLE.
       LECT-MXAGENCE.
           READ MXAGENCE NEXT END GO F-REMP-GRILLE.
           PERFORM STAT
           PERFORM TEST-AGENCE-PALME
           IF W-OK-AGE = 0 GO LECT-MXAGENCE.
           ADD 1 TO NB-AGE
           MOVE COD-MAGC TO W-COD-MAGC
           MOVE ABR-MAGC TO W-ABR-MAGC
           INITIALIZE Screen1-DaGd-1-BUF
           MOVE W-AGE-ABR-MAGC TO Screen1-DaGd-1-BUF-AGE
           MOVE 1 TO W-EXI
           INITIALIZE ENR-MASA
           MOVE COD-MAGC TO AGE-MASA
           MOVE LK-ART-ASA-COD TO COD-MASA
           READ MXARTSA INVALID MOVE 0 TO W-EXI
           END-READ
           PERFORM STAT
           MOVE STO-MASA TO Screen1-DaGd-1-BUF-STO2
           EVALUATE STO-MASA
              WHEN 1
                 MOVE "Oui" TO Screen1-DaGd-1-BUF-STO
              WHEN 2
                 MOVE "Non" TO Screen1-DaGd-1-BUF-STO
              WHEN 9
                 MOVE "Dép/Vte" TO Screen1-DaGd-1-BUF-STO
              WHEN OTHER
                 MOVE SPACES TO Screen1-DaGd-1-BUF-STO
           END-EVALUATE
           MOVE CAS-MASA TO Screen1-DaGd-1-BUF-CAS
           STRING ETI-MASA TETI-MASA DELIMITED BY SIZE
                  INTO Screen1-DaGd-1-BUF-ETI
           MOVE REA-MASA TO Screen1-DaGd-1-BUF-REA2
           MOVE SPACES   TO Screen1-DaGd-1-BUF-REA
           IF W-EXI = 1 THEN
              IF STO-MASA NOT = 2  
                 EVALUATE REA-MASA
                    WHEN 0 MOVE "Oui" TO Screen1-DaGd-1-BUF-REA
                    WHEN 1 MOVE "Non" TO Screen1-DaGd-1-BUF-REA
                    WHEN 2 MOVE "Min/Wil" TO Screen1-DaGd-1-BUF-REA
                    WHEN 3 MOVE "Mini"    TO Screen1-DaGd-1-BUF-REA
                 END-EVALUATE
              END-IF
           END-IF
           MOVE MIN-MASA TO Screen1-DaGd-1-BUF-MIN
           MOVE MAX-MASA TO Screen1-DaGd-1-BUF-MAX
           COPY "W:/mistral/copy/Ef-Date10-Fic2Ecr.cbl"
                REPLACING ==CPYDAT-FIC== BY ==DAM-MASA==
                          ==CPYDAT-ECR== BY ==Screen1-DaGd-1-BUF-DAM==.


           PERFORM MEP-PINV
           MOVE PAMP-MASA TO Screen1-DaGd-1-BUF-PAMP
           MOVE OBS-MASA TO Screen1-DaGd-1-BUF-OBS
           MODIFY Screen1-DaGd-1,
                  RECORD-TO-ADD = Screen1-DaGd-1-BUF
           GO LECT-MXAGENCE.
       F-REMP-GRILLE.
           EXIT.
      * Controle accès agences / Palme
      * NB: Les agences interdites ou seulement autorisées en interrogation ne sont pas affichées !
       TEST-AGENCE-PALME.
           MOVE 1 TO W-OK-AGE
021208     IF AUTO-VISU-AGINT = 1 EXIT PARAGRAPH
021208     END-IF
           MOVE COD-MAGC TO NAG-PALM
      **     IF IAG-PALM = "A" OR "C"
      **        CALL "../../mistral/o/accesage.acu" USING ZONE-PALM
      **        CANCEL "../../mistral/o/accesage.acu"
      **     END-IF
           IF (IAG-PALM = "A" OR "C") AND (BAG-PALM = "X")     | Si User controlé/agence et Exécution prog. inderdite
               MOVE 0 TO W-OK-AGE.
           IF (IAG-PALM = "A" OR "C") AND
              (TFAG-PALM(2) = "X" OR TFAG-PALM(3) = "X")       | Si User controlé/agence et création ou modification inderdite
               MOVE 0 TO W-OK-AGE.
           IF (IAG-PALM = "B" AND NAG-PALM NOT= AGE-PALM)      | Si User bloqué sur une agence différente de celle traitée
               MOVE 0 TO W-OK-AGE.
               
       Mode-Interrogation.
      * Bascule vers le mode "Interrogation"
      * ---------------------------------------------------------------
           MOVE "I" TO CDFB
           MOVE 0 TO isModifying
           UNLOCK MXARTSA
           MOVE 257 TO Screen1-DaGd-1-Row-Highlight-Color
           IF  MODIF-PALM = "X"  
220818     AND AUTO-MODAGE <> 1 THEN
               MOVE 0 TO isModifyVisible
           ELSE
               MOVE 1 TO isModifyVisible
           END-IF
           MOVE 0 TO isValidVisible
           IF  ANNUL-PALM = "X"  
220818     AND AUTO-MODAGE <> 1 THEN
               MOVE 0 TO isDeleteVisible
           ELSE
               MOVE 1 TO isDeleteVisible
           END-IF
           MOVE 1 TO isPrintVisible
           MODIFY Screen1-Pb-Modify, VISIBLE = 1
           .
       Screen1-Bef-Create.
           PERFORM Controle-Call
           PERFORM Open-File-Rtn
           PERFORM Init-Bmp

           OPEN INPUT MXPARAM
           PERFORM STAT
           MOVE 1 TO W-MXPARAM
           READ MXPARAM INVALID
              MOVE "Paramètres généraux non créés !" TO Acu-Msg-1
              PERFORM ERREUR
           END-READ
           PERFORM STAT
           CLOSE MXPARAM 

      * Recherche des données Article...
           OPEN INPUT MXART
           PERFORM STAT
           INITIALIZE ENR-MART
           MOVE LK-ART-ASA-COD TO COD-MART
           READ MXART INVALID KEY 
              MOVE "Lecture ART N°"  TO ACU-MSG-1
              MOVE CLE1-MART TO ACU-MSG-2
              PERFORM ERREUR.
           PERFORM STAT
           CLOSE MXART

           OPEN INPUT MXFOU
           PERFORM STAT
           MOVE FOU-MART TO COD-MFOU
           READ MXFOU INVALID
              MOVE "Lecture FOU N° " TO ACU-MSG-1
              MOVE CLE1-MFOU TO ACU-MSG-2
              PERFORM ERREUR.
           PERFORM STAT
           CLOSE MXFOU
           OPEN INPUT MXFAMART
           PERFORM STAT
           MOVE GRA-MART TO GRA-MFAM
           MOVE FAM-MART TO FAM-MFAM
           READ MXFAMART INVALID
              MOVE "Lecture FAMART N°" TO ACU-MSG-1
              MOVE CLE1-MFAM TO ACU-MSG-2
              PERFORM ERREUR.
           PERFORM STAT
           CLOSE MXFAMART


           MOVE NOMLOG-PALM TO Z-TITRE1
           MOVE "Paramètres du Stock par Agence" TO Z-TITRE2
           .
       Screen1-AfterInitData.
120819     PERFORM MisCentreFenetreScreen1
           MOVE "A" TO W-KEY-ORDER
           PERFORM Affiche-Grille
           IF (     MODIF-PALM = "X" 
220818          AND AUTO-MODAGE <> 1 )
           OR NB-AGE < 2 
               MODIFY SCREEN1-PB-MAJ VISIBLE = 0 
           END-IF
           IF LK-ART-ASA-CHO = "C"                 | Si fonction création dans ART ===> fonction modif dans ce prog.
              PERFORM Screen1-Pb-Modify-LinkTo
           END-IF
           .
       Screen1-Pb-Refresh-LinkTo.
           PERFORM Affiche-Grille
           .
       Screen1-Pb-Modify-LinkTo.
      * PALM interdit la mise à jour...
           IF  MODIF-PALM = "X"  
220818     AND AUTO-MODAGE <> 1 THEN
               MOVE "380" TO Acu-Msg-Id
               PERFORM Acu-Show-Msg
               Move Event-Action-Ignore TO Event-Action
               EXIT PARAGRAPH
           END-IF

           MOVE "M" TO CDFB
           MOVE 1 TO isModifying

           MOVE 482 TO Screen1-DaGd-1-Row-Highlight-Color
           MODIFY Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y),
                  ROW-COLOR = Screen1-DaGd-1-Row-Highlight-Color
           MOVE 0 TO isModifyVisible isPrintVisible
           MODIFY Screen1-Pb-Modify, VISIBLE = 0

      * ATTENTION : Utilisable uniquement dans un traitement déclenché
      *             par une EXCEPTION
      *     ACCEPT Screen1-DaGd-1
           .
       Screen1-Pb-Print-LinkTo.
           PERFORM Affiche-Grille
           .
       Screen1-Pb-Quit-LinkTo.
           PERFORM Acu-Screen1-Exit
           .
       Screen1-Ev-Cmd-Close.
           PERFORM Mistral-WindowClosing
           .
       Screen1-DaGd-1-Ev-Msg-Begin-Entry.
      * Grille verrouillée en mode "Interrogation"...
           IF CDFB = "I" THEN
               MOVE Event-Action-Fail TO Event-Action
               EXIT PARAGRAPH
           END-IF

           INQUIRE Screen1-DaGd-1(Event-Data-2)
                   RECORD-DATA IN Screen1-DaGd-1-Record
           MOVE Screen1-DaGd-1-Record TO Screen1-DaGd-1-Record-Old
           MOVE SPACE TO CDF

      * Pas de modification de la 1ère et de la 9ème colonne
           IF (Event-Data-1 = 1) OR (Event-Data-1 = COL-PAMP) THEN
               MOVE Event-Action-Fail TO Event-Action
               EXIT PARAGRAPH
           END-IF
      * Pas de Saisie si colonne gestion de stock non renseignée
           IF Event-Data-1 > COL-STO AND Screen1-DaGd-1-STO-MASA = 0
               MOVE Event-Action-Fail TO Event-Action
               EXIT PARAGRAPH
           END-IF
      * Si gestion de stock=non , pas de saisie Réappro, Mini, Maxi,Date
           IF (Event-Data-1 = COL-REA OR COL-MIN OR COL-MAX OR COL-DAM
               OR COL-PINV)
               AND Screen1-DaGd-1-STO-MASA = 2
               MOVE Event-Action-Fail TO Event-Action
               EXIT PARAGRAPH
           END-IF
           MOVE Screen1-DaGd-1-AGE-ABR-MAGC TO W-AGE-ABR-MAGC
           PERFORM READ-GRID-MXARTSA
           IF CDFB = "I" EXIT PARAGRAPH.

      * Accès aux écrans "Gestion Stock" et "Réapprovisionnement"
           IF Event-Data-1 = COL-STO THEN
              INQUIRE Screen1-DaGd-1(Event-Data-2, COL2-STO),
                       CELL-DATA IN LK-MASA-NUM
              MODIFY Screen1-St-1-Handle, TITLE 
             "Gestion de stock: O= Oui, N= Non, D=Dépôt-vente" 
           END-IF

           IF Event-Data-1 = COL-REA THEN
              INQUIRE Screen1-DaGd-1(Event-Data-2, COL2-REA),
                      CELL-DATA IN LK-MASA-NUM
              IF Screen1-DaGd-1-LIB-REA-MASA = "Mini"
                MODIFY Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y, COL-REA),
                      CELL-DATA = "F"
              END-IF
              MODIFY Screen1-St-1-Handle, TITLE 
              "Réappro automatique (si géré en stock): Blanc ou O = Oui,
      -       " N =Non, M = Mini-Maxi /F.Wilson,  F = Mini si réappro /C  
      -       "onso"
           END-IF

      *--- Périodicité Inventaire
           IF Event-Data-1 = COL-PINV 
              MODIFY Screen1-DaGd-1(Event-Data-2, COL-PINV),
                     CELL-DATA = PINV-MASA
           END-IF
           .

       Screen1-DaGd-1-Ev-Msg-Goto-Cell.
      * La ligne de titre est à ignorer...
           IF Event-Data-2 < 2 OR W-PATCH = 1 THEN
               MOVE Event-Action-Fail TO Event-Action
               EXIT PARAGRAPH
           END-IF
      * Alimente la status-bar...
           IF Event-Data-1 <= Nombre-Messages-Aide THEN
               MODIFY Screen1-St-1-Handle,
                      TITLE = Message-Aide(Event-Data-1)
           END-IF

      * Pour voir si on a changé de ligne
           IF Event-Data-2 NOT = Screen1-DaGd-1-Cursor-Y-Old THEN
               MODIFY Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y-Old),
                      ROW-COLOR = 0
               MODIFY Screen1-DaGd-1(Event-Data-2),
                      ROW-COLOR = Screen1-DaGd-1-Row-Highlight-Color
           END-IF
           INQUIRE Screen1-DaGd-1(Event-Data-2)
                   RECORD-DATA IN Screen1-DaGd-1-Record
      * Colonne "Etiquetage" et "Périodicité Inventaire"
           IF CDFB = "M"
              MODIFY 
              Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y-Old, COL-ETI), 
              bitmap SPACES
              MODIFY 
              Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y-Old, COL-PINV), 
              bitmap null
              IF Event-Data-1 = COL-ETI AND 
                 Screen1-DaGd-1-STO-MASA NOT = 0
                 MODIFY Screen1-DaGd-1(Event-Data-2, COL-ETI), 
                 bitmap ZOOMxxx10-BMP
              END-IF
              IF Event-Data-1 = COL-PINV AND 
                 (Screen1-DaGd-1-STO-MASA = 1 OR 9)
                 MODIFY Screen1-DaGd-1(Event-Data-2, COL-PINV), 
                 bitmap ZOOMxxx10-BMP
              END-IF
           END-IF

           MOVE Event-Data-2 TO Screen1-DaGd-1-Cursor-Y
                                Screen1-DaGd-1-Cursor-Y-Old

           IF (Event-Data-1 = 1) OR
              (Event-Data-1 > COL-OBS) THEN
              PERFORM Mistral-TransferFocus
           END-IF
           .

       Screen1-DaGd-1-Ev-Msg-Heading-Clicked.
      * La ligne de titre et à ignorer...
           IF W-PATCH = 1 THEN
               MOVE Event-Action-Fail TO Event-Action
               EXIT PARAGRAPH           
           END-IF      
           IF Event-Data-1 <= COL2-STO THEN
               IF Event-Data-1 = W-KEY-NUM THEN
                   IF W-KEY-ORDER = "A" THEN
                       MOVE "D" TO W-KEY-ORDER
                   ELSE
                       MOVE "A" TO W-KEY-ORDER
                   END-IF
               ELSE
      * Si les clés annexes sont utilisables...
                   INQUIRE Screen1-DaGd-1, LAST-ROW IN Gd-Sort-Last
                   IF Gd-Sort-Last <= Gd-Sort-NbMaxKeys THEN
                       MOVE Event-Data-1 TO W-KEY-NUM
                   END-IF
               END-IF
               PERFORM Affiche-Grille
           END-IF
           .
       Screen1-DaGd-1-Ev-Msg-Finish-Entry.
      * Si colonne 'gestion de stock'
           IF EVENT-DATA-1 = COL-STO
              INQUIRE Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y, COL-STO),
                       CELL-DATA IN W-LSTO  
              IF W-LSTO(1:1) = "O" or "o" MOVE 1 TO LK-MASA-NUM
              END-IF
              IF W-LSTO(1:1) = "N" or "n" MOVE 2 TO LK-MASA-NUM
              END-IF
              IF W-LSTO(1:1) = "D" or "d" MOVE 9 TO LK-MASA-NUM
              END-IF
              IF CDFB = "C" AND 
                 NOT (W-LSTO(1:1) = "O" or "o" or "N" or "n" or
                      "D" or "d") 
                 exit paragraph
              END-IF
              PERFORM MEP-STO
           END-IF.
              
      * si Mini ou maxi > 0 et Date mini-Maxi = zero ==> Maj Date
           IF EVENT-DATA-1 = COL-MIN OR COL-MAX
              MOVE MIN-MASA TO W-MIN
              MOVE MAX-MASA TO W-MAX
              INQUIRE Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y, COL-MIN),
                      CELL-DATA IN MIN-MASA
              INQUIRE Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y, COL-MAX),
                       CELL-DATA IN MAX-MASA
              IF MAX-MASA > 0 AND MIN-MASA > 0 AND MAX-MASA < MIN-MASA
                 MOVE "Le stock maxi doit être > stock mini"
                 TO ACU-MSG-1 PERFORM MSG-INFO
                 MOVE EVENT-ACTION-FAIL TO EVENT-ACTION
                 EXIT PARAGRAPH
              END-IF
              IF ( DAM-MASA = ZERO AND 
                (NOT MIN-MASA = 0 OR NOT MAX-MASA = 0) )
270810        OR MIN-MASA <> W-MIN
270810        OR MAX-MASA <> W-MAX
                MOVE DTT-PALM TO DAM-MASA
                COPY "W:/mistral/copy/Ef-Date10-Fic2Ecr.cbl"
                 REPLACING ==CPYDAT-ECR== BY ==Screen1-DaGd-1-DAM-MASA==
                           ==CPYDAT-FIC== BY ==DAM-MASA==.
                MODIFY Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y, COL-DAM),
                      CELL-DATA = Screen1-DaGd-1-DAM-MASA.
      *-- Code Etiquetage
           IF EVENT-DATA-1 = COL-ETI 
              INQUIRE Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y, COL-ETI),
                      CELL-DATA IN Screen1-DaGd-1-BUF-ETI
              IF Screen1-DaGd-1-BUF-ETI = SPACES
                 MOVE ZERO TO ETI-MASA
                 MOVE SPACES TO TETI-MASA
              END-IF
              IF Screen1-DaGd-1-BUF-ETI(1:2) NUMERIC 
                 MOVE Screen1-DaGd-1-BUF-ETI(1:2) TO ETI-MASA
              END-IF
              IF Screen1-DaGd-1-BUF-ETI(3:1) = "B" AND ETI-MASA > ZERO
                   MOVE "B" TO TETI-MASA
              ELSE MOVE SPACES TO TETI-MASA
              END-IF
              MODIFY Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y, COL-ETI), 
              bitmap = Spaces
           END-IF
      *  Si colonne "Réappro"
           IF EVENT-DATA-1 = COL-REA 
              INQUIRE Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y, COL-REA),
                      CELL-DATA IN W-LREA
              IF W-LREA(1:1) = " " OR "O" or "o" MOVE 0 TO LK-MASA-NUM
              END-IF
              IF W-LREA(1:1) = "N" or "n" MOVE 1 TO LK-MASA-NUM
              END-IF
              IF W-LREA(1:1) = "M" or "m" MOVE 2 TO LK-MASA-NUM
              END-IF
              IF W-LREA(1:1) = "F" or "f" MOVE 3 TO LK-MASA-NUM
              END-IF
              PERFORM MEP-REA
           END-IF.
140317*-- Périodicité inventaire
           IF EVENT-DATA-1 = COL-PINV 
              INQUIRE Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y, COL-PINV),
                      CELL-DATA IN PINV-MASA

              MODIFY Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y, COL-PINV), 
              bitmap = SPACES
              MODIFY Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y, COL-PINV),
              HIDDEN-DATA = PINV-MASA
              PERFORM MEP-PINV
              MODIFY Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y, COL-PINV),
                     CELL-DATA = Screen1-DaGd-1-BUF-PINV
           END-IF
      *  Si modification ===> Enregistrement
           PERFORM MAJ-GRID-MXARTSA
           .

       MEP-STO.
           MOVE LK-MASA-NUM TO Screen1-DaGd-1-STO-MASA
           MODIFY Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y, COL2-STO),
                  CELL-DATA = Screen1-DaGd-1-STO-MASA
           EVALUATE LK-MASA-NUM
             WHEN 1
                MOVE "Oui" TO Screen1-DaGd-1-BUF-STO
             WHEN 2
                MOVE "Non" TO Screen1-DaGd-1-BUF-STO
                MOVE ZERO  TO Screen1-DaGd-1-BUF-MIN
                              Screen1-DaGd-1-BUF-MAX
                MOVE SPACES TO Screen1-DaGd-1-BUF-DAM
                               Screen1-DaGd-1-BUF-REA
                MODIFY Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y, COL-MIN),
                 CELL-DATA = Screen1-DaGd-1-BUF-MIN
                MODIFY Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y, COL-MAX),
                 CELL-DATA = Screen1-DaGd-1-BUF-MAX
                MODIFY Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y, COL-REA),
                 CELL-DATA = Screen1-DaGd-1-BUF-REA
                MODIFY Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y, COL-DAM),
                 CELL-DATA = Screen1-DaGd-1-BUF-DAM
             WHEN 9
                MOVE "Dép/Vte" TO Screen1-DaGd-1-BUF-STO
             WHEN OTHER
                MOVE SPACES TO Screen1-DaGd-1-BUF-STO
           END-EVALUATE.
           MODIFY Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y, COL-STO),
                  CELL-DATA = Screen1-DaGd-1-BUF-STO.
       MEP-REA.
           MODIFY Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y, COL2-REA),
                  CELL-DATA = LK-MASA-NUM
           EVALUATE LK-MASA-NUM
              WHEN 0
                 MOVE "Oui" TO Screen1-DaGd-1-BUF-REA
              WHEN 1
                 MOVE "Non" TO Screen1-DaGd-1-BUF-REA
              WHEN 2
                 MOVE "Min/Wil" TO Screen1-DaGd-1-BUF-REA
              WHEN 3
                 MOVE "Mini" TO Screen1-DaGd-1-BUF-REA
              WHEN OTHER
                 MOVE SPACES TO Screen1-DaGd-1-BUF-REA
           END-EVALUATE
           MODIFY Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y, COL-REA),
                  CELL-DATA = Screen1-DaGd-1-BUF-REA
           .
       MEP-PINV.
           MOVE SPACES TO Screen1-DaGd-1-BUF-PINV.


      * Lecture Enreg. de MXARTSA de la ligne en cours
       READ-GRID-MXARTSA.
           MOVE W-COD-MAGC     TO AGE-MASA
           MOVE LK-ART-ASA-COD TO COD-MASA
           MOVE 1 TO W-KEY-NUM
           READ MXARTSA LOCK 
                INVALID
                   INITIALIZE ENR-MASA
                   IF CDFB = "M" 
                      MOVE "C" TO CDFB
                      MOVE STO-MFAM TO Screen1-DaGd-1-STO-MASA
                      MODIFY Screen1-DaGd-1(Event-Data-2, COL2-STO),
                      CELL-DATA = Screen1-DaGd-1-STO-MASA
                      IF ETI-MFOU = 1
                         STRING ETI-MFAM TETI-MFAM 
                            INTO Screen1-DaGd-1-BUF-ETI
                         MODIFY Screen1-DaGd-1(Event-Data-2, COL-ETI),
                         CELL-DATA = Screen1-DaGd-1-BUF-ETI
                      END-IF
                   END-IF
                 NOT INVALID 
                   MOVE "M" TO CDFB
           END-READ
           PERFORM STAT
           IF IND-STAT = 1 
              MOVE "399" TO Acu-Msg-Id
              PERFORM Acu-Show-Msg
              PERFORM Affiche-Grille
              MOVE "I" TO CDFB
              EXIT PARAGRAPH.
           MOVE STO-MASA TO SV-STO
180311*     MOVE "M" TO CDF
           .

       MAJ-GRID-MXARTSA.
           INQUIRE Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y),
                   RECORD-DATA IN Screen1-DaGd-1-Record
           IF NOT Screen1-DaGd-1-RECORD = Screen1-DaGd-1-Record-Old THEN
               MOVE Screen1-DaGd-1-AGE-ABR-MAGC TO W-AGE-ABR-MAGC
               MOVE W-COD-MAGC     TO AGE-MASA
               MOVE LK-ART-ASA-COD TO COD-MASA
               IF CDFB = "M"
                  PERFORM READ-LOCK-MXARTSA
                  IF W-OK = 0 EXIT PARAGRAPH END-IF
               END-IF
              INQUIRE Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y, COL2-STO),
                       CELL-DATA IN STO-MASA
               MOVE Screen1-DaGd-1-CAS-MASA TO CAS-MASA
               MOVE Screen1-DaGd-1-REA-MASA TO REA-MASA

               INQUIRE Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y, COL-ETI),
                      CELL-DATA IN Screen1-DaGd-1-BUF-ETI
               IF Screen1-DaGd-1-BUF-ETI = SPACES
                 MOVE ZERO   TO ETI-MASA
                 MOVE SPACES TO TETI-MASA
               ELSE
                 IF Screen1-DaGd-1-BUF-ETI(1:2) NUMERIC 
                    MOVE Screen1-DaGd-1-BUF-ETI(1:2) TO ETI-MASA
                 END-IF
                 IF Screen1-DaGd-1-BUF-ETI(3:1) = "B" AND ETI-MASA > 0
                    MOVE "B" TO TETI-MASA
                  ELSE MOVE SPACES TO TETI-MASA
                  END-IF
               END-IF

               INQUIRE Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y, COL-MIN),
                       CELL-DATA IN MIN-MASA
               INQUIRE Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y, COL-MAX),
                       CELL-DATA IN MAX-MASA
               COPY "W:/mistral/copy/Ef-Date10-Ecr2Fic.cbl"
                 REPLACING ==CPYDAT-ECR== BY ==Screen1-DaGd-1-DAM-MASA==
                           ==CPYDAT-FIC== BY ==DAM-MASA==.
               COPY "W:/mistral/copy/Ef-Date10-Fic2Ecr.cbl"
                 REPLACING ==CPYDAT-ECR== BY ==Screen1-DaGd-1-DAM-MASA==
                           ==CPYDAT-FIC== BY ==DAM-MASA==.
               MODIFY Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y, COL-DAM),
                      CELL-DATA = Screen1-DaGd-1-DAM-MASA
               MOVE Screen1-DaGd-1-OBS-MASA TO OBS-MASA
140317         INQUIRE Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y, COL-PINV)
                      HIDDEN-DATA IN PINV-MASA

               IF CDFB = "M"
                  PERFORM REW-MXARTSA
                  IF STO-MASA NOT = SV-STO
                     PERFORM DMAJ-MODZON-STO THRU FMAJ-MODZON-STO
                  END-IF
               END-IF
               IF CDFB = "C"
                  PERFORM WRI-MXARTSA
                  MOVE "M" TO CDFB
               END-IF
           END-IF
           .

       Screen1-DaGd-1-Ev-Msg-Bitmap-Clicked.
           IF Event-Data-2 < 2 THEN
              EXIT PARAGRAPH
           END-IF
           IF EVENT-DATA-1 = COL-PINV
              PERFORM LISTE-TABDIV
              EXIT PARAGRAPH.
           IF MODU-LECTOPT = 0
              PERFORM Screen1-Mn-1-MI-EtiquetteClassique-Link
              EXIT PARAGRAPH
           END-IF
           CALL "W$MENU" USING WMENU-POPUP, Screen1-Mn-1-Handle.

       Screen1-Mn-1-MI-EtiquetteClassique-Link.
           Initialize LK-LISTE
           MOVE "A" TO LK-LISTE-MO
           PERFORM LISTE-MODETI.
       Screen1-Mn-1-MI-EtiquetteCodeBarre-Link.
           Initialize LK-LISTE
           MOVE "B" TO LK-LISTE-MO
           PERFORM LISTE-MODETI.

       LISTE-MODETI.
 
           .
       LISTE-TABDIV.

           .
              
      * Effaçage de la status barre dès qu'on quitte la grille
       Screen1-DaGd-1-Aft-Procedure.
           MODIFY Screen1-St-1-Handle, TITLE = Spaces
           .

       READ-LOCK-MXARTSA.
           MOVE 1 TO W-OK
           READ MXARTSA LOCK INVALID
                MOVE "Erreur lecture ARTSA N° " TO ACU-MSG-1
                MOVE CLE1-MASA TO ACU-MSG-2
                PERFORM ERREUR            
           END-READ
           PERFORM STAT
           IF IND-STAT = 1 
              MOVE "399" TO Acu-Msg-Id
              PERFORM Acu-Show-Msg
              PERFORM Affiche-Grille
              MOVE 0 TO W-OK
              EXIT PARAGRAPH
           END-IF
           MOVE STO-MASA TO SV-STO
           .
       REW-MXARTSA.
160109     ACCEPT DME-MASA FROM CENTURY-DATE
           REWRITE ENR-MASA INVALID
              MOVE "Réécriture ARTSA N° " TO ACU-MSG-1
              MOVE CLE1-MASA TO ACU-MSG-2
              PERFORM ERREUR
           END-REWRITE.
           PERFORM STAT.
       WRI-MXARTSA.
160109     ACCEPT DME-MASA FROM CENTURY-DATE
           WRITE ENR-MASA INVALID
              MOVE "Ecriture ARTSA N° " TO ACU-MSG-1
              MOVE CLE1-MASA TO ACU-MSG-2
              PERFORM ERREUR
           END-WRITE.
           PERFORM STAT.

       READ-MODETI.

       READ-TABDIV.


       Screen2-Gd-1-Ev-Msg-Begin-Entry.
      * Sort de l'écran après avoir sélectionné la ligne...
           INQUIRE Screen2-Gd-1(Event-Data-2, 2),
                   CELL-DATA IN LK-MASA-NUM

           MOVE Event-Action-Fail TO Event-Action
           PERFORM Mistral-CloseCurrentWindow
           MOVE 0 TO W-PATCH
           .
       Screen2-Gd-1-Ev-Msg-Goto-Cell.
      * En cas de changement de ligne, déplace la ligne de sélection...
           IF NOT Event-Data-2 = Screen2-Gd-1-Cursor-Y-Old THEN
               MODIFY Screen2-Gd-1(Screen2-Gd-1-Cursor-Y-Old),
                      ROW-COLOR = 0
               MOVE Event-Data-2 TO Screen2-Gd-1-Cursor-Y-Old
               MODIFY Screen2-Gd-1(Screen2-Gd-1-Cursor-Y-Old),
                      ROW-COLOR = 257
           END-IF
           .
       Screen2-AfterInitData.
120819     MOVE Screen2-HANDLE TO MCF-HANDLE-FS
120819     PERFORM MisCentreFenetre
      * Affiche la grille de sélection après l'avoir initialisé.
      * NB : En entrée / sortie, LK-MASA-NUM (1, 2 ou 9)
      * ---------------------------------------------------------------

      * Remise à zéro de la grille...
           MODIFY Screen2-Gd-1, MASS-UPDATE = 1, RESET-GRID = 1
           PERFORM Acu-Screen2-Gd-1-Content
           MOVE 2 TO Screen2-Gd-1-Cursor-Y-Old

      * Patch pour obtenir une sortie à "0" malgré les init à SPACE...
           IF LK-MASA-NUM = SPACES THEN
               MOVE ZEROES TO LK-MASA-NUM
           END-IF

      * Défensif : s'arrurer que l'on est bien dans les cas 1, 2 ou 9...
           IF (LK-MASA-NUM NOT = 1) AND (LK-MASA-NUM NOT = 2) AND
              (LK-MASA-NUM NOT = 9) THEN
               MOVE 1 TO LK-MASA-NUM
           END-IF

      * Remplissage de la grille...
           MOVE "Oui" TO Screen2-Gd-1-LIB
           MOVE 1 TO Screen2-Gd-1-NUM
           MODIFY Screen2-Gd-1, RECORD-TO-ADD Screen2-Gd-1-Record
           IF LK-MASA-NUM = Screen2-Gd-1-NUM THEN
               MOVE 2 TO Screen2-Gd-1-Cursor-Y-Old
           END-IF
           MOVE "Non" TO Screen2-Gd-1-LIB
           MOVE 2 TO Screen2-Gd-1-NUM
           MODIFY Screen2-Gd-1, RECORD-TO-ADD Screen2-Gd-1-Record
           IF LK-MASA-NUM = Screen2-Gd-1-NUM THEN
               MOVE 3 TO Screen2-Gd-1-Cursor-Y-Old
           END-IF
           MOVE "Dépôt-Vente" TO Screen2-Gd-1-LIB
           MOVE 9 TO Screen2-Gd-1-NUM
           MODIFY Screen2-Gd-1, RECORD-TO-ADD Screen2-Gd-1-Record
           IF LK-MASA-NUM = Screen2-Gd-1-NUM THEN
               MOVE 4 TO Screen2-Gd-1-Cursor-Y-Old
           END-IF

      * Positionnement du curseur sur la grille...
           MODIFY Screen2-Gd-1, CURSOR-Y = Screen2-Gd-1-Cursor-Y-Old,
                                Y = Screen2-Gd-1-Cursor-Y-Old,
                                ROW-COLOR = 257,
                                MASS-UPDATE = 0

      * Patch : sans ça, la grille peut parfois mélanger les lignes...
           MOVE SPACES TO Screen2-Gd-1-Record
           .
       Screen3-Gd-1-Ev-Msg-Begin-Entry.
      * Sort de l'écran après avoir sélectionné la ligne...
           INQUIRE Screen3-Gd-1(Event-Data-2, 2),
                   CELL-DATA IN LK-MASA-NUM

           MOVE Event-Action-Fail TO Event-Action
           PERFORM Mistral-CloseCurrentWindow
           MOVE 0 TO W-PATCH
           .
       Screen3-Gd-1-Ev-Msg-Goto-Cell.
      * En cas de changement de ligne, déplace la ligne de sélection...
           IF NOT Event-Data-2 = Screen3-Gd-1-Cursor-Y-Old THEN
               MODIFY Screen3-Gd-1(Screen3-Gd-1-Cursor-Y-Old),
                      ROW-COLOR = 0
               MOVE Event-Data-2 TO Screen3-Gd-1-Cursor-Y-Old
               MODIFY Screen3-Gd-1(Screen3-Gd-1-Cursor-Y-Old),
                      ROW-COLOR = 257
           END-IF
           .
       Screen3-AfterInitData.
120819     MOVE Screen3-HANDLE TO MCF-HANDLE-FS
120819     PERFORM MisCentreFenetre
      * Affiche la grille de sélection après l'avoir initialisé.
      * NB : En entrée / sortie, LK-MASA-NUM (0, 1 ou 2)
      * ---------------------------------------------------------------

      * Remise à zéro de la grille...
           MODIFY Screen3-Gd-1, MASS-UPDATE = 1, RESET-GRID = 1
           PERFORM Acu-Screen3-Gd-1-Content
           MOVE 2 TO Screen3-Gd-1-Cursor-Y-Old

      * Patch pour obtenir une sortie à "0" malgré les init à SPACE...
           IF LK-MASA-NUM = SPACES THEN
               MOVE ZEROES TO LK-MASA-NUM
           END-IF

      * Défensif : s'arrurer que l'on est bien dans les cas 0, 1 ou 2...
           IF LK-MASA-NUM > 2 THEN
               MOVE 2 TO LK-MASA-NUM
           END-IF

      * Remplissage de la grille...
           MOVE "Oui" TO Screen3-Gd-1-LIB
           MOVE 0 TO Screen3-Gd-1-NUM
           MODIFY Screen3-Gd-1, RECORD-TO-ADD Screen3-Gd-1-Record
           IF LK-MASA-NUM = Screen3-Gd-1-NUM THEN
               MOVE 2 TO Screen3-Gd-1-Cursor-Y-Old
           END-IF
           MOVE "Non" TO Screen3-Gd-1-LIB
           MOVE 1 TO Screen3-Gd-1-NUM
           MODIFY Screen3-Gd-1, RECORD-TO-ADD Screen3-Gd-1-Record
           IF LK-MASA-NUM = Screen3-Gd-1-NUM THEN
               MOVE 3 TO Screen3-Gd-1-Cursor-Y-Old
           END-IF
           MOVE "Min/Max /F.Wilson" TO Screen3-Gd-1-LIB
           MOVE 2 TO Screen3-Gd-1-NUM
           MODIFY Screen3-Gd-1, RECORD-TO-ADD Screen3-Gd-1-Record
           IF LK-MASA-NUM = Screen3-Gd-1-NUM THEN
               MOVE 4 TO Screen3-Gd-1-Cursor-Y-Old
           END-IF

      * Positionnement du curseur sur la grille...
           MODIFY Screen3-Gd-1, CURSOR-Y = Screen3-Gd-1-Cursor-Y-Old,
                                Y = Screen3-Gd-1-Cursor-Y-Old,
                                ROW-COLOR = 257,
                                MASS-UPDATE = 0

      * Patch : sans ça, la grille peut parfois mélanger les lignes...
           MOVE SPACES TO Screen3-Gd-1-Record
           .
       Screen1-Aft-Routine.
           PERFORM Close-File-Rtn
           .
       Screen2-Bef-Create.
           MOVE 1 TO W-PATCH
           .
       Screen2-Ev-Cmd-Close.
           MOVE 0 TO W-PATCH
           .
       Screen3-Bef-Create.
           MOVE 1 TO W-PATCH
           .
       Screen3-Ev-Cmd-Close.
           MOVE 0 TO W-PATCH
           .
    
      *
       Screen1-Pb-MAJ-Link.
           PERFORM Acu-Screen4-Routine
           PERFORM Affiche-Grille
           .
      *=================================================================
      *    Ecran4 : Création / modification automatique
      *=================================================================
       Screen4-Bef-Initdata.
      * Initialisation Combo / Type d'étiquette
           MODIFY Screen4-Cm-TETI, RESET-LIST = 1
           modify Screen4-Cm-TETI, ITEM-TO-ADD "Classique"
           IF MODU-LECTOPT = 1
              modify Screen4-Cm-TETI, ITEM-TO-ADD "Code Barre"
           END-IF
           modify screen4-Cm-TETI VALUE "Classique"
           .
       Screen4-Aft-Initdata.
120819     MOVE Screen4-HANDLE TO MCF-HANDLE-FS
120819     PERFORM MisCentreFenetre
           PERFORM AFFICHE-GRILLE4 THRU F-AFFICHE-GRILLE4.
           MOVE SPACES TO X-DAM W-V-TETI.
           MOVE 0 TO W-V-REA W-V-DAM W-V-MIN W-V-MAX W-V-ETI.
           MOVE STO-MFAM TO W-V-STO.
           MODIFY Screen4-Rb-STO1, VALUE W-V-STO 
           MODIFY Screen4-Rb-STO2, VALUE W-V-STO
           IF ETI-MFOU = 1 MOVE ETI-MFAM TO W-V-ETI
              IF ETI-MFAM NOT = ZERO
                 MODIFY Screen4-Ef-ETI VALUE W-V-ETI
              END-IF
           END-IF.

       Affiche-Grille4.
      * Remise à zéro de la grille...
           MODIFY Screen4-Gd-1, MASS-UPDATE = 1, RESET-GRID = 1
           PERFORM Acu-Screen4-Gd-1-Content
      * Remplissage de la grille...
           MOVE SPACES TO CLE1-MAGC
           MOVE 1 TO Z.
           INITIALIZE TAB-AGE
           START MXAGENCE KEY >= CLE1-MAGC 
               INVALID GO TO S-AFFICHE-GRILLE4.
       LECT4-MXAGENCE.
           READ MXAGENCE NEXT END GO TO S-AFFICHE-GRILLE4.
           PERFORM STAT
           PERFORM TEST-AGENCE-PALME
           IF W-OK-AGE = 0 GO LECT4-MXAGENCE.
           MOVE COD-MAGC      TO AGE-MASA
           MOVE LK-ART-ASA-COD TO COD-MASA
           MOVE 1 TO W-OK
           READ MXARTSA INVALID MOVE 0 TO W-OK.
           PERFORM STAT
      *  Controle accès agence autorisé
           IF (IAG-PALM = "A" OR "C") AND 
              (TFAG-PALM(2) = "X" AND W-OK = 0) GO LECT4-MXAGENCE.
           IF (IAG-PALM = "A" OR "C") AND 
              (TFAG-PALM(3) = "X" AND W-OK = 1) GO LECT4-MXAGENCE.
           MOVE SPACES TO Screen4-Gd-1-Record
           STRING " " , COD-MAGC, "  ", ABR-MAGC DELIMITED BY SIZE
                INTO GD-1-COL-AGE
           MODIFY Screen4-Gd-1,
                  RECORD-TO-ADD = Screen4-Gd-1-Record
           MOVE COD-MAGC TO T-AGE-COD(Z)
           IF W-OK = 1
             MODIFY Screen4-Gd-1(Z + 1, 3),
             BITMAP = CBUNCHK13-JPG
             MOVE 1 TO T-AGE-MOD(Z)
           ELSE 
             MODIFY Screen4-Gd-1(Z + 1, 2),
             BITMAP = CBUNCHK13-JPG
             MOVE 1 TO T-AGE-CRE(Z)
           END-IF.
           ADD 1 TO Z
           GO LECT4-MXAGENCE.
       S-AFFICHE-GRILLE4.
           MODIFY Screen4-Gd-1, NUM-ROWS = Z
           MODIFY Screen4-Gd-1, MASS-UPDATE = 0, VISIBLE 1
           MODIFY Screen4-Gd-1, Y = 2
           .
       F-Affiche-Grille4.
           exit.
      *
       Screen4-Gd-1-Ev-Msg-Goto-Cell-Mouse.
      * Pas de modification de la 1ère ligne et 1ère colonne
           IF (Event-Data-1 = 1) OR (Event-Data-2 = 1) THEN
               MOVE Event-Action-Fail TO Event-Action
               EXIT PARAGRAPH
           END-IF
      * Pas de saisie si colonne "A créer" sans case à cocher
           IF EVENT-DATA-1 = 2 AND T-AGE-CRE(EVENT-DATA-2 - 1) = 0
               MOVE Event-Action-Fail TO Event-Action
               EXIT PARAGRAPH
           END-IF
      * Pas de saisie si colonne "A Modifier" sans case à cocher
           IF EVENT-DATA-1 = 3 AND T-AGE-MOD(EVENT-DATA-2 - 1) = 0
               MOVE Event-Action-Fail TO Event-Action
               EXIT PARAGRAPH
           END-IF
      *    
           IF EVENT-DATA-1 = 2 MOVE T-AGE-CRE(EVENT-DATA-2 - 1) TO W-OK.
           IF EVENT-DATA-1 = 3 MOVE T-AGE-MOD(EVENT-DATA-2 - 1) TO W-OK.

           IF W-OK = 1
              MODIFY Screen4-Gd-1(Event-data-2, Event-data-1),
              BITMAP = CBCHECK13-JPG
              MOVE 2 TO W-OK
           ELSE 
              MODIFY Screen4-Gd-1(Event-data-2, Event-data-1),
              BITMAP = CBUNCHK13-JPG
              MOVE 1 TO W-OK
           END-IF
           IF EVENT-DATA-1 = 2 MOVE W-OK TO T-AGE-CRE(EVENT-DATA-2 - 1).
           IF EVENT-DATA-1 = 3 MOVE W-OK TO T-AGE-MOD(EVENT-DATA-2 - 1).
           .
      *
       Screen4-Rb-STO1-Ev-Cmd-Clicked.
           MOVE 1 TO W-V-STO
           MOVE 1 TO W-ENABLE-INFO
           PERFORM MODIFY-INFO.
           .
       Screen4-Rb-STO2-Ev-Cmd-Clicked.
           MOVE 2 TO W-V-STO
           MODIFY screen4-EF-MIN VALUE SPACES
           MODIFY screen4-EF-MAX VALUE SPACES
           MODIFY screen4-EF-DAM VALUE SPACES
           MOVE ZERO TO W-ENABLE-INFO
           PERFORM MODIFY-INFO.
           .
       Screen4-Rb-STO3-Ev-Cmd-Clicked.
           MOVE 9 TO W-V-STO
           MOVE 1 TO W-ENABLE-INFO
           PERFORM MODIFY-INFO.
           .
       MODIFY-INFO.
           MODIFY Screen4-Rb-REA1 ENABLED = W-ENABLE-INFO
           MODIFY Screen4-Rb-REA2 ENABLED W-ENABLE-INFO
           MODIFY Screen4-Rb-REA3 ENABLED W-ENABLE-INFO
           MODIFY Screen4-Ef-MIN ENABLED W-ENABLE-INFO
           MODIFY Screen4-Ef-MAX ENABLED W-ENABLE-INFO
           MODIFY Screen4-Ef-DAM ENABLED W-ENABLE-INFO
           .
      *
       Screen4-Rb-REA1-Ev-Cmd-Clicked.
           MOVE 0 TO W-V-REA
           .
       Screen4-Rb-REA2-Ev-Cmd-Clicked.
           MOVE 1 TO W-V-REA
           .
       Screen4-Rb-REA3-Ev-Cmd-Clicked.
           MOVE 2 TO W-V-REA
           .
       Screen4-Rb-REA4-Ev-Cmd-Clicked.
           MOVE 3 TO W-V-REA
           .

       Screen4-Gd-1-Ev-Msg-Begin-Entry.
           MOVE Event-Action-Fail TO Event-Action
           EXIT PARAGRAPH
           .
      *  Tout cocher sur "A Créer"
       Screen4-Pb-C1-Link.
           PERFORM VARYING Z FROM 1 BY 1 UNTIL Z > 300 OR
              T-AGE-COD(Z) = SPACES
                IF T-AGE-CRE(Z) = 1 MOVE 2 TO T-AGE-CRE(Z)
                   MODIFY Screen4-GD-1 (Z + 1, 2)
                   BITMAP = CBCHECK13-JPG
                END-IF
           END-PERFORM
           .
      *  Tout décocher sur "A Créer"
       Screen4-Pb-D1-Link.
           PERFORM VARYING Z FROM 1 BY 1 UNTIL Z > 300 OR
              T-AGE-COD(Z) = SPACES
                IF T-AGE-CRE(Z) = 2 MOVE 1 TO T-AGE-CRE(Z)
                   MODIFY Screen4-GD-1 (Z + 1, 2)
                   BITMAP = CBUNCHK13-JPG
                END-IF
           END-PERFORM
           .
      *  Inverser sur "A Créer"
       Screen4-Pb-I1-Link.
           PERFORM VARYING Z FROM 1 BY 1 UNTIL Z > 300 OR
              T-AGE-COD(Z) = SPACES
                IF T-AGE-CRE(Z) = 2 MOVE 1 TO T-AGE-CRE(Z)
                   MODIFY Screen4-GD-1 (Z + 1, 2)
                   BITMAP = CBUNCHK13-JPG
                ELSE IF T-AGE-CRE(Z) = 1 MOVE 2 TO T-AGE-CRE(Z)
                         MODIFY Screen4-GD-1 (Z + 1, 2)
                         BITMAP = CBCHECK13-JPG
                     END-IF
                END-IF
           END-PERFORM
           .
      *  Tout cocher sur "A Modifier"
       Screen4-Pb-C2-Link.
           PERFORM VARYING Z FROM 1 BY 1 UNTIL Z > 300 OR
              T-AGE-COD(Z) = SPACES
                IF T-AGE-MOD(Z) = 1 MOVE 2 TO T-AGE-MOD(Z)
                   MODIFY Screen4-GD-1 (Z + 1, 3)
                   BITMAP = CBCHECK13-JPG
                END-IF
           END-PERFORM
           .
      *  Tout décocher sur "A Modifier"
       Screen4-Pb-D2-Link.
           PERFORM VARYING Z FROM 1 BY 1 UNTIL Z > 300 OR
              T-AGE-COD(Z) = SPACES
                IF T-AGE-MOD(Z) = 2 MOVE 1 TO T-AGE-MOD(Z)
                   MODIFY Screen4-GD-1 (Z + 1, 3)
                   BITMAP = CBUNCHK13-JPG
                END-IF
           END-PERFORM
           .
      *  Inverser sur "A Créer"
       Screen4-Pb-I2-Link.
           PERFORM VARYING Z FROM 1 BY 1 UNTIL Z > 300 OR
              T-AGE-COD(Z) = SPACES
                IF T-AGE-MOD(Z) = 2 MOVE 1 TO T-AGE-MOD(Z)
                   MODIFY Screen4-GD-1 (Z + 1, 3)
                   BITMAP = CBUNCHK13-JPG
                ELSE IF T-AGE-MOD(Z) = 1 MOVE 2 TO T-AGE-MOD(Z)
                         MODIFY Screen4-GD-1 (Z + 1, 3)
                         BITMAP = CBCHECK13-JPG
                     END-IF
                END-IF
           END-PERFORM
           .
      *
       Screen4-Pb-ANNULER-Link.
           Perform Acu-Screen4-Exit.
           .
      *
       Screen4-Ev-Cmd-Close.
           PERFORM Mistral-WindowClosing
           .
       Screen4-Cm-TETI-Ev-Ntf-Selchange.
           IF Event-data-1 = 2 MOVE "B" TO W-V-TETI
           ELSE MOVE " " TO W-V-TETI.
           .

       Screen4-Ef-ETI-Ev-Msg-Validate.

           .
       Screen4-Pb-LETI-Link.
      *     Initialize LK-LISTE
      *     IF W-V-TETI = "B" MOVE W-V-TETI TO LK-LISTE-MO
      *     ELSE              MOVE "A"      TO LK-LISTE-MO
      *     END-IF
      *     Move W-V-ETI  To LK-LISTE-CODN(1)
      *     Call "../../mistral/o/mmet-l.acu" Using ZONE-PALM LK-LISTE
      *     Cancel "../../mistral/o/mmet-l.acu"
      *     IF LK-LISTE-CODN(1) NOT = ZERO
      *        Move LK-LISTE-CODN(1) To W-V-ETI 
      *     END-IF
      *     MODIFY Screen4-Ef-ETI, VALUE W-V-ETI
           .
      *
       Screen4-Ef-DAM-Ev-Msg-Validate.
           COPY "W:/mistral/copy/Ef-Date10-Ecr2Fic.cbl"
                REPLACING ==CPYDAT-ECR== BY ==X-DAM==
                          ==CPYDAT-FIC== BY ==W-V-DAM==.
           MODIFY Screen4-Ef-DAM, VALUE = X-DAM
           IF W-V-DAM(1:6) > PCOURS-MPAR
             MOVE " La date de Mini-Maxi doit pas être postérieure à la 
      -      "période en cours" TO ACU-MSG-1 PERFORM MSG-INFO
             MOVE EVENT-ACTION-FAIL TO EVENT-ACTION.
           .
      *
       Screen4-Ef-MIN-Ev-Msg-Validate.
           INQUIRE Screen4-EF-MAX VALUE IN W-V-MAX
           INQUIRE Screen4-EF-MIN VALUE IN W-V-MIN
           IF W-V-MIN > ZERO AND W-V-MAX > ZERO AND W-V-MAX < W-V-MIN
              MOVE "Le stock maxi doit être > stock mini"
              TO ACU-MSG-1 PERFORM MSG-INFO
              MOVE EVENT-ACTION-FAIL TO EVENT-ACTION.
           IF W-V-DAM = ZERO AND (W-V-MIN > ZERO OR W-V-MAX > ZERO)
              MOVE DTT-PALM TO W-V-DAM
              COPY "W:/mistral/copy/Ef-Date10-Fic2Ecr.cbl"
                  REPLACING ==CPYDAT-FIC== BY ==W-V-DAM==
                          ==CPYDAT-ECR== BY ==X-DAM==.
              MODIFY Screen4-Ef-DAM, VALUE = X-DAM
           END-IF
           .
      *
       Screen4-Cb-CAS-Link.
           INQUIRE Screen4-Cb-CAS VALUE IN W-D-CAS
           IF W-D-CAS = 1 
              MOVE "Confirmez-vous la duplication du casier ?" 
              TO ACU-MSG-1 PERFORM MSG-ON
              IF ACU-RETURN-VALUE = 2
                 MODIFY Screen4-Cb-CAS VALUE 0
              END-IF
           END-IF.
           .
      *
       Screen4-Cb-MIN-Link.
           INQUIRE Screen4-Cb-MIN VALUE IN W-D-MIN
           IF W-D-MIN = 1 
              MOVE "Confirmez-vous la duplication du Mini et du Maxi ?" 
              TO ACU-MSG-1 PERFORM MSG-ON
              IF ACU-RETURN-VALUE = 2
                 MODIFY Screen4-Cb-MIN VALUE 0
              END-IF
           END-IF.
           .
      * BValidation du traitement de mise à jour automatique
       Screen4-Pb-VALIDER-Link.
           PERFORM Screen4-Ef-MIN-Ev-Msg-Validate.
           IF Event-Action = Event-Action-Fail 
              MOVE ZERO TO EVENT-ACTION EXIT PARAGRAPH.
           PERFORM Screen4-Ef-DAM-Ev-Msg-Validate
           IF Event-Action = Event-Action-Fail
              MOVE ZERO TO EVENT-ACTION EXIT PARAGRAPH.
           INQUIRE Screen4-Cb-STO VALUE IN W-D-STO
           INQUIRE Screen4-Cb-REA VALUE IN W-D-REA
           INQUIRE Screen4-Cb-ETI VALUE IN W-D-ETI
           INQUIRE Screen4-Cb-CAS VALUE IN W-D-CAS
           INQUIRE Screen4-Cb-MIN VALUE IN W-D-MIN
           IF W-D-STO = ZERO AND W-D-REA = ZERO AND W-D-ETI = ZERO AND
              W-D-CAS = ZERO AND W-D-MIN = ZERO
              MOVE "Aucune information à actualiser " TO ACU-MSG-1
              MOVE "Cliquer sur le bouton Annuler pour sortir sans mise 
      -       "à jour " TO ACU-MSG-2
              PERFORM MSG-INFO
              EXIT PARAGRAPH.
           MOVE 0 TO W-OK
           PERFORM VARYING Z FROM 1 BY 1 UNTIL Z > 300 OR 
              T-AGE-COD(Z) = SPACES
              IF T-AGE-MOD(Z) = 2 MOVE 1 TO W-OK END-IF
              IF T-AGE-CRE(Z) = 2 MOVE 1 TO W-OK END-IF
           END-PERFORM
           IF W-OK = 0
              MOVE "Aucune agence selectionnée ! "
      -       TO ACU-MSG-1
              PERFORM MSG-INFO
              EXIT PARAGRAPH.
           IF W-D-STO = ZERO
              MOVE ZERO TO W-OK
              PERFORM VARYING Z FROM 1 BY 1 UNTIL Z > 300 OR 
                   T-AGE-COD(Z) = SPACES
                   IF T-AGE-CRE(Z) = 2 MOVE 1 TO W-OK END-IF
              END-PERFORM
              IF W-OK = 1
              MOVE "Le paramètre 'gestion de stock' doit être à actualis
      -       "er pour les agences à créer" TO ACU-MSG-1
              PERFORM MSG-INFO
              EXIT PARAGRAPH.
           INQUIRE Screen4-Ef-CAS VALUE IN W-V-CAS
           INQUIRE Screen4-Ef-ETI VALUE IN W-V-ETI
           IF W-D-ETI = 1 AND W-V-ETI = ZERO
              MOVE "Code étiquetage non renseigné !" TO ACU-MSG-1
              MOVE "Confirmez-vous le traitement ? " TO ACU-MSG-2
              PERFORM MSG-ON
              IF ACU-RETURN-VALUE = 2 EXIT PARAGRAPH.
           IF W-D-CAS = 1 AND W-V-CAS = SPACES
              MOVE "Casier non renseigné !" TO ACU-MSG-1
              MOVE "Confirmez-vous le traitement ? " TO ACU-MSG-2
              PERFORM MSG-ON
              IF ACU-RETURN-VALUE = 2 EXIT PARAGRAPH.
           IF W-D-MIN = 1 AND W-V-MIN = ZERO AND W-V-MAX = ZERO
              MOVE "Mini - Maxi non renseignés !" TO ACU-MSG-1
              MOVE "Confirmez-vous le traitement ? " TO ACU-MSG-2
              PERFORM MSG-ON
              IF ACU-RETURN-VALUE = 2 EXIT PARAGRAPH.
           PERFORM MAJ-AUTO-MXARTSA
           Perform Acu-Screen4-Exit.
           .
      *  MAJ automatique ARTSA
       MAJ-AUTO-MXARTSA.
           PERFORM VARYING Z FROM 1 BY 1 UNTIL Z > 300 OR 
              T-AGE-COD(Z) = SPACES
                IF T-AGE-MOD(Z) = 2 
                   PERFORM LECT-MAJ-AUTO-MXARTSA
                   PERFORM ACTUA-MXARTSA
                   PERFORM REW-MXARTSA
                   IF STO-MASA NOT = SV-STO
                      PERFORM DMAJ-MODZON-STO THRU FMAJ-MODZON-STO
                   END-IF
                END-IF
                IF T-AGE-CRE(Z) = 2
                   INITIALIZE ENR-MASA
                   MOVE T-AGE-COD(Z)  TO AGE-MASA
                   MOVE LK-ART-ASA-COD TO COD-MASA
                   PERFORM ACTUA-MXARTSA
                   PERFORM WRI-MXARTSA
                END-IF
           END-PERFORM.
       LECT-MAJ-AUTO-MXARTSA.
           MOVE T-AGE-COD(Z)  TO AGE-MASA
           MOVE LK-ART-ASA-COD TO COD-MASA
           READ MXARTSA LOCK INVALID 
                MOVE "Lecture MXARTSA" TO ACU-MSG-1
                MOVE CLE1-MASA TO ACU-MSG-2
                PERFORM ERREUR
           END-READ
           PERFORM STAT
           IF IND-STAT = 1 GO LECT-MAJ-AUTO-MXARTSA.
           MOVE STO-MASA TO SV-STO.
       ACTUA-MXARTSA.
           IF W-D-STO = 1 MOVE W-V-STO  TO STO-MASA.
           IF W-D-ETI = 1 MOVE W-V-TETI TO TETI-MASA
                          MOVE W-V-ETI  TO ETI-MASA.
           IF W-D-CAS = 1 MOVE W-V-CAS  TO CAS-MASA.
           IF STO-MASA = 2 MOVE ZERO TO REA-MASA MIN-MASA MAX-MASA
                                        DAM-MASA
           ELSE IF W-D-REA = 1 MOVE W-V-REA TO REA-MASA
                END-IF
                IF W-D-MIN = 1 MOVE W-V-MIN TO MIN-MASA
                               MOVE W-V-MAX TO MAX-MASA
                               MOVE W-V-DAM TO DAM-MASA
                END-IF.
       
      * Clic droit 
       Screen1-DaGd-1-Ev-Msg-Grid-Rbutton-Down.
           IF (CDFB = "M" OR "C") AND Event-Data-1 = COL-STO 
              PERFORM Screen1-DaGd-1-Ev-Msg-Goto-Cell
              INQUIRE Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y, 1)
                      CELL-DATA IN Screen1-DaGd-1-AGE-ABR-MAGC
              MOVE Screen1-DaGd-1-AGE-ABR-MAGC TO W-AGE-ABR-MAGC
              PERFORM READ-GRID-MXARTSA
              INQUIRE Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y, COL2-STO),
                      CELL-DATA IN LK-MASA-NUM
              CALL "W$MENU" USING WMENU-POPUP, Screen1-Mn-3-Handle
           END-IF
           IF (CDFB = "M" OR "C") AND Event-Data-1 = COL-REA 
              PERFORM Screen1-DaGd-1-Ev-Msg-Goto-Cell
              IF NOT (Screen1-DaGd-1-STO-MASA = 1 OR 9)
                 MOVE Event-Action-Fail TO Event-Action
                 EXIT PARAGRAPH
              END-IF
              INQUIRE Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y, 1)
                      CELL-DATA IN Screen1-DaGd-1-AGE-ABR-MAGC
              MOVE Screen1-DaGd-1-AGE-ABR-MAGC TO W-AGE-ABR-MAGC
              PERFORM READ-GRID-MXARTSA
              INQUIRE Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y, COL2-REA),
                      CELL-DATA IN LK-MASA-NUM
              CALL "W$MENU" USING WMENU-POPUP, Screen1-Mn-4-Handle
           END-IF
           MOVE Screen1-DaGd-1-AGE-ABR-MAGC TO W-AGE-ABR-MAGC
           IF Event-Data-1 = COL-PAMP AND AUTO-MODPAMP = 1 THEN
              PERFORM Screen1-DaGd-1-Ev-Msg-Goto-Cell
              INQUIRE Screen1-DaGd-1(Screen1-DaGd-1-Cursor-Y, 1)
                      CELL-DATA IN Screen1-DaGd-1-AGE-ABR-MAGC
              MOVE Screen1-DaGd-1-AGE-ABR-MAGC TO W-AGE-ABR-MAGC
              PERFORM READ-GRID-MXARTSA

051114        IF CDFB <> "C" THEN
                 MOVE PAMP-MASA  TO SV-PAMP
                 MOVE PRMP-MASA  TO SV-PRMP
                 MOVE PAMP1-MASA TO SV-PAMP1
                 MOVE PRMP1-MASA TO SV-PRMP1
                 CALL "W$MENU" USING WMENU-POPUP, Screen1-Mn-2-Handle
051114        END-IF

           END-IF
           .

      *   Menu contextuel Gestion de stock
       Screen1-Mn-3-MI-Géréenstock-Link.
           MOVE 1 TO LK-MASA-NUM
           PERFORM MEP-STO
           PERFORM MAJ-GRID-MXARTSA.
       Screen1-Mn-3-MI-Nongéréenstock-Link.
           MOVE 2 TO LK-MASA-NUM
           PERFORM MEP-STO
           PERFORM MAJ-GRID-MXARTSA.
       Screen1-Mn-3-MI-Dépotvente-Link.
           MOVE 9 TO LK-MASA-NUM
           PERFORM MEP-STO
           PERFORM MAJ-GRID-MXARTSA.

      *   Menu contextuel Réappro
       Screen1-Mn-4-MI-Oui-Link.
           MOVE 0 TO LK-MASA-NUM
           PERFORM MEP-REA
           PERFORM MAJ-GRID-MXARTSA.
       Screen1-Mn-4-MI-Non-Link.
           MOVE 1 TO LK-MASA-NUM
           PERFORM MEP-REA
           PERFORM MAJ-GRID-MXARTSA.
       Screen1-Mn-4-MI-MiniMaxiFWilson-Link.
           MOVE 2 TO LK-MASA-NUM
           PERFORM MEP-REA
           PERFORM MAJ-GRID-MXARTSA.

      *  Ecran Modification PAMP - PRMP
       Screen1-Mn-1-MI-ModificationPAMP-Link.
           PERFORM Acu-ScreenPamp-Routine
           PERFORM Affiche-Grille
           .

051114 ScreenPamp-Aft-Initdata.
      *-----------------------*
120819     MOVE ScreenPAMP-HANDLE TO MCF-HANDLE-FS
120819     PERFORM MisCentreFenetre
           IF MOI-MPAR = 01 MOVE 12 TO W-M1
           ELSE ADD -1 MOI-MPAR GIVING W-M1.
           MODIFY ScreenPamp-La-M1, TITLE MOI(W-M1)
           MODIFY ScreenPamp-La-M,  TITLE MOI(MOI-MPAR)
           MODIFY ScreenPamp-Ef-PAMP1, VALUE PAMP1-MASA
           MODIFY ScreenPamp-Ef-PRMP1, VALUE PRMP1-MASA
           MODIFY ScreenPamp-Ef-PAMP,  VALUE PAMP-MASA
           MODIFY ScreenPamp-Ef-PRMP,  VALUE PRMP-MASA
           .
131117 ScreenPamp-Pb-Mod-M1-Ev-Cmd-Clicked.
           MOVE 
           "Confirmez-vous la modification du PAMP/PRMP du mois précéden
      -    "t ?" TO ACU-MSG-1
           MOVE 
           "Pensez à modifier le PAMP/PRMP du mois en cours !" 
           TO ACU-MSG-2
           PERFORM MSG-ON
           IF ACU-RETURN-VALUE <> 1 EXIT PARAGRAPH
           END-IF
           MODIFY ScreenPamp-Ef-PAMP1 enabled = 1
           MODIFY ScreenPamp-Ef-PRMP1 enabled = 1
           MODIFY ScreenPamp-Pb-Mod-M1 VISIBLE 0
           MOVE 4 TO ACCEPT-CONTROL
           MOVE 1 TO CONTROL-ID
           .

131117 ScreenPamp-Ef-PAMP1-Aft-Procedure.
      *--------------------------------*
           INQUIRE ScreenPamp-Ef-PAMP1, VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==PAMP1-MASA==.      
           MODIFY ScreenPamp-Ef-PAMP1, VALUE PAMP1-MASA
           .
051114 ScreenPamp-Ef-PAMP-Aft-Procedure.
      *--------------------------------*
           INQUIRE ScreenPamp-Ef-PAMP, VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==PAMP-MASA==.      
           MODIFY ScreenPamp-Ef-PAMP, VALUE PAMP-MASA
           . 
131117 ScreenPamp-Ef-PRMP1-Aft-Procedure.
      *--------------------------------*
           INQUIRE ScreenPamp-Ef-PRMP1, VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==PRMP1-MASA==.      
           MODIFY ScreenPamp-Ef-PRMP1, VALUE PRMP1-MASA

           .

051114 ScreenPamp-Ef-PRMP-Aft-Procedure.
      *--------------------------------*
           INQUIRE ScreenPamp-Ef-PRMP, VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==PRMP-MASA==.      
           MODIFY ScreenPamp-Ef-PRMP, VALUE PRMP-MASA
           .

       ScreenPamp-Pb-ANNULER-Link.
           Perform Acu-ScreenPamp-Exit.
           .
      *
       ScreenPamp-Pb-VALIDER-Link.
           IF PAMP1-MASA NOT = SV-PAMP1 OR PRMP1-MASA NOT = SV-PRMP1
              MOVE 1 TO IND-MAJ
              PERFORM REW-MXARTSA
              PERFORM MAJ-MODPAMP
           END-IF
           IF PAMP-MASA NOT = SV-PAMP OR PRMP-MASA NOT = SV-PRMP
              MOVE 2 TO IND-MAJ
              PERFORM REW-MXARTSA
              PERFORM MAJ-MODPAMP
           END-IF
           UNLOCK MXARTSA
           Perform Acu-ScreenPamp-Exit.
           .
      *
       MAJ-MODPAMP.
      *
       DMAJ-MODZON-STO.

       FMAJ-MODZON-STO.
           .
      *
       ERREUR.
           PERFORM MSG-ERREUR
           PERFORM CLOSE-FILE-RTN
           GO ACU-EXIT-RTN.

      *--- Import données Stock
       Screen1-Pb-Import-Link.
           PERFORM Acu-ScreenImport-Routine.

120819 ScreenImport-Aft-Initdata.
      *-------------------------*
           MOVE ScreenImport-HANDLE TO MCF-HANDLE-FS
           PERFORM MisCentreFenetre
           .
       ScreenImpo-Rb-IMP1-Link.
           MODIFY ScreenImpo-La-DesFic TITLE
           "Fichier au format csv contenant 5 colonnes: code agence, cod
      -    "e article, stock mini, stock maxi, code dépot. La colonne 'c
      -    "ode dépot' est vide pour le stock central. Fichier à placer 
      -    "dans le dossier réseau FSEQ".
           .
       ScreenImpo-Rb-IMP2-Link.
           MODIFY ScreenImpo-La-DesFic TITLE
           "Fichier au format csv contenant 3 colonnes: code agence, cod
      -    "e article, code périodicité inventaire. Fichier à placer dan
      -    "s le dossier réseau FSEQ".
           .
      *
       ScreenImpo-Pb-FIC-Link.
           STRING MX-DIR   DELIMITED BY "  "
                  "/fseq"  DELIMITED BY SIZE
                  INTO LK-LSTDIR-L-REP         
           MOVE "csv" TO LK-LSTDIR-L-EXT  
           CALL   "lstdir-l.acu" USING ZONE-PALM LK-LSTDIR-L       | Liste des fichiers /acuf/mx0001/fseq/*.csv
           CANCEL "lstdir-l.acu"
           IF LK-LSTDIR-L-FIC = SPACE THEN
              MOVE SPACES TO W-FIC 
              EXIT PARAGRAPH
           END-IF 
           MOVE LK-LSTDIR-L-FIC TO W-FIC
           MODIFY ScreenImpo-Ef-FIC VALUE W-FIC 
           .
       ScreenImpo-Pb-Quit-LinkTo.
           PERFORM Acu-ScreenImport-Exit
           .
      *
       ScreenImpo-Pb-Import-Link.
           

       READ-IMP-ARTSA.
           MOVE ZERO TO W-ERR
           MOVE W-ART TO COD-MART
           READ MXART INVALID KEY
                MOVE 1 TO W-ERR
                PERFORM MSG-IMPORT
                EXIT PARAGRAPH
           END-READ
           PERFORM STAT
           IF CANN-MART = 1 
              MOVE 2 TO W-ERR
              PERFORM MSG-IMPORT
              EXIT PARAGRAPH.
           MOVE I-AGE TO AGE-MASA
           MOVE W-ART TO COD-MASA.
           READ MXARTSA LOCK INVALID
                MOVE 1 TO W-ERR
                PERFORM MSG-IMPORT
                EXIT PARAGRAPH.
           PERFORM STAT
           MOVE "ARTSA" TO ScreenOccupe-Fic
           MOVE CLE1-MASA TO ScreenOccupe-Cle
           PERFORM Mis-EnregOccupe
           IF IND-STAT = 1 GO READ-IMP-ARTSA.

       REW-ARTSA.
           ACCEPT DME-MASA FROM CENTURY-DATE
           REWRITE ENR-MASA INVALID 
               MOVE "Problème Réécriture MXARTSA "TO ACU-MSG-1
               MOVE CLE1-MASA TO ACU-MSG-2
               PERFORM MSG-ERREUR
           END-REWRITE
           PERFORM STAT.
           PERFORM AFF-NB-MAJ.
       AFF-NB-MAJ.
           ADD 1 TO NB-MAJ
           MOVE NB-MAJ TO A6
           IF NB-MAJ < 100 OR NB-MAJ(5:2) = "00"
              MODIFY ScreenImpo-Ef-MAJ VALUE A6
           END-IF
           .
       MSG-IMPORT.
           STRING "Agence: " I-AGE "  - Code article: " W-ART 
                  DELIMITED BY SIZE INTO ACU-MSG-1
           IF W-ERR = 1 OR 2
              STRING "Article inexistant ou annulé" 
                     DELIMITED BY SIZE 
                     INTO ACU-MSG-2.
           IF W-ERR = 3
              STRING "Mini > au maxi    " 
                     "Mini=" W-MIN "  Maxi=" W-MAX 
                     DELIMITED BY SIZE 
                     INTO ACU-MSG-2.
           IF W-ERR = 6
              STRING "Article non géré en stock " 
                     DELIMITED BY SIZE 
                     INTO ACU-MSG-2.
           IF W-ERR = 4
              STRING "Code périodicité inventaire inexistant: " 
                     W-PINV 
                     DELIMITED BY SIZE 
                     INTO ACU-MSG-2.
           IF W-ERR = 5
              STRING "Dépot inexistant: " W-DEP 
                     DELIMITED BY SIZE 
                     INTO ACU-MSG-2.
           PERFORM MSG-INFO.
           ADD 1 TO NB-ERR
           MOVE NB-ERR TO A6
           IF NB-ERR < 100 OR NB-ERR(5:2) = "00"
              MODIFY ScreenImpo-Ef-ERR VALUE A6
           END-IF
           .
       Mis-EnregOccupe.
           COPY "W:/mistral/copy/Mis-EnregOccupe.cbl".
           .
           
      *


       

      *{Bench}end
       REPORT-COMPOSER SECTION.
