      *{Bench}prg-comment
      * mfou-l.cbl
      * mfou-l.cbl is generated from W:\mx\spro\mfou-l.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. mfou-l.
       AUTHOR. fatima-zahra.selouan.
       DATE-WRITTEN. vendredi 26 juin 2020 12:02:34.
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
       COPY "MXFOU.sl".
       COPY "RECH.sl".
       COPY "RECHCMD.sl".
       COPY "MXAGENCE.sl".
       COPY "MXMARQUE.sl".
      *{Bench}end
       DATA                        DIVISION.
       FILE                        SECTION.
      *{Bench}file
       COPY "COBCAP.fd".
       COPY "MXPARAM.fd".
       COPY "MXFOU.fd".
       COPY "RECH.fd".
       COPY "RECHCMD.fd".
       COPY "MXAGENCE.fd".
       COPY "MXMARQUE.fd".
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
           COPY  "EF-TEL.WRK".
           COPY  "rech.wrk".
           COPY  "LK-LISTE.wrk".
           COPY  "Ef-Pos.wrk".
       77 Screen1-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 Default-Font
                  USAGE IS HANDLE OF FONT DEFAULT-FONT.
       77 Small-Font
                  USAGE IS HANDLE OF FONT SMALL-FONT.
       77 Fixed-Font
                  USAGE IS HANDLE OF FONT FIXED-FONT.
       77 ENGRSIM16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 VALIDER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Screen1-Gd-1-Cursor-Y-Old    PIC  9(5).
       77 Tmp-9-3          PIC  9(6).
       01 Screen1-Gd-1-Record.
           05 Screen1-Gd-1-COD PIC  9(6).
           05 Screen1-Gd-1-RAI PIC  X(36).
           05 Screen1-Gd-1-TEL PIC  X(15).
           05 Screen1-Gd-1-SIREN           PIC  X(12).
           05 Screen1-Gd-1-TVA PIC  X(20).
           05 Screen1-Gd-1-AGE PIC  X(2).
           05 Screen1-Gd-1-Bidon2          PIC  X(08).
           05 Screen1-Gd-1-VIL PIC  X(35).
           05 Screen1-Gd-1-Interloc        PIC  X(55).
       77 W-COD            PIC  9(6).
       77 W-FCO            PIC  X(8).
       77 W-TEL            PIC  X(15).
       77 W-TEL-Ecran      PIC  X(15).
       77 W-KEY-ORDER      PIC  X(1)
                  VALUE IS "A".
       77 W-ORD            PIC  S9(2)
                  VALUE IS 2.
       77 W-NBR            PIC  9(4)
                  VALUE IS 0.
       77 W-RAI            PIC  X(25).
       77 Af-POS           PIC  X(10).
       77 W-INTERLOC       PIC  X(25).
       77 W-INTERLOCUTEUR  PIC  X(55).
       77 W-MXPARAM        PIC  9(9).
       77 PAYS-FILE-STATUS PIC  X(2).
           88 Valid-PAYS-FILE-STATUS VALUE IS "00" THRU "09". 
       77 W-LOG-PALM       PIC  9(3).
       77 W-NPR-PALM       PIC  9(4).
       77 FILE-STATUS      PIC  X(2).
       77 PLUSxxx16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ASSIGN-RECH      PIC  X(60).
       77 WASS-RECH        PIC  X(20)
                  VALUE IS "MCLI-M-RECH".
       77 W-NB-ELT         PIC  X(60).
       77 W-VIL            PIC  X(30).
       77 Tmp-9-3-FIC      PIC  9(6).
       77 Tmp-9-3-ECR      PIC  Z(5)9.
       77 W-TITSOC         PIC  9(9).
       77 TITSOC-FILE-STATUS           PIC  X(2).
           88 Valid-TITSOC VALUE IS "00" THRU "09". 
       77 ZOOMxxx16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       01 .
           03 Screen1-Cm-1-Container-Item.
               05      PIC  X(5)
                          VALUE IS "Item1".
               05      PIC  X(5)
                          VALUE IS "Item2".
               05      PIC  X(5)
                          VALUE IS "Item3".
           78 Screen1-Cm-1-Container-Num VALUE IS 3. 
           03 Screen1-Cm-1-Container REDEFINES 
           Screen1-Cm-1-Container-Item  PIC  X(5)
                      OCCURS 3 TIMES
                      INDEXED  Screen1-Cm-1-Container-Idx.
       77 Screen1-Cm-1-Value           PIC  X(5).
       77 W-SIR            PIC  X(3)BX(3)BX(3).
       77 W-SIREN          PIC  X(12).
       77 W-TVA            PIC  X(20).
       77 W-VILLE          PIC  X(25).
       77 W-CP-ECR         PIC  X(8).
       77 W-CP-FIC         PIC  X(8).
       77 W-PAYS           PIC  X(3).
       77 W-Ef-TEL         PIC  X(15).
       77 W-RAISOC         PIC  X(36).
       77 ENGRDOU24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 CXFOU-FILE-STATUS            PIC  X(2).
           88 Valid-CXFOU VALUE IS "00" THRU "09". 
       77 ASSIGN-RECHCMD   PIC  X(60).
       77 W-SELECT         PIC  9.
       77 W-DEB            PIC  9.
       77 w-selMarque      PIC  X(4).
       77 w-selMarqueLib   PIC  X(25).
       77 s    PIC  X(128).
       77 W-EXI            PIC  9(1).
       77 ADDxxxx16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ZOOMxxx12-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Screen1-Visible  PIC  9
                  VALUE IS 0.
       77 ZOOMxxx12-JP     PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 VALIDER32-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ENGRENAGE32-BMP  PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.

      *{Bench}end
       LINKAGE                     SECTION.
      *{Bench}linkage
       77 LK-ZONE-PALM     PIC  X(500).
           COPY  "LK-MFOU-L.WRK".
      *{Bench}end
       SCREEN                      SECTION.
      *{Bench}copy-screen
       01 Screen1.
           03 Screen1-La-Titre, Label, 
              COL 3,71, LINE 6,00, LINES 1,54 CELLS, SIZE 18,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 9, RIGHT, 
              LABEL-OFFSET 0, 
              TITLE "A partir de".
           03 Screen1-DaRb-Ord1, Radio-Button, 
              COL 17,43, LINE 3,31, LINES 1,23 CELLS, SIZE 8,00 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 1, 
              ID IS 3, 
              TITLE "Code", VALUE W-ORD, 
              EVENT PROCEDURE Screen1-DaRb-Ord1-Event-Proc.
           03 Screen1-DaRb-Ord2, Radio-Button, 
              COL 27,43, LINE 3,31, LINES 1,23 CELLS, SIZE 15,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 2, 
              ID IS 4, 
              TITLE "Raison sociale", VALUE W-ORD, 
              EVENT PROCEDURE Screen1-DaRb-Ord2-Event-Proc.
           03 Screen1-DaRb-Ord3, Radio-Button, 
              COL 44,57, LINE 3,31, LINES 1,23 CELLS, SIZE 15,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 3, 
              ID IS 11, 
              TITLE "N° téléphone", VALUE W-ORD, 
              EVENT PROCEDURE Screen1-DaRb-Ord3-Event-Proc.
           03 Screen1-DaRb-Ord4, Radio-Button, 
              COL 60,14, LINE 3,31, LINES 1,23 CELLS, SIZE 9,71 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 4, 
              ID IS 47, 
              TITLE "SIREN", VALUE W-ORD, 
              EVENT PROCEDURE Screen1-DaRb-Ord4-Event-Proc.
           03 Screen1-DaRb-Ord5, Radio-Button, 
              COL 71,57, LINE 3,31, LINES 1,23 CELLS, SIZE 13,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 5, 
              ID IS 13, 
              TITLE "Interlocuteur", VALUE W-ORD, 
              EVENT PROCEDURE Screen1-DaRb-Ord5-Event-Proc.
           03 Screen1-DaRb-Ord10, Radio-Button, 
              COL 113,14, LINE 3,31, LINES 1,23 CELLS, 
              SIZE 10,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 10, 
              ID IS 14, 
              TITLE "Marque", VALUE W-ORD, 
              EVENT PROCEDURE Screen1-DaRb-Ord10-Event-Proc.
           03 Screen1-DaRb-Ord6, Radio-Button, 
              COL 87,29, LINE 3,31, LINES 1,23 CELLS, SIZE 11,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 6, 
              ID IS 49, 
              TITLE "N° TVA", VALUE W-ORD, 
              EVENT PROCEDURE Screen1-DaRb-Ord6-Event-Proc.
           03 Screen1-DaRb-Ord7, Radio-Button, 
              COL 98,71, LINE 3,31, LINES 1,23 CELLS, SIZE 13,00 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 7, 
              ID IS 48, 
              TITLE "Code postal", VALUE W-ORD, 
              EVENT PROCEDURE Screen1-DaRb-Ord7-Event-Proc.
           03 Screen1-DaRb-Ord8, Radio-Button, 
              COL 124,71, LINE 3,31, LINES 1,23 CELLS, SIZE 7,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 8, 
              ID IS 1, 
              TITLE "Ville", VALUE W-ORD, 
              EVENT PROCEDURE Screen1-DaRb-Ord8-Event-Proc.
           03 Screen1-DaRb-Ord9, Radio-Button, 
              COL 134,86, LINE 3,31, LINES 1,23 CELLS, SIZE 8,00 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 9, 
              ID IS 2, 
              TITLE "Pays", VALUE W-ORD, 
              EVENT PROCEDURE Screen1-DaRb-Ord9-Event-Proc.
           03 Screen1-Pb-Lancer, Push-Button, 
              COL 145,43, LINE 1,31, LINES 24, SIZE 32, 
              BITMAP-HANDLE ENGRENAGE32-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 9859, FONT IS Default-Font, ID IS 5, 
              NO-AUTO-DEFAULT, NO-TAB, DEFAULT-BUTTON, 
              TITLE "Lancer la liste", 
              ATW-CSS-CLASS "button-icon fas fa-cog".
           03 Screen1-Ef-Rai, Entry-Field, 
              COL 23,86, LINE 5,46, LINES 2,46 CELLS, SIZE 29,14 CELLS, 
              3-D, COLOR IS 2, ID IS 36, MAX-TEXT 25, 
              BEFORE PROCEDURE Screen1-Ef-Rai-Bef-Procedure, 
              EVENT PROCEDURE Screen1-Ef-1-Event-Proc.
           03 Screen1-Ef-Cod, Entry-Field, 
              COL 23,86, LINE 5,46, LINES 2,46 CELLS, SIZE 7,14 CELLS, 
              3-D, COLOR IS 2, ID IS 16, MAX-TEXT 6, NUMERIC, 
              EVENT PROCEDURE Screen1-Ef-1-Event-Proc.
           03 Screen1-Ef-Interlocuteur, Entry-Field, 
              COL 23,86, LINE 5,46, LINES 2,46 CELLS, SIZE 29,14 CELLS, 
              3-D, COLOR IS 2, ID IS 66, MAX-TEXT 25, 
              EVENT PROCEDURE Screen1-Ef-1-Event-Proc.
           03 Screen1-Ef-Tel, Entry-Field, 
              COL 23,86, LINE 5,46, LINES 2,46 CELLS, SIZE 17,29 CELLS, 
              3-D, COLOR IS 2, ID IS 46, MAX-TEXT 14, 
              EVENT PROCEDURE Screen1-Ef-1-Event-Proc.
           03 Screen1-Ef-CP, Entry-Field, 
              COL 23,86, LINE 5,46, LINES 2,46 CELLS, SIZE 9,29 CELLS, 
              3-D, COLOR IS 2, ID IS 86, MAX-TEXT 8, USE-TAB.
           03 Screen1-Ef-VILLE, Entry-Field, 
              COL 23,86, LINE 5,46, LINES 2,46 CELLS, SIZE 25,86 CELLS, 
              3-D, COLOR IS 2, ID IS 96, MAX-TEXT 25, USE-TAB.
           03 Screen1-Ef-SIREN, Entry-Field, 
              COL 23,86, LINE 5,46, LINES 2,46 CELLS, SIZE 13,14 CELLS, 
              3-D, COLOR IS 2, ID IS 56, MAX-TEXT 9, USE-TAB, 
              BEFORE PROCEDURE Screen1-Ef-SIREN-Bef-Procedure.
           03 Screen1-Ef-TVA, Entry-Field, 
              COL 23,86, LINE 5,46, LINES 2,46 CELLS, SIZE 20,86 CELLS, 
              3-D, COLOR IS 2, ID IS 76, MAX-TEXT 20, USE-TAB.
           03 Screen1-Cm-PAYS, Combo-Box, 
              COL 23,86, LINE 5,46, LINES 9,46 CELLS, SIZE 28,14 CELLS, 
              3-D, COLOR IS 2, EXCEPTION-VALUE 2075, 
              FONT IS Fixed-Font, ID IS 106, MASS-UPDATE 0, 
              NOTIFY-SELCHANGE, DROP-LIST, UNSORTED, 
              VALUE Screen1-Cm-1-Value, 
              EXCEPTION PROCEDURE Screen1-Cm-PAYS-Exception-Proc.
           03 Screen1-Gd-1, Grid, 
              COL 2,14, LINE 9,77, LINES 27,77 CELLS, 
              SIZE 154,00 CELLS, 
              3-D, COLOR IS 2, COLUMN-HEADINGS, 
              DATA-COLUMNS (1, 7, 43, 58, 70, 90, 92, 100, 135), 
              DISPLAY-COLUMNS (1, 11, 47, 62, 75, 94, 1, 11, 47), 
              ALIGNMENT ("U", "L", "U", "L", "L", "C", "U", "L", "U"), 
              DATA-TYPES ("X(8)", "X(36)", "X", "X(12)", "X(20)", "X", "
      -       "X(10)", "X(35)", "X(55)"), 
              SEPARATION (5, 5, 5, 5, 5, 5, 5, 5, 5), 
              COLUMN-DIVIDERS (1, 1, 1, 1, 1, 0, 0, 1, 0), 
              CURSOR-FRAME-WIDTH 0, DIVIDER-COLOR 8, END-COLOR 16, 
              FONT IS Default-Font, HEADING-COLOR 257, 
              HEADING-DIVIDER-COLOR 8, HEADING-FONT IS Small-Font, 
              ID IS 6, NUM-COL-HEADINGS 1, NUM-ROWS -1, 
              RECORD-DATA Screen1-Gd-1-Record, VPADDING 50, VSCROLL, 
              ATW-CSS-CLASS "table", 
              EVENT PROCEDURE Screen1-Gd-1-Event-Proc.
           03 Screen1-Pb-Accept, Push-Button, 
              COL 151,43, LINE 1,31, LINES 24, SIZE 32, 
              BITMAP-HANDLE VALIDER32-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 9858, ID IS 7, NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Accepter", 
              ATW-CSS-CLASS "button-icon fas fa-check".
           03 Screen1-La-2, Label, 
              COL 3,86, LINE 3,31, LINES 1,23 CELLS, SIZE 9,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 12, LABEL-OFFSET 0, 
              TITLE "Accès par".
           03 Screen1-La-Rech, Label, 
              COL 95,00, LINE 8,08, LINES 1,31 CELLS, SIZE 62,14 CELLS, 
              COLOR IS 13, FONT IS Small-Font, ID IS 10, 
              LABEL-OFFSET 0, 
              TITLE 
              "Pour rechercher un mot (chaîne de caractères) , faire pré
      -       "céder par un /", TRANSPARENT.
           03 Screen1-La-nb-elt, Label, 
              COL 1,14, LINE 37,62, LINES 3,62 CELLS, 
              SIZE 156,00 CELLS, 
              COLOR IS 13, FONT IS Small-Font, ID IS 15, 
              LABEL-OFFSET 0, TRANSPARENT, VISIBLE 0.
           03 Screen1-Pb-CP, Push-Button, 
              COL 33,57, LINE 5,69, LINES 24, SIZE 16, 
              BITMAP-HANDLE ZOOMxxx16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 2074, ID IS 17, NO-TAB, 
              TITLE "Recherche par ville", 
              ATW-CSS-CLASS "button-icon fas fa-search".
           03 Screen1-Pb-BrowseMarque, Push-Button, 
              COL 41,29, LINE 5,77, LINES 24, SIZE 12, 
              BITMAP-HANDLE ZOOMxxx12-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1005, ID IS 70, NO-TAB, SELF-ACT, 
              TITLE "Liste des marques", VISIBLE 0, 
              ATW-CSS-CLASS "button-icon fas fa-search".
           03 Screen1-Ef-Marque, Entry-Field, 
              COL 23,86, LINE 5,62, LINES 2,46 CELLS, SIZE 16,86 CELLS, 
              3-D, COLOR IS 514, FONT IS Default-Font, ID IS 71, 
              MAX-TEXT 4, VISIBLE 0, 
              BEFORE PROCEDURE Screen1-Ef-Marque-BeforeProcedure, 
              EVENT PROCEDURE Screen1-Ef-Marque-Event-Proc.

      *{Bench}end

      *{Bench}linkpara
       PROCEDURE DIVISION USING LK-ZONE-PALM, LK-MFOU-L.
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
           COPY RESOURCE "ENGRENAGE32.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ENGRENAGE32.BMP", GIVING 
              ENGRENAGE32-BMP
           COPY RESOURCE "ADDxxxx16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ADDxxxx16.BMP", GIVING 
              ADDxxxx16-BMP
           COPY RESOURCE "VALIDER32.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "VALIDER32.BMP", GIVING 
              VALIDER32-BMP
           COPY RESOURCE "ZOOMxxx16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ZOOMxxx16.BMP", GIVING 
              ZOOMxxx16-BMP
           COPY RESOURCE "ZOOMxxx12.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ZOOMxxx12.JPG", GIVING 
              ZOOMxxx12-JPG
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
           IF ADDxxxx16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ADDxxxx16-BMP
              MOVE 0 TO ADDxxxx16-BMP
           END-IF
           IF VALIDER32-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY VALIDER32-BMP
              MOVE 0 TO VALIDER32-BMP
           END-IF
           IF ZOOMxxx16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ZOOMxxx16-BMP
              MOVE 0 TO ZOOMxxx16-BMP
           END-IF
           IF ZOOMxxx12-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ZOOMxxx12-JPG
              MOVE 0 TO ZOOMxxx12-JPG
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
                 LINES 41,92, SIZE 156,14, CELL HEIGHT 13, 
                 CELL WIDTH 7, COLOR IS 65793, LABEL-OFFSET 0, 
                 LINK TO THREAD, NO SCROLL, WITH SYSTEM MENU, 
                 TITLE "LISTE DES FOURNISSEURS", TITLE-BAR, USER-GRAY, 
                 USER-WHITE, VISIBLE Screen1-Visible, NO WRAP, 
                 ATW-CSS-ID "modal_screen_mfou_l", 
                 EVENT PROCEDURE Screen1-Event-Proc, 
                 HANDLE IS Screen1-Handle
      * toolbar
           DISPLAY Screen1 UPON Screen1-Handle
      *    After-Create
           .

       Acu-Screen1-Init-Data.
      *    Before-Initdata
           PERFORM Acu-Screen1-Cm-PAYS-Content
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

      * Screen1-Cm-PAYS
       Acu-Screen1-Cm-PAYS-Content.
           MODIFY Screen1-Cm-PAYS, MASS-UPDATE = 1, RESET-LIST = 1
           MODIFY Screen1-Cm-PAYS, ITEM-TO-ADD = TABLE 
              Screen1-Cm-1-Container
           MODIFY Screen1-Cm-PAYS, MASS-UPDATE = 0
           MODIFY Screen1-Cm-PAYS, VALUE Screen1-Cm-1-Value
           .

      * Screen1-Gd-1
       Acu-Screen1-Gd-1-Content.
      * Cells Settings
           MODIFY Screen1-Gd-1, X = 1, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "Code", 
           MODIFY Screen1-Gd-1, X = 2, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "Raison Sociale", 
           MODIFY Screen1-Gd-1, X = 3, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "Téléphone", 
           MODIFY Screen1-Gd-1, X = 4, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "N° SIREN", 
           MODIFY Screen1-Gd-1, X = 5, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "N° TVA CEE", 
           MODIFY Screen1-Gd-1, X = 6, Y = 1, CELL-COLOR = 112, 
              CELL-DATA = "Ag", BITMAP = ADDxxxx16-BMP, 
              BITMAP-TRAILING = 1, BITMAP-NUMBER = 1, 
              BITMAP-WIDTH = 16, 
           MODIFY Screen1-Gd-1, X = 7, Y = 1, CELL-COLOR = 112, 
           MODIFY Screen1-Gd-1, X = 8, Y = 1, CELL-COLOR = 112, 
           MODIFY Screen1-Gd-1, X = 9, Y = 1, CELL-COLOR = 112, 
              CELL-DATA = "Ville", 
      * Columns' Setting
           MODIFY Screen1-Gd-1, X = 1, COLUMN-COLOR = 2, 
           MODIFY Screen1-Gd-1, X = 2, COLUMN-COLOR = 2, 
           MODIFY Screen1-Gd-1, X = 9, COLUMN-COLOR = 2, 
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
      * Screen1-Pb-Lancer Link To
              WHEN Key-Status = 9859
                 PERFORM Screen1-Pb-Lancer-LinkTo
      * Screen1-Pb-Accept Link To
              WHEN Key-Status = 9858
                 PERFORM Screen1-Pb-Accept-Ex-Cmd-Clicked
      * Screen1-Pb-CP Link To
              WHEN Key-Status = 2074
                 PERFORM Screen1-Pb-CP-Link
      * Screen1-Pb-BrowseMarque Link To
              WHEN Key-Status = 1005
                 PERFORM Screen1-Pb-BrowseMarque-LinkTo
           END-EVALUATE
           MOVE 1 TO Accept-Control
           .

       Acu-Close-Files.
      *    Before-Close
      *    After-Close
           .

      * COBCAP

      * MXPARAM

      * MXFOU

      * RECH

      * RECHCMD

      * MXAGENCE

      * MXMARQUE

       Acu-Screen1-Exit.
           SET Exit-Pushed TO TRUE
           .


       Screen1-Event-Proc.
           .

       Screen1-DaRb-Ord1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-DaRb-Ord1-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-DaRb-Ord2-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-DaRb-Ord2-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-DaRb-Ord3-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-DaRb-Ord3-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-DaRb-Ord4-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-DaRb-Ord4-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-DaRb-Ord5-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-DaRb-Ord5-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-DaRb-Ord10-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-DaRb-Ord10-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-DaRb-Ord6-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-DaRb-Ord6-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-DaRb-Ord7-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-DaRb-Ord7-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-DaRb-Ord8-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-DaRb-Ord8-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-DaRb-Ord9-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-DaRb-Ord9-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-Ef-1-Event-Proc.
           .

       Screen1-Cm-PAYS-Exception-Proc.
      * 
           IF Event-Occurred
              EVALUATE Event-Type
              WHEN Ntf-Selchange
                 PERFORM Screen1-Cm-PAYS-Ex-Ntf-Selchange
              END-EVALUATE
           END-IF
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
              PERFORM Acu-Main
           WHEN Msg-Heading-Clicked
              PERFORM Screen1-Gd-1-Ev-Msg-Heading-Clicked
           END-EVALUATE
           .

       Screen1-Ef-Marque-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-Ef-Marque-Ev-Msg-Validate
           END-EVALUATE
           .
      ***   start event editor code   ***
           COPY "W:/MISTRAL/COPY/ENVMIS.CBL".
140319*     COPY "u:/mistral/copy/centrefenetre.cbl".
020819     COPY "W:/mistral/copy/MisCentrefenetre.cbl".

       Init-BMP.

       Open-File-Rtn.
           OPEN I-O MXFOU     PERFORM STAT
           OPEN I-O MXAGENCE  PERFORM STAT
270213*     IF LK-MFOU-L-IDG = 1 THEN
270213*     END-IF
270213       OPEN I-O MXMARQUE PERFORM STAT
           .
       Close-File-Rtn.
           CLOSE MXFOU MXAGENCE
270213*     IF LK-MFOU-L-IDG = 1 THEN
270213*     END-IF
270213     CLOSE MXMARQUE
           .
       Init-Grille.
      * Remise à zéro de la grille...
           MODIFY Screen1-Gd-1, MASS-UPDATE = 1, RESET-GRID = 1
           PERFORM Acu-Screen1-Gd-1-Content

      * Remplissage de la grille...
           INITIALIZE ENR-MFOU
           MOVE 0 TO W-EOF
           EVALUATE W-ORD
           WHEN 1
               MOVE W-COD TO COD-MFOU
               START MXFOU KEY >= CLE1-MFOU 
                   INVALID MOVE 1 TO W-EOF
               END-START
           WHEN 2
               MOVE W-RAI TO RAI-MFOU
               START MXFOU KEY >= CLE2-MFOU 
                   INVALID MOVE 1 TO W-EOF
               END-START
           WHEN 3
               MOVE W-TEL TO TEL-MFOU
               START MXFOU KEY >= CLE4-MFOU 
                   INVALID MOVE 1 TO W-EOF
               END-START
           END-EVALUATE
           IF W-EOF = 0 THEN
               READ MXFOU NEXT END MOVE 1 TO W-EOF END-READ
               PERFORM STAT
           END-IF
           MOVE 2 TO Screen1-Gd-1-Cursor-Y-Old
           MOVE SPACES TO Screen1-Gd-1-COD
           MOVE 1 TO Tmp-9-3
           MOVE 0 TO W-NBR
           PERFORM UNTIL (W-EOF = 1) OR (W-NBR > 100)
               IF (LK-MFOU-L-MSL = 1 AND CSL-MFOU NOT = 1)
               OR (LK-MFOU-L-NTF = 1 AND NTF-MFOU <> 0 AND <> 2)
               OR (LK-MFOU-L-NTF = 2 AND NTF-MFOU <> 1 AND <> 2)
               THEN
                 CONTINUE
               ELSE
                 PERFORM Mep-Un-Fou
               END-IF
               READ MXFOU NEXT END MOVE 1 TO W-EOF END-READ
               PERFORM STAT
           END-PERFORM

      * Positionnement du curseur sur la grille...
           MODIFY Screen1-Gd-1,
                  Y = Screen1-Gd-1-Cursor-Y-Old,
                  CURSOR-Y = Screen1-Gd-1-Cursor-Y-Old,
                  ROW-COLOR = 257,
                  MASS-UPDATE = 0

      * Patch : sans ça, la grille peut parfois mélanger les lignes...
           MOVE SPACES TO Screen1-Gd-1-Record
           .
       Tel-Fic2Ecr.
           COPY "W:/MISTRAL/COPY/Ef-Tel-Fic2Ecr.cbl"
                REPLACING ==CPYTEL-PAYS== BY ==PAY-MFOU==
                          ==CPYTEL-FIC==  BY ==TEL-MFOU==
                          ==CPYTEL-ECR== BY ==Screen1-Gd-1-TEL==.
           .
       Tel-Ecr2Fic.
           COPY "W:/MISTRAL/COPY/Ef-Tel-Ecr2Fic.cbl"
                REPLACING ==CPYTEL-PAYS== BY ==PAY-MPAR==
                          ==CPYTEL-FIC==  BY ==W-TEL==
                          ==CPYTEL-ECR== BY ==W-TEL-Ecran==.
           .
       Mep-CP.
      **     COPY "W:/MISTRAL/COPY/Ef-Pos-Fic2Ecr.cbl"
      **           REPLACING  ==CPYPOS-PAYS== BY ==PAY-MFOU==
      **                      ==CPYPOS-FIC==  BY ==POS-MFOU==
      **                      ==CPYPOS-ECR==  BY ==Af-POS==
      **                      ==CPYPOS-VIL==  BY ==VIL-MFOU==.
           .
       Mep-Un-Fou.
           IF COD-MFOU = 0 OR CANN-MFOU <> 0 EXIT PARAGRAPH
           END-IF
           MOVE SPACE TO Screen1-Gd-1-Record
           ADD 1 TO Tmp-9-3 W-NBR
           MOVE COD-MFOU TO Screen1-Gd-1-COD
           MOVE SPACE TO W-RAISOC
              MOVE RAI-MFOU TO Screen1-Gd-1-RAI
           PERFORM MEP-CP
           STRING Af-POS " " VIL-MFOU
                  DELIMITED BY "  " INTO Screen1-Gd-1-Vil
           PERFORM Tel-Fic2Ecr
           MOVE SIR1-MFOU TO W-SIR
           MOVE W-SIR TO Screen1-Gd-1-SIREN
121110           
           IF AGE-MFOU <> SPACE THEN
              INITIALIZE       ENR-MAGC
              MOVE AGE-MFOU TO COD-MAGC

              READ MXAGENCE

              PERFORM STAT

              MOVE ABR-MAGC TO Screen1-Gd-1-AGE
           END-IF
121110           
           MODIFY Screen1-Gd-1,
                  RECORD-TO-ADD = Screen1-Gd-1-Record
           .
       Mep-Un-Fou-Interloc.
           IF COD-MFOU = 0 OR CANN-MFOU <> 0 EXIT PARAGRAPH
           END-IF
           MOVE SPACE TO Screen1-Gd-1-Record
           ADD 1 TO Tmp-9-3 W-NBR
           MOVE COD-MFOU TO Screen1-Gd-1-COD
           MOVE SPACE TO W-RAISOC

              MOVE RAI-MFOU TO Screen1-Gd-1-RAI

           PERFORM MEP-CP
           STRING Af-POS " " VIL-MFOU
                  DELIMITED BY "  " INTO Screen1-Gd-1-Vil
           PERFORM Tel-Fic2Ecr
           MOVE SIR1-MFOU TO W-SIR
           MOVE W-SIR TO Screen1-Gd-1-SIREN
           MOVE SPACE TO W-INTERLOCUTEUR


           MOVE W-INTERLOCUTEUR TO Screen1-Gd-1-Interloc
           MODIFY Screen1-Gd-1,
                  RECORD-TO-ADD = Screen1-Gd-1-Record
           .
       Plus-Grille.
           IF W-EOF = 0 THEN
               READ MXFOU NEXT END MOVE 1 TO W-EOF END-READ
               PERFORM STAT
           END-IF

           MOVE SPACES TO Screen1-Gd-1-COD
           MOVE 0 TO W-NBR
           PERFORM UNTIL (W-EOF = 1) OR (W-NBR > 100)
               IF (LK-MFOU-L-MSL = 1 AND CSL-MFOU NOT = 1)
               OR (LK-MFOU-L-NTF = 1 AND NTF-MFOU <> 0 AND <> 2)
               OR (LK-MFOU-L-NTF = 2 AND NTF-MFOU <> 1 AND <> 2)
                  CONTINUE 
               ELSE
                 PERFORM Mep-Un-Fou
               END-IF
               READ MXFOU NEXT END MOVE 1 TO W-EOF END-READ
               PERFORM STAT
           END-PERFORM
      * Patch : sans ça, la grille peut parfois mélanger les lignes...
           MOVE SPACES TO Screen1-Gd-1-Record
           .

       Plus-Grille-ITF.
      *     IF W-EOF = 1 EXIT PARAGRAPH.
      *     MOVE SPACES TO Screen1-Gd-1-COD
      *     MOVE 0 TO W-NBR
      *     PERFORM READ-NEXT-MXINTFOU THRU F-READ-NEXT-MXINTFOU.
      *     MOVE SPACES TO Screen1-Gd-1-Record
           .
       Screen1-AfterInitData.
140319*   
      *     IF LK-MFOU-L-HANDLE <> 0 THEN
      *        MOVE LK-MFOU-L-HANDLE TO WCF-HANDLE-FP
      *        PERFORM CentreFenetre
      *     END-IF
140319*
020819     PERFORM MisCentreFenetreScreen1

           OPEN INPUT MXPARAM
           PERFORM STAT
           MOVE 1 TO W-MXPARAM
           READ MXPARAM
           PERFORM STAT
           CLOSE MXPARAM


           | par défaut, on arrive sur la raison sociale
150408     MOVE 1 TO W-DEB
           PERFORM Screen1-DaRb-Ord2-Ev-Cmd-Clicked
150408     MOVE 0 TO W-DEB

      * Remise à zéro de la grille...
           MODIFY Screen1-Gd-1, RESET-GRID = 1
           PERFORM Acu-Screen1-Gd-1-Content
           IF LK-MFOU-L-IDG = 1 THEN
             | on recherche les fournisseurs assurant la garantie d'une
             | marque passée en paramètre
             PERFORM RECH-FOU-GAR
           END-IF
           .
      *
       Screen1-Gd-1-Ev-Msg-Begin-Entry.
           INQUIRE Screen1-Gd-1(Event-Data-2, 1),
                   CELL-DATA IN LK-MFOU-L-COD
           INQUIRE Screen1-Gd-1(Event-Data-2, 2),
                   CELL-DATA IN LK-MFOU-L-RAI

           MOVE Event-Action-Fail TO Event-Action
           PERFORM Mistral-CloseCurrentWindow
           .
      *
       Screen1-Gd-1-Ev-Msg-Goto-Cell.
      * La ligne de titre est à ignorer...
           IF Event-Data-2 < 2
               MOVE 2 TO Event-Data-2
           END-IF

      * Pour voir si on a changé de ligne
           IF NOT Event-Data-2 = Screen1-Gd-1-Cursor-Y-Old THEN
               MODIFY Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old),
                      ROW-COLOR = 0
               MODIFY Screen1-Gd-1(Event-Data-2), ROW-COLOR = 257
           END-IF

           MOVE Event-Data-2 TO Screen1-Gd-1-Cursor-Y-Old
           .
      *
       Screen1-Gd-1-Ev-Msg-Heading-Clicked.
           IF Event-Data-1 = 6 
              IF W-ORD = 2 AND W-RAI(1:1) = "/"
                   EXIT PARAGRAPH
              END-IF
              IF W-ORD = 5 AND W-INTERLOC(1:1) Not = "/"
                 PERFORM Plus-grille-Itf
              END-IF
              IF W-ORD >= 4 
                   EXIT PARAGRAPH
              END-IF
              PERFORM Plus-Grille
           END-IF
           .
      *
       Screen1-Pb-Accept-Ex-Cmd-Clicked.
           INQUIRE Screen1-Pb-Accept VISIBLE IN W-VS-PB
           IF W-VS-PB = 0 THEN
             EXIT PARAGRAPH
           END-IF
           INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old, 1),
                   CELL-DATA IN LK-MFOU-L-COD
           INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old, 2),
                   CELL-DATA IN LK-MFOU-L-RAI

           PERFORM Mistral-CloseCurrentWindow
           .
      *
           .
      *
       Screen1-Pb-Lancer-LinkTo.
           INQUIRE Screen1-Pb-Lancer VISIBLE IN W-VS-PB
           IF W-VS-PB = 0 THEN
             EXIT PARAGRAPH
           END-IF
           MODIFY Screen1-La-nb-elt, VISIBLE FALSE
           MODIFY Screen1-La-Rech, VISIBLE FALSE
           PERFORM Curseur-Sablier
           EVALUATE W-ORD
               WHEN 1
                   INQUIRE Screen1-Ef-Cod, VALUE IN W-COD
                   PERFORM INIT-GRILLE
               WHEN 2
                   INQUIRE Screen1-Ef-Rai, VALUE IN W-RAI
                   IF W-RAI(1:1) = "/" THEN 
                     PERFORM Recherche-Raisoc
                     PERFORM AFFICHE-RECH
                   ELSE
                     PERFORM Curseur-Fleche
                     PERFORM INIT-GRILLE
                   END-IF
               WHEN 3
                   INQUIRE Screen1-Ef-Tel, VALUE IN W-TEL-Ecran
                   PERFORM Tel-Ecr2Fic
                   MODIFY Screen1-Ef-Tel, VALUE W-TEL-Ecran
                   PERFORM INIT-GRILLE
               WHEN 4 | recherche sur n° SIREN
                   INQUIRE Screen1-Ef-SIREN, VALUE IN W-SIREN
                   PERFORM Siren-Ecr2Fic
                   IF W-SIREN NOT = SPACE THEN
                     PERFORM Recherche-Siren
                     PERFORM AFFICHE-RECH
                   ELSE
                     PERFORM Curseur-Fleche
                     EXIT PARAGRAPH
                   END-IF
               WHEN 5 | recherche sur interlocuteur
                   INQUIRE Screen1-Ef-Interlocuteur, 
                           VALUE IN W-INTERLOC
      **             IF W-INTERLOC(1:1) = "/" THEN 
      **               PERFORM Recherche2-Interlocuteur
      **               PERFORM AFFICHE-RECH-interlocuteur
      **             ELSE
                     PERFORM Curseur-Fleche
                     PERFORM Recherche1-Interlocuteur
      **             END-IF
               WHEN 6 | recherche sur n° TVA
                   INQUIRE Screen1-Ef-TVA, VALUE IN W-TVA
                   IF W-TVA NOT = SPACE THEN
                     PERFORM Recherche-TVA
                     PERFORM AFFICHE-RECH-TVA
                   ELSE
                     PERFORM Curseur-Fleche
                     EXIT PARAGRAPH
                   END-IF
               WHEN 7 | recherche sur code postal
                   INQUIRE Screen1-Ef-CP, VALUE IN W-CP-ECR
      **             MOVE 1 TO Ef-Pos-Ind
      **             COPY "../../mistral/copy/Ef-Pos-Ecr2Fic.cbl"
      **             REPLACING ==CPYPOS-PAYS== BY ==PAY-MPAR==
      **                    ==CPYPOS-FIC== BY ==W-CP-FIC==
      **                    ==CPYPOS-ECR== BY ==W-CP-ECR==
      **                    ==CPYPOS-VIL== BY ==W-VILLE==.
      **             MODIFY Screen1-Ef-CP, VALUE = W-CP-ECR
                   IF W-CP-FIC NOT = SPACE THEN
                     PERFORM Recherche-CP
                     PERFORM AFFICHE-RECH
                   ELSE
                     PERFORM Curseur-Fleche
                     EXIT PARAGRAPH
                   END-IF
               WHEN 8 | recherche sur ville
                   INQUIRE Screen1-Ef-VILLE, VALUE IN W-VILLE
                   IF W-VILLE NOT = SPACE THEN
                     PERFORM Recherche-Ville
                     PERFORM AFFICHE-RECH
                   ELSE
                     PERFORM Curseur-Fleche
                     EXIT PARAGRAPH
                   END-IF
               WHEN 9 | recherche sur un pays
                   IF W-PAYS NOT = SPACE THEN
                     PERFORM Recherche-Pays
                     PERFORM AFFICHE-RECH
                   ELSE
                     PERFORM Curseur-Fleche
                     EXIT PARAGRAPH
                   END-IF
270213         WHEN 10 | recherche sur un pays
                   IF w-selMarque NOT = SPACE THEN
                     PERFORM Init-Grille-Garantie
                   ELSE
                     PERFORM Curseur-Fleche
                     EXIT PARAGRAPH
                   END-IF
               WHEN OTHER
                   PERFORM Curseur-Fleche
                   EXIT PARAGRAPH
           END-EVALUATE
           PERFORM Curseur-Fleche
           perform Mistral-Transferfocus
      *     MOVE 4 TO ACCEPT-CONTROL
      *     MOVE 6 TO CONTROL-ID
           .
      *
       Screen1-DaRb-Ord3-Ev-Cmd-Clicked.
           MODIFY Screen1-La-Titre, TITLE = "A partir de"
           MODIFY Screen1-Ef-Tel, VISIBLE TRUE
           MODIFY Screen1-Ef-Rai, VISIBLE FALSE
           MODIFY Screen1-Ef-Cod, VISIBLE FALSE
           MODIFY Screen1-Ef-SIREN, VISIBLE FALSE
           MODIFY Screen1-Ef-TVA, VISIBLE FALSE
           MODIFY Screen1-La-Rech, VISIBLE FALSE
           MODIFY Screen1-Ef-VILLE, VISIBLE FALSE
           MODIFY Screen1-Ef-CP, VISIBLE FALSE
           MODIFY Screen1-Pb-CP, VISIBLE FALSE
           MODIFY Screen1-Cm-PAYS, VISIBLE FALSE
           MODIFY Screen1-Ef-Interlocuteur, VISIBLE FALSE
270213     MODIFY Screen1-Ef-Marque, VISIBLE FALSE
270213     MODIFY Screen1-Pb-BrowseMarque, VISIBLE FALSE
           MOVE 4 TO ACCEPT-CONTROL
           MOVE 46 TO CONTROL-ID
150408     PERFORM Mistral-TransferFocus
           .
      *
       Screen1-DaRb-Ord2-Ev-Cmd-Clicked.
           MODIFY Screen1-La-Titre, TITLE = "A partir de"
           MODIFY Screen1-La-Rech, VISIBLE TRUE
           MODIFY Screen1-Ef-Tel, VISIBLE FALSE
           MODIFY Screen1-Ef-Rai, VISIBLE TRUE
           MODIFY Screen1-Ef-Cod, VISIBLE FALSE
           MODIFY Screen1-Ef-SIREN, VISIBLE FALSE
           MODIFY Screen1-Ef-TVA, VISIBLE FALSE
           MODIFY Screen1-Ef-VILLE, VISIBLE FALSE
           MODIFY Screen1-Ef-CP, VISIBLE FALSE
           MODIFY Screen1-Pb-CP, VISIBLE FALSE
           MODIFY Screen1-Cm-PAYS, VISIBLE FALSE
           MODIFY Screen1-Ef-Interlocuteur, VISIBLE FALSE
270213     MODIFY Screen1-Ef-Marque, VISIBLE FALSE
270213     MODIFY Screen1-Pb-BrowseMarque, VISIBLE FALSE
           MOVE 4 TO ACCEPT-CONTROL
           MOVE 36 TO CONTROL-ID
150408     
           IF W-DEB = 0 THEN
              PERFORM Mistral-TransferFocus
           END-IF
150408
           .
      *
       Screen1-DaRb-Ord1-Ev-Cmd-Clicked.
           MODIFY Screen1-La-Titre, TITLE = "A partir de"
           MODIFY Screen1-Ef-Tel, VISIBLE FALSE
           MODIFY Screen1-Ef-Rai, VISIBLE FALSE
           MODIFY Screen1-Ef-SIREN, VISIBLE FALSE
           MODIFY Screen1-La-Rech, VISIBLE FALSE
           MODIFY Screen1-Ef-TVA, VISIBLE FALSE
           MODIFY Screen1-Ef-VILLE, VISIBLE FALSE
           MODIFY Screen1-Ef-CP, VISIBLE FALSE
           MODIFY Screen1-Pb-CP, VISIBLE FALSE
           MODIFY Screen1-Cm-PAYS, VISIBLE FALSE
           MODIFY Screen1-Ef-Interlocuteur, VISIBLE FALSE
270213     MODIFY Screen1-Ef-Marque, VISIBLE FALSE
270213     MODIFY Screen1-Pb-BrowseMarque, VISIBLE FALSE
           MODIFY Screen1-Ef-Cod, VISIBLE TRUE
           MOVE 4 TO ACCEPT-CONTROL
           MOVE 16 TO CONTROL-ID
150408     PERFORM Mistral-TransferFocus
           .
      *
       Screen1-DaRb-Ord4-Ev-Cmd-Clicked.
           MODIFY Screen1-La-Titre, TITLE = "N° SIREN"
           MODIFY Screen1-La-Rech, VISIBLE FALSE
           MODIFY Screen1-Ef-Tel, VISIBLE FALSE
           MODIFY Screen1-Ef-Rai, VISIBLE FALSE
           MODIFY Screen1-Ef-Cod, VISIBLE FALSE
           MODIFY Screen1-Ef-TVA, VISIBLE FALSE
           MODIFY Screen1-Ef-SIREN, VISIBLE TRUE
           MODIFY Screen1-Ef-VILLE, VISIBLE FALSE
           MODIFY Screen1-Ef-CP, VISIBLE FALSE
           MODIFY Screen1-Pb-CP, VISIBLE FALSE
           MODIFY Screen1-Cm-PAYS, VISIBLE FALSE
           MODIFY Screen1-Ef-Interlocuteur, VISIBLE FALSE
270213     MODIFY Screen1-Ef-Marque, VISIBLE FALSE
270213     MODIFY Screen1-Pb-BrowseMarque, VISIBLE FALSE
           MOVE 4 TO ACCEPT-CONTROL
           MOVE 56 TO CONTROL-ID
150408     PERFORM Mistral-TransferFocus
           .
      *
       Screen1-DaRb-Ord5-Ev-Cmd-Clicked.
           MODIFY Screen1-La-Titre, TITLE = "Interlocuteur"
           MODIFY Screen1-La-Rech, VISIBLE TRUE
           MODIFY Screen1-Ef-Tel, VISIBLE FALSE
           MODIFY Screen1-Ef-Rai, VISIBLE FALSE
           MODIFY Screen1-Ef-Cod, VISIBLE FALSE
           MODIFY Screen1-Ef-SIREN, VISIBLE FALSE
           MODIFY Screen1-Ef-TVA, VISIBLE FALSE
           MODIFY Screen1-Ef-VILLE, VISIBLE FALSE
           MODIFY Screen1-Ef-CP, VISIBLE FALSE
           MODIFY Screen1-Pb-CP, VISIBLE FALSE
           MODIFY Screen1-Cm-PAYS, VISIBLE FALSE
           MODIFY Screen1-Ef-Interlocuteur, VISIBLE TRUE
270213     MODIFY Screen1-Ef-Marque, VISIBLE FALSE
270213     MODIFY Screen1-Pb-BrowseMarque, VISIBLE FALSE
           MOVE 4 TO ACCEPT-CONTROL
           MOVE 66 TO CONTROL-ID
150408     PERFORM Mistral-TransferFocus
           .
      *
       Screen1-DaRb-Ord6-Ev-Cmd-Clicked.
           MODIFY Screen1-La-Titre, TITLE = "N° TVA"
           MODIFY Screen1-La-Rech, VISIBLE FALSE
           MODIFY Screen1-Ef-Tel, VISIBLE FALSE
           MODIFY Screen1-Ef-Rai, VISIBLE FALSE
           MODIFY Screen1-Ef-Cod, VISIBLE FALSE
           MODIFY Screen1-Ef-SIREN, VISIBLE FALSE
           MODIFY Screen1-Ef-TVA, VISIBLE TRUE
           MODIFY Screen1-Ef-VILLE, VISIBLE FALSE
           MODIFY Screen1-Ef-CP, VISIBLE FALSE
           MODIFY Screen1-Pb-CP, VISIBLE FALSE
           MODIFY Screen1-Cm-PAYS, VISIBLE FALSE
           MODIFY Screen1-Ef-Interlocuteur, VISIBLE FALSE
270213     MODIFY Screen1-Ef-Marque, VISIBLE FALSE
270213     MODIFY Screen1-Pb-BrowseMarque, VISIBLE FALSE
           MOVE 4 TO ACCEPT-CONTROL
           MOVE 76 TO CONTROL-ID
150408     PERFORM Mistral-TransferFocus
           .
      *
       Screen1-DaRb-Ord7-Ev-Cmd-Clicked.
           MODIFY Screen1-La-Titre, TITLE = "Code postal"
           MODIFY Screen1-La-Rech, VISIBLE FALSE
           MODIFY Screen1-Ef-Tel, VISIBLE FALSE
           MODIFY Screen1-Ef-Rai, VISIBLE FALSE
           MODIFY Screen1-Ef-Cod, VISIBLE FALSE
           MODIFY Screen1-Ef-SIREN, VISIBLE FALSE
           MODIFY Screen1-Ef-TVA, VISIBLE FALSE
           MODIFY Screen1-Ef-VILLE, VISIBLE FALSE
           MODIFY Screen1-Ef-CP, VISIBLE TRUE
           MODIFY Screen1-Pb-CP, VISIBLE TRUE
           MODIFY Screen1-Cm-PAYS, VISIBLE FALSE
           MODIFY Screen1-Ef-Interlocuteur, VISIBLE FALSE
270213     MODIFY Screen1-Ef-Marque, VISIBLE FALSE
270213     MODIFY Screen1-Pb-BrowseMarque, VISIBLE FALSE
           MOVE 4 TO ACCEPT-CONTROL
           MOVE 86 TO CONTROL-ID
150408     PERFORM Mistral-TransferFocus
           .
      *
       Screen1-DaRb-Ord8-Ev-Cmd-Clicked.
           MODIFY Screen1-La-Titre, TITLE = "Ville"
           MODIFY Screen1-La-Rech, VISIBLE FALSE
           MODIFY Screen1-Ef-Tel, VISIBLE FALSE
           MODIFY Screen1-Ef-Rai, VISIBLE FALSE
           MODIFY Screen1-Ef-Cod, VISIBLE FALSE
           MODIFY Screen1-Ef-SIREN, VISIBLE FALSE
           MODIFY Screen1-Ef-TVA, VISIBLE FALSE
           MODIFY Screen1-Ef-VILLE, VISIBLE TRUE
           MODIFY Screen1-Ef-CP, VISIBLE FALSE
           MODIFY Screen1-Pb-CP, VISIBLE FALSE
           MODIFY Screen1-Cm-PAYS, VISIBLE FALSE
           MODIFY Screen1-Ef-Interlocuteur, VISIBLE FALSE
270213     MODIFY Screen1-Ef-Marque, VISIBLE FALSE
270213     MODIFY Screen1-Pb-BrowseMarque, VISIBLE FALSE
           MOVE 4 TO ACCEPT-CONTROL
           MOVE 96 TO CONTROL-ID
150408     PERFORM Mistral-TransferFocus
           .
      *
       Screen1-DaRb-Ord9-Ev-Cmd-Clicked.
           MODIFY Screen1-La-Titre, TITLE = "Pays"
           MODIFY Screen1-La-Rech, VISIBLE FALSE
           MODIFY Screen1-Ef-Tel, VISIBLE FALSE
           MODIFY Screen1-Ef-Rai, VISIBLE FALSE
           MODIFY Screen1-Ef-Cod, VISIBLE FALSE
           MODIFY Screen1-Ef-SIREN, VISIBLE FALSE
           MODIFY Screen1-Ef-TVA, VISIBLE FALSE
           MODIFY Screen1-Ef-VILLE, VISIBLE FALSE
           MODIFY Screen1-Ef-CP, VISIBLE FALSE
           MODIFY Screen1-Pb-CP, VISIBLE FALSE
           MODIFY Screen1-Ef-Interlocuteur, VISIBLE FALSE
270213     MODIFY Screen1-Ef-Marque, VISIBLE FALSE
270213     MODIFY Screen1-Pb-BrowseMarque, VISIBLE FALSE
           MODIFY Screen1-Cm-PAYS, VISIBLE TRUE
      * Initialisation de la combo des Pays...
      **     MOVE W-PAYS TO Cm-PAY-SelectedItem
      **     PERFORM Screen1-Cm-PAYS-Refresh
           MOVE 4 TO ACCEPT-CONTROL
           MOVE 106 TO CONTROL-ID
150408     PERFORM Mistral-TransferFocus
           .

270213 Screen1-DaRb-Ord10-Ev-Cmd-Clicked.
           MODIFY Screen1-La-Titre, TITLE = "Marque"
           MODIFY Screen1-La-Rech, VISIBLE FALSE
           MODIFY Screen1-Ef-Tel, VISIBLE FALSE
           MODIFY Screen1-Ef-Rai, VISIBLE FALSE
           MODIFY Screen1-Ef-Cod, VISIBLE FALSE
           MODIFY Screen1-Ef-SIREN, VISIBLE FALSE
           MODIFY Screen1-Ef-TVA, VISIBLE FALSE
           MODIFY Screen1-Ef-VILLE, VISIBLE FALSE
           MODIFY Screen1-Ef-CP, VISIBLE FALSE
           MODIFY Screen1-Pb-CP, VISIBLE FALSE
           MODIFY Screen1-Cm-PAYS, VISIBLE FALSE
           MODIFY Screen1-Ef-Interlocuteur, VISIBLE FALSE
           MODIFY Screen1-Ef-Marque, VISIBLE TRUE
           MODIFY Screen1-Pb-BrowseMarque, VISIBLE TRUE
           MOVE 4 TO ACCEPT-CONTROL
           MOVE 71 TO CONTROL-ID
           PERFORM Mistral-TransferFocus
           .
      *
       Screen1-Ev-Cmd-Close.
           PERFORM Mistral-WindowClosing
           .
      *
       Screen1-Bef-Create.
           PERFORM Controle-Call
           PERFORM Open-File-Rtn
           PERFORM Init-BMP
020419   
020819*     IF LK-MFOU-L-HANDLE <> 0 THEN  
020819     IF HANDLE-PALM <> 0 THEN  
      *       Pour éviter le clignotement de l'écran repositionné
              MOVE 0 TO Screen1-Visible
           ELSE
              MOVE 1 TO Screen1-Visible
           END-IF
020419
           .
      *
       Screen1-Aft-Routine.
           PERFORM Close-File-Rtn
           .
      *
       Screen1-Ef-Rai-Bef-Procedure.
           MODIFY Screen1-La-Rech, VISIBLE TRUE
           .
      *
      *
      *    RECHERCHE PAR "rechv4"
      *
      *
       Recherche-Raisoc.
           perform Assign-Fic
      
           MOVE "FOU" TO CMD-RECH-FIC
           MOVE MX-DIR TO CMD-RECH-DIR
           MOVE ASSIGN-RECH TO CMD-RECH-RESULT
           MOVE 1 TO CMD-RECH-DEBSOR
           MOVE 79 TO CMD-RECH-FINSOR
      
           MOVE RECORD-POSITION OF RAI-MFOU TO CMD-RECH-POSR(1)
           MOVE LENGTH OF RAI-MFOU TO CMD-RECH-LONR(1)
           MOVE W-RAI(2:24) TO CMD-RECH-VAL(1)
           MOVE "s2" TO CMD-RECH-OPE(1)
      
           MOVE "T" TO CMD-RECH-T(1)
           MOVE 19 TO CMD-RECH-POSDT(1)
           MOVE 49 TO CMD-RECH-POSFT(1)
      
      *     MOVE SPACE TO CMD-RECH
      *     STRING CMD-RECH-BASE CMD-RECH-CONDI(1)
      *            CMD-RECH-TRI(1) FIN-CMD-RECH DELIMITED BY SIZE 
      *            INTO CMD-RECH
      *     CALL "SYSTEM" USING CMD-RECH
           COPY "W:/mistral/copy/rech.cbl". 
           .
      *
       Recherche-Siren.
           perform Assign-Fic
      
           MOVE "FOU" TO CMD-RECH-FIC
           MOVE MX-DIR TO CMD-RECH-DIR
           MOVE ASSIGN-RECH TO CMD-RECH-RESULT
           MOVE 1 TO CMD-RECH-DEBSOR
           MOVE 79 TO CMD-RECH-FINSOR
      
131114*     MOVE RECORD-POSITION OF SIR-MFOU TO CMD-RECH-POSR(1)
      *     MOVE LENGTH OF SIR-MFOU TO CMD-RECH-LONR(1)
131114     MOVE RECORD-POSITION OF SIR1-MFOU TO CMD-RECH-POSR(1)
131114     MOVE LENGTH OF SIR1-MFOU TO CMD-RECH-LONR(1)
           MOVE W-SIREN TO CMD-RECH-VAL(1)
           MOVE "==" TO CMD-RECH-OPE(1)
      
           MOVE "T" TO CMD-RECH-T(1)
           MOVE 19 TO CMD-RECH-POSDT(1)
           MOVE 49 TO CMD-RECH-POSFT(1)
      
      *     MOVE SPACE TO CMD-RECH
      *     STRING CMD-RECH-BASE CMD-RECH-CONDI(1)
      *            CMD-RECH-TRI(1) FIN-CMD-RECH DELIMITED BY SIZE 
      *            INTO CMD-RECH
      *     CALL "SYSTEM" USING CMD-RECH
           COPY "W:/mistral/copy/rech.cbl".
           .
      *
       Recherche-TVA.
      **     perform Assign-Fic
      **
      **     MOVE "FOU" TO CMD-RECH-FIC
      **     MOVE CX-DIR TO CMD-RECH-DIR
      **     MOVE ASSIGN-RECH TO CMD-RECH-RESULT
      **     MOVE 1 TO CMD-RECH-DEBSOR
140409***     MOVE 79 TO CMD-RECH-FINSOR Sinon les retour-chariots de l'adresse génèrent des faux enregistrements
140409**     MOVE 8 TO CMD-RECH-FINSOR 
      **
      **     MOVE RECORD-POSITION OF TVA-CFOU TO CMD-RECH-POSR(1)
      **     MOVE LENGTH OF TVA-CFOU TO CMD-RECH-LONR(1)
      **     MOVE W-TVA TO CMD-RECH-VAL(1)
      **     MOVE "==" TO CMD-RECH-OPE(1)
      **     MOVE "T" TO CMD-RECH-T(1)
      **     MOVE 1 TO CMD-RECH-POSDT(1)
      **     MOVE 9 TO CMD-RECH-POSFT(1)
      **     
      ***     MOVE SPACE TO CMD-RECH
      ***     STRING CMD-RECH-BASE CMD-RECH-CONDI(1)
      ***            CMD-RECH-TRI(1) FIN-CMD-RECH DELIMITED BY SIZE 
      ***            INTO CMD-RECH
      ***     CALL "SYSTEM" USING CMD-RECH
      **     COPY "W:/mistral/copy/rech.cbl".
           .
      *
       Recherche-Ville.
           perform Assign-Fic

           MOVE "FOU" TO CMD-RECH-FIC
           MOVE MX-DIR TO CMD-RECH-DIR
           MOVE ASSIGN-RECH TO CMD-RECH-RESULT
           MOVE 1 TO CMD-RECH-DEBSOR
           MOVE 79 TO CMD-RECH-FINSOR
      
           MOVE RECORD-POSITION OF VIL-MFOU TO CMD-RECH-POSR(1)
           MOVE LENGTH OF VIL-MFOU TO CMD-RECH-LONR(1)
           MOVE W-VILLE TO CMD-RECH-VAL(1)
           MOVE "s2" TO CMD-RECH-OPE(1)
           MOVE "T" TO CMD-RECH-T(1)
           MOVE 19 TO CMD-RECH-POSDT(1)
           MOVE 49 TO CMD-RECH-POSFT(1)
           
      *     MOVE SPACE TO CMD-RECH
      *     STRING CMD-RECH-BASE CMD-RECH-CONDI(1)
      *            CMD-RECH-TRI(1) FIN-CMD-RECH DELIMITED BY SIZE 
      *            INTO CMD-RECH
      *     CALL "SYSTEM" USING CMD-RECH
           COPY "W:/mistral/copy/rech.cbl".

           .
      *
       Recherche-CP.
           perform Assign-Fic
      
           MOVE "FOU" TO CMD-RECH-FIC
           MOVE MX-DIR TO CMD-RECH-DIR
           MOVE ASSIGN-RECH TO CMD-RECH-RESULT
           MOVE 1 TO CMD-RECH-DEBSOR
           MOVE 79 TO CMD-RECH-FINSOR
           MOVE RECORD-POSITION OF POS-MFOU TO CMD-RECH-POSR(1)
           MOVE LENGTH OF POS-MFOU TO CMD-RECH-LONR(1)
           MOVE W-CP-FIC TO CMD-RECH-VAL(1)
           MOVE "==" TO CMD-RECH-OPE(1)
           MOVE "T" TO CMD-RECH-T(1)
           MOVE 19 TO CMD-RECH-POSDT(1)
           MOVE 49 TO CMD-RECH-POSFT(1)
      *     MOVE SPACE TO CMD-RECH
      *     STRING CMD-RECH-BASE CMD-RECH-CONDI(1)
      *            CMD-RECH-TRI(1) FIN-CMD-RECH DELIMITED BY SIZE 
      *            INTO CMD-RECH
      *     CALL "SYSTEM" USING CMD-RECH
           COPY "W:/mistral/copy/rech.cbl".
           .
      *
       Recherche-Pays.
           perform Assign-Fic
      
           MOVE "FOU" TO CMD-RECH-FIC
           MOVE MX-DIR TO CMD-RECH-DIR
           MOVE ASSIGN-RECH TO CMD-RECH-RESULT
           MOVE 1 TO CMD-RECH-DEBSOR
           MOVE 79 TO CMD-RECH-FINSOR
           MOVE RECORD-POSITION OF PAY-MFOU TO CMD-RECH-POSR(1)
           MOVE LENGTH OF PAY-MFOU TO CMD-RECH-LONR(1)
           MOVE W-PAYS TO CMD-RECH-VAL(1)
           MOVE "==" TO CMD-RECH-OPE(1)
           MOVE "T" TO CMD-RECH-T(1)
           MOVE 19 TO CMD-RECH-POSDT(1)
           MOVE 49 TO CMD-RECH-POSFT(1)
      *     MOVE SPACE TO CMD-RECH
      *     STRING CMD-RECH-BASE CMD-RECH-CONDI(1)
      *            CMD-RECH-TRI(1) FIN-CMD-RECH DELIMITED BY SIZE 
      *            INTO CMD-RECH
      *     CALL "SYSTEM" USING CMD-RECH
           COPY "W:/mistral/copy/rech.cbl".
           .
      
      *-----------------------------------------*
      *  Recherche directe des Interlocuteurs   *
      *-----------------------------------------*
       Recherche1-Interlocuteur.
      *
       AFFICHE-RECH.
      * Remise à zéro de la grille...
           MODIFY Screen1-Gd-1, RESET-GRID = 1|, MASS-UPDATE = 1, 
           PERFORM Acu-Screen1-Gd-1-Content
      *     display message command
           
      * Remplissage de la grille...
           OPEN INPUT RECH
           PERFORM STAT
           INITIALIZE ENR-MFOU
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
              IF W-EOF NOT = 1 THEN
                MOVE ENR-RECH(1:6) TO COD-MFOU
                READ MXFOU NOT INVALID
                  IF (LK-MFOU-L-MSL = 1 AND CSL-MFOU NOT = 1)
               OR (LK-MFOU-L-NTF = 1 AND NTF-MFOU <> 0 AND <> 2)
               OR (LK-MFOU-L-NTF = 2 AND NTF-MFOU <> 1 AND <> 2)
                    CONTINUE
                  ELSE
                    PERFORM Mep-Un-Fou
                  END-IF
                END-READ
                PERFORM STAT
              END-IF
           END-PERFORM

           CLOSE RECH
           DELETE FILE RECH

      * Positionnement du curseur sur la grille...
           MODIFY Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old),
                  CURSOR-Y = Screen1-Gd-1-Cursor-Y-Old,
                  ROW-COLOR = 257,
                  |MASS-UPDATE = 0
      * affichage du nombre d'éléments trouvés 
           ADD -1 Tmp-9-3 GIVING Tmp-9-3-FIC
           MOVE Tmp-9-3-FIC TO Tmp-9-3-ECR
           STRING Tmp-9-3-ECR DELIMITED BY SIZE
                  " "
                  "élément(s) trouvé(s) correspondant(s) au critère" 
                  DELIMITED BY SIZE
                  INTO W-NB-ELT
           MODIFY Screen1-La-nb-elt, VISIBLE TRUE
           MODIFY Screen1-La-nb-elt, TITLE = W-NB-ELT
      * Patch : sans ça, la grille peut parfois mélanger les lignes...
           MOVE SPACES TO Screen1-Gd-1-Record
           .
      *
       AFFICHE-RECH-TVA.
      * Remise à zéro de la grille...
           MODIFY Screen1-Gd-1, RESET-GRID = 1|, MASS-UPDATE = 1, 
           PERFORM Acu-Screen1-Gd-1-Content
      *     display message command
      
      * Remplissage de la grille...
           OPEN INPUT RECH
           PERFORM STAT
           MOVE 0 TO W-EOF
           MOVE 2 TO Screen1-Gd-1-Cursor-Y-Old
           MOVE SPACES TO Screen1-Gd-1-COD
           MOVE 1 TO Tmp-9-3
           MOVE 0 TO W-NBR
           PERFORM UNTIL W-EOF = 1
              MOVE SPACE TO ENR-RECH
              READ RECH NEXT END MOVE 1 TO W-EOF
              END-READ
              PERFORM STAT
              IF W-EOF NOT = 1 THEN
                 INITIALIZE ENR-MFOU
140409           MOVE ENR-RECH(1:8) TO CPT-MFOU
140409*           READ MXFOU KEY CLE5-MFOU NOT INVALID
140409
                 START MXFOU KEY >= CLE5-MFOU
                 NOT INVALID

                    PERFORM STAT

                    READ MXFOU NEXT
                    AT END
                       MOVE HIGH-VALUE TO CPT-MFOU
                    END-READ

                    PERFORM STAT

                    PERFORM
                       UNTIL CPT-MFOU <> ENR-RECH(1:8)
140409
                       IF (LK-MFOU-L-MSL = 1 AND CSL-MFOU NOT = 1)
                       OR (LK-MFOU-L-NTF = 1 AND NTF-MFOU <> 0
                                                      AND <> 2)
                       OR (LK-MFOU-L-NTF = 2 AND NTF-MFOU <> 1 
                                                    AND <> 2)
                          CONTINUE
                       ELSE
                          PERFORM Mep-Un-Fou
                       END-IF
140409
                       READ MXFOU NEXT
                       AT END
                          MOVE HIGH-VALUE TO CPT-MFOU
                       END-READ

                       PERFORM STAT

                    END-PERFORM

                 END-START
140409           
140409*           END-READ
140409*           PERFORM STAT
              END-IF
           END-PERFORM
           CLOSE RECH
           DELETE FILE RECH
      
      * Positionnement du curseur sur la grille...
           MODIFY Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old),
                  CURSOR-Y = Screen1-Gd-1-Cursor-Y-Old,
                  ROW-COLOR = 257,
                  |MASS-UPDATE = 0
      * affichage du nombre d'éléments trouvés 
           ADD -1 Tmp-9-3 GIVING Tmp-9-3-FIC
           MOVE Tmp-9-3-FIC TO Tmp-9-3-ECR
           STRING Tmp-9-3-ECR DELIMITED BY SIZE
                  " "
                  "élément(s) trouvé(s) correspondant(s) au critère" 
                  DELIMITED BY SIZE
                  INTO W-NB-ELT
           MODIFY Screen1-La-nb-elt, VISIBLE TRUE
           MODIFY Screen1-La-nb-elt, TITLE = W-NB-ELT
      * Patch : sans ça, la grille peut parfois mélanger les lignes...
           MOVE SPACES TO Screen1-Gd-1-Record
           .
      *
       AFFICHE-RECH-INTERLOCUTEUR.
      *
       Siren-Ecr2Fic.
           MOVE W-SIREN TO W-SIR
           MODIFY Screen1-Ef-SIREN, VALUE W-SIR
           .
      
      *
       Screen1-Ef-SIREN-Bef-Procedure.
           MODIFY Screen1-Ef-SIREN VALUE W-SIREN
           .
      *
       Screen1-Pb-CP-Link.
      **     | liste des codes postaux
      **     INITIALIZE LK-CDP-L
      **     MOVE PAY-MPAR TO LK-CDP-L-PAY
040419**     MOVE Screen1-Handle TO LK-CDP-L-handle
      **     CALL "../../mistral/o/cdp-l.acu" USING ZONE-PALM LK-CDP-L
      **     CANCEL "../../mistral/o/cdp-l.acu"
      **     IF LK-CDP-L-POS = SPACE
      **         EXIT PARAGRAPH
      **     END-IF
      **     MOVE LK-CDP-L-POS TO W-CP-FIC
      **     COPY "../../mistral/copy/Ef-Pos-Fic2Ecr.cbl"
      **          REPLACING ==CPYPOS-PAYS== BY ==PAY-MPAR==
      **                    ==CPYPOS-FIC==  BY ==W-CP-FIC==
      **                    ==CPYPOS-ECR==  BY ==W-CP-ECR==
      **                    ==CPYPOS-VIL==  BY ==W-VIL==.
      **     MODIFY Screen1-Ef-CP, VALUE = W-CP-ECR
           .
      *
       Screen1-Cm-PAYS-Ex-Ntf-Selchange.
      **     INQUIRE Screen1-Cm-PAYS,
      **             VALUE IN Cm-PAY-Items(1)
      **     MOVE Cm-PAY-COD(1) TO W-PAYS
           .
      *
       Screen1-Cm-PAYS-Refresh.
      **     COPY "../../mx/copy/Cm-PAY.cbl"
      **          REPLACING ==DCN-COMBO== BY ==Screen1-Cm-PAYS==.
           .
       RECH-FOU-GAR.
           MODIFY Screen1-DaRb-ORD1 ENABLED FALSE
           MODIFY Screen1-DaRb-ORD2 ENABLED FALSE
           MODIFY Screen1-DaRb-ORD3 ENABLED FALSE
           MODIFY Screen1-DaRb-ORD4 ENABLED FALSE
           MODIFY Screen1-DaRb-ORD5 ENABLED FALSE
           MODIFY Screen1-DaRb-ORD6 ENABLED FALSE
           MODIFY Screen1-DaRb-ORD7 ENABLED FALSE
           MODIFY Screen1-DaRb-ORD8 ENABLED FALSE
           MODIFY Screen1-DaRb-ORD9 ENABLED FALSE
270213     MODIFY Screen1-DaRb-ORD10 ENABLED FALSE
           MODIFY Screen1-PB-Lancer VISIBLE FALSE
           MODIFY Screen1-La-TITRE VISIBLE FALSE
           MODIFY Screen1-Ef-RAI VISIBLE FALSE
           MODIFY Screen1-La-Rech VISIBLE FALSE
270213     MODIFY Screen1-Ef-Marque, VISIBLE FALSE
270213     MODIFY Screen1-Pb-BrowseMarque, VISIBLE FALSE
           PERFORM INIT-GRILLE-GARANTIE
           .
       Init-Grille-Garantie.
      *** Remise à zéro de la grille...
      **     MODIFY Screen1-Gd-1, MASS-UPDATE = 1, RESET-GRID = 1
      **     PERFORM Acu-Screen1-Gd-1-Content
      **
      *** Remplissage de la grille...
      **     INITIALIZE ENR-MMFO
      **     MOVE 0 TO W-EOF
270213**     IF LK-MFOU-L-IDG = 1 THEN
      **        MOVE LK-MFOU-L-MAR TO MAR-MMFO
270213**
      **     ELSE
      **        MOVE w-selMarque   TO MAR-MMFO
      **     END-IF
270213**
      **     MOVE 2 TO Screen1-Gd-1-Cursor-Y-Old
      **     MOVE SPACES TO Screen1-Gd-1-COD
      **     MOVE 1 TO Tmp-9-3
      **     MOVE 0 TO W-NBR
      **     PERFORM UNTIL (W-EOF = 1) 
      **                OR (     MAR-MMFO NOT = LK-MFOU-L-MAR
270213**                     AND LK-MFOU-L-IDG = 1 )
270213**                OR (     LK-MFOU-L-IDG = 0
270213**                     AND MAR-MMFO NOT = w-selMarque )
      **         MOVE FOU-MMFO TO COD-MFOU
      **         MOVE 1 TO W-SELECT
      **         PERFORM READ-MXFOU
      **         IF W-SELECT = 1 THEN
      **           IF ( (LK-MFOU-L-MSL = 1 AND CSL-MFOU NOT = 1)
      **                OR (LK-MFOU-L-NTF = 1 AND NTF-MFOU <> 0 AND <> 2)
      **                OR (LK-MFOU-L-NTF = 2 AND NTF-MFOU <> 1 AND <> 2))
270213**           AND LK-MFOU-L-IDG = 1
      **             CONTINUE
      **           ELSE
      **             PERFORM Mep-Un-Fou
      **           END-IF
      **         END-IF
      **     END-PERFORM 
      *** Positionnement du curseur sur la grille...
      **     MODIFY Screen1-Gd-1,
      **            Y = Screen1-Gd-1-Cursor-Y-Old,
      **            CURSOR-Y = Screen1-Gd-1-Cursor-Y-Old,
      **            ROW-COLOR = 257,
      **            MASS-UPDATE = 0
      **
      *** Patch : sans ça, la grille peut parfois mélanger les lignes...
      **     MOVE SPACES TO Screen1-Gd-1-Record
      **     IF  W-NBR = 1 
270213**     AND LK-MFOU-L-IDG = 1 THEN | un seul fournisseur, on le récupère en sortie
      **       PERFORM Screen1-Pb-Accept-Ex-Cmd-Clicked
      **     END-IF
           .
       READ-MXFOU.
           READ MXFOU INVALID
             MOVE SPACE TO ENR-MFOU
             MOVE 0 TO W-SELECT
           END-READ
           IF NDG-MFOU = 0 
130513     AND LK-MFOU-L-IDG = 1
             MOVE 0 TO W-SELECT
           END-IF
           PERFORM STAT
           .

       Assign-Fic.
           COPY "../../mx/copy/Assign-FICTMP.cbl" 
                    REPLACING ==FICTMP==   BY ==RECH==
                              =='FICTMP'== BY ==RECH==.
           CLOSE RECH.

   
      *
270213 Screen1-Ef-Marque-BeforeProcedure.
           if w-selMarque not = spaces
             modify Screen1-Ef-Marque, value = w-selMarque
           end-if
           .

270213 Screen1-Ef-Marque-Ev-Msg-Validate.
           move spaces to s
           inquire Screen1-Ef-Marque, value in s
           if s = spaces
             move spaces to w-selMarque w-selMarqueLib 
           else
             if s = w-selMarque
               modify Screen1-Ef-Marque, value = w-selMarqueLib
             else
               move s to COD-MMAR
               move 1 to w-exi
               read MXMARQUE invalid move 0 to w-exi
               end-read
               perform stat
               if w-exi = 1
                 move s to w-selMarque
                 move LIB-MMAR to w-selMarqueLib
                 modify Screen1-Ef-Marque, value = w-selMarqueLib
               else
                 move event-action-continue to event-action
               end-if
             end-if
           end-if
           .

270213 Screen1-Pb-BrowseMarque-LinkTo.

           INITIALIZE LK-LISTE

           IF w-selMarque <> SPACE THEN
              move w-selMarque to lk-liste-cod   OF LK-LISTE(1)
              MOVE 1           TO LK-LISTE-NBSEL OF LK-LISTE
           END-IF
040419*     MOVE Screen1-Handle TO LK-LISTE-handle
020819     MOVE Screen1-Handle TO handle-PALM

           call   "mmar-l.acu" using zone-palm lk-liste
           cancel "mmar-l.acu"

           IF LK-LISTE-NBSEL OF LK-LISTE = 1 
              INITIALIZE ENR-MMAR
              move lk-liste-cod OF LK-LISTE(1) to w-selMarque
                                   COD-MMAR

              READ MXMARQUE

              PERFORM STAT

              move LIB-MMAR to w-selMarqueLib
           ELSE
              MOVE SPACE TO W-SELMARQUE
                            w-selMarqueLib
           END-IF
           modify Screen1-Ef-Marque, value = w-selMarqueLib
           .

      *


       

      *{Bench}end
       REPORT-COMPOSER SECTION.
