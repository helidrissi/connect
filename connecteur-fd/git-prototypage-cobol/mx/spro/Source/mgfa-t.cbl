      *{Bench}prg-comment
      * mgfa-t.cbl
      * mgfa-t.cbl is generated from W:\mx\spro\mgfa-t.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. mgfa-t.
       AUTHOR. fatima-zahra.selouan.
       DATE-WRITTEN. lundi 6 juillet 2020 16:47:09.
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
       COPY "MXGRAFAM.sl".
      *{Bench}end
       DATA                        DIVISION.
       FILE                        SECTION.
      *{Bench}file
       COPY "COBCAP.fd".
       COPY "MXGRAFAM.fd".
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
       77 W-LOG-PALM       PIC  9(3).
           COPY  "cobcap.wrk".
       77 W-NPR-PALM       PIC  9(4).
       77 W-CLA            PIC  9
                  VALUE IS 1.
       01 Ligne-Courante.
           05 Ligne-Courante-Chargee       PIC  9(1).
           05 Ligne-Courante-GRA           PIC  9(2).
           05 Ligne-Courante-FAM           PIC  9(2).
       77 w-gra            PIC  99.
       77 S    PIC  X(100).
       77 Ligne-Preselect
                  USAGE IS POINTER.
       77 w-node
                  USAGE IS POINTER.
       77 w-parent
                  USAGE IS POINTER.
       77 WPAL-RED-999     PIC  9(3).
       77 WPAL-GREEN-999   PIC  9(3).
       77 WPAL-BLUE-999    PIC  9(3).
       77 MENUARB00-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 QUITTER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 VALIDER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Screen1-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 Default-Font
                  USAGE IS HANDLE OF FONT DEFAULT-FONT.
       77 Small-Font
                  USAGE IS HANDLE OF FONT SMALL-FONT.
       77 FILE-STATUS      PIC  X(2).
           88 Valid-COBCAP VALUE IS "00" THRU "09". 
       77 MENUARB00-JP     PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.

      *{Bench}end
       LINKAGE                     SECTION.
      *{Bench}linkage
       77 LK-ZONE-PALM     PIC  X(500).
           COPY  "LK-MGFA-T.wrk".
      *{Bench}end
       SCREEN                      SECTION.
      *{Bench}copy-screen
       01 Screen1.
           03 Screen1-Tr-1, Tree-View, 
              COL 2,86, LINE 8,31, LINES 23,69 CELLS, SIZE 66,29 CELLS, 
              BITMAP-HANDLE MENUARB00-JPG, BITMAP-WIDTH 16, 
              3-D, FONT IS Small-Font, ID IS 1, SHOW-LINES, 
              SHOW-SEL-ALWAYS, 
              EVENT PROCEDURE Screen1-Tr-1-Event-Proc.
           03 Screen1-Pb-1, Push-Button, 
              COL 32,71, LINE 1,92, LINES 24, SIZE 118, 
              BITMAP-HANDLE VALIDER24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 9858, ID IS 2, NO-TAB, DEFAULT-BUTTON, 
              TITLE "Sélectionner", ATW-CSS-CLASS "button-valider".
           03 Screen1-Pb-2, Push-Button, 
              COL 51,14, LINE 1,92, LINES 24, SIZE 118, 
              BITMAP-HANDLE QUITTER24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 9841, ID IS 3, 
              TITLE "Abandonner", ATW-CSS-CLASS "button-quitter".
           03 Screen1-Rb-CLA1, Radio-Button, 
              COL 2,86, LINE 5,62, LINES 1,23 CELLS, SIZE 14,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 1, 
              ID IS 4, 
              TITLE "Code", VALUE W-CLA, 
              EVENT PROCEDURE Screen1-Rb-CLA1-Event-Proc.
           03 Screen1-Rb-CLA2, Radio-Button, 
              COL 20,86, LINE 5,62, LINES 1,23 CELLS, SIZE 22,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 2, 
              ID IS 5, 
              TITLE "Désignation", VALUE W-CLA, 
              EVENT PROCEDURE Screen1-Rb-CLA2-Event-Proc.
           03 Screen1-La-1, Label, 
              COL 2,86, LINE 2,23, LINES 2,31 CELLS, SIZE 24,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 6, LABEL-OFFSET 0, 
              TITLE "Filtrer par", TRANSPARENT, ATW-CSS-CLASS "h5".

      *{Bench}end

      *{Bench}linkpara
       PROCEDURE DIVISION USING LK-ZONE-PALM, LK-MGFA-T.
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
           COPY RESOURCE "MENUARB00.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "MENUARB00.JPG", GIVING 
              MENUARB00-JPG
           COPY RESOURCE "VALIDER24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "VALIDER24.JPG", GIVING 
              VALIDER24-JPG
           COPY RESOURCE "QUITTER24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "QUITTER24.JPG", GIVING 
              QUITTER24-JPG
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
           IF MENUARB00-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY MENUARB00-JPG
              MOVE 0 TO MENUARB00-JPG
           END-IF
           IF VALIDER24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY VALIDER24-JPG
              MOVE 0 TO VALIDER24-JPG
           END-IF
           IF QUITTER24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY QUITTER24-JPG
              MOVE 0 TO QUITTER24-JPG
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
                 LINES 33,00, SIZE 70,00, CELL HEIGHT 13, CELL WIDTH 7, 
                 COLOR IS 65793, LABEL-OFFSET 0, LINK TO THREAD, 
                 NO SCROLL, 
                 TITLE "Familles et sous-familles d'articles", 
                 TITLE-BAR, USER-GRAY, USER-WHITE, VISIBLE 0, NO WRAP, 
                 ATW-CSS-ID "modal_screen_mgfa_t", 
                 EVENT PROCEDURE Screen1-Event-Proc, 
                 HANDLE IS Screen1-Handle
      * toolbar
           DISPLAY Screen1 UPON Screen1-Handle
      *    After-Create
           .

       Acu-Screen1-Init-Data.
      *    Before-Initdata
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
              WHEN Key-Status = 9858
                 PERFORM Screen1-Pb-1-Link
      * Screen1-Pb-2 Link To
              WHEN Key-Status = 9841
                 PERFORM Screen1-Pb-2-Link
           END-EVALUATE
           MOVE 1 TO Accept-Control
           .

       Acu-Close-Files.
      *    Before-Close
      *    After-Close
           .

      * COBCAP

      * MXGRAFAM

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

       Screen1-Tr-1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Tv-Dblclick
              PERFORM Screen1-Tr-1-Ev-Msg-Tv-Dblclick
           WHEN Msg-Tv-Expanding
              PERFORM Screen1-Tr-1-Ev-Msg-Tv-Expanding
           WHEN Msg-Tv-Selchange
              PERFORM Screen1-Tr-1-Ev-Msg-Tv-Selchange
           END-EVALUATE
           .

       Screen1-Rb-CLA1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-Rb-CLA1-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-Rb-CLA2-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-Rb-CLA2-Ev-Cmd-Clicked
           END-EVALUATE
           .
      ***   start event editor code   ***
           COPY "W:/mistral/copy/envmis.cbl".
110419*     COPY "W:/mistral/copy/centrefenetre.cbl".
060819     COPY "W:/mistral/copy/MisCentrefenetre.cbl".

       Open-File-Rtn.
           OPEN INPUT MXGRAFAM
           PERFORM STAT
           .
       Close-File-Rtn.
           CLOSE MXGRAFAM
           .
       Screen1-AfterInitData.
      * Gestion de PALM par le programme :
      *  - Le droit d'interrogation est supposé vrai, PALM ayant du
      *    filtrer avant.
110419*   
      *     IF LK-MGFA-T-HANDLE <> 0 THEN
      *        MOVE LK-MGFA-T-HANDLE TO WCF-HANDLE-FP
      *        PERFORM CentreFenetre
      *     ELSE
      *        MODIFY Screen1-Handle,
      *           VISIBLE 1
      *     END-IF
110419*
060819     PERFORM MisCentreFenetreScreen1F

      * Affiche le TreeView après l'avoir initialisé.
      * ---------------------------------------------------------------
      * Remise à zéro du TreeView...
           MODIFY Screen1-Tr-1, RESET-LIST = 1

      * Remplissage du TreeView...
      * ...premier niveau uniquement (familles), vue la lenteur.
           MOVE 0 TO W-EOF
           INITIALIZE ENR-MGFA
           
           IF W-CLA = 1
              START MXGRAFAM KEY >= CLE1-MGFA INVALID MOVE 1 TO W-EOF
              END-START
           ELSE
              START MXGRAFAM KEY >= CLE3-MGFA INVALID MOVE 1 TO W-EOF
              END-START
           END-IF

           IF W-EOF = 0 THEN
              READ MXGRAFAM NEXT END MOVE 1 TO W-EOF END-READ
              PERFORM STAT
              PERFORM TRADUIRE-GRAFAM
           END-IF
           PERFORM STAT

           PERFORM UNTIL W-EOF = 1

              IF W-CLA = 2 AND FAM-MGFA NOT = 0 MOVE 1 TO W-EOF
              END-IF

              IF FAM-MGFA = 0 AND W-EOF = 0 THEN
                 MOVE 0 TO Ligne-Courante-Chargee
                 MOVE GRA-MGFA TO Ligne-Courante-GRA
                 MOVE FAM-MGFA TO Ligne-Courante-FAM
                 MOVE SPACES TO S
                 STRING GRA-MGFA DELIMITED BY SIZE
                        "- "     DELIMITED BY SIZE
                        LIB-MGFA DELIMITED BY "    "
                 INTO S
                 MODIFY Screen1-Tr-1, ITEM-TO-ADD = S,
                        GIVING w-node
                        HIDDEN-DATA = Ligne-Courante, BITMAP-NUMBER = 5,
                        HAS-CHILDREN = 1
      *          Vérifie la pré-sélection
                 IF GRA-MGFA = LK-MGFA-T-GRA THEN
                    MOVE w-node TO Ligne-Preselect
                 END-IF
              END-IF
              READ MXGRAFAM NEXT END MOVE 1 TO W-EOF END-READ
              PERFORM STAT
              PERFORM TRADUIRE-GRAFAM
           END-PERFORM

      *    Positionnement du curseur dans le TreeView...
           IF Ligne-Preselect NOT = ZERO THEN
              IF LK-MGFA-T-FAM = 0
                 MODIFY Screen1-Tr-1, VALUE = Ligne-Preselect
              ELSE
                 MOVE Ligne-Preselect TO w-PARENT
                 PERFORM LoadNode
                 IF Ligne-Preselect NOT = 0
                    |display message box Ligne-Preselect
                    MODIFY Screen1-Tr-1, VALUE = Ligne-Preselect
                 END-IF
              END-IF
           END-IF
           .
       Screen1-Tr-1-Ev-Msg-Tv-Expanding.
      *     MODIFY Screen1-Tr-1 , |VALUE = Event-Data-2,
      *                          PARENT = Event-Data-2
           INQUIRE Screen1-Tr-1(Event-Data-2),
                   HIDDEN-DATA IN Ligne-Courante
                          
      *    Chargement des catégories, si nécessaire...
           IF (Ligne-Courante-FAM = 0) AND
              (Ligne-Courante-Chargee = 0) THEN
             MOVE event-data-2 TO w-PARENT
             PERFORM LoadNode
           END-IF
           .
       LoadNode.
           INQUIRE Screen1-Tr-1(w-PARENT),
                   HIDDEN-DATA IN Ligne-Courante
           MOVE Ligne-Courante-GRA TO w-gra

           INITIALIZE ENR-MGFA
           MOVE w-gra TO GRA-MGFA
           MOVE 0 TO FAM-MGFA
           MOVE 0 TO W-EOF
           IF W-CLA = 1
              START MXGRAFAM KEY >= CLE1-MGFA INVALID MOVE 1 TO W-EOF
              END-START
           ELSE
              START MXGRAFAM KEY >= CLE2-MGFA INVALID MOVE 1 TO W-EOF
              END-START
           END-IF
           PERFORM STAT

           IF (GRA-MGFA NOT = w-gra) MOVE 1 TO W-EOF END-IF
           IF W-EOF = 0 THEN
             READ MXGRAFAM NEXT END MOVE 1 TO W-EOF
             END-READ
             PERFORM STAT
             PERFORM TRADUIRE-GRAFAM
           END-IF
           
           MODIFY Screen1-Tr-1 , PARENT = w-PARENT
           MOVE 0 TO Ligne-Preselect

           PERFORM UNTIL W-EOF = 1
             IF FAM-MGFA NOT = 0
               MOVE 1 TO Ligne-Courante-Chargee
               MOVE GRA-MGFA TO Ligne-Courante-GRA
               MOVE FAM-MGFA TO Ligne-Courante-FAM
               MOVE SPACES TO S
               STRING FAM-MGFA DELIMITED BY SIZE
                      "- "     DELIMITED BY SIZE
                      LIB-MGFA DELIMITED BY "    "
               INTO S
               MODIFY Screen1-Tr-1, ITEM-TO-ADD = S,
                   GIVING w-node,
                   BITMAP-NUMBER = 7, HIDDEN-DATA = Ligne-Courante
               IF (GRA-MGFA = LK-MGFA-T-GRA) AND
                   (FAM-MGFA  = LK-MGFA-T-FAM)
                 MOVE w-node TO Ligne-Preselect
               END-IF
             END-IF
      *      Suivant
             READ MXGRAFAM NEXT END MOVE 1 TO W-EOF END-READ
             PERFORM STAT
             PERFORM TRADUIRE-GRAFAM
             IF (GRA-MGFA NOT = w-gra) MOVE 1 TO W-EOF END-IF
           END-PERFORM

           IF Ligne-Courante-Chargee = 0 THEN
              MOVE 1 TO Ligne-Courante-Chargee
              MODIFY Screen1-Tr-1(w-PARENT), HAS-CHILDREN = 0
           END-IF
040517     MOVE 0 TO Ligne-Courante-FAM | mettait la dernière famille sur la grande famille...
           MODIFY Screen1-Tr-1(w-PARENT), HIDDEN-DATA = Ligne-Courante 
           .
       Screen1-Tr-1-Ev-Msg-Tv-Selchange.
           INQUIRE Screen1-Tr-1(event-data-2),
                   HIDDEN-DATA IN Ligne-Courante
           .
       Screen1-Tr-1-Ev-Msg-Tv-Dblclick.
           MOVE Ligne-Courante-GRA TO LK-MGFA-T-GRA
           MOVE Ligne-Courante-FAM TO LK-MGFA-T-FAM
           MOVE SPACES TO LK-MGFA-T-GRALIB LK-MGFA-T-FAMLIB
           IF LK-MGFA-T-FAM = 0
              INQUIRE Screen1-Tr-1, ITEM-TEXT IN LK-MGFA-T-GRALIB
           ELSE
              INQUIRE Screen1-Tr-1, ITEM-TEXT IN LK-MGFA-T-FAMLIB
              MODIFY Screen1-Tr-1, NEXT-ITEM = TVNI-PARENT,
                     GIVING w-PARENT
              INQUIRE Screen1-Tr-1(w-PARENT),
                      ITEM-TEXT IN LK-MGFA-T-GRALIB
           END-IF
           PERFORM Mistral-CloseCurrentWindow
           .
       Screen1-Ev-Cmd-Close.
           PERFORM Mistral-WindowClosing
           .
       Screen1-Bef-Create.
           PERFORM Controle-Call
           PERFORM Open-File-Rtn
180917**    MODEMA 9.2 texte tree illisible en blanc sur rose en venant de PXR  
070918* non sinon on ne voit plus les lignes de prévision / NC
      *     MOVE 10  TO WPAL-COLOR-ID | couleur fond : bleu
      *     MOVE 0   TO WPAL-RED 
      *     MOVE 0   TO WPAL-GREEN
      *     MOVE 255 TO WPAL-BLUE
      *     CALL "W$PALETTE"  
      *        USING Wpalette-Set-Color , WPALETTE-DATA  
      *              GIVING STAT-COD
180917
           .
       Screen1-Aft-Routine.
           PERFORM Close-File-Rtn
           .
       Screen1-Pb-1-Link.
           PERFORM Screen1-Tr-1-Ev-Msg-Tv-Dblclick
           .
       Screen1-Pb-2-Link.
           PERFORM Mistral-CloseCurrentWindow
           .
       Screen1-Rb-CLA1-Ev-Cmd-Clicked.
           MOVE 1 TO W-CLA
           PERFORM Screen1-AfterInitData
           .
       Screen1-Rb-CLA2-Ev-Cmd-Clicked.
           MOVE 2 TO W-CLA
           PERFORM Screen1-AfterInitData
           .
           
       TRADUIRE-GRAFAM.
      **     IF NLAN-PALM = 0 EXIT PARAGRAPH
      **     END-IF
      **     MOVE "S"       TO INP-MTRD
      **     MOVE CLE1-MGFA TO ART-MTRD
      **     MOVE NLAN-PALM TO LAN-MTRD
      **     PERFORM LECT-TRADUC
      **     IF DES-MTRD NOT = SPACE
      **        MOVE DES-MTRD TO LIB-MGFA
      **        MOVE ABR-MTRD TO ABR-MGFA
      **        IF ABR-MGFA = SPACE MOVE LIB-MGFA TO ABR-MGFA
      **        END-IF
      **     END-IF.

       

      *{Bench}end
       REPORT-COMPOSER SECTION.
