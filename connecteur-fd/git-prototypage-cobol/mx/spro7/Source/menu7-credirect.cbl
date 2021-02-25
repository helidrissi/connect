      *{Bench}prg-comment
      * menu7-credirect.cbl
      * menu7-credirect.cbl is generated from W:\mx\spro7\menu7-credirect.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. menu7-credirect.
       AUTHOR. mistral.
       DATE-WRITTEN. mercredi 4 novembre 2020 19:36:25.
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
       COPY "fonts.def".
       COPY "showmsg.def".
      *{Bench}end

      *{Bench}copy-working
       77 Quit-Mode-Flag PIC S9(5) COMP-4 VALUE 0.
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
           COPY  "cobcap.wrk".
           COPY  "LK-ART-C.wrk".
           COPY  "LK-HIV-C.wrk".
           COPY  "LK-SBD-C.wrk".
           COPY  "envmis.wrk".
       77 FILE-STATUS      PIC  X(2).
           88 Valid-COBCAP VALUE IS "00" THRU "09". 
       77 W-LOG-PALM       PIC  9(3).
       77 W-NPR-PALM       PIC  9(4).
       77 LK-ZONE-PALM     PIC  X(500).
       77 Calibri12B
                  USAGE IS HANDLE OF FONT VALUE NULL.
       77 W-LIB-PROTO      PIC  X(25)
                  VALUE IS "PROTOTYPE  (E7)".
       77 W-PARAM          PIC  X(100).
       77 W-PARAM1         PIC  X(10).
       77 W-PARAM2         PIC  X(10).
       77 W-PARAM3         PIC  X(10).
       77 W-PARAM4         PIC  X(10).

      *{Bench}end
       LINKAGE                     SECTION.
      *{Bench}linkage
      *{Bench}end
       SCREEN                      SECTION.
      *{Bench}copy-screen
       01 Screen1.
           03 Screen1-Pb-mar, Push-Button, 
              COL 4,43, LINE 3,54, LINES 1,77 CELLS, SIZE 26,57 CELLS, 
              COLOR IS W-COLOR-PROTO, ID IS 2, TERMINATION-VALUE 1002, 
              TITLE "MARQUES".
           03 Screen1-Pb-art, Push-Button, 
              COL 4,43, LINE 10,62, LINES 3,23 CELLS, SIZE 26,57 CELLS, 
              COLOR IS W-COLOR-PROTO, ID IS 1, TERMINATION-VALUE 1001, 
              TITLE "ARTICLES".
           03 Screen1-Pb-sbd, Push-Button, 
              COL 4,43, LINE 19,92, LINES 3,23 CELLS, SIZE 26,57 CELLS, 
              COLOR IS W-COLOR-PROTO, ID IS 4, TERMINATION-VALUE 1004, 
              TITLE "SAISIE DES VENTES".
           03 Screen1-Pb-hiv, Push-Button, 
              COL 4,43, LINE 24,77, LINES 3,23 CELLS, SIZE 26,57 CELLS, 
              COLOR IS W-COLOR-PROTO, ID IS 3, TERMINATION-VALUE 1003, 
              TITLE "HISTORIQUE DES SORTIES".
           03 Screen1-Pb-MTF, Push-Button, 
              COL 4,43, LINE 15,08, LINES 3,23 CELLS, SIZE 26,57 CELLS, 
              EXCEPTION-VALUE 1000, ID IS 5, TERMINATION-VALUE 1005, 
              TITLE "MAJ TARIFS ARTICLES".
           03 Screen1-Ef-Company, Entry-Field, 
              COL 1,00, LINE 1,00, LINES 1,77 CELLS, SIZE 33,86 CELLS, 
              BOXED, COLOR IS W-COLOR-PROTO, BORDER-COLOR 8, ENABLED 0, 
              FONT IS Calibri12B, ID IS 6, CENTER, MAX-TEXT 25, 
              NO-AUTOSEL, NO-TAB, READ-ONLY, VALUE W-LIB-PROTO.
           03 Screen1-Pb-testlayout, Push-Button, 
              COL 4,29, LINE 29,54, LINES 3,23 CELLS, SIZE 26,57 CELLS, 
              COLOR IS W-COLOR-PROTO, EXCEPTION-VALUE 2001, ID IS 7, 
              TERMINATION-VALUE 1003, 
              TITLE "TEST LAYOUT".
           03 Screen1-Pb-1, Push-Button, 
              COL 9,14, LINE 33,85, LINES 1,85 CELLS, SIZE 7,29 CELLS, 
              EXCEPTION-VALUE 1002, ID IS 9, 
              TITLE "SBD".
           03 Screen1-Pb-SBDM, Push-Button, 
              COL 19,43, LINE 33,85, LINES 1,85 CELLS, SIZE 7,29 CELLS, 
              EXCEPTION-VALUE 1122, ID IS 10, 
              TITLE "SBDM".
           03 Screen1-Pb-2, Push-Button, 
              COL 4,43, LINE 37,08, LINES 2,54 CELLS, SIZE 26,29 CELLS, 
              COLOR IS W-COLOR-PROTO, EXCEPTION-VALUE 1555, ID IS 12, 
              TITLE "TEST".

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
      * set font
           PERFORM Acu-Init-Font
      * open file
           PERFORM Acu-Open-Files
      *    After-Init
           .

       Acu-Init-Font.
      * font setting
           INITIALIZE WFONT-DATA Calibri12B
           MOVE 12 TO WFONT-SIZE
           MOVE "Calibri" TO WFONT-NAME
           SET WFCHARSET-DEFAULT TO TRUE
           SET WFONT-BOLD TO TRUE
           SET WFONT-ITALIC TO FALSE
           SET WFONT-UNDERLINE TO FALSE
           SET WFONT-STRIKEOUT TO FALSE
           SET WFFAMILY-DONT-CARE TO TRUE
           SET WFONT-FIXED-PITCH TO FALSE
           CALL "W$FONT" USING WFONT-GET-FONT, Calibri12B, WFONT-DATA
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
           IF Calibri12B NOT = NULL
              DESTROY Calibri12B
              SET Calibri12B TO NULL
           END-IF
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
           PERFORM Screen1-Aft-Routine
           .

       Acu-Screen1-Scrn.
           PERFORM Acu-Screen1-Create-Win
           PERFORM Acu-Screen1-Init-Data
           .

       Acu-Screen1-Create-Win.
           PERFORM Screen1-Bef-Create
      * display screen
              DISPLAY Standard GRAPHICAL WINDOW
                 LINES 38,62, SIZE 33,86, CELL HEIGHT 13, CELL WIDTH 7, 
                 AUTO-MINIMIZE, COLOR IS 65793, LABEL-OFFSET 0, 
                 LINK TO THREAD, MODELESS, NO SCROLL, WITH SYSTEM MENU, 
                 TITLE "PROTOTYPE EQUIPE 7", TITLE-BAR, USER-GRAY, 
                 USER-WHITE, NO WRAP, 
                 EVENT PROCEDURE Screen1-Event-Proc, 
                 HANDLE IS Screen1-Handle
      * toolbar
           DISPLAY Screen1 UPON Screen1-Handle
      *    After-Create
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
              EVALUATE TRUE
      * Screen1-Pb-mar Link To
              WHEN Key-Status = 1002
                 PERFORM Screen1-Pb-mar-Link
      * Screen1-Pb-art Link To
              WHEN Key-Status = 1001
                 PERFORM Screen1-Pb-art-Link
      * Screen1-Pb-sbd Link To
              WHEN Key-Status = 1004
                 PERFORM Screen1-Pb-sbd-Link
      * Screen1-Pb-hiv Link To
              WHEN Key-Status = 1003
                 PERFORM Screen1-Pb-hiv-Link
              END-EVALUATE
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
      * Screen1-Pb-MTF Link To
              WHEN Key-Status = 1000
                 PERFORM Screen1-Pb-mtf-Link
      * Screen1-Pb-testlayout Link To
              WHEN Key-Status = 2001
                 PERFORM Screen1-Pb-testlayout-Link
      * Screen1-Pb-1 Link To
              WHEN Key-Status = 1002
                 PERFORM Screen1-Pb-sbdo-Link
      * Screen1-Pb-SBDM Link To
              WHEN Key-Status = 1122
                 PERFORM Screen1-Pb-sbdm-Link
      * Screen1-Pb-2 Link To
              WHEN Key-Status = 1555
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



       Acu-Screen1-Event-Extra.
           EVALUATE Event-Type
           WHEN Msg-Close
              PERFORM Acu-Screen1-Msg-Close
           END-EVALUATE
           .

       Acu-Screen1-Msg-Close.
           ACCEPT Quit-Mode-Flag FROM ENVIRONMENT "QUIT_MODE"
           IF Quit-Mode-Flag = ZERO
              PERFORM Acu-Screen1-Exit
              PERFORM Acu-Exit-Rtn
           END-IF
           .

       Screen1-Event-Proc.
      * 
           PERFORM Acu-Screen1-Event-Extra
           .
      ***   start event editor code   ***
       COPY "envmis-credirect.cbl".
      *
       Screen1-Pb-art-Link.
           call "../../mx/o7/art-c.acu"
               using zone-palm lk-art-c
           cancel "../../mx/o7/art-c.acu"
           .
      *
       Screen1-Pb-mar-Link.                                                "
           call   "../../mx/o7/mar.acu" 
           cancel "../../mx/o7/mar.acu"
           .
      *
       Screen1-Pb-hiv-Link.
           call "../../mx/o7/hiv-c-credirect.acu"
               using zone-palm lk-hiv-c
           cancel "../../mx/o7/hiv-c-credirect.acu" 
           .
      *
       Screen1-Pb-sbd-Link.
           call "../../mx/o7/sbd-c.acu" using zone-palm lk-sbd-c
           cancel "../../mx/o7/sbd-c.acu" 
           .
       Screen1-Pb-sbdo-Link.
           call "../../mx/o7/sbd-c.acu" using zone-palm lk-sbd-c
           cancel "../../mx/o7/sbd-c.acu"
           .
       Screen1-Pb-mtf-Link.
           call "../../mx/o7/mtf-credirect.acu" 
           cancel "../../mx/o7/mtf-credirect.acu"
           .
      *
       Screen1-Bef-Create.
           PERFORM Controle-Palme
           accept dtt-palm from century-date
           move "00" to age-palm.
           IF W-COLOR-PROTO = 481 MOVE "PROTOTYPE (2) " TO W-LIB-PROTO.
      *

      *
       Screen1-Pb-testlayout-Link.
           call "../../mx/o7/test-layout.acu" 
           cancel "../../mx/o7/test-layout.acu"
           .
      *
       Screen1-Aft-Initdata.
           ACCEPT W-PARAM FROM COMMAND-LINE
           UNSTRING W-PARAM DELIMITED BY " " INTO 
                    W-PARAM1 W-PARAM2 W-PARAM3 W-PARAM4
           IF W-PARAM <> SPACES
              DISPLAY MESSAGE "Paramètres: " 
                      W-PARAM1 " | " W-PARAM2 " | " W-PARAM3 " | "
                      W-PARAM4.
           .
      *
       Screen1-Pb-sbdm-Link.
           call "../../mx/o7/sbd-cm.acu" using zone-palm lk-sbd-c
           cancel "../../mx/o7/sbd-cm.acu"
           .
      *
       Screen1-Pb-2-Link.
           call "../../mx/o7/hivFZS.acu" using zone-palm lk-hiv-c
           cancel "../../mx/o7/hivFZS.acu"
           .
           
      *
       Screen1-Aft-Routine.
           PERFORM uninstallHandler
           .

       

      *{Bench}end
       REPORT-COMPOSER SECTION.
