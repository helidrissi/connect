      *{Bench}prg-comment
      * ccomment.cbl
      * ccomment.cbl is generated from W:\mx\spro\ccomment.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. ccomment.
       AUTHOR. sarah.dehecq.
       DATE-WRITTEN. vendredi 17 juillet 2020 10:10:41.
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
       COPY "W:/mx/fdt/SL-CCOMMENT.CPY".
      *{Bench}file-control
       COPY "COBCAP.sl".
       COPY "MXCOMMENT.sl".
       COPY "MXPARAM.sl".
       COPY "MXCOMMENT2.sl".
      *{Bench}end
       DATA                        DIVISION.
       FILE                        SECTION.
       COPY "W:/mx/fdt/FD-CCOMMENT.CPY".
      *{Bench}file
       COPY "COBCAP.fd".
       COPY "MXCOMMENT.fd".
       COPY "MXPARAM.fd".
       COPY "MXCOMMENT2.fd".
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
       77 Key-Status IS SPECIAL-NAMES CRT STATUS PIC 9(5) VALUE 0.
           88 Exit-Pushed VALUE 27.
           88 Message-Received VALUE 95.
           88 Event-Occurred VALUE 96.
      * property-defined variable

      * user-defined variable
           COPY  "cobcap.wrk".
           COPY  "Mis-EnregOccupe.wrk".
           COPY  "Gd-Sort.wrk".
       77 Screen1-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 Default-Font
                  USAGE IS HANDLE OF FONT DEFAULT-FONT.
       77 Small-Font
                  USAGE IS HANDLE OF FONT SMALL-FONT.
       77 W-LOG-PALM       PIC  9(3)
                  VALUE IS 25.
       77 W-NPR-PALM       PIC  9(4)
                  VALUE IS 631.
       77 CDF  PIC  X.
       77 W-MXPARAM        PIC  9(9).
       77 FILE-STATUS      PIC  X(2).
       77 QUITTER16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 SUPPRIM16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 RAFRAIC16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 RAFRAICH16-JPG   PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 VALIDER16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-LIB-MCMO       PIC  X(320)
                  VALUE IS "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
      -    "MMMMMMMMMMMMMMMM".
       77 I    PIC  9(6).
       77 J    PIC  9(6).
       77 K    PIC  9(6).
       77 Z    PIC  9(6).
       77 Screen1-Cb-BL-Value          PIC  9
                  VALUE IS 0.
       77 Screen1-Cb-BP-Value          PIC  9
                  VALUE IS 0.
       77 Screen1-Cb-DV-Value          PIC  9
                  VALUE IS 0.
       77 Screen1-Cb-Fac-Value         PIC  9
                  VALUE IS 0.
       77 W-EF-SIZE        PIC  S9(4)V9(2)
                  VALUE IS 124,14.
       77 W-SCR-SIZE       PIC  S9(4)V9(2)
                  VALUE IS 127,86.
       77 W-Refresh-Col    PIC  S9(4)V9(2).
       77 W-Delete-Col     PIC  S9(4)V9(2).
       77 W-Quit-Col       PIC  S9(4)V9(2).
       77 W-EF-LINES       PIC  S9(4)V9(2)
                  VALUE IS 13,15.
       77 W-SCR-LINES      PIC  S9(4)V9(2)
                  VALUE IS 26,54.
       77 W-TITLE          PIC  X(50)
                  VALUE IS "Commentaire".
       77 W-Fr-SIZE        PIC  S9(4)V9(2).
       77 W-SCR-COL        PIC  S9(4)V9(2).
       77 DER-NUM          PIC  9(6).
       77 WV-MOD           PIC  9
                  VALUE IS 1.
       77 Screen2-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 MS-Sans-Serif9B
                  USAGE IS HANDLE OF FONT VALUE NULL.
       77 SUPPRIM24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 QUITTER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 MODIFIE24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 RAFRAIC24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 VALIDER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       01 Screen2-Gd-1-Record.
           05 Screen2-Gd-1-LIB PIC  X(90).
           05 Screen2-Gd-1-NUM PIC  9(6).
       77 AUTO-MOD         PIC  9.
       77 W-CLA            PIC  9
                  VALUE IS 2.
       77 tmp-9-3          PIC  9(6).
       77 w-sel            PIC  9(6).
       77 w-gd1col         PIC  9(6).
       77 w-ok PIC  9.
       77 wenable          PIC  9.
       77 Screen1-Cb-Sto-Value         PIC  9
                  VALUE IS 0.
       77 Rech-Nom         PIC  X(30).
       77 FINDNEX16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 CLASSER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ASSIGN-TRI       PIC  X(60).
       77 WASS-TRI         PIC  X(20)
                  VALUE IS "CCOMMENT".
       77 VALIDER16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 SUPPRIM16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 RAFRAIC16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ZOOMxxx16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 SAUVEGA16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 SAUVEGA16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ZOOMxxx16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 RECHERC16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.

      *{Bench}end
       LINKAGE                     SECTION.
      *{Bench}linkage
       77 LK-ZONE-PALM     PIC  X(500).
           COPY  "LK-CCOMMENT.WRK".
      *{Bench}end
       SCREEN                      SECTION.
          COPY "../../mistral/copy/Mis-EnregOccupe-Screen.cpy".
      *{Bench}copy-screen
       01 Screen1.
           03 Screen1-Fr-Edi, Frame, 
              COL 2,14, LINE 3,85, LINES 4,15 CELLS, SIZE 124,14 CELLS, 
              LOWERED, FILL-COLOR 16, FILL-PERCENT 100, FILL-COLOR2 16, 
              FONT IS Small-Font, ID IS 8, VISIBLE 0, BACKGROUND-LOW, 
              ATW-CSS-CLASS "card-bottom".
           03 Screen1-Pb-Refresh, Push-Button, 
              COL 71,43, LINE 1,38, LINES 24, SIZE 118, 
              BITMAP-HANDLE RAFRAIC16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 9855, FONT IS Default-Font, ID IS 5, 
              NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Rafraîchir", ATW-CSS-CLASS "button-rafraichir".
           03 Screen1-Pb-Rappeler, Push-Button, 
              COL 34,57, LINE 1,38, LINES 24, SIZE 118, 
              BITMAP-HANDLE ZOOMxxx16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 1004, FONT IS Small-Font, ID IS 6, 
              NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Rappeler un commentaire mémorisé", 
              ATW-CSS-CLASS "button-rechercher".
           03 Screen1-Pb-Quit, Push-Button, 
              COL 108,29, LINE 1,38, LINES 24, SIZE 118, 
              BITMAP-HANDLE VALIDER16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 9858, FONT IS Default-Font, ID IS 11, 
              NO-AUTO-DEFAULT, NO-TAB, DEFAULT-BUTTON, VISIBLE 0, 
              ATW-CSS-CLASS "button-quitter".
           03 Screen1-Pb-Delete, Push-Button, 
              COL 89,86, LINE 1,38, LINES 24, SIZE 118, 
              BITMAP-HANDLE SUPPRIM16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 9856, ID IS 19, NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Effacer", ATW-CSS-CLASS "button-annuler".
           03 Screen1-Ef-Lib, Entry-Field, 
              COL 2,14, LINE 8,69, LINES 17,23 CELLS, 
              SIZE 124,14 CELLS, 
              3-D, COLOR IS 2, ID IS 1, MAX-TEXT 320, NO-AUTOSEL, 
              MULTILINE, USE-RETURN, VALUE Rech-Nom.
           03 Screen1-Cb-DV, Check-Box, 
              COL 37,00, LINE 5,38, LINES 1,23 CELLS, SIZE 20,14 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 2, 
              TITLE "Devis/Contrat", VALUE Screen1-Cb-DV-Value, 
              VISIBLE 0.
           03 Screen1-Cb-BL, Check-Box, 
              COL 105,57, LINE 5,38, LINES 1,23 CELLS, 
              SIZE 20,14 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 3, 
              TITLE "B/L", VALUE Screen1-Cb-BL-Value, VISIBLE 0.
           03 Screen1-Cb-BP, Check-Box, 
              COL 57,29, LINE 5,38, LINES 1,23 CELLS, SIZE 20,14 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 4, 
              TITLE "Bon de préparation", VALUE Screen1-Cb-BP-Value, 
              VISIBLE 0.
           03 Screen1-Cb-Fac, Check-Box, 
              COL 82,71, LINE 5,38, LINES 1,23 CELLS, SIZE 20,14 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 7, 
              TITLE "Facture", VALUE Screen1-Cb-Fac-Value, VISIBLE 0.
           03 Screen1-La-Edi, Label, 
              COL 3,43, LINE 5,46, LINES 1,69 CELLS, SIZE 30,43 CELLS, 
              COLOR IS 194, FONT IS Small-Font, ID IS 9, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Impression sur documents", VISIBLE 0.
           03 Screen1-Bt-2, Bitmap, 
              COL 26,71, LINE 1,77, LINES 16, SIZE 24, 
              BITMAP-HANDLE QUITTER16-JPG, BITMAP-NUMBER 1, 
              ID IS 10, VISIBLE 0.
           03 Screen1-Pb-Sauvegarder, Push-Button, 
              COL 53,00, LINE 1,38, LINES 24, SIZE 118, 
              BITMAP-HANDLE SAUVEGA16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 9819, FONT IS Small-Font, ID IS 13, 
              NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Mémoriser le commentaire", VISIBLE WV-MOD, 
              ATW-CSS-CLASS "button-sauvegarder".
           03 Screen1-Cb-Sto, Check-Box, 
              COL 2,14, LINE 1,92, LINES 1,23 CELLS, SIZE 16,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 12, 
              TITLE "Sous-total", VALUE Screen1-Cb-Sto-Value, 
              VISIBLE 0, 
              EVENT PROCEDURE Screen1-Cb-Sto-Event-Proc.
           03 Screen1-Pb-Quita, Push-Button, 
              COL 108,29, LINE 1,38, LINES 24, SIZE 118, 
              BITMAP-HANDLE VALIDER16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 9858, FONT IS Default-Font, ID IS 14, 
              NO-AUTO-DEFAULT, NO-TAB, DEFAULT-BUTTON, 
              ATW-CSS-CLASS "button-valider".
       01 Screen2.
           03 Screen2-Gd-1, Grid, 
              COL 1,71, LINE 4,77, LINES 12,46 CELLS, SIZE 76,57 CELLS, 
              3-D, CENTERED-HEADINGS, COLOR IS 2, 
              DATA-COLUMNS (1, 91), 
              DISPLAY-COLUMNS (1, 81), 
              ALIGNMENT ("L", "U"), 
              SEPARATION (5, 5), 
              CURSOR-FRAME-WIDTH 0, DIVIDER-COLOR W-Divider-Color, 
              END-COLOR W-End-Color, FONT IS Default-Font, 
              HEADING-COLOR W-Heading-Color, 
              HEADING-DIVIDER-COLOR W-Heading-Divider-Color, 
              HEADING-FONT IS Default-Font, ID IS 1, NO-TAB, 
              NUM-ROWS W-Num-Rows, RECORD-DATA Screen2-Gd-1-Record, 
              TILED-HEADINGS, VPADDING 50, VSCROLL, 
              EVENT PROCEDURE Screen2-Gd-1-Event-Proc.
           03 Screen2-Ef-Com, Entry-Field, 
              COL 1,71, LINE 18,92, LINES 9,00 CELLS, SIZE 76,57 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 2, MAX-TEXT 240, 
              MULTILINE, USE-RETURN.
           03 Screen2-Pb-Supprimer, Push-Button, 
              COL 69,57, LINE 1,23, LINES 24, SIZE 24, 
              BITMAP-HANDLE SUPPRIM24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 2002, ID IS 3, 
              TITLE "Supprimer", VISIBLE WV-MOD.
           03 Screen2-Pb-Quitter, Push-Button, 
              COL 74,14, LINE 1,23, LINES 24, SIZE 24, 
              BITMAP-HANDLE QUITTER24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 2003, ID IS 4, 
              TITLE "Quitter".
           03 Screen2-Pb-Modifier, Push-Button, 
              COL 65,00, LINE 1,23, LINES 24, SIZE 24, 
              BITMAP-HANDLE MODIFIE24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 2001, ID IS 5, 
              TITLE "Modifier", VISIBLE WV-MOD.
           03 Screen2-Pb-Rafraichir, Push-Button, 
              COL 60,43, LINE 1,23, LINES 24, SIZE 24, 
              BITMAP-HANDLE RAFRAIC24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 2004, ID IS 8, 
              TITLE "Rafraichir", VISIBLE 0.
           03 Screen2-Pb-Valider, Push-Button, 
              COL 55,86, LINE 1,23, LINES 24, SIZE 24, 
              BITMAP-HANDLE VALIDER24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 2005, ID IS 9, 
              TITLE "Sélectionner", VISIBLE 0.
           03 Screen2-La-1, Label, 
              COL 18,00, LINE 17,54, LINES 1,23 CELLS, 
              SIZE 44,00 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 10, CENTER, 
              LABEL-OFFSET 0, 
              TITLE "DETAIL", TRANSPARENT.
           03 Screen1-Ef-Rech, Entry-Field, 
              COL 14,57, LINE 1,54, LINES 1,46 CELLS, SIZE 29,00 CELLS, 
              3-D, COLOR IS 2, ID IS 14, VALUE Rech-Nom, 
              AFTER PROCEDURE Screen1-Ef-Rech-Aft-Procedure, 
              BEFORE PROCEDURE Screen1-Ef-Rech-Bef-Procedure.
           03 Screen1-Pb-Rechercher, Push-Button, 
              COL 44,29, LINE 1,23, LINES 16, SIZE 16, 
              BITMAP-HANDLE RECHERC16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1204, ID IS 27, NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Rechercher un nom dans la liste".
           03 Screen1-La-2, Label, 
              COL 2,57, LINE 1,85, LINES 1,00 CELLS, SIZE 11,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 18, RIGHT, 
              LABEL-OFFSET 0, 
              TITLE "Rechercher ", TRANSPARENT.
           03 Screen1-La-Rech, Label, 
              COL 1,00, LINE 3,23, LINES 0,92 CELLS, SIZE 50,43 CELLS, 
              COLOR IS 5, FONT IS Small-Font, ID IS 42, CENTER, 
              LABEL-OFFSET 0, 
              TITLE 
              "Recherche chaine de caractères : Faire précéder par le sy
      -       "mbole /", TRANSPARENT, VISIBLE 0.
           03 Screen2-Pb-Classement, Push-Button, 
              COL 51,29, LINE 1,23, LINES 24, SIZE 24, 
              BITMAP-HANDLE CLASSER24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 5632, ID IS 6, 
              TITLE "Classer par ordre de création".

      *{Bench}end

      *{Bench}linkpara
       PROCEDURE DIVISION USING LK-ZONE-PALM, LK-CCOMMENT.
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
      * load bitmap
           PERFORM Acu-Init-Bmp
      * open file
           PERFORM Acu-Open-Files
      *    After-Init
           .

       Acu-Init-Bmp.
      * bitmap loading
           COPY RESOURCE "RAFRAIC16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "RAFRAIC16.BMP", GIVING 
              RAFRAIC16-BMP
           COPY RESOURCE "ZOOMxxx16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ZOOMxxx16.BMP", GIVING 
              ZOOMxxx16-BMP
           COPY RESOURCE "VALIDER16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "VALIDER16.BMP", GIVING 
              VALIDER16-BMP
           COPY RESOURCE "SUPPRIM16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "SUPPRIM16.BMP", GIVING 
              SUPPRIM16-BMP
           COPY RESOURCE "QUITTER16.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "QUITTER16.JPG", GIVING 
              QUITTER16-JPG
           COPY RESOURCE "SAUVEGA16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "SAUVEGA16.BMP", GIVING 
              SAUVEGA16-BMP
           COPY RESOURCE "SUPPRIM24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "SUPPRIM24.JPG", GIVING 
              SUPPRIM24-JPG
           COPY RESOURCE "QUITTER24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "QUITTER24.JPG", GIVING 
              QUITTER24-JPG
           COPY RESOURCE "MODIFIE24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "MODIFIE24.JPG", GIVING 
              MODIFIE24-JPG
           COPY RESOURCE "RAFRAIC24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "RAFRAIC24.JPG", GIVING 
              RAFRAIC24-JPG
           COPY RESOURCE "VALIDER24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "VALIDER24.JPG", GIVING 
              VALIDER24-JPG
           COPY RESOURCE "W:\mx\resource\RECHERC16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "RECHERC16.BMP", GIVING 
              RECHERC16-BMP
           COPY RESOURCE "CLASSER24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "CLASSER24.JPG", GIVING 
              CLASSER24-JPG
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
           IF RAFRAIC16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY RAFRAIC16-BMP
              MOVE 0 TO RAFRAIC16-BMP
           END-IF
           IF ZOOMxxx16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ZOOMxxx16-BMP
              MOVE 0 TO ZOOMxxx16-BMP
           END-IF
           IF VALIDER16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY VALIDER16-BMP
              MOVE 0 TO VALIDER16-BMP
           END-IF
           IF SUPPRIM16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY SUPPRIM16-BMP
              MOVE 0 TO SUPPRIM16-BMP
           END-IF
           IF QUITTER16-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY QUITTER16-JPG
              MOVE 0 TO QUITTER16-JPG
           END-IF
           IF SAUVEGA16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY SAUVEGA16-BMP
              MOVE 0 TO SAUVEGA16-BMP
           END-IF
           IF SUPPRIM24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY SUPPRIM24-JPG
              MOVE 0 TO SUPPRIM24-JPG
           END-IF
           IF QUITTER24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY QUITTER24-JPG
              MOVE 0 TO QUITTER24-JPG
           END-IF
           IF MODIFIE24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY MODIFIE24-JPG
              MOVE 0 TO MODIFIE24-JPG
           END-IF
           IF RAFRAIC24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY RAFRAIC24-JPG
              MOVE 0 TO RAFRAIC24-JPG
           END-IF
           IF VALIDER24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY VALIDER24-JPG
              MOVE 0 TO VALIDER24-JPG
           END-IF
           IF RECHERC16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY RECHERC16-BMP
              MOVE 0 TO RECHERC16-BMP
           END-IF
           IF CLASSER24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY CLASSER24-JPG
              MOVE 0 TO CLASSER24-JPG
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
              DISPLAY Floating GRAPHICAL WINDOW
                 LINES 26,46, SIZE 126,86, CELL SIZE IS LABEL FONT  , 
                 COLOR IS 65793, LABEL-OFFSET 0, LINK TO THREAD, 
                 NO SCROLL, TITLE W-TITLE, TITLE-BAR, USER-GRAY, 
                 USER-WHITE, VISIBLE 0, NO WRAP, 
                 ATW-CSS-ID "modal_screen_ccomment_1", 
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
                 LINES 27,31, SIZE 78,00, CELL HEIGHT 13, CELL WIDTH 7, 
                 COLOR IS 65793, LABEL-OFFSET 0, LINK TO THREAD, 
                 MODELESS, NO SCROLL, 
                 TITLE "COMMENTAIRES EXISTANTS", TITLE-BAR, USER-GRAY, 
                 USER-WHITE, VISIBLE 0, NO WRAP, 
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
           PERFORM Acu-Screen2-Gd-1-Content
           PERFORM Screen2-Aft-Initdata
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

      * Screen2-Gd-1
       Acu-Screen2-Gd-1-Content.
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
      * Screen1-Pb-Refresh Link To
              WHEN Key-Status = 9855
                 PERFORM Screen1-Pb-Refresh-LinkTo
      * Screen1-Pb-Rappeler Link To
              WHEN Key-Status = 1004
                 PERFORM Screen1-Pb-Rappeler-Link
      * Screen1-Pb-Quit Link To
              WHEN Key-Status = 9858
                 PERFORM Screen1-Pb-Quit-LinkTo
      * Screen1-Pb-Delete Link To
              WHEN Key-Status = 9856
                 PERFORM Screen1-Pb-Delete-LinkTo
      * Screen1-Pb-Sauvegarder Link To
              WHEN Key-Status = 9819
                 PERFORM Screen1-Pb-Sauvegarder-Link
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
      * Screen2-Pb-Supprimer Link To
              WHEN Key-Status = 2002
                 PERFORM Screen2-Pb-Supprimer-Link
      * Screen2-Pb-Quitter Link To
              WHEN Key-Status = 2003
                 PERFORM Screen2-Pb-Quitter-Link
      * Screen2-Pb-Modifier Link To
              WHEN Key-Status = 2001
                 PERFORM Screen2-Pb-Modifier-Link
      * Screen2-Pb-Rafraichir Link To
              WHEN Key-Status = 2004
                 PERFORM Screen2-Pb-Rafraichir-Link
      * Screen2-Pb-Valider Link To
              WHEN Key-Status = 2005
                 PERFORM Screen2-Pb-Valider-Link
      * Screen1-Pb-Rechercher Link To
              WHEN Key-Status = 1204
                 PERFORM Screen1-Pb-Rechercher-Link
      * Screen2-Pb-Classement Link To
              WHEN Key-Status = 5632
                 PERFORM Screen2-Pb-Classement-Link
           END-EVALUATE
           MOVE 1 TO Accept-Control
           .

       Acu-Close-Files.
      *    Before-Close
      *    After-Close
           .

      * COBCAP

      * MXCOMMENT

      * MXPARAM

      * MXCOMMENT2

       Acu-Screen1-Exit.
           SET Exit-Pushed TO TRUE
           .

       Acu-Screen2-Exit.
           SET Exit-Pushed TO TRUE
           .


       Screen1-Event-Proc.
           .

       Screen1-Cb-Sto-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-Cb-Sto-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen2-Event-Proc.
           .

       Screen2-Gd-1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Begin-Entry
              PERFORM Screen2-Gd-1-Ev-Msg-Begin-Entry
           WHEN Msg-End-Drag
              PERFORM Screen2-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell
              PERFORM Screen2-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell-Mouse
              PERFORM Screen2-Gd-1-Ev-Msg-Goto-Cell
           END-EVALUATE
           .
      ***   start event editor code   ***
           COPY "../../MISTRAL/COPY/ENVMIS.CBL".
120819 COPY "W:/mistral/copy/MisCentrefenetre.cbl".

       Init-BMP.

       Open-File-Rtn.
           OPEN I-O MXCOMMENT  PERFORM STAT.
           OPEN I-O MXCOMMENT2 PERFORM STAT.
           
       Close-File-Rtn.
           CLOSE MXCOMMENT MXCOMMENT2.
           
       Recup-Mxcomment.
           INQUIRE Screen1-Ef-Lib, VALUE IN LIB-MCMO
            IF LK-CCOMMENT-STA = "D"
              IF Screen1-Cb-DV-Value = 1
                   MOVE 0 TO EAR-MCMO
              ELSE MOVE 1 TO EAR-MCMO
              END-IF
              IF Screen1-Cb-Fac-VALUE = 1
                   MOVE 0 TO EFAC-MCMO
              ELSE MOVE 1 TO EFAC-MCMO
              END-IF.
           IF LK-CCOMMENT-STA = "C"
              IF Screen1-Cb-DV-Value = 1
                   MOVE 0 TO EAR-MCMO
              ELSE MOVE 1 TO EAR-MCMO
              END-IF
              IF Screen1-Cb-BP-VALUE = 1
                   MOVE 0 TO EBP-MCMO
              ELSE MOVE 1 TO EBP-MCMO
              END-IF
              IF Screen1-Cb-Fac-VALUE = 1
                   MOVE 0 TO EFAC-MCMO
              ELSE MOVE 1 TO EFAC-MCMO
              END-IF.
           IF LK-CCOMMENT-STA = "L"
              IF Screen1-Cb-BL-VALUE = 1
                   MOVE 0 TO EBL-MCMO
              ELSE MOVE 1 TO EBL-MCMO
              END-IF
              IF Screen1-Cb-Fac-VALUE = 1
                   MOVE 0 TO EFAC-MCMO
              ELSE MOVE 1 TO EFAC-MCMO
              END-IF.
           MOVE Screen1-Cb-Sto-VALUE TO STO-MCMO
          
      *    Calcule le nombre de lignes
           PERFORM CAL-LIB-MCMO.

       Maj-Mxcomment.
           PERFORM Recup-Mxcomment
           IF CDF = "M" 
                REWRITE ENR-MCMO INVALID
                    MOVE "Rewrite MXCOMMENT " TO ACU-MSG-1
                    MOVE CLE1-MCMO TO ACU-MSG-2
                    PERFORM MSG-ERREUR
                    PERFORM Acu-Screen1-Exit
                END-REWRITE
           ELSE WRITE ENR-MCMO INVALID
                    MOVE "Write MXCOMMENT " TO ACU-MSG-1
                    MOVE CLE1-MCMO TO ACU-MSG-2
                    PERFORM MSG-ERREUR
                    PERFORM Acu-Screen1-Exit
                END-WRITE
           END-IF
           PERFORM STAT
      *    Coupe à la première fin de ligne
251005     MOVE 0 TO J

           PERFORM VARYING I FROM 1 BY 1
              UNTIL I > 320
                 OR ( LIB-MCMO(I:1) < " "
                      AND J > 0 )

251005        IF  J = 0
              AND LIB-MCMO(I:1) > " " THEN
                 MOVE I TO J
251005        END-IF
              
           END-PERFORM

           SUBTRACT J FROM I
           IF  I > 0
251005     AND J > 0 THEN
                MOVE LIB-MCMO(J:I) TO LK-CCOMMENT-LIB
           ELSE MOVE SPACE TO LK-CCOMMENT-LIB.
           MOVE "M" TO CDF.

       CAL-LIB-MCMO.
           MOVE 1 TO I J
           MOVE 0 TO K NBRL-MCMO
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 320
                 OR LIB-MCMO(I:) = SPACE
              ADD 1 TO K
              IF LIB-MCMO(I:1) < SPACE AND K > 1 THEN
      *          2 caractères de fin de ligne
                 SUBTRACT 1 FROM K
                 IF LIB-MCMO(J:K) NOT = SPACE
                    ADD 1 TO NBRL-MCMO
                 END-IF
                 MOVE 0 TO K
      *          Evite le deuxième caractère de fin de ligne
                 ADD 1 TO I
                 ADD 1 TO I GIVING J
                 ADD 1 TO Z
              END-IF
           END-PERFORM
           IF K <> 0 THEN
              IF LIB-MCMO(J:K) NOT = SPACE
                 ADD 1 TO NBRL-MCMO
              END-IF
           END-IF.           

       LECT-MXCOMMENT.
           INITIALIZE ENR-MCMO                    
           MOVE LK-CCOMMENT-ORI TO ORI-MCMO
           MOVE LK-CCOMMENT-CLE TO CLE-MCMO
           MOVE "M" TO CDF
           IF LK-CCOMMENT-CDF = "I"         
                READ MXCOMMENT INVALID MOVE "C" TO CDF
                END-READ
           ELSE READ MXCOMMENT LOCK INVALID MOVE "C" TO CDF
                END-READ
           END-IF
           PERFORM STAT
           IF IND-STAT = 1 
270114*       blocage PXR sans message lock... LEM EQUIPEMENT
              PERFORM ACU-Show-Msg
              MOVE "I" TO LK-CCOMMENT-CDF
270114        
              GO LECT-MXCOMMENT.
           IF LIB-MCMO = SPACE
                MOVE 0 TO EAR-MCMO EBP-MCMO EFAC-MCMO EBL-MCMO
           END-IF 
           MOVE LIB-MCMO TO W-LIB-MCMO.

       INIT-MXCOMMENT.
           INITIALIZE ENR-MCMO W-LIB-MCMO
           MOVE LK-CCOMMENT-ORI TO ORI-MCMO
           MOVE LK-CCOMMENT-CLE TO CLE-MCMO.

       DEL-MXCOMMENT.
           MOVE LK-CCOMMENT-ORI TO ORI-MCMO
           MOVE LK-CCOMMENT-CLE TO CLE-MCMO
           READ MXCOMMENT INVALID EXIT PARAGRAPH
           END-READ
           PERFORM STAT
           IF IND-STAT = 1
              MOVE "399" TO Acu-Msg-Id
              PERFORM Acu-Show-Msg
              EXIT PARAGRAPH
           END-IF
           DELETE MXCOMMENT INVALID
              MOVE "Delete MXCOMMENT " TO ACU-MSG-1
              MOVE CLE1-MCMO TO ACU-MSG-2
              PERFORM MSG-INFO
              PERFORM Acu-Screen1-Exit
           END-DELETE
           PERFORM STAT.

       Screen1-Bef-Create.
           PERFORM Controle-Call
           

           PERFORM Open-File-Rtn
           PERFORM Init-BMP

           OPEN INPUT MXPARAM
           PERFORM STAT
           MOVE 1 TO W-MXPARAM
           READ MXPARAM
           PERFORM STAT
           CLOSE MXPARAM

261114*---- contrôle possibilité modification
      *     MOVE 25 TO LK-CPERMIS-LOG
      *     MOVE 311 TO LK-CPERMIS-RUB
      *     MOVE IDE-PALM TO LK-CPERMIS-IDE
      *     CALL "cpermis.acu" USING ZONE-PALM LK-CPERMIS
      *     CANCEL "cpermis.acu"
      *     MOVE LK-CPERMIS-PER TO AUTO-MOD.
      *     if auto-mod = 2 move 0 to wv-mod
      *                else 
                      move 1 to wv-mod
      *     end-if.

           PERFORM Lect-Mxcomment.
           MOVE 16 TO W-SCR-LINES

           IF LK-CCOMMENT-INO = "E"
              MOVE 87,00 TO W-EF-SIZE  
              MOVE 87,29 TO W-SCR-SIZE  
              MOVE 87,00 TO W-FR-SIZE
              MOVE 78,00 TO W-Refresh-Col
              MOVE 81,43 TO W-Delete-Col
              MOVE 84,57 TO W-Quit-Col 
              MOVE 4,50 TO W-EF-LINES
              IF LK-CCOMMENT-ACT = "A" THEN
                 MOVE "Commentaire sur la variante" TO W-TITLE
              ELSE
                 MOVE "Texte de fin de document" TO W-TITLE
              END-IF
              IF LK-CCOMMENT-ACT = "R"
              AND LK-CCOMMENT-NIT = "P"
                 MOVE "Instructions de livraison" TO W-TITLE
              END-IF
           ELSE
              IF LK-CCOMMENT-INO = "P"
                 MOVE 57,00 TO W-EF-SIZE  
                 MOVE 57,29 TO W-SCR-SIZE  
                 MOVE 57,00 TO W-FR-SIZE
                 MOVE 48,00 TO W-Refresh-Col  
                 MOVE 51,43 TO W-Delete-Col
                 MOVE 54,57 TO W-Quit-Col 
                 MOVE 12,50 TO W-EF-LINES
                 MOVE 15 TO W-SCR-LINES
                 IF LK-CCOMMENT-ACT = "R" OR "M"
                    MOVE "Note" TO W-TITLE
                 ELSE
                    MOVE "Clauses particulieres" TO W-TITLE
                 END-IF
              ELSE
                 IF LK-CCOMMENT-INO = "I"
                    MOVE "Instructions internes" TO W-TITLE
                 END-IF
                 IF LK-CCOMMENT-ORI = "RE"
                    MOVE "Commentaire / intervention" 
                    TO W-TITLE
                 END-IF
                 IF LK-CCOMMENT-ORI = "REC"
                    MOVE "Remarques client" TO W-TITLE
                 END-IF
                 IF LK-CCOMMENT-ORI = "RET"
                    MOVE "Remarques technicien" TO W-TITLE
                 END-IF
                 MOVE 56,71 TO W-EF-SIZE  
                 MOVE 56,71 TO W-SCR-SIZE  
                 MOVE 56,57 TO W-FR-SIZE
                 MOVE 47,71 TO W-Refresh-Col
                 MOVE 51,14 TO W-Delete-Col
                 MOVE 54,14 TO W-Quit-Col 
                 MOVE 8,5 TO W-EF-LINES
              END-IF
           END-IF.         
           
       Screen1-AfterInitData.
260919* modification pour mettre les tailles en variables car sinon problème
      * de saisie avec le centrefenetre (saisie bloquée)
      *     MODIFY Screen1-Handle, SIZE W-SCR-SIZE, LINES W-SCR-LINES
120819     PERFORM MisCentreFenetreScreen1
      *     MODIFY Screen1-Ef-Lib, SIZE W-Ef-SIZE, LINES W-EF-LINES
010720*           MODIFY Screen1-Pb-Quit, COLUMN W-Quit-Col
010720*           MODIFY Screen1-Pb-Refresh, COLUMN W-Refresh-Col
010720*           MODIFY Screen1-Pb-Delete, COLUMN W-Delete-Col
010720*     MODIFY Screen1-Fr-Edi, SIZE W-FR-SIZE
           IF LK-CCOMMENT-INO = "E" 
           OR AUTO-MOD = 2
             MODIFY Screen1-Pb-Sauvegarder, VISIBLE 0
           END-IF

           IF LK-CCOMMENT-STA = "D" AND LK-CCOMMENT-INO <> "I"
              IF EAR-MCMO = 1 MOVE 0 TO Screen1-Cb-DV-Value
                         ELSE MOVE 1 TO Screen1-Cb-DV-Value
              END-IF
              MODIFY Screen1-Fr-Edi, VISIBLE 1
              MODIFY Screen1-La-Edi, VISIBLE 1
              MODIFY Screen1-Cb-DV, VISIBLE 1, TITLE "Devis",
                                    VALUE Screen1-Cb-DV-Value
               IF EFAC-MCMO = 1 MOVE 0 TO Screen1-Cb-Fac-Value
                          ELSE MOVE 1 TO Screen1-Cb-Fac-Value
              END-IF
              MODIFY Screen1-Cb-Fac, VISIBLE 1, TITLE "Proforma",
                    , VALUE Screen1-Cb-Fac-Value.
070720*              , COLUMN 14,00, VALUE Screen1-Cb-Fac-Value.

           IF LK-CCOMMENT-STA = "C" AND LK-CCOMMENT-INO <> "I"
              MODIFY Screen1-Fr-Edi, VISIBLE 1
              MODIFY Screen1-La-Edi, VISIBLE 1 
              IF EAR-MCMO = 1 MOVE 0 TO Screen1-Cb-DV-Value
                         ELSE MOVE 1 TO Screen1-Cb-DV-Value
              END-IF
              MODIFY Screen1-Cb-DV, VISIBLE 1, TITLE "A/R", 
                                    VALUE Screen1-Cb-DV-Value  
              IF EBP-MCMO = 1 MOVE 0 TO Screen1-Cb-BP-Value
                         ELSE MOVE 1 TO Screen1-Cb-BP-Value
              END-IF
              MODIFY Screen1-Cb-BP, VISIBLE 1, 
                                    VALUE Screen1-Cb-BP-Value
              IF EFAC-MCMO = 1 MOVE 0 TO Screen1-Cb-Fac-Value
                          ELSE MOVE 1 TO Screen1-Cb-Fac-Value
              END-IF
              MODIFY Screen1-Cb-Fac, VISIBLE 1, TITLE "Proforma",
                                     VALUE Screen1-Cb-Fac-Value.

           IF LK-CCOMMENT-STA = "L" AND LK-CCOMMENT-INO <> "I"
                                    AND LK-CCOMMENT-NIT <> "P" |istructions de livraison pièces / OR
              MODIFY Screen1-Fr-Edi, VISIBLE 1
              MODIFY Screen1-La-Edi, VISIBLE 1
              IF EBL-MCMO = 1 MOVE 0 TO Screen1-Cb-BL-Value
                         ELSE MOVE 1 TO Screen1-Cb-BL-Value
              END-IF
070720*      MODIFY Screen1-Cb-BL, VISIBLE 1, COLUMN 14,00, 
              MODIFY Screen1-Cb-BL, VISIBLE 1, 
                                    VALUE Screen1-Cb-BL-Value
              IF EFAC-MCMO = 1 MOVE 0 TO Screen1-Cb-Fac-Value
                          ELSE MOVE 1 TO Screen1-Cb-Fac-Value
              END-IF
070720*       MODIFY Screen1-Cb-Fac, VISIBLE 1, COLUMN 14,00
              MODIFY Screen1-Cb-Fac, VISIBLE 1, 
                                     VALUE Screen1-Cb-Fac-Value.

           IF (LK-CCOMMENT-ACT = "D" OR "M" OR "R") 
           AND LK-CCOMMENT-INO = " "
           AND LK-CCOMMENT-ORI(1:2) <> "RE"
              MOVE STO-MCMO TO Screen1-Cb-STO-Value 
              MODIFY Screen1-Cb-STO, VISIBLE 1, VALUE STO-MCMO
              PERFORM Enable-Sto
           END-IF.
                    
260218
           IF LK-CCOMMENT-EBP = 1
              IF EBP-MCMO = 1 MOVE 0 TO Screen1-Cb-BP-Value
                         ELSE MOVE 1 TO Screen1-Cb-BP-Value
              END-IF
070720*       MODIFY Screen1-Cb-BP, VISIBLE 1, column 37 
              MODIFY Screen1-Cb-BP, VISIBLE 1, 
                                    VALUE Screen1-Cb-BP-Value
           END-IF.
260218
           IF LK-CCOMMENT-CDF NOT = "M"
              MODIFY Screen1-Pb-Refresh, VISIBLE FALSE
              MODIFY Screen1-Pb-Delete, VISIBLE FALSE
              MODIFY Screen1-Pb-Sauvegarder, VISIBLE FALSE
              MODIFY Screen1-Pb-Rappeler, VISIBLE FALSE
              MODIFY Screen1-Ef-Lib, ENABLED FALSE
              MODIFY Screen1-Cb-DV, ENABLED FALSE
              MODIFY Screen1-Cb-BL, ENABLED FALSE
              MODIFY Screen1-Cb-BP, ENABLED FALSE
              MODIFY Screen1-Cb-Fac, ENABLED FALSE
              MODIFY Screen1-Cb-Sto, ENABLED FALSE
010720*        MODIFY Screen1-Pb-Quit, BITMAP-HANDLE QUITTER16-JPG
      *                                TITLE "Quitter"
              MODIFY Screen1-Pb-Quita, VISIBLE FALSE
              MODIFY Screen1-Pb-Quit, Visible TRUE
           END-IF.
           
       Screen1-Pb-Refresh-LinkTo.
           MODIFY Screen1-Ef-Lib, VALUE LIB-MCMO.

       Screen1-Pb-Rappeler-Link.
              PERFORM ACU-SCREEN2-ROUTINE
              if lib-mcmo2 <> space
                 modify Screen1-Ef-Lib, VALUE lib-mcmo2
                 move lib-mcmo2 to W-LIB-MCMO
              end-if

           DISPLAY SCREEN1-Ef-LIB.
                                  
       Screen1-Pb-Quit-LinkTo.
           IF LK-CCOMMENT-CDF = "I"
              PERFORM ACU-SCREEN1-EXIT
           END-IF
           PERFORM MAJ-MXCOMMENT
           PERFORM ACU-SCREEN1-EXIT
           .

       Screen1-Ev-Cmd-Close.
           PERFORM Mistral-WindowClosing
           .

       Screen1-Aft-Routine.
           PERFORM Close-File-Rtn


           .
       Screen1-Pb-Delete-LinkTo.
           IF LK-CCOMMENT-CDF NOT = "M" EXIT PARAGRAPH
           END-IF
           MODIFY Screen1-Ef-Lib, VALUE SPACE.
      *
       Screen1-Pb-Sauvegarder-Link.
           IF LK-CCOMMENT-CDF NOT = "M" EXIT PARAGRAPH
           END-IF
           MOVE "Souhaitez-vous mémoriser ce commentaire dans le "
           to acu-msg-1
           MOVE 
           "répertoire afin de pouvoir le réutiliser ultérieurement ?"
           to acu-msg-2
           perform msg-on
           if acu-return-value = 1
              perform sauve thru f-sauve
           end-if
           .

       Sauve.
           MOVE SPACE TO ENR-MCMO2
           MOVE 0 TO DER-NUM
           MOVE "B" TO ACT-MCMO2
           MOVE 999999 TO NUM-MCMO2
           START MXCOMMENT2 KEY NOT > CLE1-MCMO2 INVALID GO S-Sauve.
           READ MXCOMMENT2 PREVIOUS END GO S-Sauve.
           PERFORM STAT.
           IF ACT-MCMO2 NOT = "B" GO S-Sauve.
           MOVE NUM-MCMO2 TO DER-NUM.
       S-Sauve.
           PERFORM Recup-Mxcomment
           MOVE ENR-MCMO TO ENR-MCMO2
           MOVE SPACE TO CLE1-MCMO2
           MOVE "B" TO ACT-MCMO2
           ADD 1 TO DER-NUM
           MOVE DER-NUM TO NUM-MCMO2
           WRITE ENR-MCMO2 INVALID GO S-Sauve
           END-WRITE
           PERFORM STAT.
           move "Commentaire mémorisé" to acu-msg-1
           perform msg-info.
       F-Sauve.
      *
       Screen2-Bef-Create.
           
           .
      *
       Screen2-Aft-Initdata.
200819     MOVE Screen2-Handle TO MCF-HANDLE-FS
200819     PERFORM MisCentreFenetre
           PERFORM Init-Grille thru F-Init-Grille
           .

       Init-Grille.
311017     PERFORM Curseur-Sablier
           modify Screen2-Gd-1, RESET-GRID = 1, mass-update = 1
           perform Acu-Screen2-Gd-1-Content
           MOVE SPACE TO ENR-MCMO2
           MOVE "B" TO ACT-MCMO2
           move 0 to TMP-9-3
311017     
           IF W-CLA = 2 THEN
              COPY "W:/mx/copy/Assign-FICTMP.cbl" REPLACING 
                 ==FICTMP==   BY ==TRI==
                 =='FICTMP'== BY ==TRI==.
           END-IF
311017
           START MXCOMMENT2 KEY NOT < CLE1-MCMO2 INVALID 
                 GO F-INIT-GRILLE.
       Bcl-Init.
           READ MXCOMMENT2 NEXT END GO F-INIT-GRILLE.
           PERFORM STAT
           IF ACT-MCMO2 NOT = "B" GO F-INIT-GRILLE.
           ADD 1 TO TMP-9-3
311017     
           IF W-CLA = 2 THEN
              MOVE NUM-MCMO2 TO NUM-TRI
              MOVE LIB-MCMO2 TO LIB-TRI
130218        INSPECT LIB-TRI REPLACING ALL W-NEWLINE BY "  " | sinon n'affiche pas les lignes qui commencent par w-newline
              WRITE ENR-TRI
              PERFORM STAT
              GO Bcl-Init
           END-IF
311017
           move space to Screen2-Gd-1-Record
           MOVE LIB-MCMO2 to Screen2-Gd-1-lib
           MOVE NUM-MCMO2 to Screen2-Gd-1-num
030907
           IF Screen2-Gd-1-lib = SPACE THEN
      *       Sinon n'ajoute pas de ligne et décale les clés de 1...
              MOVE "." TO Screen2-Gd-1-lib(60:1)
           END-IF
030907
           modify Screen2-Gd-1, RECORD-TO-ADD Screen2-Gd-1-Record
      *     modify Screen2-Gd-1(tmp-9-3, 1), 
      *            Hidden-Data NUM-MCMO2 
           go Bcl-Init.
       F-Init-Grille.
           IF W-CLA = 2 
311017*       LOIRE *OCEAN trop long en accés distant
      *        COPY "../../mistral/copy/Gd-Sort.cbl"
      *              REPLACING ==CPYSRT-GRD== BY ==Screen2-Gd-1==
      *                        ==CPYSRT-ROW== BY ==1==
      *                        ==CPYSRT-KEY== BY ==1==
      *                        ==CPYSRT-ORD== BY =="A"==. 
311017
              INITIALIZE ENR-TRI
              START TRI KEY >= CLE2-TRI
              INVALID
                 MOVE 1 TO W-EOF
              NOT INVALID
                 MOVE 0 TO W-EOF
              END-START
              PERFORM STAT
              PERFORM UNTIL W-EOF = 1 
                 READ TRI NEXT AT END MOVE 1 TO W-EOF
                 END-READ
                 PERFORM STAT                 
                 IF W-EOF = 0 THEN
                    move space to Screen2-Gd-1-Record
                    MOVE LIB-TRI to Screen2-Gd-1-lib
                    MOVE NUM-TRI to Screen2-Gd-1-num
                    IF Screen2-Gd-1-lib = SPACE THEN
      *                Sinon n'ajoute pas de ligne et décale les clés de 1...
                       MOVE "." TO Screen2-Gd-1-lib(60:1)
                    END-IF
                    modify Screen2-Gd-1, 
                       RECORD-TO-ADD Screen2-Gd-1-Record
                 END-IF
              END-PERFORM
              CLOSE TRI
              DELETE FILE TRI
311017
           end-if
           modify Screen2-Gd-1, mass-update = 0
           move 1 to w-gd1col event-data-2
           perform Screen2-Gd-1-Ev-Msg-Goto-Cell
           modify Screen2-Gd-1, CURSOR-Y = 1, y = 1.
311017     PERFORM Curseur-Fleche
           .
      *
       Screen2-Gd-1-Ev-Msg-Begin-Entry.
110311     MOVE Event-Action-Fail TO Event-Action
           Perform Mistral-CloseCurrentWindow.

       Modif-Ligne.
           Inquire Screen2-Gd-1(w-gd1Col, 2), 
                  cell-Data In w-sel
           MOVE SPACE TO ENR-MCMO2
           MOVE "B" TO ACT-MCMO2
           move w-sel to NUM-MCMO2 
           MOVE 1 TO W-OK
           read MXCOMMENT2 lock invalid 
                           move "Lecture MXCOMMENT2" to acu-msg-1
                           move cle1-mcmo2 to acu-msg-2
                           perform msg-erreur
                           MOVE 0 TO W-OK
                           exit paragraph
           end-read
           perform stat
           if ind-stat = 1 
                           move "Enregistrement occupé" to acu-msg-1
                           perform msg-info
                           MOVE 0 TO W-OK
                           exit paragraph
           end-if
           .

       Lect-Ligne.
           Inquire Screen2-Gd-1(w-gd1Col, 2), 
                  cell-Data In w-sel
           MOVE SPACE TO ENR-MCMO2
110309     
           IF W-SEL = 0 THEN
              EXIT PARAGRAPH   
           END-IF
110309
           MOVE "B" TO ACT-MCMO2
           move w-sel to NUM-MCMO2 
           read MXCOMMENT2 invalid 
                           move "Lecture MXCOMMENT2" to acu-msg-1
                           move cle1-mcmo2 to acu-msg-2
                           perform msg-erreur
                           exit paragraph
           end-read
           perform stat.
      *
       Sauve-Ligne.
           rewrite enr-mcmo2 invalid move "Réécrit. SVINT" to acu-msg-1
                           move cle1-mcmo2 to acu-msg-2
                           perform msg-erreur
           end-rewrite
           perform stat.

       Screen2-Gd-1-Ev-Msg-Goto-Cell.
           If w-gd1Col Not = 0
              Modify Screen2-Gd-1, Y = w-gd1Col,
                Row-Color = 0
           End-If          
           Move Event-Data-2 to w-gd1Col
           Modify Screen2-Gd-1, Y = w-gd1Col,
              Row-Color = w-row-high-color
           perform Lect-Ligne
           modify Screen2-Ef-Com, VALUE lib-mcmo2.
           .
      *
       Screen2-Pb-Quitter-Link.
           move space to lib-mcmo2
           PERFORM Acu-Screen2-Exit
           .
      *
       Screen2-Pb-Supprimer-Link.
           if w-gd1col = 0 exit paragraph
           end-if
           move "203" to Acu-Msg-Id
           perform Acu-Show-Msg
           if Acu-Return-Value not = 1
              exit paragraph
           end-if
           perform modif-ligne
           if w-ok = 0 exit paragraph
           end-if
           delete mxcomment2
           perform stat
           PERFORM Init-Grille thru F-Init-Grille.
           .
      *
       Screen2-Pb-Modifier-Link.
           perform modif-ligne
           if w-ok = 0 exit paragraph
           end-if
           modify Screen2-Pb-Modifier, VISIBLE 0
           modify Screen2-Pb-Valider, VISIBLE 1
           modify Screen2-Pb-Rafraichir, VISIBLE 1
           modify Screen2-Pb-Quitter, VISIBLE 0
           modify Screen2-Pb-Supprimer, VISIBLE 0
           MODIFY Screen2-Ef-Com, ENABLED 1
           .
      *
       Screen2-Pb-Rafraichir-Link.
           perform lect-ligne
           modify Screen2-Pb-Modifier, VISIBLE 1
           modify Screen2-Pb-Valider, VISIBLE 0
           modify Screen2-Pb-Rafraichir, VISIBLE 0
           modify Screen2-Pb-Quitter, VISIBLE 1
           modify Screen2-Pb-Supprimer, VISIBLE 1
           MODIFY Screen2-Ef-Com, ENABLED 0
           .
      *
       Screen2-Pb-Valider-Link.
           inquire Screen2-Ef-Com, VALUE LIB-MCMO2
           rewrite enr-mcmo2
           perform stat
           modify Screen2-Pb-Modifier, VISIBLE 1
           modify Screen2-Pb-Valider, VISIBLE 0
           modify Screen2-Pb-Rafraichir, VISIBLE 0
           modify Screen2-Pb-Quitter, VISIBLE 1
           modify Screen2-Pb-Supprimer, VISIBLE 1
           MODIFY Screen2-Ef-Com, ENABLED 0
           Modify Screen2-Gd-1, Y = w-gd1Col, x = 1
              cell-data = lib-mcmo2.
      *
       Screen1-Cb-Sto-Ev-Cmd-Clicked.
           inquire Screen1-Cb-Sto, VALUE Screen1-Cb-Sto-Value  
           if Screen1-Cb-Sto-Value = 1
                if W-LIB-MCMO = space
                   move "Sous-total" to W-LIB-MCMO
                   modify Screen1-Ef-Lib, value w-lib-mcmo
                end-if
           end-if
           perform Enable-Sto
           .

       Enable-Sto.
           if Screen1-Cb-Sto-Value = 1
                move 0 to wenable
           else move wv-mod to wenable
           end-if.
           modify Screen1-Pb-Sauvegarder, visible wenable
           if Screen1-Cb-Sto-Value = 1
                move 0 to wenable
           else move 1 to wenable
           end-if.
           modify Screen1-Pb-Rappeler, VISIBLE wenable
           .
      *
       Screen1-Pb-Rechercher-Link.
           Inquire Screen1-Ef-Rech, Value In Rech-NOM  
           IF RECH-NOM = SPACE EXIT PARAGRAPH
           END-IF
           Set GRID-SEARCH-FORWARDS To True
           Set GRID-SEARCH-WRAP To True
           Set GRID-SEARCH-IGNORE-CASE To True
           Set GRID-SEARCH-VISIBLE To True
           Set GRID-SEARCH-SKIP-CURRENT To True
           Move 1 To GRID-SEARCH-COLUMN
           Set GRID-SEARCH-MOVES-CURSOR To True
           If Rech-NOM(1:1) = "/"
             Move Rech-NOM(2:29) To Rech-NOM(1:29)
             Move Space To Rech-NOM(30:1)
             Set GRID-SEARCH-MATCH-ANY To True
           Else
             Set GRID-SEARCH-MATCH-LEADING To True             
           End-If

           Modify Screen2-Gd-1, Search-Options = GRID-SEARCH-OPTIONS

           Modify Screen2-Gd-1, Search-Text = Rech-NOM  Giving i
           
           If i = GRDSRCH-NOT-FOUND
             MOVE "Texte non trouvé" to acu-msg-1
             perform msg-info
           Else
             Inquire Screen2-Gd-1, Y In event-data-2
             Inquire Screen2-Gd-1, X In event-data-1
             Perform Screen2-Gd-1-Ev-Msg-Goto-Cell
           End-If           
           .

       Screen1-Ef-Rech-Bef-Procedure.
           MODIFY Screen1-La-Rech, VISIBLE TRUE
           .

       Screen1-Ef-Rech-Aft-Procedure.
           MODIFY Screen1-La-Rech, VISIBLE FALSE.
           PERFORM Screen1-Pb-Rechercher-Link.
      *
       Screen2-Pb-Classement-Link.
           if w-cla = 1
                move 2 to w-cla
                modify Screen2-Pb-Classement, TITLE
                 "Classer par ordre de création"
           else move 1 to w-cla
                modify Screen2-Pb-Classement, TITLE
                 "Classer par ordre alphabétique"
           end-if
           PERFORM Init-Grille thru F-Init-Grille.
           .

       

      *{Bench}end
       REPORT-COMPOSER SECTION.
