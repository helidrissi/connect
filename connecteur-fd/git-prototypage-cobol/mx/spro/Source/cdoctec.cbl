      *{Bench}prg-comment
      * cdoctec.cbl
      * cdoctec.cbl is generated from W:\mx\spro\cdoctec.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. cdoctec.
       AUTHOR. sarah.dehecq.
       DATE-WRITTEN. mercredi 8 juillet 2020 08:48:35.
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
       COPY "MXPARAM.sl".
       COPY "MXCARTEC.sl".
       COPY "MXART.sl".
       COPY "MXDOCTEC.sl".
       COPY "MXCARTECS.sl".
       COPY "MXDOCTECEXT.sl".
       COPY "MXDOCTEC2.sl".
       COPY "MXDOCTECEXT2.sl".
      *{Bench}end
       DATA                        DIVISION.
       FILE                        SECTION.
      *{Bench}file
       COPY "COBCAP.fd".
       COPY "MXPARAM.fd".
       COPY "MXCARTEC.fd".
       COPY "MXART.fd".
       COPY "MXDOCTEC.fd".
       COPY "MXCARTECS.fd".
       COPY "MXDOCTECEXT.fd".
       COPY "MXDOCTEC2.fd".
       COPY "MXDOCTECEXT2.fd".
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
           88 Enter-Pushed VALUE 13.
           88 Exit-Pushed VALUE 27.
           88 Message-Received VALUE 95.
           88 Event-Occurred VALUE 96.
           88 Screen-No-Input-Field VALUE 97.
           88 Screen-Time-Out VALUE 99.
      * property-defined variable

      * user-defined variable
       77 W-LOG-PALM       PIC  9(3)
                  VALUE IS 25.
           COPY  "cobcap.wrk".
           COPY  "LK-LISTE.wrk".
           COPY  "Mis-EnregOccupe.wrk".
           COPY  "edicomment.wrk".
           COPY  "Mdte-Fic2Ecr.wrk".
           COPY  "Ef-Date.wrk".
           COPY  "Cm-MCTCS.wrk".
       77 W-NPR-PALM       PIC  9(4)
                  VALUE IS 335.
       77 W-KEY-ORDER      PIC  X(1)
                  VALUE IS "A".
       77 W-KEY-NUM        PIC  9(1)
                  VALUE IS 1.
       77 Screen1-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 Default-Font
                  USAGE IS HANDLE OF FONT DEFAULT-FONT.
       77 CDF  PIC  X.
       77 w-row            PIC  9(3).
       77 w-lig            PIC  9(3).
       77 w-code           PIC  X(3).
       77 w-code-old       PIC  X(3).
       77 Screen1-Gd-1-Row-Highlight-Color         PIC  9(6).
       77 Screen1-Gd-1-Cursor-X        PIC  9(5).
       77 Screen1-Gd-1-Cursor-Y        PIC  9(5).
       77 Screen1-Gd-1-Cursor-X-Old    PIC  9(5).
       77 Screen1-Gd-1-Cursor-Y-Old    PIC  9(5).
       01 Screen1-Gd-1-Record.
           05 Screen1-Gd-1-SEL PIC  X.
           05 Screen1-Gd-1-CTE PIC  X(3).
           05 Screen1-Gd-1-LIB-MCTC        PIC  X(30).
           05 Screen1-Gd-1-USA-MCTC        PIC  X(3).
           05 Screen1-Gd-1-VAL PIC  X(80).
           05 Screen1-Gd-1-TDZ-MCTC        PIC  X(1).
           05 Screen1-Gd-1-LIG PIC  9(4).
       77 Screen1-Gd-1-Record-Old      PIC  X(100).
       78 Nombre-Messages-Aide VALUE IS 4. 
       01 Liste-Messages-Aide.
           05 FILLER           PIC  X(75)
                      VALUE IS "Code de la Caractéristique Technique".
           05 FILLER           PIC  X(75)
                      VALUE IS "Désignation de la Caractéristique Techni
      -    "que".
           05 FILLER           PIC  X(75)
                      VALUE IS "Utilisation de la Caractéristique Techni
      -    "que".
           05 FILLER           PIC  X(75)
                      VALUE IS "Valeur de la Caractéristique Technique".
       01 Message-Aide REDEFINES Liste-Messages-Aide  PIC  X(75)
                  OCCURS NOMBRE-MESSAGES-AIDE TIMES.
       01 Liste-Usages-Zones.
           05 FILLER           PIC  X(12)
                      VALUE IS "Ext".
           05 FILLER           PIC  X(12)
                      VALUE IS "Int".
           05 FILLER           PIC  X(12)
                      VALUE IS "Fou".
           05 FILLER           PIC  X(12)
                      VALUE IS "Cli".
       01 Usage-Zone REDEFINES Liste-Usages-Zones  PIC  X(12)
                  OCCURS 4 TIMES.
       01 Liste-Usages-Zones2.
           05 FILLER           PIC  X(12)
                      VALUE IS "Externe".
           05 FILLER           PIC  X(12)
                      VALUE IS "Interne".
           05 FILLER           PIC  X(12)
                      VALUE IS "Fournisseur".
           05 FILLER           PIC  X(12)
                      VALUE IS "Client".
       01 Usage-Zone2 REDEFINES Liste-Usages-Zones2  PIC  X(12)
                  OCCURS 4 TIMES.
       77 WENABLE          PIC  9
                  VALUE IS 1.
       77 W-MXPARAM        PIC  9(9).
       77 Screen1-St-1-Handle
                  USAGE IS HANDLE OF STATUS-BAR VALUE NULL.
       77 Tmp-9-3          PIC  9(3).
       77 w-check          PIC  9.
       77 isModifying      PIC  9
                  VALUE IS 0.
       77 isModifyVisible  PIC  9
                  VALUE IS 1.
       77 isValidVisible   PIC  9
                  VALUE IS 1.
       77 isDeleteVisible  PIC  9
                  VALUE IS 1.
       77 isPrintVisible   PIC  9
                  VALUE IS 1.
       77 W-LIB            PIC  X(400).
       77 W-LIB-FCM        PIC  X(20).
       77 W-TYP            PIC  X(10)
                  VALUE IS "Prestation".
       77 W-VAL            PIC  X(40).
       77 W-DAT            PIC  X(10).
       77 W-AUT            PIC  X(3).
       77 W-CLE            PIC  X(21).
       77 w-valid          PIC  9.
       77 D-LIG            PIC  9(4).
       77 D-RAN            PIC  9(4).
       77 W-ORI            PIC  9
                  VALUE IS 0.
       77 W-SEL            PIC  X.
       77 COL-SEL          PIC  9(2)
                  VALUE IS 1.
       77 COL-CTE          PIC  9(2)
                  VALUE IS 2.
       77 COL-LIB          PIC  9(2)
                  VALUE IS 3.
       77 COL-USA          PIC  9(2)
                  VALUE IS 4.
       77 COL-VAL          PIC  9(2)
                  VALUE IS 5.
       77 COL-TDZ          PIC  9(2)
                  VALUE IS 6.
       77 COL-LIG          PIC  9(2)
                  VALUE IS 7.
       77 W-LAST-ROW       PIC  9(6).
       77 I-T  PIC  9(6).
       77 J-T  PIC  9(6).
       77 SUPPRIM16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 VALIDER12-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 VALIDER16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TOUTCOC24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TOUTDEC24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 INVSELE24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Screen1-Bt-2-Handle          PIC  S9(9)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ZOOMxxx16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 SAUVEGA24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Small-Font
                  USAGE IS HANDLE OF FONT SMALL-FONT.
       77 Screen1-Mn-1-Handle
                  USAGE IS HANDLE OF MENU VALUE NULL.
       77 MODIFIE24-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 SAUVEGA24-bmp    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TOUTCOC24-bmp    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TOUTDEC24-bmp    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 INVSELE24-bmp    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 VALIDE12G-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-DET            PIC  9
                  VALUE IS 1.
       77 CREERxx24-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TABLENO24-bmp    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 QUITMOD24-bmp    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-NB-SEL         PIC  9(3).
       01 W-INT-DEC        PIC  9(10)V9999.
       01 W-INT-DEC-R REDEFINES W-INT-DEC.
           05 W-INT9           PIC  9(10).
           05 W-DECX           PIC  X(4).
           05 W-DEC9 REDEFINES W-DECX  PIC  9(4).
       01 W-PICZ10         PIC  Z(9)9.
       77 W-PICZ10V1       PIC  Z(9)9,9.
       77 W-PICZ10V2       PIC  Z(9)9,99.
       77 W-PICZ10V3       PIC  Z(9)9,999.
       77 W-PICZ10V4       PIC  Z(9)9,9999.
       77 W-ENT            PIC  9.
       77 W-TROUVE         PIC  9(6).
       77 W-LIGNE          PIC  9(6).
       77 W-MODIF          PIC  9.
       77 WVISIBLE         PIC  9.
       77 W-USA-MCTC       PIC  X(12).
       77 W-LIG2           PIC  9(3).
       77 W-RAN2           PIC  9(3).
       77 W-RAN            PIC  9(3).
       77 I    PIC  9(3).
       77 W-MODIF-RAN      PIC  9.
       77 RAFRAIC24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 MODIFIE24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 CREERxx24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 QUITTER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-CHO            PIC  S9(2)
                  VALUE IS 0.
       77 W-VALDAT         PIC  X(10).
       77 ws1  PIC  9(3)
                  VALUE IS 20.
       77 ws2  PIC  9(3)
                  VALUE IS 60.
       77 Screen1-Ta-1-Value           PIC  S9(2)
                  VALUE IS 1.
       77 Screen1-Pg-1-Visible         PIC  9
                  VALUE IS 0.
       77 num-gr           PIC  99.
       77 w-onglet         PIC  9.
       01 TAB-GR.
           02 ELT-GR           PIC  X(3)
                      OCCURS 10 TIMES.
       77 W-GR PIC  X(3).
       77 W-REG            PIC  9
                  VALUE IS 0.
       77 AJOUTLG24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 SUPPRIM24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TABLENO24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TOUTCOC16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TOUTDEC16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 INVSELE16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-DES            PIC  X(40).
       77 AUTO-MOD         PIC  9.
       77 Screen2-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 QUITTER16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Screen2-V-RB     PIC  9
                  VALUE IS 0.
       77 Screen2-V-VAL2   PIC  9
                  VALUE IS 0.
       77 Screen2-V-VAL    PIC  9
                  VALUE IS 0.
       77 Screen2-V-RB12   PIC  9
                  VALUE IS 0.
       77 Large-Font
                  USAGE IS HANDLE OF FONT LARGE-FONT.
       77 W-PICX1          PIC  X.
       77 W-PLUS8          PIC  9.
       77 W-DOCMCT         PIC  9.
       77 W-CHO8           PIC  99.
       77 W-NB-GR          PIC  99.
       77 Screen1-Cm-1-Value           PIC  X(5).
       77 Fixed-Font
                  USAGE IS HANDLE OF FONT FIXED-FONT.
       77 Screen2-Cm-1-Value           PIC  X(5).
       01 .
           03 Screen2-Cm-1-Container-Item.
               05      PIC  X(5)
                          VALUE IS "Item1".
               05      PIC  X(5)
                          VALUE IS "Item2".
               05      PIC  X(5)
                          VALUE IS "Item3".
           78 Screen2-Cm-1-Container-Num VALUE IS 3. 
           03 Screen2-Cm-1-Container REDEFINES 
           Screen2-Cm-1-Container-Item  PIC  X(5)
                      OCCURS 3 TIMES
                      INDEXED  Screen2-Cm-1-Container-Idx.
       01 .
           03 Screen1-Cm-1-Container-Item.
               05      PIC  X(5)
                          VALUE IS "Item1".
               05      PIC  X(5)
                          VALUE IS "Item2".
               05      PIC  X(5)
                          VALUE IS "Item3".
           78 Screen1-Cm-1-Container-Num VALUE IS 3. 
           03 Screen1-Cm-1-Container REDEFINES 
           Screen1-Cm-1-Container-Item  PIC  X(5)
                      OCCURS 3 TIMES
                      INDEXED  Screen1-Cm-1-Container-Idx.
       77 W-BEGIN-ENTRY    PIC  9.
       77 FILE-STATUS      PIC  X(2).
           88 Valid-COBCAP VALUE IS "00" THRU "09". 
       77 ADDxxxx16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 AJOUTLG24-JP     PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TOUTCOC16-JP     PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TOUTDEC16-JP     PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 INVSELE16-JP     PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 VALIDER12-BM     PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.

      *{Bench}end
       LINKAGE                     SECTION.
      *{Bench}linkage
       77 LK-ZONE-PALM     PIC  X(500).
           COPY  "LK-CDOCTEC.wrk".
      *{Bench}end
       SCREEN                      SECTION.
       COPY "W:/mistral/copy/Mis-EnregOccupe-Screen.cpy".
      *{Bench}copy-screen
       01 Screen1.
           03 Screen1-Fr-9, Frame, 
              COL 2,43, LINE 30,46, LINES 2,62 CELLS, 
              SIZE 177,29 CELLS, 
              ENGRAVED, COLOR IS 2, FILL-COLOR 16, FILL-PERCENT 74, 
              FILL-COLOR2 6, FONT IS Small-Font, ID IS 29, 
              BACKGROUND-LOW.
           03 Screen1-Gd-1, Grid, 
              COL 2,43, LINE 11,15, LINES 19,15 CELLS, 
              SIZE 177,29 CELLS, 
              3-D, CENTERED-HEADINGS, COLOR IS 2, COLUMN-HEADINGS, 
              DATA-COLUMNS (1, 2, 5, 35, 38, 118, 119), 
              DISPLAY-COLUMNS (1, 4, 11, 41, 46, 131, 131), 
              ALIGNMENT ("C", "C", "L", "C", "L", "U", "U"), 
              DATA-TYPES ("X", "X(3)", "X(30)", "X", "X(40)", "9(1)", "X
      -       ""), 
              SEPARATION (5, 5, 5, 5, 5, 5, 5), 
              CURSOR-FRAME-WIDTH 1, DIVIDER-COLOR 8, END-COLOR 16, 
              FONT IS Small-Font, HEADING-COLOR 257, 
              HEADING-DIVIDER-COLOR 8, ID IS 2, NUM-COL-HEADINGS 1, 
              NUM-ROWS W-NUM-ROWS, RECORD-DATA Screen1-Gd-1-Record, 
              TILED-HEADINGS, USE-TAB, VPADDING 50, VSCROLL, 
              EVENT PROCEDURE Screen1-Gd-1-Event-Proc.
           03 Screen1-Ta-1, Tab-Control, 
              COL 2,43, LINE 9,23, LINES 2,00 CELLS, SIZE 112,14 CELLS, 
              ID IS 33, VALUE Screen1-Ta-1-Value, VISIBLE 0.
           03 Screen1-Pg-1, VISIBLE Screen1-Pg-1-Visible.
           03 Screen1-Fr-1, Frame, 
              COL 2,43, LINE 33,38, LINES 11,69 CELLS, 
              SIZE 177,29 CELLS, 
              ENGRAVED, FILL-COLOR 16, FILL-PERCENT 100, ID IS 10, 
              BACKGROUND-LOW.
           03 Screen1-La-FONCOD, Label, 
              COL 2,71, LINE 33,77, LINES 1,23 CELLS, 
              SIZE 176,43 CELLS, 
              COLOR IS 112, FONT IS Large-Font, ID IS 19, CENTER, 
              LABEL-OFFSET 0.
           03 Screen1-La-LIBCOD, Label, 
              COL 25,71, LINE 33,77, LINES 1,23 CELLS, 
              SIZE 65,29 CELLS, 
              COLOR IS 112, FONT IS Large-Font, ID IS 22, CENTER, 
              LABEL-OFFSET 0.
           03 Screen1-Ef-VAL2, Entry-Field, 
              COL 18,00, LINE 35,85, LINES 7,00 CELLS, 
              SIZE 77,86 CELLS, 
              3-D, COLOR IS 2, FONT IS Small-Font, ID IS 23, 
              MAX-LINES 10, MAX-TEXT 400, NOTIFY-CHANGE, VSCROLL-BAR, 
              USE-RETURN, VALUE W-LIB, VISIBLE 0.
           03 Screen1-Ef-VAL, Entry-Field, 
              COL 18,00, LINE 35,85, LINES 1,38 CELLS, 
              SIZE 17,00 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 30, LEFT, 
              NOTIFY-CHANGE, VISIBLE 0.
           03 Screen1-Rb-1, Radio-Button, 
              COL 18,43, LINE 36,38, LINES 1,23 CELLS, 
              SIZE 26,86 CELLS, 
              COLOR IS 514, ENABLED 0, FONT IS Small-Font, GROUP 1, 
              GROUP-VALUE 1, ID IS 3, VALUE W-CHO, VISIBLE 0.
           03 Screen1-Rb-2, Radio-Button, 
              COL 18,43, LINE 38,00, LINES 1,23 CELLS, 
              SIZE 26,86 CELLS, 
              COLOR IS 514, ENABLED 0, FONT IS Small-Font, GROUP 1, 
              GROUP-VALUE 2, ID IS 5, VALUE W-CHO, VISIBLE 0.
           03 Screen1-Rb-3, Radio-Button, 
              COL 18,43, LINE 39,62, LINES 1,23 CELLS, 
              SIZE 26,86 CELLS, 
              COLOR IS 514, ENABLED 0, FONT IS Small-Font, GROUP 1, 
              GROUP-VALUE 3, ID IS 8, VALUE W-CHO, VISIBLE 0.
           03 Screen1-Rb-4, Radio-Button, 
              COL 18,43, LINE 41,23, LINES 1,23 CELLS, 
              SIZE 26,86 CELLS, 
              COLOR IS 514, ENABLED 0, FONT IS Small-Font, GROUP 1, 
              GROUP-VALUE 4, ID IS 9, VALUE W-CHO, VISIBLE 0.
           03 Screen1-Rb-5, Radio-Button, 
              COL 48,00, LINE 36,38, LINES 1,23 CELLS, 
              SIZE 26,86 CELLS, 
              COLOR IS 514, ENABLED 0, FONT IS Small-Font, GROUP 1, 
              GROUP-VALUE 5, ID IS 11, VALUE W-CHO, VISIBLE 0.
           03 Screen1-Rb-6, Radio-Button, 
              COL 48,00, LINE 38,00, LINES 1,23 CELLS, 
              SIZE 26,86 CELLS, 
              COLOR IS 514, ENABLED 0, FONT IS Small-Font, GROUP 1, 
              GROUP-VALUE 6, ID IS 12, VALUE W-CHO, VISIBLE 0.
           03 Screen1-Rb-7, Radio-Button, 
              COL 48,00, LINE 39,62, LINES 1,23 CELLS, 
              SIZE 26,86 CELLS, 
              COLOR IS 514, ENABLED 0, FONT IS Small-Font, GROUP 1, 
              GROUP-VALUE 7, ID IS 31, VALUE W-CHO, VISIBLE 0.
           03 Screen1-Rb-8, Radio-Button, 
              COL 48,00, LINE 41,23, LINES 1,23 CELLS, 
              SIZE 26,86 CELLS, 
              COLOR IS 514, ENABLED 0, FONT IS Small-Font, GROUP 1, 
              GROUP-VALUE 8, ID IS 32, VALUE W-CHO, VISIBLE 0.
           03 Screen1-La-LIBUSA, Label, 
              COL 103,29, LINE 33,85, LINES 1,15 CELLS, 
              SIZE 10,29 CELLS, 
              COLOR IS 112, FONT IS Small-Font, ID IS 25, 
              LABEL-OFFSET 0, TRANSPARENT.
           03 Screen1-La-USA, Label, 
              COL 97,57, LINE 33,85, LINES 1,15 CELLS, SIZE 5,43 CELLS, 
              COLOR IS 112, FONT IS Small-Font, ID IS 24, 
              LABEL-OFFSET 0, 
              TITLE "Usage :", TRANSPARENT.
           03 Screen1-Cm-CTCS, Combo-Box, 
              COL 18,14, LINE 35,77, LINES 18,23 CELLS, 
              SIZE 36,71 CELLS, 
              3-D, COLOR IS 2, FONT IS Fixed-Font, ID IS 20, 
              MASS-UPDATE 0, DROP-LIST, UNSORTED, 
              VALUE Screen1-Cm-1-Value, VISIBLE 0.
           03 Screen1-La-VALBAD, Label, 
              COL 84,57, LINE 38,00, LINES 1,23 CELLS, 
              SIZE 26,57 CELLS, 
              COLOR IS 13, FONT IS Small-Font, ID IS 21, 
              LABEL-OFFSET 0, TRANSPARENT.
           03 Screen1-Fr-9a, Frame, 
              COL 2,43, LINE 4,62, LINES 3,85 CELLS, SIZE 177,43 CELLS, 
              ENGRAVED, COLOR IS 2, FILL-COLOR 16, FILL-PERCENT 100, 
              FONT IS Small-Font, ID IS 151, BACKGROUND-LOW, 
              ATW-CSS-CLASS "card".
           03 Screen1-Ef-CLE, Entry-Field, 
              COL 30,00, LINE 5,77, LINES 1,92 CELLS, SIZE 23,14 CELLS, 
              3-D, COLOR IS 194, ENABLED 0, ID IS 152, LEFT, NO-TAB, 
              READ-ONLY, VALUE W-CLE, VISIBLE 0.
           03 Screen1-Pb-Refresh, Push-Button, 
              COL 143,43, LINE 1,92, LINES 24, SIZE 118, 
              BITMAP-HANDLE SAUVEGA24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 9819, FONT IS Default-Font, ID IS 6, 
              NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Quitter la modification", VISIBLE 0, 
              ATW-CSS-CLASS "button-sauvegarder".
           03 Screen1-Pb-Modify, Push-Button, 
              COL 88,14, LINE 1,92, LINES 24, SIZE 118, 
              BITMAP-HANDLE MODIFIE24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 9854, FONT IS Default-Font, ID IS 7, 
              NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Modifier", VISIBLE 0, 
              ATW-CSS-CLASS "button-modifier".
           03 Screen1-Ef-CO1, Entry-Field, 
              COL 24,71, LINE 5,77, LINES 1,92 CELLS, SIZE 10,86 CELLS, 
              3-D, COLOR IS 194, ENABLED 0, ID IS 13, READ-ONLY, 
              VALUE CO1-MART, VISIBLE 0.
           03 Screen1-Ef-CO2, Entry-Field, 
              COL 36,43, LINE 5,77, LINES 1,92 CELLS, SIZE 17,86 CELLS, 
              3-D, COLOR IS 194, ENABLED 0, ID IS 14, READ-ONLY, 
              VALUE CO2-MART, VISIBLE 0.
           03 Screen1-Bt-VALIDER12-BMP, Bitmap, 
              COL 78,57, LINE 31,23, LINES 12, SIZE 12, 
              BITMAP-HANDLE VALIDER12-BMP, BITMAP-NUMBER 1, 
              ID IS 15, VISIBLE 0.
           03 Screen1-Pb-Check, Push-Button, 
              COL 2,86, LINE 31,00, LINES 16, SIZE 16, 
              BITMAP-HANDLE TOUTCOC16-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              ID IS 16, TERMINATION-VALUE 1005, 
              TITLE "Tout cocher", VISIBLE 0.
           03 Screen1-Pb-UnCheck, Push-Button, 
              COL 6,29, LINE 31,00, LINES 16, SIZE 16, 
              BITMAP-HANDLE TOUTDEC16-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              ID IS 17, TERMINATION-VALUE 1006, 
              TITLE "Tout décocher", VISIBLE 0.
           03 Screen1-Pb-Invert, Push-Button, 
              COL 9,71, LINE 31,00, LINES 16, SIZE 16, 
              BITMAP-HANDLE INVSELE16-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              ID IS 18, TERMINATION-VALUE 1007, 
              TITLE "Inverser", VISIBLE 0.
           03 Screen1-La-1aaa, Label, 
              COL 157,86, LINE 31,38, LINES 1,15 CELLS, 
              SIZE 4,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 49, LEFT, 
              LABEL-OFFSET 20, 
              TITLE "par", TRANSPARENT.
           03 Screen1-La-1aa, Label, 
              COL 134,57, LINE 31,38, LINES 1,15 CELLS, 
              SIZE 7,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 156, LEFT, 
              LABEL-OFFSET 20, 
              TITLE "MàJ le", TRANSPARENT.
           03 Screen1-La-TYP-MDTE, Label, 
              COL 10,57, LINE 6,15, LINES 1,92 CELLS, SIZE 13,29 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 154, LEFT, 
              LABEL-OFFSET 20, TITLE W-TYP.
           03 Screen1-Ef-LIB, Entry-Field, 
              COL 55,14, LINE 5,77, LINES 1,92 CELLS, SIZE 44,43 CELLS, 
              3-D, UPPER, COLOR IS 194, ENABLED 0, ID IS 153, LEFT, 
              NO-TAB, READ-ONLY, VALUE W-DES.
           03 Screen1-Cb-DET, Check-Box, 
              COL 22,57, LINE 31,38, LINES 1,23 CELLS, 
              SIZE 24,00 CELLS, 
              COLOR IS 514, EXCEPTION-VALUE 3000, FONT IS Small-Font, 
              ID IS 1, 
              TITLE "Affichage textes étendus", VALUE W-DET.
           03 Screen1-Pb-PLUS, Push-Button, 
              COL 106,57, LINE 1,92, LINES 24, SIZE 118, 
              BITMAP-HANDLE AJOUTLG24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 9853, ID IS 26, NO-TAB, 
              TITLE "Ajouter des caractéristiques", VISIBLE 0, 
              ATW-CSS-CLASS "button-creer".
           03 Screen1-Pb-Quit, Push-Button, 
              COL 161,86, LINE 1,92, LINES 24, SIZE 118, 
              BITMAP-HANDLE QUITTER24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 1000, FONT IS Default-Font, ID IS 4, 
              NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Quitter", ATW-CSS-CLASS "button-quitter".
           03 Screen1-Cb-REG, Check-Box, 
              COL 51,71, LINE 31,38, LINES 1,23 CELLS, 
              SIZE 23,57 CELLS, 
              COLOR IS 514, EXCEPTION-VALUE 3001, FONT IS Small-Font, 
              ID IS 34, 
              TITLE "Regroupement / thème", VALUE W-REG, VISIBLE 0.
           03 Screen1-Pb-Delete, Push-Button, 
              COL 125,00, LINE 1,92, LINES 24, SIZE 118, 
              BITMAP-HANDLE SUPPRIM24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 9856, ID IS 36, NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Supprimer", VISIBLE 0, 
              ATW-CSS-CLASS "button-annuler".
           03 Screen1-La-Dat, Label, 
              COL 144,00, LINE 31,38, LINES 1,15 CELLS, 
              SIZE 12,86 CELLS, 
              COLOR IS 2, FONT IS Default-Font, ID IS 37, CENTER, 
              LABEL-OFFSET 20, TRANSPARENT.
           03 Screen1-La-Aut, Label, 
              COL 163,14, LINE 31,38, LINES 1,15 CELLS, 
              SIZE 10,00 CELLS, 
              COLOR IS 2, FONT IS Default-Font, ID IS 38, LEFT, 
              LABEL-OFFSET 20, TRANSPARENT.
       01 Screen2.
           03 Screen2-Ef-VAL2, Entry-Field, 
              COL 4,57, LINE 5,62, LINES 7,00 CELLS, SIZE 77,86 CELLS, 
              3-D, COLOR IS 2, FONT IS Small-Font, ID IS 23, 
              MAX-LINES 10, MAX-TEXT 400, NO-AUTOSEL, NOTIFY-CHANGE, 
              VSCROLL-BAR, USE-RETURN, VALUE W-LIB, 
              VISIBLE Screen2-V-VAL2, 
              EVENT PROCEDURE Screen2-Ef-VAL2-Event-Proc.
           03 Screen2-La-LIBCOD, Label, 
              COL 9,29, LINE 1,77, LINES 1,38 CELLS, SIZE 66,57 CELLS, 
              COLOR IS 2, FONT IS Default-Font, ID IS 22, 
              LABEL-OFFSET 0, TITLE LIB-MCTC, TRANSPARENT.
           03 Screen2-Ef-VAL, Entry-Field, 
              COL 4,57, LINE 5,62, LINES 1,38 CELLS, SIZE 17,00 CELLS, 
              3-D, COLOR IS 2, ID IS 30, LEFT, NOTIFY-CHANGE, 
              VISIBLE Screen2-V-VAL, 
              AFTER PROCEDURE Screen2-Ef-VAL-Aft-Procedure, 
              EVENT PROCEDURE Screen2-Ef-VAL-Event-Proc.
           03 Screen2-Rb-1, Radio-Button, 
              COL 5,00, LINE 6,15, LINES 1,23 CELLS, SIZE 26,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 1, 
              ID IS 3, VALUE W-CHO, VISIBLE Screen2-V-RB12, 
              EVENT PROCEDURE Screen2-Rb-1-Event-Proc.
           03 Screen2-Rb-2, Radio-Button, 
              COL 5,00, LINE 7,77, LINES 1,23 CELLS, SIZE 26,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 2, 
              ID IS 5, VALUE W-CHO, VISIBLE Screen2-V-RB12, 
              EVENT PROCEDURE Screen2-Rb-2-Event-Proc.
           03 Screen2-Rb-3, Radio-Button, 
              COL 5,00, LINE 9,38, LINES 1,23 CELLS, SIZE 26,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 3, 
              ID IS 8, VALUE W-CHO, VISIBLE Screen2-V-RB, 
              EVENT PROCEDURE Screen2-Rb-3-Event-Proc.
           03 Screen2-Rb-4, Radio-Button, 
              COL 5,00, LINE 11,00, LINES 1,23 CELLS, SIZE 26,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 4, 
              ID IS 9, VALUE W-CHO, VISIBLE Screen2-V-RB, 
              EVENT PROCEDURE Screen2-Rb-4-Event-Proc.
           03 Screen2-Rb-5, Radio-Button, 
              COL 34,57, LINE 6,15, LINES 1,23 CELLS, SIZE 26,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 5, 
              ID IS 11, VALUE W-CHO, VISIBLE Screen2-V-RB, 
              EVENT PROCEDURE Screen2-Rb-5-Event-Proc.
           03 Screen2-Rb-6, Radio-Button, 
              COL 34,57, LINE 7,77, LINES 1,23 CELLS, SIZE 26,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 6, 
              ID IS 12, VALUE W-CHO, VISIBLE Screen2-V-RB, 
              EVENT PROCEDURE Screen2-Rb-6-Event-Proc.
           03 Screen2-Rb-7, Radio-Button, 
              COL 34,57, LINE 9,38, LINES 1,23 CELLS, SIZE 26,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 7, 
              ID IS 31, VALUE W-CHO, VISIBLE Screen2-V-RB, 
              EVENT PROCEDURE Screen2-Rb-7-Event-Proc.
           03 Screen2-Rb-8, Radio-Button, 
              COL 34,57, LINE 11,00, LINES 1,23 CELLS, 
              SIZE 26,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 8, 
              ID IS 32, VALUE W-CHO, VISIBLE Screen2-V-RB, 
              EVENT PROCEDURE Screen2-Rb-8-Event-Proc.
           03 Screen2-Pb-Valider, Push-Button, 
              COL 79,00, LINE 1,23, LINES 16, SIZE 16, 
              BITMAP-HANDLE VALIDER16-bmp, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 9858, ID IS 27, TERMINATION-VALUE 9858, 
              TITLE "Valider", VISIBLE 0.
           03 Screen2-Pb-Annuler, Push-Button, 
              COL 82,43, LINE 1,23, LINES 16, SIZE 16, 
              BITMAP-HANDLE QUITTER16-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 9860, ID IS 28, SELF-ACT, 
              TITLE "Quitter ".
           03 Screen2-Ef-COD, Entry-Field, 
              COL 2,43, LINE 1,62, LINES 1,38 CELLS, SIZE 6,14 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 20, CENTER, 
              VALUE CTE-MDTE.
           03 Screen2-Cm-CTCS, Combo-Box, 
              COL 5,29, LINE 5,62, LINES 18,23 CELLS, SIZE 37,86 CELLS, 
              3-D, COLOR IS 2, FONT IS Fixed-Font, ID IS 1, 
              MASS-UPDATE 0, NOTIFY-SELCHANGE, DROP-LIST, UNSORTED, 
              VALUE Screen2-Cm-1-Value, VISIBLE 0, 
              EVENT PROCEDURE Screen2-Cm-CTCS-Event-Proc.

      *{Bench}end

      *{Bench}linkpara
       PROCEDURE DIVISION USING LK-ZONE-PALM, LK-CDOCTEC.
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
           COPY RESOURCE "SAUVEGA24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "SAUVEGA24.JPG", GIVING 
              SAUVEGA24-JPG
           COPY RESOURCE "MODIFIE24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "MODIFIE24.JPG", GIVING 
              MODIFIE24-JPG
           COPY RESOURCE "VALIDER12.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "VALIDER12.BMP", GIVING 
              VALIDER12-BMP
           COPY RESOURCE "TOUTCOC16.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "TOUTCOC16.JPG", GIVING 
              TOUTCOC16-JPG
           COPY RESOURCE "TOUTDEC16.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "TOUTDEC16.JPG", GIVING 
              TOUTDEC16-JPG
           COPY RESOURCE "INVSELE16.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "INVSELE16.JPG", GIVING 
              INVSELE16-JPG
           COPY RESOURCE "AJOUTLG24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "AJOUTLG24.JPG", GIVING 
              AJOUTLG24-JPG
           COPY RESOURCE "QUITTER24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "QUITTER24.JPG", GIVING 
              QUITTER24-JPG
           COPY RESOURCE "SUPPRIM24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "SUPPRIM24.JPG", GIVING 
              SUPPRIM24-JPG
           COPY RESOURCE "VALIDER16.bmp".
           CALL "W$BITMAP" USING WBITMAP-LOAD "VALIDER16.bmp", GIVING 
              VALIDER16-bmp
           COPY RESOURCE "QUITTER16.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "QUITTER16.JPG", GIVING 
              QUITTER16-JPG
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
           IF SAUVEGA24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY SAUVEGA24-JPG
              MOVE 0 TO SAUVEGA24-JPG
           END-IF
           IF MODIFIE24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY MODIFIE24-JPG
              MOVE 0 TO MODIFIE24-JPG
           END-IF
           IF VALIDER12-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY VALIDER12-BMP
              MOVE 0 TO VALIDER12-BMP
           END-IF
           IF TOUTCOC16-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY TOUTCOC16-JPG
              MOVE 0 TO TOUTCOC16-JPG
           END-IF
           IF TOUTDEC16-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY TOUTDEC16-JPG
              MOVE 0 TO TOUTDEC16-JPG
           END-IF
           IF INVSELE16-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY INVSELE16-JPG
              MOVE 0 TO INVSELE16-JPG
           END-IF
           IF AJOUTLG24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY AJOUTLG24-JPG
              MOVE 0 TO AJOUTLG24-JPG
           END-IF
           IF QUITTER24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY QUITTER24-JPG
              MOVE 0 TO QUITTER24-JPG
           END-IF
           IF SUPPRIM24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY SUPPRIM24-JPG
              MOVE 0 TO SUPPRIM24-JPG
           END-IF
           IF VALIDER16-bmp NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY VALIDER16-bmp
              MOVE 0 TO VALIDER16-bmp
           END-IF
           IF QUITTER16-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY QUITTER16-JPG
              MOVE 0 TO QUITTER16-JPG
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
           PERFORM Screen1-BeforeCreate
           MOVE 1 TO Screen1-Pg-1-Visible
      * display screen
              DISPLAY Floating GRAPHICAL WINDOW
                 LINES 46,77, SIZE 181,00, CELL HEIGHT 13, 
                 CELL WIDTH 7, COLOR IS 65793, LABEL-OFFSET 0, 
                 LINK TO THREAD, NO SCROLL, TITLE LIB-MCTC, TITLE-BAR, 
                 USER-GRAY, USER-WHITE, VISIBLE 0, NO WRAP, 
                 ATW-CSS-ID "modal_screen_cdoctec_1", 
                 EVENT PROCEDURE Screen1-Event-Proc, 
                 HANDLE IS Screen1-Handle
      * toolbar
      * status-bar
           DISPLAY STATUS-BAR
              PANEL-WIDTHS 512, 
              PANEL-STYLE 1, 
              PANEL-TEXT SPACE, 
              FONT IS Small-Font, 
              HANDLE IS Screen1-St-1-Handle
           DISPLAY Screen1 UPON Screen1-Handle
      *    After-Create
           .

       Acu-Screen2-Create-Win.
           PERFORM Screen2-Bef-Create
      * display screen
              DISPLAY Floating GRAPHICAL WINDOW
                 LINES 14,54, SIZE 85,43, CELL HEIGHT 13, CELL WIDTH 7, 
                 COLOR IS 65793, LABEL-OFFSET 0, LINK TO THREAD, 
                 MODELESS, NO SCROLL, 
                 TITLE "Détail", TITLE-BAR, USER-GRAY, USER-WHITE, 
                 NO WRAP, 
                 EVENT PROCEDURE Screen2-Event-Proc, 
                 HANDLE IS Screen2-Handle
      * toolbar
           DISPLAY Screen2 UPON Screen2-Handle
      *    After-Create
           .

       Acu-Screen1-Init-Data.
      *    Before-Initdata
           PERFORM Acu-Screen1-Gd-1-Content
           MODIFY Screen1-Ta-1, TAB-TO-ADD = ("Page-1")
           MODIFY Screen1-Ta-1, VALUE = 1
           PERFORM Acu-Screen1-Cm-CTCS-Content
           PERFORM Screen1-AfterInitData
           .

       Acu-Screen2-Init-Data.
      *    Before-Initdata
           PERFORM Acu-Screen2-Cm-CTCS-Content
           PERFORM Screen2-Aft-Initdata
           .
      * Screen1
       Acu-Screen1-Proc.
           PERFORM UNTIL Exit-Pushed
              ACCEPT Screen1  
                 ON EXCEPTION PERFORM Acu-Screen1-Evaluate-Func
              END-ACCEPT
              EVALUATE TRUE
      * Screen1-Pb-Check Link To
              WHEN Key-Status = 1005
                 PERFORM Screen1-Pb-Check-Link
      * Screen1-Pb-UnCheck Link To
              WHEN Key-Status = 1006
                 PERFORM Screen1-Pb-UnCheck-Link
      * Screen1-Pb-Invert Link To
              WHEN Key-Status = 1007
                 PERFORM Screen1-Pb-Invert-Link
              END-EVALUATE
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

      * Screen1-Gd-1
       Acu-Screen1-Gd-1-Content.
      * Cells Settings
           MODIFY Screen1-Gd-1, X = 1, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "Sél.", 
           MODIFY Screen1-Gd-1, X = 2, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "Code", 
           MODIFY Screen1-Gd-1, X = 3, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = 
              "Désignation Caractéristique", 
           MODIFY Screen1-Gd-1, X = 4, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "Us.", 
           MODIFY Screen1-Gd-1, X = 5, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "Valeur", 
           MODIFY Screen1-Gd-1, X = 6, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, 
           MODIFY Screen1-Gd-1, X = 7, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, 
      * Columns' Setting
           MODIFY Screen1-Gd-1, X = 2, COLUMN-COLOR = 2, 
           MODIFY Screen1-Gd-1, X = 3, COLUMN-COLOR = 2, 
           MODIFY Screen1-Gd-1, X = 4, COLUMN-COLOR = 2, 
           MODIFY Screen1-Gd-1, X = 5, COLUMN-COLOR = 2, 
           MODIFY Screen1-Gd-1, X = 6, COLUMN-COLOR = 2, 
           MODIFY Screen1-Gd-1, X = 7, COLUMN-COLOR = 2, 
           .

      * Screen1-Cm-CTCS
       Acu-Screen1-Cm-CTCS-Content.
           MODIFY Screen1-Cm-CTCS, MASS-UPDATE = 1, RESET-LIST = 1
           MODIFY Screen1-Cm-CTCS, ITEM-TO-ADD = TABLE 
              Screen1-Cm-1-Container
           MODIFY Screen1-Cm-CTCS, MASS-UPDATE = 0
           MODIFY Screen1-Cm-CTCS, VALUE Screen1-Cm-1-Value
           .

      * Screen2-Cm-CTCS
       Acu-Screen2-Cm-CTCS-Content.
           MODIFY Screen2-Cm-CTCS, MASS-UPDATE = 1, RESET-LIST = 1
           MODIFY Screen2-Cm-CTCS, ITEM-TO-ADD = TABLE 
              Screen2-Cm-1-Container
           MODIFY Screen2-Cm-CTCS, MASS-UPDATE = 0
           MODIFY Screen2-Cm-CTCS, VALUE Screen2-Cm-1-Value
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
           IF Event-Control-Id = 33 AND Event-Type = Cmd-Tabchanged
              PERFORM Acu-Screen1-Ta-1-Cmd-Tabchanged
           END-IF
      * Screen1-Pb-Refresh Link To
              WHEN Key-Status = 9819
                 PERFORM Screen1-Pb-Refresh-LinkTo
      * Screen1-Pb-Modify Link To
              WHEN Key-Status = 9854
                 PERFORM Screen1-Pb-Modify-LinkTo
      * Screen1-Cb-DET Link To
              WHEN Key-Status = 3000
                 PERFORM Screen1-Cb-DET-Link
      * Screen1-Pb-PLUS Link To
              WHEN Key-Status = 9853
                 PERFORM Screen1-Pb-PLUS-Link
      * Screen1-Pb-Quit Link To
              WHEN Key-Status = 1000
                 PERFORM Screen1-Pb-Quit-LinkTo
      * Screen1-Cb-REG Link To
              WHEN Key-Status = 3001
                 PERFORM Screen1-Cb-REG-Link
      * Screen1-Pb-Delete Link To
              WHEN Key-Status = 9856
                 PERFORM Screen1-Pb-Delete-LinkTo
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
      * Screen2-Pb-Valider Link To
              WHEN Key-Status = 9858
                 PERFORM Screen2-Pb-Valider-Link
      * Screen2-Pb-Annuler Link To
              WHEN Key-Status = 9860
                 PERFORM Screen2-Pb-Annuler-Link
           END-EVALUATE
           MOVE 1 TO Accept-Control
           .

       Acu-Screen1-Display-Status-Msg.
           MODIFY Screen1-St-1-Handle
              PANEL-WIDTHS 512, 
              PANEL-STYLE 1, 
              PANEL-TEXT SPACE, 
              FONT IS Small-Font, 
           .

       Acu-Screen1-Clear-Status-Msg.
           PERFORM Acu-Screen1-Display-Status-Msg
           .

       Acu-Close-Files.
      *    Before-Close
      *    After-Close
           .

      * COBCAP

      * MXPARAM

      * MXCARTEC

      * MXART

      * MXDOCTEC

      * MXCARTECS

      * MXDOCTECEXT

      * MXDOCTEC2

      * MXDOCTECEXT2

       Acu-Screen1-Exit.
           SET Exit-Pushed TO TRUE
           .

       Acu-Screen2-Exit.
           SET Exit-Pushed TO TRUE
           .


       Acu-Screen1-Ta-1-Cmd-Tabchanged.
           EVALUATE Event-Type
           WHEN Cmd-Tabchanged
              MOVE Event-Data-1 TO Screen1-Ta-1-Value
              MOVE 0 TO Screen1-Pg-1-Visible
              EVALUATE Event-Data-1
              WHEN 1
                 MOVE 1 TO Screen1-Pg-1-Visible
              END-EVALUATE
              PERFORM Screen1-Ta-1-Bef-Tabchg-Display
              DISPLAY Screen1
              PERFORM Screen1-Ta-1-Aft-Tabchg-Display
           END-EVALUATE
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
           WHEN Msg-Begin-Drag
              PERFORM Screen1-Gd-1-Ev-Msg-Begin-Drag
           WHEN Msg-Begin-Entry
              PERFORM Screen1-Gd-1-Ev-Msg-Begin-Entry
           WHEN Msg-End-Drag
              PERFORM Screen1-Gd-1-Ev-Msg-End-Drag
           WHEN Msg-Finish-Entry
              PERFORM Screen1-Gd-1-Ev-Msg-Finish-Entry
           WHEN Msg-Goto-Cell
              PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell-Drag
              PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell-Mouse
              PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
           END-EVALUATE
           .

       Screen2-Event-Proc.
           .

       Screen2-Ef-VAL2-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Ntf-Changed
              PERFORM Screen2-Ef-VAL2-Ev-Ntf-Changed
           END-EVALUATE
           .

       Screen2-Ef-VAL-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Ntf-Changed
              PERFORM Screen2-Ef-VAL-Ev-Ntf-Changed
           END-EVALUATE
           .

       Screen2-Rb-1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen2-Rb-1-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen2-Rb-2-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen2-Rb-2-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen2-Rb-3-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen2-Rb-3-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen2-Rb-4-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen2-Rb-4-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen2-Rb-5-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen2-Rb-5-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen2-Rb-6-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen2-Rb-6-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen2-Rb-7-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen2-Rb-7-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen2-Rb-8-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen2-Rb-8-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen2-Cm-CTCS-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Ntf-Selchange
              PERFORM Screen2-Cm-CTCS-Ev-Ntf-Selchange
           END-EVALUATE
           .
      ***   start event editor code   ***
           COPY "W:/mistral/copy/ENVMIS.CBL".
060819     COPY "W:/mistral/copy/MisCentrefenetre.cbl".

       Open-File-Rtn.
           open i-o MXDOCTEC
           perform Stat
           open i-o   MXDOCTECEXT perform Stat
           open i-o   MXCARTEC    perform stat
           open i-o   MXCARTECS   perform stat
           .

       Close-File-Rtn.
           CLOSE MXDOCTEC
           CLOSE MXDOCTECEXT 
           CLOSE MXCARTEC MXCARTECS
           .

       Screen1-BeforeCreate.
           perform Controle-Call
           PERFORM Open-File-Rtn

           OPEN INPUT MXPARAM
           PERFORM STAT
           MOVE 1 TO W-MXPARAM
           READ MXPARAM
           PERFORM STAT
           CLOSE MXPARAM

      *---- contrôle possibilité modification 
      *     MOVE IDE-PALM TO LK-CPERMIS-IDE
      *     MOVE 25 TO LK-CPERMIS-LOG
      *     MOVE 279 TO LK-CPERMIS-RUB
      *     CALL "cpermis.acu" 
      *          USING LK-ZONE-PALM LK-CPERMIS
      *     CANCEL "cpermis.acu"
      *     if lk-cdoctec-ori = "BA" OR "BM" OR "BP" OR "V"
      *        MOVE LK-CPERMIS-PER TO AUTO-MOD
      *     END-IF.

           MOVE SPACE TO W-GR
           MOVE 0 TO W-DOCMCT
           
           MOVE 1 TO W-ORI | colonne sélection
           EVALUATE lk-cdoctec-ori
             WHEN "BA" 
               MOVE "Article" TO W-TYP
               OPEN INPUT MXART
               PERFORM STAT
               INITIALIZE ENR-MART
               MOVE LK-CDOCTEC-CLE TO COD-MART
               READ MXART
               PERFORM STAT
               CLOSE MXART
               STRING CO1-MART " " CO2-MART DELIMITED BY SIZE INTO W-CLE
               MOVE DES-MART TO W-DES
             WHEN "BAO" 
               MOVE "Article" TO W-TYP
             WHEN "MD" 
             WHEN "MDC" 
             WHEN "MC" 
             WHEN "MCC"
             WHEN "F"
             WHEN "F C"
280716       WHEN "ML"  | Kleber : affichait "Prestation" au lieu de matériel si Matériel SLM catalogue
280716       WHEN "MLC"
               IF LK-CDOCTEC-INP = "M"
                  MOVE "Matériel" TO W-TYP
               ELSE
                  MOVE "Article" TO W-TYP
                  OPEN INPUT MXART
                  PERFORM STAT
                  INITIALIZE ENR-MART
                  MOVE LK-CDOCTEC-ART TO COD-MART
                  READ MXART
                  PERFORM STAT
                  CLOSE MXART
                  STRING CO1-MART " " CO2-MART DELIMITED BY SIZE 
                         INTO W-CLE
                  MOVE DES-MART TO W-DES
               END-IF
             WHEN "BM"
               MOVE "Matériel" TO W-TYP
      *         MOVE 0 TO W-ORI
             WHEN "AC"
               MOVE "Commande" TO W-TYP
               MOVE LK-CDOCTEC-CLE TO W-CLE
             WHEN "BP" 
               MOVE "Prestation" TO W-TYP
      *         MOVE 0 TO W-ORI
             WHEN "V"
               MOVE "Matériel" TO W-TYP
      *         MOVE 0 TO W-ORI
           END-EVALUATE
           
           
           MOVE NOMLOG-PALM TO Z-TITRE1
           MOVE SPACES TO Z-TITRE2
           STRING "Documentation Technique " DELIMITED BY SIZE
                  W-TYP DELIMITED BY SIZE INTO Z-TITRE2
           .

       Screen1-AfterInitData.
      * Gestion de PALM par le programme :
      *  - Le droit de créer est ignoré pour tout utilisateur n'ayant
      *    pas le droit de modifier.
      *  - Le droit d'interrogation est supposé vrai, PALM ayant du
      *    filtrer avant.
190419   
      *     IF LK-CDOCTEC-HANDLE <> 0 THEN   PB CHOUFFOT ? 
      *        MOVE LK-CDOCTEC-HANDLE TO WCF-HANDLE-FP
      *        PERFORM CentreFenetre
      *     ELSE
      *        MODIFY Screen1-Handle,
      *           VISIBLE 1
      *     END-IF
190419

060819     PERFORM MisCentreFenetreScreen1F
      * PALM interdit la mise à jour...
      *    Bouton "édition"
           if (MODIF-PALM = "X" OR LK-CDOCTEC-CDF = "I"
               OR AUTO-MOD = 2) 
250510     AND AUTO-MOD NOT = 1    
             modify Screen1-Pb-Modify, visible = 0
             modify Screen1-Pb-Delete, visible = 0
      *       modify Screen1-Pb-Profil, visible = 0
             modify Screen1-Pb-Plus, visible = 0
      *       modify Screen1-Pb-DOCMCT, VISIBLE = 0
           END-IF.
           IF lk-cdoctec-ori = "BP" 
               MODIFY Screen1-Ef-CO1, Visible = 1
           ELSE
              IF lk-cdoctec-ori = "BA" 
              OR (lk-cdoctec-act = "M" and lk-cdoctec-inp = "A")
              OR (lk-cdoctec-act = "F" and lk-cdoctec-inp = "A")
                 MODIFY Screen1-Ef-CO1, Visible = 1
                 MODIFY Screen1-Ef-CO2, VISIBLE = 1
              ELSE 
                 MODIFY Screen1-Ef-CLE, VISIBLE = 1
              END-IF
           END-IF
           perform Remp-Onglet
           if lk-cdoctec-prg = "MIT" 
           and NUM-GR > 0 
              move 1 to w-reg
              modify Screen1-Cb-REG, value w-reg
              move elt-gr(1) to w-gr
              modify Screen1-Ta-1, VISIBLE 1
           end-if

      *    Remplissage de la grille
           perform FillGrid
           perform ShowMaj
           if (((MODIF-PALM NOT = "X" AND AUTO-MOD NOT = 2)
250510          OR AUTO-MOD = 1)
               AND LK-CDOCTEC-CDF = "C")
           OR LK-CDOCTEC-PRG = "MIT"
                perform ModeModification
           else perform ModeConsultation
           end-if
           .

       Screen1-Aft-Routine.
           perform Close-File-Rtn           
           .

      ******************************************************************
       Screen1-Ev-Cmd-Close.
           PERFORM Mistral-WindowClosing
           .

       Screen1-Pb-Quit-LinkTo.
           Perform Maj-Rang
           PERFORM Acu-Screen1-EXIT
           .

       Screen1-Pb-Refresh-LinkTo.
           PERFORM Maj-Rang
           perform ModeConsultation
           .
           
       Screen1-Pb-Modify-LinkTo.
           inquire Screen1-Pb-Modify, visible in w-vs-pb
           if w-vs-pb = 0 exit paragraph
           end-if
      *    PALM interdit la mise à jour...
           if (MODIF-PALM = "X" OR AUTO-MOD = 2)
250510     AND AUTO-MOD NOT = 1
             move "380" to Acu-Msg-Id
             perform Acu-Show-Msg
             move event-action-ignore to event-action
             exit paragraph
           end-if

           perform ModeModification           
           .

      * Screen1-Pb-SUPSEL-Link.
      **----------------------*
      *     MOVE
      *       "Confirmez-vous la suppression des lignes sélectionnées ?"
      *       TO Acu-Msg-1
      *     PERFORM MSG-ON
      *     IF Acu-Return-Value NOT = 1
      *        EXIT PARAGRAPH
      *     END-IF
      *     PERFORM DSUPP-PLUSLIGNES THRU FSUPP-PLUSLIGNES
      *
      *     INQUIRE Screen1-Gd-1,
      *        LAST-ROW IN W-LAST-ROW
      *     IF Screen1-Gd-1-Cursor-Y > W-LAST-ROW     
      *        MOVE W-LAST-ROW TO Event-Data-2
      *     ELSE
      *        MOVE Screen1-Gd-1-Cursor-Y TO Event-Data-2
      *     END-IF
      *
      *     MODIFY Screen1-Gd-1,
      *        CURSOR-Y Event-Data-2 
      *     MOVE 0 TO Screen1-Gd-1-Cursor-Y
      *     PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
      *
      *     MOVE 0 TO W-NB-SEL
      *     PERFORM Aff-Pb-SUPSEL
      *     MOVE 1 TO W-MODIF-RAN
      *     .

       Screen1-Pb-PLUS-Link.
           inquire Screen1-Pb-Plus, visible in w-vs-pb
           if w-vs-pb = 0 exit paragraph
           end-if
      *    PALM interdit la mise à jour...
           if (MODIF-PALM = "X" OR AUTO-MOD = 2) 
250510     AND AUTO-MOD NOT = 1
             move "380" to Acu-Msg-Id
             perform Acu-Show-Msg
             move event-action-ignore to event-action
             exit paragraph
           end-if

           if w-reg = 1
              move 0 to w-reg
              modify Screen1-Cb-REG,  value w-reg
              perform Screen1-Cb-REG-Link
           end-if

           modify Screen1-Handle, enabled false
           INITIALIZE LK-LISTE
           MOVE 40 TO LK-LISTE-MAXSEL
           call   "mctc-l.acu" using ZONE-PALM, LK-LISTE
           cancel "mctc-l.acu"
           if lk-liste-nbsel = 0 exit paragraph
           end-if
           move space to Screen1-Gd-1-Record
           inquire Screen1-Gd-1, LAST-ROW in W-LAST-ROW
           MOVE W-LAST-ROW TO w-row
           PERFORM VARYING Tmp-9-3 FROM 1 BY 1 
              UNTIL Tmp-9-3 > LK-LISTE-NBSEL
                 IF LK-LISTE-COD(Tmp-9-3) NOT = SPACE     
                    INITIALIZE ENR-MCTC
                    MOVE LK-LISTE-COD(Tmp-9-3)
                    TO Screen1-Gd-1-CTE COD-MCTC
                    READ MXCARTEC
                    PERFORM STAT
                    MOVE LIB-MCTC TO Screen1-Gd-1-LIB-MCTC
                    IF USA-MCTC < 4     
                       MOVE Usage-Zone(USA-MCTC + 1)
                       TO Screen1-Gd-1-USA-MCTC
                    END-IF
                    MOVE TDZ-MCTC TO Screen1-Gd-1-TDZ-MCTC
                    MODIFY Screen1-Gd-1,
                           RECORD-TO-ADD = Screen1-Gd-1-Record

                       initialize ENR-MDTE
                       move lk-cdoctec-ori to ORI-MDTE
                       move lk-cdoctec-cle to CLE-MDTE
                       MOVE Screen1-Gd-1-CTE TO CTE-MDTE
                       ADD 1 TO D-RAN
                       MOVE D-RAN TO RAN-MDTE 
                       MOVE 0 TO W-TROUVE
                       PERFORM UNTIL W-TROUVE = 1
                          add 1 to d-lig
                          move d-lig to w-lig LIG-MDTE
                          write ENR-MDTE NOT invalid 
                             MOVE 1 TO W-TROUVE
                          end-write
                          perform stat
                        END-PERFORM

                    ADD 1 TO W-ROW
                    modify Screen1-Gd-1(w-row,  COL-CTE),                       
                       hidden-data = w-lig,
                 END-IF
           END-PERFORM
           PERFORM MAJ-DAT
           modify Screen1-Handle, enabled true

           IF W-ROW > W-LAST-ROW     
              ADD 1 W-LAST-ROW GIVING Event-Data-2
              MODIFY Screen1-Gd-1,
                 CURSOR-Y Event-Data-2 
              PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
              IF W-LAST-ROW = 1     
      *          Premier ajout
                 PERFORM ModeModification
              END-IF
              MOVE 1 TO W-MODIF-RAN
           END-IF
           .
                      
      *
       Screen1-Cb-DET-Link.
      *-------------------*
           PERFORM FillGrid
           .
           
       Screen1-Gd-1-Ev-Msg-Goto-Cell.
      *    La ligne de titre est à ignorer...
           if Event-Data-2 < 2
             move 2 TO Event-Data-2
           end-if
            
      *    Alimente la status-bar...
           if Event-Data-1 <= Nombre-Messages-Aide and cdf not = "I"
              IF Event-Data-1 = COL-SEL and w-ori = 1
                 MODIFY Screen1-St-1-Handle, TITLE
                "Colonne permettant la sélection des lignes à supprimer"
              ELSE
                 MODIFY Screen1-St-1-Handle,
                TITLE "Pour déplacer une caractéristique, cliquer sur la 
      -        " ligne et la faire glisser à l'emplacement choisi"
              END-IF
           ELSE MODIFY Screen1-St-1-Handle, TITLE SPACE
           END-IF
      *    Pour voir si on a changé de ligne
           if event-data-2 <> Screen1-Gd-1-Cursor-Y-Old     
              modify Screen1-Gd-1, Y = Screen1-Gd-1-Cursor-Y-Old,
                 row-color = 0
              modify Screen1-Gd-1, Y = Event-Data-2,
                 row-color = Screen1-Gd-1-Row-Highlight-Color
           end-if

           move event-data-1 to Screen1-Gd-1-Cursor-X
                                Screen1-Gd-1-Cursor-X-Old
           move event-data-2 to Screen1-Gd-1-Cursor-Y
                                Screen1-Gd-1-Cursor-Y-Old

           inquire Screen1-Gd-1(Screen1-Gd-1-Cursor-Y, COL-CTE),
              record-data in Screen1-Gd-1-Record,
              hidden-data in w-lig

           initialize enr-mdte enr-mdtex 
           if w-lig = 0 
              perform Efface-Detail
              exit paragraph
           end-if
              move lk-cdoctec-ori to ORI-MDTE
              move lk-cdoctec-cle to CLE-MDTE
              move w-lig to LIG-MDTE
              read MXDOCTEC 
              perform stat
              move cle1-mdte to cle1-mdtex

           read MXDOCTECEXT 
280510          
                invalid move val-mdte to val-mdtex
280510     
           end-read
           perform stat
           PERFORM Aff-Detail
           .

       Screen1-Gd-1-Ev-Msg-Begin-Entry.
      *    Grille verrouillée en mode "Interrogation"
           if CDF = "I"     
             move event-action-fail to event-action
             exit paragraph
           end-if
           IF (Event-Data-1 NOT = COL-SEL AND NOT = COL-VAL 
               AND NOT = COL-CTE) 
           OR W-ORI = 0
              MOVE Event-Action-Fail TO Event-Action
              EXIT PARAGRAPH
           END-IF

           MOVE Event-Data-2 TO W-ROW
           INQUIRE Screen1-Gd-1(W-ROW, COL-CTE), CELL-DATA w-code-old
           IF w-code-old = space 
           AND Event-Data-1 NOT = COL-CTE
310714                  AND NOT = COL-SEL  
              MOVE Event-Action-Fail TO Event-Action
              EXIT PARAGRAPH
           END-IF
160719
           IF W-BEGIN-ENTRY = 1 THEN
      *       Evite le double double clic qui plantait la saisie avec une fenêtre Screen2 grise (CHOUFFOT 418712)
              MOVE Event-Action-Fail TO Event-Action
              EXIT PARAGRAPH
           END-IF

           MOVE 1 TO W-BEGIN-ENTRY
160719
           | Si clique dans colonne "Sélection"
           IF Event-Data-1 = COL-SEL                      
              IF  W-DET = 1 AND Screen1-Gd-1-TDZ-MCTC = 6     
                 INQUIRE Screen1-Gd-1(Event-Data-2, COL-VAL),
                    HIDDEN-DATA W-ENT
                 IF W-ENT = 2     
      *             Pas première ligne du détail
                    PERFORM Rech-Premiere
                 END-IF
              END-IF

              INQUIRE Screen1-Gd-1(W-ROW, COL-SEL), HIDDEN-DATA W-SEL
              IF W-SEL = SPACE      
                 MODIFY Screen1-Gd-1(W-ROW, COL-SEL), 
                        BITMAP VALIDER12-BMP
                 MOVE "S" TO W-SEL
                 ADD 1 TO W-NB-SEL
              ELSE 
                 MODIFY Screen1-Gd-1(W-ROW, COL-SEL), BITMAP NULL
                 MOVE SPACE TO W-SEL
                 SUBTRACT 1 FROM W-NB-SEL
              END-IF
              MODIFY Screen1-Gd-1(W-ROW, COL-SEL), HIDDEN-DATA W-SEL

              IF  W-DET = 1 AND Screen1-Gd-1-TDZ-MCTC = 6 AND W-ENT <> 0     
      *          (Dé)Coche les lignes suivantes de l'enrt
                 INQUIRE Screen1-Gd-1, LAST-ROW IN W-LAST-ROW
                 ADD 1 TO W-ROW
                 PERFORM VARYING W-LIGNE FROM W-ROW BY 1
                    UNTIL W-LIGNE > W-LAST-ROW
                    INQUIRE Screen1-Gd-1(W-LIGNE, COL-VAL),
                       HIDDEN-DATA W-ENT
                    IF W-ENT = 2     
      *                Lignes suivantes
                       IF W-SEL = "S"      
                          MODIFY Screen1-Gd-1(W-LIGNE, COL-SEL),
                             BITMAP VALIDER12-BMP
                       ELSE
                          MODIFY Screen1-Gd-1(W-LIGNE, COL-SEL),
                             BITMAP NULL
                       END-IF
                    ELSE
                       EXIT PERFORM
                    END-IF
                 END-PERFORM
              END-IF
           END-IF.

           IF Event-Data-1 = COL-VAL AND
              (Screen1-Gd-1-TDZ-MCTC NOT = 1 AND NOT = 2)
210910        
              INQUIRE Screen1-Gd-1,
                 ENTRY-REASON IN W-PICX1

              IF W-PICX1 >= "!" THEN
      *          Caractère normal -> met dans le buffer clavier -> va dans la zone saisie
                 CALL "W$KEYBUF" USING 1, W-PICX1
              END-IF
210910        
              PERFORM Acu-Screen2-Routine
210910        MOVE Event-Action-Fail TO Event-Action
           END-IF
160719     MOVE 0 TO W-BEGIN-ENTRY
      * on autorise la saisie du coe caractéristique
           IF Event-Data-1 = COL-CTE
              inquire Screen1-Gd-1(w-row - 1, COL-VAL), 
                 hidden-data W-ENT
              IF (W-ENT > 0 AND Screen1-Gd-1-TDZ-MCTC = 6)
                 MOVE Event-Action-Fail TO Event-Action
              END-IF
              EXIT PARAGRAPH
           END-IF
           IF Event-Data-1 NOT = COL-VAL OR  
              (Screen1-Gd-1-TDZ-MCTC NOT = 1 AND NOT = 2)
               MOVE Event-Action-Fail TO Event-Action
           END-IF
           MODIFY Screen1-Ef-VAL ENABLED 0
           .

       Screen1-Gd-1-Ev-Msg-Finish-Entry.
           if event-data-1 = COL-CTE then
             inquire Screen1-Gd-1, cell-data in w-code
             if w-code = spaces     | Code blanc : remet l'ancien
               modify Screen1-Gd-1, cell-data = w-code-old
             else                   | Valide le nouveau code saisi
               move event-data-2 to w-row
               perform FillRowDescription
               if w-valid = 0       | Code inexistant
                 move event-action-fail to event-action
                 exit paragraph
               end-if
             end-if
             exit paragraph
           end-if

           INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y, COL-VAL) 
              CELL-DATA IN W-VAL
           IF Screen1-Gd-1-TDZ-MCTC = 2
              modify Screen1-Ef-VAL VALUE W-VAL
           END-IF
           PERFORM Screen1-Pb-Valider-Link
           PERFORM Aff-Detail
           .

      *
      *       DEBUT DRAG & DROP
      *
       Screen1-Gd-1-Ev-Msg-Begin-Drag.
           IF CDF NOT = "M" 
           OR W-REG = 1
              MOVE EVENT-ACTION-FAIL TO EVENT-ACTION
              EXIT PARAGRAPH
           END-IF
           MODIFY Screen1-Gd-1, CURSOR-COLOR = 160.
      *
      *       FIN DRAG & DROP
      *
       Screen1-Gd-1-Ev-Msg-End-Drag. 
           IF CDF NOT = "M" 
           OR W-REG = 1
           OR event-data-2 = Screen1-Gd-1-Cursor-Y-Old
              modify Screen1-Gd-1, CURSOR-COLOR = 0
              perform Screen1-Gd-1-Ev-Msg-Goto-Cell
              EXIT PARAGRAPH
           END-IF
           | La ligne de titre est à ignorer...
           if Event-Data-2 < 2
             move 2 TO Event-Data-2
           end-if

           move event-data-2 to Screen1-Gd-1-Cursor-Y
           
      *       Ligne déplacée :
              inquire Screen1-Gd-1(Screen1-Gd-1-Cursor-Y-Old, COL-CTE),
                   hidden-data w-lig
              move lk-cdoctec-ori to ORI-MDTE
              move lk-cdoctec-cle to CLE-MDTE
              move w-lig          to LIG-MDTE
              read MXDOCTEC 
              PERFORM STAT
      *       Rang ligne déplacée :
              MOVE RAN-MDTE TO W-RAN
      *       Nouvel emplacement :
              inquire Screen1-Gd-1(Screen1-Gd-1-Cursor-Y, COL-CTE),
                   hidden-data w-lig2
              move lk-cdoctec-ori to ORI-MDTE
              move lk-cdoctec-cle to CLE-MDTE
              move w-lig2         to LIG-MDTE
              read MXDOCTEC 
              PERFORM STAT
      *       Rang nouvel emplacement :
              MOVE RAN-MDTE TO W-RAN2
              MOVE 0 TO LIG-MDTE w-eof
              start MXDOCTEC key >= CLE1-MDTE invalid move 1 to w-eof
              end-start
              perform until w-eof = 1   
                 MOVE 1 TO IND-STAT
                 PERFORM UNTIL IND-STAT <> 1
                    read MXDOCTEC next LOCK end move 1 to w-eof
                    end-read
                    PERFORM STAT
                    MOVE "DOCUMENTATION TECHNIQUE" TO ScreenOccupe-Fic
                    MOVE SPACE TO ScreenOccupe-Cle
                    STRING "NEXT2 " ORI-MDTE CLE-MDTE RAN-MDTE
                           INTO ScreenOccupe-Cle
                    PERFORM Mis-EnregOccupe
                 END-PERFORM
                 if ORI-MDTE not = lk-cdoctec-ori
                 or CLE-MDTE not = lk-cdoctec-cle
                    move 1 to w-eof
                 end-if
                 if  w-eof = 0 AND LIG-MDTE <> 0     
                    IF LIG-MDTE = W-LIG     
      *                Ligne déplacée
                       MOVE W-RAN2 TO RAN-MDTE
                       REWRITE ENR-MDTE
                       PERFORM STAT
                    ELSE
                       IF W-RAN2 > W-RAN     
      *                   Plus haut : décale les lignes dans l'intervalle de -1 (car elles remplacent le trou du déplact)
                          IF  RAN-MDTE > W-RAN
                          AND RAN-MDTE <= W-RAN2     
                             SUBTRACT 1 FROM RAN-MDTE
                             REWRITE ENR-MDTE
                             PERFORM STAT
                          END-IF
                       ELSE
      *                   Plus bas : décale les lignes dans l'intervalle de +1 (car elles suivent le nouvel emplact)
                          IF (     RAN-MDTE > W-RAN2
                               AND RAN-MDTE < W-RAN )
                          OR (     LIG-MDTE = W-LIG2 
                               AND RAN-MDTE = W-RAN2 )      | Ligne pas encore traitée
                             ADD 1 TO RAN-MDTE
                             REWRITE ENR-MDTE
                             PERFORM STAT
                          END-IF
                       END-IF
                    END-IF
                 END-IF
              END-PERFORM
              UNLOCK MXDOCTEC

           modify Screen1-Gd-1, cursor-color 0
           MOVE 1 TO W-MODIF-RAN
           PERFORM FillGrid
           .

      ******************************************************************
       Screen1-Pb-Check-Link.
           INQUIRE Screen1-Gd-1, LAST-ROW W-LAST-ROW
           PERFORM VARYING I-T FROM 2 BY 1 UNTIL I-T > W-LAST-ROW
              MODIFY Screen1-Gd-1(I-T, COL-SEL), BITMAP VALIDER12-BMP
              MODIFY Screen1-Gd-1(I-T, COL-SEL), HIDDEN-DATA "S"
           END-PERFORM
           .
       Screen1-Pb-UnCheck-Link.
           INQUIRE Screen1-Gd-1, LAST-ROW W-LAST-ROW
           PERFORM VARYING I-T FROM 2 BY 1 UNTIL I-T > W-LAST-ROW
              MODIFY Screen1-Gd-1(I-T, COL-SEL), BITMAP NULL
              MODIFY Screen1-Gd-1(I-T, COL-SEL), HIDDEN-DATA SPACE
           END-PERFORM
           .
       Screen1-Pb-Invert-Link.
           INQUIRE Screen1-Gd-1, LAST-ROW W-LAST-ROW
           PERFORM VARYING I-T FROM 2 BY 1 UNTIL I-T > W-LAST-ROW
              INQUIRE Screen1-Gd-1(I-T, COL-SEL), HIDDEN-DATA W-SEL
              IF W-SEL = SPACE
                 MODIFY Screen1-Gd-1(I-T, COL-SEL), BITMAP VALIDER12-BMP
                 MOVE "S" TO W-SEL
              ELSE MODIFY Screen1-Gd-1(I-T, COL-SEL), BITMAP NULL
                   MOVE SPACE TO W-SEL
              END-IF
              MODIFY Screen1-Gd-1(I-T, COL-SEL), HIDDEN-DATA W-SEL
           END-PERFORM
           .

       Screen1-Ef-VAL-Aft-Procedure.
      *----------------------------*
           INQUIRE Screen1-Ef-VAL, VALUE IN W-VAL
           if tdz-mctc = 1 or 0
              move w-val to val-mdte 
              exit paragraph
           end-if
           if tdz-mctc = 5
              INQUIRE Screen1-Ef-VAL, VALUE IN W-VALDAT
              COPY "W:/mistral/copy/Ef-Date10-Ecr2Fic.cbl"
                REPLACING ==CPYDAT-ECR== BY ==W-VALDAT==
                          ==CPYDAT-FIC== BY ==Dat-MDTE==.
              MODIFY Screen1-Ef-VAL, VALUE = W-VALDAT
              exit paragraph
           end-if
           move space to wft-zone
           evaluate DEC-MCTC 
           WHEN 1 inquire Screen1-Ef-VAL value WDT-V17
                   MOVE WDT-V17 TO R1-WDT-AFF
           WHEN 2 inquire Screen1-Ef-VAL value WDT-V16 
                   MOVE WDT-V16 TO R2-WDT-AFF
           WHEN 3 inquire Screen1-Ef-VAL value WDT-V15 
                   move WDT-V15 TO R3-WDT-AFF
           WHEN 4 inquire Screen1-Ef-VAL value WDT-V14
                   move WDT-V14 TO R4-WDT-AFF
           WHEN 5 inquire Screen1-Ef-VAL value WDT-V13 
                   move WDT-V13 TO R5-WDT-AFF
           WHEN OTHER
                  inquire Screen1-Ef-VAL value WDT-V18 
                   move WDT-V18 TO R0-WDT-AFF
           end-evaluate
           move wdt-val to VAL-MDTE 
           MODIFY Screen1-Ef-VAL, VALUE WDT-AFF
           .
      *
       Screen1-Pb-Valider-Link.
      *-----------------------*  
                move lk-cdoctec-ori to ORI-MDTE
                move lk-cdoctec-cle to CLE-MDTE
                move w-lig to LIG-MDTE
           MOVE 1 TO IND-STAT

              PERFORM UNTIL IND-STAT <> 1
                 read MXDOCTEC lock invalid exit paragraph
                 end-read
                 perform stat
                 MOVE "DOCUMENTATION TECHNIQUE" TO ScreenOccupe-Fic
                 MOVE CLE1-MDTE TO ScreenOccupe-Cle
                 PERFORM Mis-EnregOccupe
              END-PERFORM

           evaluate Screen1-Gd-1-TDZ-MCTC 

           when 1
           when 0
              MOVE W-VAL TO VAL-MDTE Screen1-Gd-1-VAL
           when 2
              PERFORM Screen1-Ef-VAL-Aft-Procedure
              PERFORM Format-Num
           when 3
           when 4
              move w-cho to V18-MDTE 
           when 5
              PERFORM Screen1-Ef-VAL-Aft-Procedure
              MOVE W-VALDAT TO Screen1-Gd-1-VAL 
           when 6
              MOVE W-LIB TO VAL-MDTEX VAL-MDTE
              UNSTRING W-LIB DELIMITED BY W-NEWLINE 
                 INTO Screen1-Gd-1-VAL
           END-EVALUATE

              rewrite ENR-MDTE
              perform stat

           if tdz-mctc = 6
              initialize enr-mdtex
                 move cle1-mdte to cle1-mdtex
              MOVE W-LIB TO VAL-MDTEX
              write enr-mdtex invalid 
                  rewrite enr-mdtex
                  end-rewrite
              end-write
              perform stat
              PERFORM MAJ-EVE-DOCTECEXT
           end-if

           if  Screen1-Gd-1-TDZ-MCTC = 6 
           AND W-DET = 1     
      *       Détail en grille et libellé changé -> réaffi grille
              PERFORM FillGrid
      *     ELSE
      *        if Screen1-Gd-1-TDZ-MCTC = 3 or 4
      *           perform Mep-Val
      *        end-if
      *        MODIFY Screen1-Gd-1(Screen1-Gd-1-Cursor-Y, COL-VAL),
      *           CELL-DATA Screen1-Gd-1-VAL
           END-IF
           PERFORM MAJ-DAT
      *     PERFORM ModeModification

           MOVE 0 TO W-MODIF
           .

       Modif-Detail.
      *------------*
           MOVE 1 TO W-MODIF
           MODIFY Screen2-Pb-Valider, VISIBLE 1   
           .
   
      * Bascule vers le mode "consultation"
       ModeConsultation.
           move "I" to CDF
           move 0 to IsModifying

           modify Screen1-Pb-Refresh, visible = 0
      *     modify Screen1-Pb-Profil, visible = 0
           modify Screen1-Pb-Plus, visible = 0
           modify Screen1-Pb-Delete, visible = 0
      *     modify Screen1-Pb-DOCMCT, VISIBLE = 0
           modify Screen1-Gd-1, NUM-ROWS = 0

           if (MODIF-PALM NOT = "X" and lk-cdoctec-cdf not = "I"
               AND AUTO-MOD NOT = 2)     
250510     OR (AUTO-MOD = 1)
              modify Screen1-Pb-Modify, visible = 1
           END-IF

           If MOB-PALM Not = Zero And LK-CDOCTEC-ORI = "BM"
              modify Screen1-Pb-Modify, visible = 0
           End-If

           unlock MXDOCTEC

           move 257 TO Screen1-Gd-1-Row-Highlight-Color
           modify Screen1-Gd-1(Screen1-Gd-1-Cursor-Y),
                 row-color = Screen1-Gd-1-Row-Highlight-Color

           MODIFY Screen1-Ef-VAL,  ENABLED 0
           MODIFY Screen1-Ef-VAL2, ENABLED 0
           MODIFY Screen1-Rb-1,    ENABLED 0
           MODIFY Screen1-Rb-2,    ENABLED 0
           MODIFY Screen1-Rb-3,    ENABLED 0
           MODIFY Screen1-Rb-4,    ENABLED 0
           MODIFY Screen1-Rb-5,    ENABLED 0
           MODIFY Screen1-Rb-6,    ENABLED 0
           MODIFY Screen1-Rb-7,    ENABLED 0
           MODIFY Screen1-Rb-8,    ENABLED 0
           MODIFY Screen1-Cm-CTCS, ENABLED 0

           IF W-ORI = 1 
              MODIFY Screen1-Pb-Check,   VISIBLE 0
              MODIFY Screen1-Pb-UnCheck, VISIBLE 0
              MODIFY Screen1-Pb-Invert,  VISIBLE 0
           END-IF
           .

       ModeModification.
           move "M" to CDF
           move 1 to IsModifying

           move 482 to Screen1-Gd-1-Row-Highlight-Color
           modify Screen1-Gd-1(Screen1-Gd-1-Cursor-Y),
                  row-color = Screen1-Gd-1-Row-Highlight-Color

           modify Screen1-Pb-Modify,  visible = 0
           modify Screen1-Pb-Refresh, visible = 1
           modify Screen1-Pb-PLUS   , visible = 1
           modify Screen1-Pb-Delete,  visible = 1
      *     IF MOB-PALM = 0
      *        modify Screen1-Pb-Profil, visible = 1
      *        modify Screen1-Pb-DOCMCT, VISIBLE = W-DOCMCT
      *     END-IF

           move COL-CTE to Screen1-Gd-1-Cursor-X
           modify Screen1-Gd-1, CURSOR-X = Screen1-Gd-1-Cursor-X
           modify Screen1-Gd-1, ENABLED 1, NUM-ROWS = -1
           MODIFY Screen1-Cb-DET, ENABLED 1

           IF W-ORI = 1 
      *       Sélection multiple pour suppression groupée
              MODIFY Screen1-Pb-Check,   VISIBLE 1
              MODIFY Screen1-Pb-UnCheck, VISIBLE 1
              MODIFY Screen1-Pb-Invert,  VISIBLE 1
           END-IF

           INQUIRE Screen1-Gd-1,
              LAST-ROW IN W-LAST-ROW

           IF W-LAST-ROW > 1     
              MOVE 1 TO WENABLE
           ELSE
              MOVE 0 TO WENABLE
           END-IF
           .

       FillGrid.
           modify Screen1-Gd-1, reset-grid = 1
           perform Acu-Screen1-Gd-1-Content
           
           IF W-ORI NOT = 1
      *       Cache colonne sélection
              MODIFY Screen1-Gd-1,
                 DISPLAY-COLUMNS (1, 2, 10, 40, 44, 129, 129), 
                 COLUMN-DIVIDERS (0, 1, 1, 1, 1, 1, 1)
              MODIFY Screen1-Gd-1(1, 1), 
                 CELL-DATA = SPACE
           END-IF

           IF lk-cdoctec-ori = "V"
              perform FillGridDocMat
           else
              perform FillGridDocTec
           end-if

           if w-row = 1 
              modify Screen1-Gd-1, ENABLED 0
              perform Efface-Rb
              modify Screen1-Ef-VAL, VISIBLE 0
              modify Screen1-Ef-VAL2, VISIBLE 0
              MODIFY Screen1-La-LIBCOD, TITLE space
              MODIFY Screen1-La-LIBUSA, title space
      *        MODIFY Screen1-Ef-COD, VALUE space
           else
              modify Screen1-Gd-1, ENABLED 1
           END-IF.


      *
      *    affichage grille documentation autre que matériel  
      *
       FillGridDocTec.
           move 1 to w-row
           move 0 to w-eof d-lig d-ran
                     Screen1-Gd-1-Cursor-Y

           move lk-cdoctec-ori to ORI-MDTE
           move lk-cdoctec-cle to CLE-MDTE
           move 0 to RAN-MDTE
           start MXDOCTEC key >= CLE2-MDTE invalid move 1 to w-eof
           end-start
           PERFORM STAT

           perform until w-eof = 1
             read MXDOCTEC next end move 1 to w-eof
             end-read
             PERFORM STAT
             if ORI-MDTE not = lk-cdoctec-ori
             or CLE-MDTE not = lk-cdoctec-cle
                move 1 to w-eof
             end-if
             if w-eof = 0
               if LIG-MDTE = 0
                 move DAT-MDTE to d-samj perform Convdat-Samj-Jmsa
                 move l-dat8 to w-dat
                 move AUT-MDTE TO w-aut
               else
                 MOVE SPACE TO Screen1-Gd-1-Record enr-mctc enr-mdtex
                 move CTE-MDTE to COD-MCTC
                 read MXCARTEC 
                 end-read
                 perform stat
                 move CTE-MDTE to Screen1-Gd-1-CTE
                 move LIB-MCTC to Screen1-Gd-1-LIB-MCTC
                 if USA-MCTC < 4     
                    move usage-Zone(USA-MCTC + 1) 
                      to Screen1-Gd-1-USA-MCTC
                 end-if
                 move TDZ-MCTC to Screen1-Gd-1-TDZ-MCTC

                 if  TDZ-MCTC = 6
                    move cle1-mdte to cle1-mdtex
                    read mxdoctecext
280510                  invalid move val-mdte to val-mdtex
280510              end-read
                    perform stat
                 end-if

                 if  TDZ-MCTC = 6
                 AND W-DET = 1     
      *             Alpha et détail en grille
                    UNSTRING VAL-MDTEX DELIMITED BY W-NEWLINE
                       INTO W-LIB
                 END-IF

                 if w-gr = reg-mctc
                 or w-reg = 0   

                    if  TDZ-MCTC = 6 
                    AND W-DET = 1 
                    AND (    VAL-MDTEX(81:) <> SPACE
                       OR VAL-MDTEX      <> W-LIB )     
      *             Plus d'une ligne à afficher -> découpe
                       MOVE 3 TO EDCO-COMPTE
                       COPY "W:/mx/copy/edicomment.cbl" REPLACING
                       ==DCN-PROC== BY ==Ligne-Doc==
                       ==DCN-VAR==  BY ==Screen1-Gd-1-VAL==   
                       ==DCN-NBCP== BY ==80==           
                       ==DCN-NBCB== BY ==80==    
                       ==LIB-MCMO== BY ==VAL-MDTEX==.           
                    ELSE
                       perform Mep-Val
                       add 1 to w-row
                       modify Screen1-Gd-1,
                       record-to-add = Screen1-Gd-1-Record,
                       y = w-row, x = COL-CTE, hidden-data = LIG-MDTE
                       IF  LIG-MDTE = W-LIG 
                       AND Screen1-Gd-1-Cursor-Y = 0     
                          MOVE w-row TO Screen1-Gd-1-Cursor-Y
                       END-IF
                    END-IF
                 end-if

                 if LIG-MDTE > D-LIG 
                    MOVE LIG-MDTE TO D-LIG
                 END-IF
                 MOVE RAN-MDTE TO D-RAN
               end-if
             end-if
           end-perform

           IF W-ROW = 1     
              MOVE SPACE TO Screen1-Gd-1-Record
           ELSE

              IF Screen1-Gd-1-Cursor-Y <> 0     
                 MOVE Screen1-Gd-1-Cursor-Y TO Event-Data-2
              ELSE
                 MOVE 2 TO Event-Data-2
              END-IF

              MODIFY Screen1-Gd-1,
                 CURSOR-Y Event-Data-2 
              MOVE 0 TO Screen1-Gd-1-Cursor-Y-Old
              PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
           END-IF
           .

      *
      *    affichage grille documentation matériel  
      *
       FillGridDOCMAT.
           .

       Mep-Val.
           evaluate TDZ-MCTC
               when 1 
               when 0 move val-mdte to Screen1-Gd-1-VAL
               when 2 PERFORM Format-Num
               when 3 if v18-mdte = 1 
                           move "Oui" to Screen1-Gd-1-VAL
                      else move "Non" to Screen1-Gd-1-VAL
                      end-if
               when 4 move cte-mdte to cod-mctcs
                      move v18-mdte to ord-mctcs
                      read mxcartecs invalid 
                          move "???" to lib-mctcs
                      end-read
                      perform stat
030315* au cas ou on a changé le type de CTE comme chez PRIMAULT :-(
                      IF VAL-MDTE(1:18) NOT NUMERIC
                         MOVE VAL-MDTE TO LIB-MCTCS
                      END-IF
030315
                      move lib-mctcs to Screen1-Gd-1-VAL
               when 5 move dat-mdte to d-samj
                      perform convdat-samj-jmsa
                      move l-dat8 to Screen1-Gd-1-VAL
               when 6 UNSTRING VAL-MDTEX DELIMITED BY W-NEWLINE
                      INTO Screen1-Gd-1-VAL
           end-evaluate
           .
       Ligne-Doc.
      *---------* Découpe la doc en lignes de grille
           add 1 to w-row

           IF LIG-MDTE = W-LIG
           AND Screen1-Gd-1-Cursor-Y = 0     
              MOVE w-row TO Screen1-Gd-1-Cursor-Y
           END-IF

           IF EDCO-NB = 2     
              MOVE SPACE TO Screen1-Gd-1-CTE
                            Screen1-Gd-1-LIB-MCTC 
                            Screen1-Gd-1-USA-MCTC 
           END-IF 

           modify Screen1-Gd-1,
              record-to-add = Screen1-Gd-1-Record,
              y = w-row, x = COL-CTE, hidden-data = LIG-MDTE

           IF EDCO-NB = 2     
      *       Plus d'une ligne -> 1ère ligne marquée (si une seule ligne pas de HIDDEN-DATA)
              modify Screen1-Gd-1(w-row - 1, COL-VAL), 
                 hidden-data 1
           END-IF 
           
           IF EDCO-NB >= 2     
      *       Plus d'une ligne
              modify Screen1-Gd-1(w-row, COL-VAL), 
                 hidden-data 2
           END-IF
           .

       Rech-Premiere.
      *-------------* Recherche première ligne libellé
           MOVE 0 TO W-TROUVE

           PERFORM VARYING W-LIGNE FROM W-ROW BY -1
              UNTIL W-LIGNE < 2
                 OR W-TROUVE <> 0 

              INQUIRE Screen1-Gd-1(W-LIGNE, COL-VAL),
                 HIDDEN-DATA W-ENT

              IF W-ENT = 1     
                 MOVE W-LIGNE TO W-TROUVE
              END-IF

           END-PERFORM

           IF W-TROUVE <> 0     
              MOVE W-TROUVE TO W-ROW
           END-IF
           .

       Format-Num.
      *----------*
           move space to wft-zone

           move VAL-MDTE to WDT-VAL
           evaluate DEC-MCTC 
           WHEN 1 
              MOVE WDT-V17 TO R1-WDT-AFF
           WHEN 2 
              MOVE WDT-V16 TO R2-WDT-AFF
           WHEN 3 
              move WDT-V15 TO R3-WDT-AFF
           WHEN 4 
              move WDT-V14 TO R4-WDT-AFF
           WHEN 5 
              move WDT-V13 TO R5-WDT-AFF
           WHEN OTHER
              move WDT-V18 TO R0-WDT-AFF
           end-evaluate
           MOVE WDT-AFF TO Screen1-Gd-1-VAL
           .

       Aff-Detail.
      *----------*
           move CTE-MDTE to COD-MCTC
           read MXCARTEC invalid move space to enr-mctc
           end-read
           perform stat

           MODIFY Screen1-La-LIBCOD, TITLE LIB-MCTC
211016     IF USA-MCTC < 5 THEN
              MOVE Usage-Zone2(USA-MCTC + 1) TO W-USA-MCTC
211016    
           ELSE
      *       MODEMA Bug out of bound
              MOVE SPACE TO W-USA-MCTC
           END-IF
211016
           MODIFY Screen1-La-LIBUSA, TITLE W-USA-MCTC

           evaluate TDZ-MCTC 
           when 1   | alpha
           when 0
              MODIFY Screen1-Ef-VAL2, VISIBLE 0
              PERFORM EFFACE-RB
              MODIFY Screen1-Ef-VAL, VISIBLE 1, VALUE VAL-MDTE,
                     max-text = LDZ-MCTC, size ws2
              MOVE VAL-MDTE TO W-LIB
           when 2   | num
              MODIFY Screen1-Ef-VAL2, VISIBLE 0
              PERFORM EFFACE-RB
              PERFORM Format-Num
              MODIFY Screen1-Ef-VAL, VISIBLE 1, VALUE Screen1-Gd-1-VAL,
                     max-text = 20, size ws1
           when 3   | binaire
              MODIFY Screen1-Ef-VAL2, VISIBLE 0
              MODIFY Screen1-Ef-VAL, VISIBLE 0
              PERFORM EFFACE-RB
              MOVE V18-MDTE TO W-CHO
              MODIFY Screen1-Rb-1, 
                   VISIBLE 1, TITLE "Oui", VALUE W-CHO
              MODIFY Screen1-Rb-2, 
                   VISIBLE 1, TITLE "Non", VALUE W-CHO
           when 4   | choix
              MODIFY Screen1-Ef-VAL2, VISIBLE 0
              MODIFY Screen1-Ef-VAL, VISIBLE 0
              MOVE V18-MDTE TO W-CHO
              PERFORM AFFICHE-RB
           when 5   | date
              MODIFY Screen1-Ef-VAL2, VISIBLE 0
              MOVE DAT-MDTE TO D-SAMJ
              perform convdat-samj-jmsa
              MODIFY Screen1-Ef-VAL, VISIBLE 1, value l-dat8,
                     max-text = 10, size ws1
              PERFORM EFFACE-RB
           when 6   | alpha étendu
              MODIFY Screen1-Ef-VAL, VISIBLE 0
              PERFORM EFFACE-RB
              MODIFY Screen1-Ef-VAL2, VISIBLE 1, VALUE VAL-MDTEX
              MOVE VAL-MDTEX TO W-LIB
           END-EVALUATE
           MOVE 0 TO W-MODIF
           .

       Efface-Rb.
           MODIFY Screen1-Rb-1, VISIBLE 0
           MODIFY Screen1-Rb-2, VISIBLE 0
           MODIFY Screen1-Rb-3, VISIBLE 0
           MODIFY Screen1-Rb-4, VISIBLE 0
           MODIFY Screen1-Rb-5, VISIBLE 0
           MODIFY Screen1-Rb-6, VISIBLE 0
           MODIFY Screen1-Rb-7, VISIBLE 0
           MODIFY Screen1-Rb-8, VISIBLE 0
           MODIFY Screen1-Cm-CTCS, VISIBLE 0
           MODIFY Screen1-La-VALBAD, VISIBLE 0
           .

       Affiche-Rb.
           move 9 to i perform lect-mxcartecs
           if lib-mctcs not = space
290515        
              IF cod-mctc <> WCTE-MXCARTECS THEN
                 MOVE 0 TO Cm-MCTCS-LoadedItems 
              END-IF
290515
              move cod-mctc to WCTE-MXCARTECS
              perform Screen1-Cm-CTCS-Refresh
              exit paragraph
           end-if

           move 1 to i perform lect-mxcartecs
           if lib-mctcs = space
                MODIFY Screen1-Rb-1, VISIBLE 0
           else MODIFY Screen1-Rb-1, VISIBLE 1, TITLE lib-mctcs
                       value w-cho
           end-if
           move 2 to i perform lect-mxcartecs
           if lib-mctcs = space
                MODIFY Screen1-Rb-2, VISIBLE 0
           else MODIFY Screen1-Rb-2, VISIBLE 1, TITLE lib-mctcs
                       value w-cho
           end-if
           move 3 to i perform lect-mxcartecs
           if lib-mctcs = space
                MODIFY Screen1-Rb-3, VISIBLE 0
           else MODIFY Screen1-Rb-3, VISIBLE 1, TITLE lib-mctcs
                       value w-cho
           end-if
           move 4 to i perform lect-mxcartecs
           if lib-mctcs = space
                MODIFY Screen1-Rb-4, VISIBLE 0
           else MODIFY Screen1-Rb-4, VISIBLE 1, TITLE lib-mctcs
                       value w-cho
           end-if
           move 5 to i perform lect-mxcartecs
           if lib-mctcs = space
                MODIFY Screen1-Rb-5, VISIBLE 0
           else MODIFY Screen1-Rb-5, VISIBLE 1, TITLE lib-mctcs
                       value w-cho
           end-if
           move 6 to i perform lect-mxcartecs
           if lib-mctcs = space
                MODIFY Screen1-Rb-6, VISIBLE 0
           else MODIFY Screen1-Rb-6, VISIBLE 1, TITLE lib-mctcs
                       value w-cho
           end-if
           move 7 to i perform lect-mxcartecs
           if lib-mctcs = space
                MODIFY Screen1-Rb-7, VISIBLE 0
           else MODIFY Screen1-Rb-7, VISIBLE 1, TITLE lib-mctcs
                       value w-cho
           end-if
           move 8 to i perform lect-mxcartecs
           if lib-mctcs = space
                MODIFY Screen1-Rb-8, VISIBLE 0
           else MODIFY Screen1-Rb-8, VISIBLE 1, TITLE lib-mctcs
                       value w-cho
           end-if
           modify Screen1-Cm-CTCS, VISIBLE 0
030315* au cas ou on a changé le type de CTE comme chez PRIMAULT :-(
           IF VAL-MDTE(1:18) NOT NUMERIC
              MODIFY Screen1-La-VALBAD, TITLE VAL-MDTE, VISIBLE 1
           ELSE
              MODIFY Screen1-La-VALBAD, TITLE SPACE, VISIBLE 0
           END-IF
030315
           .              

       Screen1-Cm-CTCS-Refresh.
           modify Screen1-Cm-CTCS, VISIBLE 1
           move w-cho to Cm-MCTCS-SelectedItem
           COPY "W:/mx/copy/Cm-MCTCS.cbl"
                REPLACING ==DCN-COMBO== BY ==Screen1-Cm-CTCS==.
           MODIFY Screen1-Rb-1, VISIBLE 0
           MODIFY Screen1-Rb-2, VISIBLE 0
           MODIFY Screen1-Rb-3, VISIBLE 0
           MODIFY Screen1-Rb-4, VISIBLE 0
           MODIFY Screen1-Rb-5, VISIBLE 0
           MODIFY Screen1-Rb-6, VISIBLE 0
           MODIFY Screen1-Rb-7, VISIBLE 0
           MODIFY Screen1-Rb-8, VISIBLE 0
           MODIFY Screen1-La-VALBAD, VISIBLE 0.

       Screen2-Cm-CTCS-Refresh.
           MOVE 1 TO W-PLUS8
           modify Screen2-Cm-CTCS, VISIBLE 1
           move w-cho to Cm-MCTCS-SelectedItem W-CHO8
           COPY "W:/mx/copy/Cm-MCTCS.cbl"
                REPLACING ==DCN-COMBO== BY ==Screen2-Cm-CTCS==.
           MODIFY Screen2-Rb-1, VISIBLE 0
           MODIFY Screen2-Rb-2, VISIBLE 0
           MODIFY Screen2-Rb-3, VISIBLE 0
           MODIFY Screen2-Rb-4, VISIBLE 0
           MODIFY Screen2-Rb-5, VISIBLE 0
           MODIFY Screen2-Rb-6, VISIBLE 0
           MODIFY Screen2-Rb-7, VISIBLE 0
           MODIFY Screen2-Rb-8, VISIBLE 0.

       Lect-Mxcartecs.
           move space to enr-mctcs
           move cod-mctc to cod-mctcs
           move i to ord-mctcs
           read MXCARTECS 
           perform stat.

       Efface-Detail.
      *-------------*
      *     MODIFY Screen1-Ef-COD,
      *        VALUE SPACE
           MODIFY Screen1-La-LIBCOD,
              TITLE SPACE
           MODIFY Screen1-La-LIBUSA,
              TITLE SPACE
           MODIFY Screen1-Ef-VAL2,
              VISIBLE 0
           MODIFY Screen1-Ef-VAL,
              VISIBLE 0
           .
      ******************************************************************
       DSUPP-PLUSLIGNES.
           MOVE 0 TO I-T 
           INQUIRE Screen1-Gd-1, LAST-ROW W-LAST-ROW
           MOVE 1 TO Screen1-Gd-1-Cursor-Y
           .
       BSUPP-PLUSLIGNES.
           ADD 1 TO Screen1-Gd-1-Cursor-Y
           IF Screen1-Gd-1-Cursor-Y > W-LAST-ROW GO FSUPP-PLUSLIGNES.
310714
           inquire Screen1-Gd-1(Screen1-Gd-1-Cursor-Y, COL-CTE),
              record-data in Screen1-Gd-1-Record
310714
           IF  W-DET = 1 
           AND Screen1-Gd-1-TDZ-MCTC = 6     
              INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y, COL-VAL),
                 HIDDEN-DATA W-ENT
           END-IF

           INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y, COL-SEL),
                   HIDDEN-DATA W-SEL
           IF W-SEL = "S" 
              MOVE Screen1-Gd-1-Cursor-Y TO W-ROW
              PERFORM SUPP-UNELIGNE
              SUBTRACT 1 FROM Screen1-Gd-1-Cursor-Y
              ADD 1 TO I-T
           END-IF
           GO BSUPP-PLUSLIGNES   
           .
       FSUPP-PLUSLIGNES.
           .
      *-----------------------------------------------------------------
       SUPP-UNELIGNE.
310714
           IF  W-DET = 1 AND Screen1-Gd-1-TDZ-MCTC = 6     
              INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y, COL-VAL),
                 HIDDEN-DATA W-ENT

              IF W-ENT = 2     
      *          Pas première ligne du détail
                 PERFORM Rech-Premiere
                 MOVE W-ROW TO Screen1-Gd-1-Cursor-Y
              END-IF

           END-IF
310714
              MOVE LK-CDOCTEC-ORI TO ORI-MDTE
              MOVE LK-CDOCTEC-CLE TO CLE-MDTE
              INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y, COL-CTE),
                      HIDDEN-DATA IN LIG-MDTE
              READ MXDOCTEC LOCK INVALID 
                 MOVE "Erreur lecture DOCTEC" TO Acu-Msg-1
                 MOVE CLE1-MDTE TO Acu-Msg-2
                 PERFORM MSG-ERREUR
                 EXIT PARAGRAPH
              END-READ
              PERFORM STAT
              IF IND-STAT = 1     
                 MOVE "DOCUMENTATION TECHNIQUE" TO ScreenOccupe-Fic
                 MOVE CLE1-MDTE TO ScreenOccupe-Cle
                 PERFORM Mis-EnregOccupe
                 GO SUPP-UNELIGNE
              END-IF

              DELETE MXDOCTEC INVALID
                 MOVE "Erreur suppression DOCTEC" TO Acu-Msg-1
                 MOVE CLE1-MDTE TO Acu-Msg-2
                 PERFORM MSG-ERREUR
                 EXIT PARAGRAPH
              END-DELETE

              PERFORM STAT
              MOVE CLE1-MDTE TO CLE1-MDTEX
      
           MOVE 1 TO IND-STAT

           PERFORM
              UNTIL IND-STAT <> 1

              READ MXDOCTECEXT LOCK
              INVALID
                 MOVE 0 TO W-TROUVE
              NOT INVALID
                 MOVE 1 TO W-TROUVE
              END-READ

              PERFORM STAT
              MOVE "EXTENSION DOC MATERIEL" TO ScreenOccupe-Fic
              MOVE CLE1-MDTEX TO ScreenOccupe-Cle
              PERFORM Mis-EnregOccupe
           END-PERFORM

           IF W-TROUVE = 1 THEN
              DELETE MXDOCTECEXT
              PERFORM STAT
           END-IF
      
           MODIFY Screen1-Gd-1, RECORD-TO-DELETE W-ROW
           SUBTRACT 1 FROM W-LAST-ROW

           IF  W-DET = 1 
           AND Screen1-Gd-1-TDZ-MCTC = 6 
           AND W-ENT <> 0     
      *       Supprime les lignes suivantes de l'enrt
              PERFORM UNTIL W-ROW > W-LAST-ROW
310714*           INQUIRE Screen1-Gd-1(W-LIGNE, COL-VAL),
310714           INQUIRE Screen1-Gd-1(W-ROW, COL-VAL),
                    HIDDEN-DATA W-ENT
                 IF W-ENT = 2     
      *             Lignes suivantes
                    MODIFY Screen1-Gd-1, 
310714*                 RECORD-TO-DELETE W-LIGNE
310714                 RECORD-TO-DELETE W-ROW 
                    SUBTRACT 1 FROM W-LAST-ROW
                 ELSE
                    EXIT PERFORM
                 END-IF
              END-PERFORM
           END-IF
           .

      * Aff-Pb-SUPSEL.
      *-------------*
      *     IF W-NB-SEL = 0     
      *        MOVE 0 TO WVISIBLE
      *     ELSE
      *        MOVE 1 TO WVISIBLE
      *     END-IF
      *
      *     MODIFY Screen1-Pb-SUPSEL,
      *        VISIBLE WVISIBLE
           .

       MAJ-DAT.
      *-------*
      *      Date maj
                initialize ENR-MDTE
                move lk-cdoctec-ori to ORI-MDTE
                move lk-cdoctec-cle to CLE-MDTE
                move 0 to LIG-MDTE RAN-MDTE
                MOVE 1 TO IND-STAT
                PERFORM UNTIL IND-STAT <> 1
                   READ MXDOCTEC LOCK INVALID
                      WRITE ENR-MDTE
                   END-READ
                   PERFORM STAT
                   MOVE "DOCUMENTATION TECHNIQUE" TO ScreenOccupe-Fic
                   MOVE CLE1-MDTE TO ScreenOccupe-Cle
                   PERFORM Mis-EnregOccupe
                END-PERFORM
                accept DAT-MDTE from century-date
                move DAT-MDTE to D-SAMJ perform Convdat-Samj-Jmsa
                move L-DAT8 TO W-DAT
                move IDE-PALM to W-AUT AUT-MDTE
                rewrite ENR-MDTE 
                perform stat

           PERFORM ShowMaj
           .

       ShowMaj.
           modify Screen1-la-Dat, title = w-dat
           modify Screen1-la-Aut, title = w-aut.
           .

       Maj-Rang.
      *--------*
           IF W-MODIF-RAN = 1                
      *       met à jour rang en sortie
              INQUIRE Screen1-Gd-1,
                 LAST-ROW IN W-LAST-ROW
              MOVE 0 TO W-RAN W-LIG2
              PERFORM VARYING I FROM 2 BY 1
                 UNTIL I > W-LAST-ROW
                 inquire Screen1-Gd-1(I, COL-CTE),
                    hidden-data in w-lig


                 IF W-LIG <> W-LIG2     
                    MOVE W-LIG TO W-LIG2
                    ADD 1 TO W-RAN  
 
                       move lk-cdoctec-ori to ORI-MDTE
                       move lk-cdoctec-cle to CLE-MDTE
                       move w-lig          to LIG-MDTE
                       MOVE 1 TO IND-STAT
                       PERFORM UNTIL IND-STAT <> 1
                          READ MXDOCTEC LOCK INVALID
                             MOVE 9 TO IND-STAT
                          END-READ
                          PERFORM STAT
                          MOVE "DOCUMENTATION TECHNIQUE" 
                            TO ScreenOccupe-Fic
                          MOVE CLE1-MDTE TO ScreenOccupe-Cle

                          PERFORM Mis-EnregOccupe
                       END-PERFORM
                       IF IND-STAT <> 9     
                          MOVE W-RAN TO RAN-MDTE
                          REWRITE ENR-MDTE
                          PERFORM STAT
                       END-IF

                 END-IF
              END-PERFORM

              inquire Screen1-Gd-1(Screen1-Gd-1-Cursor-Y, COL-CTE),
                 record-data in Screen1-Gd-1-Record,
                 hidden-data in w-lig
                 move lk-cdoctec-ori to ORI-MDTE
                 move lk-cdoctec-cle to CLE-MDTE
                 move w-lig to LIG-MDTE
                 read MXDOCTEC 
                 perform stat
              MOVE 0 TO W-MODIF-RAN
           END-IF
           .
           
      *
           

       Mis-EnregOccupe.
      *---------------*
           COPY "W:/mistral/COPY/Mis-EnregOccupe.cbl". 
           .

       Remp-Onglet.
           .
      *
       Screen1-Ta-1-Aft-Tabchg-Display.
           if Screen1-Ta-1-Value > 0 and < 11
              move elt-gr(Screen1-Ta-1-Value) to w-gr
080914     ELSE
              MOVE SPACE TO W-GR
           end-if
           perform FillGrid
           .
      *
       Screen1-Ta-1-Bef-Tabchg-Display.

      *
       Screen1-Cb-REG-Link.
           inquire Screen1-Cb-REG,  value w-reg
           modify Screen1-Ta-1, VISIBLE w-reg
           IF W-REG = 0 
                MOVE SPACE TO W-GR
           ELSE inquire Screen1-Ta-1, VALUE NUM-GR
                move elt-gr(NUM-GR) to w-gr 
           end-if
           perform FillGrid
           .
      *
       Screen1-Pb-Delete-LinkTo.
           IF W-ORI = 1
              MOVE 0 TO J-T
              INQUIRE Screen1-Gd-1, LAST-ROW W-LAST-ROW
              PERFORM VARYING I-T FROM 2 BY 1 UNTIL I-T > W-LAST-ROW
                 INQUIRE Screen1-Gd-1(I-T, COL-SEL), HIDDEN-DATA W-SEL
                 IF W-SEL = "S" ADD 1 TO J-T
                 END-IF
              END-PERFORM
              IF J-T = 0
                MOVE
              "Confirmez-vous la suppression de la ligne sélectionnée ?"
                TO Acu-Msg-1
                PERFORM MSG-ON
                IF Acu-Return-Value NOT = 1
                   EXIT PARAGRAPH
                END-IF
                MOVE Screen1-Gd-1-Cursor-Y TO W-ROW
                PERFORM SUPP-UNELIGNE
              ELSE
                MOVE
              "Confirmez-vous la suppression des lignes sélectionnées ?"
                TO Acu-Msg-1
                PERFORM MSG-ON
                IF Acu-Return-Value NOT = 1
                   EXIT PARAGRAPH
                END-IF
                PERFORM DSUPP-PLUSLIGNES THRU FSUPP-PLUSLIGNES
              END-IF
           ELSE
              IF Screen1-Gd-1-Cursor-Y = 0
                 MOVE "Veuillez sélectionner la ligne à supprimer."
                 TO Acu-Msg-1
                 PERFORM MSG-INFO
                 EXIT PARAGRAPH
              END-IF
              MOVE
              "Confirmez-vous la suppression de la ligne sélectionnée ?"
              TO Acu-Msg-1
              PERFORM MSG-ON
              IF Acu-Return-Value NOT = 1
                 EXIT PARAGRAPH
              END-IF
              MOVE Screen1-Gd-1-Cursor-Y TO W-ROW
              PERFORM SUPP-UNELIGNE
           END-IF
           MOVE 0 TO Screen1-Gd-1-Cursor-Y
           IF W-ROW > W-LAST-ROW     
                MOVE W-LAST-ROW TO Event-Data-2
           ELSE MOVE W-ROW TO Event-Data-2
           END-IF
           if event-data-2 = Screen1-Gd-1-Cursor-Y-Old
                move 0 to Screen1-Gd-1-Cursor-Y-Old
           end-if
           MODIFY Screen1-Gd-1, CURSOR-Y Event-Data-2 
           PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
           .

       Maj-Eve.

       Maj-Eve-DOCTECEXT.

      
      ******************************************************************
      * ECRAN 2

       Screen2-Bef-Create.
      *------------------*

           move CTE-MDTE to COD-MCTC
           read MXCARTEC invalid move space to enr-mctc
           end-read
           perform stat

           MOVE Usage-Zone2(USA-MCTC + 1) TO W-USA-MCTC

           MOVE 0 TO Screen2-V-RB Screen2-V-VAL Screen2-V-VAL2
                     Screen2-V-RB12

           evaluate TDZ-MCTC 
           when 1   | alpha
           when 0
              MOVE 1 TO Screen2-V-VAL
              MODIFY Screen2-Ef-VAL, VALUE VAL-MDTE,
                     max-text = LDZ-MCTC, size ws2
              MOVE VAL-MDTE TO W-LIB
           when 2   | num
              MOVE 1 TO Screen2-V-VAL
              PERFORM Format-Num
              MODIFY Screen2-Ef-VAL, VALUE Screen1-Gd-1-VAL,
                     max-text = 20, size ws1
           when 3   | binaire
              MOVE 1 TO Screen2-V-RB12
              MOVE V18-MDTE TO W-CHO
              MODIFY Screen2-Rb-1, 
                   VISIBLE 1, TITLE "Oui", VALUE W-CHO
              MODIFY Screen2-Rb-2, 
                   VISIBLE 1, TITLE "Non", VALUE W-CHO
           when 4   | choix
              MOVE 1 TO Screen2-V-RB
              MOVE V18-MDTE TO W-CHO
           when 5   | date
              MOVE 1 TO Screen2-V-VAL
              MOVE DAT-MDTE TO D-SAMJ
              perform convdat-samj-jmsa
              MODIFY Screen2-Ef-VAL, VISIBLE 1, value l-dat8,
                     max-text = 10, size ws1
           when 6   | alpha étendu
              MOVE 1 TO Screen2-V-VAL2
              MOVE VAL-MDTEX TO W-LIB
           END-EVALUATE
280515     MOVE 0 TO Cm-MCTCS-LoadedItems 
           .

      *
       Screen2-Aft-Initdata.
190419*     MOVE Screen2-Handle TO WCF-HANDLE-FS  PB CHOUFFOT ? 
190419*     PERFORM CentreFenetre
120819
           MOVE Screen2-Handle TO MCF-HANDLE-FS
           PERFORM MisCentreFenetre
120819
270313     MOVE ZERO TO Cm-MCTCS-LoadedItems
           evaluate TDZ-MCTC 
           when 1   | alpha
           when 0
              MODIFY Screen2-Ef-VAL, VALUE VAL-MDTE,
                     max-text = LDZ-MCTC, size ws2
           when 2   | num
              MODIFY Screen2-Ef-VAL, VALUE Screen1-Gd-1-VAL,
                     max-text = 20, size ws1
           when 3   | binaire
              MODIFY Screen2-Rb-1, 
                   VISIBLE 1, TITLE "Oui", VALUE W-CHO
              MODIFY Screen2-Rb-2, 
                   VISIBLE 1, TITLE "Non", VALUE W-CHO
           when 4   | choix
              PERFORM AFFICHE-RB2
           when 5   | date
              MOVE DAT-MDTE TO D-SAMJ
              perform convdat-samj-jmsa
              MODIFY Screen2-Ef-VAL, VISIBLE 1, value l-dat8,
                     max-text = 10, size ws1
           when 6 
              move 4 to accept-control
              move 23 to control-id
           END-EVALUATE
           MOVE 0 TO W-MODIF
           .

       Affiche-Rb2.
           move 9 to i perform lect-mxcartecs
           if lib-mctcs not = space
              move cod-mctc to WCTE-MXCARTECS
              perform Screen2-Cm-CTCS-Refresh
              exit paragraph
           end-if
           MOVE 0 TO W-PLUS8

           move 1 to i perform lect-mxcartecs
           if lib-mctcs = space
                MODIFY Screen2-Rb-1, VISIBLE 0
           else MODIFY Screen2-Rb-1, VISIBLE 1, TITLE lib-mctcs
                       value w-cho
           end-if
           move 2 to i perform lect-mxcartecs
           if lib-mctcs = space
                MODIFY Screen2-Rb-2, VISIBLE 0
           else MODIFY Screen2-Rb-2, VISIBLE 1, TITLE lib-mctcs
                       value w-cho
           end-if
           move 3 to i perform lect-mxcartecs
           if lib-mctcs = space
                MODIFY Screen2-Rb-3, VISIBLE 0
           else MODIFY Screen2-Rb-3, VISIBLE 1, TITLE lib-mctcs
                       value w-cho
           end-if
           move 4 to i perform lect-mxcartecs
           if lib-mctcs = space
                MODIFY Screen2-Rb-4, VISIBLE 0
           else MODIFY Screen2-Rb-4, VISIBLE 1, TITLE lib-mctcs
                       value w-cho
           end-if
           move 5 to i perform lect-mxcartecs
           if lib-mctcs = space
                MODIFY Screen2-Rb-5, VISIBLE 0
           else MODIFY Screen2-Rb-5, VISIBLE 1, TITLE lib-mctcs
                       value w-cho
           end-if
           move 6 to i perform lect-mxcartecs
           if lib-mctcs = space
                MODIFY Screen2-Rb-6, VISIBLE 0
           else MODIFY Screen2-Rb-6, VISIBLE 1, TITLE lib-mctcs
                       value w-cho
           end-if
           move 7 to i perform lect-mxcartecs
           if lib-mctcs = space
                MODIFY Screen2-Rb-7, VISIBLE 0
           else MODIFY Screen2-Rb-7, VISIBLE 1, TITLE lib-mctcs
                       value w-cho
           end-if
           move 8 to i perform lect-mxcartecs
           if lib-mctcs = space
                MODIFY Screen2-Rb-8, VISIBLE 0
           else MODIFY Screen2-Rb-8, VISIBLE 1, TITLE lib-mctcs
                       value w-cho
           end-if
           .

      *
       Screen2-Rb-1-Ev-Cmd-Clicked.
           PERFORM Modif-Detail
           MOVE 1 TO W-CHO
           .
      *
       Screen2-Rb-2-Ev-Cmd-Clicked.
           PERFORM Modif-Detail
           MOVE 2 TO W-CHO
           .
      *
       Screen2-Rb-3-Ev-Cmd-Clicked.
           PERFORM Modif-Detail
           MOVE 3 TO W-CHO
           .
      *
       Screen2-Rb-4-Ev-Cmd-Clicked.
           PERFORM Modif-Detail
           MOVE 4 TO W-CHO
           .
      *
       Screen2-Rb-5-Ev-Cmd-Clicked.
           PERFORM Modif-Detail
           MOVE 5 TO W-CHO
           .
      *
       Screen2-Rb-6-Ev-Cmd-Clicked.
           PERFORM Modif-Detail
           MOVE 6 TO W-CHO
           .
      *
       Screen2-Rb-7-Ev-Cmd-Clicked.
           PERFORM Modif-Detail
           MOVE 7 TO W-CHO
           .
      *
       Screen2-Rb-8-Ev-Cmd-Clicked.
           PERFORM Modif-Detail
           MOVE 8 TO W-CHO
           .

      *
       Screen2-Pb-Annuler-Link.
           if w-modif = 0 
              PERFORM Acu-Screen2-Exit
              exit paragraph
           end-if
           move "Attention! Souhaitez-vous annuler vos modifications ?"
           to acu-msg-1
           move 2 to acu-default-button
           perform msg-on
           if acu-return-value = 2 exit paragraph
           end-if
280515     MOVE 0 TO Cm-MCTCS-LoadedItems 
           PERFORM Acu-Screen2-Exit
           .
      *
       Screen2-Pb-Valider-Link.
           IF W-MODIF = 0 EXIT PARAGRAPH
           END-IF
           move lk-cdoctec-ori to ORI-MDTE
           move lk-cdoctec-cle to CLE-MDTE
           move w-lig to LIG-MDTE

           MOVE 1 TO IND-STAT

              PERFORM UNTIL IND-STAT <> 1
                 read MXDOCTEC lock invalid exit paragraph
                 end-read
                 perform stat
                 MOVE "DOCUMENTATION TECHNIQUE" TO ScreenOccupe-Fic
                 MOVE CLE1-MDTE TO ScreenOccupe-Cle
                 PERFORM Mis-EnregOccupe
              END-PERFORM

           INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y, COL-CTE),
                 CELL-DATA Screen1-Gd-1-CTE
           MOVE Screen1-Gd-1-CTE TO CTE-MDTE 

           evaluate Screen1-Gd-1-TDZ-MCTC 
           when 1
           when 0
              MOVE W-VAL TO VAL-MDTE Screen1-Gd-1-VAL
           when 2
              PERFORM Screen2-Ef-VAL-Aft-Procedure
              PERFORM Format-Num
           when 3
           when 4
              move w-cho to V18-MDTE
              IF W-PLUS8 = 1 
                 MOVE W-CHO8 TO V18-MDTE 
              end-if
           when 5
              PERFORM Screen2-Ef-VAL-Aft-Procedure
              MOVE W-VALDAT TO Screen1-Gd-1-VAL 
           when 6
              MOVE W-LIB TO VAL-MDTEX VAL-MDTE 
              UNSTRING W-LIB DELIMITED BY W-NEWLINE 
                 INTO Screen1-Gd-1-VAL
           END-EVALUATE

              rewrite ENR-MDTE
              perform stat

           if tdz-mctc = 6
              initialize enr-mdtex
                 move cle1-mdte to cle1-mdtex
              MOVE W-LIB TO VAL-MDTEX
              write enr-mdtex invalid 
                  rewrite enr-mdtex
                  end-rewrite
              end-write
              perform stat
              PERFORM MAJ-EVE-DOCTECEXT
           end-if

           if  Screen1-Gd-1-TDZ-MCTC = 6 
           AND W-DET = 1     
      *       Détail en grille et libellé changé -> réaffi grille
              PERFORM FillGrid
           ELSE
              if Screen1-Gd-1-TDZ-MCTC = 3 or 4
160719           MOVE Screen1-Gd-1-TDZ-MCTC TO TDZ-MCTC
                 perform Mep-Val
              end-if
              MODIFY Screen1-Gd-1(Screen1-Gd-1-Cursor-Y, COL-VAL),
                 CELL-DATA Screen1-Gd-1-VAL 
           END-IF
280515     MOVE 0 TO Cm-MCTCS-LoadedItems 
           PERFORM Aff-Detail
           PERFORM MAJ-DAT

           MOVE 0 TO W-MODIF
           PERFORM Acu-Screen2-Exit
           .
          
      *
       Screen2-Ef-VAL2-Ev-Ntf-Changed.
      *------------------------------*
           PERFORM Modif-Detail
           .
      *
       Screen2-Ef-VAL-Ev-Ntf-Changed.
      *-----------------------------*
           PERFORM Modif-Detail
           .

       Screen2-Ef-VAL-Aft-Procedure.
      *----------------------------*
           INQUIRE Screen2-Ef-VAL, VALUE IN W-VAL
           if tdz-mctc = 1 or 0
              move w-val to val-mdte 
              exit paragraph
           end-if
           if tdz-mctc = 5
              INQUIRE Screen2-Ef-VAL, VALUE IN W-VALDAT
              COPY "W:/mistral/copy/Ef-Date10-Ecr2Fic.cbl"
                REPLACING ==CPYDAT-ECR== BY ==W-VALDAT==
                          ==CPYDAT-FIC== BY ==Dat-MDTE==.
              MODIFY Screen2-Ef-VAL, VALUE = W-VALDAT
              exit paragraph
           end-if
           move space to wft-zone
           evaluate DEC-MCTC 
           WHEN 1 inquire Screen2-Ef-VAL value WDT-V17
                   MOVE WDT-V17 TO R1-WDT-AFF
           WHEN 2 inquire Screen2-Ef-VAL value WDT-V16 
                   MOVE WDT-V16 TO R2-WDT-AFF
           WHEN 3 inquire Screen2-Ef-VAL value WDT-V15 
                   move WDT-V15 TO R3-WDT-AFF
           WHEN 4 inquire Screen2-Ef-VAL value WDT-V14
                   move WDT-V14 TO R4-WDT-AFF
           WHEN 5 inquire Screen2-Ef-VAL value WDT-V13 
                   move WDT-V13 TO R5-WDT-AFF
           WHEN OTHER
                  inquire Screen2-Ef-VAL value WDT-V18 
                   move WDT-V18 TO R0-WDT-AFF
           end-evaluate
           move wdt-val to VAL-MDTE 
           MODIFY Screen2-Ef-VAL, VALUE WDT-AFF
           .

      *Affiche la caractéristique (libellé et usage) à partir du code
      *saisi sur la ligne indiqué par w-row
      *Retourne 1 dans w-valid si ok, ou 0 si code invalide
       FillRowDescription.
           move 1 to w-valid
           move W-CODE to COD-MCTC
           read MXCARTEC invalid key
               move 0 to w-valid
           end-read
           perform stat
           if w-valid = 0 exit paragraph 
           end-if

           MOVE W-CODE TO Screen1-Gd-1-CTE
           move LIB-MCTC to Screen1-Gd-1-LIB-MCTC
           if USA-MCTC < 4 then
             move Usage-Zone(USA-MCTC + 1) to Screen1-Gd-1-USA-MCTC
           end-if
           move TDZ-MCTC TO Screen1-Gd-1-TDZ-MCTC
           modify Screen1-Gd-1, Y = Screen1-Gd-1-Cursor-Y
                 X = COL-LIB, CELL-DATA = Screen1-Gd-1-LIB-MCTC
                 X = COL-USA, CELL-DATA = Screen1-Gd-1-USA-MCTC
                 X = COL-TDZ, CELL-DATA = Screen1-Gd-1-TDZ-MCTC

           inquire Screen1-Gd-1(Screen1-Gd-1-Cursor-Y, COL-CTE),
              hidden-data in w-lig

           IF W-LIG = 0 
                 initialize ENR-MDTE
                 move lk-cdoctec-ori to ORI-MDTE
                 move lk-cdoctec-cle to CLE-MDTE
                 MOVE Screen1-Gd-1-CTE TO CTE-MDTE
                 ADD 1 TO D-RAN
                 MOVE D-RAN TO RAN-MDTE 
                 MOVE 0 TO W-TROUVE
                 PERFORM UNTIL W-TROUVE = 1
                     add 1 to d-lig
                     move d-lig to w-lig LIG-MDTE
                     write ENR-MDTE NOT invalid 
                             MOVE 1 TO W-TROUVE
                     end-write
                     perform stat
                 END-PERFORM
              modify Screen1-Gd-1(Screen1-Gd-1-Cursor-Y,  COL-CTE),                       
                       hidden-data = w-lig
           END-IF

                move lk-cdoctec-ori to ORI-MDTE
                move lk-cdoctec-cle to CLE-MDTE
                move w-lig to LIG-MDTE
           MOVE 1 TO IND-STAT

              PERFORM UNTIL IND-STAT <> 1
                 read MXDOCTEC lock invalid exit paragraph
                 end-read
                 perform stat
                 MOVE "DOCUMENTATION TECHNIQUE" TO ScreenOccupe-Fic
                 MOVE CLE1-MDTE TO ScreenOccupe-Cle
                 PERFORM Mis-EnregOccupe
              END-PERFORM

           INQUIRE Screen1-Gd-1(Screen1-Gd-1-Cursor-Y, COL-CTE),
                 CELL-DATA Screen1-Gd-1-CTE
           MOVE Screen1-Gd-1-CTE TO CTE-MDTE 

              rewrite ENR-MDTE
              perform stat
           initialize Screen1-Gd-1-Record.

      *
       Screen2-Cm-CTCS-Ev-Ntf-Selchange.
           PERFORM Modif-Detail
           INQUIRE Screen2-Cm-CTCS, VALUE IN Cm-MCTCS-Items(1)
           MOVE Cm-MCTCS-COD(1) TO W-CHO8
           .
      *

       

      *{Bench}end
       REPORT-COMPOSER SECTION.
