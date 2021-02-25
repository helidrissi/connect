      *{Bench}prg-comment
      * lstdir-l.cbl
      * lstdir-l.cbl is generated from W:\mx\spro\lstdir-l.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. lstdir-l.
       AUTHOR. nathalie.clair.
       DATE-WRITTEN. mercredi 22 janvier 2020 15:23:37.
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
      *{Bench}end
       COPY "W:\mx\fdt\SL-LSTDIR.cpy".
       DATA                        DIVISION.
       FILE                        SECTION.
      *{Bench}file
       COPY "COBCAP.fd".
      *{Bench}end
       COPY "W:\mx\fdt\FD-LSTDIR.cpy".
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
           COPY  "W:\mistral\copy\cobcap.wrk".
       77 Screen1-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 W-LOG-PALM       PIC  9(3).
       77 W-NPR-PALM       PIC  9(3).
       01 Screen1-Gd-1-Record.
           05 Gd-1-Col-fic     PIC  X(50).
       77 VALIDER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 QUITTER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FILE-STATUS      PIC  X(2).
           88 Valid-COBCAP VALUE IS "00" THRU "09". 
       77 Small-Font
                  USAGE IS HANDLE OF FONT SMALL-FONT.
       77 Default-Font
                  USAGE IS HANDLE OF FONT DEFAULT-FONT.
       77 W-LA-REPERTOIRE  PIC  X(65)
                  VALUE IS "Répertoire : ".
       77 W-SPECIF-FILE    PIC  X(15).
       01 W-RES
                  USAGE IS HANDLE VALUE NULL.
       77 W-FIC            PIC  X(50).
       77 ASSIGN-TRI       PIC  X(60).
       77 WASS-TRI         PIC  X(32)
                  VALUE IS "LSTDIR-".
       77 W-LAST           PIC  9(9).
       77 W-NUM            PIC  9(9).
       77 Screen1-Gd-1-Cursor-Y        PIC  9(9).
       77 Screen1-Mn-1-Handle
                  USAGE IS HANDLE OF MENU VALUE NULL.
       77 W-FULLNAME       PIC  X(132).
       77 RAFRAIC24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.

      *{Bench}end
       LINKAGE                     SECTION.
      *{Bench}linkage
       77 LK-ZONE-PALM     PIC  X(500).
           COPY  "W:\mx\copy\LK-LSTDIR-L.wrk".
      *{Bench}end
       SCREEN                      SECTION.
      *{Bench}copy-screen
       01 Screen1.
           03 Screen1-Gd-1, Grid, 
              COL 1,70, LINE 7,90, LINES 40,30 CELLS, SIZE 39,20 CELLS, 
              3-D, CENTERED-HEADINGS, COLOR IS 2, COLUMN-HEADINGS, 
              DATA-COLUMNS (1), 
              DISPLAY-COLUMNS (1, 0), 
              ALIGNMENT ("L"), 
              DATA-TYPES ("X(50)"), 
              SEPARATION (5), 
              CURSOR-FRAME-WIDTH 1, DIVIDER-COLOR w-divider-color, 
              DRAG-COLOR 2, END-COLOR w-end-color, 
              HEADING-COLOR w-heading-color, 
              HEADING-DIVIDER-COLOR w-heading-divider-color, ID IS 1, 
              NUM-COL-HEADINGS 1, NUM-ROWS W-NUM-ROWS, 
              POP-UP MENU IS Screen1-Mn-1-Handle, 
              RECORD-DATA Screen1-Gd-1-Record, TILED-HEADINGS, 
              VPADDING 50, VSCROLL, 
              EVENT PROCEDURE Screen1-Gd-1-Event-Proc.
           03 Screen1-Pb-Accepter, Push-Button, 
              COL 34,90, LINE 1,20, LINES 24, SIZE 24, 
              BITMAP-HANDLE VALIDER24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1901, ID IS 2, 
              TITLE "Accepter".
           03 Screen1-Pb-Quitter, Push-Button, 
              COL 38,10, LINE 1,20, LINES 24, SIZE 24, 
              BITMAP-HANDLE QUITTER24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1902, ID IS 3, 
              TITLE "Quitter sans sélection".
           03 Screen1-Fr-1, Frame, 
              COL 1,70, LINE 4,60, LINES 2,80 CELLS, SIZE 39,20 CELLS, 
              ENGRAVED, FILL-COLOR 16, FILL-PERCENT 50, FILL-COLOR2 16, 
              ID IS 4, BACKGROUND-LOW.
           03 Screen1-La-1, Label, 
              COL 2,20, LINE 5,50, LINES 1,50 CELLS, SIZE 38,10 CELLS, 
              COLOR IS 514, FONT IS Default-Font, ID IS 5, CENTER, 
              LABEL-OFFSET 0, TITLE W-LA-REPERTOIRE, TRANSPARENT.
           03 Screen1-Pb-Refresh, Push-Button, 
              COL 31,70, LINE 1,20, LINES 24, SIZE 24, 
              BITMAP-HANDLE RAFRAIC24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1015, ID IS 7, 
              TITLE "Rafraichir", VISIBLE 0.

      *{Bench}end

      *{Bench}linkpara
       PROCEDURE DIVISION USING LK-ZONE-PALM, LK-LSTDIR-L.
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
           COPY RESOURCE "VALIDER24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "VALIDER24.JPG", GIVING 
              VALIDER24-JPG
           COPY RESOURCE "QUITTER24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "QUITTER24.JPG", GIVING 
              QUITTER24-JPG
           COPY RESOURCE "RAFRAIC24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "RAFRAIC24.JPG", GIVING 
              RAFRAIC24-JPG
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
           IF VALIDER24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY VALIDER24-JPG
              MOVE 0 TO VALIDER24-JPG
           END-IF
           IF QUITTER24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY QUITTER24-JPG
              MOVE 0 TO QUITTER24-JPG
           END-IF
           IF RAFRAIC24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY RAFRAIC24-JPG
              MOVE 0 TO RAFRAIC24-JPG
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
      *    After-Routine
           .

       Acu-Screen1-Scrn.
           PERFORM Acu-Screen1-Create-Win
           PERFORM Acu-Screen1-Init-Data
           .

       Acu-Screen1-Create-Win.
           PERFORM Screen1-Bef-Create
      * display screen
              DISPLAY Floating GRAPHICAL WINDOW
                 LINES 47,70, SIZE 40,50, CELL HEIGHT 10, 
                 CELL WIDTH 10, COLOR IS 65793, LABEL-OFFSET 0, 
                 LINK TO THREAD, MODELESS, NO SCROLL, 
                 TITLE "SELECTION D'UN FICHIER", TITLE-BAR, USER-GRAY, 
                 USER-WHITE, VISIBLE 0, NO WRAP, 
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
      * Cells Settings
           MODIFY Screen1-Gd-1, X = 1, Y = 1, CELL-COLOR = 112, 
              CELL-DATA = "Fichiers disponibles", 
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
      * Screen1-Pb-Accepter Link To
              WHEN Key-Status = 1901
                 PERFORM Screen1-Pb-Accepter-Link
      * Screen1-Pb-Quitter Link To
              WHEN Key-Status = 1902
                 PERFORM Screen1-Pb-Quitter-Link
      * MI-Suppression Link To
              WHEN Key-Status = 1000
                 PERFORM Screen1-Mn-1-MI-Suppression-Link
      * Screen1-Pb-Refresh Link To
              WHEN Key-Status = 1015
                 PERFORM Screen1-Pb-Refresh-Link
           END-EVALUATE
           MOVE 1 TO Accept-Control
           .

       Acu-Close-Files.
      *    Before-Close
      *    After-Close
           .

      * COBCAP

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
              "Suppression", 1000
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
           WHEN Msg-Goto-Cell
              PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell-Drag
              PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell-Mouse
              PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Init-Menu
              PERFORM Screen1-Gd-1-Ev-Msg-Init-Menu
           END-EVALUATE
           .
      ***   start event editor code   ***
      ******************************************************************
      * LISTE DES FICHIERS D'UN REPERTOIRE AVEC FILTRE POSSIBLE SUR    *
      * EXTENSION                                                      *
      *                                                                *
      * Olivier DEVAUX                                      Avril 2007 *
      ******************************************************************
       COPY "W:/MISTRAL/COPY/ENVMIS.CBL".
190419*     COPY "W:/mistral/copy/centrefenetre.cbl".
060819     COPY "W:/mistral/copy/MisCentrefenetre.cbl".
      *-----------------------------------------------------------------
       CLOSE-FILE-RTN.
           CLOSE TRI
           DELETE FILE TRI
           .                                                  
      *-----------------------------------------------------------------
       Screen1-Bef-Create.
           PERFORM CONTROLE-CALL
           MOVE SPACE TO W-LA-REPERTOIRE
           STRING "Répertoire : " DELIMITED BY SIZE
                  LK-LSTDIR-L-REP DELIMITED BY "  "
                  INTO W-LA-REPERTOIRE
           PERFORM MEP-LISTE-FIC.

       MEP-LISTE-FIC.
      * ouverture fichier de tri
           COPY "../../mx/copy/Assign-FICTMP.cbl" REPLACING 
                ==FICTMP==   BY ==TRI==
                =='FICTMP'== BY ==TRI==.
           MOVE ZERO TO W-NUM

      *     c$list-directory ne retourne pas forcément la liste triée
      *     dans l'ordre alphabétique (ce n'est vrai que sur certaines machines)
      *     d'où l'utilisation d'un fichier de tri
      
      * Création du fichier de tri avec les fichiers du répertoire 
           MOVE SPACE TO W-SPECIF-FILE
           IF LK-LSTDIR-L-EXT NOT = SPACE
280518     AND NOT = "jpg"
             STRING LK-LSTDIR-L-PRE      DELIMITED BY " "
                    "*." LK-LSTDIR-L-EXT DELIMITED BY SIZE
                    INTO W-SPECIF-FILE
           ELSE
             STRING LK-LSTDIR-L-PRE DELIMITED BY " "
                    "*"             DELIMITED BY SIZE
                    INTO W-SPECIF-FILE
           END-IF
           CALL "C$LIST-DIRECTORY" 
                  USING LISTDIR-OPEN, LK-LSTDIR-L-REP, W-SPECIF-FILE
           MOVE RETURN-CODE TO W-RES
           IF W-RES = 0 THEN
             MOVE "Repertoire inexistant" TO ACU-MSG-1
             MOVE LK-LSTDIR-L-REP TO ACU-MSG-2
             PERFORM MSG-ERREUR
             GO Acu-Exit-Rtn
           END-IF
           PERFORM WITH TEST AFTER UNTIL W-FIC = SPACES
             CALL "C$LIST-DIRECTORY" 
                  USING LISTDIR-NEXT, W-RES, W-FIC, 
                        LISTDIR-FILE-INFORMATION 
             IF W-FIC NOT = SPACE AND LISTDIR-FILE-TYPE = "F"
280518
               IF LK-LSTDIR-L-EXT = "jpg"
                  move space to tmp-file-process2
                  unstring W-FIC delimited by "." into
                     tmp-file-process1 tmp-file-process2
                  if tmp-file-process2 <> "JPG" and <> "jpg"
                                   and <> "jpeg" and <> "JPEG"
                     exit perform cycle
                 end-if
               end-if
280518
               MOVE SPACE TO ENR-TRI
               ADD 1 TO W-NUM
               MOVE W-NUM TO NUM-TRI
               MOVE W-FIC TO FIC-TRI
               WRITE ENR-TRI INVALID
                 MOVE "Erreur écriture TRI" TO ACU-MSG-1
                 MOVE ENR-TRI TO ACU-MSG-2
                 PERFORM MSG-ERREUR
               END-WRITE
               PERFORM STAT
             END-IF
           END-PERFORM
           CALL "C$LIST-DIRECTORY" USING LISTDIR-CLOSE, W-RES
           .
      *-----------------------------------------------------------------
       Screen1-Aft-Initdata.
190419*   
      *     IF LK-LSTDIR-L-HANDLE <> 0 THEN    
      *        MOVE LK-LSTDIR-L-HANDLE TO WCF-HANDLE-FP
      *        PERFORM CentreFenetre
      *     ELSE
      *        MODIFY Screen1-Handle,
      *           VISIBLE 1
      *     END-IF
190419*
060819     PERFORM MisCentreFenetreScreen1F

           PERFORM AFF-GRILLE.
       AFF-GRILLE.
           PERFORM Curseur-Sablier
           PERFORM REMP-GRILLE THRU F-REMP-GRILLE
           PERFORM Curseur-Fleche
           .
      *-----------------------------------------------------------------
       REMP-GRILLE.
           MODIFY Screen1-Gd-1, RESET-GRID = 1, MASS-UPDATE = 1
           PERFORM Acu-Screen1-Gd-1-Content
           MOVE SPACE TO ENR-TRI
           START TRI KEY NOT < CLE2-TRI INVALID
             GO F-REMP-GRILLE
           END-START
           .
       BCL-REMP-GRILLE.
           READ TRI NEXT AT END
             GO F-REMP-GRILLE
           END-READ
           MOVE SPACE TO Screen1-Gd-1-Record
           MOVE FIC-TRI TO Gd-1-Col-Fic
           MODIFY Screen1-Gd-1, RECORD-TO-ADD = Screen1-Gd-1-Record
           GO BCL-REMP-GRILLE
           .
       F-REMP-GRILLE.
           MODIFY Screen1-Gd-1, MASS-UPDATE = 0
           INQUIRE Screen1-Gd-1, LAST-ROW IN W-LAST
           IF W-LAST > 1 THEN
             MODIFY Screen1-Gd-1(2)  ROW-COLOR = W-ROW-HIGH-COLOR
             MOVE 2 TO Screen1-Gd-1-Cursor-Y
           END-IF
           .
      *-----------------------------------------------------------------
       Screen1-Pb-Quitter-Link.
           MOVE SPACE TO LK-LSTDIR-L-FIC
           PERFORM CLOSE-FILE-RTN
           PERFORM Acu-Screen1-Exit
           .
      *-----------------------------------------------------------------
       Screen1-Pb-Accepter-Link.
           INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y, 1)
                   CELL-DATA IN LK-LSTDIR-L-FIC
           PERFORM CLOSE-FILE-RTN
           PERFORM Acu-Screen1-Exit
           .
      *-----------------------------------------------------------------
       Screen1-Gd-1-Ev-Msg-Goto-Cell.
           MODIFY Screen1-Gd-1(Screen1-Gd-1-Cursor-Y)
                  ROW-COLOR = 0
           MOVE EVENT-DATA-2 TO Screen1-Gd-1-Cursor-Y
           MODIFY Screen1-Gd-1(Screen1-Gd-1-Cursor-Y)
                  ROW-COLOR = W-ROW-HIGH-COLOR
           .
      *-----------------------------------------------------------------
       Screen1-Gd-1-Ev-Msg-Begin-Entry.
           PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
           INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y, 1)
                   CELL-DATA IN LK-LSTDIR-L-FIC
           PERFORM CLOSE-FILE-RTN 
           PERFORM Mistral-CloseCurrentWindow
           .
      *
       Screen1-Gd-1-Ev-Msg-Init-Menu.
      *-----------------------------*
           IF Screen1-Gd-1-Cursor-Y < 2
           OR LK-LSTDIR-L-DEL = 0 THEN
              MOVE Event-Action-Fail TO Event-Action
           END-IF
           .      
      *
201113 Screen1-Mn-1-MI-Suppression-Link.
      *--------------------------------*
           INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y, 1)
              CELL-DATA IN W-FIC
           MOVE "Confirmez-vous la suppression de ce fichier ?"
             TO ACU-Msg-1
           MOVE W-FIC TO ACU-Msg-2
           PERFORM Msg-ON

           IF ACU-Return-Value <> 1 THEN
              EXIT PARAGRAPH
           END-IF

           MOVE SPACE TO W-FULLNAME
           STRING LK-LSTDIR-L-REP DELIMITED BY SPACE
                  "/"
                  W-FIC           DELIMITED BY SIZE
             INTO W-FULLNAME

           CALL "C$DELETE" USING W-FULLNAME
           MODIFY Screen1-Gd-1,
              RECORD-TO-DELETE Screen1-Gd-1-Cursor-Y
           SUBTRACT 1 FROM Screen1-Gd-1-Cursor-Y GIVING Event-Data-2
           PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
           .
020217*--- Accès au catalogue en ligne Caterpillar
       Screen1-Pb-Caterpillar-Link.


271218*--- Accès au catalogue en ligne Kramp
       Screen1-Pb-Kramp-Link.

           .
      *   Rafrraichir la grille
       Screen1-Pb-Refresh-Link.
           CLOSE TRI.
           PERFORM MEP-LISTE-FIC.
           PERFORM AFF-GRILLE
           .

       

      *{Bench}end
       REPORT-COMPOSER SECTION.
