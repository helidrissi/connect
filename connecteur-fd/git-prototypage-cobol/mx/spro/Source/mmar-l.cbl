      *{Bench}prg-comment
      * mmar-l.cbl
      * mmar-l.cbl is generated from W:\mx\spro\mmar-l.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. mmar-l.
       AUTHOR. mistral.
       DATE-WRITTEN. lundi 27 janvier 2020 09:50:00.
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
       COPY "LISTE.sl".
       COPY "MXMARQUE.sl".
      *{Bench}end
       DATA                        DIVISION.
       FILE                        SECTION.
      *{Bench}file
       COPY "COBCAP.fd".
       COPY "LISTE.fd".
       COPY "MXMARQUE.fd".
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
       77 Screen1-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
           COPY  "W:\mistral\copy\cobcap.wrk".
           COPY  "W:\mistral\copy\LK-GENLISTE.wrk".
           COPY  "W:\mistral\copy\Mis-ProgressBar.wrk".
       77 w-count          PIC  9(6).
       77 W-LOG-PALM       PIC  9(3).
       77 W-NPR-PALM       PIC  9(3).
       77 ASSIGN-LISTE     PIC  X(60).
       77 WASS-LISTE       PIC  X(20)
                  VALUE IS "LISTE".
       77 COBCAP-FILE-STATUS           PIC  X(2).
           88 Valid-COBCAP VALUE IS "00" THRU "09". 
       77 LISTE-FILE-STATUS            PIC  X(2).
           88 Valid-LISTE VALUE IS "00" THRU "09". 
       77 MXMARQUE-FILE-STATUS         PIC  X(2).
           88 Valid-MXMARQUE VALUE IS "00" THRU "09". 
       77 Small-Font
                  USAGE IS HANDLE OF FONT SMALL-FONT.
       77 Large-Font
                  USAGE IS HANDLE OF FONT LARGE-FONT.
       77 FILE-STATUS      PIC  X(2).
           88 Valid-COBCAP VALUE IS "00" THRU "09". 

      *{Bench}end
       LINKAGE                     SECTION.
      *{Bench}linkage
       77 LK-ZONE-PALM     PIC  X(500).
           COPY  "W:\mistral\copy\LK-LISTE.wrk".

      *{Bench}end
       SCREEN                      SECTION.
      *{Bench}copy-screen
       01 Screen1.

      *{Bench}end

      *{Bench}linkpara
       PROCEDURE DIVISION USING LK-ZONE-PALM, LK-LISTE.
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
      * open file
           PERFORM Acu-Open-Files
      *    After-Init
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
                 LINES 0,10, SIZE 64,00, CELL HEIGHT 10, CELL WIDTH 10, 
                 COLOR IS 65793, LABEL-OFFSET 0, LINK TO THREAD, 
                 MODELESS, NO SCROLL, WITH SYSTEM MENU, TITLE-BAR, 
                 USER-GRAY, USER-WHITE, VISIBLE 0, NO WRAP, 
                 EVENT PROCEDURE Screen1-Event-Proc, 
                 HANDLE IS Screen1-Handle
      * toolbar
           DISPLAY Screen1 UPON Screen1-Handle
      *    After-Create
           .

       Acu-Screen1-Init-Data.
      *    Before-Initdata
      *    After-Initdata
           .
      * Screen1
       Acu-Screen1-Proc.
           PERFORM UNTIL Exit-Pushed
              ACCEPT OMITTED LINE 1 COL 1  
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
           END-EVALUATE
           MOVE 1 TO Accept-Control
           .

       Acu-Close-Files.
      *    Before-Close
      *    After-Close
           .

      * COBCAP

      * LISTE

      * MXMARQUE

       Acu-Screen1-Exit.
           SET Exit-Pushed TO TRUE
           .



       Screen1-Event-Proc.
           .
      ***   start event editor code   ***
       COPY "W:/MISTRAL/COPY/ENVMIS.CBL".
      *
       Screen1-Bef-Create.
           PERFORM Controle-Call
      *     Perform Trait-Cobcap Thru F-Trait-Cobcap

           | Assignation et ouverture du fichier LISTE
           COPY "W:/mx/copy/Assign-FICTMP.cbl" 
                REPLACING ==FICTMP==   BY ==LISTE==
                          =='FICTMP'== BY ==LISTE==.

           | Generation de la liste 
           CALL "W$MOUSE" USING CAPTURE-MOUSE
           PERFORM Curseur-Sablier.
           Perform Begin-Generateliste Thru End-Generateliste
           CALL "W$MOUSE" USING RELEASE-MOUSE
           PERFORM Curseur-Fleche.
      *     MOVE 0 TO W-PBThread-Annul 
      *     COPY "../../mistral/copy/Mis-ProgressBar.cbl" REPLACING 
      *        ==PBTRAIT==         BY ==Begin-Generateliste==,
      *        ==F-PBTRAIT==       BY ==End-Generateliste==,
      *        ==PBSCREEN-Handle== BY ==Screen1-handle==.

           | Appel de la liste générique
           Move LK-LISTE-NBSEL     To LK-GENLISTE-NBSEL
           Move ASSIGN-LISTE       To LK-GENLISTE-FILENAME
           Move " Marques "        To LK-GENLISTE-TITLE
           Move LK-LISTE-MAXSEL    To LK-GENLISTE-MAXSEL
           | Clef en Alpha
           Move 1                  To LK-GENLISTE-DATATYPE
           Move LK-LISTE-SELECT    To LK-GENLISTE-SELECT
040419*     Move LK-LISTE-Handle To LK-GENLISTE-Handle | pour centrer la fenêtre en multi écran 020819 Enlevé (HANDLE-PALM)
           MOVE ZERO TO LK-GENLISTE-TSEL
051219     IF LK-LISTE-TSEL = "I" Move 1 To LK-GENLISTE-TSEL.
051219     IF LK-LISTE-TSEL = "X" Move 2 To LK-GENLISTE-TSEL.   

           Call "afflis.acu" 
              Using ZONE-PALM, LK-GENLISTE
           Cancel "afflis.acu"

           Move LK-GENLISTE-NBSEL  To LK-LISTE-NBSEL
           Move LK-GENLISTE-MAXSEL To LK-LISTE-MAXSEL
           Move LK-GENLISTE-SELECT To LK-LISTE-SELECT
051219     IF LK-GENLISTE-TSEL = 1 MOVE "I" To LK-LISTE-TSEL.
051219     IF LK-GENLISTE-TSEL = 2 MOVE "X" To LK-LISTE-TSEL.

           | Fin Génération
           Delete File LISTE
           Exit Program           
           .

       Begin-Generateliste.
           Open I-O MXMARQUE
           Perform Stat
           Move Low-Value To COD-MMAR 
           Start MXMARQUE Key >= CLE1-MMAR invalid Go End-Generateliste
           End-Start
           Move 0 To w-count
           .

       Loop-Generateliste.
           Read MXMARQUE Next no lock At End Go End-Generateliste
           End-Read
           Perform Stat

           Initialize ENR-LST
           | Clé unique du fichier LISTE
           Add 1 To w-count
           Move w-count   To ORD-LST
           | COD-LST contient la clé de MARQUE
           Move CLE1-MMAR To COD-LST
           | Contient le Code à afficher
           Move COD-MMAR  To COB-LST
           | Contient le libéllé à afficher
           Move LIB-MMAR  To LIB-LST

           | Enregistre
           Write ENR-LST Invalid 
              move "Problème : Génération LISTE" to acu-msg-1
              move cle1-lst to acu-msg-2
              perform msg-erreur
              Go End-Generateliste
           End-Write
           Perform Stat

           Go Loop-Generateliste
           .
 
       End-Generateliste.
           MOVE 1 TO W-PBThread-End
           Close MXMARQUE
           Close LISTE
           .

       

      *{Bench}end
       REPORT-COMPOSER SECTION.
