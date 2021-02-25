      *{Bench}prg-comment
      * mart-m.cbl
      * mart-m.cbl is generated from W:\mx\spro\mart-m.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. mart-m.
       AUTHOR. mistral.
       DATE-WRITTEN. lundi 27 janvier 2020 11:25:21.
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
       COPY "MXART.sl".
       COPY "MXPARAM.sl".
       COPY "RECH.sl".
       COPY "RECHCMD.sl".
      *{Bench}end
       DATA                        DIVISION.
       FILE                        SECTION.
      *{Bench}file
       COPY "COBCAP.fd".
       COPY "MXART.fd".
       COPY "MXPARAM.fd".
       COPY "RECH.fd".
       COPY "RECHCMD.fd".
      *{Bench}end
       WORKING-STORAGE             SECTION.
      *{Bench}acu-def
       COPY "acugui.def".
       COPY "acucobol.def".
       COPY "crtvars.def".
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
           COPY  "\mistral\copy\cobcap.wrk".
           COPY  "\mistral\copy\rech.wrk".
       77 Screen1-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 W-LOG-PALM       PIC  9(3).
       77 W-NPR-PALM       PIC  9(3).
       01 W-COD-DEB        PIC  X(20).
       01 RW-COD-DEB REDEFINES W-COD-DEB.
           05 W-CO1-DEB        PIC  X(4).
           05 W-CO2-DEB        PIC  X(16).
       01 W-COD-FIN        PIC  X(20).
       01 RW-COD-FIN REDEFINES W-COD-FIN.
           05 W-CO1-FIN        PIC  X(4).
           05 W-CO2-FIN        PIC  X(16).
       77 W-NBART          PIC  Z(5)9.
       77 W-NBART-LIB      PIC  X(40).
       01 Gd-1-Record.
           05 Gd-1-Col-1       PIC  X(4).
           05 Gd-1-Col-2       PIC  X(16).
           05 Gd-1-Col-3       PIC  X(40).
       01 Gd-1-Data.
           05 Gd-1-COD.
               10 Gd-1-COD1        PIC  X(4).
               10 Gd-1-COD2        PIC  X(16).
           05 Gd-1-DES         PIC  X(40).
       77 Gd-1-Index       PIC  9(6).
       77 Gd-1-Max         PIC  9(6).
       77 Gd-1-WCursor-X   PIC  S9(5).
       77 Gd-1-WCursor-Y   PIC  S9(5).
       77 Gd-1-Old-WCursor-X           PIC  S9(5).
       77 Gd-1-Old-WCursor-Y           PIC  S9(5).
       01 Gd-2-Record.
           05 Gd-2-Col-1       PIC  X(4).
           05 Gd-2-Col-2       PIC  X(16).
           05 Gd-2-Col-3       PIC  X(40).
       01 Gd-2-Data.
           05 Gd-2-COD.
               10 Gd-2-COD1        PIC  X(4).
               10 Gd-2-COD2        PIC  X(16).
           05 Gd-2-DES         PIC  X(40).
       77 Gd-2-Erreur      PIC  9.
       77 Gd-2-Index       PIC  9(6).
       77 Gd-2-Max         PIC  9(6).
       77 Gd-2-NbSel       PIC  9(6).
       77 Gd-2-WCursor-X   PIC  S9(5).
       77 Gd-2-WCursor-Y   PIC  S9(5).
       77 Gd-2-Old-WCursor-X           PIC  S9(5).
       77 Gd-2-Old-WCursor-Y           PIC  S9(5).
       77 FLECHBB12-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ENGRDOU24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 PLUSxxx16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 SUPPRIM24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 VALIDER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Screen1-St-1-Handle
                  USAGE IS HANDLE OF STATUS-BAR VALUE NULL.
       77 Default-Font
                  USAGE IS HANDLE OF FONT DEFAULT-FONT.
       77 Small-Font
                  USAGE IS HANDLE OF FONT SMALL-FONT.
       77 ASSIGN-RECHCMD   PIC  X(60).
       77 ASSIGN-RECH      PIC  X(60).
       77 WASS-RECH        PIC  X(20)
                  VALUE IS "MART-M-RECH".
       77 FILE-STATUS      PIC  X(2).
           88 Valid-COBCAP VALUE IS "00" THRU "09". 
       77 W-MXPARAM        PIC  9(9).
       77 SUPPRIMER32-BMP  PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 VALIDER32-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ENGRENAGE32-BMP  PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 PLUSxxx16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.

      *{Bench}end
       LINKAGE                     SECTION.
      *{Bench}linkage
       77 LK-ZONE-PALM     PIC  X(500).
           COPY  "W:\mx\copy\LK-MART-M.wrk".
      *{Bench}end
       SCREEN                      SECTION.
      *{Bench}copy-screen
       01 Screen1.
           03 Screen1-Fr-1, Frame, 
              COL 3,00, LINE 1,69, LINES 4,92 CELLS, SIZE 47,71 CELLS, 
              ENGRAVED, COLOR IS 2, FONT IS Small-Font, ID IS 15, 
              TITLE "Extraction des articles", BACKGROUND-LOW.
           03 Screen1-Ef-COD-DEB, Entry-Field, 
              COL 18,00, LINE 3,08, LINES 1,38 CELLS, SIZE 28,57 CELLS, 
              3-D, COLOR IS 2, ID IS 10, MAX-TEXT 20, VALUE W-COD-DEB, 
              VISIBLE 0.
           03 Screen1-Ef-COD-FIN, Entry-Field, 
              COL 18,00, LINE 4,62, LINES 1,38 CELLS, SIZE 28,57 CELLS, 
              3-D, COLOR IS 2, ID IS 11, MAX-TEXT 20, VALUE W-COD-FIN, 
              VISIBLE 0.
           03 Screen1-La-4, Label, 
              COL 1,00, LINE 8,54, LINES 1,15 CELLS, SIZE 51,43 CELLS, 
              COLOR IS W-Heading-Color, FONT IS Default-Font, ID IS 17, 
              CENTER, LABEL-OFFSET 0, 
              TITLE "LISTE DES ARTICLES".
           03 Screen1-Gd-1, Grid, 
              COL 1,00, LINE 9,77, LINES 32,38 CELLS, SIZE 54,14 CELLS, 
              3-D, CENTERED-HEADINGS, COLOR IS 2, COLUMN-HEADINGS, 
              DATA-COLUMNS (1, 5, 21), 
              DISPLAY-COLUMNS (1, 6, 23), 
              ALIGNMENT ("C", "U", "U"), 
              SEPARATION (5, 5, 5), 
              COLUMN-DIVIDERS (0, 1, 1), 
              CURSOR-FRAME-WIDTH 0, DIVIDER-COLOR W-Divider-Color, 
              DRAG-COLOR 1, END-COLOR W-End-Color, FONT IS Small-Font, 
              HEADING-COLOR 257, 
              HEADING-DIVIDER-COLOR W-Heading-Divider-Color, ID IS 1, 
              NUM-COL-HEADINGS 1, NUM-ROWS W-Num-Rows, 
              RECORD-DATA Gd-1-Record, TILED-HEADINGS, VPADDING 50, 
              VSCROLL, 
              BEFORE PROCEDURE Screen1-Gd-1-Bef-Procedure, 
              EVENT PROCEDURE Screen1-Gd-1-Event-Proc.
           03 Screen1-Gd-2, Grid, 
              COL 61,14, LINE 9,77, LINES 32,38 CELLS, 
              SIZE 54,14 CELLS, 
              3-D, CENTERED-HEADINGS, COLOR IS 2, COLUMN-HEADINGS, 
              DATA-COLUMNS (1, 5, 21), 
              DISPLAY-COLUMNS (1, 6, 23), 
              ALIGNMENT ("C", "U", "U"), 
              SEPARATION (5, 5, 5), 
              COLUMN-DIVIDERS (0, 1, 1), 
              CURSOR-FRAME-WIDTH 0, DIVIDER-COLOR W-Divider-Color, 
              DRAG-COLOR 1, END-COLOR W-End-Color, FONT IS Small-Font, 
              HEADING-COLOR 257, 
              HEADING-DIVIDER-COLOR W-Heading-Divider-Color, ID IS 2, 
              NUM-COL-HEADINGS 1, NUM-ROWS W-Num-Rows, 
              RECORD-DATA Gd-2-Record, TILED-HEADINGS, VPADDING 50, 
              VSCROLL, 
              BEFORE PROCEDURE Screen1-Gd-2-Bef-Procedure, 
              EVENT PROCEDURE Screen1-Gd-2-Event-Proc.
           03 Screen1-Pb-1, Push-Button, 
              COL 55,86, LINE 20,00, LINES 2,38 CELLS, SIZE 4,57 CELLS, 
              ENABLED 0, EXCEPTION-VALUE 1004, ID IS 3, 
              TITLE ">>".
           03 Screen1-Pb-2, Push-Button, 
              COL 55,86, LINE 23,08, LINES 2,38 CELLS, SIZE 4,57 CELLS, 
              ENABLED 0, EXCEPTION-VALUE 1005, ID IS 4, 
              TITLE ">".
           03 Screen1-Pb-3, Push-Button, 
              COL 55,86, LINE 28,54, LINES 2,38 CELLS, SIZE 4,57 CELLS, 
              ENABLED 0, EXCEPTION-VALUE 1006, ID IS 5, 
              TITLE "<".
           03 Screen1-Pb-4, Push-Button, 
              COL 55,86, LINE 31,62, LINES 2,38 CELLS, SIZE 4,57 CELLS, 
              ENABLED 0, EXCEPTION-VALUE 1007, ID IS 6, 
              TITLE "<<".
           03 Screen1-Pb-Valider, Push-Button, 
              COL 109,29, LINE 1,23, LINES 32, SIZE 32, 
              BITMAP-HANDLE VALIDER32-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1001, FLAT, ID IS 8, 
              TITLE "Valider la sélection".
           03 Screen1-Pb-Annuler, Push-Button, 
              COL 103,57, LINE 1,23, LINES 32, SIZE 32, 
              BITMAP-HANDLE SUPPRIMER32-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1002, FLAT, ID IS 9, 
              TITLE "Annuler la sélection".
           03 Screen1-Pb-Afficher, Push-Button, 
              COL 55,43, LINE 2,92, LINES 32, SIZE 32, 
              BITMAP-HANDLE ENGRENAGE32-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1008, FLAT, ID IS 12, DEFAULT-BUTTON, 
              TITLE "Afficher la liste des articles".
           03 Screen1-La-1, Label, 
              COL 9,43, LINE 3,08, LINES 1,15 CELLS, SIZE 7,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 13, RIGHT, 
              LABEL-OFFSET 0, 
              TITLE "à partir de", TRANSPARENT.
           03 Screen1-La-2, Label, 
              COL 9,43, LINE 4,62, LINES 1,15 CELLS, SIZE 7,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 14, RIGHT, 
              LABEL-OFFSET 0, 
              TITLE "jusqu'à", TRANSPARENT.
           03 Screen1-Pb-Chargement, Push-Button, 
              COL 55,29, LINE 9,92, LINES 16, SIZE 16, 
              BITMAP-HANDLE PLUSxxx16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1009, ID IS 16, 
              TITLE "Chargement des enregistrements suivants".
           03 Screen1-La-NBART-LIB, Label, 
              COL 61,14, LINE 8,38, LINES 1,15 CELLS, SIZE 51,43 CELLS, 
              COLOR IS W-Heading-Color, FONT IS Default-Font, ID IS 18, 
              CENTER, LABEL-OFFSET 0, TITLE W-NBART-LIB.
           03 Screen1-La-Rech, Label, 
              COL 3,14, LINE 6,77, LINES 1,00 CELLS, SIZE 50,00 CELLS, 
              COLOR IS 13, FONT IS Small-Font, ID IS 19, 
              LABEL-OFFSET 0, 
              TITLE 
              "Pour rechercher un mot (chaîne de caractères), faire préc
      -       "éder par un /", TRANSPARENT.
           03 Screen1-Ef-CO1-DEB, Entry-Field, 
              COL 18,00, LINE 3,08, LINES 1,38 CELLS, SIZE 7,14 CELLS, 
              3-D, COLOR IS 2, ID IS 20, MAX-TEXT 4, VALUE W-CO1-DEB, 
              VISIBLE 0.
           03 Screen1-Ef-CO2-DEB, Entry-Field, 
              COL 25,86, LINE 3,08, LINES 1,38 CELLS, SIZE 20,71 CELLS, 
              3-D, COLOR IS 2, ID IS 21, MAX-TEXT 16, VALUE W-CO2-DEB, 
              VISIBLE 0.
           03 Screen1-Ef-CO1-FIN, Entry-Field, 
              COL 18,00, LINE 4,62, LINES 1,38 CELLS, SIZE 7,14 CELLS, 
              3-D, COLOR IS 2, ID IS 22, MAX-TEXT 4, VALUE W-CO1-FIN, 
              VISIBLE 0.
           03 Screen1-Ef-CO2-FIN, Entry-Field, 
              COL 25,86, LINE 4,62, LINES 1,38 CELLS, SIZE 20,71 CELLS, 
              3-D, COLOR IS 2, ID IS 23, MAX-TEXT 16, VALUE W-CO2-FIN, 
              VISIBLE 0.

      *{Bench}end

      *{Bench}linkpara
       PROCEDURE DIVISION USING LK-ZONE-PALM, LK-MART-M.
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
      * load bitmap
           PERFORM Acu-Init-Bmp
      * open file
           PERFORM Acu-Open-Files
      *    After-Init
           .

       Acu-Init-Bmp.
      * bitmap loading
           COPY RESOURCE "VALIDER32.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "VALIDER32.BMP", GIVING 
              VALIDER32-BMP
           COPY RESOURCE "SUPPRIMER32.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "SUPPRIMER32.BMP", GIVING 
              SUPPRIMER32-BMP
           COPY RESOURCE "ENGRENAGE32.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ENGRENAGE32.BMP", GIVING 
              ENGRENAGE32-BMP
           COPY RESOURCE "PLUSxxx16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "PLUSxxx16.BMP", GIVING 
              PLUSxxx16-BMP
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
           IF VALIDER32-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY VALIDER32-BMP
              MOVE 0 TO VALIDER32-BMP
           END-IF
           IF SUPPRIMER32-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY SUPPRIMER32-BMP
              MOVE 0 TO SUPPRIMER32-BMP
           END-IF
           IF ENGRENAGE32-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ENGRENAGE32-BMP
              MOVE 0 TO ENGRENAGE32-BMP
           END-IF
           IF PLUSxxx16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY PLUSxxx16-BMP
              MOVE 0 TO PLUSxxx16-BMP
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
                 LINES 42,85, SIZE 114,29, CELL HEIGHT 13, 
                 CELL WIDTH 7, COLOR IS 65793, LABEL-OFFSET 0, 
                 LINK TO THREAD, MODELESS, NO SCROLL, WITH SYSTEM MENU, 
                 TITLE "SELECTION DES ARTICLES", TITLE-BAR, USER-GRAY, 
                 USER-WHITE, NO WRAP, 
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

       Acu-Screen1-Init-Data.
      *    Before-Initdata
           PERFORM Acu-Screen1-Gd-1-Content
           PERFORM Acu-Screen1-Gd-2-Content
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
      * Cells Settings
           MODIFY Screen1-Gd-1, X = 1, Y = 1, 
              CELL-COLOR = W-Heading-Color, CELL-DATA = "IDF", 
           MODIFY Screen1-Gd-1, X = 2, Y = 1, 
              CELL-COLOR = W-Heading-Color, CELL-DATA = "Référence", 
           MODIFY Screen1-Gd-1, X = 3, Y = 1, 
              CELL-COLOR = W-Heading-Color, CELL-DATA = "Désignation", 
           .

      * Screen1-Gd-2
       Acu-Screen1-Gd-2-Content.
      * Cells Settings
           MODIFY Screen1-Gd-2, X = 1, Y = 1, 
              CELL-COLOR = W-Heading-Color, CELL-DATA = "IDF", 
           MODIFY Screen1-Gd-2, X = 2, Y = 1, 
              CELL-COLOR = W-Heading-Color, CELL-DATA = "Référence", 
           MODIFY Screen1-Gd-2, X = 3, Y = 1, 
              CELL-COLOR = W-Heading-Color, CELL-DATA = "Désignation", 
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
      * Screen1-Pb-1 Link To
              WHEN Key-Status = 1004
                 PERFORM Screen1-Pb-1-Link
      * Screen1-Pb-2 Link To
              WHEN Key-Status = 1005
                 PERFORM Screen1-Pb-2-Link
      * Screen1-Pb-3 Link To
              WHEN Key-Status = 1006
                 PERFORM Screen1-Pb-3-Link
      * Screen1-Pb-4 Link To
              WHEN Key-Status = 1007
                 PERFORM Screen1-Pb-4-Link
      * Screen1-Pb-Valider Link To
              WHEN Key-Status = 1001
                 PERFORM Screen1-Pb-Valider-Link
      * Screen1-Pb-Annuler Link To
              WHEN Key-Status = 1002
                 PERFORM Screen1-Pb-Annuler-Link
      * Screen1-Pb-Afficher Link To
              WHEN Key-Status = 1008
                 PERFORM Screen1-Pb-Afficher-Link
      * Screen1-Pb-Chargement Link To
              WHEN Key-Status = 1009
                 PERFORM Screen1-Pb-Chargement-Link
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

       Acu-Close-Files.
      *    Before-Close
      *    After-Close
           .

      * COBCAP

      * MXART

      * MXPARAM

      * RECH

      * RECHCMD

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
           WHEN Msg-Goto-Cell-Drag
              PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell-Mouse
              PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
           END-EVALUATE
           .

       Screen1-Gd-2-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Begin-Entry
              PERFORM Screen1-Gd-2-Ev-Msg-Begin-Entry
           WHEN Msg-End-Drag
              PERFORM Screen1-Gd-2-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell
              PERFORM Screen1-Gd-2-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell-Drag
              PERFORM Screen1-Gd-2-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell-Mouse
              PERFORM Screen1-Gd-2-Ev-Msg-Goto-Cell
           END-EVALUATE
           .
      ***   start event editor code   ***
           COPY "../../mistral/copy/envmis.cbl".
      *
       Screen1-Bef-Create.
           PERFORM CONTROLE-CALL
           PERFORM OPEN-FILE-RTN
           PERFORM INIT-BMP
           OPEN INPUT MXPARAM
           PERFORM STAT
           MOVE 1 TO W-MXPARAM
           READ MXPARAM
           CLOSE MXPARAM
           IF LK-MART-M-MAXSEL = 0 THEN
             MOVE 80 TO LK-MART-M-MAXSEL
           END-IF
           .
       Screen1-Aft-Routine.
           PERFORM CLOSE-FILE-RTN
           .
      * OUVERTURE DES FICHIERS =========================================
       OPEN-FILE-RTN.
           OPEN INPUT COBCAP PERFORM STAT
           OPEN INPUT MXART  PERFORM STAT
           .
      * FERMETURE DES FICHIERS =========================================
       CLOSE-FILE-RTN.
           CLOSE COBCAP
           CLOSE MXART
           .
      * INITIALISATION DES BITMAP ======================================
       INIT-BMP.
      * DEBUT DU PROGRAMME =============================================
       Screen1-Aft-Initdata. 
           IF SCA-MPAR = 2
              MODIFY Screen1-Ef-COD-DEB, VISIBLE 1
              MODIFY Screen1-Ef-COD-FIN, VISIBLE 1
              MODIFY Screen1-Ef-CO1-DEB, VISIBLE 0
              MODIFY Screen1-Ef-CO2-DEB, VISIBLE 0
              MODIFY Screen1-Ef-CO1-FIN, VISIBLE 0
              MODIFY Screen1-Ef-CO2-FIN, VISIBLE 0
           ELSE
              MODIFY Screen1-Ef-COD-DEB, VISIBLE 0
              MODIFY Screen1-Ef-COD-FIN, VISIBLE 0
              MODIFY Screen1-Ef-CO1-DEB, VISIBLE 1
              MODIFY Screen1-Ef-CO2-DEB, VISIBLE 1
              MODIFY Screen1-Ef-CO1-FIN, VISIBLE 1
              MODIFY Screen1-Ef-CO2-FIN, VISIBLE 1
           END-IF
           
      * Initialisation du nombre d'articles sélectionnés.
           PERFORM AFF-NBART-LIB
           PERFORM AFF-GD-2
           .
      * INITIALISATION DE LA GRILLE 1 =======================================
       AFF-GD-1.
           MODIFY Screen1-Gd-1, RESET-GRID = 1
           PERFORM Acu-Screen1-Gd-1-Content
           INITIALIZE ENR-MART
           MOVE 0 TO W-EOF
           IF SCA-MPAR = 2
              MOVE W-COD-DEB TO CO2-MART
              START MXART KEY >= CLE5-MART INVALID MOVE 1 TO W-EOF
              END-START
           ELSE
              MOVE W-COD-DEB TO COD-MART
              START MXART KEY >= CLE1-MART INVALID MOVE 1 TO W-EOF
              END-START
           END-IF
           IF W-EOF = 0
              READ MXART NEXT END MOVE 1 TO W-EOF
              END-READ
              PERFORM STAT
              PERFORM TRADUIRE-ART
           END-IF
           PERFORM CHGT-GD-1
           MODIFY Screen1-Gd-1, MASS-UPDATE 0
           MOVE 1 TO Event-Data-1 Gd-1-WCursor-X Gd-1-Old-WCursor-X
           MOVE 2 TO Event-Data-2 Gd-1-WCursor-Y Gd-1-Old-WCursor-Y
           MODIFY Screen1-Gd-1, Y = Event-Data-2,
                  ROW-COLOR = W-Row-High-Color
           .
      * CHARGEMENT DE LA GRILLE 1 ======================================
       CHGT-GD-1.
           MOVE 1 TO Gd-1-Index
           IF W-COD-FIN = SPACE MOVE HIGH-VALUE TO W-COD-FIN.
           PERFORM UNTIL W-EOF = 1 OR Gd-1-Index = 100
           OR (SCA-MPAR <> 2 AND COD-MART > W-COD-FIN)
           OR (SCA-MPAR = 2 AND CO2-MART > W-COD-FIN)
              IF CANN-MART NOT = 1 
                IF (LK-MART-M-ACT = "L" AND ILV-MART = 0)
                OR (LK-MART-M-NAT = 2 AND NAT-MART <> 2)
                  CONTINUE 
                ELSE
                  MOVE SPACES   TO Gd-1-Record
                  MOVE CO1-MART TO Gd-1-Col-1
                  MOVE CO2-MART TO Gd-1-Col-2
                  MOVE DES-MART TO Gd-1-Col-3
                  MODIFY Screen1-Gd-1, RECORD-TO-ADD Gd-1-Record
                  ADD 1 TO Gd-1-Index
                END-IF
              END-IF
              READ MXART NEXT END MOVE 1 TO W-EOF
              END-READ
              PERFORM TRADUIRE-ART
           END-PERFORM
           INQUIRE Screen1-Gd-1, LAST-ROW Gd-1-Max
           .
      * GESTION DE LA GRILLE 1 =========================================
       Screen1-Gd-1-Ev-Msg-Begin-Entry.
           MOVE Event-Action-Fail TO Event-Action
      *    JMD 6/1/2004
      *    Copie l'article
           PERFORM Screen1-Pb-2-Link
           .
       Screen1-Gd-1-Ev-Msg-Goto-Cell.
           IF Event-Data-2 < 2
              MOVE 2 TO Event-Data-2
           END-IF
           IF Event-Data-2 = Gd-1-Old-WCursor-Y
              MOVE Event-Data-1 TO Gd-1-Old-WCursor-X
           ELSE
              MODIFY Screen1-Gd-1, Y = Gd-1-Old-WCursor-Y, ROW-COLOR = 0
              MODIFY Screen1-Gd-1, Y = Event-Data-2,
                     ROW-COLOR = W-Row-High-Color
              MOVE Event-Data-1 TO Gd-1-WCursor-X Gd-1-Old-WCursor-X
              MOVE Event-Data-2 TO Gd-1-WCursor-Y Gd-1-Old-WCursor-Y
           END-IF
           .
      * INITIALISATION DE LA GRILLE 2 =======================================
       AFF-GD-2.
           PERFORM VARYING Gd-2-Index FROM 1 BY 1
           UNTIL Gd-2-Index > LK-MART-M-NBSEL
           OR LK-MART-M-COD(Gd-2-Index) = 0
              MOVE LK-MART-M-COD(Gd-2-Index) TO COD-MART
              READ MXART 
              END-READ
              PERFORM STAT
              PERFORM TRADUIRE-ART
              MOVE CO1-MART TO Gd-2-Col-1
              MOVE CO2-MART TO Gd-2-Col-2
              MOVE DES-MART TO Gd-2-Col-3
              MODIFY Screen1-Gd-2, RECORD-TO-ADD Gd-2-Record
           END-PERFORM
           .
      * GESTION DE LA GRILLE 2 =========================================
       Screen1-Gd-2-Ev-Msg-Begin-Entry.
           MOVE Event-Action-Fail TO Event-Action
      *    JMD 6/1/2004
      *    Enlève l'article
           PERFORM Screen1-Pb-3-Link           
           .
       Screen1-Gd-2-Ev-Msg-Goto-Cell.
           IF Event-Data-2 < 2
              MOVE 2 TO Event-Data-2
           END-IF
           IF Event-Data-2 = Gd-2-Old-WCursor-Y
              MOVE Event-Data-1 TO Gd-2-Old-WCursor-X
           ELSE
              MODIFY Screen1-Gd-2, Y = Gd-2-Old-WCursor-Y, ROW-COLOR = 0
              MODIFY Screen1-Gd-2, Y = Event-Data-2,
                     ROW-COLOR = W-Row-High-Color
              MOVE Event-Data-1 TO Gd-2-WCursor-X Gd-2-Old-WCursor-X
              MOVE Event-Data-2 TO Gd-2-WCursor-Y Gd-2-Old-WCursor-Y
           END-IF
           .
      * AFFICHAGE DE LA GRILLE =========================================
       Screen1-Pb-Afficher-Link.
           IF SCA-MPAR = 2
              INQUIRE Screen1-Ef-COD-DEB, VALUE W-COD-DEB
              INQUIRE Screen1-Ef-COD-FIN, VALUE W-COD-FIN
           ELSE
              INQUIRE Screen1-Ef-CO1-DEB, VALUE W-CO1-DEB
              INQUIRE Screen1-Ef-CO2-DEB, VALUE W-CO2-DEB
              INQUIRE Screen1-Ef-CO1-FIN, VALUE W-CO1-FIN
              INQUIRE Screen1-Ef-CO2-FIN, VALUE W-CO2-FIN
           END-IF

      * Initialisation du code article début.   
           IF W-COD-DEB = SPACE MOVE LOW-VALUE  TO W-COD-DEB.
      * Affichage de la grille 1.
           IF W-COD-DEB(1:1) = "/" THEN 
              PERFORM Recherche-CODART
              PERFORM AFFICHE-RECH
           ELSE 
              IF LK-MART-M-NAT = 2
                PERFORM Recherche-NAT2
                PERFORM AFFICHE-RECH
              ELSE
                 PERFORM AFF-GD-1
              END-IF
           END-IF

      * Test si grille 1 vide .
           IF Gd-1-Max = 1
              MOVE "Aucun enregistrement." TO Acu-Msg-1
              PERFORM MSG-INFO
              EXIT PARAGRAPH.
           .
      * CHARGEMENT DE LA GRILLE ========================================     
       Screen1-Pb-Chargement-Link.
           PERFORM CHGT-Gd-1
           .
      * AJOUT DE TOUS LES ARTICLES ===================================== 
       Screen1-Pb-1-Link.
      * Test si extraction > LK-MART-M-MAXSEL articles.
           IF Gd-1-Max > LK-MART-M-MAXSEL
              MOVE "Limite de sélection atteinte !" TO Acu-Msg-1
              PERFORM MSG-ERREUR
              EXIT PARAGRAPH.
      * Initialisation de la grille 2.    
           MODIFY Screen1-Gd-2, RESET-GRID = 1
           PERFORM Acu-Screen1-Gd-2-Content
      * Chargement de la grille 2.
           PERFORM VARYING Gd-1-Index FROM 2 BY 1
           UNTIL Gd-1-Index > Gd-1-Max
              INQUIRE Screen1-Gd-1(Gd-1-Index), RECORD-DATA Gd-1-Record
              MOVE Gd-1-Record TO Gd-2-Record
              MODIFY Screen1-Gd-2, RECORD-TO-ADD Gd-2-Record
              ADD 1 TO LK-MART-M-NBSEL
           END-PERFORM
      * Affichage entête grille 2.
           PERFORM AFF-NBART-LIB
           .
      * AJOUT D'UN ARTICLE =============================================
       Screen1-Pb-2-Link.
      * Test si extraction > LK-MART-M-MAXSEL articles.
           IF LK-MART-M-NBSEL = LK-MART-M-MAXSEL
              MOVE "Limite de sélection atteinte !" TO Acu-Msg-1
              PERFORM MSG-ERREUR
              EXIT PARAGRAPH.
      * Recherche si article déjà sélectionné dans la grille 2.
           INQUIRE Screen1-Gd-1(Gd-1-WCursor-Y, 1), CELL-DATA Gd-1-COD1
           INQUIRE Screen1-Gd-1(Gd-1-WCursor-Y, 2), CELL-DATA Gd-1-COD2
           IF Gd-1-COD = SPACE
              EXIT PARAGRAPH.
           MOVE 0 TO Gd-2-Erreur
           INQUIRE Screen1-Gd-2, LAST-ROW Gd-2-Max
           PERFORM VARYING Gd-2-Index FROM 2 BY 1
           UNTIL Gd-2-Index > Gd-2-Max
           OR Gd-2-Erreur = 1
              INQUIRE Screen1-Gd-2(Gd-2-Index, 1), CELL-DATA Gd-2-COD1
              INQUIRE Screen1-Gd-2(Gd-2-Index, 2), CELL-DATA Gd-2-COD2
              IF Gd-1-COD = Gd-2-COD
                 MOVE 1 TO Gd-2-Erreur
              END-IF
           END-PERFORM
      * Test si erreur.
           IF Gd-2-Erreur = 1
              MOVE "Article déjà sélectionné !" TO Acu-Msg-1
              PERFORM MSG-ERREUR
              EXIT PARAGRAPH
           END-IF
      * Chargement de la grille 2.
      *    JMD 6/1/2004 : bug : nom tronqué
      *     INQUIRE Screen1-Gd-1(Gd-1-WCursor-Y), RECORD-DATA Gd-1-Data
      *     MOVE Gd-1-Data TO Gd-2-Data
      *     MODIFY Screen1-Gd-2, RECORD-TO-ADD Gd-2-Data
           INQUIRE Screen1-Gd-1(Gd-1-WCursor-Y), RECORD-DATA Gd-1-Record
           MOVE Gd-1-Record TO Gd-2-Record
           MODIFY Screen1-Gd-2, RECORD-TO-ADD Gd-2-Record
           ADD 1 TO LK-MART-M-NBSEL
      * Affichage entête grille 2.
           PERFORM AFF-NBART-LIB
           .
      * SUPPRESSION D'UN ARTICLE =======================================
       Screen1-Pb-3-Link.
           MODIFY Screen1-Gd-2(Gd-2-WCursor-Y),
                  RECORD-TO-DELETE Gd-2-WCursor-Y
           IF LK-MART-M-NBSEL NOT = 0 SUBTRACT 1 FROM LK-MART-M-NBSEL.
           PERFORM AFF-NBART-LIB
           .
      * SUPPRESSION DES ARTICLES =======================================
       Screen1-Pb-4-Link.
      * Initialisation de la grille 2.
           MODIFY Screen1-Gd-2, RESET-GRID = 1
           PERFORM Acu-Screen1-Gd-2-Content
           MOVE 0 TO LK-MART-M-NBSEL
      * Affichage entête grille 2.
           PERFORM AFF-NBART-LIB
           .
      * ANNULATION DE LA SELECTION =====================================
       Screen1-Pb-Annuler-Link.
           PERFORM Screen1-Pb-4-Link
           .
      * SORTIE DE L'APPLICATION ========================================
       Screen1-Pb-Quitter-Link.
           PERFORM Acu-Screen1-Exit
           .
      * VALIDATION DE LA SELECTION =====================================
       Screen1-Pb-Valider-Link.
           INITIALIZE LK-MART-M
           INQUIRE Screen1-Gd-2, LAST-ROW Gd-2-Max
           PERFORM VARYING Gd-2-Index FROM 2 BY 1
           UNTIL Gd-2-Index > Gd-2-Max
              INQUIRE Screen1-Gd-2(Gd-2-Index, 1), CELL-DATA Gd-2-COD1
              INQUIRE Screen1-Gd-2(Gd-2-Index, 2), CELL-DATA Gd-2-COD2
              MOVE Gd-2-COD TO LK-MART-M-COD(Gd-2-Index - 1)
              ADD 1 TO LK-MART-M-NBSEL
           END-PERFORM
           PERFORM Acu-Screen1-Exit
           .
      * AFFICHAGE DU NOMBRE D'ARTICLES =================================
       AFF-NBART-LIB.
           MOVE SPACES TO W-NBART-LIB
           MOVE LK-MART-M-NBSEL TO W-NBART
           IF LK-MART-M-NBSEL = 0
              MOVE "AUCUN ARTICLE SELECTIONNE" TO W-NBART-LIB.
           IF LK-MART-M-NBSEL = 1
              STRING W-NBART DELIMITED BY SIZE
                     "  ARTICLE SELECTIONNE" DELIMITED BY SIZE
                     INTO W-NBART-LIB.
           IF LK-MART-M-NBSEL > 1
              STRING W-NBART DELIMITED BY SIZE
                     "  ARTICLES SELECTIONNES" DELIMITED BY SIZE
                     INTO W-NBART-LIB.
           MODIFY Screen1-La-NBART-LIB, TITLE W-NBART-LIB
           .
      * GUIDE GRILLE 1 =================================================
       Screen1-Gd-1-Bef-Procedure.
           MODIFY Screen1-Pb-1, ENABLED 1
           MODIFY Screen1-Pb-2, ENABLED 1
           MODIFY Screen1-Pb-3, ENABLED 0
           MODIFY Screen1-Pb-4, ENABLED 0
           MODIFY Screen1-St-1-Handle,
                  TITLE "AJOUT DE TOUS LES ARTICLES :   >>
      -                 "AJOUT D'UN ARTICLE :   >" 
           .
      * GUIDE GRILLE 2 =================================================
       Screen1-Gd-2-Bef-Procedure.
           MODIFY Screen1-Pb-1, ENABLED 0
           MODIFY Screen1-Pb-2, ENABLED 0
           MODIFY Screen1-Pb-3, ENABLED 1
           MODIFY Screen1-Pb-4, ENABLED 1
           MODIFY Screen1-St-1-Handle,
                  TITLE "SUPPRESSION DE TOUS LES ARTICLES :   <<
      -                 "SUPPRESSION D'UN ARTICLE :   <"
           .
      *
       Screen1-Ev-Cmd-Close.
           PERFORM Mistral-WindowClosing
           .

       Recherche-CODART.
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
      
           MOVE RECORD-POSITION OF COD-MART TO CMD-RECH-POSR(1)
           MOVE LENGTH OF COD-MART TO CMD-RECH-LONR(1)
           MOVE W-COD-DEB(2:19) TO CMD-RECH-VAL(1)
           MOVE "s2" TO CMD-RECH-OPE(1)
      
           MOVE "T" TO CMD-RECH-T(1)
           MOVE 21 TO CMD-RECH-POSDT(1)
           MOVE 61 TO CMD-RECH-POSFT(1)     

           COPY "../../mistral/copy/rech.cbl".

       Recherche-NAT2.
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
      
           MOVE RECORD-POSITION OF NAT-MART TO CMD-RECH-POSR(1)
           MOVE LENGTH OF NAT-MART TO CMD-RECH-LONR(1)
           MOVE LK-MART-M-NAT TO CMD-RECH-VAL(1)
           MOVE "==" TO CMD-RECH-OPE(1)
      
           MOVE "T" TO CMD-RECH-T(1)
           MOVE 21 TO CMD-RECH-POSDT(1)
           MOVE 61 TO CMD-RECH-POSFT(1)     

           COPY "../../mistral/copy/rech.cbl".

       AFFICHE-RECH.
      * Remise à zéro de la grille...
           MODIFY Screen1-Gd-1, RESET-GRID = 1
           PERFORM Acu-Screen1-Gd-1-Content

      * Remplissage de la grille...
           OPEN INPUT RECH
           PERFORM STAT
           INITIALIZE ENR-MART

           MOVE 0 TO W-EOF           
           PERFORM UNTIL W-EOF = 1
              MOVE SPACE TO ENR-RECH 
              READ RECH NEXT END MOVE 1 TO W-EOF
              END-READ
              PERFORM STAT
              IF W-EOF NOT = 1 THEN
                 MOVE ENR-RECH(1:20) TO COD-MART
                 READ MXART NOT INVALID
                            PERFORM AFFRECH-GD-1
                 END-READ
                 PERFORM STAT
                 PERFORM TRADUIRE-ART
              END-IF
           END-PERFORM

           CLOSE RECH
           DELETE FILE RECH
                  
           MOVE 1 TO Event-Data-1 Gd-1-WCursor-X Gd-1-Old-WCursor-X
           MOVE 2 TO Event-Data-2 Gd-1-WCursor-Y Gd-1-Old-WCursor-Y
           MODIFY Screen1-Gd-1, Y = Event-Data-2,
                  ROW-COLOR = W-Row-High-Color

           INQUIRE Screen1-Gd-1, LAST-ROW Gd-1-Max
           .

       AFFRECH-GD-1.
           IF CANN-MART NOT = 1 
              IF (LK-MART-M-ACT = "L" AND ILV-MART = 0)
              OR (LK-MART-M-NAT = 2 AND NAT-MART <> 2)
                  CONTINUE 
              ELSE
                  MOVE SPACES   TO Gd-1-Record
                  MOVE CO1-MART TO Gd-1-Col-1
                  MOVE CO2-MART TO Gd-1-Col-2
                  MOVE DES-MART TO Gd-1-Col-3
                  MODIFY Screen1-Gd-1, RECORD-TO-ADD Gd-1-Record
              END-IF
           END-IF
           .

       TRADUIRE-ART.
      *

       

      *{Bench}end
       REPORT-COMPOSER SECTION.
