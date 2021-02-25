      *{Bench}prg-comment
      * imprime-url.cbl
      * imprime-url.cbl is generated from W:\mx\spro\imprime-url.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. imprime-url.
       AUTHOR. nathalie.clair.
       DATE-WRITTEN. mercredi 22 janvier 2020 17:40:19.
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
       DATA                        DIVISION.
       FILE                        SECTION.
      *{Bench}file
       COPY "COBCAP.fd".
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
       77 URL  PIC  X(512).
       77 W-LINES          PIC  S9(4)V9(2)
                  VALUE IS 53,00.
       77 W-SIZE           PIC  S9(4)V9(2)
                  VALUE IS 130,86.
       77 IMPRIME24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Small-Font
                  USAGE IS HANDLE OF FONT SMALL-FONT.
       77 Screen1-LM
                  USAGE IS HANDLE OF LAYOUT-MANAGER, LM-RESIZE
                  VALUE NULL.
       77 MY-LAYOUT
                  USAGE IS HANDLE OF LAYOUT-MANAGER, LM-RESIZE
                  VALUE NULL.
           COPY  "W:\mistral\copy\cobcap.wrk".
       01 ENR-PARMIS.
           02 GS-PARMIS        PIC  9.
           02 FOPHT-PARMIS     PIC  9.
           02 ILOC-PARMIS      PIC  9.
       77 W-REPERT         PIC  X(100).
       77 MOD-SMTP         PIC  9.
       77 W-TXT2           PIC  X(100).
       77 FILE-STATUS      PIC  X(2).
       77 W-LOG-PALM       PIC  9(3)
                  VALUE IS 25.
       77 W-NPR-PALM       PIC  9(4)
                  VALUE IS 181.
       77 W-PARMIS         PIC  9(9).
       77 SV-PARMIS        PIC  9(9).
       77 WV-IMPRIME       PIC  9
                  VALUE IS 1.
       77 WColumnM         PIC  S9(4)V9(2)
                  VALUE IS 6,71.
       77 WColumnF         PIC  S9(4)V9(2)
                  VALUE IS 11,29.
       77 WColumnI         PIC  S9(4)V9(2)
                  VALUE IS 1,71.
       77 EXPORTx24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TIT-IMPRIME      PIC  X(50)
                  VALUE IS "Imprimer".
       77 IMPRIMER32-BMP   PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 XMLOut-Assign    PIC  X(32).
       77 EXPORT32-BMP     PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.

      *{Bench}end
       LINKAGE                     SECTION.
      *{Bench}linkage
       01 LK-ZONE-PALM     PIC  X(500).
       01 LN-URL           PIC  X(512).
       01 LN-IMPRIME       PIC  9.
       77 W-FIC-PDF        PIC  X(252).
       77 LK-HANDLE        PIC  9(4).
      *{Bench}end
       SCREEN                      SECTION.
      *{Bench}copy-screen
       01 Screen1.
           03 Screen1-Wb-1, Web-Browser, 
              COL 1,43, LINE 4,38, LINES 49,15 CELLS, 
              SIZE 130,43 CELLS, 
              ID IS 1, VALUE URL, LAYOUT-DATA = 17.
           03 Screen1-Pb-2, Push-Button, 
              COL WColumnI, LINE 1,00, LINES 32, SIZE 32, 
              BITMAP-HANDLE EXPORT32-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1002, FLAT, ID IS 3, TITLE TIT-IMPRIME, 
              VISIBLE WV-IMPRIME.

      *{Bench}end

      *{Bench}linkpara
       PROCEDURE DIVISION USING 
              LK-ZONE-PALM, LN-URL, LN-IMPRIME, W-FIC-PDF, LK-HANDLE.
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
           COPY RESOURCE "EXPORT32.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "EXPORT32.BMP", GIVING 
              EXPORT32-BMP
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
           IF EXPORT32-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY EXPORT32-BMP
              MOVE 0 TO EXPORT32-BMP
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
              DISPLAY Independent GRAPHICAL WINDOW
                 LINES W-LINES, SIZE W-SIZE, CELL HEIGHT 13, 
                 CELL WIDTH 7, AUTO-MINIMIZE, COLOR IS 65793, 
                 LABEL-OFFSET 0, LINK TO THREAD, MODELESS, RESIZABLE, 
                 NO SCROLL, WITH SYSTEM MENU, TITLE-BAR, USER-GRAY, 
                 USER-WHITE, VISIBLE 0, NO WRAP, 
                 LAYOUT-MANAGER IS MY-LAYOUT, 
                 EVENT PROCEDURE Screen1-Event-Proc, 
                 HANDLE IS Screen1-Handle
      * toolbar
           DISPLAY Screen1 UPON Screen1-Handle
           PERFORM Screen1-Aft-Create
           .

       Acu-Screen1-Init-Data.
      *    Before-Initdata
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

      * Screen1
       Acu-Screen1-Evaluate-Func.
           EVALUATE TRUE
              WHEN Exit-Pushed
                 PERFORM Acu-Screen1-Exit
              WHEN Event-Occurred
                 IF Event-Type = Cmd-Close
                    PERFORM Acu-Screen1-Exit
                 END-IF
      * Screen1-Pb-2 Link To
              WHEN Key-Status = 1002
                 PERFORM Screen1-Pb-2-Link
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


       Screen1-Event-Proc.
           .
      ***   start event editor code   ***
           COPY "../../MISTRAL/COPY/ENVMIS.CBL".
 
       Screen1-Pb-1-Link.
           modify Screen1-Wb-1, STOP-BROWSER 1
           PERFORM Acu-Screen1-Exit
           .
      *
       Screen1-Aft-Create.
           MODIFY Screen1-wb-1, VALUE LN-URL
           .
      *
       Screen1-Pb-2-Link.
           MOVE 1 TO LN-IMPRIME.
           modify Screen1-Wb-1, STOP-BROWSER 1
           PERFORM Acu-Screen1-Exit
           .
      *
       Screen1-Bef-Create.
           perform controle-call

           move 1 to WV-IMPRIME
           move 1 to iloc-parmis  

           if iloc-parmis = 1
      *        move 0 to WV-IMPRIME
      *        move WColumnM to WColumnF
      *        move WColumnI to WColumnM
              move EXPORTx24-JPG to IMPRIME24-JPG
              MOVE "Exporter le fichier" to TIT-IMPRIME
           end-if.
           .

      *
       Screen1-Pb-Mail-Link.
           .

       Screen1-Pb-Fax-Link.

       Genere-Fax-Ou-Mail.
           .
      *
      *
       Screen1-Aft-Initdata.
           MODIFY Screen1-Handle,
                 VISIBLE 1
           .

       

      *{Bench}end
       REPORT-COMPOSER SECTION.
