      *{Bench}prg-comment
      * dsclient.cbl
      * dsclient.cbl is generated from W:\mx\spro\dsclient.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. dsclient.
       AUTHOR. kobalt.
       DATE-WRITTEN. mercredi 19 février 2020 13:57:52.
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
       COPY "MXMARQUE.sl".
      *{Bench}end
       DATA                        DIVISION.
       FILE                        SECTION.
      *{Bench}file
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
      * 77 Key-Status IS SPECIAL-NAMES CRT STATUS PIC 9(4) USAGE [None] VALUE 0.
      *     88 Exit-Pushed VALUE 27.
      *     88 Message-Received VALUE 95.
      *     88 Event-Occurred VALUE 96.
      *     88 Screen-No-Input-Field VALUE 97.
      *     88 Screen-Time-Out VALUE 99.
      * property-defined variable

      * user-defined variable
           COPY  "socket.def".
           COPY  "dsclient-server-config.wrk".
           COPY  "dsclient-messages.wrk".
           COPY  "W:\mistral\copy\cobcap.wrk".
       77 MXMARQUE-COB     PIC  X(32).
       77 FILE-STATUS      PIC  X(2).
           88 Valid-MXMARQUE VALUE IS "00" THRU "09". 

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

      * MXMARQUE

      ***   start event editor code   ***
       COPY "dsclient.cpy".

       Acu-Main.
           DISPLAY "Connecting to server: ".
           PERFORM DSCLIENT-INIT.

           MOVE "XXXX" TO CLE1-MMAR.
           MOVE "LIBELLE" TO LIB-MMAR.
           MOVE "ABREGE" TO ABR-MMAR.
           MOVE "TVH" TO TVH-MMAR.

           MOVE "I-O" TO DSC-OPEN-MODE
           MOVE "MXMARQUE" TO DSC-FILENAME.
           PERFORM DSCLIENT-OPEN.

           MOVE "XXAA" TO DSC-REWRITE-KEY-VALUE.
           MOVE ENR-MMAR TO DSC-RECORD.               
           MOVE LENGTH OF ENR-MMAR TO DSC-RECORD-SIZE.
           PERFORM DSCLIENT-REWRITE.

           MOVE "XXX2" TO CLE1-MMAR.
           MOVE "LIB REWRITE" TO LIB-MMAR.
           MOVE ENR-MMAR TO DSC-RECORD.               
           MOVE LENGTH OF ENR-MMAR TO DSC-RECORD-SIZE.
           PERFORM DSCLIENT-WRITE.
           
           MOVE "XXX2" TO DSC-DELETE-KEY-VALUE.
           PERFORM DSCLIENT-DELETE.
           
           MOVE "CODE-MMAR" TO DSC-START-KEY-NAME.
           MOVE "AAAA" TO DSC-START-KEY-VALUE.
           MOVE ">=" TO DSC-START-KEY-OPERATOR.
           PERFORM DSCLIENT-START.

           MOVE "CODE-MMAR" TO DSC-READ-KEY-NAME.
           MOVE "XXXX" TO DSC-READ-KEY-VALUE.               
           MOVE LENGTH OF ENR-MMAR TO DSC-RECORD-SIZE.
           DISPLAY "RECORD-SIZE, ", DSC-RECORD-SIZE.
           PERFORM DSCLIENT-READ.

           PERFORM DSCLIENT-CLOSE.

           PERFORM DSCLIENT-CLOSE-CONNECTION.
           CALL "C$SLEEP" USING 5.
           .
               
       

      *{Bench}end
       REPORT-COMPOSER SECTION.
