      *{Bench}prg-comment
      * test-connexion.cbl
      * test-connexion.cbl is generated from W:\mx\spro\test-connexion.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. test-connexion.
       AUTHOR. kobalt.
       DATE-WRITTEN. mercredi 8 juillet 2020 10:29:07.
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
      *{Bench}end
       DATA                        DIVISION.
       FILE                        SECTION.
      *{Bench}file
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
       01 test-handle
                  USAGE IS HANDLE VALUE NULL.

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
           PERFORM After-Init
           .

       Acu-Exit-Rtn.
      * destroy font
           PERFORM Acu-Exit-Font
      * destroy bitmap
           PERFORM Acu-Exit-Bmp
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

      ***   start event editor code   ***
      * Ce programme nécessite une compilation avec un profil spécifique
      * utilisant le répertoire mistral/def-standard à la place de
      * mistral/def
       After-Init.
           display "connection start"
      *    If a firewall is set with a drop policy, ags-create-client
      *    waits for a long, not configurable time.
      *    If a service listens on 10000 and firewall with policy,
      *    following behavior is observed:
      *     - ACCEPT: connection start, connection done, connection closed
      *     - REJECT: connection start, connection failed
      *     - DROP: connection start then waits for 2 minutes (depends
      *       on OS settings)
      *
      *    It should be possible not to specify a timeout so that
      *    an error can be triggered faster if connection is not
      *    possible (SO_TIMEOUT).
           call "C$SOCKET" using ags-create-client, 10000,
                    "172.169.164.100" giving test-handle
           if test-handle <> null
               display "connection done"
               call "C$SOCKET" using ags-close, test-handle
               display "connection closed"
           else
               display "connection failed"
           end-if
           .

       

      *{Bench}end
       REPORT-COMPOSER SECTION.
