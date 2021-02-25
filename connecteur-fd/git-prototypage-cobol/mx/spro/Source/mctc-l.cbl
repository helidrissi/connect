      *{Bench}prg-comment
      * mctc-l.cbl
      * mctc-l.cbl is generated from W:\mx\spro\mctc-l.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. mctc-l.
       AUTHOR. nathalie.clair.
       DATE-WRITTEN. vendredi 21 février 2020 18:14:59.
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
       COPY "MXCARTEC.sl".
      *{Bench}end
       DATA                        DIVISION.
       FILE                        SECTION.
      *{Bench}file
       COPY "COBCAP.fd".
       COPY "LISTE.fd".
       COPY "MXCARTEC.fd".
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
       77 COBCAP-FILE-STATUS           PIC  X(2).
           88 Valid-COBCAP VALUE IS "00" THRU "09". 
       77 LISTE-FILE-STATUS            PIC  X(2).
           88 Valid-LISTE VALUE IS "00" THRU "09". 
       77 w-count          PIC  9(6).
       77 w-code           PIC  99.
       77 W-LOG-PALM       PIC  9(3).
       77 W-NPR-PALM       PIC  9(3).
       77 ASSIGN-LISTE     PIC  X(60).
       77 WASS-LISTE       PIC  X(20)
                  VALUE IS "LISTE".
       77 MXCARTEC-FILE-STATUS         PIC  X(2).
           88 Valid-MXCARTEC VALUE IS "00" THRU "09". 
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

      * MXCARTEC

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
           Perform Begin-Generateliste Thru End-Generateliste

           | Appel de la liste générique
           Move LK-LISTE-NBSEL     To LK-GENLISTE-NBSEL
           Move ASSIGN-LISTE       To LK-GENLISTE-FILENAME
           Move " Caractéristiques Techniques " To LK-GENLISTE-TITLE
           IF LK-LISTE-MCTC-TBA = 1
              Move " critères de recherche /Taches" 
              To LK-GENLISTE-TITLE
           END-IF.
           Move LK-LISTE-MAXSEL    To LK-GENLISTE-MAXSEL
           | Clef en Alpha
           Move 1                  To LK-GENLISTE-DATATYPE
           Move LK-LISTE-SELECT    To LK-GENLISTE-SELECT

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
           open I-O MXCARTEC
           Perform Stat
           Move Low-Value To COD-MCTC
300816     IF LK-LISTE-MCTC-TBA = 1                | uniquement les critères de recherche des nomenclatures de tache
              MOVE "|" TO COD-MCTC.
           Start MXCARTEC Key >= CLE1-MCTC invalid Go End-Generateliste
           End-Start
           Perform Stat
           Move 0 To w-count
           .

       Loop-Generateliste.
           Read MXCARTEC Next At End Go End-Generateliste
           End-Read
           Perform Stat
300816     IF LK-LISTE-MCTC-TBA = 1 AND COD-MCTC(1:1) <> "|"
              Go End-Generateliste.
300816     IF LK-LISTE-MCTC-TBA <> 1 AND COD-MCTC(1:1) = "|"
              Go Loop-Generateliste.

           Initialize ENR-LST
           | Clé unique du fichier LISTE
           Add 1 To w-count
           Move w-count To ORD-LST
           | COD-LST contient la clé de MXCARTEC
           Move CLE1-MCTC To COD-LST
           | Contient le Code à afficher
           Move COD-MCTC To COB-LST
           | Contient le libéllé à afficher
           Move LIB-MCTC To LIB-LST

           | Enregistre
           Write ENR-LST Invalid 
              Display Message "Problème : Génération LISTE"
                 Title Is "Mistral"
           End-Write
           Perform Stat

           Go Loop-Generateliste
           .

       Err-Generateliste.
           Display Message Box "Erreur"
              " lors de la recherche de la liste des familles client !"
              Title Is "Mistral"
           Go End-Generateliste
           .

       End-Generateliste.
           Close MXCARTEC
           Close LISTE
           .

       

      *{Bench}end
       REPORT-COMPOSER SECTION.
