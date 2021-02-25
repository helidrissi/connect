      *{Bench}prg-comment
      * dsimport.cbl
      * dsimport.cbl is generated from W:\mx\spro\dsimport.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. dsimport.
       AUTHOR. kobalt.
       DATE-WRITTEN. jeudi 11 juin 2020 17:23:33.
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
       COPY "COBCAP.sl".
       COPY "MXART.sl".
      *{Bench}end
       DATA                        DIVISION.
       FILE                        SECTION.
      *{Bench}file
       COPY "MXMARQUE.fd".
       COPY "COBCAP.fd".
       COPY "MXART.fd".
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
       77 W-MAX            PIC  9(9).
       77 W-LOG-PALM       PIC  9(3).
       77 W-NPR-PALM       PIC  9(3).
       77 W-COUNT          PIC  9(5).
           COPY  "cobcap.wrk".
           COPY  "dsclient-messages.wrk".
           COPY  "dsclient-server-config.wrk".
           COPY  "socket.def".
       77 FILE-STATUS      PIC  X(2).
           88 Valid-MXMARQUE VALUE IS "00" THRU "09". 

      *{Bench}end
       LINKAGE                     SECTION.
      *{Bench}linkage
       77 LK-ZONE-PALM     PIC  X(500).
      *{Bench}end
       SCREEN                      SECTION.
      *{Bench}copy-screen

      *{Bench}end

      *{Bench}linkpara
       PROCEDURE DIVISION USING LK-ZONE-PALM.
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

      * COBCAP

      * MXART

      ***   start event editor code   ***
       COPY "W:/MISTRAL/COPY/ENVMIS.CBL".
       COPY "dsclient.cpy".

       Acu-Main.
           MOVE 60000 TO W-MAX
      *     PERFORM Acu-Main-Open-MXART
      *     PERFORM Acu-Main-Import
      *     PERFORM Acu-Main-Read
           PERFORM Acu-Main-Read-MXART
      *     PERFORM MXMARQUE-READ-BEGIN
           .

       Acu-Main-Read-MXART.
           PERFORM DSCLIENT-INIT
           MOVE "I-O" TO DSC-OPEN-MODE
           MOVE "MXART" TO DSC-FILENAME.
           PERFORM DSCLIENT-OPEN
      *    lecture des N premiers éléments à partir d'une clé
           MOVE ">=" TO DSC-START-KEY-OPERATOR
           MOVE "CLE4-MART" TO DSC-START-KEY-NAME
           MOVE 10 TO GRA-MART
           MOVE LOW-VALUE TO FAM-MART
           MOVE CLE4-MART TO DSC-START-KEY-VALUE
           PERFORM DSCLIENT-START
           MOVE 20 TO W-MAX
           PERFORM Acu-Main-Read-MXART-Item
               VARYING W-COUNT FROM 1 BY 1
               UNTIL W-COUNT > W-MAX OR W-EOF = 1
           PERFORM DSCLIENT-CLOSE
           EXIT PARAGRAPH
           .

       Acu-Main-Read-MXART-Item.
           MOVE LOW-VALUES TO DSC-READ-KEY-VALUE
           MOVE LOW-VALUES TO DSC-READ-KEY-NAME
           MOVE "NEXT" TO DSC-READ-DIRECTION
           MOVE LENGTH OF ENR-MART TO DSC-RECORD-SIZE
           PERFORM DSCLIENT-READ
           IF W-EOF <> 1 THEN
               MOVE DSC-RECORD(1:LENGTH OF ENR-MART) TO ENR-MART
               DISPLAY "Article ", COD-MART
           ELSE
               DISPLAY "Plus d'enregistrement"
           END-IF
           .

       Acu-Main-Open-MXART.
           PERFORM DSCLIENT-INIT
           MOVE "I-O" TO DSC-OPEN-MODE
           MOVE "MXART" TO DSC-FILENAME.
           PERFORM DSCLIENT-OPEN
           PERFORM DSCLIENT-CLOSE
           .

       Acu-Main-Import.
           PERFORM Controle-Palme
           DISPLAY "Import"

           PERFORM MXMARQUE-BEGIN
      *     PERFORM MXART-BEGIN

           DISPLAY "Import terminé"
           CALL "C$SLEEP" USING 10
           .

       MXMARQUE-BEGIN.
           OPEN INPUT MXMARQUE PERFORM STAT
           START MXMARQUE
           MOVE Low-Value TO COD-MMAR
           START MXMARQUE Key >= CLE1-MMAR INVALID GO MXMARQUE-END
           END-START
           MOVE 0 TO W-COUNT
           PERFORM DSCLIENT-INIT
           MOVE "I-O" TO DSC-OPEN-MODE
           MOVE "MXMARQUE" TO DSC-FILENAME.
           PERFORM DSCLIENT-OPEN
                                           
           PERFORM MXMARQUE-LOOP

           PERFORM DSCLIENT-CLOSE
           PERFORM DSCLIENT-CLOSE-CONNECTION
           .

       MXMARQUE-LOOP.
           READ MXMARQUE NEXT NO LOCK AT END
               PERFORM MXMARQUE-END
               EXIT PARAGRAPH
           END-READ
           PERFORM STAT

           DISPLAY "Marque: ", COD-MMAR
           MOVE LENGTH OF ENR-MMAR TO DSC-RECORD-SIZE
           MOVE ENR-MMAR TO DSC-RECORD
           PERFORM DSCLIENT-WRITE
           ADD 1 TO W-COUNT
           GO MXMARQUE-LOOP
           .

       MXMARQUE-END.
           DISPLAY "Lignes traitées: ", W-COUNT
           CLOSE MXMARQUE
           .

       MXART-BEGIN.
           OPEN INPUT MXART PERFORM STAT
           START MXART
           MOVE LOW-VALUES TO COD-MART
           START MXART Key >= CLE1-MART INVALID
               PERFORM MXART-END
               EXIT PARAGRAPH
           END-START
           MOVE 0 TO W-COUNT
           PERFORM DSCLIENT-INIT
           MOVE "I-O" TO DSC-OPEN-MODE
           MOVE "MXART" TO DSC-FILENAME.
           PERFORM DSCLIENT-OPEN
                                           
           PERFORM MXART-LOOP

           PERFORM DSCLIENT-CLOSE
           PERFORM DSCLIENT-CLOSE-CONNECTION 
           .

       MXART-LOOP.
           IF W-COUNT > W-MAX THEN
               PERFORM MXART-END            
               EXIT PARAGRAPH
           END-IF
           READ MXART NEXT NO LOCK AT END
               PERFORM MXART-END
               EXIT PARAGRAPH
           END-READ
      *     PERFORM STAT

           DISPLAY "Article: ", COD-MART
           MOVE LENGTH OF ENR-MART TO DSC-RECORD-SIZE
           MOVE ENR-MART TO DSC-RECORD
           PERFORM DSCLIENT-WRITE
           ADD 1 TO W-COUNT
           GO MXART-LOOP
           .

       MXART-END.
           DISPLAY "Lignes traitées: ", W-COUNT
           CLOSE MXART
           .

       Acu-Main-Read.
           PERFORM Controle-Palme
           DISPLAY "Lecture"

           PERFORM MXMARQUE-READ-BEGIN

           DISPLAY "Read terminé"
           CALL "C$SLEEP" USING 10
           .

       MXMARQUE-READ-BEGIN.
           PERFORM DSCLIENT-INIT
           MOVE "MXMARQUE" TO DSC-FILENAME
           MOVE "INPUT" TO DSC-OPEN-MODE
           PERFORM DSCLIENT-OPEN
           MOVE ">=" TO DSC-START-KEY-OPERATOR
           MOVE "CLE1-MMAR" TO DSC-START-KEY-NAME
           MOVE LOW-VALUE TO DSC-START-KEY-VALUE
           PERFORM DSCLIENT-START
           MOVE 0 TO W-COUNT
                                           
           PERFORM MXMARQUE-READ-LOOP                      
           .

       MXMARQUE-READ-LOOP.
      *     READ MXMARQUE NEXT NO LOCK AT END GO MXMARQUE-END
           MOVE LOW-VALUE TO DSC-READ-DIRECTION
           MOVE LOW-VALUE TO DSC-READ-KEY-NAME
           MOVE LOW-VALUE TO DSC-READ-KEY-VALUE
           MOVE LENGTH OF ENR-MMAR TO DSC-RECORD-SIZE
           PERFORM DSCLIENT-READ
           MOVE DSC-RECORD(1:LENGTH OF ENR-MMAR) TO ENR-MMAR
           DISPLAY "Enregistrement", ENR-MMAR
           ADD 1 TO W-COUNT
           IF DSC-EOF = 0 THEN
               GO MXMARQUE-READ-LOOP
           END-IF
           .

       MXMARQUE-READ-END.
           DISPLAY "Lignes traitées: ", W-COUNT
           CLOSE MXMARQUE
           .


       

      *{Bench}end
       REPORT-COMPOSER SECTION.
