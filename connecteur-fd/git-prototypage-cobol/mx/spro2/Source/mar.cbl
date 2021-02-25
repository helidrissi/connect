      *{Bench}prg-comment
      * mar.cbl
      * mar.cbl is generated from W:\mx\spro2\mar.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. mar.
       AUTHOR. mistral.
       DATE-WRITTEN. mercredi 4 novembre 2020 18:54:11.
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
       COPY "MXPARAM.sl".
       COPY "COBCAP.sl".
       COPY "MXMARQUE.sl".
      *{Bench}end
       DATA                        DIVISION.
       FILE                        SECTION.
      *{Bench}file
       COPY "MXPARAM.fd".
       COPY "COBCAP.fd".
       COPY "MXMARQUE.fd".
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
           COPY  "LK-LISTE.wrk".
       77 LK-ZONE-PALM     PIC  X(500).
       77 Screen1-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 Default-Font
                  USAGE IS HANDLE OF FONT DEFAULT-FONT.
       77 Small-Font
                  USAGE IS HANDLE OF FONT SMALL-FONT.
       77 RAFRAIC24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 MODIFIE24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 QUITTER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 CPT  PIC  9(10).
       77 CPT-EDIT         PIC  ZbZZZbZZZbZZ9.
       77 USERxxx20-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 SUPPRIM24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 IMPRIME24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 AIDExxx24-JPG    PIC  S9(6)
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
       77 CDF  PIC  X.
       77 CDFB PIC  X.
       77 SV-MAR-CREE      PIC  X(4).
       77 Screen1-Gd-1-Row-Highlight-Color         PIC  9(6).
       77 Screen1-Gd-1-Cursor-X        PIC  9(5).
       77 Screen1-Gd-1-Cursor-Y        PIC  9(5).
       77 Screen1-Gd-1-Cursor-X-Old    PIC  9(5).
       77 Screen1-Gd-1-Cursor-Y-Old    PIC  9(5).
       01 Screen1-Gd-1-Record.
           05 Screen1-Gd-1-COD PIC  X(4).
           05 Screen1-Gd-1-LIB PIC  X(20).
           05 Screen1-Gd-1-ABR PIC  X(8).
           05 Screen1-Gd-1-TVH PIC  X(4).
           05 Screen1-Gd-1-RaF2            PIC  X(1).
       77 Screen1-Gd-1-Record-Old      PIC  X(37).
       78 Nombre-Messages-Aide VALUE IS 4. 
       01 Liste-Messages-Aide.
           05 FILLER           PIC  X(50)
                      VALUE IS "Code identifiant la marque".
           05 FILLER           PIC  X(50)
                      VALUE IS "Libellé long de la marque".
           05 FILLER           PIC  X(50)
                      VALUE IS "Libellé abrégé de la marque".
           05 FILLER           PIC  X(50)
                      VALUE IS "Correspondance avec marque  TVH".
       01 Message-Aide REDEFINES Liste-Messages-Aide  PIC  X(50)
                  OCCURS NOMBRE-MESSAGES-AIDE TIMES.
       77 WENABLE          PIC  9
                  VALUE IS 1.
       77 W-MXPARAM        PIC  9(9).
       77 Screen1-St-1-Handle
                  USAGE IS HANDLE OF STATUS-BAR VALUE NULL.
       77 W-LOG-PALM       PIC  9(3)
                  VALUE IS 25.
       77 W-NPR-PALM       PIC  9(4)
                  VALUE IS 169.
       77 Tmp-9-3          PIC  9(3).
       77 W-KEY-ORDER      PIC  X(1)
                  VALUE IS "A".
       77 W-KEY-NUM        PIC  9
                  VALUE IS 1.
       77 PMELICEN-FILE-STATUS         PIC  X(2).
       77 TRIERAD10-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FILE-STATUS      PIC  X(2).
       77 PREVISU24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ZOOMxxx12-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 MODU-TVH         PIC  9.
       77 NB-COL           PIC  9.
       77 IMPORTx24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 SUPPRIMER32-BMP  PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 MODIFIER32-BMP   PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 RAFRAICHIR32-BMP PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Calibri12
                  USAGE IS HANDLE OF FONT VALUE NULL.
       77 Calibri12B
                  USAGE IS HANDLE OF FONT VALUE NULL.
       77 TRIERAD10-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FLECHEB16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ZOOM20-BMP       PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FLECHEB24-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.

      *{Bench}end
       LINKAGE                     SECTION.
      *{Bench}linkage
      *{Bench}end
       SCREEN                      SECTION.
      *{Bench}copy-screen
       01 Screen1, HELP-ID 250169.
           03 Screen1-Pb-Refresh, Push-Button, 
              COL 6,71, LINE 1,38, LINES 32, SIZE 32, 
              BITMAP-HANDLE RAFRAICHIR32-BMP, BITMAP-NUMBER 1, 
              UNFRAMED, 
              COLOR IS 512, EXCEPTION-VALUE 9855, FLAT, 
              FONT IS Default-Font, ID IS 5, 
              TRANSPARENT-COLOR 16777215, NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Rafraîchir".
           03 Screen1-Pb-Modify, Push-Button, 
              COL 1,00, LINE 1,38, LINES 32, SIZE 32, 
              BITMAP-HANDLE MODIFIER32-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              COLOR IS 512, EXCEPTION-VALUE 9854, FLAT, 
              FONT IS Default-Font, ID IS 6, 
              TRANSPARENT-COLOR 16777215, NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Modifier".
           03 Screen1-Pb-Delete, Push-Button, 
              COL 12,43, LINE 1,38, LINES 32, SIZE 32, 
              BITMAP-HANDLE SUPPRIMER32-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              COLOR IS 512, EXCEPTION-VALUE 9856, FLAT, ID IS 7, 
              TRANSPARENT-COLOR 16777215, NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Supprimer".
           03 Screen1-Gd-1, Grid, 
              COL 1,71, LINE 5,85, LINES 40,00 CELLS, SIZE 71,57 CELLS, 
              NO-BOX, CENTERED-HEADINGS, COLOR IS 1, COLUMN-HEADINGS, 
              DATA-COLUMNS (1, 5, 25, 33, 37), 
              DISPLAY-COLUMNS (1, 8, 40, 55, 64), 
              ALIGNMENT ("C", "L", "L", "U", "U"), 
              DATA-TYPES ("X(4)", "X(20)", "X(8)", "X(4)", "X"), 
              SEPARATION (5, 5, 5, 5, 5), 
              COLUMN-DIVIDERS (1, 1, 1, 0, 0), 
              CURSOR-FRAME-WIDTH 1, DIVIDER-COLOR W-Divider-Color, 
              END-COLOR W-End-Color, FONT IS Calibri12, 
              HEADING-COLOR 257, 
              HEADING-DIVIDER-COLOR W-Heading-Divider-Color, ID IS 11, 
              NUM-COL-HEADINGS 1, NUM-ROWS -1, 
              RECORD-DATA Screen1-Gd-1-Record, TILED-HEADINGS, USE-TAB, 
              VPADDING 50, VSCROLL, 
              EVENT PROCEDURE Screen1-Gd-1-Event-Proc.
           03 Screen1-Ef-Company, Entry-Field, 
              COL 25,43, LINE 1,54, LINES 1,77 CELLS, SIZE 40,57 CELLS, 
              BOXED, COLOR IS W-COLOR-PROTO, BORDER-COLOR 8, ENABLED 0, 
              FONT IS Calibri12B, ID IS 2, CENTER, MAX-TEXT 25, 
              NO-AUTOSEL, NO-TAB, READ-ONLY, VALUE RAI-MPAR, 
              ATW-CSS-ID "environment_mar".
           03 Screen1-Ef-User, Entry-Field, 
              COL 66,57, LINE 1,54, LINES 1,77 CELLS, SIZE 6,86 CELLS, 
              BOXED, COLOR IS 1, BORDER-COLOR 8, ENABLED 0, 
              FONT IS Calibri12B, ID IS 4, CENTER, MAX-TEXT 30, 
              NO-AUTOSEL, NO-TAB, READ-ONLY, VALUE IDE-PALM.
           03 Screen1-Bt-1, Bitmap, 
              COL 36,14, LINE 5,92, LINES 12, SIZE 12, 
              BITMAP-HANDLE ZOOMxxx12-BMP, BITMAP-NUMBER 1, 
              ID IS 3, VISIBLE 0.
           03 Screen1-Bt-2, Bitmap, TRANSPARENT-COLOR 16777215, 
              COL 45,29, LINE 3,54, LINES 24, SIZE 24, 
              BITMAP-HANDLE FLECHEB24-BMP, BITMAP-NUMBER 1, 
              ID IS 1, VISIBLE 0.
           03 Screen1-Bt-2a, Bitmap, 
              COL 58,86, LINE 5,46, LINES 16, SIZE 10, 
              BITMAP-HANDLE TRIERAE10-JPG, BITMAP-NUMBER 1, 
              ID IS 8, VISIBLE 0.
           03 Screen1-Bt-2b, Bitmap, 
              COL 60,29, LINE 5,46, LINES 16, SIZE 10, 
              BITMAP-HANDLE TRIERDE10-JPG, BITMAP-NUMBER 1, 
              ID IS 9, VISIBLE 0.
           03 Screen1-Bt-3, Bitmap, 
              COL 61,71, LINE 5,38, LINES 16, SIZE 10, 
              BITMAP-HANDLE TRIERDD10-JPG, BITMAP-NUMBER 1, 
              ID IS 10, VISIBLE 0.

      *{Bench}end

      *{Bench}linkpara
       PROCEDURE DIVISION.
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
      * open file
           PERFORM Acu-Open-Files
      *    After-Init
           .

       Acu-Init-Font.
      * font setting
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
           .

       Acu-Init-Bmp.
      * bitmap loading
           COPY RESOURCE "RAFRAICHIR32.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "RAFRAICHIR32.BMP", 
              GIVING RAFRAICHIR32-BMP
           COPY RESOURCE "MODIFIER32.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "MODIFIER32.BMP", GIVING 
              MODIFIER32-BMP
           COPY RESOURCE "SUPPRIMER32.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "SUPPRIMER32.BMP", GIVING 
              SUPPRIMER32-BMP
           COPY RESOURCE "ZOOMxxx12.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ZOOMxxx12.BMP", GIVING 
              ZOOMxxx12-BMP
           COPY RESOURCE "FLECHEB24.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "FLECHEB24.BMP", GIVING 
              FLECHEB24-BMP
           COPY RESOURCE "TRIERAE10.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "TRIERAE10.JPG", GIVING 
              TRIERAE10-JPG
           COPY RESOURCE "TRIERDE10.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "TRIERDE10.JPG", GIVING 
              TRIERDE10-JPG
           COPY RESOURCE "TRIERDD10.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "TRIERDD10.JPG", GIVING 
              TRIERDD10-JPG
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
           IF Calibri12 NOT = NULL
              DESTROY Calibri12
              SET Calibri12 TO NULL
           END-IF
           IF Calibri12B NOT = NULL
              DESTROY Calibri12B
              SET Calibri12B TO NULL
           END-IF
           .

       Acu-Exit-Bmp.
      * bitmap destroy
           IF RAFRAICHIR32-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY RAFRAICHIR32-BMP
              MOVE 0 TO RAFRAICHIR32-BMP
           END-IF
           IF MODIFIER32-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY MODIFIER32-BMP
              MOVE 0 TO MODIFIER32-BMP
           END-IF
           IF SUPPRIMER32-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY SUPPRIMER32-BMP
              MOVE 0 TO SUPPRIMER32-BMP
           END-IF
           IF ZOOMxxx12-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ZOOMxxx12-BMP
              MOVE 0 TO ZOOMxxx12-BMP
           END-IF
           IF FLECHEB24-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY FLECHEB24-BMP
              MOVE 0 TO FLECHEB24-BMP
           END-IF
           IF TRIERAE10-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY TRIERAE10-JPG
              MOVE 0 TO TRIERAE10-JPG
           END-IF
           IF TRIERDE10-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY TRIERDE10-JPG
              MOVE 0 TO TRIERDE10-JPG
           END-IF
           IF TRIERDD10-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY TRIERDD10-JPG
              MOVE 0 TO TRIERDD10-JPG
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
              DISPLAY Independent GRAPHICAL WINDOW
                 SCREEN LINE INIT-LINE, SCREEN COLUMN INIT-COLUMN, 
                 LINES 46,69, SIZE 73,14, CELL HEIGHT 13, CELL WIDTH 7, 
                 AUTO-MINIMIZE, COLOR IS 131329, LABEL-OFFSET 0, 
                 LINK TO THREAD, MODELESS, NO SCROLL, WITH SYSTEM MENU, 
                 TITLE "MARQUES", TITLE-BAR, USER-GRAY, USER-WHITE, 
                 NO WRAP, 
                 EVENT PROCEDURE Screen1-Event-Proc, 
                 HANDLE IS Screen1-Handle
      * toolbar
      * status-bar
           DISPLAY STATUS-BAR
              PANEL-WIDTHS 128, 
              PANEL-STYLE 1, 
              PANEL-TEXT SPACE, 
              FONT IS Small-Font, 
              HANDLE IS Screen1-St-1-Handle
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
           MODIFY Screen1-Gd-1, X = 1, Y = 1, CELL-COLOR = 304, 
              CELL-FONT = Calibri12B, CELL-DATA = "Code", 
           MODIFY Screen1-Gd-1, X = 2, Y = 1, CELL-COLOR = 304, 
              CELL-FONT = Calibri12B, CELL-DATA = "Libellé", 
           MODIFY Screen1-Gd-1, X = 3, Y = 1, CELL-COLOR = 304, 
              CELL-FONT = Calibri12B, CELL-DATA = "Abrégé", 
           MODIFY Screen1-Gd-1, X = 4, Y = 1, CELL-COLOR = 304, 
              CELL-FONT = Calibri12B, CELL-DATA = "Code TVH", 
           MODIFY Screen1-Gd-1, X = 5, Y = 1, CELL-COLOR = 304, 
              CELL-FONT = Small-Font, 
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
              WHEN Key-Status = 9855
                 PERFORM Screen1-Pb-Refresh-LinkTo
      * Screen1-Pb-Modify Link To
              WHEN Key-Status = 9854
                 PERFORM Screen1-Pb-Modify-LinkTo
      * Screen1-Pb-Delete Link To
              WHEN Key-Status = 9856
                 PERFORM Screen1-Pb-Delete-LinkTo
           END-EVALUATE
           MOVE 1 TO Accept-Control
           .

       Acu-Screen1-Display-Status-Msg.
           MODIFY Screen1-St-1-Handle
              PANEL-WIDTHS 128, 
              PANEL-STYLE 1, 
              PANEL-TEXT SPACE, 
              FONT IS Small-Font, 
           .

       Acu-Screen1-Clear-Status-Msg.
           PERFORM Acu-Screen1-Display-Status-Msg
           .

       Acu-Close-Files.
      *    Before-Close
      *    After-Close
           .

      * MXPARAM

      * COBCAP

      * MXMARQUE

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
           WHEN Msg-Bitmap-Clicked
              PERFORM Screen1-Gd-1-Ev-Msg-Bitmap-Clicked
           WHEN Msg-End-Drag
              PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Finish-Entry
              PERFORM Screen1-Gd-1-Ev-Msg-Finish-Entry
           WHEN Msg-Goto-Cell
              PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell-Drag
              PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell-Mouse
              PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Heading-Clicked
              PERFORM Screen1-Gd-1-Ev-Msg-Heading-Clicked
           END-EVALUATE
           .
      ***   start event editor code   ***
           COPY "W:/MISTRAL/COPY/ENVMIS.CBL".

       Init-BMP.

       Open-File-Rtn.
           OPEN I-O MXMARQUE
           PERFORM STAT
           .
       Close-File-Rtn.
           CLOSE MXMARQUE
           .
       Affiche-Grille.
      * Affiche la grille de sélection après l'avoir initialisé.
      * ---------------------------------------------------------------

      * Remise à zéro de la grille...
           MODIFY Screen1-Gd-1, MASS-UPDATE = 1, RESET-GRID = 1
           IF (CREAT-PALM = "X") OR (MODIF-PALM = "X") THEN
               MODIFY Screen1-Gd-1, NUM-ROWS = 0
           ELSE
               MODIFY Screen1-Gd-1, NUM-ROWS = -1
           END-IF
           PERFORM Acu-Screen1-Gd-1-Content
           IF MXASS-PALM = 1
              MODIFY Screen1-Gd-1(1 4), CELL-DATA = "DARVA"
           END-iF
           

      * Remplissage de la grille...
           INITIALIZE ENR-MMAR
           MOVE 0 TO W-EOF
           EVALUATE W-KEY-NUM
               WHEN 1
                   IF W-KEY-ORDER = "A" THEN
                       START MXMARQUE KEY >= CLE1-MMAR
                           INVALID MOVE 1 TO W-EOF
                       END-START
                   ELSE
                       MOVE HIGH-VALUE TO CLE1-MMAR
                       START MXMARQUE KEY <= CLE1-MMAR
                           INVALID MOVE 1 TO W-EOF
                       END-START
                   END-IF
               WHEN 2
                   IF W-KEY-ORDER = "A" THEN
                       START MXMARQUE KEY >= CLE2-MMAR
                           INVALID MOVE 1 TO W-EOF
                       END-START
                   ELSE
                       MOVE HIGH-VALUE TO CLE2-MMAR
                       START MXMARQUE KEY <= CLE2-MMAR
                           INVALID MOVE 1 TO W-EOF
                       END-START
                   END-IF
               WHEN OTHER
                   IF W-KEY-ORDER = "A" THEN
                       START MXMARQUE KEY >= CLE3-MMAR
                           INVALID MOVE 1 TO W-EOF
                       END-START
                   ELSE
                       MOVE HIGH-VALUE TO CLE3-MMAR
                       START MXMARQUE KEY <= CLE3-MMAR
                           INVALID MOVE 1 TO W-EOF
                       END-START
                   END-IF
           END-EVALUATE
           PERFORM STAT
           IF W-EOF = 0 THEN
               IF W-KEY-ORDER = "A" THEN
                   READ MXMARQUE NEXT END MOVE 1 TO W-EOF END-READ
               ELSE
                   READ MXMARQUE PREVIOUS END MOVE 1 TO W-EOF END-READ
               END-IF
               PERFORM STAT
           END-IF
           PERFORM UNTIL W-EOF = 1
               MOVE COD-MMAR TO Screen1-Gd-1-COD
               MOVE LIB-MMAR TO Screen1-Gd-1-LIB
               MOVE ABR-MMAR TO Screen1-Gd-1-ABR
               IF MODU-TVH = 1 OR MXASS-PALM = 1
                  MOVE TVH-MMAR TO Screen1-Gd-1-TVH
               END-IF
               MODIFY Screen1-Gd-1, RECORD-TO-ADD = Screen1-Gd-1-Record
               IF W-KEY-ORDER = "A" THEN
                   READ MXMARQUE NEXT END MOVE 1 TO W-EOF END-READ
               ELSE
                   READ MXMARQUE PREVIOUS END MOVE 1 TO W-EOF END-READ
               END-IF
               PERFORM STAT
           END-PERFORM

      * Positionnement du curseur sur la grille...
           MOVE 1 TO Event-Data-1 Screen1-Gd-1-Cursor-X
                     Screen1-Gd-1-Cursor-X-Old
           MOVE 2 TO Event-Data-2 Screen1-Gd-1-Cursor-Y
                     Screen1-Gd-1-Cursor-Y-Old
           MODIFY Screen1-Gd-1(2),
                  ROW-COLOR = Screen1-Gd-1-Row-Highlight-Color

      * Indique la clé sélectionnée...
           MODIFY Screen1-Gd-1(1, 4), BITMAP = NULL
           MODIFY Screen1-Gd-1(1, 5), BITMAP = NULL
           IF W-KEY-ORDER = "A" THEN
               MODIFY Screen1-Gd-1(1, 1), BITMAP = FLECHEB24-BMP
               , BITMAP-TRAILING = 1
               MODIFY Screen1-Gd-1(1, 2), BITMAP = FLECHEB24-BMP
               , BITMAP-TRAILING = 1
               MODIFY Screen1-Gd-1(1, 3), BITMAP = FLECHEB24-BMP
               , BITMAP-TRAILING = 1
               MODIFY Screen1-Gd-1(1, W-KEY-NUM),
                      BITMAP = FLECHEB24-BMP, BITMAP-TRAILING = 1
           ELSE
               MODIFY Screen1-Gd-1(1, 1),
                      BITMAP = FLECHEB24-BMP, BITMAP-TRAILING = 1
               MODIFY Screen1-Gd-1(1, 2),
                      BITMAP = FLECHEB24-BMP, BITMAP-TRAILING = 1
               MODIFY Screen1-Gd-1(1, 3),
                      BITMAP = FLECHEB24-BMP, BITMAP-TRAILING = 1
               MODIFY Screen1-Gd-1(1, W-KEY-NUM),
                      BITMAP = FLECHEB24-BMP, BITMAP-TRAILING = 1
           END-IF

           MODIFY Screen1-Gd-1, MASS-UPDATE = 0

           MOVE SPACE TO Screen1-Gd-1-Record

           IF ANNUL-PALM = "X" THEN
               MODIFY Screen1-Pb-Delete, VISIBLE = 0
           ELSE
               MODIFY Screen1-Pb-Delete, VISIBLE = 1
           END-IF
           .
       Mode-Interrogation.
      * Bascule vers le mode "Interrogation"
      * ---------------------------------------------------------------

           MOVE "I" TO CDFB

           UNLOCK MXMARQUE

           MOVE 257 TO Screen1-Gd-1-Row-Highlight-Color
           IF MODIF-PALM = "X" THEN
               MODIFY Screen1-Pb-Modify, VISIBLE = 0
           ELSE
               MODIFY Screen1-Pb-Modify, VISIBLE = 1
           END-IF
           .
       Screen1-BeforeCreate.
           PERFORM Controle-Palme
           PERFORM Open-File-Rtn

           OPEN INPUT MXPARAM
           PERFORM STAT
           MOVE 1 TO W-MXPARAM
           READ MXPARAM
           PERFORM STAT
           CLOSE MXPARAM
           .
           

       Screen1-AfterInitData.
160819     MOVE Screen1-Handle TO HANDLE-PALM
      * Gestion de PALM par le programme :
      *  - Le droit de créer est ignoré pour tout utilisateur n'ayant
      *    pas le droit de modifier.
      *  - Le droit d'interrogation est supposé vrai, PALM ayant du
      *    filtrer avant.
      *     IF MODU-TVH = 0 AND MXASS-PALM = 0
      *        MODIFY Screen1-Gd-1, 
      *        DATA-COLUMNS (1, 5, 25, 33, 34), 
      *        DISPLAY-COLUMNS (1, 9, 44, 69, 59).
           
           PERFORM Mode-Interrogation

           PERFORM Affiche-Grille
           .
       Screen1-Gd-1-Ev-Msg-Begin-Entry.
      * Grille verrouillée en mode "Interrogation"...
           IF CDFB = "I" THEN
               MOVE Event-Action-Fail TO Event-Action
               EXIT PARAGRAPH
           END-IF

           INQUIRE Screen1-Gd-1(Event-Data-2)
                   RECORD-DATA IN Screen1-Gd-1-Record
           MOVE Screen1-Gd-1-Record TO Screen1-Gd-1-Record-Old
           MOVE SPACE TO CDF

      * Pas de modification de la 1ère colonne, sauf en création...
           IF ((NOT Screen1-Gd-1-COD = SPACES) AND (Event-Data-1 = 1))
              OR (CDFB = "I") THEN
               MOVE Event-Action-Fail TO Event-Action
               EXIT PARAGRAPH
           END-IF
           IF NOT Screen1-Gd-1-COD = SPACES THEN
               MOVE Screen1-Gd-1-COD TO COD-MMAR
               READ MXMARQUE WITH LOCK INVALID 
                   MOVE "Problème Lecture" TO ACU-MSG-1
                   PERFORM MSG-ERREUR
                   MOVE Event-Action-Fail TO Event-Action
                   EXIT PARAGRAPH
               END-READ
               PERFORM STAT
               IF IND-STAT = 1
                   MOVE "399" TO ACU-MSG-ID
                   PERFORM ACU-SHOW-MSG
                   MOVE Event-Action-Fail TO Event-Action
                   EXIT PARAGRAPH
               END-IF
               
               MOVE "M" TO CDF
           ELSE
               MOVE "C" TO CDF
           END-IF
           .
       Screen1-Gd-1-Ev-Msg-Goto-Cell.
      * La ligne de titre est à ignorer...
           IF Event-Data-2 < 2
               MOVE 2 TO Event-Data-2
           END-IF

      * Alimente la status-bar...
           IF MODU-TVH = 1 OR MXASS-PALM = 1
                MOVE 4 TO NB-COL
           ELSE MOVE 3 TO NB-COL
           END-IF.
           IF Event-Data-1 <= NB-COL THEN
               MODIFY Screen1-St-1-Handle,
                      TITLE = Message-Aide(Event-Data-1)
           ELSE
               PERFORM Mistral-TransferFocus
           END-IF

      * Pour voir si on a changé de ligne
           IF Event-Data-2 = Screen1-Gd-1-Cursor-Y-Old THEN
               MOVE Event-Data-1 TO Screen1-Gd-1-Cursor-X-Old
           ELSE
               MODIFY Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old),
                      ROW-COLOR = 0               
               MODIFY Screen1-Gd-1(Event-Data-2),
                      ROW-COLOR = Screen1-Gd-1-Row-Highlight-Color
               IF CDFB = "M" 
                  MODIFY Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old, 4),
                         BITMAP = SPACES
                  modify Screen1-Gd-1(Event-Data-2, 4), 
                         BITMAP = ZOOMxxx12-BMP
               END-IF
           END-IF

           MOVE Event-Data-1 TO Screen1-Gd-1-Cursor-X
                                Screen1-Gd-1-Cursor-X-Old
           MOVE Event-Data-2 TO Screen1-Gd-1-Cursor-Y
                                Screen1-Gd-1-Cursor-Y-Old

           UNLOCK MXMARQUE
           .
       Screen1-Gd-1-Ev-Msg-Finish-Entry.
           INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y),
                   RECORD-DATA IN Screen1-Gd-1-Record

      * Ne pas considérer un code vide comme valide...
           IF Screen1-Gd-1-COD = SPACE THEN
               MOVE "381" TO Acu-Msg-Id
               PERFORM Acu-Show-Msg
               MOVE Event-Action-Ignore TO Event-Action
               EXIT PARAGRAPH
           END-IF

           IF (Screen1-Gd-1-Cursor-X = 1) AND (CDF = "C") AND
              (NOT Screen1-Gd-1-COD = SPACE) THEN
               MOVE Screen1-Gd-1-COD TO COD-MMAR
               READ MXMARQUE WITH LOCK NOT INVALID
                   MOVE "382" TO Acu-Msg-Id
                   PERFORM Acu-Show-Msg
                   MOVE SPACE TO Screen1-Gd-1-COD
                   MOVE Event-Action-Fail TO Event-Action
                   EXIT PARAGRAPH
               END-READ
           END-IF
           IF NOT Screen1-Gd-1-RECORD = Screen1-Gd-1-Record-Old THEN
               MOVE Screen1-Gd-1-COD TO COD-MMAR
               MOVE Screen1-Gd-1-LIB TO LIB-MMAR
               MOVE Screen1-Gd-1-ABR TO ABR-MMAR

               IF CDF = "C" THEN
                   WRITE ENR-MMAR
                   MOVE COD-MMAR TO SV-MAR-CREE
               ELSE
                   REWRITE ENR-MMAR
               END-IF
               PERFORM STAT
               MOVE SPACE TO CDF
           END-IF
           .
       Screen1-Gd-1-Ev-Msg-Heading-Clicked.
           IF Event-Data-1 <= 3 THEN
               IF Event-Data-1 = W-KEY-NUM THEN
                   IF W-KEY-ORDER = "A" THEN
                       MOVE "D" TO W-KEY-ORDER
                   ELSE
                       MOVE "A" TO W-KEY-ORDER
                   END-IF
               ELSE
                   MOVE Event-Data-1 TO W-KEY-NUM
               END-IF
               PERFORM Mode-Interrogation
               PERFORM Affiche-Grille
           END-IF
           .
       Screen1-Pb-Quit-LinkTo.
           PERFORM Acu-Screen1-EXIT
           .
       Screen1-Ev-Cmd-Close.
           PERFORM Mistral-WindowClosing
           .
       Screen1-Pb-Refresh-LinkTo.
           PERFORM Mode-Interrogation

           PERFORM Affiche-Grille
           .
       Screen1-Pb-Modify-LinkTo.
      * PALM interdit la mise à jour...
           IF MODIF-PALM = "X" THEN
               MOVE "380" TO Acu-Msg-Id
               PERFORM Acu-Show-Msg
               Move Event-Action-Ignore TO Event-Action
               EXIT PARAGRAPH
           END-IF

           MOVE "M" TO CDFB

           MOVE 482 TO Screen1-Gd-1-Row-Highlight-Color
           MODIFY Screen1-Gd-1(Screen1-Gd-1-Cursor-Y),
                  ROW-COLOR = Screen1-Gd-1-Row-Highlight-Color
           IF MODU-TVH = 1 OR MXASS-PALM = 1
              modify Screen1-Gd-1(Screen1-Gd-1-Cursor-Y, 4), 
                     BITMAP = ZOOMxxx12-BMP
           END-IF
           MODIFY Screen1-Pb-Modify, VISIBLE = 0
           
           MOVE 1 TO Screen1-Gd-1-Cursor-X
           MODIFY Screen1-Gd-1, CURSOR-X = Screen1-Gd-1-Cursor-X

      * ATTENTION : Utilisable uniquement dans un traitement déclenché
      *             par une EXCEPTION
           ACCEPT Screen1-Gd-1
           .
       Screen1-Pb-Delete-LinkTo.
      * PALM interdit la suppression.
           IF ANNUL-PALM = "X" THEN
               MOVE "380" TO Acu-Msg-Id
               PERFORM Acu-Show-Msg
               MOVE Event-Action-Ignore TO Event-Action
               EXIT PARAGRAPH
           END-IF

           MOVE "203" TO Acu-Msg-Id
           PERFORM Acu-Show-Msg
           IF NOT Acu-Return-Value = 1 THEN
               EXIT PARAGRAPH
           END-IF
           INQUIRE Screen1-Gd-1, CURSOR-X IN Screen1-Gd-1-Cursor-X,
                                 CURSOR-Y IN Screen1-Gd-1-Cursor-Y
           INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y),
                   RECORD-DATA IN Screen1-Gd-1-Record
           MOVE Screen1-Gd-1-COD TO COD-MMAR
           READ MXMARQUE WITH LOCK
           PERFORM STAT
           DELETE MXMARQUE
           PERFORM STAT
           MODIFY Screen1-Gd-1,
                      RECORD-TO-DELETE = Screen1-Gd-1-Cursor-Y-Old,
                      ROW-COLOR = Screen1-Gd-1-Row-Highlight-Color
           
           .

       Screen1-Aft-Routine.
           PERFORM Close-File-Rtn
           .
      *
       Screen1-Pb-Print-Ev-Cmd-Clicked.
                         
           .


      * Liste des codes TVH
       Screen1-Gd-1-Ev-Msg-Bitmap-Clicked.
           .

       

      *{Bench}end
       REPORT-COMPOSER SECTION.
