      *{Bench}prg-comment
      * mpge-l.cbl
      * mpge-l.cbl is generated from W:\mx\spro\mpge-l.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. mpge-l.
       AUTHOR. nathalie.clair.
       DATE-WRITTEN. mercredi 22 janvier 2020 15:23:27.
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
       COPY "MXPREGEN.sl".
       COPY "MXPREGENV.sl".
      *{Bench}end
       DATA                        DIVISION.
       FILE                        SECTION.
      *{Bench}file
       COPY "COBCAP.fd".
       COPY "LISTE.fd".
       COPY "MXPREGEN.fd".
       COPY "MXPREGENV.fd".
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
           COPY  "\mistral\copy\cobcap.wrk".
           COPY  "\mistral\copy\LK-GENLISTE.wrk".
       77 COBCAP-FILE-STATUS           PIC  X(2).
           88 Valid-COBCAP VALUE IS "00" THRU "09". 
       77 LISTE-FILE-STATUS            PIC  X(2).
           88 Valid-LISTE VALUE IS "00" THRU "09". 
       77 MXPREGEN-FILE-STATUS         PIC  X(2).
           88 Valid-MXPREGEN VALUE IS "00" THRU "09". 
       77 MXPREGENL-FILE-STATUS        PIC  X(2).
           88 Valid-MXPREGENL VALUE IS "00" THRU "09". 
       77 MXPREGENR-FILE-STATUS        PIC  X(2).
           88 Valid-MXPREGENR VALUE IS "00" THRU "09". 
       77 MXPREGENV-FILE-STATUS        PIC  X(2).
           88 Valid-MXPREGENV VALUE IS "00" THRU "09". 
       77 w-count          PIC  9(6).
       77 w-code           PIC  99.
       77 W-LOG-PALM       PIC  9(3).
       77 W-NPR-PALM       PIC  9(3).
       77 ASSIGN-LISTE     PIC  X(60).
       77 WASS-LISTE       PIC  X(20)
                  VALUE IS "LISTE".
       77 W-DIS            PIC  9.
       77 W-REP            PIC  9.
       77 W-LOC            PIC  9.
       77 W-MO-NON         PIC  9.
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

      * MXPREGEN

      * MXPREGENV

       Acu-Screen1-Exit.
           SET Exit-Pushed TO TRUE
           .


       Screen1-Event-Proc.
           .
      ***   start event editor code   ***
       COPY "W:/MISTRAL/COPY/ENVMIS.CBL".
      *
       Screen1-Bef-Create.
           Perform Controle-Call

           | Assignation et ouverture du fichier LISTE
           COPY "W:/mx/copy/Assign-FICTMP.cbl" 
                REPLACING ==FICTMP== BY ==LISTE==
                          =='FICTMP'== BY ==LISTE==.
               
           | Generation de la liste Caracteristiques techniques
           CALL "W$MOUSE" USING CAPTURE-MOUSE
           PERFORM Curseur-Sablier.
           Perform Begin-Generateliste Thru End-Generateliste
           CALL "W$MOUSE" USING RELEASE-MOUSE
           PERFORM Curseur-Fleche.

           | Appel de la liste générique
           Move LK-LISTE-NBSEL     To LK-GENLISTE-NBSEL
           Move ASSIGN-LISTE       To LK-GENLISTE-FILENAME
030609
           EVALUATE LK-LISTE-TIT 
           WHEN "W"
              Move "Prestations exclues / Workflow" To LK-GENLISTE-TITLE
           WHEN OTHER
030609
              Move " Prestations "    To LK-GENLISTE-TITLE
030609     END-EVALUATE

           Move " Abrégé "         To LK-GENLISTE-COL2
           Move LK-LISTE-MAXSEL    To LK-GENLISTE-MAXSEL
           | Clef en Alpha
           Move 1                  To LK-GENLISTE-DATATYPE
           Move LK-LISTE-SELECT    To LK-GENLISTE-SELECT
           Move LK-LISTE-DIS    To LK-GENLISTE-DIS
           Move LK-LISTE-REP    To LK-GENLISTE-REP
           Move LK-LISTE-LOC    To LK-GENLISTE-LOC
010419*     Move LK-LISTE-Handle To LK-GENLISTE-Handle | pour centrer la fenêtre en multi écran 020819 Enlevé (HANDLE-PALM)
           Call "afflis.acu" 
              Using ZONE-PALM, LK-GENLISTE
           Cancel "afflis.acu"

           Move LK-GENLISTE-NBSEL  To LK-LISTE-NBSEL
           Move LK-GENLISTE-MAXSEL To LK-LISTE-MAXSEL
           Move LK-GENLISTE-SELECT To LK-LISTE-SELECT

           | Fin Génération
           Delete File LISTE
           Exit Program                      
           .

       Begin-Generateliste.
           Open I-O MXPREGEN
           Perform Stat
      *     Open I-O MXPREGENL
      *     Perform Stat
      *     Open I-O MXPREGENR
      *     Perform Stat
           Open I-O MXPREGENV
           Perform Stat
           Move Low-Value To COD-MPGE
           Start MXPREGEN Key >= CLE1-MPGE invalid Go End-Generateliste
           End-Start
           Move 0 To w-count
           .

       Loop-Generateliste.
           Read MXPREGEN Next At End Go End-Generateliste
           End-Read
           Perform Stat
           IF CANN-MPGE = 1 GO Loop-Generateliste.

           Move 1 To W-DIS W-REP W-LOC W-MO-NON 
           IF LK-LISTE-MO = "E" THEN
             IF NAT-MPGE = 1 THEN
               MOVE 0 TO W-MO-NON
             END-IF
           END-IF
           IF LK-LISTE-MO = "S" THEN
             IF NAT-MPGE NOT = 1 THEN
               MOVE 0 TO W-MO-NON
             END-IF
           END-IF
           If LK-LISTE-DIS = 1
              Move COD-MPGE TO COD-MPGEV
              Read MXPREGENV Invalid Move 0 To W-DIS
              Perform STAT
           End-If
      *     If LK-LISTE-REP = 1
      *        Move COD-MPGE To COD-MPGER
      *        Read MXPREGENR Invalid Move 0 To W-REP
      *        Perform STAT                      
      *     End-If
      *     If LK-LISTE-LOC = 1
      *        Move COD-MPGE To COD-MPGEL
      *        Read MXPREGENL Invalid Move 0 To W-LOC
      *        Perform Stat
      *     End-If
           If W-DIS = 1 And W-REP = 1 And W-LOC = 1 AND W-MO-NON = 1
              Initialize ENR-LST
              | Clé unique du fichier LISTE
              Add 1 To w-count
              Move w-count   To ORD-LST
              | COD-LST contient la clé de MARQUE
              Move CLE1-MPGE To COD-LST
              | Contient le Code à afficher
              Move COD-MPGE  To COB-LST
              | Contient le libéllé à afficher
              Move LIB-MPGE  To LIB-LST
              | Contient l'abrégé à afficher
              Move ABR-MPGE To LIB2-LST

              | Enregistre
              Write ENR-LST Invalid 
                 move "Problème : Génération LISTE" to acu-msg-1
                 perform msg-erreur
                 Go End-Generateliste
              End-Write
              Perform Stat
           End-If

           Go Loop-Generateliste
           .

       End-Generateliste.
           Close MXPREGEN
      *     Close MXPREGENL
      *     Close MXPREGENR
           Close MXPREGENV
           Close LISTE
           .


       

      *{Bench}end
       REPORT-COMPOSER SECTION.
