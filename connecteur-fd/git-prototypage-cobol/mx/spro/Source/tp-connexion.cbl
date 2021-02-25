      *{Bench}prg-comment
      * tp-connexion.cbl
      * tp-connexion.cbl is generated from W:\mx\spro\tp-connexion.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. tp-connexion.
       AUTHOR. kobalt.
       DATE-WRITTEN. lundi 25 janvier 2021 10:10:06.
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
       COPY "MXMARQUE.sl".
       COPY "MXMARQUE2.sl".
       COPY "TEST-SEQ2.sl".
       COPY "TEST-SEQ.sl".
       COPY "TEST-REL.sl".
       COPY "MXART.sl".
       COPY "MXLDIS.sl".
       COPY "MXCATFOU.sl".
       COPY "MXART2.sl".
      *{Bench}end
       DATA                        DIVISION.
       FILE                        SECTION.
      *{Bench}file
       COPY "COBCAP.fd".
       COPY "MXMARQUE.fd".
       COPY "MXMARQUE2.fd".
       COPY "TEST-SEQ2.fd".
       COPY "TEST-SEQ.fd".
       COPY "TEST-REL.fd".
       COPY "MXART.fd".
       COPY "MXLDIS.fd".
       COPY "MXCATFOU.fd".
       COPY "MXART2.fd".
      *{Bench}end
       WORKING-STORAGE             SECTION.
      *{Bench}acu-def
       COPY "acugui.def".
       COPY "acucobol.def".
       COPY "crtvars.def".
       COPY "showmsg.def".
      *{Bench}end

      *{Bench}copy-working
      * 77 Key-Status IS SPECIAL-NAMES CRT STATUS PIC 9(4) USAGE [None] VALUE 0.
      *     88 Exit-Pushed VALUE 27.
      *     88 Message-Received VALUE 95.
      *     88 Event-Occurred VALUE 96.
      *     88 Screen-No-Input-Field VALUE 97.
      *     88 Screen-Time-Out VALUE 99.
      * property-defined variable

      * user-defined variable
       01 BITWISE-DEST
                  USAGE IS SIGNED-SHORT.
       01 BITWISE-SRC
                  USAGE IS SIGNED-SHORT.
           COPY  "cobcap.wrk".
           COPY  "kobalt-missing.wrk".
           COPY  "envmis.wrk".
       01 fcount           PIC  9(10).
       01 MXMARQUE2-COB    PIC  X(20).
       77 TEST-SEQ2-COB    PIC  X(32).
       77 FILE-STATUS      PIC  X(2).
           88 Valid-TEST-SEQ2 VALUE IS "00" THRU "09". 
       77 TEST-SEQ-COB     PIC  X(32).
       77 TEST-REL-COB     PIC  X(32).
       77 TEST-SIGNED-SHORT
                  USAGE IS SIGNED-SHORT.
       77 KEY-TR           PIC  9(9).

      *{Bench}end
       LINKAGE                     SECTION.
      *{Bench}linkage
      *{Bench}end
       SCREEN                      SECTION.
      *{Bench}copy-screen

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
           PERFORM Acu-Main
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

       Acu-Close-Files.
      *    Before-Close
      *    After-Close
           .

      * COBCAP

      * MXMARQUE

      * MXMARQUE2

      * TEST-SEQ2

      * TEST-SEQ

      * TEST-REL

      * MXART

      * MXLDIS

      * MXCATFOU

      * MXART2

      ***   start event editor code   ***
       COPY "envmis-credirect.cbl".

       acu-main.
           perform installHandler

      *    On compense le non-lancement de Controle-Palme
           move "DB:MXMARQUE" to mxmarque-cob
           perform read-mxmarque
           exit paragraph
           .

       read-mxmarque.
           open i-o mxmarque
           move low-values to lib-mmar
           move 0 to w-eof
           start mxmarque key >= lib-mmar
               invalid move 1 to w-eof end-start

           read mxmarque next end move 1 to w-eof end-read
           perform until w-eof <> 0
               display "record: ", enr-mmar
               read mxmarque next end move 1 to w-eof end-read
               perform stat
           end-perform
           exit paragraph
           .
       

      *{Bench}end
       REPORT-COMPOSER SECTION.
