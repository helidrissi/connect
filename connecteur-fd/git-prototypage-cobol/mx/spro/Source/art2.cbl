      *{Bench}prg-comment
      * art2.cbl
      * art2.cbl is generated from W:\mx\spro\art2.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. art2.
       AUTHOR. sarah.dehecq.
       DATE-WRITTEN. jeudi 16 juillet 2020 09:37:11.
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
       COPY "palette.def".
       COPY "showmsg.def".
      *{Bench}end

      *{Bench}copy-working
      * 77 Key-Status IS SPECIAL-NAMES CRT STATUS PIC 9(5) USAGE [None] VALUE 0.
           88 Exit-Pushed VALUE 27.
      *     88 Message-Received VALUE 95.
      *     88 Event-Occurred VALUE 96.
      * property-defined variable

      * user-defined variable
           COPY  "LK-ART-C.wrk".
           COPY  "cobcap.wrk".
       77 LK-ZONE-PALM     PIC  X(500).
       77 W-NPR-PALM       PIC  9(4)
                  VALUE IS 10.
       77 W-LOG-PALM       PIC  9(3)
                  VALUE IS 25.
       77 FILE-STATUS      PIC  X(2).

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
           PERFORM sart-Ev-Before-Program
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

       Acu-Close-Files.
      *    Before-Close
      *    After-Close
           .

      * COBCAP

      ***   start event editor code   ***
           COPY "W:/MISTRAL/COPY/ENVMIS.CBL".

       sart-Ev-Before-Program.           
           PERFORM Controle-Palme

           INITIALIZE LK-ART-C
           CALL "../../mx/o/art-c2.acu" USING ZONE-PALM, LK-ART-C
           CANCEL "../../mx/o/art-c2.acu"
           EXIT PROGRAM
           STOP RUN.
           .

       

      *{Bench}end
       REPORT-COMPOSER SECTION.
