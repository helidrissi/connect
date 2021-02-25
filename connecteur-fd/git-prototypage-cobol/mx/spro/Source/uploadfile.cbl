      *{Bench}prg-comment
      * uploadfile.cbl
      * uploadfile.cbl is generated from W:\mx\spro\uploadfile.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. uploadfile.
       AUTHOR. nathalie.clair.
       DATE-WRITTEN. mercredi 22 janvier 2020 15:23:48.
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
       77 W-LOG-PALM       PIC  9(3).
       77 W-NPR-PALM       PIC  9(4).
       77 CMD  PIC  X(2000).
       77 OPENSAVE-STATUS  PIC  S99.
           88 OPENSAVE-OK VALUE IS 1. 
       77 W-COPY           PIC  9.
       77 w-tempFilename   PIC  X(128).
       77 w-browseFileName PIC  X(255).
       77 W-FIC            PIC  X(255).
           COPY  "W:\mistral\copy\cobcap.wrk".
           COPY  "opensave.def".
       77 MS-Sans-Serif8
                  USAGE IS HANDLE OF FONT VALUE NULL.
       77 Screen1-Wb-1-Value           PIC  X(256)
                  VALUE IS "about:blank".
       77 FILE-STATUS      PIC  X(2).
           88 Valid-COBCAP VALUE IS "00" THRU "09". 
       77 s    PIC  X(256).
       77 s2   PIC  X(256).
       77 i    PIC  9(3).
       77 n    PIC  9(3).
       77 w-ret            PIC  9.
       77 k    PIC  9(3).
       77 pr-i PIC  9(3).
       77 dr-i PIC  9(3).
       77 w-hFind
                  USAGE IS HANDLE VALUE NULL.
       77 nom-fic          PIC  X(128).
       77 nom-dir          PIC  X(128).
       77 w-filename       PIC  X(128).
       77 w-action         PIC  X(32).
       77 w-param          PIC  X(128).
       77 w-serveur        PIC  X(64).
       77 QUITTER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.

      *{Bench}end
       LINKAGE                     SECTION.
      *{Bench}linkage
       77 lk-zone-palm     PIC  X(500).
           COPY  "W:\mistral\copy\lk-uploadfile.wrk".
      *{Bench}end
       SCREEN                      SECTION.
      *{Bench}copy-screen
       01 Screen1.
           03 Screen1-Wb-1, Web-Browser, 
              COL 1,80, LINE 4,90, LINES 27,00 CELLS, SIZE 50,20 CELLS, 
              ID IS 4, 
              EVENT PROCEDURE Screen1-Wb-1-Event-Proc.
           03 Screen1-Pb-Close, Push-Button, 
              COL 49,30, LINE 1,30, LINES 24, SIZE 25, 
              BITMAP-HANDLE QUITTER24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1256, ID IS 1, 
              TITLE "Fermer".

      *{Bench}end

      *{Bench}linkpara
       PROCEDURE DIVISION USING lk-zone-palm, lk-uploadfile.
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
           PERFORM Before-Program
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
           COPY RESOURCE "QUITTER24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "QUITTER24.JPG", GIVING 
              QUITTER24-JPG
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
           IF QUITTER24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY QUITTER24-JPG
              MOVE 0 TO QUITTER24-JPG
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
              DISPLAY Floating GRAPHICAL WINDOW
                 LINES 31,80, SIZE 51,90, CELL HEIGHT 10, 
                 CELL WIDTH 10, COLOR IS 65793, LABEL-OFFSET 0, 
                 LINK TO THREAD, MODELESS, NO SCROLL, 
                 TITLE "Screen", TITLE-BAR, VISIBLE 0, NO WRAP, 
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
      * Screen1-Pb-Close Link To
              WHEN Key-Status = 1256
                 PERFORM Screen1-Pb-Close-Link
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

       Screen1-Wb-1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Wb-Title-Change
              PERFORM Screen1-Wb-1-Ev-Msg-Wb-Status-Text-Change
           END-EVALUATE
           .
      ***   start event editor code   ***
           copy "W:/mistral/copy/envmis.cbl".
061219 COPY "W:/mistral/copy/MisCentrefenetre.cbl".

      *
       Screen1-Aft-Initdata.
061219     PERFORM MisCentreFenetreScreen1
           modify Screen1-Handle, title = lk-uploadfile-title
                         
           perform MkDirs

           string "http://" delimited by size
               w-serveur delimited by "  "
               ":" delimited by size 
               w-numport-tomcat delimited by "  "  
               "/mis/web/upload_file.jsp?destfile=" delimited by size
               lk-uploadfile-destfile delimited by "  "
               "&keepext=" lk-uploadfile-keepext delimited by size
               into Screen1-Wb-1-Value
           modify Screen1-Wb-1, value = Screen1-Wb-1-Value
           .
      *
       Before-Program.
           accept w-serveur from environment "SERVEUR"
           COPY "W:/mistral/copy/lectport-tomcat.cbl".
           .


       MkDirs.
           set n to size of lk-uploadfile-destfile
           perform varying i from 1 by 1 until i > n
             if (lk-uploadfile-destfile(i:1) = "/" or "\") and
                (i > 1) then
               call "c$makedir" using lk-uploadfile-destfile(1:i - 1)
                   giving w-ret
             end-if
           end-perform

           .

       Screen1-Wb-1-Ev-Msg-Wb-Status-Text-Change.
           move spaces to s
           inquire Screen1-Wb-1, status-text in s

      *     inquire Screen1-Wb-1, title in s
      *     move space to cmd
      *     string "echo '" s "'>> /acuf/mistral/ft/TRACEN"
      *        delimited by size into cmd
      *     call "c$system" using cmd

           modify Screen1-Wb-1, status-text = spaces

           if s(1:7) = "action:" then
             move s(8:) to s2
             unstring s2 delimited by "=" into w-action w-param
             evaluate w-action
               when "cancel"
                 move spaces to w-param
               when "done"
                 unstring w-param delimited by ";"
                          into lk-uploadfile-srcfile
                               lk-uploadfile-savedfile
      *           display message w-param
             end-evaluate
           end-if
           .
      *
       Screen1-Pb-Close-Link.
      *     if lk-uploadfile-savedfile = space      
           if lk-uploadfile-keepext = 1  
              perform Recherche-Fichier
           end-if
           perform Mistral-Closecurrentwindow
           .

       Recherche-Fichier.
           move space to w-filename
           set n to size of lk-uploadfile-destfile
           move 0 to pr-i dr-i
           perform varying i from n by -1 until i < 2 
             if lk-uploadfile-destfile(i:1) <> space
             and dr-i = 0
                move i to dr-i
             end-if
             if lk-uploadfile-destfile(i:1) = "/" or "\"
               move i to pr-i
               move 1 to i
             end-if
           end-perform

           compute k = pr-i - 1
           move lk-uploadfile-destfile(1:k) to nom-dir
           compute k = dr-i - pr-i + 1
           string lk-uploadfile-destfile(pr-i + 1:k) "*" 
             delimited by " " into nom-fic
                        
           call "c$list-directory"
                using LISTDIR-OPEN, nom-dir, nom-fic
           move return-code to w-hFind
           if w-hFind  = 0  
              exit paragraph
           end-if
           call "c$list-directory"
                 using LISTDIR-NEXT, w-hFind, w-filename   
           call "c$list-directory" using LISTDIR-CLOSE, w-hFind
           string nom-dir "/" w-filename delimited by " "
              into lk-uploadfile-savedfile.
      *
       Screen1-Bef-Create.  
           perform controle-call       
      * ça marche mais je le laisse en attente
      *     IF (RUNTIME-MAJOR-VERSION = 08 
      *         AND RUNTIME-MINOR-VERSION = 01)
      *     OR (RUNTIME-MAJOR-VERSION > 08)
      *        perform MkDirs 
      *        perform LANCE-OPEN-BOX
      *        if lk-uploadfile-keepext = 1
      *           perform Recherche-Fichier
      *        end-if
      *        go acu-exit-rtn
      *     end-if
           .

       LANCE-OPEN-BOX.
           call "uploadfilec.acu" using  zone-palm, lk-uploadfile,
               opensave-data
           cancel "uploadfilec.acu".

       

      *{Bench}end
       REPORT-COMPOSER SECTION.
