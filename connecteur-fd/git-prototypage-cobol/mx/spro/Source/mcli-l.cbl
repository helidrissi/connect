      *{Bench}prg-comment
      * mcli-l.cbl
      * mcli-l.cbl is generated from W:\mx\spro\mcli-l.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. mcli-l.
       AUTHOR. sarah.dehecq.
       DATE-WRITTEN. mercredi 22 juillet 2020 08:47:20.
       REMARKS. 
      *{Bench}end

       ENVIRONMENT                 DIVISION.
       CONFIGURATION               SECTION.
       SOURCE-COMPUTER. TOTO 
      *    A mettre en commentaire pour version finale (barre de progression...):
      *    WITH DEBUGGING MODE
           .
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
       COPY "MXPARAM.sl".
       COPY "MXCLI.sl".
       COPY "RECH.sl".
       COPY "MXAGENCE.sl".
       COPY "RECHCMD.sl".
      *{Bench}end
       DATA                        DIVISION.
       FILE                        SECTION.
      *{Bench}file
       COPY "COBCAP.fd".
       COPY "MXPARAM.fd".
       COPY "MXCLI.fd".
       COPY "RECH.fd".
       COPY "MXAGENCE.fd".
       COPY "RECHCMD.fd".
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
       77 Screen1-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
           COPY  "cobcap.wrk".
       77 Default-Font
                  USAGE IS HANDLE OF FONT DEFAULT-FONT.
       77 Small-Font
                  USAGE IS HANDLE OF FONT SMALL-FONT.
       77 VALIDER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 QUITTER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ENGRSIM16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Screen1-Gd-1-Cursor-Y-Old    PIC  9(5).
       01 Old-Screen1-Gd-1-Record.
           05 Old-Screen1-Gd-1-RAI         PIC  X(36).
           05 Old-Screen1-Gd-1-FCO         PIC  X(8).
           05 Old-R-Screen1-Gd-1-FCO REDEFINES Old-Screen1-Gd-1-FCO.
               10 Old-Screen1-Gd-1-COD         PIC  9(6).
               10 FILLER           PIC  XX.
           05 Old-Screen1-Gd-1-Siege       PIC  X(08).
           05 Old-Screen1-Gd-1-TEL         PIC  X(18).
           05 Old-Screen1-Gd-1-SIREN       PIC  X(12).
           05 Old-Screen1-Gd-1-TVA         PIC  X(20).
           05 Old-Screen1-Gd-1-Age         PIC  X(2).
           05 Old-Screen1-Gd-1-Bidon2      PIC  X(08).
           05 Old-Screen1-Gd-1-VIL         PIC  X(35).
           05 Old-Screen1-Gd-1-Interloc    PIC  X(52).
       77 Tmp-9-3          PIC  9(6).
       77 W-COD            PIC  9(6).
       77 W-FCO            PIC  9(8).
       77 W-TEL            PIC  X(15).
       77 W-TEL2           PIC  X(15).
       77 W-SIR            PIC  X(3)BX(3)BX(3).
       77 W-SIREN          PIC  X(12).
       77 W-TVA            PIC  X(20).
       77 W-VILLE          PIC  X(25).
       77 W-CP-ECR         PIC  X(8).
       77 W-CP-FIC         PIC  X(8).
       77 W-PAYS           PIC  X(3).
       77 W-INTERLOC       PIC  X(25).
       77 W-INTERLOCUTEUR  PIC  X(52).
       77 W-Ef-TEL         PIC  X(15).
       77 W-KEY-ORDER      PIC  X(1)
                  VALUE IS "A".
       77 W-KEY-NUM        PIC  9(1)
                  VALUE IS 4.
       77 W-ORD            PIC  S9(2)
                  VALUE IS 0.
       77 W-NBR            PIC  9(4)
                  VALUE IS 0.
       77 W-LOG-PALM       PIC  9(3).
       77 W-NPR-PALM       PIC  9(3).
       77 W-RAI            PIC  X(25).
       77 Af-POS           PIC  X(10).
       77 W-RAISOC         PIC  X(36).
       77 W-CPT            PIC  9(3).
       77 W-NDEP           PIC  9(3).
       77 W-ORIPAYS        PIC  X(2).
           COPY  "EF-TEL.WRK".
           COPY  "EF-POS.WRK".
           COPY  "rech.wrk".
       77 W-MXPARAM        PIC  9(9).
       77 PAYS-FILE-STATUS PIC  X(2).
           88 Valid-PAYS-FILE-STATUS VALUE IS "00" THRU "09". 
       77 FILE-STATUS      PIC  X(2).
       77 PLUSxxx16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ASSIGN-RECH      PIC  X(60).
       77 WASS-RECH        PIC  X(20)
                  VALUE IS "MCLI-L-RECH".
       77 W-NB-ELT         PIC  X(60).
       77 Tmp-9-3-FIC      PIC  9(6).
       77 Tmp-9-3-ECR      PIC  Z(5)9.
       77 CXCLI-FILE-STATUS            PIC  X(2).
           88 Valid-CXCLI VALUE IS "00" THRU "09". 
       77 ZOOMxxx16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-TITSOC         PIC  9(9).
       77 I-CLI            PIC  9(3).
       77 W-EMAIL          PIC  X(60).
       77 ENGRDOU24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ASSIGN-RECHCMD   PIC  X(60).
       77 W-TITLE          PIC  X(17)
                  VALUE IS "Liste des clients".
       77 CLIENTx16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Screen1-St-1-Handle
                  USAGE IS HANDLE OF STATUS-BAR VALUE NULL.
       77 SIEGSOC16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 PLUSxxx16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ADDxxxx16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 WARNING16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 INTERDI16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 STOPxxx16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 WARNINX16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-TABRLA         PIC  9(9).
       77 W-DEB            PIC  9.
       77 W-LGT            PIC  99.
       77 W-TTL            PIC  X.
       77 W-NBT            PIC  9(3).
       77 W-POS            PIC  9(3).
       77 W-IND-TEL        PIC  9.
       77 W-MSG-TEL        PIC  9.
       77 W-AF-TEL         PIC  X(18).
       77 W-OK PIC  9.
       77 W-NVIL           PIC  99.
       77 W-RESTE          PIC  9(3).
       77 W-RESULT         PIC  9(6).
       77 I    PIC  9(3).
       77 J    PIC  9(3).
       77 W-SPTEL          PIC  9(3).
       77 W-PAS-RAZ        PIC  9.
       77 Screen1-Ef-1-Value           PIC  X(30).
       77 Screen1-Ef-1-Valuea          PIC  X(30).
       01 Screen1-Gd-1-Record.
           05 Screen1-Gd-1-RAI PIC  X(36).
           05 Screen1-Gd-1-ADR PIC  X(75).
           05 Screen1-Gd-1-FCO PIC  X(8).
           05 Screen1-Gd-1-Siege           PIC  X(08).
           05 Screen1-Gd-1-TEL PIC  X(18).
           05 Screen1-Gd-1-Age PIC  X(2).
           05 Screen1-Gd-1-Bidon2          PIC  X(08).
           05 Screen1-Gd-1-VIL PIC  X(75).
           05 Screen1-Gd-1-Interloc        PIC  X(52).
       77 Screen1-Visible  PIC  9
                  VALUE IS 1.
       77 Traditional-Font
                  USAGE IS HANDLE OF FONT TRADITIONAL-FONT.
           COPY  "positions.wrk".

      *{Bench}end
       LINKAGE                     SECTION.
      *{Bench}linkage
       77 LK-ZONE-PALM     PIC  X(500).
           COPY  "LK-MCLI-L.WRK".
      *{Bench}end
       SCREEN                      SECTION.
      *{Bench}copy-screen
       01 Screen1.
           03 Screen1-Gd-1, Grid, 
              COL 2,00, LINE 11,31, LINES 31,62 CELLS, 
              SIZE 177,86 CELLS, 
              3-D, CENTERED-HEADINGS, COLOR IS 2, COLUMN-HEADINGS, 
              DATA-COLUMNS (1, 37, 112, 120, 128, 146, 148, 156, 231), 
              DISPLAY-COLUMNS (1, 36, 81, 95, 95, 115, 1, 36, 95), 
              ALIGNMENT ("L", "U", "C", "U", "U", "U", "U", "L", "U"), 
              DATA-TYPES ("X(36)", "X", "X(8)", "X", "X", "X(2)", "X(10)
      -       "", "X(35)", "X(52)"), 
              SEPARATION (5, 10, 0, 5, 5, 5, 5, 5, 5), 
              COLUMN-DIVIDERS (1, 1, 0, 1, 1, 1, 1, 1, 0), 
              CURSOR-FRAME-WIDTH 0, PERMANENT, DIVIDER-COLOR 8, 
              END-COLOR 16, FONT IS Default-Font, HEADING-COLOR 257, 
              HEADING-DIVIDER-COLOR 8, HEADING-FONT IS Small-Font, 
              ID IS 6, NUM-COL-HEADINGS 1, NUM-ROWS W-Num-Rows, 
              RECORD-DATA Screen1-Gd-1-Record, VPADDING 50, VSCROLL, 
              ATW-CSS-CLASS "table table-multi", 
              EVENT PROCEDURE Screen1-Gd-1-Event-Proc.
           03 Screen1-Ef-SIREN, Entry-Field, 
              COL 68,00, LINE 4,62, LINES 1,92 CELLS, SIZE 41,43 CELLS, 
              3-D, COLOR IS 2, ID IS 56, MAX-TEXT 9, USE-TAB, 
              BEFORE PROCEDURE Screen1-Ef-SIREN-Bef-Procedure.
           03 Screen1-Ef-Rai, Entry-Field, 
              COL 68,00, LINE 4,62, LINES 1,92 CELLS, SIZE 41,43 CELLS, 
              3-D, COLOR IS 2, ID IS 36, MAX-TEXT 25, NOTIFY-CHANGE, 
              BEFORE PROCEDURE Screen1-Ef-Rai-Bef-Procedure, 
              EVENT PROCEDURE Screen1-Ef-1-Event-Proc.
           03 Screen1-Ef-Interlocuteur, Entry-Field, 
              COL 68,00, LINE 4,62, LINES 1,92 CELLS, SIZE 41,43 CELLS, 
              3-D, COLOR IS 2, ID IS 66, MAX-TEXT 25, 
              BEFORE PROCEDURE Screen1-Ef-Interlocuteur-Bef-Procedure, 
              EVENT PROCEDURE Screen1-Ef-Interlocuteur-Event-Proc.
           03 Screen1-Ef-TVA, Entry-Field, 
              COL 68,00, LINE 4,62, LINES 1,92 CELLS, SIZE 41,43 CELLS, 
              3-D, COLOR IS 2, ID IS 76, MAX-TEXT 20, USE-TAB.
           03 Screen1-Ef-Fco, Entry-Field, 
              COL 68,00, LINE 4,62, LINES 1,92 CELLS, SIZE 41,43 CELLS, 
              3-D, COLOR IS 2, ID IS 26, MAX-TEXT 8, USE-TAB, 
              EVENT PROCEDURE Screen1-Ef-Fco-Event-Proc.
           03 Screen1-DaRb-Ord1, Radio-Button, 
              COL 4,43, LINE 4,85, LINES 1,69 CELLS, SIZE 13,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 1, 
              ID IS 3, 
              TITLE "Code", VALUE W-ORD, 
              EVENT PROCEDURE Screen1-DaRb-Ord1-Event-Proc.
           03 Screen1-DaRb-Ord2, Radio-Button, 
              COL 26,43, LINE 4,85, LINES 1,69 CELLS, SIZE 18,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 2, 
              ID IS 4, 
              TITLE "Raison sociale ", VALUE W-ORD, 
              EVENT PROCEDURE Screen1-DaRb-Ord2-Event-Proc.
           03 Screen1-DaRb-Ord3, Radio-Button, 
              COL 4,43, LINE 7,92, LINES 1,69 CELLS, SIZE 13,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 3, 
              ID IS 11, 
              TITLE "N° téléphone", VALUE W-ORD, 
              EVENT PROCEDURE Screen1-DaRb-Ord3-Event-Proc.
           03 Screen1-DaRb-Ord4, Radio-Button, 
              COL 26,43, LINE 7,92, LINES 1,69 CELLS, SIZE 13,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 4, 
              ID IS 47, 
              TITLE "SIREN", VALUE W-ORD, 
              EVENT PROCEDURE Screen1-DaRb-Ord4-Event-Proc.
           03 Screen1-Pb-Lancer, Push-Button, 
              COL 125,00, LINE 1,92, LINES 24, SIZE 118, 
              BITMAP-HANDLE ENGRDOU24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              FONT IS Default-Font, ID IS 5, NO-AUTO-DEFAULT, NO-TAB, 
              DEFAULT-BUTTON, TERMINATION-VALUE 9859, 
              TITLE "Lancer la liste", 
              ATW-CSS-CLASS "button-rechercher".
           03 Screen1-Pb-Accept, Push-Button, 
              COL 143,43, LINE 1,92, LINES 24, SIZE 118, 
              BITMAP-HANDLE VALIDER24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 9858, ID IS 7, NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Accepter", ATW-CSS-CLASS "button-valider".
           03 Screen1-Pb-Cancel, Push-Button, 
              COL 161,86, LINE 1,92, LINES 24, SIZE 118, 
              BITMAP-HANDLE QUITTER24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 9841, ID IS 8, NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Quiitter sans sélection", 
              ATW-CSS-CLASS "button-quitter".
           03 Screen1-La-Titre, Label, 
              COL 50,57, LINE 4,85, LINES 1,62 CELLS, SIZE 12,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 9, RIGHT, 
              LABEL-OFFSET 0, 
              TITLE "A partir de".
           03 Screen1-La-2, Label, 
              COL 4,43, LINE 2,00, LINES 1,69 CELLS, SIZE 31,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 12, LABEL-OFFSET 0, 
              TITLE "Accès par", ATW-CSS-CLASS "h5".
           03 Screen1-La-Rech, Label, 
              COL 112,29, LINE 8,00, LINES 1,62 CELLS, 
              SIZE 67,57 CELLS, 
              COLOR IS 13, FONT IS Small-Font, ID IS 10, 
              LABEL-OFFSET 0, 
              TITLE 
              "Pour rechercher un mot (chaîne de caractères) , faire pré
      -       "céder par /", TRANSPARENT.
           03 Screen1-Ef-Cod, Entry-Field, 
              COL 68,00, LINE 4,62, LINES 1,92 CELLS, SIZE 41,43 CELLS, 
              3-D, COLOR IS 2, ID IS 16, MAX-TEXT 6, NUMERIC, 
              EVENT PROCEDURE Screen1-Ef-1-Event-Proc.
           03 Screen1-Ef-Tel, Entry-Field, 
              COL 68,00, LINE 4,62, LINES 1,92 CELLS, SIZE 41,43 CELLS, 
              3-D, COLOR IS 2, ID IS 46, MAX-TEXT 15, NO-AUTOSEL, 
              EVENT PROCEDURE Screen1-Ef-1-Event-Proc.
           03 Screen1-Ef-CP, Entry-Field, 
              COL 68,00, LINE 7,69, LINES 1,92 CELLS, SIZE 12,43 CELLS, 
              3-D, COLOR IS 2, ID IS 30, VALUE Screen1-Ef-1-Value, 
              AFTER PROCEDURE Screen1-Ef-CP-Aft-Procedure, 
              BEFORE PROCEDURE Screen1-Ef-CP-Bef-Procedure.
           03 Screen1-Ef-VILLE, Entry-Field, 
              COL 82,86, LINE 7,69, LINES 1,92 CELLS, SIZE 26,86 CELLS, 
              3-D, COLOR IS 2, ID IS 31, VALUE Screen1-Ef-1-Valuea, 
              AFTER PROCEDURE Screen1-Ef-VILLE-Aft-Procedure, 
              BEFORE PROCEDURE Screen1-Ef-VILLE-Bef-Procedure.
           03 Screen1-Bt-1, Bitmap, TRANSPARENT-COLOR 16777215, 
              COL 70,71, LINE 44,38, LINES 16, SIZE 16, 
              BITMAP-HANDLE CLIENTx16-BMP, BITMAP-NUMBER 1, 
              ID IS 14, VISIBLE 0.
           03 Screen1-Bt-2, Bitmap, 
              COL 75,00, LINE 44,38, LINES 16, SIZE 16, 
              BITMAP-HANDLE SIEGSOC16-BMP, BITMAP-NUMBER 1, 
              ID IS 18, VISIBLE 0.
           03 Screen1-Bt-surveiller, Bitmap, 
              TRANSPARENT-COLOR 12632256, 
              COL 5,14, LINE 44,38, LINES 16, SIZE 16, 
              BITMAP-HANDLE WARNINX16-BMP, BITMAP-NUMBER 1, 
              ID IS 19.
           03 Screen1-Bt-suspendu, Bitmap, TRANSPARENT-COLOR 12632256, 
              COL 20,57, LINE 44,38, LINES 16, SIZE 16, 
              BITMAP-HANDLE STOPxxx16-BMP, BITMAP-NUMBER 1, 
              ID IS 20.
           03 Screen1-Bt-interdit, Bitmap, TRANSPARENT-COLOR 12632256, 
              COL 35,43, LINE 44,38, LINES 16, SIZE 16, 
              BITMAP-HANDLE INTERDI16-BMP, BITMAP-NUMBER 1, 
              ID IS 21.
           03 Screen1-La-surveiller, Label, 
              COL 8,29, LINE 44,54, LINES 1,08 CELLS, SIZE 10,71 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 23, 
              LABEL-OFFSET 0, 
              TITLE "A Surveiller", TRANSPARENT.
           03 Screen1-La-suspendu, Label, 
              COL 23,71, LINE 44,54, LINES 1,15 CELLS, 
              SIZE 10,29 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 24, 
              LABEL-OFFSET 0, 
              TITLE "Suspendu", TRANSPARENT.
           03 Screen1-La-interdit, Label, 
              COL 38,57, LINE 44,54, LINES 1,15 CELLS, SIZE 8,29 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 25, 
              LABEL-OFFSET 0, 
              TITLE "Interdit", TRANSPARENT.
           03 Screen1-La-Titre2, Label, 
              COL 50,57, LINE 7,92, LINES 1,62 CELLS, SIZE 12,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 1, RIGHT, 
              LABEL-OFFSET 0, 
              TITLE "CP / Ville".
           03 Screen1-La-Rech2, Label, 
              COL 112,71, LINE 4,92, LINES 1,62 CELLS, 
              SIZE 67,57 CELLS, 
              COLOR IS 13, FONT IS Small-Font, ID IS 33, 
              LABEL-OFFSET 0, 
              TITLE 
              "Pour rechercher dans le nom et l'adresse complète, faire 
      -       "précéder par *", TRANSPARENT, VISIBLE 0.
           03 Screen1-Pb-Plus, Push-Button, 
              COL 151,71, LINE 43,92, LINES 24, SIZE 189, 
              BITMAP-HANDLE PLUSxxx16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1111, ID IS 2, NO-TAB, 
              TITLE "Afficher les 100 clients suivants (&+)", 
              VISIBLE 0, ATW-CSS-CLASS "button-af100".
           03 Screen1-La-St1, Label, 
              COL 82,71, LINE 44,31, LINES 1,54 CELLS, 
              SIZE 49,00 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 28, LABEL-OFFSET 0, 
              TRANSPARENT.
           03 Screen1-La-nb-elt, Label, 
              COL 82,71, LINE 44,31, LINES 1,54 CELLS, 
              SIZE 49,00 CELLS, 
              COLOR IS 13, FONT IS Small-Font, ID IS 15, 
              LABEL-OFFSET 0, TRANSPARENT, VISIBLE 0.

      *{Bench}end

      *{Bench}linkpara
       PROCEDURE DIVISION USING LK-ZONE-PALM, LK-MCLI-L.
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
           COPY RESOURCE "ENGRDOU24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ENGRDOU24.JPG", GIVING 
              ENGRDOU24-JPG
           COPY RESOURCE "VALIDER24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "VALIDER24.JPG", GIVING 
              VALIDER24-JPG
           COPY RESOURCE "QUITTER24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "QUITTER24.JPG", GIVING 
              QUITTER24-JPG
           COPY RESOURCE "CLIENTx16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "CLIENTx16.BMP", GIVING 
              CLIENTx16-BMP
           COPY RESOURCE "SIEGSOC16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "SIEGSOC16.BMP", GIVING 
              SIEGSOC16-BMP
           COPY RESOURCE "WARNINX16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "WARNINX16.BMP", GIVING 
              WARNINX16-BMP
           COPY RESOURCE "STOPxxx16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "STOPxxx16.BMP", GIVING 
              STOPxxx16-BMP
           COPY RESOURCE "INTERDI16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "INTERDI16.BMP", GIVING 
              INTERDI16-BMP
           COPY RESOURCE "PLUSxxx16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "PLUSxxx16.BMP", GIVING 
              PLUSxxx16-BMP
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
           IF ENGRDOU24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ENGRDOU24-JPG
              MOVE 0 TO ENGRDOU24-JPG
           END-IF
           IF VALIDER24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY VALIDER24-JPG
              MOVE 0 TO VALIDER24-JPG
           END-IF
           IF QUITTER24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY QUITTER24-JPG
              MOVE 0 TO QUITTER24-JPG
           END-IF
           IF CLIENTx16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY CLIENTx16-BMP
              MOVE 0 TO CLIENTx16-BMP
           END-IF
           IF SIEGSOC16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY SIEGSOC16-BMP
              MOVE 0 TO SIEGSOC16-BMP
           END-IF
           IF WARNINX16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY WARNINX16-BMP
              MOVE 0 TO WARNINX16-BMP
           END-IF
           IF STOPxxx16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY STOPxxx16-BMP
              MOVE 0 TO STOPxxx16-BMP
           END-IF
           IF INTERDI16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY INTERDI16-BMP
              MOVE 0 TO INTERDI16-BMP
           END-IF
           IF PLUSxxx16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY PLUSxxx16-BMP
              MOVE 0 TO PLUSxxx16-BMP
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

       Acu-Screen1-Scrn.
           PERFORM Acu-Screen1-Create-Win
           PERFORM Acu-Screen1-Init-Data
           .

       Acu-Screen1-Create-Win.
           PERFORM Screen1-Bef-Create
      * display screen
              DISPLAY Floating GRAPHICAL WINDOW
                 LINES 46,77, SIZE 181,00, CELL HEIGHT 13, 
                 CELL WIDTH 7, COLOR IS 65793, LABEL-OFFSET 0, 
                 LINK TO THREAD, NO SCROLL, TITLE W-TITLE, TITLE-BAR, 
                 USER-GRAY, USER-WHITE, NO WRAP, 
                 ATW-CSS-ID "modal_screen_mcli_l", 
                 EVENT PROCEDURE Screen1-Event-Proc, 
                 HANDLE IS Screen1-Handle
      * toolbar
           DISPLAY Screen1 UPON Screen1-Handle
           PERFORM Screen1-Aft-Create
           .

       Acu-Screen1-Init-Data.
      *    Before-Initdata
           PERFORM Acu-Screen1-Gd-1-Content
           PERFORM Screen1-AfterInitData
           .
      * Screen1
       Acu-Screen1-Proc.
           PERFORM UNTIL Exit-Pushed
              ACCEPT Screen1  
                 ON EXCEPTION PERFORM Acu-Screen1-Evaluate-Func
              END-ACCEPT
              EVALUATE TRUE
      * Screen1-Pb-Lancer Link To
              WHEN Key-Status = 9859
                 PERFORM Screen1-Pb-Lancer-LinkTo
              END-EVALUATE
           END-PERFORM
           DESTROY Screen1-Handle
           INITIALIZE Key-Status
           .

      * Screen1-Gd-1
       Acu-Screen1-Gd-1-Content.
      * Cells Settings
           MODIFY Screen1-Gd-1, X = 1, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "Raison Sociale", 
           MODIFY Screen1-Gd-1, X = 2, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "Ville", 
           MODIFY Screen1-Gd-1, X = 3, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "Code", 
           MODIFY Screen1-Gd-1, X = 4, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, 
           MODIFY Screen1-Gd-1, X = 5, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "Téléphone", 
           MODIFY Screen1-Gd-1, X = 6, Y = 1, CELL-COLOR = 112, 
              CELL-DATA = "Ag", 
           MODIFY Screen1-Gd-1, X = 7, Y = 1, CELL-COLOR = 112, 
           MODIFY Screen1-Gd-1, X = 8, Y = 1, CELL-COLOR = 112, 
              CELL-DATA = "Adresse", 
           MODIFY Screen1-Gd-1, X = 9, Y = 1, CELL-COLOR = 112, 
      * Columns' Setting
           MODIFY Screen1-Gd-1, X = 1, COLUMN-COLOR = 2, 
           MODIFY Screen1-Gd-1, X = 2, COLUMN-COLOR = 2, 
           MODIFY Screen1-Gd-1, X = 3, COLUMN-COLOR = 2, 
           MODIFY Screen1-Gd-1, X = 4, COLUMN-COLOR = 2, 
           MODIFY Screen1-Gd-1, X = 5, COLUMN-COLOR = 2, 
           MODIFY Screen1-Gd-1, X = 6, COLUMN-COLOR = 2, 
           MODIFY Screen1-Gd-1, X = 9, COLUMN-COLOR = 2, 
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
      * Screen1-Pb-Accept Link To
              WHEN Key-Status = 9858
                 PERFORM Screen1-Pb-Accept-Ex-Cmd-Clicked
      * Screen1-Pb-Cancel Link To
              WHEN Key-Status = 9841
                 PERFORM Screen1-Pb-Cancel-Ex-Cmd-Clicked
      * Screen1-Pb-Plus Link To
              WHEN Key-Status = 1111
                 PERFORM Screen1-Pb-Plus-Link
           END-EVALUATE
           MOVE 1 TO Accept-Control
           .

       Acu-Close-Files.
      *    Before-Close
      *    After-Close
           .

      * COBCAP

      * MXPARAM

      * MXCLI

      * RECH

      * MXAGENCE

      * RECHCMD

       Acu-Screen1-Exit.
           SET Exit-Pushed TO TRUE
           .


       Screen1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Close
              PERFORM Screen1-Ev-Cmd-Close
           END-EVALUATE
           .

       Screen1-Gd-1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Begin-Entry
              PERFORM Screen1-Gd-1-Ev-Msg-Begin-Entry
           WHEN Msg-End-Drag
              PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell
              PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell-Mouse
              PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
           END-EVALUATE
           .

       Screen1-Ef-1-Event-Proc.
           .

       Screen1-Ef-Interlocuteur-Event-Proc.
           .

       Screen1-Ef-Fco-Event-Proc.
           .

       Screen1-DaRb-Ord1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-DaRb-Ord1-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-DaRb-Ord2-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-DaRb-Ord2-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-DaRb-Ord3-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-DaRb-Ord3-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-DaRb-Ord4-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-DaRb-Ord4-Ev-Cmd-Clicked
           END-EVALUATE
           .
      ***   start event editor code   ***
           COPY "../../MISTRAL/COPY/ENVMIS.CBL".
040419*     COPY "W:/mistral/copy/centrefenetre.cbl".
050819     COPY "W:/mistral/copy/MisCentrefenetre.cbl".

       Init-BMP.
           .
      *
       Open-File-Rtn.
           OPEN INPUT MXCLI    PERFORM STAT
           OPEN INPUT MXAGENCE PERFORM STAT 
           .
      *
       Close-File-Rtn.
           CLOSE MXCLI 
           CLOSE MXAGENCE
           .
      *
       Init-Grille.
      * Remise à zéro de la grille...
           MODIFY Screen1-Gd-1, RESET-GRID = 1|, MASS-UPDATE = 1, 
           PERFORM Acu-Screen1-Gd-1-Content
           perform Entete-Grille

      * Remplissage de la grille...
           INITIALIZE ENR-MCLI
           MOVE 0 TO W-EOF
           MOVE W-ORD TO W-KEY-NUM
           EVALUATE W-KEY-NUM
               WHEN 1
                   IF LK-MCLI-L-NumFiltre = 2
                       MOVE W-FCO TO FCO-MCLI
                       START MXCLI KEY >= CLE7-MCLI
                           INVALID MOVE 1 TO W-EOF
                       END-START                                        
                   ELSE
                       MOVE W-COD TO COD-MCLI
                       START MXCLI KEY >= CLE6-MCLI
                           INVALID MOVE 1 TO W-EOF
                       END-START
                   END-IF
               WHEN 2
                   MOVE W-RAI TO RAI-MCLI
                   START MXCLI KEY >= CLE2-MCLI
                       INVALID MOVE 1 TO W-EOF
                   END-START
               WHEN OTHER
                   MOVE W-TEL TO TEL-MCLI
                   START MXCLI KEY >= CLE5-MCLI
                       INVALID MOVE 1 TO W-EOF
                   END-START
           END-EVALUATE
           PERFORM STAT

           IF W-EOF = 0 THEN
               READ MXCLI NEXT END MOVE 1 TO W-EOF END-READ
               PERFORM STAT
           END-IF
           MOVE 2 TO Screen1-Gd-1-Cursor-Y-Old
           MOVE SPACES TO Screen1-Gd-1-FCO
           MOVE 1 TO Tmp-9-3
           MOVE 0 TO W-NBR
           PERFORM UNTIL W-EOF = 1 OR W-NBR > 100
      
               MOVE 1 TO W-OK

               IF  W-ORD = 2
               AND W-RAI <> SPACE THEN
                 PERFORM Test-CP-Ville
               END-IF

               IF W-OK = 1 THEN
      
                 PERFORM Mep-Un-Cli
               END-IF
               READ MXCLI NEXT END MOVE 1 TO W-EOF END-READ
               PERFORM STAT
           END-PERFORM
      * Positionnement du curseur sur la grille...
070720*     move 72 to W-Row-Low-Color
           MODIFY Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old),
                  CURSOR-Y = Screen1-Gd-1-Cursor-Y-Old
070720*                  ROW-COLOR = W-Row-Low-Color,     
                  |MASS-UPDATE = 0

      * Patch : sans ça, la grille peut parfois mélanger les lignes...
           MOVE SPACES TO Screen1-Gd-1-Record
           .
      *
       Tel-Fic2Ecr.
           COPY "../../mistral/copy/Ef-Tel-Fic2Ecr.cbl"
                REPLACING ==CPYTEL-PAYS== BY ==PAY-MCLI==
                          ==CPYTEL-FIC==  BY ==TEL-MCLI==
                          ==CPYTEL-ECR== BY ==W-AF-TEL==.
           IF W-IND-TEL = 0
              MOVE W-AF-TEL TO Screen1-Gd-1-TEL
           ELSE 
              MOVE SPACES TO Screen1-Gd-1-TEL
              IF W-IND-TEL = 1
                 STRING "(*) " W-AF-TEL DELIMITED BY "  " INTO
                    Screen1-Gd-1-TEL
                 MOVE 1 TO W-MSG-TEL
              ELSE
                 STRING "(#) " W-AF-TEL DELIMITED BY "  " INTO
                    Screen1-Gd-1-TEL
                 MOVE 2 TO W-MSG-TEL
           END-IF.
           .
       Tel2-Fic2Ecr.
           COPY "../../mistral/copy/Ef-Tel-Fic2Ecr.cbl"
                REPLACING ==CPYTEL-PAYS== BY ==PAY-MPAR==
                          ==CPYTEL-FIC==  BY ==W-TEL2==
                          ==CPYTEL-ECR== BY ==W-Ef-Tel==.
           .
      *
       Mep-Un-Cli.
           IF (COD-MCLI NOT = 0 AND CANN-MCLI = 0 
               AND LK-MCLI-L-NumFiltre < 2)
           OR (FCO-MCLI NOT = 0 AND NOT = SPACE AND CANNP-MCLI = 0
               AND LK-MCLI-L-NumFiltre = 2)
           OR (FCO-MCLI NOT = 0 AND NOT = SPACE AND CANNP-MCLI = 0
               AND (COD-MCLI = 0 OR CANN-MCLI = 1)
               AND LK-MCLI-L-NumFiltre = 3)
           OR ((FCO-MCLI = 0 OR SPACE) AND COD-MCLI NOT = 0 
               AND CANN-MCLI = 0
               AND LK-MCLI-L-NumFiltre = 4)
                     MOVE SPACE TO Screen1-Gd-1-Record
                     ADD 1 TO Tmp-9-3 W-NBR
                     IF AGE-MCLI <> SPACE 
                     AND LK-MCLI-L-IAG NOT = 1
                        MOVE SPACE TO ENR-MAGC
                        MOVE AGE-MCLI TO COD-MAGC
                        READ MXAGENCE
                        PERFORM STAT
                        MOVE ABR-MAGC TO Screen1-Gd-1-Age
                     END-IF
                     IF LK-MCLI-L-IAG = 1
                        MOVE ABR-MAGC TO Screen1-Gd-1-Age
                     END-IF
                     PERFORM Tel-Fic2Ecr                    
                     perform Mep-Infos-Cli
                     MODIFY Screen1-Gd-1,
                         RECORD-TO-ADD = Screen1-Gd-1-Record
                     PERFORM Mep-Bitmap
                     perform Color-Ligne
           END-IF
           .

       Mep-Infos-Cli.
           IF LK-MCLI-L-NumFiltre < 2 OR = 4 THEN
              MOVE COD-MCLI TO Screen1-Gd-1-FCO
           ELSE
              MOVE FCO-MCLI TO Screen1-Gd-1-FCO
           END-IF
           MOVE SPACE TO W-RAISOC
           MOVE RAI-MCLI TO Screen1-Gd-1-RAI
           inspect adr-mcli replacing all w-newline by "  "
           MOVE ADR-MCLI TO Screen1-Gd-1-VIL
           PERFORM MEP-CP                      
           STRING Af-POS " " VIL-MCLI
                  DELIMITED BY "  " INTO Screen1-Gd-1-ADR

           if w-ord = 4 
              MOVE SIR1-MCLI TO W-SIR
              IF SIR1N-MCLI = ZERO MOVE SPACE TO W-SIR
              END-IF                              
              MOVE W-SIR TO Screen1-Gd-1-INTERLOC
           end-if.

       Entete-Grille.
           if w-ord = 4 
              MODIFY Screen1-Gd-1, X = 9, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "SIREN", 
           end-if.

       Mep-Bitmap.    
           IF LK-MCLI-L-NumFiltre = 2 AND COD-MCLI NOT = ZERO
           and CANN-MCLI = 0 then
              MODIFY Screen1-Gd-1(Tmp-9-3, 7), 
                 BITMAP CLIENTx16-BMP
                 BITMAP-TRAILING = 1
           END-IF         
           IF SIE-MCLI <> 0 THEN
              MODIFY Screen1-Gd-1(Tmp-9-3, 4), 
                 BITMAP SIEGSOC16-BMP
           END-IF            
           IF RLA-MCLI NOT = 0 
              EVALUATE RLA-MCLI
              WHEN 1
                 MODIFY Screen1-Gd-1(Tmp-9-3, 6), 
                    BITMAP WARNINX16-BMP
                    BITMAP-TRAILING = 1
              WHEN 2                                          
                 MODIFY Screen1-Gd-1(Tmp-9-3, 6), 
                    BITMAP STOPxxx16-BMP
                    BITMAP-TRAILING = 1
              WHEN 3
                 MODIFY Screen1-Gd-1(Tmp-9-3, 6), 
                    BITMAP INTERDI16-BMP
                    BITMAP-TRAILING = 1
              END-EVALUATE
           END-IF.

       Color-Ligne.
      *     divide tmp-9-3 by 2 giving w-result remainder w-reste
      *     if w-reste = 0
      *        MODIFY Screen1-Gd-1(Tmp-9-3) row-color 258
      *     end-if
           .
      *
       Tel-Ecr2Fic.
           COPY "../../mistral/copy/Ef-Tel-Ecr2Fic.cbl"
                REPLACING ==CPYTEL-PAYS== BY ==PAY-MPAR==
                          ==CPYTEL-FIC==  BY ==W-TEL2==
                          ==CPYTEL-ECR== BY ==W-Ef-TEL==.
           .
      *
       Mep-CP.
           COPY "../../mistral/copy/Ef-Pos-Fic2Ecr.cbl"
           REPLACING  ==CPYPOS-PAYS== BY ==PAY-MCLI==
                      ==CPYPOS-FIC==  BY ==POS-MCLI==
                      ==CPYPOS-ECR==  BY ==Af-POS==.
           .
      *
       Plus-Grille.
           IF W-EOF = 0 THEN
               READ MXCLI NEXT END MOVE 1 TO W-EOF END-READ
               PERFORM STAT
           END-IF

           MOVE SPACES TO Screen1-Gd-1-FCO
           MOVE 0 TO W-NBR
           PERFORM UNTIL W-EOF = 1 OR W-NBR > 100
      
               MOVE 1 TO W-OK

               IF W-ORD = 2
               AND W-RAI <> SPACE THEN
                 PERFORM Test-CP-Ville
               END-IF

               IF W-OK = 1 THEN
      
                 PERFORM Mep-Un-Cli
               END-IF

               READ MXCLI NEXT END MOVE 1 TO W-EOF END-READ
               PERFORM STAT
           END-PERFORM
      * Patch : sans ça, la grille peut parfois mélanger les lignes...
           MOVE SPACES TO Screen1-Gd-1-Record
           .

      *
       Screen1-AfterInitData.
050819*     PERFORM MisCentreFenetreScreen1

           OPEN INPUT MXPARAM
           PERFORM STAT
           MOVE 1 TO W-MXPARAM
           READ MXPARAM
           PERFORM STAT
           CLOSE MXPARAM

           | par défaut, on arrive sur la raison sociale
           MOVE 1 TO W-DEB
           PERFORM Screen1-DaRb-Ord2-Ev-Cmd-Clicked
           MOVE 0 TO W-DEB

      * Remise à zéro de la grille...
           MODIFY Screen1-Gd-1, RESET-GRID = 1
           PERFORM Acu-Screen1-Gd-1-Content
           perform Entete-Grille
           IF LK-MCLI-L-NumFiltre = 0 MOVE 1 TO LK-MCLI-L-Numfiltre
           END-IF
      * Liste des clients "agences"
           IF LK-MCLI-L-IAG = 1 
                PERFORM Curseur-Sablier
                PERFORM INIT-GRILLE-AGENCE
                PERFORM Curseur-Fleche
                MOVE 4 TO ACCEPT-CONTROL
                MOVE 6 TO CONTROL-ID              
           ELSE
                MOVE 4 TO ACCEPT-CONTROL
                MOVE 36 TO CONTROL-ID
           END-IF
           .
      *
       Screen1-Gd-1-Ev-Msg-Begin-Entry.
           IF LK-MCLI-L-NumFiltre < 2 OR = 4 THEN
               INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old, 3),
                       CELL-DATA IN LK-MCLI-L-COD
           ELSE
               INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old, 3),
                       CELL-DATA IN LK-MCLI-L-FCO
           END-IF
           INQUIRE Screen1-Gd-1(Event-Data-2, 1),
                   CELL-DATA IN LK-MCLI-L-RAI

           PERFORM Mistral-CloseCurrentWindow
           MOVE Event-Action-Fail TO Event-Action
           .
      *
       Screen1-Gd-1-Ev-Msg-Goto-Cell.
      * La ligne de titre est à ignorer...
           IF Event-Data-2 < 2
               MOVE 2 TO Event-Data-2
           END-IF

           If Event-Data-1 = 3 
              Modify Screen1-La-St1, 
                Title Is "Filiale (Client rattaché à un siège social)"
           Else
              Modify Screen1-La-St1, 
                     Title Is Spaces
           End-If

      * Pour voir si on a changé de ligne
           IF NOT Event-Data-2 = Screen1-Gd-1-Cursor-Y-Old THEN
               MODIFY Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old),
                      ROW-COLOR = 0
               move Screen1-Gd-1-Cursor-Y-Old to tmp-9-3
               perform Color-Ligne
070720*         MODIFY Screen1-Gd-1(Event-Data-2), 
      *            ROW-COLOR = W-Row-Low-Color
           END-IF

           MOVE Event-Data-2 TO Screen1-Gd-1-Cursor-Y-Old
           .
      *
070720* Screen1-Gd-1-Ev-Msg-Heading-Clicked.
      *     IF Event-Data-1 = 6 
      *        IF W-ORD = 2 AND (W-RAI(1:1) = "/" OR "*")
      *             EXIT PARAGRAPH
      *        END-IF
      *        IF W-ORD >= 4 
      *             EXIT PARAGRAPH
      *        END-IF
      *        PERFORM Plus-Grille
      *     END-IF
      *     .
      *
       Screen1-Pb-Accept-Ex-Cmd-Clicked.
           INQUIRE Screen1-Pb-Accept VISIBLE IN W-VS-PB
           IF W-VS-PB = 0 THEN
             EXIT PARAGRAPH
           END-IF
           IF LK-MCLI-L-NumFiltre < 2 OR = 4
                INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old, 3),
                   CELL-DATA IN LK-MCLI-L-COD
           ELSE INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old, 3),
                   CELL-DATA IN LK-MCLI-L-FCO
           END-IF
           INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old, 1),
                   CELL-DATA IN LK-MCLI-L-RAI

      *     PERFORM Mistral-CloseCurrentWindow
           PERFORM Acu-Screen1-Exit
           .
      *
       Screen1-Pb-Cancel-Ex-Cmd-Clicked.
           INQUIRE Screen1-Pb-Cancel VISIBLE IN W-VS-PB
           IF W-VS-PB = 0 THEN
             EXIT PARAGRAPH
           END-IF
           MOVE SPACE TO LK-MCLI-L-FCO
           MOVE ZERO TO LK-MCLI-L-COD
           PERFORM Acu-Screen1-Exit
      *     PERFORM Mistral-CloseCurrentWindow
           .
      *
       Screen1-Pb-Lancer-LinkTo.
070720     MODIFY Screen1-Pb-Plus VISIBLE TRUE  
           INQUIRE Screen1-Pb-Lancer VISIBLE IN W-VS-PB
           IF W-VS-PB = 0 THEN
             EXIT PARAGRAPH
           END-IF
           PERFORM Screen1-Lancer
           .
       Screen1-Lancer.
           MODIFY Screen1-La-nb-elt, VISIBLE FALSE
           MODIFY Screen1-La-Rech, VISIBLE FALSE
           MODIFY Screen1-La-Rech2, VISIBLE FALSE
           MODIFY Screen1-La-St1, TITLE = spaces
           PERFORM Curseur-Sablier
       
           IF W-ORD = 2  OR 5 THEN
      *       CP + VILLE 
              INQUIRE Screen1-Ef-CP, VALUE IN W-CP-ECR
              MOVE 0 TO W-CPT
              INSPECT W-CP-ECR TALLYING W-CPT FOR TRAILING SPACES
              COMPUTE W-NDEP = 8 - W-CPT

              IF (W-NDEP <> 2 AND <> 3) OR W-ORIPAYS <> "FR"
                 MOVE 1 TO Ef-Pos-Ind
                 COPY "../../mistral/copy/Ef-Pos-Ecr2Fic.cbl"
                    REPLACING ==CPYPOS-PAYS== BY ==PAY-MPAR==
                              ==CPYPOS-FIC==  BY ==W-CP-FIC==
                              ==CPYPOS-ECR==  BY ==W-CP-ECR==
                              ==CPYPOS-VIL== BY ==W-VILLE==.
                 MODIFY Screen1-Ef-CP, VALUE = W-CP-ECR
              END-IF

              INQUIRE Screen1-Ef-VILLE, VALUE IN W-VILLE
              MOVE 0 TO W-CPT
              INSPECT W-VILLE TALLYING W-CPT FOR TRAILING SPACES
              COMPUTE W-NVIL = LENGTH OF W-VILLE - W-CPT
           END-IF
      
           EVALUATE W-ORD
               WHEN 1 | recherche sur code client
                   IF LK-MCLI-L-NumFiltre = 2
                       INQUIRE Screen1-Ef-Fco, VALUE IN W-FCO
                   ELSE
                       INQUIRE Screen1-Ef-Cod, VALUE IN W-COD
                   END-IF
                   PERFORM INIT-GRILLE
               WHEN 2 | recherche sur raison sociale
                   INQUIRE Screen1-Ef-Rai, VALUE IN W-RAI
                   IF W-RAI <> SPACE 
                   OR (     W-RAI    = SPACE 
                        AND W-CP-ECR = SPACE
                        AND W-VILLE  = SPACE ) THEN
                   
                       IF W-RAI(1:1) = "/" OR "*" 
                          PERFORM Recherche-Raisoc
                          PERFORM AFFICHE-RECH
                       ELSE
                          PERFORM Curseur-Fleche
                          PERFORM INIT-GRILLE
                       END-IF
                    ELSE
                       IF W-CP-ECR <> SPACE THEN
                          IF (W-NDEP = 2 OR = 3) AND W-ORIPAYS = "FR"
                             PERFORM Recherche-DEP
                             PERFORM AFFICHE-RECH
                          ELSE
                             PERFORM Recherche-CP
                             PERFORM AFFICHE-RECH
                          END-IF
                       ELSE
                          PERFORM Recherche-Ville
                          PERFORM AFFICHE-RECH
                       END-IF
                    END-IF
      
               WHEN 3 | recherche sur téléphone
                   MOVE SPACES TO W-TEL2
                   INQUIRE Screen1-Ef-Tel, 
180914*                 VALUE IN W-TEL2(1:W-LGT)
180914                 VALUE IN W-TEL2
                   IF W-TEL2 NOT = SPACES
                      PERFORM Recherche-Tel THRU F-Recherche-Tel
                   END-IF
               WHEN 4 | recherche sur n° SIREN
                   INQUIRE Screen1-Ef-SIREN, VALUE IN W-SIREN
                   PERFORM Siren-Ecr2Fic
                   IF W-SIREN NOT = SPACE THEN
                     PERFORM Recherche-Siren
                     PERFORM AFFICHE-RECH
                   ELSE
                     PERFORM Curseur-Fleche
                     EXIT PARAGRAPH
                   END-IF
               WHEN OTHER
                   PERFORM Curseur-Fleche
                   EXIT PARAGRAPH
           END-EVALUATE
           PERFORM Curseur-Fleche
           perform Mistral-TransferFocus.
           .                            
      *
       Screen1-DaRb-Ord3-Ev-Cmd-Clicked.
           MODIFY Screen1-La-Titre, TITLE = "A partir de"
           MODIFY Screen1-Ef-Tel, VISIBLE TRUE
           MODIFY Screen1-Ef-Rai, VISIBLE FALSE
           MODIFY Screen1-Ef-Cod, VISIBLE FALSE
           MODIFY Screen1-Ef-Fco, VISIBLE FALSE
           MODIFY Screen1-Ef-SIREN, VISIBLE FALSE
           MODIFY Screen1-La-Rech, VISIBLE FALSE
           MODIFY Screen1-La-Rech2, VISIBLE FALSE
           MODIFY Screen1-Ef-VILLE, VISIBLE FALSE
           MODIFY Screen1-Ef-CP, VISIBLE FALSE
           MODIFY Screen1-La-St1, TITLE SPACES
           MODIFY Screen1-La-Titre2, VISIBLE FALSE
           MOVE 4 TO ACCEPT-CONTROL
           MOVE 46 TO CONTROL-ID
           PERFORM Mistral-TransferFocus
           .
      *
       Screen1-DaRb-Ord2-Ev-Cmd-Clicked.
           MODIFY Screen1-La-Titre, TITLE = "A partir de"
           MODIFY Screen1-La-Rech, VISIBLE TRUE
           MODIFY Screen1-La-Rech2, VISIBLE TRUE
           MODIFY Screen1-Ef-Tel, VISIBLE FALSE
           MODIFY Screen1-Ef-Rai, VISIBLE TRUE, MAX-TEXT 25
           MODIFY Screen1-Ef-Cod, VISIBLE FALSE
           MODIFY Screen1-Ef-Fco, VISIBLE FALSE
           MODIFY Screen1-Ef-SIREN, VISIBLE FALSE
           MODIFY Screen1-La-St1, TITLE SPACES
      
           MODIFY Screen1-La-Titre2, VISIBLE TRUE
           MODIFY Screen1-Ef-VILLE, VISIBLE TRUE
           MODIFY Screen1-Ef-CP, VISIBLE TRUE
      
           MOVE 4 TO ACCEPT-CONTROL
           MOVE 36 TO CONTROL-ID
           
           IF W-DEB = 0 THEN
              PERFORM Mistral-TransferFocus
           END-IF
      
           .
      *
       Screen1-DaRb-Ord1-Ev-Cmd-Clicked.
           MODIFY Screen1-La-Titre, TITLE = "A partir de"
           MODIFY Screen1-Ef-Tel, VISIBLE FALSE
           MODIFY Screen1-Ef-Rai, VISIBLE FALSE
           MODIFY Screen1-Ef-SIREN, VISIBLE FALSE
           MODIFY Screen1-La-Rech, VISIBLE FALSE
           MODIFY Screen1-La-Rech2, VISIBLE FALSE
           MODIFY Screen1-Ef-VILLE, VISIBLE FALSE
           MODIFY Screen1-Ef-CP, VISIBLE FALSE
           MODIFY Screen1-La-St1, TITLE SPACES
           MODIFY Screen1-La-Titre2, VISIBLE FALSE
           IF LK-MCLI-L-NumFiltre < 2 OR = 4
                MODIFY Screen1-Ef-Cod, VISIBLE TRUE
                MOVE 4 TO ACCEPT-CONTROL
                MOVE 16 TO CONTROL-ID
           ELSE MODIFY Screen1-Ef-Fco, VISIBLE TRUE
                MOVE 4 TO ACCEPT-CONTROL
                MOVE 26 TO CONTROL-ID
           END-IF
           PERFORM Mistral-TransferFocus
           .
      *
       Screen1-DaRb-Ord4-Ev-Cmd-Clicked.
           MODIFY Screen1-La-Titre, TITLE = "N° SIREN"
           MODIFY Screen1-La-Rech, VISIBLE FALSE
           MODIFY Screen1-La-Rech2, VISIBLE FALSE
           MODIFY Screen1-Ef-Tel, VISIBLE FALSE
           MODIFY Screen1-Ef-Rai, VISIBLE FALSE
           MODIFY Screen1-Ef-Cod, VISIBLE FALSE
           MODIFY Screen1-Ef-Fco, VISIBLE FALSE
           MODIFY Screen1-Ef-SIREN, VISIBLE TRUE
           MODIFY Screen1-Ef-VILLE, VISIBLE FALSE
           MODIFY Screen1-Ef-CP, VISIBLE FALSE
           MODIFY Screen1-La-St1, TITLE SPACES
           MODIFY Screen1-La-Titre2, VISIBLE FALSE
           MOVE 4 TO ACCEPT-CONTROL
           MOVE 56 TO CONTROL-ID
           PERFORM Mistral-TransferFocus
           .

      *
       Screen1-Ev-Cmd-Close.
           PERFORM Mistral-WindowClosing
           .
      *
       Screen1-Bef-Create.
           PERFORM Controle-Call
           | POUR GEDEON, MEME PRINCIPE QUE POUR MOBIVIP
           IF MOB-GEDEON NOT = SPACES
              MOVE 1 TO MOB-PALM
           END-IF
           MOVE 2 TO W-ORD
           PERFORM Open-File-Rtn
           PERFORM Init-Bmp
           IF LK-MCLI-L-NumFiltre = 2
              MOVE "Liste des Clients-Prospects" TO W-TITLE
           ELSE
              IF LK-MCLI-L-NumFiltre = 3
                  MOVE "Liste des Prospects" TO W-TITLE.
040419   
050819*     IF LK-MCLI-L-HANDLE <> 0 THEN  
050819     IF HANDLE-PALM <> 0 THEN  
      *       Pour éviter le clignotement de l'écran repositionné
              MOVE 0 TO Screen1-Visible
           ELSE
              MOVE 1 TO Screen1-Visible
           END-IF
040419
           .
       Screen1-Aft-Create.
           .
      *     
       Screen1-Aft-Routine.
           PERFORM Close-File-Rtn
           .
      *
       Screen1-Ef-Rai-Ev-Msg-Validate.
           Perform Screen1-Lancer
           perform mistral-transferfocus
           .
      *     
       Screen1-Ef-Rai-Bef-Procedure.
           if w-ord <> 10
              MODIFY Screen1-La-Rech, VISIBLE TRUE
              TITLE "Pour rechercher un mot (chaîne de caractères) , fai
      -             "re précéder par un /" 
           end-if
           if w-ord = 2
              MODIFY Screen1-La-Rech2, VISIBLE TRUE
           end-if
           .
       Screen1-Ef-Interlocuteur-Bef-Procedure.
           MODIFY Screen1-La-RECH, VISIBLE TRUE
              TITLE "Pour rechercher un mot (chaîne de caractères) , fai
      -             "re précéder par un /"           
           .
      *
      *
      *    RECHERCHE PAR "rech"
      *
      *
       Recherche-Raisoc.
           COPY "../../mx/copy/Assign-FICTMP.cbl" REPLACING 
              ==FICTMP==   BY ==RECH==
              =='FICTMP'== BY ==RECH==.
           CLOSE RECH.
      
           MOVE "CLI" TO CMD-RECH-FIC
           MOVE MX-DIR TO CMD-RECH-DIR
           MOVE ASSIGN-RECH TO CMD-RECH-RESULT
           MOVE 1 TO CMD-RECH-DEBSOR
           MOVE 79 TO CMD-RECH-FINSOR
      
           MOVE RECORD-POSITION OF RAI-MCLI TO CMD-RECH-POSR(1)
           MOVE LENGTH OF RAI-MCLI TO CMD-RECH-LONR(1)
040417* recherche dans l'adresse aussi (Lacan)
           IF W-RAI(1:1) = "*"
              MOVE 138 to CMD-RECH-LONR(1)
           end-if
040417
           MOVE W-RAI(2:24) TO CMD-RECH-VAL(1)
           MOVE "s2" TO CMD-RECH-OPE(1)
      
           MOVE "T" TO CMD-RECH-T(1)
           MOVE 42 TO CMD-RECH-POSDT(1)
           MOVE 72 TO CMD-RECH-POSFT(1)
      
           COPY "W:/mistral/copy/rech.cbl".
           .
      *
       Recherche-Siren.
           COPY "../../mx/copy/Assign-FICTMP.cbl" REPLACING 
              ==FICTMP==   BY ==RECH==
              =='FICTMP'== BY ==RECH==.
           CLOSE RECH.
      
           MOVE "CLI" TO CMD-RECH-FIC
           MOVE MX-DIR TO CMD-RECH-DIR
           MOVE ASSIGN-RECH TO CMD-RECH-RESULT
           MOVE 1 TO CMD-RECH-DEBSOR
           MOVE 79 TO CMD-RECH-FINSOR
      
           MOVE RECORD-POSITION OF SIR1-MCLI TO CMD-RECH-POSR(1)
           MOVE LENGTH OF SIR1-MCLI TO CMD-RECH-LONR(1)
           MOVE W-SIREN TO CMD-RECH-VAL(1)
           MOVE "==" TO CMD-RECH-OPE(1)
      
           MOVE "T" TO CMD-RECH-T(1)
           MOVE 42 TO CMD-RECH-POSDT(1)
           MOVE 72 TO CMD-RECH-POSFT(1)
      
           COPY "W:/mistral/copy/rech.cbl".
           .
      *
       Recherche-Ville.
           COPY "../../mx/copy/Assign-FICTMP.cbl" REPLACING 
              ==FICTMP==   BY ==RECH==
              =='FICTMP'== BY ==RECH==.
           CLOSE RECH.
      
           MOVE "CLI" TO CMD-RECH-FIC
           MOVE MX-DIR TO CMD-RECH-DIR
           MOVE ASSIGN-RECH TO CMD-RECH-RESULT
           MOVE 1 TO CMD-RECH-DEBSOR
           MOVE 79 TO CMD-RECH-FINSOR
      
290519* dossier 414364 CASA: il ne faut le faire que si on a mis "*"
      * pour rechercher aussi dans l'adresse
      **     MOVE RECORD-POSITION OF VIL-MCLI TO CMD-RECH-POSR(1)
      **     MOVE LENGTH OF VIL-MCLI TO CMD-RECH-LONR(1)
      *     MOVE RECORD-POSITION OF ADR-MCLI TO CMD-RECH-POSR(1)
      *     MOVE 108 TO CMD-RECH-LONR(1)
           MOVE RECORD-POSITION OF VIL-MCLI TO CMD-RECH-POSR(1)
           MOVE LENGTH OF VIL-MCLI TO CMD-RECH-LONR(1)
           MOVE W-VILLE TO CMD-RECH-VAL(1)
           IF W-VILLE(1:1) = "*"
              MOVE RECORD-POSITION OF ADR-MCLI TO CMD-RECH-POSR(1)
              MOVE 108 TO CMD-RECH-LONR(1)
              MOVE W-VILLE(2:) TO CMD-RECH-VAL(1)
           end-if
290519                        
           MOVE "s2" TO CMD-RECH-OPE(1)
           MOVE "T" TO CMD-RECH-T(1)
           MOVE 42 TO CMD-RECH-POSDT(1)
           MOVE 72 TO CMD-RECH-POSFT(1)
           
           COPY "W:/mistral/copy/rech.cbl".
           .
      *
       Recherche-CP.
           COPY "../../mx/copy/Assign-FICTMP.cbl" REPLACING 
              ==FICTMP==   BY ==RECH==
              =='FICTMP'== BY ==RECH==.
           CLOSE RECH.
      
           MOVE "CLI" TO CMD-RECH-FIC
           MOVE MX-DIR TO CMD-RECH-DIR
           MOVE ASSIGN-RECH TO CMD-RECH-RESULT
           MOVE 1 TO CMD-RECH-DEBSOR
           MOVE 79 TO CMD-RECH-FINSOR

           MOVE RECORD-POSITION OF POS-MCLI TO CMD-RECH-POSR(1)
           MOVE LENGTH OF POS-MCLI TO CMD-RECH-LONR(1)

           MOVE W-CP-FIC TO CMD-RECH-VAL(1)
           MOVE "==" TO CMD-RECH-OPE(1)
           MOVE "T" TO CMD-RECH-T(1)
           MOVE 42 TO CMD-RECH-POSDT(1)
           MOVE 72 TO CMD-RECH-POSFT(1)

           COPY "W:/mistral/copy/rech.cbl".
           .  

       Recherche-DEP.
           COPY "../../mx/copy/Assign-FICTMP.cbl" REPLACING 
              ==FICTMP==   BY ==RECH==
              =='FICTMP'== BY ==RECH==.
           CLOSE RECH.

           MOVE "CLI" TO CMD-RECH-FIC
           MOVE MX-DIR TO CMD-RECH-DIR
           MOVE ASSIGN-RECH TO CMD-RECH-RESULT
           MOVE 1 TO CMD-RECH-DEBSOR
           MOVE 79 TO CMD-RECH-FINSOR


           MOVE RECORD-POSITION OF POS2-MCLI TO CMD-RECH-POSR(1)
           MOVE W-NDEP TO CMD-RECH-LONR(1)
           MOVE W-CP-ECR(1:W-NDEP) TO CMD-RECH-VAL(1)
           MOVE "==" TO CMD-RECH-OPE(1)

           MOVE RECORD-POSITION OF PAY-MCLI TO CMD-RECH-POSR(2)
           MOVE LENGTH OF PAY-MCLI TO CMD-RECH-LONR(2)
           MOVE PAY-MPAR TO CMD-RECH-VAL(2)
           MOVE "==" TO CMD-RECH-OPE(2)

           MOVE "T" TO CMD-RECH-T(1)
           MOVE 42 TO CMD-RECH-POSDT(1)
           MOVE 72 TO CMD-RECH-POSFT(1)

           COPY "W:/mistral/copy/rech.cbl".
           .  

      *-- Recherche sur le N° de téléphone 1 ou 2 des clients 
      *--        +  sur le N° de téléphone 1 ou 2 ou 3 des interlocuteurs
       Recherche-Tel.
           COPY "../../mx/copy/Assign-FICTMP.cbl" REPLACING 
              ==FICTMP==   BY ==RECH==
              =='FICTMP'== BY ==RECH==.
           CLOSE RECH.

           MOVE ZERO TO W-NBT W-IND-TEL W-MSG-TEL
           INSPECT W-TEL2 TALLYING W-NBT FOR ALL SPACES
180914*     COMPUTE W-NBT = 15 - W-NBT
      *     IF W-NBT = W-LGT                        | Si Nb caract saisi = Nb max de caractère du format du téléphone:
180914     IF W-NBT = W-SPTEL
              MOVE W-TEL2 TO W-EF-TEL              | on formate pour la recherche (ex pour la France: W-TEL2 = bb0102030405  (b=Blanc)
              PERFORM Tel-Ecr2Fic
           ELSE
              IF W-TTL = "N"                       | Sinon si le téléphone est numérique, on formate également:
180914              COMPUTE W-NBT = 15 - W-NBT
                 COMPUTE W-POS = (12 - W-LGT + 1)  | (ex pour la France: W-TEL2 = bb010203   (b=blanc)
                 MOVE W-TEL2 TO W-TEL
                 MOVE SPACES TO W-TEL2
                 MOVE W-TEL TO W-TEL2(W-POS:)
              END-IF
           END-IF


           MOVE "CLI" TO CMD-RECH-FIC
           MOVE MX-DIR TO CMD-RECH-DIR
           MOVE ASSIGN-RECH TO CMD-RECH-RESULT
           MOVE 1   TO CMD-RECH-DEBSOR
           MOVE 200 TO CMD-RECH-FINSOR
      
           MOVE RECORD-POSITION OF TEL-MCLI TO CMD-RECH-POSR(1)                                        
           MOVE LENGTH OF TEL-MCLI TO CMD-RECH-LONR(1)
           MOVE W-TEL2 TO CMD-RECH-VAL(1)
           MOVE "="    TO CMD-RECH-OPE(1)
      
           MOVE "T" TO CMD-RECH-T(1)
           MOVE RECORD-POSITION OF TEL-MCLI TO CMD-RECH-POSDT(1)
           ADD 12 RECORD-POSITION OF TEL-MCLI GIVING CMD-RECH-POSFT(1)
           COPY "W:/mistral/copy/rech.cbl".
           PERFORM AFFICHE-RECH

      *  Recherche sur téléphone 2 / Client si N° téléphone saisi est complet et si pas déjà trouvé
180914*     IF W-NBT NOT = W-LGT OR Tmp-9-3 > 1 GO F-Recherche-Tel
      *     END-IF.

           COPY "../../mx/copy/Assign-FICTMP.cbl" REPLACING 
              ==FICTMP==   BY ==RECH==
              =='FICTMP'== BY ==RECH==.
           CLOSE RECH.

           MOVE "CLI" TO CMD-RECH-FIC
           MOVE MX-DIR TO CMD-RECH-DIR
           MOVE ASSIGN-RECH TO CMD-RECH-RESULT
           MOVE 1   TO CMD-RECH-DEBSOR
           MOVE 200 TO CMD-RECH-FINSOR
      
           MOVE RECORD-POSITION OF TE2-MCLI TO CMD-RECH-POSR(1)                                        
           MOVE LENGTH OF TE2-MCLI TO CMD-RECH-LONR(1)
           MOVE W-TEL2 TO CMD-RECH-VAL(1)
           MOVE "="    TO CMD-RECH-OPE(1)
      
           MOVE "T" TO CMD-RECH-T(1)
           MOVE RECORD-POSITION OF TE2-MCLI TO CMD-RECH-POSDT(1)
           ADD 12 RECORD-POSITION OF TE2-MCLI GIVING CMD-RECH-POSFT(1)
           COPY "W:/mistral/copy/rech.cbl".
           MOVE 1 TO W-IND-TEL
180914               W-PAS-RAZ | Garde les numéros déjà trouvés par la première recherche
           PERFORM AFFICHE-RECH
180914     MOVE 0 TO W-PAS-RAZ
           .
       F-Recherche-Tel.
           MOVE ZERO TO W-IND-TEL.
           IF W-MSG-TEL = 1
              MODIFY Screen1-La-St1, TITLE
                 "(*) N° recherché = téléphone 2 du client/prospect".
           IF W-MSG-TEL = 2
              MODIFY Screen1-La-St1, TITLE
                 "(#) N° Recherché = téléphone de l'interlocuteur".

      *      
       AFFICHE-RECH.
      * Remise à zéro de la grille...
180914     IF W-PAS-RAZ = 0 THEN
              MODIFY Screen1-Gd-1, RESET-GRID = 1|, MASS-UPDATE = 1, 
              PERFORM Acu-Screen1-Gd-1-Content
              perform Entete-Grille
180914     END-IF
           
      * Remplissage de la grille...
           OPEN INPUT RECH
           PERFORM STAT
           INITIALIZE ENR-MCLI

           MOVE 0 TO W-EOF

180914     IF W-PAS-RAZ = 0 THEN
              MOVE 1 TO Tmp-9-3
              MOVE 0 TO W-NBR
              MOVE 2 TO Screen1-Gd-1-Cursor-Y-Old
180914     END-IF

           MOVE SPACES TO Screen1-Gd-1-FCO
           
           PERFORM UNTIL W-EOF = 1
              MOVE SPACE TO ENR-RECH 
              READ RECH NEXT END MOVE 1 TO W-EOF
              END-READ
              PERFORM STAT
              IF W-EOF NOT = 1 
                    MOVE ENR-RECH(1:9) TO ORD-MCLI
                    READ MXCLI NOT INVALID
                       MOVE 1 TO W-OK 
                       IF  W-ORD = 2 
                       AND W-RAI <> SPACE THEN
                          PERFORM Test-CP-Ville
                       END-IF
                       IF W-OK = 1 THEN
                          PERFORM Mep-Un-Cli
                       END-IF   
                    END-READ
                    PERFORM STAT
              END-IF
           END-PERFORM

           CLOSE RECH
           DELETE FILE RECH

      * Positionnement du curseur sur la grille...
           MODIFY Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old),
                  CURSOR-Y = Screen1-Gd-1-Cursor-Y-Old
      *            ROW-COLOR = W-Row-Low-Color,
                  |MASS-UPDATE = 0
      * affichage du nombre d'éléments trouvés 
           ADD -1 Tmp-9-3 GIVING Tmp-9-3-FIC
           MOVE Tmp-9-3-FIC TO Tmp-9-3-ECR
           STRING Tmp-9-3-ECR DELIMITED BY SIZE
                  " "
                  "élément(s) trouvé(s) correspondant(s) au critère" 
                  DELIMITED BY SIZE
                  INTO W-NB-ELT
           MODIFY Screen1-La-nb-elt, VISIBLE TRUE
           MODIFY Screen1-La-nb-elt, TITLE = W-NB-ELT
      * Patch : sans ça, la grille peut parfois mélanger les lignes...
           MOVE SPACES TO Screen1-Gd-1-Record
           .
      *
      *
      *
      *    LISTE DES CLIENTS "AGENCES"
      *
      *
       Init-Grille-Agence.
      * Remise à zéro de la grille...
           MODIFY Screen1-Gd-1, RESET-GRID = 1|, MASS-UPDATE = 1, 
           PERFORM Acu-Screen1-Gd-1-Content
           perform Entete-Grille

      * Remplissage de la grille...
           INITIALIZE ENR-MAGC
           MOVE 0 TO W-EOF
           START MXAGENCE KEY >= CLE1-MAGC INVALID MOVE 1 TO W-EOF
           END-START
           IF W-EOF = 0 THEN
               READ MXAGENCE NEXT END MOVE 1 TO W-EOF 
               END-READ
               PERFORM STAT
           END-IF
           MOVE 2 TO Screen1-Gd-1-Cursor-Y-Old
           MOVE SPACES TO Screen1-Gd-1-Record
           MOVE 1 TO Tmp-9-3
           PERFORM UNTIL W-EOF = 1
               IF CLI-MAGC NOT = 0 
                  MOVE CLI-MAGC TO COD-MCLI
                  READ MXCLI KEY CLE6-MCLI NOT INVALID 
                       PERFORM Mep-Un-Cli
                  END-READ
                  PERFORM STAT
               END-IF
               IF CLI2-MAGC NOT = 0 
                  MOVE CLI2-MAGC TO COD-MCLI
                  READ MXCLI KEY CLE6-MCLI NOT INVALID 
                       PERFORM Mep-Un-Cli
                  END-READ
                  PERFORM STAT
               END-IF
      * DMP
      *         IF MXFWK-PALM <> 1 AND
               IF (CLI-PALM = 970957
                   OR (IDE-PALM = "NC" AND CLI-PALM = 4))
                  PERFORM VARYING I-CLI FROM 1 BY 1 UNTIL I-CLI > 8
                     IF CLIB-MAGC(I-CLI) NOT = 0 
                        MOVE CLIB-MAGC(I-CLI) TO COD-MCLI
                        READ MXCLI KEY CLE6-MCLI NOT INVALID 
                          PERFORM Mep-Un-Cli
                        END-READ
                        PERFORM STAT
                     END-IF
                  END-PERFORM
               END-IF
      *
               READ MXAGENCE NEXT END MOVE 1 TO W-EOF END-READ
               PERFORM STAT
           END-PERFORM

      * Positionnement du curseur sur la grille...
           MODIFY Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old),
                  CURSOR-Y = Screen1-Gd-1-Cursor-Y-Old
      *            ROW-COLOR = W-Row-Low-Color,
                  |MASS-UPDATE = 0

      * Patch : sans ça, la grille peut parfois mélanger les lignes...
           MOVE SPACES TO Screen1-Gd-1-Record
           .
      *
       Siren-Ecr2Fic.
           MOVE W-SIREN TO W-SIR
           MODIFY Screen1-Ef-SIREN, VALUE W-SIR
           .
      
      *
       Screen1-Ef-SIREN-Bef-Procedure.
           MODIFY Screen1-Ef-SIREN VALUE W-SIREN
           .

       Test-CP-Ville.
      *-------------*
           MOVE 1 TO W-OK

           IF W-CP-ECR <> SPACE THEN

              IF (W-NDEP = 2 OR = 3) AND W-ORIPAYS = "FR" THEN

                 IF W-CP-ECR(1:W-NDEP) <> POS2-MCLI(1:W-NDEP) 
                 OR PAY-MCLI <> PAY-MPAR THEN
                    MOVE 0 TO W-OK
                    EXIT PARAGRAPH
                 END-IF

              ELSE

                 IF W-CP-FIC <> POS-MCLI THEN
                    MOVE 0 TO W-OK
                    EXIT PARAGRAPH
                 END-IF

              END-IF

           END-IF

           IF W-VILLE <> SPACE THEN
              MOVE 0 TO I
              INSPECT VIL-MCLI TALLYING I FOR ALL W-VILLE(1:W-NVIL)
              IF I = 0 THEN
                 MOVE 0 TO W-OK
                 EXIT PARAGRAPH
              END-IF
           END-IF
           .
      *
       Screen1-Ef-CP-Bef-Procedure.
      *---------------------------*     
           MODIFY Screen1-La-Rech, VISIBLE TRUE
              TITLE 
              "Pour une recherche par département, saisissez son numéro"
           .
      *
       Screen1-Ef-VILLE-Bef-Procedure.
      *------------------------------*           
           MODIFY Screen1-La-Rech, VISIBLE TRUE
              TITLE 
              "Recherche du nom ou d'une partie du nom d'une ville"           
           .
      *
       Screen1-Ef-CP-Aft-Procedure.
      *---------------------------*     
           INQUIRE Screen1-Ef-CP, VALUE IN W-CP-ECR

           IF W-CP-ECR = SPACE THEN
              EXIT PARAGRAPH
           END-IF

           MOVE 0 TO W-CPT
           INSPECT W-CP-ECR TALLYING W-CPT FOR TRAILING SPACES
           COMPUTE W-NDEP = 8 - W-CPT

           IF W-NDEP > 3 THEN
              MODIFY Screen1-Ef-VILLE,
                 VALUE SPACE
           END-IF
           .           .
      *
       Screen1-Ef-VILLE-Aft-Procedure.
      *------------------------------*
           INQUIRE Screen1-Ef-VILLE, VALUE IN W-VILLE

           IF W-VILLE = SPACE THEN
              EXIT PARAGRAPH
           END-IF

           INQUIRE Screen1-Ef-CP, VALUE IN W-CP-ECR
           MOVE 0 TO W-CPT
           INSPECT W-CP-ECR TALLYING W-CPT FOR TRAILING SPACES
           COMPUTE W-NDEP = 8 - W-CPT

           IF W-NDEP > 3 THEN
              MODIFY Screen1-Ef-CP,
                 VALUE SPACE
           END-IF
           .
      *
       Screen1-DaRb-Ord10-Ev-Cmd-Clicked.
           MODIFY Screen1-La-Titre, TITLE = "E-mail"
           MODIFY Screen1-La-Rech, VISIBLE FALSE
           MODIFY Screen1-La-Rech2, VISIBLE FALSE
           MODIFY Screen1-Ef-Tel, VISIBLE FALSE
           MODIFY Screen1-Ef-Rai, VISIBLE TRUE, MAX-TEXT 60
           MODIFY Screen1-Ef-Cod, VISIBLE FALSE
           MODIFY Screen1-Ef-Fco, VISIBLE FALSE
           MODIFY Screen1-Ef-SIREN, VISIBLE FALSE
           MODIFY Screen1-Ef-VILLE, VISIBLE FALSE
           MODIFY Screen1-Ef-CP, VISIBLE FALSE
           MODIFY Screen1-La-St1, TITLE SPACES
           MODIFY Screen1-La-Titre2, VISIBLE FALSE
           MOVE 4 TO ACCEPT-CONTROL
           MOVE 76 TO CONTROL-ID
           PERFORM Mistral-TransferFocus
           .
      *
       Screen1-Pb-Plus-Link.
           IF W-ORD = 2 AND (W-RAI(1:1) = "/" OR "*")
              EXIT PARAGRAPH
           END-IF
           IF W-ORD >= 4 
              EXIT PARAGRAPH
           END-IF
           PERFORM Plus-Grille
           .

       

      *{Bench}end
       REPORT-COMPOSER SECTION.
