      *{Bench}prg-comment
      * mcli-m.cbl
      * mcli-m.cbl is generated from W:\mx\spro\mcli-m.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. mcli-m.
       AUTHOR. fatima-zahra.selouan.
       DATE-WRITTEN. vendredi 26 juin 2020 10:01:28.
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
       COPY "MXCLI.sl".
       COPY "MXCLI2.sl".
       COPY "RECH.sl".
       COPY "RECHCMD.sl".
      *{Bench}end
       DATA                        DIVISION.
       FILE                        SECTION.
      *{Bench}file
       COPY "COBCAP.fd".
       COPY "MXCLI.fd".
       COPY "MXCLI2.fd".
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
           COPY  "cobcap.wrk".
           COPY  "Ef-Pos.wrk".
           COPY  "rech.wrk".
       01 TAB-MITC.
           02 TCLI-MITC        PIC  9(9)
                      OCCURS 80 TIMES.
           02 TITC-MITC        PIC  9(9)
                      OCCURS 80 TIMES.
           02 TCOD-MITC        PIC  9(8)
                      OCCURS 80 TIMES.
       77 W-Selection      PIC  9.
       77 W-ORD-MCLI       PIC  9(9).
       77 W-Count-Int      PIC  9(2).
       77 Screen1-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 W-LOG-PALM       PIC  9(3).
       77 W-NPR-PALM       PIC  9(3).
       77 s    PIC  X(20).
       77 I    PIC  9(3).
       77 I2   PIC  9(3).
       77 W-SEL            PIC  9(3).
       77 W-COD-DEB        PIC  X(25).
       77 SV-COD-DEB       PIC  X(25).
       77 W-COD-FIN        PIC  X(25).
       77 SV-COD-FIN       PIC  X(25).
       77 W-NBART          PIC  Z(5)9.
       77 W-NBART-LIB      PIC  X(40).
       77 W-TMP-COD-MCLI   PIC  9(8).
       77 W-TMP-RAI-MCLI   PIC  X(50).
       01 Gd-1-Record.
           05 Gd-1-Col-1       PIC  Z(8).
           05 Gd-1-Col-2       PIC  X(30).
           05 Gd-1-Col-3       PIC  X(30).
       01 Gd-1-Data.
           05 Gd-1-COD         PIC  9(8).
           05 Gd-1-DES         PIC  X(30).
       77 Gd-1-Index       PIC  9(6).
       77 Gd-1-Max         PIC  9(6).
       77 Gd-1-WCursor-X   PIC  S9(5).
       77 Gd-1-WCursor-Y   PIC  S9(5).
       77 Gd-1-Old-WCursor-X           PIC  S9(5).
       77 Gd-1-Old-WCursor-Y           PIC  S9(5).
       01 Gd-2-Record.
           05 Gd-2-Col-1       PIC  Z(8).
           05 Gd-2-Col-2       PIC  X(30).
       01 Gd-2-Data.
           05 Gd-2-COD         PIC  9(8).
           05 Gd-2-Fco         PIC  9(8).
       77 Gd-2-Erreur      PIC  9.
       77 Gd-2-Index       PIC  9(6).
       77 Gd-2-Max         PIC  9(6).
       77 Gd-2-NbSel       PIC  9(6).
       77 Gd-2-WCursor-X   PIC  S9(5).
       77 Gd-2-WCursor-Y   PIC  S9(5).
       77 Gd-2-Old-WCursor-X           PIC  S9(5).
       77 Gd-2-Old-WCursor-Y           PIC  S9(5).
       77 Af-Pos           PIC  X(8).
       77 Small-Font
                  USAGE IS HANDLE OF FONT SMALL-FONT.
       77 QUITTER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FLECHBB12-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ENGRDOU24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 VALIDER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Screen1-St-1-Handle
                  USAGE IS HANDLE OF STATUS-BAR VALUE NULL.
       77 Default-Font
                  USAGE IS HANDLE OF FONT DEFAULT-FONT.
       77 SUPPRIM24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 PLUSxxx16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FILE-STATUS      PIC  X(2).
       77 INTERLO16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 INTERLB24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 INTERLB16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ASSIGN-RECH      PIC  X(32).
       77 ASSIGN-RECHCMD   PIC  X(32).
       77 WASS-RECH        PIC  X(20)
                  VALUE IS "MCLI-M-RECH".
       77 Screen1-Ef-1-Valuea          PIC  X(30).
       77 SAUVEGA16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ENGRDOU16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 VALIDER16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 AJOUTLG16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-Screen1-Gd-1-Lines         PIC  S9(4)V9(2)
                  VALUE IS 35,46.
       77 W-Screen1-Gd-2-Lines         PIC  S9(4)V9(2)
                  VALUE IS 35,46.
       77 W-RGPD           PIC  9
                  VALUE IS 0.
       77 SV-RGPD          PIC  9.
       77 Screen1-Visible  PIC  9
                  VALUE IS 0.
       77 VALIDER32-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 SUPPRIMER32-BMP  PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ENGRENAGE32-BMP  PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 AJOUTLG16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 PLUSxxx16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Large-Font
                  USAGE IS HANDLE OF FONT LARGE-FONT.
       77 Fixed-Font
                  USAGE IS HANDLE OF FONT FIXED-FONT.
       77 Traditional-Font
                  USAGE IS HANDLE OF FONT TRADITIONAL-FONT.
       77 Terminal5-OEM
                  USAGE IS HANDLE OF FONT VALUE NULL.
       77 Fixedsys3
                  USAGE IS HANDLE OF FONT VALUE NULL.

      *{Bench}end
       LINKAGE                     SECTION.
      *{Bench}linkage
       77 LK-ZONE-PALM     PIC  X(500).
           COPY  "LK-MCLI-M.wrk".
      *{Bench}end
       SCREEN                      SECTION.
      *{Bench}copy-screen
       01 Screen1.
           03 Screen1-Fr-2, Frame, 
              COL 85,29, LINE 2,31, LINES 7,62 CELLS, SIZE 58,86 CELLS, 
              ENGRAVED, COLOR IS 2, FONT IS Small-Font, ID IS 21, 
              TITLE "Sélection par le code client", BACKGROUND-LOW, 
              ATW-CSS-CLASS "card".
           03 Screen1-Fr-1, Frame, 
              COL 6,29, LINE 2,31, LINES 7,62 CELLS, SIZE 58,86 CELLS, 
              ENGRAVED, COLOR IS 2, FONT IS Small-Font, ID IS 15, 
              TITLE "Extraction des clients", BACKGROUND-LOW, 
              ATW-CSS-CLASS "card".
           03 Screen1-Ef-COD-DEB, Entry-Field, 
              COL 19,29, LINE 4,15, LINES 1,69 CELLS, SIZE 39,00 CELLS, 
              3-D, COLOR IS 2, ID IS 10, MAX-TEXT 20, VALUE W-COD-DEB, 
              AFTER PROCEDURE Screen1-Ef-COD-DEB-Aft-Procedure.
           03 Screen1-Ef-Cli, Entry-Field, 
              COL 86,57, LINE 4,15, LINES 1,62 CELLS, SIZE 9,86 CELLS, 
              3-D, COLOR IS 2, ID IS 22, 
              AFTER PROCEDURE Screen1-Ef-Cli-Ev-Msg-Validate.
           03 Screen1-Ef-COD-FIN, Entry-Field, 
              COL 19,29, LINE 7,15, LINES 1,69 CELLS, SIZE 39,00 CELLS, 
              3-D, COLOR IS 2, ID IS 11, MAX-TEXT 20, VALUE W-COD-FIN, 
              AFTER PROCEDURE Screen1-Ef-COD-FIN-Aft-Procedure.
           03 Screen1-La-4, Label, 
              COL 5,71, LINE 13,23, LINES 1,85 CELLS, SIZE 76,14 CELLS, 
              COLOR IS W-Heading-Color, FONT IS Default-Font, ID IS 17, 
              CENTER, LABEL-OFFSET 0, 
              TITLE "LISTE DES CLIENTS", ATW-CSS-CLASS "h5".
           03 Screen1-Gd-1, Grid, 
              COL 4,57, LINE 15,38, LINES W-Screen1-Gd-1-Lines CELLS, 
              SIZE 77,71 CELLS, 
              3-D, CENTERED-HEADINGS, COLOR IS 2, COLUMN-HEADINGS, 
              DATA-COLUMNS (1, 9, 39), 
              DISPLAY-COLUMNS (1, 11, 41), 
              ALIGNMENT ("C", "L", "L"), 
              SEPARATION (5, 5, 5), 
              CURSOR-FRAME-WIDTH 0, DIVIDER-COLOR W-Divider-Color, 
              DRAG-COLOR 1, END-COLOR W-End-Color, FONT IS Small-Font, 
              HEADING-COLOR 257, 
              HEADING-DIVIDER-COLOR W-Heading-Divider-Color, ID IS 1, 
              NUM-COL-HEADINGS 1, NUM-ROWS W-Num-Rows, 
              RECORD-DATA Gd-1-Record, TILED-HEADINGS, VPADDING 50, 
              VSCROLL, ATW-CSS-CLASS "table", 
              BEFORE PROCEDURE Screen1-Gd-1-Bef-Procedure, 
              EVENT PROCEDURE Screen1-Gd-1-Event-Proc.
           03 Screen1-Gd-2, Grid, 
              COL 100,57, LINE 15,38, LINES W-Screen1-Gd-2-Lines CELLS, 
              SIZE 52,43 CELLS, 
              3-D, CENTERED-HEADINGS, COLOR IS 2, COLUMN-HEADINGS, 
              DATA-COLUMNS (1, 9), 
              DISPLAY-COLUMNS (1, 11), 
              ALIGNMENT ("C", "L"), 
              SEPARATION (5, 0), 
              COLUMN-DIVIDERS (1, 0), 
              CURSOR-FRAME-WIDTH 0, DIVIDER-COLOR W-Divider-Color, 
              DRAG-COLOR 1, END-COLOR W-End-Color, FONT IS Small-Font, 
              HEADING-COLOR 257, 
              HEADING-DIVIDER-COLOR W-Heading-Divider-Color, ID IS 2, 
              NUM-COL-HEADINGS 1, NUM-ROWS W-Num-Rows, 
              RECORD-DATA Gd-2-Record, TILED-HEADINGS, VPADDING 50, 
              VSCROLL, ATW-CSS-CLASS "table", 
              BEFORE PROCEDURE Screen1-Gd-2-Bef-Procedure, 
              EVENT PROCEDURE Screen1-Gd-2-Event-Proc.
           03 Screen1-Pb-1, Push-Button, 
              COL 88,29, LINE 24,15, LINES 32, SIZE 41, 
              BITMAP-HANDLE ENGRENAGE32-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              ENABLED 0, EXCEPTION-VALUE 1004, ID IS 3, NO-TAB, 
              TITLE ">>", 
              ATW-CSS-CLASS "button-icon fas fa-angle-double-right".
           03 Screen1-Pb-2, Push-Button, 
              COL 88,29, LINE 27,85, LINES 32, SIZE 41, 
              BITMAP-HANDLE AJOUTLG16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              ENABLED 0, EXCEPTION-VALUE 1005, ID IS 4, NO-TAB, 
              TITLE ">", 
              ATW-CSS-CLASS "button-icon fas fa-angle-right".
           03 Screen1-Pb-3, Push-Button, 
              COL 88,29, LINE 33,38, LINES 32, SIZE 41, 
              BITMAP-HANDLE AJOUTLG16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              ENABLED 0, EXCEPTION-VALUE 1006, ID IS 5, NO-TAB, 
              TITLE "<", ATW-CSS-CLASS "button-icon fas fa-angle-left".
           03 Screen1-Pb-4, Push-Button, 
              COL 88,29, LINE 37,08, LINES 32, SIZE 41, 
              BITMAP-HANDLE AJOUTLG16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              ENABLED 0, EXCEPTION-VALUE 1007, ID IS 6, NO-TAB, 
              TITLE "<<", 
              ATW-CSS-CLASS "button-icon fas fa-angle-double-left".
           03 Screen1-Pb-Valider, Push-Button, 
              COL 147,57, LINE 3,92, LINES 35, SIZE 29, 
              BITMAP-HANDLE VALIDER32-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 9858, FLAT, ID IS 8, NO-TAB, 
              TITLE "Valider la sélection", 
              ATW-CSS-CLASS "button-icon fas fa-check".
           03 Screen1-Pb-Annuler, Push-Button, 
              COL 147,57, LINE 6,46, LINES 35, SIZE 29, 
              BITMAP-HANDLE SUPPRIMER32-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 9860, FLAT, ID IS 9, NO-TAB, 
              TITLE "Annuler la sélection", 
              ATW-CSS-CLASS "button-icon fas fa-trash-alt".
           03 Screen1-Pb-Afficher, Push-Button, 
              COL 59,71, LINE 5,15, LINES 31, SIZE 20, 
              BITMAP-HANDLE ENGRENAGE32-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              FLAT, ID IS 12, NO-TAB, TERMINATION-VALUE 9859, 
              TITLE "Afficher la liste des clients", 
              ATW-CSS-CLASS "button-icon fas fa-cog".
           03 Screen1-La-1, Label, 
              COL 6,86, LINE 4,46, LINES 1,15 CELLS, SIZE 9,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 13, RIGHT, 
              LABEL-OFFSET 0, 
              TITLE "à partir de", TRANSPARENT.
           03 Screen1-La-2, Label, 
              COL 6,71, LINE 7,31, LINES 1,15 CELLS, SIZE 9,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 14, RIGHT, 
              LABEL-OFFSET 0, 
              TITLE "jusqu'à", TRANSPARENT.
           03 Screen1-Pb-Chargement, Push-Button, 
              COL 88,29, LINE 19,54, LINES 32, SIZE 41, 
              BITMAP-HANDLE PLUSxxx16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1009, ID IS 16, NO-TAB, 
              TITLE "Chargement des enregistrements suivants", 
              ATW-CSS-CLASS "button-icon fas fa-plus".
           03 Screen1-La-NBART-LIB, Label, 
              COL 101,14, LINE 13,15, LINES 1,85 CELLS, 
              SIZE 51,14 CELLS, 
              COLOR IS W-Heading-Color, FONT IS Default-Font, ID IS 18, 
              CENTER, LABEL-OFFSET 0, TITLE W-NBART-LIB, 
              ATW-CSS-CLASS "h5".
           03 Screen1-La-Rech, Label, 
              COL 6,14, LINE 10,85, LINES 1,54 CELLS, SIZE 71,57 CELLS, 
              COLOR IS 13, FONT IS Small-Font, ID IS 20, 
              LABEL-OFFSET 0, 
              TITLE 
              "Pour rechercher un mot (chaîne de caractères) , faire pré
      -       "céder par un /", TRANSPARENT, ATW-CSS-CLASS "Label".
           03 Screen1-Ef-Rai, Entry-Field, 
              COL 98,14, LINE 4,15, LINES 1,69 CELLS, SIZE 39,00 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 23, 
              VALUE Screen1-Ef-1-Valuea.
           03 Screen1-Ef-Vil, Entry-Field, 
              COL 98,14, LINE 7,08, LINES 1,69 CELLS, SIZE 39,00 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 24, 
              VALUE Screen1-Ef-1-Valuea.
           03 Screen1-Pb-ValidUnCli, Push-Button, 
              COL 139,00, LINE 5,15, LINES 31, SIZE 20, 
              BITMAP-HANDLE AJOUTLG16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              ID IS 25, NO-TAB, TERMINATION-VALUE 9857, 
              TITLE "Ajouter le client à la liste", 
              ATW-CSS-CLASS "button-icon fas fa-user-plus".
           03 Screen1-Cb-RGPD, Check-Box, 
              COL 100,14, LINE 11,38, LINES 1,15 CELLS, 
              SIZE 47,14 CELLS, 
              COLOR IS 2, FONT IS Default-Font, ID IS 26, 
              TITLE 
              'Sans les clients de statut RGPD "Droit à la portabilité"'
              , VALUE W-RGPD, VISIBLE LK-MCLI-M-RGPD, 
              ATW-CSS-CLASS "Label".

      *{Bench}end

      *{Bench}linkpara
       PROCEDURE DIVISION USING LK-ZONE-PALM, LK-MCLI-M.
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
           COPY RESOURCE "ENGRENAGE32.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ENGRENAGE32.BMP", GIVING 
              ENGRENAGE32-BMP
           COPY RESOURCE "AJOUTLG16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "AJOUTLG16.BMP", GIVING 
              AJOUTLG16-BMP
           COPY RESOURCE "VALIDER32.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "VALIDER32.BMP", GIVING 
              VALIDER32-BMP
           COPY RESOURCE "SUPPRIMER32.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "SUPPRIMER32.BMP", GIVING 
              SUPPRIMER32-BMP
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
           IF ENGRENAGE32-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ENGRENAGE32-BMP
              MOVE 0 TO ENGRENAGE32-BMP
           END-IF
           IF AJOUTLG16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY AJOUTLG16-BMP
              MOVE 0 TO AJOUTLG16-BMP
           END-IF
           IF VALIDER32-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY VALIDER32-BMP
              MOVE 0 TO VALIDER32-BMP
           END-IF
           IF SUPPRIMER32-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY SUPPRIMER32-BMP
              MOVE 0 TO SUPPRIMER32-BMP
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
                 LINES 54,23, SIZE 155,86, CELL HEIGHT 13, 
                 CELL WIDTH 7, COLOR IS 65793, LABEL-OFFSET 0, 
                 LINK TO THREAD, NO SCROLL, WITH SYSTEM MENU, 
                 TITLE "SELECTION DES CLIENTS", TITLE-BAR, USER-GRAY, 
                 USER-WHITE, VISIBLE Screen1-Visible, NO WRAP, 
                 ATW-CSS-ID "modal_screen_mcli_m", 
                 EVENT PROCEDURE Screen1-Event-Proc, 
                 HANDLE IS Screen1-Handle
      * toolbar
      * status-bar
           DISPLAY STATUS-BAR
              PANEL-WIDTHS 700, 
              PANEL-STYLE 1, 
              PANEL-TEXT SPACE, 
              FONT IS Small-Font, ATW-CSS-ID "status_bar_mcli", 
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
              EVALUATE TRUE
      * Screen1-Pb-Afficher Link To
              WHEN Key-Status = 9859
                 PERFORM Screen1-Pb-Afficher-Link
      * Screen1-Pb-ValidUnCli Link To
              WHEN Key-Status = 9857
                 PERFORM Screen1-Pb-ValidUnCli-Link
              END-EVALUATE
           END-PERFORM
           DESTROY Screen1-Handle
           INITIALIZE Key-Status
           .

      * Screen1-Gd-1
       Acu-Screen1-Gd-1-Content.
      * Cells Settings
           MODIFY Screen1-Gd-1, X = 1, Y = 1, 
              CELL-COLOR = W-Heading-Color, CELL-DATA = "Code", 
           MODIFY Screen1-Gd-1, X = 2, Y = 1, 
              CELL-COLOR = W-Heading-Color, CELL-DATA = 
              "Raison sociale", 
           MODIFY Screen1-Gd-1, X = 3, Y = 1, 
              CELL-COLOR = W-Heading-Color, CELL-DATA = "Adresse", 
           .

      * Screen1-Gd-2
       Acu-Screen1-Gd-2-Content.
      * Cells Settings
           MODIFY Screen1-Gd-2, X = 1, Y = 1, 
              CELL-COLOR = W-Heading-Color, CELL-FONT = Default-Font, 
              CELL-DATA = "Code", 
           MODIFY Screen1-Gd-2, X = 2, Y = 1, 
              CELL-COLOR = W-Heading-Color, CELL-DATA = 
              "Raison sociale", 
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
              WHEN Key-Status = 9858
                 PERFORM Screen1-Pb-Valider-Link
      * Screen1-Pb-Annuler Link To
              WHEN Key-Status = 9860
                 PERFORM Screen1-Pb-Annuler-Link
      * Screen1-Pb-Chargement Link To
              WHEN Key-Status = 1009
                 PERFORM Screen1-Pb-Chargement-Link
           END-EVALUATE
           MOVE 1 TO Accept-Control
           .

       Acu-Screen1-Display-Status-Msg.
           MODIFY Screen1-St-1-Handle
              PANEL-WIDTHS 700, 
              PANEL-STYLE 1, 
              PANEL-TEXT SPACE, 
              FONT IS Small-Font, ATW-CSS-ID "status_bar_mcli", 
           .

       Acu-Screen1-Clear-Status-Msg.
           PERFORM Acu-Screen1-Display-Status-Msg
           .

       Acu-Close-Files.
      *    Before-Close
      *    After-Close
           .

      * COBCAP

      * MXCLI

      * MXCLI2

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
           WHEN Msg-Bitmap-Clicked
              PERFORM Screen1-Gd-2-Ev-Msg-Bitmap-Clicked
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
           MOVE ALL "z" to SV-COD-DEB SV-COD-FIN

      *    RR 12/02/09 ajout variable LK-MCLI-M-MAXSEL
           IF LK-MCLI-M-MAXSEL = 0 MOVE 80 TO LK-MCLI-M-MAXSEL
           END-IF
051018
           IF LK-MCLI-M-RGPD = 1 THEN
              MOVE 30,7 TO W-Screen1-Gd-1-Lines
                           W-Screen1-Gd-2-Lines
           END-IF
051018
050819     
           IF HANDLE-PALM <> 0 THEN  
      ***       Pour éviter le clignotement de l'écran repositionné
      **        MOVE 0 TO Screen1-Visible
      **     ELSE
              MOVE 1 TO Screen1-Visible
      **     END-IF
050819
           .
       Screen1-Aft-Routine.
           PERFORM CLOSE-FILE-RTN
           .
      * OUVERTURE DES FICHIERS =========================================
       OPEN-FILE-RTN.
           OPEN INPUT MXCLI  PERFORM STAT
           .
      * FERMETURE DES FICHIERS =========================================
       CLOSE-FILE-RTN.
           CLOSE MXCLI
           .
      * INITIALISATION DES BITMAP ======================================
       INIT-BMP.
           .
      * DEBUT DU PROGRAMME =============================================
       Screen1-Aft-Initdata.
      * Modification du titre
           IF LK-MCLI-M-NumFiltre = 2 OR 3
             MODIFY Screen1-Handle, TITLE "SELECTION DES PROSPECTS"
             MODIFY Screen1-La-4, TITLE "LISTE DES PROSPECTS"
             MODIFY Screen1-Fr-2, TITLE "Sélection par le code prospect"
           END-IF
      * Initialisation du nombre de clients sélectionnés.
           PERFORM AFF-NBCLI-LIB
           Perform AFF-GD-2
           .
      * INITIALISATION DE LA GRILLE 1 =======================================
       AFF-GD-1.
           MODIFY Screen1-Gd-1, RESET-GRID = 1
           PERFORM Acu-Screen1-Gd-1-Content
           INITIALIZE ENR-MCLI
           MOVE 0 TO W-EOF
           MOVE W-COD-DEB TO RAI-MCLI
           START MXCLI KEY >= CLE2-MCLI INVALID MOVE 1 TO W-EOF
           END-START
           IF W-EOF = 0
              READ MXCLI NEXT END MOVE 1 TO W-EOF
              END-READ
              PERFORM STAT
           END-IF
           PERFORM CHGT-GD-1
           MODIFY Screen1-Gd-1, MASS-UPDATE 0
           MOVE 1 TO Event-Data-1 Gd-1-WCursor-X Gd-1-Old-WCursor-X
           MOVE 2 TO Event-Data-2 Gd-1-WCursor-Y Gd-1-Old-WCursor-Y
           MODIFY Screen1-Gd-1, Y = Event-Data-2,
                  ROW-COLOR = W-Row-Hight-Color
           .
      * CHARGEMENT DE LA GRILLE 1 ======================================
       CHGT-GD-1.
           MOVE 1 TO Gd-1-Index
           IF W-COD-FIN = SPACE MOVE HIGH-VALUE TO W-COD-FIN.
           PERFORM UNTIL W-EOF = 1 OR Gd-1-Index = 100
           OR RAI-MCLI > W-COD-FIN

           IF ((COD-MCLI NOT = 0 AND CANN-MCLI = 0 
               AND LK-MCLI-M-NumFiltre < 2)
           OR (FCO-MCLI NOT = 0 AND NOT = SPACE AND CANNP-MCLI = 0
               AND LK-MCLI-M-NumFiltre = 2)
           OR (FCO-MCLI NOT = 0 AND NOT = SPACE AND CANNP-MCLI = 0
               AND (COD-MCLI = 0 OR CANN-MCLI = 1)
               AND LK-MCLI-M-NumFiltre = 3)
           OR ((FCO-MCLI = 0 OR SPACE) AND COD-MCLI NOT = 0 
               AND CANN-MCLI = 0
               AND LK-MCLI-M-NumFiltre = 4))
051018     AND (    LK-MCLI-M-RGPD = 0
051018           OR (     LK-MCLI-M-RGPD = 1
051018                AND (    RGPD-MCLI = 0
051018                      OR (     W-RGPD = 0
051018                           AND RGPD-MCLI = 1 ))))
                   MOVE SPACES   TO Gd-1-Record
                   IF LK-MCLI-M-NumFiltre = 2 OR 3 
                        MOVE FCO-MCLI TO Gd-1-Col-1
                   ELSE MOVE COD-MCLI TO Gd-1-Col-1
                   END-IF
                   MOVE RAI-MCLI TO Gd-1-Col-2
                   PERFORM MEP-CP
                   STRING Af-POS " " VIL-MCLI
                            DELIMITED BY "  " INTO Gd-1-Col-3
                   MODIFY Screen1-Gd-1, RECORD-TO-ADD Gd-1-Record
                   ADD 1 TO Gd-1-Index

              END-IF
              READ MXCLI NEXT END MOVE 1 TO W-EOF
              END-READ

      *        ADD 1 TO Gd-1-Index
           END-PERFORM
           INQUIRE Screen1-Gd-1, LAST-ROW Gd-1-Max
           .

       Mep-CP.
           COPY "W:/mistral/copy/Ef-Pos-Fic2Ecr.cbl"
           REPLACING  ==CPYPOS-PAYS== BY ==PAY-MCLI==
                      ==CPYPOS-FIC==  BY ==POS-MCLI==
                      ==CPYPOS-ECR==  BY ==Af-POS==.
           .

      * GESTION DE LA GRILLE 1 =========================================
       Screen1-Gd-1-Ev-Msg-Begin-Entry.
           MOVE Event-Action-Fail TO Event-Action
      *    JMD 4/11/2003
      *    Copie le client
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
                     ROW-COLOR = W-Row-Hight-Color
              MOVE Event-Data-1 TO Gd-1-WCursor-X Gd-1-Old-WCursor-X
              MOVE Event-Data-2 TO Gd-1-WCursor-Y Gd-1-Old-WCursor-Y
           END-IF
           .
      * INITIALISATION DE LA GRILLE 2 ==================================
       AFF-GD-2.
           PERFORM VARYING Gd-2-Index FROM 1 BY 1
           UNTIL Gd-2-Index > LK-MCLI-M-NBSEL
      *     OR ((LK-MCLI-M-NumFiltre = 2 OR 3)
      *          AND LK-MCLI-M-FCO(Gd-2-Index) = SPACE OR ZERO)
      *     OR ((LK-MCLI-M-NumFiltre NOT = 2 AND NOT = 4)
      *          AND LK-MCLI-M-COD(Gd-2-Index) = ZERO)
              MOVE LK-MCLI-M-COD(Gd-2-Index) TO COD-MCLI
              MOVE LK-MCLI-M-FCO(Gd-2-Index) TO FCO-MCLI

              IF LK-MCLI-M-NumFiltre = 2 OR 3
                   READ MXCLI KEY CLE7-MCLI
                   END-READ
              ELSE READ MXCLI KEY CLE6-MCLI
                   END-READ
              END-IF
              PERFORM STAT
              INITIALIZE Gd-2-Record
              IF LK-MCLI-M-NumFiltre = 2 OR 3
                   MOVE FCO-MCLI TO Gd-2-Col-1
              ELSE MOVE COD-MCLI TO Gd-2-Col-1
              END-IF
              MOVE RAI-MCLI TO Gd-2-Col-2
              MODIFY Screen1-Gd-2, RECORD-TO-ADD Gd-2-Record
           END-PERFORM
           .
      * GESTION DE LA GRILLE 2 =========================================
       Screen1-Gd-2-Ev-Msg-Begin-Entry.
           MOVE Event-Action-Fail TO Event-Action
           If Event-Data-1 = 3 Exit Paragraph End-If
      *    JMD 4/11/2003
      *    Enlève le client
           PERFORM Screen1-Pb-3-Link           
           Move 0 To Gd-2-WCursor-X Gd-2-Old-WCursor-X
           Move 0 To Gd-2-WCursor-Y Gd-2-Old-WCursor-Y
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
                     ROW-COLOR = W-Row-Hight-Color
              MOVE Event-Data-1 TO Gd-2-WCursor-X Gd-2-Old-WCursor-X
              MOVE Event-Data-2 TO Gd-2-WCursor-Y Gd-2-Old-WCursor-Y
           END-IF
           .
      * AFFICHAGE DE LA GRILLE =========================================
       Screen1-Pb-Afficher-Link.
           IF W-COD-DEB = SV-COD-DEB
      *     AND W-COD-FIN = SV-COD-FIN
051018     AND W-RGPD = SV-RGPD
              EXIT PARAGRAPH
           END-IF
      * Initialisation du code client  début.   
           IF W-COD-DEB = SPACE MOVE LOW-VALUE  TO W-COD-DEB.
      * Affichage de la grille 1.
           IF W-COD-DEB(1:1) = "/" THEN 
              PERFORM Recherche-RAICLI
              PERFORM AFFICHE-RECH
           ELSE
              PERFORM AFF-GD-1
           END-IF

      * Test si grille 1 vide .
           IF Gd-1-Max = 1
              MOVE "Aucun enregistrement." TO Acu-Msg-1
              PERFORM MSG-INFO
              EXIT PARAGRAPH.
           MOVE W-COD-DEB TO SV-COD-DEB
           MOVE W-COD-FIN TO SV-COD-FIN
           IF SV-COD-FIN = SPACE MOVE HIGH-VALUE TO SV-COD-FIN.
051018     MOVE W-RGPD TO SV-RGPD
           .
      * CHARGEMENT DE LA GRILLE ========================================     
       Screen1-Pb-Chargement-Link.
           PERFORM CHGT-Gd-1
           .
      * AJOUT DE TOUS LES CLIENTS ====================================== 
       Screen1-Pb-1-Link.
      * Test si extraction > 80 clients .
           IF Gd-1-Max > LK-MCLI-M-MAXSEL
              MOVE "Limite de sélection atteinte !" TO Acu-Msg-1
              PERFORM MSG-ERREUR
              EXIT PARAGRAPH.

           Initialize LK-MCLI-M-NBSEL
      * Initialisation de la grille 2.    
           MODIFY Screen1-Gd-2, RESET-GRID = 1
           PERFORM Acu-Screen1-Gd-2-Content
      * Chargement de la grille 2.
           PERFORM VARYING Gd-1-Index FROM 2 BY 1
           UNTIL Gd-1-Index > Gd-1-Max
              INQUIRE Screen1-Gd-1(Gd-1-Index), RECORD-DATA Gd-1-Record
      *        MOVE Gd-1-Record TO Gd-2-Record
              MOVE Gd-1-Col-1 To Gd-2-Col-1
              MOVE Gd-1-Col-2 To Gd-2-Col-2

              MODIFY Screen1-Gd-2, RECORD-TO-ADD Gd-2-Record
              
              ADD 1 TO LK-MCLI-M-NBSEL

           END-PERFORM
      * Affichage entête grille 2.
           PERFORM AFF-NBCLI-LIB
           .
      * AJOUT D'UN CLIENT  =============================================
       Screen1-Pb-2-Link.
      * Test si extraction > 80 clients .
           IF LK-MCLI-M-NBSEL = LK-MCLI-M-MAXSEL
              MOVE "Limite de sélection atteinte !" TO Acu-Msg-1
              PERFORM MSG-ERREUR
              EXIT PARAGRAPH.
      * Recherche si client  déjà sélectionné dans la grille 2.
           INQUIRE Screen1-Gd-1(Gd-1-WCursor-Y, 1), CELL-DATA Gd-1-COD
           IF Gd-1-COD = SPACE
              EXIT PARAGRAPH.
           MOVE 0 TO Gd-2-Erreur
           INQUIRE Screen1-Gd-2, LAST-ROW Gd-2-Max
           PERFORM VARYING Gd-2-Index FROM 2 BY 1
           UNTIL Gd-2-Index > Gd-2-Max
           OR Gd-2-Erreur = 1
              INQUIRE Screen1-Gd-2(Gd-2-Index, 1), CELL-DATA Gd-2-COD
              IF Gd-1-COD = Gd-2-COD
                 MOVE 1 TO Gd-2-Erreur
              END-IF
           END-PERFORM
      * Test si erreur.
           IF Gd-2-Erreur = 1
              MOVE "Déjà sélectionné !" TO Acu-Msg-1
              PERFORM MSG-ERREUR
              EXIT PARAGRAPH
           END-IF
      * Chargement de la grille 2.
      *    JMD 4/11/2003 : bug : nom tronqué
      *     INQUIRE Screen1-Gd-1(Gd-1-WCursor-Y), RECORD-DATA Gd-1-Data
      *     MOVE Gd-1-Data TO Gd-2-Data
      *     MODIFY Screen1-Gd-2, RECORD-TO-ADD Gd-2-Data
           INQUIRE Screen1-Gd-1(Gd-1-WCursor-Y), RECORD-DATA Gd-1-Record
           Initialize Gd-2-Record
           MOVE Gd-1-Col-1 TO Gd-2-Col-1
           MOVE Gd-1-Col-2 TO Gd-2-Col-2
           MODIFY Screen1-Gd-2, RECORD-TO-ADD Gd-2-Record
           ADD 1 TO LK-MCLI-M-NBSEL


      * Affichage entête grille 2.
           PERFORM AFF-NBCLI-LIB
           .
      * SUPPRESSION D'UN CLIENT  =======================================
       Screen1-Pb-3-Link.
           MODIFY Screen1-Gd-2(Gd-2-WCursor-Y),
                  RECORD-TO-DELETE Gd-2-WCursor-Y
           IF LK-MCLI-M-NBSEL NOT = 0 SUBTRACT 1 FROM LK-MCLI-M-NBSEL.
           PERFORM AFF-NBCLI-LIB
           .
      * SUPPRESSION DES CLIENTS  =======================================
       Screen1-Pb-4-Link.
      * Initialisation de la grille 2.
           MODIFY Screen1-Gd-2, RESET-GRID = 1
           PERFORM Acu-Screen1-Gd-2-Content
           MOVE 0 TO LK-MCLI-M-NBSEL
      * Affichage entête grille 2.
           PERFORM AFF-NBCLI-LIB
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
           INITIALIZE LK-MCLI-M-TABLE
             MOVE ZERO TO LK-MCLI-M-NBSEL 
             INQUIRE Screen1-Gd-2, LAST-ROW Gd-2-Max
             PERFORM VARYING Gd-2-Index FROM 2 BY 1
              UNTIL Gd-2-Index > Gd-2-Max

              IF LK-MCLI-M-NumFiltre = 2 OR 3
                INQUIRE Screen1-Gd-2(Gd-2-Index, 1), CELL-DATA Gd-2-FCO
                MOVE Gd-2-FCO TO LK-MCLI-M-FCO(Gd-2-Index - 1)
              ELSE
                INQUIRE Screen1-Gd-2(Gd-2-Index, 1), CELL-DATA Gd-2-COD
                MOVE Gd-2-COD TO LK-MCLI-M-COD(Gd-2-Index - 1)
              END-IF
              ADD 1 TO LK-MCLI-M-NBSEL
             END-PERFORM
 
           PERFORM Acu-Screen1-Exit
           .
      * AFFICHAGE DU NOMBRE DE CLIENTS =================================
       AFF-NBCLI-LIB.
           MOVE SPACES TO W-NBART-LIB
           MOVE LK-MCLI-M-NBSEL TO W-NBART
           IF LK-MCLI-M-NBSEL = 0
              IF LK-MCLI-M-NumFiltre = 2 OR 3
              MOVE "AUCUN PROSPECT SELECTIONNE" TO W-NBART-LIB
              ELSE
              MOVE "AUCUN CLIENT SELECTIONNE" TO W-NBART-LIB.
           IF LK-MCLI-M-NBSEL = 1
              IF LK-MCLI-M-NumFiltre = 2 OR 3
              STRING W-NBART DELIMITED BY SIZE
                     "  PROSPECT SELECTIONNE" DELIMITED BY SIZE
                     INTO W-NBART-LIB
              ELSE
              STRING W-NBART DELIMITED BY SIZE
                     "  CLIENT SELECTIONNE" DELIMITED BY SIZE
                     INTO W-NBART-LIB.
           IF LK-MCLI-M-NBSEL > 1
              IF LK-MCLI-M-NumFiltre = 2 OR 3
              STRING W-NBART DELIMITED BY SIZE
                     "  PROSPECTS SELECTIONNES" DELIMITED BY SIZE
                     INTO W-NBART-LIB
              ELSE
              STRING W-NBART DELIMITED BY SIZE
                     "  CLIENTS SELECTIONNES" DELIMITED BY SIZE
                     INTO W-NBART-LIB.
           MODIFY Screen1-La-NBART-LIB, TITLE W-NBART-LIB
           .
      * GUIDE GRILLE 1 =================================================
       Screen1-Gd-1-Bef-Procedure.
           MODIFY Screen1-Pb-1, ENABLED 1
           MODIFY Screen1-Pb-2, ENABLED 1
           MODIFY Screen1-Pb-3, ENABLED 0
           MODIFY Screen1-Pb-4, ENABLED 0
           IF LK-MCLI-M-NumFiltre = 2 OR 3
           MODIFY Screen1-St-1-Handle,
                  TITLE "AJOUT DE TOUS LES PROSPECTS :   >>
      -                 "AJOUT D'UN PROSPECT :   >" 
           ELSE
           MODIFY Screen1-St-1-Handle,
                  TITLE "AJOUT DE TOUS LES CLIENTS :   >>
      -                 "AJOUT D'UN CLIENT :   >" 
           .
      * GUIDE GRILLE 2 =================================================
       Screen1-Gd-2-Bef-Procedure.
           MODIFY Screen1-Pb-1, ENABLED 0
           MODIFY Screen1-Pb-2, ENABLED 0
           MODIFY Screen1-Pb-3, ENABLED 1
           MODIFY Screen1-Pb-4, ENABLED 1
           IF LK-MCLI-M-NumFiltre = 2 OR 3
           MODIFY Screen1-St-1-Handle,
                  TITLE "SUPPRESSION DE TOUS LES PROSPECTS :   <<
      -                 "SUPPRESSION D'UN PROSPECT :   <"
           ELSE
            MODIFY Screen1-St-1-Handle,
                  TITLE "SUPPRESSION DE TOUS LES CLIENTS :   <<
      -                 "SUPPRESSION D'UN CLIENT :   <"
           .
      *
       Screen1-Ev-Cmd-Close.
           PERFORM Mistral-WindowClosing
           .

       Screen1-Gd-2-Ev-Msg-Bitmap-Clicked.
           .

       Recherche-RAICLI.
           COPY "../../mx/copy/Assign-FICTMP.cbl" REPLACING 
              ==FICTMP==   BY ==RECH==
              =='FICTMP'== BY ==RECH==.
           CLOSE RECH.
      
           MOVE "CLI" TO CMD-RECH-FIC
           MOVE MX-DIR TO CMD-RECH-DIR
           MOVE ASSIGN-RECH TO CMD-RECH-RESULT
           MOVE 1 TO CMD-RECH-DEBSOR
           MOVE 79 TO CMD-RECH-FINSOR
      
           MOVE RECORD-POSITION OF RAI-MCLI TO CMD-RECH-POSR(1)
           MOVE LENGTH OF RAI-MCLI TO CMD-RECH-LONR(1)
           MOVE W-COD-DEB(2:24) TO CMD-RECH-VAL(1)
           MOVE "s2" TO CMD-RECH-OPE(1)
      
           MOVE "T" TO CMD-RECH-T(1)
           MOVE 42 TO CMD-RECH-POSDT(1)
           MOVE 72 TO CMD-RECH-POSFT(1)
      
           COPY "W:/mistral/copy/rech.cbl".
           .

       AFFICHE-RECH.
      * Remise à zéro de la grille...
           MODIFY Screen1-Gd-1, RESET-GRID = 1
           PERFORM Acu-Screen1-Gd-1-Content

      * Remplissage de la grille...
           OPEN INPUT RECH
           PERFORM STAT
           INITIALIZE ENR-MCLI

           MOVE 0 TO W-EOF           
           PERFORM UNTIL W-EOF = 1
              MOVE SPACE TO ENR-RECH 
              READ RECH NEXT END MOVE 1 TO W-EOF
              END-READ
              PERFORM STAT
              IF W-EOF NOT = 1 THEN
                 MOVE ENR-RECH(1:9) TO ORD-MCLI
                 READ MXCLI NOT INVALID
                            PERFORM AFFRECH-GD-1
                 END-READ
                 PERFORM STAT
              END-IF
           END-PERFORM

           CLOSE RECH
           DELETE FILE RECH
                  
           MOVE 1 TO Event-Data-1 Gd-1-WCursor-X Gd-1-Old-WCursor-X
           MOVE 2 TO Event-Data-2 Gd-1-WCursor-Y Gd-1-Old-WCursor-Y
           MODIFY Screen1-Gd-1, Y = Event-Data-2,
                  ROW-COLOR = W-Row-Hight-Color

           INQUIRE Screen1-Gd-1, LAST-ROW Gd-1-Max
           .

      * CHARGEMENT DE LA GRILLE 1 ======================================
       AFFRECH-GD-1.
           IF (COD-MCLI NOT = 0 AND CANN-MCLI = 0 
               AND LK-MCLI-M-NumFiltre < 2)
           OR (FCO-MCLI NOT = 0 AND NOT = SPACE AND CANNP-MCLI = 0
               AND LK-MCLI-M-NumFiltre = 2)
           OR (FCO-MCLI NOT = 0 AND NOT = SPACE AND CANNP-MCLI = 0
               AND (COD-MCLI = 0 OR CANN-MCLI = 1)
               AND LK-MCLI-M-NumFiltre = 3)
           OR ((FCO-MCLI = 0 OR SPACE) AND COD-MCLI NOT = 0 
               AND CANN-MCLI = 0
               AND LK-MCLI-M-NumFiltre = 4)
                   MOVE SPACES   TO Gd-1-Record
                   IF LK-MCLI-M-NumFiltre = 2 OR 3 
                        MOVE FCO-MCLI TO Gd-1-Col-1
                   ELSE MOVE COD-MCLI TO Gd-1-Col-1
                   END-IF
                   MOVE RAI-MCLI TO Gd-1-Col-2
                   PERFORM MEP-CP
                   STRING Af-POS " " VIL-MCLI
                            DELIMITED BY "  " INTO Gd-1-Col-3
                   MODIFY Screen1-Gd-1, RECORD-TO-ADD Gd-1-Record
              END-IF
           .


      *
       Screen1-Ef-Cli-Ev-Msg-Validate.
           IF LK-MCLI-M-NumFiltre = 2 OR 3
              INQUIRE Screen1-Ef-Cli, VALUE IN FCO-MCLI2
              IF FCO-MCLI2 = 0 EXIT PARAGRAPH
              END-IF
              Open I-O MXCLI2
              PERFORM STAT
              READ MXCLI2 KEY CLE7-MCLI2 INVALID MOVE SPACE TO ENR-MCLI2
              END-READ
              PERFORM STAT
              CLOSE MXCLI2
              MODIFY Screen1-Ef-Cli, VALUE FCO-MCLI2
              MODIFY Screen1-Ef-Rai, VALUE RAI-MCLI2
              MODIFY Screen1-Ef-Vil, VALUE VIL-MCLI2
              PERFORM ValidUnCli
           ELSE
              INQUIRE Screen1-Ef-Cli, VALUE IN COD-MCLI2
              IF COD-MCLI2 = 0 EXIT PARAGRAPH
              END-IF
              Open I-O MXCLI2
              PERFORM STAT
              READ MXCLI2 KEY CLE6-MCLI2 INVALID MOVE SPACE TO ENR-MCLI2
              END-READ
              PERFORM STAT
              CLOSE MXCLI2
              MODIFY Screen1-Ef-Cli, VALUE COD-MCLI2
              MODIFY Screen1-Ef-Rai, VALUE RAI-MCLI2
              MODIFY Screen1-Ef-Vil, VALUE VIL-MCLI2
              PERFORM ValidUnCli
           END-IF
           .
      *
       Screen1-Pb-ValidUnCli-Link.
           PERFORM Screen1-Ef-Cli-Ev-Msg-Validate
           IF LK-MCLI-M-NumFiltre = 2 OR 3
              IF FCO-MCLI2 = 0 EXIT PARAGRAPH
              END-IF
              PERFORM ValidUnCli
           ELSE
              IF COD-MCLI2 = 0 EXIT PARAGRAPH
              END-IF
              PERFORM ValidUnCli
           END-IF
           .

       ValidUnCli.
051018
           IF  LK-MCLI-M-RGPD = 1   
           AND (    RGPD-MCLI2 = 2
                              OR 3
                 OR (     RGPD-MCLI2 = 1
                      AND W-RGPD = 1 ) ) THEN
              MOVE "Client de statut RGPD non accessible" TO ACU-Msg-1
              PERFORM Msg-Info
              EXIT PARAGRAPH
           END-IF
051018
      * Test si extraction > 80 clients .
           IF LK-MCLI-M-NBSEL = LK-MCLI-M-MAXSEL
              MOVE "Limite de sélection atteinte !" TO Acu-Msg-1
              PERFORM MSG-ERREUR
              EXIT PARAGRAPH.
      * Recherche si client  déjà sélectionné dans la grille 2.
           IF LK-MCLI-M-NumFiltre = 2 OR 3
              MOVE FCO-MCLI2 TO Gd-1-COD
              MOVE 0 TO Gd-2-Erreur
              INQUIRE Screen1-Gd-2, LAST-ROW Gd-2-Max
              PERFORM VARYING Gd-2-Index FROM 2 BY 1
              UNTIL Gd-2-Index > Gd-2-Max
              OR Gd-2-Erreur = 1
                 INQUIRE Screen1-Gd-2(Gd-2-Index, 1), CELL-DATA Gd-2-FCO
                 IF Gd-1-COD = Gd-2-FCO
                    MOVE 1 TO Gd-2-Erreur
                 END-IF
              END-PERFORM
           ELSE
              MOVE COD-MCLI2 TO Gd-1-COD
              MOVE 0 TO Gd-2-Erreur
              INQUIRE Screen1-Gd-2, LAST-ROW Gd-2-Max
              PERFORM VARYING Gd-2-Index FROM 2 BY 1
              UNTIL Gd-2-Index > Gd-2-Max
              OR Gd-2-Erreur = 1
                 INQUIRE Screen1-Gd-2(Gd-2-Index, 1), CELL-DATA Gd-2-COD
                 IF Gd-1-COD = Gd-2-COD
                    MOVE 1 TO Gd-2-Erreur
                 END-IF
              END-PERFORM
           END-IF

      * Test si erreur.
           IF Gd-2-Erreur = 1
              MOVE "Déjà sélectionné !" TO Acu-Msg-1
              PERFORM MSG-ERREUR
              MODIFY Screen1-Ef-Cli, VALUE SPACE
              MODIFY Screen1-Ef-Rai, VALUE SPACE
              MODIFY Screen1-Ef-Vil, VALUE SPACE
              MOVE 4 TO ACCEPT-CONTROL
              MOVE 22 TO CONTROL-ID
              EXIT PARAGRAPH
           END-IF
      * Chargement de la grille 2.
           Initialize Gd-2-Record
           IF LK-MCLI-M-NumFiltre = 2 OR 3
              MOVE FCO-MCLI2 TO Gd-2-Col-1
           ELSE
              MOVE COD-MCLI2 TO Gd-2-Col-1
           END-IF
           MOVE RAI-MCLI2 TO Gd-2-Col-2
           MODIFY Screen1-Gd-2, RECORD-TO-ADD Gd-2-Record
           ADD 1 TO LK-MCLI-M-NBSEL
      * Affichage entête grille 2.
           PERFORM AFF-NBCLI-LIB
           MODIFY Screen1-Ef-Cli, VALUE SPACE
           MODIFY Screen1-Ef-Rai, VALUE SPACE
           MODIFY Screen1-Ef-Vil, VALUE SPACE
           MOVE 4 TO ACCEPT-CONTROL
           MOVE 22 TO CONTROL-ID
           .
      *
       Screen1-Ef-COD-DEB-Aft-Procedure.
           IF W-COD-DEB <> SPACE AND <> SV-COD-DEB
              PERFORM Screen1-Pb-Afficher-Link
           END-IF.
      *
       Screen1-Ef-COD-FIN-Aft-Procedure.
           IF W-COD-FIN <> SPACE AND <> SV-COD-FIN
              PERFORM Screen1-Pb-Afficher-Link
           END-IF.
           .




       

      *{Bench}end
       REPORT-COMPOSER SECTION.
