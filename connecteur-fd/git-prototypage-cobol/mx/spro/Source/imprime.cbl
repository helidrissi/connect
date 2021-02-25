      *{Bench}prg-comment
      * imprime.cbl
      * imprime.cbl is generated from W:\mx\spro\imprime.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. imprime.
       AUTHOR. nathalie.clair.
       DATE-WRITTEN. mercredi 22 janvier 2020 17:49:57.
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
       COPY "W:/mx/fdt/sl-imprime.cpy".
      *{Bench}file-control
       COPY "COBCAP.sl".
       COPY "XMLOut-File.sl".
      *{Bench}end
       DATA                        DIVISION.
       FILE                        SECTION.
       COPY "W:/mx/fdt/fd-imprime.cpy".
      *{Bench}file
       COPY "COBCAP.fd".
       COPY "XMLOut-File.fd".
      *{Bench}end
       WORKING-STORAGE             SECTION.
      *{Bench}acu-def
       COPY "acugui.def".
       COPY "acucobol.def".
       COPY "crtvars.def".
       COPY "palette.def".
       COPY "lmresize.def".
       COPY "showmsg.def".
      *{Bench}end

      *{Bench}copy-working
       77 Key-Status IS SPECIAL-NAMES CRT STATUS PIC 9(5) VALUE 0.
           88 Enter-Pushed VALUE 13.
           88 Exit-Pushed VALUE 27.
           88 Message-Received VALUE 95.
           88 Event-Occurred VALUE 96.
           88 Screen-No-Input-Field VALUE 97.
           88 Screen-Time-Out VALUE 99.
      * property-defined variable

      * user-defined variable
           COPY  "W:\mistral\copy\cobcap.wrk".
           COPY  "W:\mistral\copy\java.def".
       77 Screen1-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 Default-Font
                  USAGE IS HANDLE OF FONT DEFAULT-FONT.
       77 Large-Font
                  USAGE IS HANDLE OF FONT DEFAULT-FONT.
       77 CONFDEV-FILE-STATUS          PIC  X(2).
           88 Valid-CONFDEV VALUE IS "00" THRU "09". 
       77 W-LOG-PALM       PIC  9(3)
                  VALUE IS 25.
       77 W-NPR-PALM       PIC  9(4)
                  VALUE IS 181.
       77 Small-Font
                  USAGE IS HANDLE OF FONT SMALL-FONT.
       77 Screen2-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       01 FORMAT-IMP       PIC  X(3).
       01 IMP  PIC  X(20).
       01 W-IMPRIMER       PIC  9
                  VALUE IS 0.
       01 W-SIZE           PIC  9(5)V99
                  VALUE IS 131.
       01 W-LINES          PIC  9(5)V99
                  VALUE IS 53.
       01 WB-SIZE          PIC  9(5)V99
                  VALUE IS 913.
       01 WB-LINES         PIC  9(5)V99
                  VALUE IS 51.
       01 URL  PIC  X(256).
       77 URL1 PIC  X(512).
       77 URL2 PIC  X(512).
       77 URL3 PIC  X(512).
       77 W-FIC-TMP        PIC  X(256).
       77 W-REPERT         PIC  X(100).
       77 W-TXT1           PIC  X(100).
       77 W-TXT2           PIC  X(100).
       77 W-TXT3           PIC  X(100).
       77 W-FIC-PS         PIC  X(256).
       77 W-FIC-PDF        PIC  X(252).
       77 W-FIC-PDFPS      PIC  X(256).
       77 W-FIC-PDFCLI     PIC  X(256).
       77 W-FIC-CSVCLI     PIC  X(256).
       77 W-FIC-XMLCLI     PIC  X(256).
       77 W-FICOFFICE      PIC  X(256).
       77 W-PORTTOMCAT     PIC  X(256).
       77 W-Serveur        PIC  X(64).
       77 W-PDFT           PIC  X(64).
       77 PG1  PIC  9(4).
       77 PG2  PIC  9(4).
       77 NBC  PIC  99.
       77 W-IND            PIC  9(3).
       77 W-EXIT           PIC  X.
       77 PRG  PIC  X(40).
       77 FILE-STATUS      PIC  X(2).
       77 W-FIC            PIC  X(30).
       77 SV-FIC           PIC  X(30).
       77 W-EXPORT-FIC     PIC  9
                  VALUE IS 0.
       77 W-EDIT-PAGES     PIC  S9(1)
                  VALUE IS 1.
       77 W-FORMAT-FIC     PIC  S9(1)
                  VALUE IS 1.
       77 FLECHEBL2-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FLECHEBL1-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FLECHEG32-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FLECHED32-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 MY-LAYOUT
                  USAGE IS HANDLE VALUE NULL.
       77 W-LOGIN          PIC  X(20).
       77 W-PWD            PIC  X(20).
       77 FLECFND24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Screen1-LM
                  USAGE IS HANDLE OF LAYOUT-MANAGER, LM-RESIZE
                  VALUE NULL.
       77 ASSIGN-TRI       PIC  X(60).
       77 CMD  PIC  X(512).
       01 W-CRLF.
           05 FILLER           PIC  X
                      VALUE IS x"0D".
           05 FILLER           PIC  X
                      VALUE IS x"0A".
       01 W-LFSP.
           05 FILLER           PIC  X
                      VALUE IS x"0A".
           05 FILLER           PIC  X.
       77 W-COM-PS         PIC  X(5).
       77 W-PS-RECVE       PIC  9.
       77 W-PS-TIRE        PIC  9.
       77 W-PS-TIRS        PIC  9.
       77 W-FIC-PS2        PIC  X(256).
       77 W-FIC-INIT       PIC  X(1000).
       77 W-FIC-DEB-SECURE PIC  X(100).
       77 W-FIC-TMP1       PIC  X(100).
       77 W-FIC-TMP2       PIC  X(100).
       77 W-FIC-FIN-SECURE PIC  X(100).
       77 I    PIC  999.
       77 J    PIC  9.
       77 S1   PIC  S9(3).
       01 W-OSTYPE         PIC  X(15).
       01 W-PASSAGE        PIC  9(5).
       01 W-COMPTAGE       PIC  9(5).
       77 W-STATUS-FILE    PIC  9(3).
       01 FILE-INFO.
           03 FILE-SIZE        PIC  X(8)
                      USAGE IS COMP-X.
           03 FILE-DATE        PIC  9(8)
                      USAGE IS COMP-X.
           03 FILE-TIME        PIC  9(8).
       01 ENR-PARMIS.
           02 GS-PARMIS        PIC  9.
           02 FOPHT-PARMIS     PIC  9.
           02 ILOC-PARMIS      PIC  9.
       01 W-COMMANDE       PIC  X(256).
       01 HANDLE-CONTROLE
                  USAGE IS HANDLE VALUE NULL.
       77 PROG-APPEL       PIC  X(100).
       77 DIRC5X           PIC  9.
       77 ZON1 PIC  X(100).
       77 ZON2 PIC  X(100).
       77 PAS-GS           PIC  9.
       77 Fixed-Font
                  USAGE IS HANDLE OF FONT FIXED-FONT.
       77 W-IMPRIME        PIC  9.
       77 W-OPT-PAGES      PIC  X(100).
       77 W-SHRINK         PIC  X(20).
       77 w-return
                  USAGE IS SIGNED-INT.
       77 w-returnstop
                  USAGE IS SIGNED-INT.
       77 w-status         PIC  S9(3).
       77 w-statusstop     PIC  S9(3).
       77 Z3   PIC  -(9).
       77 hFop
                  USAGE IS HANDLE VALUE NULL.
       77 W-STR            PIC  X(128).
       77 W-FORMAT-SORTIE  PIC  X(3).
       77 W-PS-NOIRB       PIC  9
                  VALUE IS 0.
       77 NBC1 PIC  9(3).
       77 W-GRISE          PIC  9
                  VALUE IS 1.
       77 XMLOut-Assign    PIC  X(100).
       77 XMLOut-Assign2   PIC  X(100).
       77 prem PIC  9.
       77 W-FIC-A-IMPRIMER PIC  X(256).
       77 W-PDF-TIRE       PIC  9.
       77 W-PDF-TIRS       PIC  9.
       77 W-PDF-OK         PIC  9.
       77 STATUS-CODE      PIC  9(3).
       77 W-PDF-CONFDEV    PIC  9.
       77 W-LIGNE1         PIC  X(80).
       77 W-LIGNE2         PIC  X(80).
       77 I-C  PIC  9.
       77 W-DEBC           PIC  9(3).
       77 W-PARMIS         PIC  9(9).
       77 SV-PARMIS        PIC  9(9).
       77 W-IMPRIME-CSV    PIC  X(128).
       77 W-SECURE         PIC  9
                  VALUE IS 0.
      *
      *
       77 CMD-GS           PIC  X(100).
       77 WV-IMPRIME       PIC  9
                  VALUE IS 1.
       77 LK-HANDLE        PIC  9(4).
       77 PMPRGMIS-FILE-STATUS         PIC  X(2).
           88 Valid-PMPRGMIS VALUE IS "00" THRU "09". 
       77 Screen2-Visible  PIC  9
                  VALUE IS 0.

      *{Bench}end
       LINKAGE                     SECTION.
      *{Bench}linkage
       77 LK-ZONE-PALM     PIC  X(500).
           COPY  "W:\mistral\copy\LK-IMPRIME.wrk".
           COPY  "W:\mistral\copy\LK-INT.wrk".
      *{Bench}end
       SCREEN                      SECTION.
      *{Bench}copy-screen
       01 Screen1.
       01 Screen2.
           03 Screen2-Cm-Imp, Combo-Box, 
              COL 11,86, LINE 3,77, LINES 15,77 CELLS, 
              SIZE 37,71 CELLS, 
              3-D, COLOR IS 2, ID IS 1, MASS-UPDATE 0, 
              NOTIFY-SELCHANGE, DROP-LIST, UNSORTED, 
              EVENT PROCEDURE Screen2-Cm-Imp-Event-Proc.
           03 Screen2-Fr-1, Frame, 
              COL 2,71, LINE 1,85, LINES 11,62 CELLS, SIZE 49,86 CELLS, 
              RIMMED, COLOR IS 2, FONT IS Default-Font, ID IS 2, 
              TITLE "Imprimante", BACKGROUND-LOW.
           03 Screen2-La-TIRS, Label, 
              COL 5,71, LINE 10,38, LINES 1,00 CELLS, SIZE 12,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 28, LABEL-OFFSET 0, 
              TITLE "Réceptacle", TRANSPARENT, VISIBLE 0.
           03 Screen2-Rb-TIRE1, Radio-Button, 
              COL 19,71, LINE 8,77, LINES 1,23 CELLS, SIZE 3,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 3, GROUP-VALUE 1, 
              ID IS 34, 
              TITLE "1", VALUE W-PS-TIRE, VISIBLE 0.
           03 Screen2-Rb-TIRE2, Radio-Button, 
              COL 25,29, LINE 8,77, LINES 1,23 CELLS, SIZE 3,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 3, GROUP-VALUE 2, 
              ID IS 35, 
              TITLE "2", VALUE W-PS-TIRE, VISIBLE 0.
           03 Screen2-Rb-TIRE3, Radio-Button, 
              COL 30,86, LINE 8,77, LINES 1,23 CELLS, SIZE 3,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 3, GROUP-VALUE 3, 
              ID IS 36, 
              TITLE "3", VALUE W-PS-TIRE, VISIBLE 0.
           03 Screen2-Rb-TIRE4, Radio-Button, 
              COL 36,43, LINE 8,77, LINES 1,23 CELLS, SIZE 3,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 3, GROUP-VALUE 4, 
              ID IS 38, 
              TITLE "4", VALUE W-PS-TIRE, VISIBLE 0.
           03 Screen2-Rb-TIRE5, Radio-Button, 
              COL 42,00, LINE 8,77, LINES 1,23 CELLS, SIZE 3,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 3, GROUP-VALUE 5, 
              ID IS 40, 
              TITLE "5", VALUE W-PS-TIRE, VISIBLE 0.
           03 Screen2-Rb-TIRE6, Radio-Button, 
              COL 47,57, LINE 8,77, LINES 1,23 CELLS, SIZE 3,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 3, GROUP-VALUE 6, 
              ID IS 41, 
              TITLE "6", VALUE W-PS-TIRE, VISIBLE 0.
           03 Screen2-La-TIRE, Label, 
              COL 5,71, LINE 8,85, LINES 1,00 CELLS, SIZE 12,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 37, LABEL-OFFSET 0, 
              TITLE "Bac alimentation", TRANSPARENT, VISIBLE 0.
           03 Screen2-Rb-TIRS1, Radio-Button, 
              COL 19,71, LINE 10,46, LINES 1,23 CELLS, SIZE 3,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 4, GROUP-VALUE 1, 
              ID IS 29, 
              TITLE "1", VALUE W-PS-TIRS, VISIBLE 0.
           03 Screen2-Rb-TIRS2, Radio-Button, 
              COL 25,29, LINE 10,46, LINES 1,23 CELLS, SIZE 3,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 4, GROUP-VALUE 2, 
              ID IS 30, 
              TITLE "2", VALUE W-PS-TIRS, VISIBLE 0.
           03 Screen2-Rb-TIRS3, Radio-Button, 
              COL 30,86, LINE 10,46, LINES 1,23 CELLS, SIZE 3,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 4, GROUP-VALUE 3, 
              ID IS 31, 
              TITLE "3", VALUE W-PS-TIRS, VISIBLE 0.
           03 Screen2-Rb-TIRS4, Radio-Button, 
              COL 36,43, LINE 10,46, LINES 1,23 CELLS, SIZE 3,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 4, GROUP-VALUE 4, 
              ID IS 39, 
              TITLE "4", VALUE W-PS-TIRS, VISIBLE 0.
           03 Screen2-La-1, Label, 
              COL 5,57, LINE 4,00, LINES 1,00 CELLS, SIZE 5,71 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 3, LABEL-OFFSET 0, 
              TITLE "Nom", TRANSPARENT.
           03 Screen2-La-2, Label, 
              COL 5,57, LINE 6,00, LINES 1,00 CELLS, SIZE 10,71 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 4, LABEL-OFFSET 0, 
              TITLE "Type", TRANSPARENT.
           03 Screen2-La-3, Label, 
              COL 5,57, LINE 7,46, LINES 1,00 CELLS, SIZE 10,71 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 5, LABEL-OFFSET 0, 
              TITLE "Emplacement", TRANSPARENT.
           03 Screen2-La-TYP, Label, 
              COL 17,86, LINE 6,00, LINES 1,00 CELLS, SIZE 34,00 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 6, LABEL-OFFSET 0, 
              TRANSPARENT.
           03 Screen2-La-SPO, Label, 
              COL 17,86, LINE 7,46, LINES 1,00 CELLS, SIZE 34,00 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 7, LABEL-OFFSET 0, 
              TRANSPARENT.
           03 Screen2-Fr-2, Frame, 
              COL 2,71, LINE 13,92, LINES 7,08 CELLS, SIZE 37,29 CELLS, 
              RIMMED, COLOR IS 2, ID IS 8, 
              TITLE "Etendue de pages", BACKGROUND-LOW.
           03 Screen2-Rb-Page2, Radio-Button, 
              COL 5,14, LINE 16,46, LINES 1,08 CELLS, SIZE 8,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 1, 
              ID IS 9, 
              TITLE "Tout", VALUE W-EDIT-PAGES, 
              EVENT PROCEDURE Screen2-Rb-1-Event-Proc.
           03 Screen2-Rb-Page1, Radio-Button, 
              COL 5,14, LINE 18,23, LINES 1,08 CELLS, SIZE 8,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 2, 
              ID IS 10, 
              TITLE "Pages", VALUE W-EDIT-PAGES, 
              EVENT PROCEDURE Screen2-Rb-1a-Event-Proc.
           03 Screen2-Ef-PG1, Entry-Field, 
              COL 16,57, LINE 17,92, LINES 1,46 CELLS, SIZE 5,71 CELLS, 
              3-D, COLOR IS 2, FONT IS Small-Font, ID IS 11, VALUE PG1.
           03 Screen2-Ef-PG2, Entry-Field, 
              COL 26,14, LINE 17,92, LINES 1,46 CELLS, SIZE 5,71 CELLS, 
              3-D, COLOR IS 2, FONT IS Small-Font, ID IS 12, VALUE PG2.
           03 Screen2-La-6, Label, 
              COL 23,57, LINE 18,31, LINES 1,00 CELLS, SIZE 1,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 13, LABEL-OFFSET 0, 
              TITLE "à", TRANSPARENT.
           03 Screen2-Fr-3, Frame, 
              COL 53,71, LINE 1,85, LINES 4,23 CELLS, SIZE 21,57 CELLS, 
              RIMMED, COLOR IS 2, ID IS 14, 
              TITLE "Copies", BACKGROUND-LOW.
           03 Screen2-Ef-Copies, Entry-Field, 
              COL 65,29, LINE 3,54, LINES 1,46 CELLS, SIZE 7,00 CELLS, 
              3-D, COLOR IS 2, ID IS 15, MAX-VAL 30, MIN-VAL 1, 
              AUTO-SPIN, VALUE NBC.
           03 Screen2-La-7, Label, 
              COL 55,86, LINE 3,31, LINES 2,15 CELLS, SIZE 7,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 17, LABEL-OFFSET 0, 
              TITLE "Nombre de copies", TRANSPARENT.
           03 Screen2-Pb-Imp, Push-Button, 
              COL 55,00, LINE 21,69, LINES 1,77 CELLS, 
              SIZE 10,29 CELLS, 
              EXCEPTION-VALUE 1000, FONT IS Small-Font, ID IS 18, 
              TITLE "Impression".
           03 Screen2-Pb-1, Push-Button, 
              COL 65,29, LINE 21,69, LINES 1,77 CELLS, 
              SIZE 10,29 CELLS, 
              EXCEPTION-VALUE 2002, FONT IS Small-Font, ID IS 19, 
              TITLE "Annuler".
           03 Screen2-Fr-Exp, Frame, 
              COL 41,00, LINE 13,92, LINES 7,08 CELLS, 
              SIZE 34,43 CELLS, 
              RIMMED, ID IS 21, BACKGROUND-LOW.
           03 Screen2-Cb-Export, Check-Box, 
              COL 43,29, LINE 13,92, LINES 1,23 CELLS, 
              SIZE 14,57 CELLS, 
              COLOR IS 2, FONT IS Default-Font, ID IS 22, 
              TITLE "Export Fichier", VALUE W-EXPORT-FIC, 
              EVENT PROCEDURE Screen2-Cb-Export-Event-Proc.
           03 Screen2-Ef-Fic, Entry-Field, 
              COL 42,86, LINE 18,08, LINES 1,46 CELLS, 
              SIZE 30,71 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 23, VALUE W-FIC, 
              AFTER PROCEDURE Screen2-Ef-Fic-Aft-Procedure, 
              BEFORE PROCEDURE Screen2-Ef-Fic-Bef-Procedure.
           03 Screen2-Rb-Format, Radio-Button, 
              COL 50,29, LINE 16,15, LINES 1,23 CELLS, SIZE 6,00 CELLS, 
              COLOR IS 2, ENABLED 0, FONT IS Small-Font, GROUP 2, 
              GROUP-VALUE 1, ID IS 24, 
              TITLE "CSV", VALUE W-FORMAT-FIC.
           03 Screen2-Rb-Format2, Radio-Button, 
              COL 57,71, LINE 16,15, LINES 1,23 CELLS, SIZE 6,00 CELLS, 
              COLOR IS 2, ENABLED 0, FONT IS Small-Font, GROUP 2, 
              GROUP-VALUE 2, ID IS 25, 
              TITLE "PDF", VALUE W-FORMAT-FIC.
           03 Screen2-La-4, Label, 
              COL 43,43, LINE 16,15, LINES 1,00 CELLS, SIZE 5,71 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 26, LABEL-OFFSET 0, 
              TITLE "Format:", TRANSPARENT.
           03 Screen2-Rb-Format3, Radio-Button, 
              COL 65,14, LINE 16,15, LINES 1,23 CELLS, SIZE 6,00 CELLS, 
              COLOR IS 2, ENABLED 0, FONT IS Small-Font, GROUP 2, 
              GROUP-VALUE 3, ID IS 27, 
              TITLE "XML", VALUE W-FORMAT-FIC.
           03 Screen2-Fr-4, Frame, 
              COL 53,71, LINE 5,92, LINES 7,54 CELLS, SIZE 21,57 CELLS, 
              RIMMED, COLOR IS 2, ID IS 32, BACKGROUND-LOW.
           03 Screen2-Cb-RECVE, Check-Box, 
              COL 55,43, LINE 8,31, LINES 1,54 CELLS, SIZE 18,00 CELLS, 
              COLOR IS 2, ENABLED 0, FONT IS Small-Font, ID IS 33, 
              TITLE "Recto-Verso", VALUE W-PS-RECVE.
           03 Screen2-Cb-NOIRB, Check-Box, 
              COL 55,43, LINE 9,85, LINES 1,54 CELLS, SIZE 18,00 CELLS, 
              COLOR IS 2, ENABLED 0, FONT IS Small-Font, ID IS 16, 
              TITLE "Couleur", VALUE W-PS-NOIRB.
           03 Screen2-Cb-GRISE, Check-Box, 
              COL 55,43, LINE 6,92, LINES 1,38 CELLS, SIZE 18,00 CELLS, 
              COLOR IS 2, ENABLED 0, FONT IS Small-Font, ID IS 20, 
              TITLE "Grisés ", VALUE W-GRISE.
           03 Screen2-Cb-SECURE, Check-Box, 
              COL 55,43, LINE 11,38, LINES 1,54 CELLS, 
              SIZE 18,00 CELLS, 
              COLOR IS 2, ENABLED 0, FONT IS Small-Font, ID IS 43, 
              TITLE "Impression sécurisée", VALUE W-SECURE.

      *{Bench}end

      *{Bench}linkpara
       PROCEDURE DIVISION USING LK-ZONE-PALM, LK-IMPRIME, LK-INT.
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

       Acu-Screen1-Routine.
      *    Before-Routine
           PERFORM Acu-Screen1-Scrn
           PERFORM Acu-Screen1-Proc
           PERFORM Screen1-Aft-Routine
           .

       Acu-Screen2-Routine.
      *    Before-Routine
           PERFORM Acu-Screen2-Scrn
           PERFORM Acu-Screen2-Proc
      *    After-Routine
           .

       Acu-Screen1-Scrn.
           PERFORM Acu-Screen1-Create-Win
           PERFORM Acu-Screen1-Init-Data
           .

       Acu-Screen2-Scrn.
           PERFORM Acu-Screen2-Create-Win
           PERFORM Acu-Screen2-Init-Data
           .

       Acu-Screen1-Create-Win.
           PERFORM Screen1-Bef-Create
      * display screen
              DISPLAY Independent GRAPHICAL WINDOW
                 LINES W-LINES, SIZE W-SIZE, 
                 LAYOUT-MANAGER IS MY-LAYOUT CELL HEIGHT 13, 
                 CELL WIDTH 7, AUTO-MINIMIZE, AUTO-RESIZE, 
                 COLOR IS 65793, CONTROL FONT Large-Font, 
                 CONTROLS-UNCROPPED, LABEL-OFFSET 0, LINK TO THREAD, 
                 RESIZABLE, NO SCROLL, WITH SYSTEM MENU, TITLE-BAR, 
                 USER-GRAY, USER-WHITE, VISIBLE 0, NO WRAP, 
                 EVENT PROCEDURE Screen1-Event-Proc, 
                 HANDLE IS Screen1-Handle
      * toolbar
           DISPLAY Screen1 UPON Screen1-Handle
      *    After-Create
           .

       Acu-Screen2-Create-Win.
           PERFORM Screen2-Bef-Create
      * display screen
              DISPLAY Floating GRAPHICAL WINDOW
                 LINES 23,00, SIZE 75,57, CELL HEIGHT 13, CELL WIDTH 7, 
                 COLOR IS 65793, LABEL-OFFSET 0, LINK TO THREAD, 
                 MODELESS, NO SCROLL, 
                 TITLE "Impression", TITLE-BAR, USER-GRAY, USER-WHITE, 
                 VISIBLE Screen2-Visible, NO WRAP, 
                 EVENT PROCEDURE Screen2-Event-Proc, 
                 HANDLE IS Screen2-Handle
      * toolbar
           DISPLAY Screen2 UPON Screen2-Handle
      *    After-Create
           .

       Acu-Screen1-Init-Data.
      *    Before-Initdata
           PERFORM Screen1-AfterInitData
           .

       Acu-Screen2-Init-Data.
      *    Before-Initdata
           PERFORM Acu-Screen2-Cm-Imp-Content
           PERFORM Screen2-Aft-Initdata
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
      * Screen2
       Acu-Screen2-Proc.
           PERFORM UNTIL Exit-Pushed
              ACCEPT Screen2  
                 ON EXCEPTION PERFORM Acu-Screen2-Evaluate-Func
              END-ACCEPT
           END-PERFORM
           DESTROY Screen2-Handle
           INITIALIZE Key-Status
           .

      * Screen2-Cm-Imp
       Acu-Screen2-Cm-Imp-Content.
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

      * Screen2
       Acu-Screen2-Evaluate-Func.
           EVALUATE TRUE
              WHEN Exit-Pushed
                 PERFORM Acu-Screen2-Exit
              WHEN Event-Occurred
                 IF Event-Type = Cmd-Close
                    PERFORM Acu-Screen2-Exit
                 END-IF
      * Screen2-Pb-Imp Link To
              WHEN Key-Status = 1000
                 PERFORM Screen2-Pb-Imp-Link
      * Screen2-Pb-1 Link To
              WHEN Key-Status = 2002
                 PERFORM Screen2-Pb-1-Link
           END-EVALUATE
           MOVE 1 TO Accept-Control
           .

       Acu-Close-Files.
      *    Before-Close
      *    After-Close
           .

      * COBCAP

      * XMLOut-File

       Acu-Screen1-Exit.
           SET Exit-Pushed TO TRUE
           .

       Acu-Screen2-Exit.
           SET Exit-Pushed TO TRUE
           .


       Screen1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Close
              PERFORM Screen1-Ev-Cmd-Close
           END-EVALUATE
           .

       Screen2-Event-Proc.
           .

       Screen2-Cm-Imp-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Ntf-Selchange
              PERFORM Screen2-Cm-Imp-Ex-Ntf-Selchange
           END-EVALUATE
           .

       Screen2-Rb-1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen2-Rb-1-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen2-Rb-1a-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen2-Rb-1a-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen2-Cb-Export-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen2-Cb-Export-Link
           END-EVALUATE
           .
      ***   start event editor code   ***
           COPY "../../MISTRAL/COPY/ENVMIS.CBL".

       Screen1-Bef-Create.
           PERFORM Controle-Call.
           ACCEPT MY-LAYOUT FROM STANDARD OBJECT "LM-RESIZE".

           move 1 to WV-IMPRIME
      *     open i-o parmis
      *     perform stat 
      *     COPY "W:/mistral/copy/lect-parmis.cbl".
      *     close parmis    

           move 1 to iloc-parmis                 
           if iloc-parmis = 1
              move 0 to WV-IMPRIME
              IF LK-IMPRIME-PRVW = " " MOVE "P" TO LK-IMPRIME-PRVW
              END-IF
           end-if.


060515* pour imprimer les pdf des documents attachés avec gs car parfois pose problème
           CALL "C$CALLEDBY" USING PROG-APPEL
           MOVE SPACE TO ZON1 ZON2
           UNSTRING PROG-APPEL DELIMITED BY "/o/" INTO ZON1 ZON2
           IF ZON2 NOT = SPACE 
              MOVE ZON2 TO ZON1
           END-IF
           MOVE ZON1 TO PROG-APPEL
           MOVE SPACE TO ZON1 ZON2
           UNSTRING PROG-APPEL DELIMITED BY ".acu" INTO ZON1 ZON2
           MOVE ZON1 TO PROG-APPEL

      *--- Dans les prog "tba" "per-e" "pxr-imp" "ope" on imprime des codes barre
      *    et ça ne fonctionne pas dans les impressions hors tomcat !
           IF PROG-APPEL = "tba" or "per-e" or "pxr-imp" or "ope" or
              "eti-t" 
              move 0 to fopht-parmis
           END-IF

           ACCEPT W-Serveur FROM ENVIRONMENT "SERVEUR"          
           ACCEPT W-PDFT FROM ENVIRONMENT "PDFT"
           ACCEPT W-LOGIN FROM ENVIRONMENT "FILELOGIN" 
           ACCEPT W-PWD FROM ENVIRONMENT "FILEPWD" 
           ACCEPT W-OSTYPE FROM ENVIRONMENT "OSTYPE" 
           ACCEPT W-FICOFFICE FROM ENVIRONMENT "FICOFFICE"
           
           COPY "W:/mistral/copy/lectport-tomcat.cbl".
           MOVE 1 TO W-GRISE

           MOVE SPACE TO W-STR
           STRING P-DIR DELIMITED BY " " 
                  LK-IMPRIME-XSL DELIMITED BY SIZE INTO W-STR
           MOVE W-STR TO LK-IMPRIME-XSL

           MOVE LK-IMPRIME-CSV TO W-IMPRIME-CSV
           MOVE SPACE TO LK-IMPRIME-CSV

           IF LK-IMPRIME-ORI not = "pdf"
                         AND NOT = "ps" 
               copy "W:/mistral/copy/init-trace-java.cbl".
           end-if.
      *  impression rapide
      *     IF LK-IMPRIME-PRVW = "R" 
      *        PERFORM MEP-CONFDEV THRU F-MEP-CONFDEV
      *        IF W-IND = 0 OR IMP = SPACE
      *           DISPLAY "PB IMPRIMANTE"
      *           DISPLAY IMP-PALM
      *           MOVE SPACE TO LK-IMPRIME-PRVW
      *        END-IF
      *     END-IF
      *     IF LK-IMPRIME-PRVW = "R" 
      *        MOVE "ps" TO FORMAT-IMP                                              
      *        MOVE IMP TO CLE1-CONFDEV
      *        READ CONFDEV INVALID 
      *           DISPLAY "PB IMPRIMANTE"
      *           DISPLAY IMP-PALM
      *           MOVE SPACE TO LK-IMPRIME-PRVW
      *        END-READ
      *        PERFORM STAT
      *        IF SPO-CONFDEV = SPACE 
      *           DISPLAY "PB SPOOL IMPRIMANTE"
      *           DISPLAY IMP-PALM
      *           MOVE SPACE TO LK-IMPRIME-PRVW
      *        END-IF
      *     END-IF
      *     IF LK-IMPRIME-PRVW = "R" 
      *        MOVE PDF-CONFDEV TO W-PDF-CONFDEV
      *        IF W-PDF-CONFDEV = 1 THEN
      *           PERFORM TEST-SEQ-PDF
      *        END-IF
      *
      *        MOVE "pdf" to W-FORMAT-SORTIE
      *        MOVE SPACE TO W-FIC
      *        STRING PRO-PALM LK-IMPRIME-ETAT "-" IDE-PALM "-" DTT-PALM 
      *            DELIMITED BY " " INTO W-FIC
      *        PERFORM NOMME-FICHIERS
      *
      *        IF LK-IMPRIME-DIF = 1 THEN
      **          impression arrière-plan
      *           PERFORM DEB-GENERE-FICHIER-JAVA 
      *              THRU FIN-GENERE-FICHIER-JAVA
      *        ELSE
      *           PERFORM Genere-Fichier-Java
      *        END-IF                                
      *
      *        MOVE 1 TO NBC
      *        PERFORM Impression-papier-Avec-Previsu
      *
      *        GO Acu-Exit-Rtn
      *        EXIT PARAGRAPH
      *     END-IF
      *  fin impression rapide                 

      *  pré-visualisation
           IF LK-IMPRIME-ORI not = "pdf"
                         AND NOT = "ps"
              IF LK-IMPRIME-PRVW = "P"
                 PERFORM GENERE-FICHIER-XML 
                 IF LK-IMPRIME-XML = SPACE  
                    GO Acu-Exit-Rtn
                 END-IF      
                 MOVE "pdf" TO W-FORMAT-SORTIE
                 PERFORM GENERE-FICHIER-JAVA      
              ELSE
      *  édition sans pré-visualisation
                 IF LK-IMPRIME-EXPORT NOT = ZERO
                   MOVE LK-IMPRIME-EXPORT TO W-FORMAT-FIC
                   IF LK-IMPRIME-EXPORT = 4 OR 5
                      MOVE 2 TO W-FORMAT-FIC
                   END-IF
                   IF LK-IMPRIME-EXPORT = 6
                      MOVE 1 TO W-FORMAT-FIC
                   END-IF
                   PERFORM EXPORT-FICHIER
                 ELSE
                   PERFORM CURSEUR-FLECHE
                   PERFORM Acu-Screen2-Routine
                 END-IF
                 GO Acu-Exit-Rtn
              END-IF     
           ELSE
              IF LK-IMPRIME-PRVW = "P"
                 MOVE LK-IMPRIME-XML TO W-FIC-PDF
              ELSE
                 PERFORM CURSEUR-FLECHE
                 PERFORM Acu-Screen2-Routine
                 GO Acu-Exit-Rtn
              END-IF     
           END-IF  
           PERFORM PREVISUALISATION.
           .

       Screen1-AfterInitData.
           .
       PREVISUALISATION.
           MOVE SPACES TO URL1          
           STRING "http://" W-Serveur ":" w-numport-tomcat "/mis/file?"   
                  "file=" W-FIC-PDF 
                  "&login=" W-LOGIN
                  "&pwd=" W-PWD
                  DELIMITED BY " " INTO URL1
           MOVE ZERO TO W-IMPRIME
           call "../../mx/o/imprime-url.acu" using  
                ZONE-PALM URL1 W-IMPRIME W-FIC-PDF 
                LK-HANDLE | W-FIC-PDF passé de 256 à 252
           cancel "../../mx/o/imprime-url.acu"
           IF W-IMPRIME = 1
              PERFORM Acu-Screen2-Routine
           END-IF
           perform Screen1-Ev-Cmd-Close
           PERFORM Acu-Screen1-Exit.
           .
      ******************************************************************
      *      Génération du fichier XML par call du programme 
      *
       GENERE-FICHIER-XML.
           | appel du programme pour générer le fichier xml (ex: cac-e)
           IF LK-IMPRIME-PRG NOT = SPACE
              MOVE SPACE TO PRG
              STRING P-DIR LK-IMPRIME-PRG ".acu" 
                     DELIMITED BY " " INTO PRG        
              IF W-GRISE = 0 MOVE "N" TO LK-IMPRIME-GRISE
              END-IF
              CALL PRG USING ZONE-PALM LK-IMPRIME LK-INT
              CANCEL PRG
           END-IF.
           PERFORM NOMME-FICHIERS.

       NOMME-FICHIERS.
           MOVE SPACE TO W-FIC-TMP W-FIC-PS 
           | fichier fo = fichier résultat de fusion xml/xsl
           STRING LK-IMPRIME-XML ".fo" DELIMITED BY " " INTO W-FIC-TMP

           | fichier ps = fichier postscript pour impression
           STRING LK-IMPRIME-XML ".ps" DELIMITED BY " " INTO W-FIC-PS

           MOVE SPACE TO W-REPERT W-TXT1 W-TXT2 W-TXT3
           UNSTRING W-FIC-TMP DELIMITED BY "/ft/" INTO W-REPERT W-TXT2
           UNSTRING W-TXT2 DELIMITED BY ".xml" INTO W-TXT1 W-TXT3

           IF LK-IMPRIME-EXPORT NOT = ZERO |permet de nommer le fichier à partir du fichier xml
             MOVE W-TXT1 TO W-FIC
           END-IF

           MOVE SPACE TO W-FIC-PDF W-FIC-PDFCLI W-FIC-CSVCLI  
                         W-FIC-XMLCLI
                    
           | fichier pour générer le .pdf si choix: export pdf
           STRING W-REPERT "/fx/" W-FIC ".pdf" DELIMITED BY " "
                  INTO W-FIC-PDFCLI

           | fichier pour générer le .csv si choix: export csv
           STRING W-REPERT "/fx/" W-FIC ".csv" DELIMITED BY " "
                  INTO W-FIC-CSVCLI

170211* spécial EPM pour générer un nom de fichier défini au départ
      **     IF LK-IMPRIME-CSV <> SPACE 
      **        MOVE LK-IMPRIME-CSV TO W-FIC-CSVCLI
040412**                               W-FIC-PDFCLI | pour export PDF
      **     END-IF
           IF W-IMPRIME-CSV <> SPACE 
              MOVE W-IMPRIME-CSV TO W-FIC-CSVCLI
040412                              W-FIC-PDFCLI | pour export PDF
           END-IF

           | spécial mailing
           IF LK-IMPRIME-FAC = "M"
              MOVE SPACE TO W-FIC-CSVCLI
              STRING W-FICOFFICE DELIMITED BY " "
                     "/mailing/" W-FIC ".csv" DELIMITED BY " "
                  INTO W-FIC-CSVCLI
           END-IF

           | fichier pour générer le .xml si choix: export xml
           STRING W-REPERT "/fx/" W-FIC ".xml" DELIMITED BY " "
                  INTO W-FIC-XMLCLI

           | fichier pour générer le .pdf à consulter à l'écran
           STRING W-PDFT "/" W-TXT1 ".pdf" DELIMITED BY " " 
                  INTO W-FIC-PDF.
           IF LK-IMPRIME-ORI = "pdf"
              MOVE LK-IMPRIME-XML TO W-FIC-PDF
           END-IF.

      ******************************************************************
      *      Génération fichier Pdf à partir de Xml et Xsl
      *
       GENERE-FICHIER-JAVA.
           IF LK-IMPRIME-EXPORT = 5 OR 6
              PERFORM DEB-GENERE-FICHIER-JAVA 
                 THRU FIN-GENERE-FICHIER-JAVA
              EXIT PARAGRAPH
           END-IF
      *     MOVE 0 TO W-PBThread-Annul   
      *     MOVE "DOCUMENT EN COURS DE FORMATAGE" to W-PBThread-Title  
090719*     MOVE HANDLE-PALM TO MCF-HANDLE-FP
090719*     MOVE 1 TO MCF-ABSOLU | fenêtre indépendante
040419**     COPY "../../mistral/copy/Mis-ProgressBar.cbl" REPLACING 
040419*     COPY "../../mistral/copy/Mis-ProgressBar-Centre.cbl" 
      *     REPLACING 
      *        ==PBTRAIT==         BY ==DEB-GENERE-FICHIER-JAVA==,
      *        ==F-PBTRAIT==       BY ==FIN-GENERE-FICHIER-JAVA==,
      *        ==PBSCREEN-Handle== BY ==Screen1-handle==.             
           perform DEB-GENERE-FICHIER-JAVA thru FIN-GENERE-FICHIER-JAVA
           PERFORM CURSEUR-FLECHE
           .

       DEB-GENERE-FICHIER-JAVA.
           PERFORM CreatJava
           PERFORM DoGeneration
           PERFORM DestroyJava.
       FIN-GENERE-FICHIER-JAVA.

       CreatJava.
           move 0 to hFop
           IF W-FORMAT-SORTIE = "csv"
              if fopht-parmis <> 1
                 call "c$java" using
                   CJAVA-NEW, "fr/mistral/xml/XmlService", "()V"
                   giving hFop
                   on exception display message box "erreur call"
                 end-call
160316        else             | Si génération du csv hors Tomcat (paramètre dans PARMIS)
                 call "c$java" using
                   CJAVA-NEW, "fr/mistral/xml/XmlProcessor", "()V"
                   giving hFop
                   on exception display message box "erreur call"
                 end-call
              end-if
           ELSE     
              if fopht-parmis <> 1 
                 call "c$java" using
                   CJAVA-NEW, "fr/mistral/print/PrintService", "()V"
                   giving hFop
                   on exception display message box "erreur call"
                 end-call
270315        else              | Si génération du fop hors Tomcat (paramètre dans PARMIS)   
                 call "c$java" using
                   CJAVA-NEW, "fr/mistral/print/PrintBean", "()V"
                   giving hFop
                   on exception display message box "erreur call"
                 end-call 
              end-if  
           end-if                                
      *
           .

       DoGeneration.
           IF W-FORMAT-SORTIE = "pdf"
                MOVE W-FIC-PDF TO W-FIC-PDFPS
           ELSE MOVE W-FIC-PS TO W-FIC-PDFPS
           END-IF
           IF W-FORMAT-SORTIE = "csv" 
              MOVE SPACE TO W-STR
              STRING P-DIR DELIMITED BY " " 
                  LK-IMPRIME-FIC DELIMITED BY SIZE INTO W-STR
              if fopht-parmis <> 1              | Génération csv dans Tomcat 
                 call "c$java" using
                    CJAVA-CALLNONVIRTUAL, hFop, 
                    "fr/mistral/xml/XmlService", 
                    "xslt", "(XXX)I", 
                    LK-IMPRIME-XML, W-STR,
                    W-FIC-TMP, w-return
                 giving w-status
                 end-call 
160316        else                              | Génération csv hors Tomcat
                 call "c$java" using
                    CJAVA-CALLNONVIRTUAL, hFop, 
                    "fr/mistral/xml/XmlProcessor", 
                    "xslt", "(XXX)I", 
                    LK-IMPRIME-XML, W-STR,
                    W-FIC-TMP, w-return
                 giving w-status
                 end-call
              end-if
           else
              if fopht-parmis <> 1               | Génération fop dans Tomcat 
                 call "c$java" using
                   CJAVA-CALLNONVIRTUAL, hFop, 
                   "fr/mistral/print/PrintService", 
                   "doGeneration", "(XXXX)I", 
                   LK-IMPRIME-XML, LK-IMPRIME-XSL,
                   W-FIC-PDFPS, W-FORMAT-SORTIE, w-return
                    giving w-status
                 end-call
270315        else                               | Génération fop hors Tomcat
                 call "c$java" using
                   CJAVA-CALLNONVIRTUAL, hFop, 
                   "fr/mistral/print/PrintBean", 
                   "doGeneration", "(XXXX)I", 
                   LK-IMPRIME-XML, LK-IMPRIME-XSL,
                   W-FIC-PDFPS, W-FORMAT-SORTIE, w-return
                    giving w-status
                 end-call 
              end-if  
           end-if
           if w-status <> 0 or w-return <> 0
                if fopht-parmis <> 1 move "PrintService" to acu-msg-1
                else                 move "PrintBean"    to acu-msg-1
                end-if
                move w-return to z3
                string "Status java = " z3 delimited by size
                into acu-msg-2
                string "Status programme = " w-status delimited by size
                into acu-msg-3
                perform msg-erreur
                string "xml=" LK-IMPRIME-XML into acu-msg-1
                string "xsl=" LK-IMPRIME-XSL into acu-msg-2
                string "w-fic-pdfps=" W-FIC-PDFPS " W-FORMAT-SORTIE=" 
                        W-FORMAT-SORTIE delimited by "   "
                   into acu-msg-3
                perform msg-erreur
           end-if.

       DestroyJava.
           call "c$java" using
                CJAVA-DESTROY, hFop 
                giving w-status.

      ******************************************************************
      *      Génération terminée
      *
       Screen1-Wb-1-Ev-Msg-Wb-Navigate-Complete.
      *     MODIFY Screen1-Handle, VISIBLE TRUE.
      *     MOVE 1 TO W-PBThread-End 
           .
      
      ******************************************************************
      *      Impression
       Screen2-Pb-Imp-Link.
           INQUIRE Screen2-Cm-Imp, VALUE = IMP
           IF IMP = SPACE AND W-EXPORT-FIC NOT = 1
              MOVE "Sélectionnez une imprimante" TO ACU-MSG-1
              PERFORM MSG-INFO
              EXIT PARAGRAPH.

           IF (W-EDIT-PAGES = 2 AND (PG1 = 0 OR PG2= 0) OR (PG2 < PG1)) 
           AND W-EXPORT-FIC NOT = 1
              MOVE "Sélectionnez une série de pages" TO ACU-MSG-1
              PERFORM MSG-INFO
              EXIT PARAGRAPH.
           IF W-EXPORT-FIC = 1
              INQUIRE Screen2-Ef-Fic, VALUE IN W-FIC
              IF W-FIC = SPACE 
                 MOVE "Indiquez un nom de fichier" TO ACU-MSG-1
                 PERFORM MSG-INFO
                 EXIT PARAGRAPH.
           
      *     IF W-EXPORT-FIC NOT = 1   
      *        MOVE "ps" TO FORMAT-IMP                                              
      *        MOVE IMP TO CLE1-CONFDEV
      *        READ CONFDEV INVALID EXIT PARAGRAPH
      *        END-READ
      *        PERFORM STAT
      *        IF SPO-CONFDEV = SPACE EXIT PARAGRAPH
      *        END-IF
      *        MOVE PDF-CONFDEV TO W-PDF-CONFDEV
      *        IF W-PDF-CONFDEV = 1 THEN
      **          Test si séquence REFDEV sur plusieurs lignes -> pas PDF
      *           PERFORM TEST-SEQ-PDF
      *        END-IF
      *     END-IF
              
      * génération fichier .fo (fusion xml / xsl)
      * ce fichier n'est généré que si on n'a pas prévisualisé
      * dans le cas contraire, la preview l'a généré
      *
      * si on a envoyé un fichier de format "pdf" directement
      * pas de génération, transfert direct en ps
           MODIFY Screen2-Handle, ENABLED FALSE
           PERFORM NOMME-FICHIERS

           IF W-GRISE = 0 
           AND (LK-IMPRIME-PRVW = "P"  
                OR LK-IMPRIME-PRG = SPACE)
              PERFORM EFFACE-COULEURS
           END-IF

           | impression
           IF W-EXPORT-FIC = 0
                IF LK-IMPRIME-PRVW NOT = "P"
                AND LK-IMPRIME-ORI NOT = "pdf"
                    IF LK-IMPRIME-CSV = SPACE |si déjà fait /export fic
                       PERFORM Genere-Fichier-Xml
                    END-IF
                    IF LK-IMPRIME-XML = SPACE                     
                       MODIFY Screen2-Handle, ENABLED TRUE
                       PERFORM CURSEUR-FLECHE
                       EXIT PARAGRAPH
                    END-IF
                    PERFORM Impression-Papier-Sans-Previsu
                ELSE
                   IF W-GRISE = 0
                        PERFORM Impression-papier-sans-Previsu
                   ELSE PERFORM Impression-Papier-Avec-Previsu
                   END-IF
                END-IF
           END-IF

           | export fichier
           IF W-EXPORT-FIC = 1 
              PERFORM EXPORT-FICHIER
           END-IF
           
      *     PERFORM CURSEUR-FLECHE
      ***  le 02/10/2014 : on ne sort pas après un export fichier
           MODIFY Screen2-Handle, ENABLED TRUE
           IF W-EXPORT-FIC = 0
              PERFORM Mistral-Closecurrentwindow
           END-IF
           .
       EXPORT-FICHIER.
              IF LK-IMPRIME-PRVW NOT = "P"
              AND LK-IMPRIME-ORI NOT = "pdf"
                  IF LK-IMPRIME-CSV = SPACE |si déjà fait /export fic
                     PERFORM Genere-Fichier-Xml
                  END-IF
              END-IF
              EVALUATE W-FORMAT-FIC 
              WHEN 1  | export csv
                MOVE "csv" to W-FORMAT-SORTIE
                PERFORM Genere-Fichier-Java
                PERFORM Copy-Fic-CSV
                PERFORM Message-Generation
              WHEN 2  | export pdf
                MOVE "pdf" to W-FORMAT-SORTIE
                if lk-imprime-xsl not = P-DIR then 
                  PERFORM Genere-Fichier-Java
                end-if
                PERFORM Copy-Fic-PDF
                PERFORM Message-Generation
              WHEN 3  | export xml
                PERFORM Copy-Fic-XML
                PERFORM Message-Generation
              END-EVALUATE
           .
      ******************************************************************
      *    Si on ne prévisualise pas, on génère un postscript          *
      *    à partir du xml et du xsl                                   *
      ******************************************************************
       Impression-papier-sans-Previsu.
      *     Modif le 15/05/2006 car l'impression en paysage ne 
      *     fonctionne pas
      *     MOVE "ps" to W-FORMAT-SORTIE
      *     PERFORM Genere-Fichier-Java
      *     PERFORM Impression-Papier.
           MOVE "pdf" to W-FORMAT-SORTIE
           if lk-imprime-xsl not = P-DIR then        | Fred
             PERFORM Genere-Fichier-Java
           end-if                                     | Fred
           PERFORM Impression-Papier-Avec-Previsu.


      ******************************************************************
      *    Lancement de l'impression - envoi fichier ps dans le spool  *
      ******************************************************************
       Impression-Papier.
           | Boucle nombre d'exemplaire
           IF LK-IMPRIME-VERSO = SPACE 
                MOVE 1 TO I PERFORM Impression-Un-Exemplaire 
           ELSE PERFORM Impression-Un-Exemplaire 
                   VARYING I FROM 1 BY 1 UNTIL I > NBC
           END-IF
           CALL "C$DELETE" USING W-FIC-PS
           MOVE 1 TO LK-IMPRIME-RES
           MOVE "X" TO W-EXIT.

       Impression-Un-Exemplaire.
           .

      ******************************************************************
      *    Si on prévisualise, on génère le postscript à partir du pdf *
      ******************************************************************
      *
       Impression-Papier-Avec-Previsu.    
           .

      ******************************************************************
      *    Message de génération du fichier (export pdf, xml ou csv)   *
      ******************************************************************
       Message-Generation.
           IF LK-IMPRIME-EXPORT NOT = 4 AND NOT = 5 AND NOT = 6
              MOVE "Le fichier" TO ACU-MSG-1
              IF W-FORMAT-FIC = 3
                   MOVE W-FIC-XMLCLI TO ACU-MSG-2 
              ELSE IF W-FORMAT-FIC = 2
                        MOVE W-FIC-PDFCLI TO ACU-MSG-2 
                   ELSE MOVE W-FIC-CSVCLI TO ACU-MSG-2
                   END-IF
              END-IF
              MOVE "a été généré" TO ACU-MSG-3
              PERFORM MSG-INFO
           END-IF
           IF LK-IMPRIME-EXPORT = 5 AND LK-IMPRIME-NSEL <> 0
              PERFORM TEST-TRADIF THRU F-TEST-TRADIF
           END-IF

           MOVE 1 TO LK-IMPRIME-RES
           MOVE "X" TO W-EXIT.

      ******************************************************************

      *    Sauvegarde du fichier PDF
       Copy-Fic-PDF.
           MOVE SPACE TO CMD
           STRING W-REPERT DELIMITED BY " "
                  "/fx" DELIMITED BY SIZE
             INTO CMD
           CALL "C$MAKEDIR" USING CMD GIVING W-IND
           CALL "C$COPY" USING W-FIC-PDF, W-FIC-PDFCLI, "S".
  
041208     MOVE W-FIC-PDFCLI TO LK-IMPRIME-CSV.

           | 16/11/2007

           MOVE SPACE TO CMD
           STRING "chmod 777 " DELIMITED BY SIZE
                  " " DELIMITED BY SIZE
                  W-FIC-PDFCLI DELIMITED BY SIZE INTO CMD
           CALL "C$SYSTEM" USING CMD, GIVING W-IND.

      *    Sauvegarde du fichier CSV
       Copy-Fic-CSV.
           MOVE SPACE TO CMD
           STRING W-REPERT DELIMITED BY " "
                  "/fx" DELIMITED BY SIZE
             INTO CMD
           CALL "C$MAKEDIR" USING CMD GIVING W-IND
           CALL "C$COPY" USING W-FIC-TMP, W-FIC-CSVCLI, "S"

           MOVE W-FIC-CSVCLI TO LK-IMPRIME-CSV.

           | 16/11/2007
           MOVE SPACE TO CMD
           STRING "chmod 777 " DELIMITED BY SIZE
                  " " DELIMITED BY SIZE
                  W-FIC-CSVCLI DELIMITED BY SIZE INTO CMD
           CALL "C$SYSTEM" USING CMD, GIVING W-IND.

      *    Sauvegarde du fichier XML
       Copy-Fic-XML.
           MOVE SPACE TO CMD
           STRING W-REPERT DELIMITED BY " "
                  "/fx" DELIMITED BY SIZE
             INTO CMD
           CALL "C$MAKEDIR" USING CMD GIVING W-IND
           CALL "C$COPY" USING LK-IMPRIME-XML, W-FIC-XMLCLI, "S". 

           MOVE W-FIC-XMLCLI TO LK-IMPRIME-CSV.

           | 16/11/2007
           MOVE SPACE TO CMD
           STRING "chmod 777 " DELIMITED BY SIZE
                  " " DELIMITED BY SIZE
                  W-FIC-XMLCLI DELIMITED BY SIZE INTO CMD
           CALL "C$SYSTEM" USING CMD, GIVING W-IND.

      ******************************************************************
      *      Suppression des fichiers en fin de traitement
       Delete-Fic.
           CALL "C$DELETE" USING W-FIC-TMP
           if lk-imprime-keepxml not = 1 then
             CALL "C$DELETE" USING LK-IMPRIME-XML
           end-if
           IF LK-IMPRIME-ORI not = "pdf" 
280710* spécifique Mistral pour envoi mises à jour clients
           and (cli-palm > 10 or W-TXT2(1:8) not = "GUIDEMAJ")
              CALL "C$DELETE" USING W-FIC-PDF
           END-IF.

      ******************************************************************
      *    Gestion de l'écran d'impression
       Screen2-Pb-1-Link.
311014     MOVE 1 TO LK-IMPRIME-FERME-PAS   | Pour ne pas que la fenêtre de sélection se ferme (après impression ou export csv)
           PERFORM Acu-Screen2-Exit.

       Screen2-Bef-Create.
           IF LK-IMPRIME-NBC = 0 
              MOVE 1 TO NBC
           ELSE
              MOVE LK-IMPRIME-NBC TO NBC
           END-IF

           MOVE 1 TO W-EDIT-PAGES.
           MOVE SPACE TO W-FIC
           STRING PRO-PALM LK-IMPRIME-ETAT "-" IDE-PALM "-" DTT-PALM 
                  DELIMITED BY " " INTO W-FIC.
           IF LK-IMPRIME-FIC = SPACE
              MOVE 2 TO W-FORMAT-FIC.
           if iloc-parmis = 1
              move 1 to W-EXPORT-FIC
           end-if
           MOVE 1 TO Screen2-Visible
           .
      
       Screen2-Rb-1-Ev-Cmd-Clicked.
           MODIFY Screen2-Ef-PG1, VALUE 0, ENABLED FALSE
           MODIFY Screen2-Ef-PG2, VALUE 0, ENABLED FALSE
           MOVE 0 TO PG1 PG2
           MOVE 1 TO W-EDIT-PAGES.

       Screen2-Rb-1a-Ev-Cmd-Clicked.
           IF PG1 = 0 MOVE 1 TO PG1.
           MODIFY Screen2-Ef-PG1, VALUE PG1, ENABLED TRUE
           IF PG2 < PG1 MOVE PG1 TO PG2.
           MODIFY Screen2-Ef-PG2, VALUE PG2, ENABLED TRUE
           MOVE 2 TO W-EDIT-PAGES.
      *
       Screen2-Aft-Initdata.
           MODIFY Screen2-Ef-PG1, ENABLED FALSE
           MODIFY Screen2-Ef-PG2, ENABLED FALSE
           MODIFY Screen2-Ef-Copies, VALUE NBC
           IF LK-IMPRIME-PRVW NOT = "P" 
                          AND NOT = "p" | viewfileimp : Choix pages
              MODIFY Screen2-Rb-PAGE1, ENABLED FALSE
              MODIFY Screen2-Rb-PAGE2, ENABLED FALSE
           END-IF
      
           IF LK-IMPRIME-PRVW = "p" THEN
              MOVE SPACE TO LK-IMPRIME-PRVW 
           END-IF
           MODIFY Screen2-Cb-GRISE, ENABLED TRUE
           PERFORM MEP-CONFDEV THRU F-MEP-CONFDEV

           IF LK-IMPRIME-VNBC = 1 
              MODIFY Screen2-Ef-Copies,
                 ENABLED 0
           END-IF
 
           IF LK-IMPRIME-ORI = "ps"  
      *       fichier postscript envoyé : pas d'export
              MODIFY Screen2-Cb-Export,
                 ENABLED 0
           END-IF
      *    Impression locale : export fichier uniquement
           IF iloc-parmis = 1
              MODIFY Screen2-Pb-Imp, TITLE "Valider"
              PERFORM Screen2-Cb-Export-Link
              modify Screen2-Fr-1, COLOR 9
              modify Screen2-Fr-2, COLOR 9
              modify Screen2-Fr-3, COLOR 9
              modify Screen2-Fr-4, COLOR 9
              modify Screen2-Handle, TITLE "Exporter"
           END-IF
      
           .
      
       Screen2-Cm-Imp-Ex-Ntf-Selchange.
           .

       Screen1-Aft-Routine.
           IF  LK-IMPRIME-FERME-PAS <> 1 
           AND lk-imprime-prvw <> "P" 
              PERFORM Mistral-Closecurrentwindow
           END-IF   
           .

      *
       Screen2-Cb-Export-Link.
           IF iloc-parmis = 1 
                move 1 to w-export-fic
                MODIFY Screen2-Cb-Export, VALUE W-EXPORT-FIC
           else INQUIRE Screen2-Cb-Export, VALUE IN W-EXPORT-FIC
           end-if
           IF W-EXPORT-FIC = 1
                MODIFY Screen2-Ef-Fic, ENABLED TRUE
                MODIFY Screen2-Cm-Imp, ENABLED FALSE
                MODIFY Screen2-Rb-Page1, ENABLED FALSE 
                MODIFY Screen2-Rb-Page2, ENABLED FALSE 
                MODIFY Screen2-Ef-PG1, ENABLED FALSE
                MODIFY Screen2-Ef-PG2, ENABLED FALSE
                MODIFY Screen2-Ef-Copies, ENABLED FALSE
                MODIFY Screen2-Rb-Format2, ENABLED TRUE
                MODIFY Screen2-Rb-Format3, ENABLED TRUE
                IF LK-IMPRIME-FIC NOT = SPACE
                   MODIFY Screen2-Rb-Format, ENABLED TRUE
                ELSE 
                   IF W-FORMAT-FIC = 1
                      MODIFY Screen2-Rb-Format, VALUE 2, ENABLED FALSE
                      MODIFY Screen2-Rb-Format2, VALUE 2
                      MODIFY Screen2-Rb-Format3, VALUE 2
                   END-IF
                END-IF
                MODIFY Screen2-Rb-TIRE1, ENABLED FALSE
                MODIFY Screen2-Rb-TIRE2, ENABLED FALSE
                MODIFY Screen2-Rb-TIRE3, ENABLED FALSE
                MODIFY Screen2-Rb-TIRE4, ENABLED FALSE
                MODIFY Screen2-Rb-TIRE5, ENABLED FALSE
                MODIFY Screen2-Rb-TIRE6, ENABLED FALSE
                MODIFY Screen2-Rb-TIRS1, ENABLED FALSE
                MODIFY Screen2-Rb-TIRS2, ENABLED FALSE
                MODIFY Screen2-Rb-TIRS3, ENABLED FALSE
                MODIFY Screen2-Rb-TIRS4, ENABLED FALSE
                MODIFY Screen2-Cb-RECVE, ENABLED FALSE
                MODIFY Screen2-Cb-NOIRB, ENABLED FALSE
                MODIFY Screen2-Cb-GRISE, ENABLED FALSE
                MODIFY Screen2-Cb-SECURE, ENABLED FALSE
           ELSE
                MODIFY Screen2-Ef-Fic, ENABLED FALSE
                MODIFY Screen2-Cm-Imp, ENABLED TRUE
                MODIFY Screen2-Rb-Page1, ENABLED TRUE 

                MODIFY Screen2-Rb-Page2, ENABLED TRUE 
                IF W-EDIT-PAGES = 2
                   MODIFY Screen2-Ef-PG1, ENABLED FALSE

                   MODIFY Screen2-Ef-PG2, ENABLED FALSE
                END-IF
                IF LK-IMPRIME-VNBC = 0 
                    MODIFY Screen2-Ef-Copies, ENABLED TRUE
                END-IF
                MODIFY Screen2-Ef-Copies, ENABLED TRUE
                MODIFY Screen2-Rb-Format, ENABLED FALSE
                MODIFY Screen2-Rb-Format2, ENABLED FALSE
                MODIFY Screen2-Rb-Format3, ENABLED FALSE
                MODIFY Screen2-Rb-TIRE1, ENABLED TRUE
                MODIFY Screen2-Rb-TIRE2, ENABLED TRUE
                MODIFY Screen2-Rb-TIRE3, ENABLED TRUE
                MODIFY Screen2-Rb-TIRE4, ENABLED TRUE
                MODIFY Screen2-Rb-TIRE5, ENABLED TRUE
                MODIFY Screen2-Rb-TIRE6, ENABLED TRUE
                MODIFY Screen2-Rb-TIRS1, ENABLED TRUE
                MODIFY Screen2-Rb-TIRS2, ENABLED TRUE
                MODIFY Screen2-Rb-TIRS3, ENABLED TRUE
                MODIFY Screen2-Rb-TIRS4, ENABLED TRUE
                MODIFY Screen2-Cb-NOIRB, ENABLED TRUE
                MODIFY Screen2-Cb-GRISE, ENABLED TRUE
                MODIFY Screen2-Cb-SECURE, ENABLED TRUE
                IF LK-IMPRIME-VERSO <> SPACE 
      *             Edition verso type conditions 
                    MODIFY Screen2-Cb-RECVE, ENABLED 0
                ELSE
                    MODIFY Screen2-Cb-RECVE, ENABLED 1
                END-IF
           END-IF.


       Screen1-Pb-2-Link. 
           PERFORM Acu-Screen2-Routine
           .       

       Screen1-Ev-Cmd-Close.
           PERFORM Delete-Fic.

           
       MEP-CONFDEV.           
       F-MEP-CONFDEV.
      
      *
       Screen1-Pb-1-Link.
           perform Screen1-Ev-Cmd-Close
           PERFORM Acu-Screen1-Exit
           .

       Ajout-Com-PS.
      *------------*
      *    Ajoute les commandes postscript de TRI dans le fichier d'impression PS
           |  fichier ps2 = fichier postscript pour impression
           INITIALIZE W-FIC-PS2
           STRING LK-IMPRIME-XML 
                  "2.ps" DELIMITED BY " " INTO W-FIC-PS2
      *    Insert le fichier TRI de commandes postscript dans le fichier PS
           MOVE SPACE TO CMD
           STRING "sed -f "  DELIMITED BY SIZE
                  " " ASSIGN-TRI DELIMITED BY "  "
                  " "        DELIMITED BY SIZE
                  W-FIC-PS   DELIMITED BY "  "
                  " > "      DELIMITED BY SIZE
                  W-FIC-PS2  DELIMITED BY "  " 
      *    " 2> "             DELIMITED BY SIZE
      *    W-FIC-PS2          DELIMITED BY "  "
      *    ".err"             DELIMITED BY SIZE
                  INTO CMD
           CALL "C$SYSTEM" USING CMD, GIVING W-IND 
           .

       Genere-Com-Ps.
       Lect-Fic-Init.
       Efface-Couleurs.
           move LK-IMPRIME-XML to xmlout-assign
           move space to xmlout-assign2
           string LK-IMPRIME-XML "2" delimited by " " 
                  into xmlout-assign2
           open input XMLOut-File
           perform stat
           open output XMLOut-File2
           perform stat
           move 0 to w-eof
           move 1 to prem

           perform until w-eof = 1
                move space to XMLOut-Record
                read XMLOut-File end move 1 to w-eof
                end-read
                perform stat
                if w-eof = 0 |and prem = 1
                   inspect XMLOut-Record replacing 
                                all "C0D9FE" BY "FFFFFF"
                                all "FFFFB0" BY "FFFFFF"
                                all "DFDFDF" BY "FFFFFF"
                   move 0 to prem 
                   | on ne le fait qu'une fois car les variables sont
                   | toujours sur la 1ère ligne
                   | finalement si au cas où
                end-if
                if w-eof = 0
                   move XMLOut-Record to XMLOut-Record2
                   write XMLOut-Record2
                end-if
           end-perform
           close XMLOut-File2 XMLOut-File     
           call "C$COPY" USING xmlout-assign2, xmlout-assign, "S"
           call "C$DELETE" USING xmlout-assign2, "S"
           .

       Remet-Page-1.
      *------------* Ajoute commande de substitution %%Page: x par %%Page: 1
           MOVE 0 TO W-DEBC

           PERFORM VARYING I-C FROM 1 BY 1
              UNTIL I-C > 4
                 OR W-DEBC <> 0

              IF  W-DEBC = 0
              AND PG1(I-C:1) <> 0 THEN
      *          Premier chiffre significatif
                 MOVE I-C TO W-DEBC
              END-IF

           END-PERFORM

           MOVE SPACE TO SEQ-TRI
           STRING "s/%%Page: "     
                  PG1(W-DEBC:)                  
                  "/\%\%Page\: 1/" DELIMITED BY SIZE
                  W-LFSP
             INTO SEQ-TRI
           WRITE ENR-TRI
           PERFORM STAT
           .     

      *
       Screen2-Ef-Fic-Bef-Procedure.
           MOVE W-FIC TO SV-FIC
           .
      *
       Screen2-Ef-Fic-Aft-Procedure.
           IF W-FIC NOT = SV-FIC AND W-FIC NOT = SPACE
              MOVE SPACE TO LK-IMPRIME-CSV
           END-IF
           .

       TEST-TRADIF.
       F-TEST-TRADIF.

       RECH-SVINT.

       

      *{Bench}end
       REPORT-COMPOSER SECTION.
