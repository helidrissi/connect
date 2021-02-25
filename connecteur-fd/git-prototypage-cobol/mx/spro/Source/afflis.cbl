      *{Bench}prg-comment
      * afflis.cbl
      * afflis.cbl is generated from W:\mx\spro\afflis.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. afflis.
       AUTHOR. fatima-zahra.selouan.
       DATE-WRITTEN. mercredi 8 juillet 2020 10:47:33.
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
       COPY "W:\mistral\fdt\SL-AFFLIS.cpy".
      *{Bench}file-control
       COPY "LISTE.sl".
       COPY "COBCAP.sl".
      *{Bench}end
       DATA                        DIVISION.
       FILE                        SECTION.
       COPY "W:\mistral\fdt\Fd-AFFLIS.cpy".
      *{Bench}file
       COPY "LISTE.fd".
       COPY "COBCAP.fd".
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
       77 Key-Status IS SPECIAL-NAMES CRT STATUS PIC 9(4) VALUE 0.
           88 Exit-Pushed VALUE 27.
           88 Message-Received VALUE 95.
           88 Event-Occurred VALUE 96.
           88 Screen-No-Input-Field VALUE 97.
           88 Screen-Time-Out VALUE 99.
      * property-defined variable

      * user-defined variable
       77 Screen1-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
           COPY  "cobcap.wrk".
           COPY  "Gd-Sort.wrk".
           COPY  "LK-LISTE.wrk".
       77 W-LOG-PALM       PIC  9(3).
       77 W-NPR-PALM       PIC  9(3).
       77 ASSIGN-LISTE     PIC  X(128).
       77 MS-Sans-Serif9B
                  USAGE IS HANDLE OF FONT VALUE NULL.
       01 Screen1-Gd-1-Record.
           05 Screen1-Gd-1-SEL PIC  X(30).
           05 Screen1-Gd-1-COD PIC  X(50).
           05 Screen1-Gd-1-LIB PIC  X(50).
           05 Screen1-Gd-1-ABR PIC  X(50).
       77 VALIDER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ANNULER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 w-entry          PIC  X.
       77 W-Count          PIC  9(6).
       77 W-index          PIC  9(6).
       77 w-sel            PIC  9.
       77 w-countSel       PIC  9(4).
       77 w-gd1Col         PIC  9(6).
       77 w-controle       PIC  9(4)
                  VALUE IS 0.
      *1 = classé par code
      *2 = Classé par libellé
       77 w-key            PIC  9
                  VALUE IS 1.
      *1 = Ordre croissant
      *2 = ordre décroissant
       77 w-order          PIC  9
                  VALUE IS 1.
       77 i    PIC  9(3).
       77 s    PIC  X(80).
       77 s2   PIC  X(32).
       77 A3   PIC  ZZ9.
       77 LISTE-FILE-STATUS            PIC  X(2).
           88 Valid-LISTE VALUE IS "00" THRU "09". 
       77 Screen1-Ef-1-Value           PIC  X(30).
       77 Small-Font
                  USAGE IS HANDLE OF FONT SMALL-FONT.
       77 RECHERC24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ZOOMxxx16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Default-Font
                  USAGE IS HANDLE OF FONT DEFAULT-FONT.
       77 MS-Sans-Serif9
                  USAGE IS HANDLE OF FONT VALUE NULL.
       77 OKCOCHE12-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 VALIDER16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 VALIDER12-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 VALIDER12-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FILE-STATUS      PIC  X(2).
           88 Valid-COBCAP VALUE IS "00" THRU "09". 
       77 ENGRSIM16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FINDNEX16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TRIERAD10-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TRIERAE10-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TRIERDD10-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TRIERDE10-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ZOOMxxx16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ENGRDOU16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TOUTCOC24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TOUTDEC24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 INVSELE24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-SIZE           PIC  9(5)V99.
       77 W-ADD-SIZE       PIC  9(3)V99.
       01 TAB-SELECT.
           02 TAB-COD          PIC  X(6)
                      OCCURS 80 TIMES.
       01 R1-TAB-SELECT REDEFINES TAB-SELECT.
           02 TAB-CODN         PIC  9(6)
                      OCCURS 80 TIMES.
       01 R2-TAB-SELECT REDEFINES TAB-SELECT.
           02 TAB-CO8          PIC  X(8)
                      OCCURS 60 TIMES.
       01 R3-TAB-SELECT REDEFINES TAB-SELECT.
           02 TAB-CO8N         PIC  9(8)
                      OCCURS 60 TIMES.
       01 R4-TAB-SELECT REDEFINES TAB-SELECT.
           02 TAB-CO2          PIC  X(2)
                      OCCURS 240 TIMES.
       01 R5-TAB-SELECT REDEFINES TAB-SELECT.
           02 TAB-CO2N         PIC  9(2)
                      OCCURS 240 TIMES.
       77 W-MAX-COL        PIC  9(3).
       77 W-COD            PIC  X(6).
       77 W-CODN           PIC  9(6).
       77 W-CO8            PIC  X(8).
       77 W-CO8N           PIC  9(8).
       77 W-CO2            PIC  X(2).
       77 W-CO2N           PIC  9(2).
       77 W-LIB2           PIC  X(15).
       77 J    PIC  9(3).
       77 W-FCOUNT         PIC  ---9.
       77 RECHERC16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 QUITTER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-KEY-ORDER      PIC  X.
       77 Screen1-Mn-1-Handle
                  USAGE IS HANDLE OF MENU VALUE NULL.
       77 Visu-del         PIC  9
                  VALUE IS 0.
       77 ASSIGN-LISTE-TRIS            PIC  X(60).
       77 WASS-LISTE-TRIS  PIC  X(20)
                  VALUE IS "LISTE-TRIS".
       77 W-SCREEN1-SIZE   PIC  S9(4)V9(2)
                  VALUE IS 90,00.
       77 FLECHBB16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Screen1-Pg-T-Visible         PIC  9
                  VALUE IS 1.
       77 FLECHEH16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FLECHBA24-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-visible-sel    PIC  9
                  VALUE IS 0.
       77 WCOLOR-PEX       PIC  9(6)
                  VALUE IS 2.
       77 WTIT-PEX         PIC  X(7)
                  VALUE IS "PHASE 3".
       77 WVIS-PEX         PIC  9
                  VALUE IS 1.
       77 RECHERC32-jpg    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 VALIDER32-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 QUITTER32-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Screen1-Visible  PIC  9
                  VALUE IS 1.
       77 TABLETT16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 RECHERC16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 VALIDER16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.

      *{Bench}end
       LINKAGE                     SECTION.
      *{Bench}linkage
       77 LK-ZONE-PALM     PIC  X(500).
           COPY  "LK-GENLISTE.wrk".
      *{Bench}end
       SCREEN                      SECTION.
      *{Bench}copy-screen
       01 Screen1.
           03 Screen1-Pb-Unselect, Push-Button, 
              COL 162,00, LINE 43,92, LINES 3,08 CELLS, 
              SIZE 18,00 CELLS, 
              EXCEPTION-VALUE 71, ID IS 12, 
              TITLE "Annuler Sélection", VISIBLE 0.
           03 Screen1-La-maxsel, Label, 
              COL 45,14, LINE 44,38, LINES 3,08 CELLS, 
              SIZE 21,71 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 11, LABEL-OFFSET 0, 
              TRANSPARENT.
           03 Screen1-Gd-1, Grid, 
              COL 2,14, LINE 15,23, LINES 27,77 CELLS, 
              SIZE 177,86 CELLS, 
              3-D, CENTERED-HEADINGS, COLOR IS 2, COLUMN-HEADINGS, 
              DATA-COLUMNS (1, 31, 81, 131), 
              DISPLAY-COLUMNS (1, 31, 61, 111), 
              ALIGNMENT ("C", "U", "L", "U"), 
              DATA-TYPES ("X", "X(14)", "X", "X"), 
              SEPARATION (5, 5, 5, 5), 
              CURSOR-FRAME-WIDTH 0, DIVIDER-COLOR W-Divider-Color, 
              END-COLOR W-End-Color, FONT IS Default-Font, 
              HEADING-COLOR 257, 
              HEADING-DIVIDER-COLOR W-Heading-Divider-Color, 
              HEADING-FONT IS Default-Font, ID IS 1, NO-TAB, 
              NUM-COL-HEADINGS 1, NUM-ROWS W-Num-Rows, 
              RECORD-DATA Screen1-Gd-1-Record, TILED-HEADINGS, 
              VPADDING 50, VSCROLL, ATW-CSS-CLASS "table", 
              EVENT PROCEDURE Screen1-Gd-1-Event-Proc.
           03 Screen1-Pb-Cancel, Push-Button, 
              COL 162,29, LINE 2,23, LINES 24, SIZE 118, 
              BITMAP-HANDLE QUITTER24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 54, ID IS 3, NO-AUTO-DEFAULT, NO-TAB, 
              CANCEL-BUTTON, 
              TITLE "Quitter sans sélection", 
              ATW-CSS-CLASS "button-quitter", 
              EXCEPTION PROCEDURE Screen1-Pb-Cancel-Exception-Proc.
           03 Screen1-Pb-Check, Push-Button, 
              COL 2,14, LINE 44,38, LINES 24, SIZE 118, 
              BITMAP-HANDLE TOUTCOC24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 50, ID IS 4, 
              TITLE "Tout cocher", VISIBLE 0.
           03 Screen1-Pb-Uncheck, Push-Button, 
              COL 21,29, LINE 44,38, LINES 24, SIZE 118, 
              BITMAP-HANDLE TOUTDEC24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 51, ID IS 5, 
              TITLE "Tout décocher", VISIBLE 0.
           03 Screen1-Pb-Invert, Push-Button, 
              COL 40,43, LINE 44,38, LINES 24, SIZE 118, 
              BITMAP-HANDLE INVSELE24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 52, ID IS 6, 
              TITLE "Inverser", VISIBLE 0.
           03 Screen1-Pb-Accept, Push-Button, 
              COL 143,71, LINE 2,23, LINES 24, SIZE 118, 
              BITMAP-HANDLE VALIDER24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 53, ID IS 2, NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Accepter", ATW-CSS-CLASS "button-valider", 
              EXCEPTION PROCEDURE Screen1-Pb-Accept-Exception-Proc.
           03 Screen1-Ef-1, Entry-Field, 
              COL 11,86, LINE 6,23, LINES 3,08 CELLS, SIZE 29,00 CELLS, 
              3-D, COLOR IS 2, FONT IS Default-Font, ID IS 7, 
              MAX-TEXT 32, VALUE Screen1-Ef-1-Value, 
              AFTER PROCEDURE Screen1-Ef-1-Aft-Procedure, 
              BEFORE PROCEDURE Screen1-Ef-1-Bef-Procedure.
           03 Screen1-La-1, Label, 
              COL 2,43, LINE 7,23, LINES 3,08 CELLS, SIZE 9,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 8, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Libellé", TRANSPARENT.
           03 Screen1-Pb-1, Push-Button, 
              COL 125,00, LINE 2,23, LINES 24, SIZE 118, 
              BITMAP-HANDLE RECHERC16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 55, ID IS 9, NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Rechercher", ATW-CSS-CLASS "button-rechercher".
           03 Screen1-La-libr, Label, 
              COL 42,71, LINE 7,15, LINES 3,08 CELLS, SIZE 83,00 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 10, LABEL-OFFSET 0, 
              TRANSPARENT.
           03 Screen1-Bt-3, Bitmap, 
              COL 147,00, LINE 13,00, LINES 16, SIZE 10, 
              BITMAP-HANDLE TRIERAE10-JPG, BITMAP-NUMBER 1, 
              ID IS 16, VISIBLE 0.
           03 Screen1-Bt-4, Bitmap, 
              COL 148,57, LINE 13,00, LINES 16, SIZE 10, 
              BITMAP-HANDLE TRIERDD10-JPG, BITMAP-NUMBER 1, 
              ID IS 17, VISIBLE 0.
           03 Screen1-Bt-5, Bitmap, 
              COL 148,57, LINE 10,69, LINES 16, SIZE 10, 
              BITMAP-HANDLE TRIERDE10-JPG, BITMAP-NUMBER 1, 
              ID IS 18, VISIBLE 0.
           03 Screen1-Bt-2, Bitmap, 
              COL 147,14, LINE 10,69, LINES 16, SIZE 10, 
              BITMAP-HANDLE TRIERAD10-JPG, BITMAP-NUMBER 1, 
              ID IS 15, VISIBLE 0.
           03 Screen1-La-element, Label, 
              COL 65,00, LINE 44,38, LINES 3,08 CELLS, 
              SIZE 21,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 19, LABEL-OFFSET 0, 
              TRANSPARENT.
           03 Screen1-Bt-1, Bitmap, 
              COL 150,57, LINE 12,92, LINES 12, SIZE 12, 
              BITMAP-HANDLE VALIDER16-BMP, BITMAP-NUMBER 1, 
              ID IS 14, VISIBLE 0.
           03 Screen1-Cb-VisuDel, Check-Box, 
              COL 159,57, LINE 11,62, LINES 3,00 CELLS, 
              SIZE 20,71 CELLS, 
              COLOR IS 2, EXCEPTION-VALUE 1000, FONT IS Small-Font, 
              ID IS 13, MULTILINE, 
              TITLE "Voir les éléments supprimés", VALUE Visu-del, 
              VISIBLE 0.
           03 Screen1-La-1a, Label, 
              COL 2,43, LINE 11,46, LINES 3,08 CELLS, SIZE 9,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 20, LABEL-OFFSET 0, 
              TITLE "Choix", TRANSPARENT, VISIBLE W-visible-sel, 
              ATW-CSS-CLASS "h5".
           03 Screen1-Rb-Inclure, Radio-Button, 
              COL 12,71, LINE 12,31, LINES 1,62 CELLS, 
              SIZE 13,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 1, 
              ID IS 21, 
              TITLE "A inclure", VALUE LK-GENLISTE-TSEL, 
              VISIBLE W-visible-sel, 
              EVENT PROCEDURE Screen1-Rb-Inclure-Event-Proc.
           03 Screen1-Rb-Exclure, Radio-Button, 
              COL 27,43, LINE 12,31, LINES 1,62 CELLS, 
              SIZE 13,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 2, 
              ID IS 22, 
              TITLE "A exclure", VALUE LK-GENLISTE-TSEL, 
              VISIBLE W-visible-sel, 
              EVENT PROCEDURE Screen1-Rb-Exclure-Event-Proc.
           03 Screen1-La-2, Label, 
              COL 2,43, LINE 3,15, LINES 2,77 CELLS, SIZE 38,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 23, LABEL-OFFSET 0, 
              TITLE "Critères de recherche", TRANSPARENT, 
              ATW-CSS-CLASS "h5".

      *{Bench}end

      *{Bench}linkpara
       PROCEDURE DIVISION USING LK-ZONE-PALM, LK-GENLISTE.
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
           MOVE 14 TO Wpal-Color-Id
           MOVE 173 TO Wpal-Red
           MOVE 226 TO Wpal-Green
           MOVE 248 TO Wpal-Blue
           CALL "W$PALETTE" USING Wpalette-Set-Color, Wpalette-Data
      * load bitmap
           PERFORM Acu-Init-Bmp
      * open file
           PERFORM Acu-Open-Files
      *    After-Init
           .

       Acu-Init-Bmp.
      * bitmap loading
           COPY RESOURCE "QUITTER24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "QUITTER24.JPG", GIVING 
              QUITTER24-JPG
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
           COPY RESOURCE "RECHERC16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "RECHERC16.BMP", GIVING 
              RECHERC16-BMP
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
           COPY RESOURCE "VALIDER16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "VALIDER16.BMP", GIVING 
              VALIDER16-BMP
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
           IF QUITTER24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY QUITTER24-JPG
              MOVE 0 TO QUITTER24-JPG
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
           IF RECHERC16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY RECHERC16-BMP
              MOVE 0 TO RECHERC16-BMP
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
           IF VALIDER16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY VALIDER16-BMP
              MOVE 0 TO VALIDER16-BMP
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
                 LINK TO THREAD, NO SCROLL, TITLE-BAR, USER-GRAY, 
                 USER-WHITE, VISIBLE Screen1-Visible, NO WRAP, 
                 ATW-CSS-ID "modal_screen_afflis_1", 
                 EVENT PROCEDURE Screen1-Event-Proc, 
                 HANDLE IS Screen1-Handle
      * toolbar
           DISPLAY Screen1 UPON Screen1-Handle
      *    After-Create
           .

       Acu-Screen1-Init-Data.
      *    Before-Initdata
           PERFORM Acu-Screen1-Gd-1-Content
           PERFORM Screen1-Aft-Initdata
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
      * Columns' Setting
           MODIFY Screen1-Gd-1, X = 1, COLUMN-COLOR = 2, X = 1, 
              COLUMN-FONT = Default-Font, 
           MODIFY Screen1-Gd-1, X = 2, COLUMN-COLOR = 2, X = 2, 
              COLUMN-FONT = Default-Font, 
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
      * Screen1-Pb-Unselect Link To
              WHEN Key-Status = 71
                 PERFORM Screen1-Pb-Unselect-Link
      * Screen1-Pb-Cancel Link To
              WHEN Key-Status = 54
                 PERFORM Screen1-Pb-Cancel-Link
      * Screen1-Pb-Check Link To
              WHEN Key-Status = 50
                 PERFORM Screen1-Pb-Check-Link
      * Screen1-Pb-Uncheck Link To
              WHEN Key-Status = 51
                 PERFORM Screen1-Pb-Uncheck-Link
      * Screen1-Pb-Invert Link To
              WHEN Key-Status = 52
                 PERFORM Screen1-Pb-Invert-Link
      * Screen1-Pb-Accept Link To
              WHEN Key-Status = 53
                 PERFORM Screen1-Pb-Accept-Link
      * Screen1-Pb-1 Link To
              WHEN Key-Status = 55
                 PERFORM Screen1-Pb-1-Link
      * Screen1-Cb-VisuDel Link To
              WHEN Key-Status = 1000
                 PERFORM Screen1-Cb-VisuDel-Ev-Cmd-Clicked
           END-EVALUATE
           MOVE 1 TO Accept-Control
           .

       Acu-Close-Files.
      *    Before-Close
      *    After-Close
           .

      * LISTE

      * COBCAP

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
              PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell-Mouse
           WHEN Msg-Grid-Rbutton-Up
              PERFORM Screen1-Gd-1-Ev-Msg-Grid-Rbutton-Up
           WHEN Msg-Heading-Clicked
              PERFORM Screen1-Gd-1-Ev-Msg-Heading-Clicked
           END-EVALUATE
           .

       Screen1-Pb-Cancel-Exception-Proc.
           .

       Screen1-Pb-Accept-Exception-Proc.
           .

       Screen1-Rb-Inclure-Event-Proc.
           .

       Screen1-Rb-Exclure-Event-Proc.
           .
      ***   start event editor code   ***

           COPY "W:/mistral/copy/envmis.cbl".
           COPY "W:/mistral/copy/MisCentrefenetre.cbl".
      *
       Screen1-Bef-Create.
           PERFORM Controle-Call

           | Ouverture Fichier
           MOVE LK-GENLISTE-FILENAME TO ASSIGN-LISTE
           COPY "W:\mistral/copy/Assign-FICTMP.cbl"
                REPLACING ==FICTMP== BY ==liste-tris==
                          =='FICTMP'== BY ==liste-tris==.
           close liste-tris

           Open Input LISTE
           PERFORM Stat
                         
           IF LK-GENLISTE-MAXSEL = 0 MOVE 1 TO LK-GENLISTE-MAXSEL
           END-IF
           IF LK-GENLISTE-MAXSEL > 80 MOVE 80 TO LK-GENLISTE-MAXSEL
           END-IF
           IF TACTIL-PALM NOT = "t"
PROTO *          MOVE 47,80 TO W-SCREEN1-SIZE
                move 0 to Screen1-Pg-T-Visible
           END-IF
           IF LK-GENLISTE-TSEL = 1 OR 2 MOVE 1 TO W-VISIBLE-SEL
              IF LK-GENLISTE-TSEL = 1
                 MODIFY Screen1-Rb-Inclure, value 1
              END-IF
              IF LK-GENLISTE-TSEL = 2
                 MODIFY Screen1-Rb-Exclure, value 1
              END-IF
           END-IF
           MOVE 0 TO WVIS-PEX        | NC
101016     IF LK-GENLISTE-LABEL NOT = 0
             MOVE 1 TO WVIS-PEX
             IF LK-GENLISTE-LABEL = 1
               MOVE 1 TO WCOLOR-PEX
               MOVE "PHASE 1" TO WTIT-PEX
             ELSE
               IF LK-GENLISTE-LABEL = 2
                 MOVE 2 TO WCOLOR-PEX
                 MOVE "PHASE 2" TO WTIT-PEX
               ELSE
                 MOVE 13 TO WCOLOR-PEX
                 MOVE "PHASE 3" TO WTIT-PEX
               END-IF
             END-IF
           END-IF
    
           IF HANDLE-PALM <> 0 THEN  
      *       Pour éviter le clignotement de l'écran repositionné
              MOVE 0 TO Screen1-Visible
           ELSE
              MOVE 1 TO Screen1-Visible
           END-IF
           .
     
       Screen1-Aft-Initdata.

070819     MOVE HANDLE-PALM TO MCF-SV-HANDLE-PALM
070819     PERFORM MisCentreFenetreScreen1F10 

      *     IF TACTIL-PALM = "t"
      *        MODIFY Screen1-Pb-1, LINES 28 SIZE 28,
061216*           BITMAP-HANDLE RECHERC32-jpg
      *        MODIFY Screen1-Pb-Accept, LINES 31, SIZE 31,
061216*           BITMAP-HANDLE VALIDER32-JPG
      *        MODIFY Screen1-Pb-Cancel, LINES 31, SIZE 31, COL 47,70
061216*           BITMAP-HANDLE QUITTER32-JPG
      *     END-IF

           | Titre Grille
           MOVE SPACES TO s
           String "LISTE DES "   Delimited BY Size
                  FUNCTION UPPER-CASE(LK-GENLISTE-TITLE)
                  Delimited BY Size
           Into s
           MODIFY Screen1-HANDLE, Title = s

           IF LK-GENLISTE-ANN > 0
                MODIFY Screen1-Cb-VisuDel, VISIBLE 1
           ELSE MODIFY Screen1-Cb-VisuDel, VISIBLE 0
           END-IF
           IF LK-GENLISTE-ANN = 3
                MODIFY Screen1-Cb-VisuDel, VALUE 1
           ELSE MODIFY Screen1-Cb-VisuDel, VALUE 0
           END-IF

           PERFORM AdaptGrid
           Initialize Screen1-Gd-1-Record

           PERFORM Affiche-Liste

           IF LK-GENLISTE-MAXSEL > 1
              MODIFY Screen1-Pb-Check,   Visible = True
              MODIFY Screen1-Pb-Uncheck, Visible = True
              MODIFY Screen1-Pb-Invert,  Visible = True
              MOVE LK-GENLISTE-SELECT TO TAB-SELECT

              MOVE 0 TO W-COUNTSEL
              IF LK-GENLISTE-DATATYPE = 1
                 MOVE 80 TO W-MAX-COL
                 PERFORM VARYING I FROM 1 BY 1 UNTIL I > W-MAX-COL
                                               OR TAB-COD(I) = SPACES
                    ADD 1 TO W-COUNTSEL
                 END-PERFORM
              ELSE
              IF LK-GENLISTE-DATATYPE = 3
                 MOVE 60 TO W-MAX-COL
                 PERFORM VARYING I FROM 1 BY 1 UNTIL I > W-MAX-COL
                                               OR TAB-CO8(I) = SPACES
                    ADD 1 TO W-COUNTSEL
                 END-PERFORM
              ELSE
              IF LK-GENLISTE-DATATYPE = 4
                 MOVE 60 TO W-MAX-COL
                 PERFORM VARYING I FROM 1 BY 1 UNTIL I > W-MAX-COL
                                               OR TAB-CO8N(I) = ZERO
                    ADD 1 TO W-COUNTSEL
                 END-PERFORM
              ELSE
              IF LK-GENLISTE-DATATYPE = 5
                 MOVE 240 TO W-MAX-COL
                 PERFORM VARYING I FROM 1 BY 1 UNTIL I > W-MAX-COL
                                               OR TAB-CO2(I) = SPACES
                    ADD 1 TO W-COUNTSEL
                 END-PERFORM
              ELSE
              IF LK-GENLISTE-DATATYPE = 6
                 MOVE 240 TO W-MAX-COL
                 PERFORM VARYING I FROM 1 BY 1 UNTIL I > W-MAX-COL
                                               OR TAB-CO2N(I) = ZERO
                    ADD 1 TO W-COUNTSEL
                 END-PERFORM
              ELSE
                 MOVE 80 TO W-MAX-COL
                 PERFORM VARYING I FROM 1 BY 1 UNTIL I > W-MAX-COL
                                           OR ( LK-GENLISTE-ZERO = 0
                                                AND TAB-CODN(I) = ZERO )
                                           OR ( LK-GENLISTE-ZERO = 1
                                                AND TAB-COD(I) = SPACES)| sinon pas de prise en compte valeur 0 (ex : dépôt 0)
                    ADD 1 TO W-COUNTSEL
                 END-PERFORM
              END-IF
              END-IF
              END-IF
              END-IF
              END-IF

              IF  LK-GENLISTE-MAXSEL > 1
040919* Elevage service : dépôts 60 si pas d'agence 80 si agence sélectionnée, LK-GENLISTE-MAXSEL = 80
040619        AND LK-GENLISTE-MAXSEL < W-MAX-COL
                 MOVE LK-GENLISTE-MAXSEL TO W-MAX-COL
              END-IF
040619
071119*        IF W-MAX-COL < w-count |pourquoi on n'affiche que si le nombre est dépassé ?
                 MOVE SPACES TO s
                 MOVE W-MAX-COL TO A3
                 String "Nombre de Sélections autorisées : "
                        A3 Delimited BY Size  
                 Into s
                 MODIFY Screen1-La-maxsel, Title Is s
071119*        END-IF
040619
              PERFORM Display-COUNTSEL

120312        PERFORM FillSelect                   | Permet de conserver la sélection déjà existante si on cliquer sur "quitter" 
120312        MOVE w-countSel TO LK-GENLISTE-NBSEL

           END-IF           

           IF LK-GENLISTE-COL2 NOT = SPACES
              MOVE 9 TO W-ADD-SIZE

              INQUIRE Screen1-Handle, SIZE IN W-SIZE
              ADD W-ADD-SIZE TO W-SIZE
PROTO *        MODIFY Screen1-Handle, SIZE W-SIZE

      *        INQUIRE Screen1-Fr-1, SIZE IN W-SIZE
      *        ADD W-ADD-SIZE TO W-SIZE
      *        MODIFY Screen1-Fr-1, SIZE W-SIZE
010419*   
      *        IF LK-GENLISTE-HANDLE <> 0 THEN    
      **          La modification de SIZE déplace la fenêtre... 
      *           MOVE LK-GENLISTE-HANDLE TO WCF-HANDLE-FP
      *           PERFORM CentreFenetre
      *        END-IF
010419*
070819   
              IF MCF-SV-HANDLE-PALM <> 0 THEN    
      *          La modification de SIZE déplace la fenêtre... 
                 MOVE MCF-SV-HANDLE-PALM TO HANDLE-PALM
                 PERFORM MisCentreFenetreScreen1F10
              END-IF
070819
      *        INQUIRE Screen1-Pb-Accept, COLUMN IN W-SIZE
      *        ADD W-ADD-SIZE TO W-SIZE
      *        MODIFY Screen1-Pb-Accept, COLUMN W-SIZE
      *
      *        INQUIRE Screen1-Pb-Cancel, COLUMN IN W-SIZE
      *        ADD W-ADD-SIZE TO W-SIZE
      *        MODIFY Screen1-Pb-Cancel, COLUMN W-SIZE              
      *
      *        INQUIRE Screen1-Gd-1, SIZE IN W-SIZE
      *        ADD W-ADD-SIZE TO W-SIZE
      *        MODIFY Screen1-Gd-1, SIZE W-SIZE    

           END-IF
           .

       Affiche-Liste.
           Initialize Screen1-Gd-1-Record
           MODIFY Screen1-Gd-1, RESET-GRID = 1, mass-update = 1
           perform curseur-sablier
           PERFORM AdaptGrid
           PERFORM Begin-Fillliste Thru End-Fillliste.
           perform curseur-fleche
           MODIFY Screen1-Gd-1, mass-update = 0.
030615***  on se positionne sur la première ligne
020616     IF LK-GENLISTE-MAXSEL > 1 OR w-gd1Col = 0     | sinon on perd la préselection
              MOVE 2 TO Event-Data-2
              PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell.           

       Begin-Fillliste.           
           if w-key = 3
             CLOSE LISTE
             close liste-tris
             if w-order = 1
               sort liste-SORT 
                  on ascending key LIB2-LST-SORT
                  with duplicates in order
                  using liste
                  giving liste-tris
             else
               sort liste-SORT 
                  on descending key LIB2-LST-SORT
                  with duplicates in order
                  using liste
                  giving liste-tris
             end-if
             open i-o liste-tris perform stat
             open i-o liste perform stat
           else
             IF w-key = 1
               IF w-order = 1
                 MOVE low-value TO cle1-lst
                 Start LISTE Key >= CLE1-LST Invalid Go End-Fillliste
                 End-Start
               ELSE
                 MOVE high-value TO cle1-lst
                 Start LISTE Key <= CLE1-LST Invalid Go End-Fillliste
                 End-Start
               END-IF
             ELSE
               IF w-order = 1
                 MOVE low-value TO LIB-lst
                 start liste key >= cle2-lst invalid go End-Fillliste
                 end-start
               ELSE
                 MOVE high-value TO LIB-lst
                 start liste key <= cle2-lst invalid go End-Fillliste
                 end-start
               END-IF
             END-IF
           END-IF
           MOVE 0 TO w-count
           MOVE 1 TO w-index.

       Loop-Fillliste.
           IF W-KEY = 3
             Read LISTE-TRIS NEXT AT END GO End-Fillliste
             end-Read
           ELSE
             IF w-order = 1
               Read LISTE Next At End Go End-Fillliste
               End-Read
             ELSE
               Read LISTE previous At End Go End-Fillliste
               End-Read
             END-IF
           END-IF
           PERFORM Stat

           IF W-KEY = 3
             MOVE ENR-LST-TRIS TO ENR-LST
           END-IF
           IF LIB-LST Not = SPACES OR COD-LST NOT = SPACE
           THEN 
                IF LK-GENLISTE-MAXSEL = 1
                THEN IF LK-GENLISTE-DATATYPE = 3 OR 4
                     THEN MOVE CO8-LST TO Screen1-Gd-1-SEL
                     ELSE
                     IF LK-GENLISTE-DATATYPE = 5 OR 6
                     THEN MOVE COD-LST TO Screen1-Gd-1-SEL
                     ELSE
                          MOVE COB-LST TO Screen1-Gd-1-SEL
                     END-IF
                     END-IF
                     MOVE LIB-LST TO Screen1-Gd-1-COD
                ELSE
                     IF LK-GENLISTE-DATATYPE = 3 OR 4
                     THEN MOVE CO8-LST TO Screen1-Gd-1-COD
                     ELSE
                     IF LK-GENLISTE-DATATYPE = 5 OR 6
                     THEN MOVE COD-LST TO Screen1-Gd-1-COD
                     ELSE
                          MOVE COB-LST TO Screen1-Gd-1-COD
                     END-IF
                     END-IF                      
                     MOVE LIB-LST TO Screen1-Gd-1-LIB
                END-IF
                IF LK-GENLISTE-COL2 NOT = SPACES
                   IF LK-GENLISTE-MAXSEL = 1
                      MOVE LIB2-LST TO Screen1-Gd-1-LIB
                   ELSE
                      MOVE LIB2-LST TO Screen1-Gd-1-ABR
                   END-IF
                END-IF

                MODIFY Screen1-Gd-1, Record-To-ADD = Screen1-Gd-1-Record
                ADD 1 TO w-count w-index
                IF LK-GENLISTE-DATATYPE = 1
                THEN MODIFY Screen1-Gd-1, Y = w-index, X = 2, 
                            HIDDEN-DATA = COD-LST
                ELSE
                IF LK-GENLISTE-DATATYPE = 3
                THEN MODIFY Screen1-Gd-1, Y = w-index, X = 2, 
                            HIDDEN-DATA = CO8-LST
                ELSE
                IF LK-GENLISTE-DATATYPE = 4
                THEN MODIFY Screen1-Gd-1, Y = w-index, X = 2, 
                            HIDDEN-DATA = CO8N-LST
                ELSE
                IF LK-GENLISTE-DATATYPE = 5
                THEN MODIFY Screen1-Gd-1, Y = w-index, X = 2, 
                            HIDDEN-DATA = COD-LST
                ELSE
                IF LK-GENLISTE-DATATYPE = 6
                THEN MODIFY Screen1-Gd-1, Y = w-index, X = 2, 
                            HIDDEN-DATA = CODN-LST
                ELSE
                     MODIFY Screen1-Gd-1, Y = w-index, X = 2, 
                        HIDDEN-DATA = CODN-LST
                END-IF
                END-IF
                END-IF
                END-IF
                END-IF

                PERFORM PreSelection
                Initialize Screen1-Gd-1-Record
           END-IF

           Go loop-FillListe.

       End-Fillliste.
           IF W-KEY = 3 
             CLOSE LISTE-TRIS
           END-IF
           IF LK-GENLISTE-MAXSEL Not = 1
              MODIFY Screen1-Gd-1,
                 Alignment = ( "C" , "C" , "L" )
           END-IF
           EXIT PARAGRAPH
           .

       Preselection.
           IF LK-GENLISTE-MAXSEL = 1
           THEN IF  (LK-GENLISTE-DATATYPE = 1
                  AND  LK-GENLISTE-COD(1) = COD-LST) 
                OR  (LK-GENLISTE-DATATYPE = 2 
                  AND  LK-GENLISTE-CODN(1) = CODN-LST)
                OR  (LK-GENLISTE-DATATYPE = 3 
                  AND  LK-GENLISTE-CO8(1) = CO8-LST)
                OR  (LK-GENLISTE-DATATYPE = 4 
                  AND  LK-GENLISTE-CO8N(1) = CO8N-LST)
                OR  (LK-GENLISTE-DATATYPE = 5 
                  AND  LK-GENLISTE-CO2(1) = COD-LST)
                OR  (LK-GENLISTE-DATATYPE = 6 
                  AND  LK-GENLISTE-CO2N(1) = CODN-LST)
                THEN MOVE w-index TO w-gd1Col
      *               MODIFY Screen1-Gd-1, ROW-COLOR = W-Row-Hight-Color
080720                MODIFY Screen1-Gd-1, ROW-COLOR = 448
                     MODIFY Screen1-Gd-1, CURSOR-Y = w-index Y = w-index
                     EXIT PARAGRAPH
                END-IF
           ELSE
                MOVE LK-GENLISTE-NBSEL TO W-controle
                MOVE 1 TO i
                
                IF LK-GENLISTE-DATATYPE = 1 OR = 2 
                THEN PERFORM UNTIL i > 80 OR LK-GENLISTE-COD(i) = SPACES
                        IF (LK-GENLISTE-DATATYPE = 1 
                        AND  LK-GENLISTE-COD(i) = COD-LST) 
                        OR (LK-GENLISTE-DATATYPE = 2 
                        AND  LK-GENLISTE-CODN(i) = CODN-LST)
      *              MODIFY Screen1-Gd-1, X = 1, CELL-DATA = "X", 
      *                 HIDDEN-DATA = 1
                        THEN MODIFY Screen1-Gd-1, X = 1,
                                    CELL-DATA = SPACES, 
                                    HIDDEN-DATA = 1,
                                    Bitmap VALIDER16-BMP,
                                    Bitmap-Trailing 1
                             EXIT PARAGRAPH
                        END-IF
                        ADD 1 TO i
                     END-PERFORM      
                END-IF

                IF LK-GENLISTE-DATATYPE = 3 OR = 4 
                THEN PERFORM UNTIL i > 60 OR LK-GENLISTE-COD(i) = SPACES
                        IF (LK-GENLISTE-DATATYPE = 3 
                        AND  LK-GENLISTE-CO8(i) = CO8-LST)
                        OR (LK-GENLISTE-DATATYPE = 4 
                        AND  LK-GENLISTE-CO8N(i) = CO8N-LST)
      *              MODIFY Screen1-Gd-1, X = 1, CELL-DATA = "X", 
      *                 HIDDEN-DATA = 1
                        THEN MODIFY Screen1-Gd-1, X = 1,
                                    CELL-DATA = SPACES, 
                                    HIDDEN-DATA = 1,
                                    Bitmap VALIDER16-BMP,
                                    Bitmap-Trailing 1
                             EXIT PARAGRAPH
                        END-IF
                        ADD 1 TO i
                     END-PERFORM      
                END-IF

                IF LK-GENLISTE-DATATYPE = 5 OR = 6 
                THEN PERFORM UNTIL i > 99 OR LK-GENLISTE-COD(i) = SPACES
                        IF (LK-GENLISTE-DATATYPE = 5 
                        AND  LK-GENLISTE-CO2(i) = COD-LST)
                        OR (LK-GENLISTE-DATATYPE = 6 
                        AND  LK-GENLISTE-CO2N(i) = CODN-LST)
      *              MODIFY Screen1-Gd-1, X = 1, CELL-DATA = "X", 
      *                 HIDDEN-DATA = 1
                        THEN MODIFY Screen1-Gd-1, X = 1,
                                    CELL-DATA = SPACES, 
                                    HIDDEN-DATA = 1,
                                    Bitmap VALIDER16-BMP,
                                    Bitmap-Trailing 1
                             EXIT PARAGRAPH
                        END-IF
                        ADD 1 TO i
                     END-PERFORM      
                END-IF
                MODIFY Screen1-Gd-1, X = 1,
                                     CELL-DATA = SPACES, 
                                     HIDDEN-DATA = 0
           END-IF
           .
      *
       Screen1-Gd-1-Ev-Msg-Grid-Rbutton-Up.
           IF LK-GENLISTE-PARAM = "PMUSR-R"  
              MOVE Event-Data-2 TO w-index
              INQUIRE Screen1-Gd-1(w-index, 2), HIDDEN-DATA IN W-COD
              CALL "W$MENU" USING WMENU-POPUP, Screen1-Mn-1-Handle.
           IF LK-GENLISTE-PARAM = "PMUSR-T"  
              MOVE Event-Data-2 TO w-index
              INQUIRE Screen1-Gd-1(w-index, 3), CELL-DATA IN W-LIB2
              IF W-LIB2 = "R"
                 INQUIRE Screen1-Gd-1(w-index, 2), HIDDEN-DATA IN W-COD
                 CALL "W$MENU" USING WMENU-POPUP, Screen1-Mn-1-Handle.
      *
       Screen1-Mn-1-MI-VisuDetail-Link.
      *     IF LK-GENLISTE-PARAM = "PMUSR-R" OR "PMUSR-T"
      *        MOVE "r" TO LK-LISTE-PMUSR-REG
      *        MOVE W-COD TO LK-LISTE-PMUSR-CREG
      *        Call "../../mistral/o/pmusr-l.acu" Using
      *             ZONE-PALM, LK-LISTE
      *        Cancel "../../mistral/o/pmusr-l.acu".

      *
       Screen1-Gd-1-Ev-Msg-Begin-Entry.
           if lk-genliste-cdf = "I" 
              MOVE event-action-fail TO event-action
              exit paragraph
           end-if
           IF LK-GENLISTE-MAXSEL = 1
              PERFORM FillSelect
              MOVE w-countSel TO LK-GENLISTE-NBSEL
              PERFORM Mistral-CloseCurrentWindow
           ELSE
              IF Event-Data-1 Not = 1 AND  Event-Data-2 > 1
                 MOVE Event-Data-2 TO w-index
                 PERFORM InvertCheck
              END-IF
           END-IF           
           MOVE event-action-fail TO event-action
           .

       InvertCheck.
      *    [in] w-index index de la ligne dont la sél. doit être inversé
           INQUIRE Screen1-Gd-1(w-index, 1), HIDDEN-DATA IN w-sel
           IF w-sel = 0
              IF w-countSel = W-MAX-COL EXIT PARAGRAPH END-IF                   
              MODIFY Screen1-Gd-1, Y = w-index, X = 1, 
                 HIDDEN-DATA = 1, BITMAP VALIDER16-BMP,              
                 BITMAP-TRAILING 1
              ADD 1 TO w-controle
           ELSE
              MODIFY Screen1-Gd-1, Y = w-index, X = 1, 
                 CELL-DATA = SPACES , HIDDEN-DATA = 0,
                 BITMAP NULL              
              SUBTRACT 1 FROM w-controle
           END-IF

           | On ajoute dans le tableau
           IF w-sel = 0
              ADD 1 TO w-countSel
              IF LK-GENLISTE-DATATYPE = 1
                 INQUIRE Screen1-Gd-1(w-index, 2), HIDDEN-DATA IN W-COD
      *           MOVE 80 TO W-MAX-COL
                 PERFORM VARYING I FROM 1 BY 1 UNTIL I > W-MAX-COL
                                               OR TAB-COD(I) = SPACES
                    CONTINUE
                 END-PERFORM
                 IF I <= W-MAX-COL THEN
                    MOVE W-COD TO TAB-COD(I)
                 END-IF
              ELSE
              IF LK-GENLISTE-DATATYPE = 3
                 INQUIRE Screen1-Gd-1(w-index, 2), HIDDEN-DATA IN W-CO8
      *           MOVE 60 TO W-MAX-COL
                 PERFORM VARYING I FROM 1 BY 1 UNTIL I > W-MAX-COL
                                               OR TAB-CO8(I) = SPACES
                    CONTINUE
                 END-PERFORM
                 IF I <= W-MAX-COL THEN
                    MOVE W-CO8 TO TAB-CO8(I)
                 END-IF
              ELSE
              IF LK-GENLISTE-DATATYPE = 4
                 INQUIRE Screen1-Gd-1(w-index, 2), HIDDEN-DATA IN W-CO8N
      *           MOVE 60 TO W-MAX-COL
                 PERFORM VARYING I FROM 1 BY 1 UNTIL I > W-MAX-COL
                                               OR TAB-CO8N(I) = ZERO
                    CONTINUE
                 END-PERFORM
                 IF I <= W-MAX-COL THEN
                    MOVE W-CO8N TO TAB-CO8N(I)
                 END-IF
              ELSE
              IF LK-GENLISTE-DATATYPE = 5
                 INQUIRE Screen1-Gd-1(w-index, 2), HIDDEN-DATA IN W-CO2
      *           MOVE 240 TO W-MAX-COL
                 PERFORM VARYING I FROM 1 BY 1 UNTIL I > W-MAX-COL
                                               OR TAB-CO2(I) = SPACES
                    CONTINUE
                 END-PERFORM
                 IF I <= W-MAX-COL THEN
                    MOVE W-CO2 TO TAB-CO2(I)
                 END-IF
              ELSE
              IF LK-GENLISTE-DATATYPE = 6
                 INQUIRE Screen1-Gd-1(w-index, 2), HIDDEN-DATA IN W-CO2N
      *           MOVE 240 TO W-MAX-COL
                 PERFORM VARYING I FROM 1 BY 1 UNTIL I > W-MAX-COL
                                               OR TAB-CO2N(I) = ZERO
                    CONTINUE
                 END-PERFORM
                 IF I <= W-MAX-COL THEN
                    MOVE W-CO2N TO TAB-CO2N(I)
                 END-IF
              ELSE
                 INQUIRE Screen1-Gd-1(w-index, 2), HIDDEN-DATA IN W-CODN
      *           MOVE 80 TO W-MAX-COL
                 PERFORM VARYING I FROM 1 BY 1 UNTIL I > W-MAX-COL
                                               OR TAB-CODN(I) = ZERO
                    CONTINUE
                 END-PERFORM
                 IF I <= W-MAX-COL THEN
                    MOVE W-CODN TO TAB-CODN(I)
                 END-IF
              END-IF
              END-IF
              END-IF
              END-IF
              END-IF
           ELSE
              SUBTRACT 1 FROM w-countSel
              IF LK-GENLISTE-DATATYPE = 1
                 INQUIRE Screen1-Gd-1(w-index, 2), HIDDEN-DATA IN W-COD
      *           MOVE 80 TO W-MAX-COL
                 PERFORM VARYING I FROM 1 BY 1 UNTIL I > W-MAX-COL
                         OR TAB-COD(I) = W-COD
                    CONTINUE
                 END-PERFORM
                 IF I < W-MAX-COL THEN
                      COMPUTE J = I + 1
                      PERFORM UNTIL J > W-MAX-COL
                         MOVE TAB-COD(J) TO TAB-COD(I) 
                         ADD 1 TO I J
                      END-PERFORM     
221110                MOVE SPACES TO TAB-COD(W-MAX-COL)
                 ELSE IF I = W-MAX-COL MOVE SPACES TO TAB-COD(I) 
                      END-IF
                 END-IF
              ELSE
              IF LK-GENLISTE-DATATYPE = 3
                 INQUIRE Screen1-Gd-1(w-index, 2), HIDDEN-DATA IN W-CO8
      *           MOVE 60 TO W-MAX-COL
                 PERFORM VARYING I FROM 1 BY 1 UNTIL I > W-MAX-COL
                                               OR TAB-CO8(I) = W-CO8
                    CONTINUE
                 END-PERFORM
                 IF I < W-MAX-COL THEN
                      COMPUTE J = I + 1
                      PERFORM UNTIL J > W-MAX-COL
                         MOVE TAB-CO8(J) TO TAB-CO8(I) 
                         ADD 1 TO I J
                      END-PERFORM
221110                MOVE SPACES TO TAB-COD(W-MAX-COL)
                 ELSE IF I = W-MAX-COL MOVE SPACES TO TAB-CO8(I) 
                      END-IF
                 END-IF
              ELSE
              IF LK-GENLISTE-DATATYPE = 4
                 INQUIRE Screen1-Gd-1(w-index, 2), HIDDEN-DATA IN W-CO8N
      *          MOVE 60 TO W-MAX-COL
                 PERFORM VARYING I FROM 1 BY 1 UNTIL I > W-MAX-COL
                                               OR TAB-CO8N(I) = W-CO8N
                    CONTINUE
                 END-PERFORM
                 IF I < W-MAX-COL THEN
                      COMPUTE J = I + 1
                      PERFORM UNTIL J > W-MAX-COL
                         MOVE TAB-CO8N(J) TO TAB-CO8N(I) 
                         ADD 1 TO I J
                      END-PERFORM
221110                MOVE ZERO TO TAB-CO8N(W-MAX-COL)
                 ELSE IF I = W-MAX-COL MOVE ZERO TO TAB-CO8N(I) 
                      END-IF
                 END-IF
              ELSE
              IF LK-GENLISTE-DATATYPE = 5
                 INQUIRE Screen1-Gd-1(w-index, 2), HIDDEN-DATA IN W-CO2
      *           MOVE 240 TO W-MAX-COL
                 PERFORM VARYING I FROM 1 BY 1 UNTIL I > W-MAX-COL
                                               OR TAB-CO2(I) = W-CO2
                    CONTINUE
                 END-PERFORM
                 IF I < W-MAX-COL THEN
                      COMPUTE J = I + 1
                      PERFORM UNTIL J > W-MAX-COL
                         MOVE TAB-CO2(J) TO TAB-CO2(I) 
                         ADD 1 TO I J
                      END-PERFORM
221110                MOVE SPACES TO TAB-CO2(W-MAX-COL)
                 ELSE IF I = W-MAX-COL MOVE SPACES TO TAB-CO2(I) 
                      END-IF
                 END-IF
              ELSE
              IF LK-GENLISTE-DATATYPE = 6
                 INQUIRE Screen1-Gd-1(w-index, 2), HIDDEN-DATA IN W-CO2N
      *           MOVE 240 TO W-MAX-COL
                 PERFORM VARYING I FROM 1 BY 1 UNTIL I > W-MAX-COL
                                               OR TAB-CO2N(I) = W-CO2N
                    CONTINUE
                 END-PERFORM
                 IF I < W-MAX-COL THEN
                      COMPUTE J = I + 1
                      PERFORM UNTIL J > W-MAX-COL
                         MOVE TAB-CO2N(J) TO TAB-CO2N(I) 
                         ADD 1 TO I J
                      END-PERFORM
221110                MOVE ZERO TO TAB-CO2N(W-MAX-COL)
                 ELSE IF I = W-MAX-COL MOVE ZERO TO TAB-CO2N(I) 
                      END-IF
                 END-IF
              ELSE
                 INQUIRE Screen1-Gd-1(w-index, 2), HIDDEN-DATA IN W-CODN
      *           MOVE 80 TO W-MAX-COL
                 PERFORM VARYING I FROM 1 BY 1 UNTIL I > W-MAX-COL
                                               OR TAB-CODN(I) = W-CODN
                    CONTINUE
                 END-PERFORM
                 IF I < W-MAX-COL THEN
                      COMPUTE J = I + 1
                      PERFORM UNTIL J > W-MAX-COL
                         MOVE TAB-CODN(J) TO TAB-CODN(I) 
                         ADD 1 TO I J
                      END-PERFORM
221110                MOVE ZERO TO TAB-CODN(W-MAX-COL)
                 ELSE IF I = W-MAX-COL MOVE ZERO TO TAB-CODN(I) 
                      END-IF
                 END-IF
              END-IF
              END-IF
              END-IF
              END-IF
              END-IF
           END-IF                    

           PERFORM Display-COUNTSEL
           .

       Display-COUNTSEL.
           MOVE SPACES TO S
           IF W-COUNTSEL = 0 
              MOVE "0 élément sélectionné" TO S
           END-IF           
           IF W-COUNTSEL = 1
              MOVE "1 élément sélectionné" TO S
           END-IF
           IF W-COUNTSEL > 1
              MOVE W-COUNTSEL TO W-FCOUNT
              STRING W-FCOUNT DELIMITED BY SIZE
                     " éléments sélectionnés" DELIMITED BY SIZE
              INTO S
           END-IF
           MODIFY Screen1-La-element, TITLE IS S
           .

      *
       Screen1-Gd-1-Ev-Msg-Goto-Cell-Mouse.
           IF w-gd1Col Not = 0
              MODIFY Screen1-Gd-1, Y = w-gd1Col,
                ROW-COLOR = 0
           END-IF
           
           MOVE Event-Data-2 TO w-gd1Col
           MODIFY Screen1-Gd-1, Y = w-gd1Col,
      *        ROW-COLOR = W-Row-Hight-Color
080720        ROW-COLOR = 448
           
           if lk-genliste-cdf = "I" 
              MOVE event-action-fail TO event-action
              exit paragraph
           end-if    

           IF LK-GENLISTE-MAXSEL Not = 1
              IF Event-Data-1 = 1 AND  Event-Data-2 > 1
                 MOVE Event-Data-2 TO w-index
                 PERFORM InvertCheck
              END-IF
           END-IF                      
           .
       
       Screen1-Gd-1-Ev-Msg-Goto-Cell.
           IF w-gd1Col Not = 0
              MODIFY Screen1-Gd-1, Y = w-gd1Col,
                ROW-COLOR = 0
           END-IF
           
           MOVE Event-Data-2 TO w-gd1Col
           MODIFY Screen1-Gd-1, Y = w-gd1Col,
               ROW-COLOR = 448  
      *        ROW-COLOR = W-Row-Hight-Color
           .
      *
       Screen1-Pb-FlechB-Link.
           MOVE w-gd1Col TO Event-Data-2
           IF Event-Data-2 NOT < w-index
              EXIT PARAGRAPH
           END-IF
           ADD 1 TO Event-Data-2
           PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
           MODIFY Screen1-Gd-1, CURSOR-Y = w-gd1Col
           .
      *
       Screen1-Pb-FlechH-Link.
           MOVE w-gd1Col TO Event-Data-2
           IF Event-Data-2 NOT > 2
              EXIT PARAGRAPH
           END-IF
           ADD -1 TO Event-Data-2
           PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell           
           MODIFY Screen1-Gd-1, CURSOR-Y = w-gd1Col
           .
      *
       FillSelect.
           IF LK-GENLISTE-MAXSEL = 1
           THEN IF LK-GENLISTE-DATATYPE = 1
                THEN INQUIRE Screen1-Gd-1(w-gd1Col, 2), 
                             HIDDEN-DATA IN LK-GENLISTE-COD(1)
                ELSE
                IF LK-GENLISTE-DATATYPE = 3
                THEN INQUIRE Screen1-Gd-1(w-gd1Col, 2),
                             HIDDEN-DATA IN LK-GENLISTE-CO8(1)
                ELSE
                IF LK-GENLISTE-DATATYPE = 4
                THEN INQUIRE Screen1-Gd-1(w-gd1Col, 2),
                             HIDDEN-DATA IN LK-GENLISTE-CO8N(1)
                ELSE
                IF LK-GENLISTE-DATATYPE = 5
                THEN INQUIRE Screen1-Gd-1(w-gd1Col, 2),
                             HIDDEN-DATA IN LK-GENLISTE-CO2(1)
                ELSE
                IF LK-GENLISTE-DATATYPE = 6
                THEN INQUIRE Screen1-Gd-1(w-gd1Col, 2),
                             HIDDEN-DATA IN LK-GENLISTE-CO2N(1)
                ELSE
                     INQUIRE Screen1-Gd-1(w-gd1Col, 2),
                             HIDDEN-DATA IN LK-GENLISTE-CODN(1) 
                END-IF
                END-IF
                END-IF
                END-IF
                END-IF
                IF LK-GENLISTE-DATATYPE = 3 OR 4
                THEN INQUIRE Screen1-Gd-1(w-gd1Col, 2),
                             CELL-DATA IN LK-GENLISTE-LIB8
                ELSE
                IF LK-GENLISTE-DATATYPE = 5 OR 6
                THEN INQUIRE Screen1-Gd-1(w-gd1Col, 2),
                             CELL-DATA IN LK-GENLISTE-LIB2
                ELSE
                     INQUIRE Screen1-Gd-1(w-gd1Col, 2),
                             CELL-DATA IN LK-GENLISTE-LIB
                END-IF
                END-IF
                MOVE 1 TO w-countSel
           ELSE
                |MOVE 0 TO w-countSel
                IF LK-GENLISTE-DATATYPE = 1 OR 2
                THEN PERFORM VARYING w-index FROM 1 BY 1
                     UNTIL w-index > 80
                        MOVE SPACES TO LK-GENLISTE-COD(w-index)
230605                 |MOVE ZEROS TO LK-GENLISTE-CODN(w-index)
                   END-PERFORM
                END-IF

                IF LK-GENLISTE-DATATYPE = 3 OR 4
                THEN PERFORM VARYING w-index FROM 1 BY 1
                     UNTIL w-index > 60
                        MOVE SPACES TO LK-GENLISTE-CO8(w-index) 
                        |MOVE ZEROS TO LK-GENLISTE-CO8N(w-index) 
                     END-PERFORM
                END-IF      

                IF LK-GENLISTE-DATATYPE = 5 OR 6
                THEN PERFORM VARYING w-index FROM 1 BY 1
                     UNTIL w-index > 99
                        MOVE SPACES TO LK-GENLISTE-CO2(w-index) 
                        |MOVE ZEROS TO LK-GENLISTE-CO2N(w-index) 
                     END-PERFORM
                END-IF

               MOVE TAB-SELECT TO LK-GENLISTE-SELECT

      *          PERFORM VARYING w-index FROM 1 BY 1
      *          UNTIL w-index > w-count
      *             INQUIRE Screen1-Gd-1(w-index + 1, 1), 
      *                     HIDDEN-DATA IN w-sel
      *             IF w-sel = 1
      *             THEN ADD 1 TO w-countSel
      *                  IF LK-GENLISTE-DATATYPE = 1
      *                  THEN INQUIRE Screen1-Gd-1(w-index + 1, 2), 
      *                       HIDDEN-DATA IN LK-GENLISTE-COD(w-countSel)
      *                  ELSE
      *                  IF LK-GENLISTE-DATATYPE = 3
      *                  THEN INQUIRE Screen1-Gd-1(w-index + 1, 2), 
      *                       HIDDEN-DATA IN LK-GENLISTE-CO8(w-countSel)
      *                  ELSE
      *                  IF LK-GENLISTE-DATATYPE = 4
      *                  THEN INQUIRE Screen1-Gd-1(w-index + 1, 2), 
      *                       HIDDEN-DATA IN LK-GENLISTE-CO8N(w-countSel)
      *                  ELSE
      *                  IF LK-GENLISTE-DATATYPE = 5
      *                  THEN INQUIRE Screen1-Gd-1(w-index + 1, 2), 
      *                       HIDDEN-DATA IN LK-GENLISTE-CO2(w-countSel)
      *                  ELSE
      *                  IF LK-GENLISTE-DATATYPE = 6
      *                  THEN INQUIRE Screen1-Gd-1(w-index + 1, 2), 
      *                       HIDDEN-DATA IN LK-GENLISTE-CO2N(w-countSel)
      *                  ELSE
      *                       INQUIRE Screen1-Gd-1(w-index + 1, 2), 
      *                       HIDDEN-DATA IN LK-GENLISTE-CODN(w-countSel)
      *                  END-IF
      *                  END-IF
      *                  END-IF
      *                  END-IF
      *                  END-IF
      *             END-IF
      *          END-PERFORM



      *     IF LK-GENLISTE-DATATYPE = 1
      *        PERFORM VARYING w-index FROM 1 BY 1 UNTIL w-index > 80
      *           MOVE SPACES TO LK-GENLISTE-COD(w-index)
      *           MOVE TAB-COD(w-index) TO LK-GENLISTE-COD(w-index)
      *           IF TAB-COD(w-index) NOT = SPACES
      *              ADD 1 TO w-countSel
      *           END-IF
      *        END-PERFORM 
      *     END-IF
      *     ELSE
      *     IF LK-GENLISTE-DATATYPE = 3
      *
      *     ELSE
      *     IF LK-GENLISTE-DATATYPE = 4
      *
      *     ELSE
      *     IF LK-GENLISTE-DATATYPE = 5
      *
      *     ELSE
      *     IF LK-GENLISTE-DATATYPE = 6
      *
      *     ELSE
      *
      *     END-IF
      *     END-IF
      *     END-IF
      *     END-IF
      *     END-IF

           END-IF
           .
      *
       Screen1-Pb-Invert-Link.
           INITIALIZE TAB-SELECT w-countSel
           PERFORM VARYING w-index FROM 2 BY 1 
                   UNTIL w-index > w-count + 1
                   OR w-countSel >= W-MAX-COL 

              INQUIRE Screen1-Gd-1(w-index, 1), HIDDEN-DATA IN w-sel
              IF w-sel = 0
                 MODIFY Screen1-Gd-1, Y = w-index, X = 1, 
                    HIDDEN-DATA = 1, BITMAP VALIDER16-BMP,              
                    BITMAP-TRAILING 1

              ADD 1 TO w-countSel
              IF LK-GENLISTE-DATATYPE = 1
                 INQUIRE Screen1-Gd-1(w-index, 2), HIDDEN-DATA IN W-COD
                 PERFORM VARYING I FROM 1 BY 1 UNTIL I > W-MAX-COL
                                               OR TAB-COD(I) = SPACES
                    CONTINUE
                 END-PERFORM
                 IF I <= W-MAX-COL THEN
                    MOVE W-COD TO TAB-COD(I)
                 END-IF
              ELSE
              IF LK-GENLISTE-DATATYPE = 3
                 INQUIRE Screen1-Gd-1(w-index, 2), HIDDEN-DATA IN W-CO8
                 PERFORM VARYING I FROM 1 BY 1 UNTIL I > W-MAX-COL
                                               OR TAB-CO8(I) = SPACES
                    CONTINUE
                 END-PERFORM
                 IF I <= W-MAX-COL THEN
                    MOVE W-CO8 TO TAB-CO8(I)
                 END-IF
              ELSE
              IF LK-GENLISTE-DATATYPE = 4
                 INQUIRE Screen1-Gd-1(w-index, 2), HIDDEN-DATA IN W-CO8N
                 PERFORM VARYING I FROM 1 BY 1 UNTIL I > W-MAX-COL
                                               OR TAB-CO8N(I) = ZERO
                    CONTINUE
                 END-PERFORM
                 IF I <= W-MAX-COL THEN
                    MOVE W-CO8N TO TAB-CO8N(I)
                 END-IF
              ELSE
              IF LK-GENLISTE-DATATYPE = 5
                 INQUIRE Screen1-Gd-1(w-index, 2), HIDDEN-DATA IN W-CO2
                 PERFORM VARYING I FROM 1 BY 1 UNTIL I > W-MAX-COL
                                               OR TAB-CO2(I) = SPACES
                    CONTINUE
                 END-PERFORM
                 IF I <= W-MAX-COL THEN
                    MOVE W-CO2 TO TAB-CO2(I)
                 END-IF
              ELSE
              IF LK-GENLISTE-DATATYPE = 6
                 INQUIRE Screen1-Gd-1(w-index, 2), HIDDEN-DATA IN W-CO2N
                 PERFORM VARYING I FROM 1 BY 1 UNTIL I > W-MAX-COL
                                               OR TAB-CO2N(I) = ZERO
                    CONTINUE
                 END-PERFORM
                 IF I <= W-MAX-COL THEN
                    MOVE W-CO2N TO TAB-CO2N(I)
                 END-IF
              ELSE
                 INQUIRE Screen1-Gd-1(w-index, 2), HIDDEN-DATA IN W-CODN
                 PERFORM VARYING I FROM 1 BY 1 UNTIL I > W-MAX-COL
                                               OR TAB-CODN(I) = ZERO
                    CONTINUE
                 END-PERFORM
                 IF I <= W-MAX-COL THEN
                    MOVE W-CODN TO TAB-CODN(I)
                 END-IF
              END-IF
              END-IF
              END-IF
              END-IF
              END-IF

              ELSE
                 MODIFY Screen1-Gd-1, Y = w-index, X = 1, 
                    CELL-DATA = SPACES , HIDDEN-DATA = 0,
                    BITMAP NULL              
              END-IF

           END-PERFORM           
           .
      *
       Screen1-Pb-Uncheck-Link.
           PERFORM VARYING w-index FROM 1 BY 1 UNTIL w-index > w-count
              MODIFY Screen1-Gd-1, Y = w-index + 1, X = 1, 
                 CELL-DATA = SPACES, HIDDEN-DATA = 0, Bitmap NULL
           END-PERFORM

           INITIALIZE TAB-SELECT w-countSel
           Perform DISPLAY-COUNTSEL
           .
      *
       Screen1-Pb-Check-Link.
           Move 0 TO TAB-SELECT w-countSel 

           IF LK-GENLISTE-DATATYPE = 1              
      *        MOVE 80 TO W-MAX-COL
              PERFORM VARYING I FROM 1 BY 1 UNTIL I > W-MAX-COL
                                               OR I > w-count
                 COMPUTE J = I + 1
                 INQUIRE Screen1-Gd-1(J, 2), 
                         HIDDEN-DATA IN TAB-COD(I)
                 ADD 1 TO w-countSel
              END-PERFORM
           ELSE
           IF LK-GENLISTE-DATATYPE = 3
      *        MOVE 60 TO W-MAX-COL
              PERFORM VARYING I FROM 1 BY 1 UNTIL I > W-MAX-COL
                                               OR I > w-count
                 COMPUTE J = I + 1
                 INQUIRE Screen1-Gd-1(J, 2), 
                         HIDDEN-DATA IN TAB-CO8(I)
                 ADD 1 TO w-countSel
              END-PERFORM
           ELSE
           IF LK-GENLISTE-DATATYPE = 4
      *        MOVE 60 TO W-MAX-COL
              PERFORM VARYING I FROM 1 BY 1 UNTIL I > W-MAX-COL
                                               OR I > w-count
                 COMPUTE J = I + 1
                 INQUIRE Screen1-Gd-1(J, 2), 
                         HIDDEN-DATA IN TAB-CO8N(I)
                 ADD 1 TO w-countSel
              END-PERFORM
           ELSE
           IF LK-GENLISTE-DATATYPE = 5
      *        MOVE 240 TO W-MAX-COL
              PERFORM VARYING I FROM 1 BY 1 UNTIL I > W-MAX-COL
                                               OR I > w-count
                 COMPUTE J = I + 1
                 INQUIRE Screen1-Gd-1(J, 2), 
                         HIDDEN-DATA IN TAB-CO2(I)
                 ADD 1 TO w-countSel
              END-PERFORM
           ELSE
           IF LK-GENLISTE-DATATYPE = 6
      *        MOVE 240 TO W-MAX-COL
              PERFORM VARYING I FROM 1 BY 1 UNTIL I > W-MAX-COL
                                               OR I > w-count
                 COMPUTE J = I + 1
                 INQUIRE Screen1-Gd-1(J, 2), 
                         HIDDEN-DATA IN TAB-CO2N(I)
                 ADD 1 TO w-countSel
              END-PERFORM
           ELSE
      *        MOVE 80 TO W-MAX-COL
              PERFORM VARYING I FROM 1 BY 1 UNTIL I > W-MAX-COL
                                               OR I > w-count
                 COMPUTE J = I + 1
                 INQUIRE Screen1-Gd-1(J, 2), 
                         HIDDEN-DATA IN TAB-CODN(I)
                 ADD 1 TO w-countSel
              END-PERFORM
           END-IF
           END-IF
           END-IF
           END-IF
           END-IF

           PERFORM VARYING w-index FROM 1 BY 1 UNTIL w-index > w-count
                                                  OR w-index > W-MAX-COL
              MODIFY Screen1-Gd-1, Y = w-index + 1, X = 1,
                 HIDDEN-DATA = 1, Bitmap VALIDER16-BMP
                 Bitmap-Trailing 1
           END-PERFORM

           Perform DISPLAY-COUNTSEL
230318
           IF W-COUNT > W-MAX-COL THEN
      *       CHAMBON message Miami à tout le monde -> trop d'utilisateurs
              MOVE "Attention, toute la liste ne peut être cochée"
                TO ACU-Msg-1
              PERFORM Msg-Info
           END-IF
230318
           .
      *
       Screen1-Pb-Accept-Link.
      *     MOVE 0 TO w-countSel
      *     PERFORM VARYING w-index FROM 1 BY 1 UNTIL w-index > w-count
      *        INQUIRE Screen1-Gd-1(w-index + 1, 1), 
      *           HIDDEN-DATA IN w-sel
      *        IF w-sel = 1
      *           ADD 1 TO w-countSel
      *        END-IF

      *     END-PERFORM
           IF w-countSel > LK-GENLISTE-MAXSEL
              MOVE SPACES TO s
              MOVE LK-GENLISTE-MAXSEL TO A3
              String "Sélection de "     Delimited BY Size
                     A3                  Delimited BY Size
                     " lignes maximum !" Delimited BY Size
                     Into s
              MOVE s TO acu-msg-1
              PERFORM msg-info
              EXIT PARAGRAPH
           END-IF
          
           PERFORM FillSelect
           MOVE w-countSel TO LK-GENLISTE-NBSEL
           move 0 to lk-genliste-ann
           PERFORM Acu-Screen1-Exit           
           .
      *
       Screen1-Pb-Cancel-Link.
           move 0 to lk-genliste-ann
           PERFORM Acu-Screen1-Exit                      
           .
      *
       Screen1-Aft-Routine.
           Close LISTE           
           .

       AdaptGrid.           
           IF LK-GENLISTE-MAXSEL = 1            
              IF LK-GENLISTE-COL2 NOT = SPACES
                IF LK-GENLISTE-DATATYPE = 3 OR 4
                   MODIFY Screen1-Gd-1, Display-Columns = (0, 13, 65)
                ELSE
                   MODIFY Screen1-Gd-1, Display-Columns = (0, 10, 62)
                END-IF
              ELSE
                IF LK-GENLISTE-DATATYPE = 3 OR 4
                   MODIFY Screen1-Gd-1, Display-Columns = (0, 13)
                ELSE
                   MODIFY Screen1-Gd-1, Display-Columns = (0, 10)
                END-IF
              END-IF

              MODIFY Screen1-Gd-1, X = 1, Y = 1, 
                 CELL-DATA = "Code",
                 Heading-ColOR = W-Heading-Color

              MODIFY Screen1-Gd-1, X = 2, Y = 1,
                 CELL-DATA = LK-GENLISTE-TITLE,
                 Heading-ColOR = W-Heading-Color

              IF LK-GENLISTE-COL2 NOT = SPACES
                 MODIFY Screen1-Gd-1, X = 3, Y = 1, 
                    CELL-DATA = LK-GENLISTE-COL2,
                    Heading-ColOR = W-Heading-Color
                 IF LK-GENLISTE-CC2 = 1
                    MODIFY Screen1-Gd-1, 
                       ALIGNMENT ("C", "U", "C")
                 END-IF
              END-IF

              PERFORM adapt-tri
           ELSE
              IF LK-GENLISTE-COL2 NOT = SPACES
                IF LK-GENLISTE-DATATYPE = 3 OR 4
                   MODIFY Screen1-Gd-1, Display-Columns = (0, 4, 17, 68)
                ELSE
                   MODIFY Screen1-Gd-1, Display-Columns = (0, 4, 14, 65)
                END-IF
              ELSE
                IF LK-GENLISTE-DATATYPE = 3 OR 4
                   MODIFY Screen1-Gd-1, Display-Columns = (0, 4, 17)
                ELSE
                   MODIFY Screen1-Gd-1, Display-Columns = (0, 4, 14)
                END-IF
              END-IF

              MODIFY Screen1-Gd-1, X = 1, Y = 1, CELL-DATA = SPACES
                 Heading-ColOR = W-Heading-Color
              MODIFY Screen1-Gd-1, X = 2, Y = 1, CELL-DATA = "Code"
                 Heading-ColOR = W-Heading-Color

              MODIFY Screen1-Gd-1, x = 3, y = 1,
                 CELL-DATA = "Libellé"
                 Heading-ColOR = W-Heading-Color

              IF LK-GENLISTE-COL2 NOT = SPACES
                 MODIFY Screen1-Gd-1, X = 4, Y = 1, 
                    CELL-DATA = LK-GENLISTE-COL2,
                    Heading-ColOR = W-Heading-Color
              END-IF

              PERFORM adapt-tri
           END-IF
           .
       Screen1-Gd-1-Ev-Msg-Heading-Clicked.
           IF lk-genliste-maxsel = 1
             IF event-data-1 = 1 
               IF w-key = 1
                 IF w-order = 1 MOVE 2 TO w-order
                 ELSE           MOVE 1 TO w-order
                 END-IF
               ELSE
                 MOVE 1 TO w-key
               END-IF
             ELSE
               IF event-data-1 = 2
                 IF w-key = 2
                   IF w-order = 1 MOVE 2 TO w-order
                   ELSE           MOVE 1 TO w-order
                   END-IF
                 ELSE
                   MOVE 2 TO w-key
                 END-IF
               ELSE
101212           IF lk-genliste-col2 not = space and 
                    lk-genliste-tri2 = 1 and
                    event-data-1 = 3
                   if w-key = 3
                     if w-order = 1 move 2 to w-order
                     else           move 1 to w-order
                     end-if
                   else
                     move 3 to w-key
                   end-if
101212           else
                   EXIT PARAGRAPH
                 end-if
               END-IF
             END-IF             
           ELSE
             IF event-data-1 = 2 
               IF w-key = 1
                 IF w-order = 1 MOVE 2 TO w-order
                 ELSE           MOVE 1 TO w-order
                 END-IF
               ELSE
                 MOVE 1 TO w-key
               END-IF
             ELSE
               IF event-data-1 = 3
                 IF w-key = 2
                   IF w-order = 1 MOVE 2 TO w-order
                   ELSE           MOVE 1 TO w-order
                   END-IF
                 ELSE
                   MOVE 2 TO w-key
                 END-IF
               ELSE
101212           IF lk-genliste-col2 not = space and 
                    lk-genliste-tri2 = 1 and
                    event-data-1 = 4
                   if w-key = 3
                     if w-order = 1 move 2 to w-order
                     else           move 1 to w-order
                     end-if
                   else
                     move 3 to w-key
                   end-if
101212           else
                   EXIT PARAGRAPH
                 end-if
               END-IF
             END-IF
           END-IF
           PERFORM adapt-tri
           PERFORM Screen1-Pb-Accept-Link
           PERFORM affiche-liste
           .
       Adapt-tri.
           IF lk-genliste-maxsel = 1
             IF w-key = 1
               IF w-order = 1 
                 MODIFY Screen1-Gd-1, X = 1, Y = 1,
                        Bitmap TRIERAE10-JPG
                 MODIFY Screen1-Gd-1, X = 2, Y = 1,
                        Bitmap TRIERAD10-JPG
101212           IF LK-GENLISTE-COL2 NOT = SPACE AND
                    LK-GENLISTE-TRI2 = 1
                    MODIFY Screen1-Gd-1, X = 3, Y = 1,
                           Bitmap TRIERAD10-JPG
101212           END-IF   
               ELSE
                 MODIFY Screen1-Gd-1, X = 1, Y = 1,
                        Bitmap TRIERDE10-JPG
                 MODIFY Screen1-Gd-1, X = 2, Y = 1,
                        Bitmap TRIERDD10-JPG
101212           IF LK-GENLISTE-COL2 NOT = SPACE AND
                    LK-GENLISTE-TRI2 = 1
                    MODIFY Screen1-Gd-1, X = 3, Y = 1,
                           Bitmap TRIERDD10-JPG
101212           END-IF   
               END-IF
             ELSE
101212         IF LK-GENLISTE-COL2 NOT = SPACE AND
                  LK-GENLISTE-TRI2 = 1 AND
                  W-KEY = 3
                 IF w-order = 1 
                   MODIFY Screen1-Gd-1, X = 1, Y = 1,
                          Bitmap TRIERAD10-JPG
                   MODIFY Screen1-Gd-1, X = 2, Y = 1,
                          Bitmap TRIERAD10-JPG
                   MODIFY Screen1-Gd-1, X = 3, Y = 1,
                          Bitmap TRIERAE10-JPG
                 ELSE
                   MODIFY Screen1-Gd-1, X = 1, Y = 1,
                          Bitmap TRIERDD10-JPG
                   MODIFY Screen1-Gd-1, X = 2, Y = 1,
                          Bitmap TRIERDD10-JPG
                   MODIFY Screen1-Gd-1, X = 3, Y = 1,
                          Bitmap TRIERDE10-JPG
101212           END-IF
               ELSE
                 IF w-order = 1 
                   MODIFY Screen1-Gd-1, X = 1, Y = 1,
                          Bitmap TRIERAD10-JPG
                   MODIFY Screen1-Gd-1, X = 2, Y = 1,
                          Bitmap TRIERAE10-JPG
101212             IF LK-GENLISTE-COL2 NOT = SPACE AND
                      LK-GENLISTE-TRI2 = 1
                      MODIFY Screen1-Gd-1, X = 3, Y = 1,
                             Bitmap TRIERAD10-JPG
101212             END-IF   
                 ELSE
                   MODIFY Screen1-Gd-1, X = 1, Y = 1,
                          Bitmap TRIERDD10-JPG
                   MODIFY Screen1-Gd-1, X = 2, Y = 1,
                          Bitmap TRIERDE10-JPG
101212             IF LK-GENLISTE-COL2 NOT = SPACE AND
                      LK-GENLISTE-TRI2 = 1
                      MODIFY Screen1-Gd-1, X = 3, Y = 1,
                             Bitmap TRIERDD10-JPG
101212             END-IF   
                 END-IF
               END-IF
             END-IF
           ELSE
             IF w-key = 1
               IF w-order = 1 
                 MODIFY Screen1-Gd-1, X = 2, Y = 1,
                        Bitmap TRIERAE10-JPG
                 MODIFY Screen1-Gd-1, X = 3, Y = 1,
                        Bitmap TRIERAD10-JPG
101212           IF LK-GENLISTE-COL2 NOT = SPACE AND
                    LK-GENLISTE-TRI2 = 1
                    MODIFY Screen1-Gd-1, X = 4, Y = 1,
                           Bitmap TRIERAD10-JPG
101212           END-IF   
               ELSE
                 MODIFY Screen1-Gd-1, X = 2, Y = 1,
                        Bitmap TRIERDE10-JPG
                 MODIFY Screen1-Gd-1, X = 3, Y = 1,
                        Bitmap TRIERDD10-JPG
101212           IF LK-GENLISTE-COL2 NOT = SPACE AND
                    LK-GENLISTE-TRI2 = 1
                    MODIFY Screen1-Gd-1, X = 4, Y = 1,
                           Bitmap TRIERDD10-JPG
101212           END-IF   
               END-IF
             ELSE
101212         IF LK-GENLISTE-COL2 NOT = SPACE AND
                  LK-GENLISTE-TRI2 = 1 AND
                  W-KEY = 3
                 IF w-order = 1 
                   MODIFY Screen1-Gd-1, X = 2, Y = 1,
                          Bitmap TRIERAD10-JPG
                   MODIFY Screen1-Gd-1, X = 3, Y = 1,
                          Bitmap TRIERAD10-JPG
                   MODIFY Screen1-Gd-1, X = 4, Y = 1,
                          Bitmap TRIERAE10-JPG
                 ELSE
                   MODIFY Screen1-Gd-1, X = 2, Y = 1,
                          Bitmap TRIERDD10-JPG
                   MODIFY Screen1-Gd-1, X = 3, Y = 1,
                          Bitmap TRIERDD10-JPG
                   MODIFY Screen1-Gd-1, X = 4, Y = 1,
                          Bitmap TRIERDE10-JPG
101212           END-IF
               ELSE
                 IF w-order = 1 
                    MODIFY Screen1-Gd-1, X = 2, Y = 1,
                           Bitmap TRIERAD10-JPG
                    MODIFY Screen1-Gd-1, X = 3, Y = 1,
                           Bitmap TRIERAE10-JPG
101212              IF LK-GENLISTE-COL2 NOT = SPACE AND
                       LK-GENLISTE-TRI2 = 1
                       MODIFY Screen1-Gd-1, X = 4, Y = 1,
                              Bitmap TRIERAD10-JPG
101212              END-IF   
                 ELSE
                    MODIFY Screen1-Gd-1, X = 2, Y = 1,
                           Bitmap TRIERDD10-JPG
                    MODIFY Screen1-Gd-1, X = 3, Y = 1,
                           Bitmap TRIERDE10-JPG
101212              IF LK-GENLISTE-COL2 NOT = SPACE AND
                       LK-GENLISTE-TRI2 = 1
                       MODIFY Screen1-Gd-1, X = 4, Y = 1,
                              Bitmap TRIERDD10-JPG
101212              END-IF   
                 END-IF
             END-IF
           END-IF
           .

       Screen1-Ef-1-Bef-Procedure.
           MOVE SPACES TO s
           String "Recherche chaine de caractères : "
                  "Faire précéder par le symbole / " 
                  Delimited BY size
                  into s
           MODIFY Screen1-La-libr, Title Is s
           .

       Screen1-Ef-1-Aft-Procedure.
           MODIFY Screen1-La-libr, Title = SPACES           
           .
      *
       Screen1-Pb-1-Link.
           MOVE SPACES TO s2
           INQUIRE Screen1-Ef-1, VALUE IN s2
           
           Set GRID-SEARCH-FORWARDS TO TRUE
           Set GRID-SEARCH-WRAP TO TRUE
           Set GRID-SEARCH-IGNORE-CASE TO TRUE
           Set GRID-SEARCH-VISIBLE TO TRUE
           Set GRID-SEARCH-SKIP-CURRENT TO TRUE
           Set GRID-SEARCH-ALL-COLUMNS TO TRUE

           Set GRID-SEARCH-MOVES-CURSOR TO TRUE
           IF s2(1:1) = "/"
             MOVE s2(2:31) TO s2(1:31)
             MOVE SPACE TO s2(32:1)
             Set GRID-SEARCH-MATCH-ANY TO TRUE
           ELSE
             Set GRID-SEARCH-MATCH-LEADING TO TRUE             
           END-IF

           MODIFY Screen1-Gd-1, Search-Options = GRID-SEARCH-OPTIONS

           MODIFY Screen1-Gd-1, Search-Text = s2  Giving i
           
           IF i = GRDSRCH-NOT-FOUND
             MOVE "Texte non trouvé" TO acu-msg-1
             PERFORM msg-info
           ELSE
             INQUIRE Screen1-Gd-1, Y IN event-data-2
             INQUIRE Screen1-Gd-1, X IN event-data-1
             PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
           END-IF           
           .
      *
       Screen1-Pb-Unselect-Link.
           IF LK-GENLISTE-DATATYPE = 1
           THEN MOVE SPACES TO LK-GENLISTE-COD(1)
           ELSE
           IF LK-GENLISTE-DATATYPE = 3
           THEN MOVE SPACES TO LK-GENLISTE-CO8(1)
           ELSE
           IF LK-GENLISTE-DATATYPE = 4
           THEN MOVE ZEROS TO LK-GENLISTE-CO8N(1)
           ELSE
           IF LK-GENLISTE-DATATYPE = 5
           THEN MOVE SPACES TO LK-GENLISTE-CO2(1)
           ELSE
           IF LK-GENLISTE-DATATYPE = 6
           THEN MOVE ZEROS TO LK-GENLISTE-CO2N(1)
           ELSE
                MOVE ZEROS  TO LK-GENLISTE-CODN(1)
           END-IF
           END-IF
           END-IF
           END-IF
           END-IF
           MODIFY Screen1-Gd-1, Y = w-gd1Col, ROW-COLOR = 0
           MOVE ZEROS TO w-gd1Col
           .
      *
       Screen1-Cb-VisuDel-Ev-Cmd-Clicked.
           inquire Screen1-Cb-VisuDel, VALUE visu-del
           if visu-del = 1 move 2 to lk-genliste-ann
                      else move 3 to lk-genliste-ann
           end-if
           perform Acu-Screen1-Exit
           .


       

      *{Bench}end
       REPORT-COMPOSER SECTION.
