      *{Bench}prg-comment
      * att.cbl
      * att.cbl is generated from W:\mx\spro\att.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. att.
       AUTHOR. nathalie.clair.
       DATE-WRITTEN. mercredi 22 janvier 2020 15:23:24.
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
       COPY "ATTACH.sl".
       COPY "ATTREL.sl".
       COPY "ATTCLA.sl".
       COPY "XMLOut-File.sl".
       COPY "MXPARAM.sl".
       COPY "RECH.sl".
       COPY "RECHCMD.sl".
       COPY "ATTACH2.sl".
      *{Bench}end
       DATA                        DIVISION.
       FILE                        SECTION.
      *{Bench}file
       COPY "COBCAP.fd".
       COPY "ATTACH.fd".
       COPY "ATTREL.fd".
       COPY "ATTCLA.fd".
       COPY "XMLOut-File.fd".
       COPY "MXPARAM.fd".
       COPY "RECH.fd".
       COPY "RECHCMD.fd".
       COPY "ATTACH2.fd".
      *{Bench}end
       WORKING-STORAGE             SECTION.
      *{Bench}acu-def
       COPY "acugui.def".
       COPY "acucobol.def".
       COPY "crtvars.def".
       COPY "lmresize.def".
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
       77 Small-Font
                  USAGE IS HANDLE OF FONT SMALL-FONT.
       01 FILE-INFO.
           02 FILE-SIZE        PIC  X(8)
                      USAGE IS COMP-X.
           02 FILE-DATE        PIC  9(8)
                      USAGE IS COMP-X.
           02 FILE-TIME        PIC  9(8)
                      USAGE IS COMP-X.
       77 Screen1-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
           COPY  "W:\mistral\copy\cobcap.wrk".
           COPY  "W:\mistral\copy\lk-uploadfile.wrk".
           COPY  "opensave.def".
           COPY  "W:\mistral\copy\Ef-Date.wrk".
           COPY  "W:\mistral\copy\LK-MAIL.wrk".
           COPY  "java.def".
           COPY  "W:\mistral\copy\rech.wrk".
           COPY  "W:\mistral\copy\LK-ATT-AUTRES.WRK".
       01 Screen1-Gd-1-Record.
           05 Gd-1-Col-Sel     PIC  X(08).
           05 Gd-1-Col-Type    PIC  X(08).
           05 Gd-1-Col-Nom     PIC  X(40).
           05 Gd-1-Col-Nonmod  PIC  9(1).
       77 PHOTO2x16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FILE-STATUS      PIC  X(2).
           88 Valid-File-Status VALUE IS "00" THRU "09". 
       77 W-LOG-PALM       PIC  9(3).
       77 W-NPR-PALM       PIC  9(4).
       77 Screen1-Wb-1-Value           PIC  X(37)
                  VALUE IS "about:blank".
       77 MS-Sans-Serif18
                  USAGE IS HANDLE OF FONT VALUE NULL.
       77 MS-Sans-Serif14
                  USAGE IS HANDLE OF FONT VALUE NULL.
       77 FILEPDF16-bmp    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FILEJPG16-bmp    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 CREERxx24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 MODIFIE24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 SUPPRIM24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 SAUVEGA24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 RAFRAIC24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 w-io PIC  9.
       77 W    PIC  9(3).
       77 TMP-FOLDER       PIC  X(128).
       77 w-ret            PIC  9.
       77 w-gd1-sel        PIC  9(3).
       77 w-curKey         PIC  X(15).
       77 n    PIC  9(3).
       77 i    PIC  9(3).
       77 j    PIC  9(3).
       77 w-index          PIC  S99.
       77 w-edition        PIC  X.
       77 w-view           PIC  X.
       77 w-dy PIC  S9(3)v99.
       77 w-y  PIC  9(3)v99.
       77 w-state          PIC  9.
       77 w-state2         PIC  9.
       77 w-ddv            PIC  9.
       77 s    PIC  X(255).
       77 s2   PIC  X(128).
       77 s3   PIC  X(128).
       77 w-num            PIC  99.
       77 w-found          PIC  9.
       77 w-basename       PIC  X(32).
       77 w-lbasename      PIC  99.
       77 w-filename       PIC  X(128).
       77 w-tempFilename   PIC  X(128).
       77 WASS-MXATTACH    PIC  X(32).
       77 w-enr-att        PIC  X(2048).
       01 W-ORD-ATT        PIC  9(10).
       01 R-W-ORD-ATT REDEFINES W-ORD-ATT.
           02 W-ORD1-ATT       PIC  999.
           02 W-ORD2-ATT       PIC  9(7).
       77 w-name           PIC  X(64).
       77 w-ext            PIC  X(4).
       77 FLECHEG24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FLECHED24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 WINEDIT24-bmp    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FILETXT16-bmp    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FILEHTM16-bmp    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 w-count          PIC  99.
       77 w-current        PIC  99.
       77 Screen1-Mn-Tags-Handle
                  USAGE IS HANDLE OF MENU VALUE NULL.
       77 w-id PIC  9(4).
       01 w-tags
                  OCCURS 15 TIMES.
           02 w-tags-ord       PIC  9(5).
           02 w-tags-selected  PIC  9.
       77 w-cntTag         PIC  99.
       77 w-serveur        PIC  X(64).
       77 w-browseFileName PIC  X(255).
       77 OPENSAVE-STATUS  PIC  S99.
           88 OPENSAVE-OK VALUE IS 1. 
       77 w-sync           PIC  9.
       77 w-fon            PIC  X.
       77 MODPHOT24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Default-Font
                  USAGE IS HANDLE OF FONT DEFAULT-FONT.
       77 w-att-cle        PIC  X(30).
       77 k    PIC  9(3).
       77 k2   PIC  9(3).
       77 ZOOMxxx12-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ZOOMxxx16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ZOOMxxx12-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FILEEXC16-bmp    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FILEWOR16-bmp    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 auto-mod         PIC  9.
       77 IND-RESIZE       PIC  9.
       77 WSIZE-E          PIC  S9(6)V9(3).
       77 WLINES-E         PIC  S9(6)V9(3).
       77 DIF-SIZE-E       PIC  S9(6)V9(3).
       77 SV-SIZE-E        PIC  S9(6)V9(3).
       77 DIF-LINES-E      PIC  S9(6)V9(3).
       77 SV-LINES-E       PIC  S9(6)V9(3).
       77 WSIZE-T          PIC  S9(6)V9(3).
       77 WLINES-T         PIC  S9(6)V9(3).
       01 zon-repert.
           05 Repert           PIC  X(50)
                      OCCURS 7 TIMES.
       77 w-repert         PIC  X(200).
       77 w-hFind
                  USAGE IS HANDLE VALUE NULL.
       77 FITSIZE24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Screen1-Gd-1-Cursor-Y        PIC  9(3).
       77 tmp-9-4          PIC  9(4).
       77 lastrow          PIC  9(3).
       77 old-row          PIC  9(3).
       77 w-curPhoto       PIC  X(200).
       77 w-thumbnail      PIC  X(200).
       77 W-RETURN         PIC  S9(6).
       77 w-status         PIC  S9(3).
       77 j-int
                  USAGE IS SIGNED-INT.
       77 Z-INT            PIC  S9(3).
       77 w-ok PIC  9.
       77 IMPRIME24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-MXPARAM        PIC  9(9).
       77 Screen1-LM
                  USAGE IS HANDLE OF LAYOUT-MANAGER, LM-RESIZE
                  VALUE NULL.
       77 MAILxxx24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 MAILGxx24-jpg    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       01 ScreenSel-Gd-1-Record.
           05 GdSel-Col-Sel    PIC  X(08).
           05 GdSel-Col-Name   PIC  X(128).
       01 RA-Table-DOC.
           05 RA-CLEDOC        PIC  X(128)
                      OCCURS 500 TIMES.
       77 CBUNCHK13-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 w-sel            PIC  9.
       77 w-test           PIC  9.
       77 w-exi            PIC  9.
       77 Z    PIC  9(3).
       77 w-io-attrel      PIC  9.
       77 w-nonmod         PIC  9.
       77 MODIF-NONAUTO    PIC  9.
       77 auto-v           PIC  9.
       77 NBCAR            PIC  9(3).
       77 W-TYP-CDA        PIC  X(4).
       77 CBCHECK13-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ZOOMOUT24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-URL            PIC  9.
       77 W-EXISTE         PIC  9.
       77 ASSIGN-RECHCMD   PIC  X(60).
       77 ASSIGN-RECH      PIC  X(60).
       77 WASS-RECH        PIC  X(20)
                  VALUE IS "ATT-RECH".
       77 LETTRET12-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-RCX-PALM       PIC  X.
       77 W-HTTP           PIC  X(178).
       77 Fixed-Font
                  USAGE IS HANDLE OF FONT FIXED-FONT.
       77 Large-Font
                  USAGE IS HANDLE OF FONT LARGE-FONT.
       77 LETTRET12-JP     PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 MAILGxx24-jp     PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 MODPHOT24-JP     PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ZOOMOUT24-JP     PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 XMLOut-Assign    PIC  X(32).

      *{Bench}end
       LINKAGE                     SECTION.
      *{Bench}linkage
       77 lk-zone-palm     PIC  X(500).
           COPY  "W:\mistral\copy\lk-att.wrk".
      *{Bench}end
       SCREEN                      SECTION.
      *{Bench}copy-screen
       01 Screen1.
           03 Screen1-Pb-Taille, Push-Button, 
              COL 73,90, LINE 48,70, LINES 24, SIZE 24, 
              BITMAP-HANDLE ZOOMOUT24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1802, ID IS 41, 
              TITLE "Redimensionner la photo (format 800 x 600)".
           03 Screen1-Wb-1, Web-Browser, 
              COL 1,80, LINE 4,90, LINES 63,60 CELLS, SIZE 85,10 CELLS, 
              ID IS 3, VALUE Screen1-Wb-1-Value.
           03 Screen1-Fr-Prop, Frame, 
              COL 35,10, LINE 51,90, LINES 19,80 CELLS, 
              SIZE 51,50 CELLS, 
              LOWERED, FILL-COLOR 16, FILL-PERCENT 100, ID IS 10, 
              LAYOUT-DATA = 32, VISIBLE 0, BACKGROUND-LOW.
           03 Screen1-Gd-1, Grid, 
              COL 1,60, LINE 52,50, LINES 16,30 CELLS, 
              SIZE 32,70 CELLS, 
              3-D, COLOR IS 1, COLUMN-HEADINGS, 
              DATA-COLUMNS (1, 9, 17, 57), 
              DISPLAY-COLUMNS (1, 8, 15, 55), 
              ALIGNMENT ("C", "C", "U", "U"), 
              SEPARATION (5, 5, 5, 5), 
              COLUMN-DIVIDERS (1, 0, 1, 1), 
              CURSOR-FRAME-WIDTH 1, DIVIDER-COLOR 8, END-COLOR 16, 
              FONT IS Small-Font, HEADING-COLOR W-Heading-Color, 
              HEADING-DIVIDER-COLOR W-Heading-Divider-Color, ID IS 1, 
              NUM-COL-HEADINGS 1, NUM-ROWS w-num-rows, 
              RECORD-DATA Screen1-Gd-1-Record, TILED-HEADINGS, 
              VPADDING 50, LAYOUT-DATA = 32, VISIBLE 0, VSCROLL, 
              EVENT PROCEDURE Screen1-Gd-1-Event-Proc.
           03 Screen1-La-Element, Label, 
              COL 2,20, LINE 1,80, LINES 2,40 CELLS, SIZE 57,80 CELLS, 
              COLOR IS 2, FONT IS Large-Font, ID IS 2, LABEL-OFFSET 0, 
              TITLE "Nom de l'élément".
           03 Screen1-Li-Title, Label, 
              COL 36,40, LINE 56,70, LINES 1,60 CELLS, SIZE 7,70 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 4, 
              LABEL-OFFSET 0, 
              TITLE "Titre", LAYOUT-DATA = 32, VISIBLE 0.
           03 Screen1-Li-Comment, Label, 
              COL 36,40, LINE 59,30, LINES 1,60 CELLS, SIZE 7,70 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 5, 
              LABEL-OFFSET 0, 
              TITLE "Commentaires", LAYOUT-DATA = 32, VISIBLE 0.
           03 Screen1-Pb-New, Push-Button, 
              COL 80,30, LINE 48,70, LINES 24, SIZE 24, 
              BITMAP-HANDLE CREERxx24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              ID IS 6, NO-TAB, TERMINATION-VALUE 2111, 
              TITLE "Ajouter", LAYOUT-DATA = 32, VISIBLE 0.
           03 Screen1-Pb-Browse, Push-Button, 
              COL 49,00, LINE 48,70, LINES 3,10 CELLS, 
              SIZE 20,20 CELLS, 
              EXCEPTION-VALUE 2119, FONT IS Small-Font, ID IS 23, 
              NO-TAB, MULTILINE, 
              TITLE "Rechercher un document  à attacher", 
              LAYOUT-DATA = 32, VISIBLE 0.
           03 Screen1-Ef-Title, Entry-Field, 
              COL 44,80, LINE 56,30, LINES 1,80 CELLS, 
              SIZE 29,60 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, FONT IS Small-Font, ID IS 13, 
              LAYOUT-DATA = 32, VISIBLE 0.
           03 Screen1-Pb-Modify, Push-Button, 
              COL 83,50, LINE 48,70, LINES 24, SIZE 24, 
              BITMAP-HANDLE MODIFIE24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 2112, ID IS 7, NO-TAB, 
              TITLE "Modifier", LAYOUT-DATA = 32, VISIBLE 0.
           03 Screen1-Pb-Delete, Push-Button, 
              COL 77,10, LINE 48,70, LINES 24, SIZE 24, 
              BITMAP-HANDLE SUPPRIM24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 2117, ID IS 8, NO-TAB, 
              TITLE "Supprimer", LAYOUT-DATA = 32, VISIBLE 0.
           03 Screen1-Li-Date, Label, 
              COL 36,40, LINE 69,80, LINES 1,40 CELLS, SIZE 5,70 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 11, 
              LABEL-OFFSET 0, 
              TITLE "Ajouté le", LAYOUT-DATA = 32, VISIBLE 0.
           03 Screen1-Li-Author, Label, 
              COL 55,50, LINE 69,80, LINES 1,40 CELLS, SIZE 2,70 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 12, 
              LABEL-OFFSET 0, 
              TITLE "Par", LAYOUT-DATA = 32, VISIBLE 0.
           03 Screen1-Ef-Comment, Entry-Field, 
              COL 44,80, LINE 59,10, LINES 6,90 CELLS, 
              SIZE 29,60 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, FONT IS Small-Font, ID IS 14, 
              MULTILINE, USE-RETURN, LAYOUT-DATA = 32, VISIBLE 0.
           03 Screen1-Pb-Save, Push-Button, 
              COL 73,90, LINE 48,70, LINES 24, SIZE 24, 
              BITMAP-HANDLE SAUVEGA24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 2114, ID IS 15, NO-TAB, 
              TITLE "Sauvegarder", LAYOUT-DATA = 32, VISIBLE 0.
           03 Screen1-Pb-Cancel, Push-Button, 
              COL 70,70, LINE 48,70, LINES 24, SIZE 24, 
              BITMAP-HANDLE RAFRAIC24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 2113, ID IS 18, NO-TAB, 
              TITLE "Rafraîchir", LAYOUT-DATA = 32, VISIBLE 0.
           03 Screen1-La-Date, Label, 
              COL 42,60, LINE 69,80, LINES 1,40 CELLS, 
              SIZE 10,70 CELLS, 
              COLOR IS 514, FONT IS Default-Font, ID IS 19, 
              LABEL-OFFSET 0, LAYOUT-DATA = 32, VISIBLE 0.
           03 Screen1-La-Author, Label, 
              COL 59,70, LINE 69,80, LINES 1,40 CELLS, 
              SIZE 10,70 CELLS, 
              COLOR IS 514, FONT IS Default-Font, ID IS 20, 
              LABEL-OFFSET 0, LAYOUT-DATA = 32, VISIBLE 0.
           03 Screen1-Li-FileName, Label, 
              COL 36,40, LINE 53,90, LINES 1,60 CELLS, SIZE 7,70 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 21, 
              LABEL-OFFSET 0, 
              TITLE "Fichier", LAYOUT-DATA = 32, VISIBLE 0.
           03 Screen1-La-FileName, Label, 
              COL 44,80, LINE 53,90, LINES 1,60 CELLS, 
              SIZE 32,90 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 22, 
              LABEL-OFFSET 0, LAYOUT-DATA = 32, VISIBLE 0.
           03 Screen1-Pb-Previous, Push-Button, 
              COL 80,40, LINE 1,20, LINES 24, SIZE 24, 
              BITMAP-HANDLE FLECHEG24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 2115, ID IS 24, NO-TAB, 
              TITLE "Document précédent", LAYOUT-DATA = 2.
           03 Screen1-Pb-Next, Push-Button, 
              COL 83,60, LINE 1,20, LINES 24, SIZE 24, 
              BITMAP-HANDLE FLECHED24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 2116, ID IS 25, NO-TAB, 
              TITLE "Document suivant", LAYOUT-DATA = 2.
           03 Screen1-Bt-1, Bitmap, 
              COL 42,90, LINE 1,20, LINES 16, SIZE 16, 
              BITMAP-HANDLE FILEJPG16-bmp, BITMAP-NUMBER 1, 
              ID IS 17, VISIBLE 0.
           03 Screen1-Bt-2, Bitmap, 
              COL 42,90, LINE 3,10, LINES 16, SIZE 16, 
              BITMAP-HANDLE FILEPDF16-bmp, BITMAP-NUMBER 1, 
              ID IS 27, VISIBLE 0.
           03 Screen1-Bt-1a, Bitmap, 
              COL 41,10, LINE 1,20, LINES 16, SIZE 16, 
              BITMAP-HANDLE FILETXT16-bmp, BITMAP-NUMBER 1, 
              ID IS 28, VISIBLE 0.
           03 Screen1-Bt-2a, Bitmap, 
              COL 41,10, LINE 3,10, LINES 16, SIZE 16, 
              BITMAP-HANDLE FILEHTM16-bmp, BITMAP-NUMBER 1, 
              ID IS 29, VISIBLE 0.
           03 Screen1-La-Count, Label, 
              COL 12,80, LINE 70,00, LINES 1,40 CELLS, SIZE 5,70 CELLS, 
              COLOR IS 2, ID IS 30, RIGHT, LABEL-OFFSET 0, 
              TITLE "Aucun".
           03 Screen1-Li-Cla, Label, 
              COL 36,40, LINE 67,30, LINES 1,40 CELLS, SIZE 7,70 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 31, 
              LABEL-OFFSET 0, 
              TITLE "Classification", LAYOUT-DATA = 32, VISIBLE 0.
           03 Screen1-Pb-Wall, Push-Button, 
              COL 72,20, LINE 67,00, LINES 12, SIZE 12, 
              BITMAP-HANDLE ZOOMxxx12-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 2121, FONT IS Small-Font, ID IS 33, 
              NO-TAB, 
              TITLE "Sélectionner la ou les classifications", 
              LAYOUT-DATA = 32, VISIBLE 0.
           03 Screen1-Ef-Cla, Entry-Field, 
              COL 44,80, LINE 67,10, LINES 1,80 CELLS, 
              SIZE 27,10 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, FONT IS Small-Font, ID IS 32, 
              LAYOUT-DATA = 32, VISIBLE 0.
           03 Screen1-La-Title, Label, 
              COL 18,90, LINE 70,00, LINES 1,40 CELLS, 
              SIZE 25,40 CELLS, 
              COLOR IS 2, ID IS 26, LABEL-OFFSET 0.
           03 Screen1-Bt-1b, Bitmap, 
              COL 45,00, LINE 1,20, LINES 16, SIZE 16, 
              BITMAP-HANDLE FILEEXC16-bmp, BITMAP-NUMBER 1, 
              ID IS 34, VISIBLE 0.
           03 Screen1-Bt-1aa, Bitmap, 
              COL 45,00, LINE 3,10, LINES 16, SIZE 16, 
              BITMAP-HANDLE FILEWOR16-bmp, BITMAP-NUMBER 1, 
              ID IS 35, VISIBLE 0.
           03 Screen1-Cb-View, Check-Box, 
              COL 77,20, LINE 1,20, LINES 24, SIZE 24, 
              BITMAP-HANDLE MODPHOT24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              ID IS 16, NO-TAB, 
              TITLE "Modifier ", LAYOUT-DATA = 2, 
              EVENT PROCEDURE Screen1-Cb-View-Event-Proc.
           03 Screen1-Bt-1c, Bitmap, 
              COL 54,20, LINE 1,50, LINES 24, SIZE 24, 
              BITMAP-HANDLE FITSIZE24-JPG, BITMAP-NUMBER 1, 
              ID IS 36, VISIBLE 0.
           03 Screen1-Pb-Print, Push-Button, 
              COL 74,00, LINE 1,20, LINES 24, SIZE 24, 
              BITMAP-HANDLE IMPRIME24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 2122, ID IS 37, 
              TITLE "Imprimer", LAYOUT-DATA = 2, VISIBLE 0.
           03 Screen1-Bt-3, Bitmap, 
              COL 47,60, LINE 1,40, LINES 13, SIZE 13, 
              BITMAP-HANDLE CBUNCHK13-JPG, BITMAP-NUMBER 1, 
              ID IS 39, VISIBLE 0.
           03 Screen1-Bt-4, Bitmap, 
              COL 47,60, LINE 3,40, LINES 13, SIZE 13, 
              BITMAP-HANDLE CBCHECK13-JPG, BITMAP-NUMBER 1, 
              ID IS 40, VISIBLE 0.
           03 Screen1-Bt-NONS, Bitmap, 
              COL 62,00, LINE 1,50, LINES 12, SIZE 12, 
              BITMAP-HANDLE LETTRET12-JPG, BITMAP-NUMBER 1, 
              ID IS 42, VISIBLE 0.

      *{Bench}end

      *{Bench}linkpara
       PROCEDURE DIVISION USING lk-zone-palm, lk-att.
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
      * create pop-up menu
           PERFORM Acu-Init-Popup
      * open file
           PERFORM Acu-Open-Files
      *    After-Init
           .

       Acu-Init-Bmp.
      * bitmap loading
           COPY RESOURCE "ZOOMOUT24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ZOOMOUT24.JPG", GIVING 
              ZOOMOUT24-JPG
           COPY RESOURCE "CREERxx24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "CREERxx24.JPG", GIVING 
              CREERxx24-JPG
           COPY RESOURCE "MODIFIE24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "MODIFIE24.JPG", GIVING 
              MODIFIE24-JPG
           COPY RESOURCE "SUPPRIM24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "SUPPRIM24.JPG", GIVING 
              SUPPRIM24-JPG
           COPY RESOURCE "SAUVEGA24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "SAUVEGA24.JPG", GIVING 
              SAUVEGA24-JPG
           COPY RESOURCE "RAFRAIC24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "RAFRAIC24.JPG", GIVING 
              RAFRAIC24-JPG
           COPY RESOURCE "FLECHEG24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "FLECHEG24.JPG", GIVING 
              FLECHEG24-JPG
           COPY RESOURCE "FLECHED24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "FLECHED24.JPG", GIVING 
              FLECHED24-JPG
           COPY RESOURCE "FILEJPG16.bmp".
           CALL "W$BITMAP" USING WBITMAP-LOAD "FILEJPG16.bmp", GIVING 
              FILEJPG16-bmp
           COPY RESOURCE "FILEPDF16.bmp".
           CALL "W$BITMAP" USING WBITMAP-LOAD "FILEPDF16.bmp", GIVING 
              FILEPDF16-bmp
           COPY RESOURCE "FILETXT16.bmp".
           CALL "W$BITMAP" USING WBITMAP-LOAD "FILETXT16.bmp", GIVING 
              FILETXT16-bmp
           COPY RESOURCE "FILEHTM16.bmp".
           CALL "W$BITMAP" USING WBITMAP-LOAD "FILEHTM16.bmp", GIVING 
              FILEHTM16-bmp
           COPY RESOURCE "ZOOMxxx12.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ZOOMxxx12.JPG", GIVING 
              ZOOMxxx12-JPG
           COPY RESOURCE "FILEEXC16.bmp".
           CALL "W$BITMAP" USING WBITMAP-LOAD "FILEEXC16.bmp", GIVING 
              FILEEXC16-bmp
           COPY RESOURCE "FILEWOR16.bmp".
           CALL "W$BITMAP" USING WBITMAP-LOAD "FILEWOR16.bmp", GIVING 
              FILEWOR16-bmp
           COPY RESOURCE "MODPHOT24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "MODPHOT24.JPG", GIVING 
              MODPHOT24-JPG
           COPY RESOURCE "FITSIZE24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "FITSIZE24.JPG", GIVING 
              FITSIZE24-JPG
           COPY RESOURCE "IMPRIME24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "IMPRIME24.JPG", GIVING 
              IMPRIME24-JPG
           COPY RESOURCE "CBUNCHK13.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "CBUNCHK13.JPG", GIVING 
              CBUNCHK13-JPG
           COPY RESOURCE "CBCHECK13.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "CBCHECK13.JPG", GIVING 
              CBCHECK13-JPG
           COPY RESOURCE "LETTRET12.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "LETTRET12.JPG", GIVING 
              LETTRET12-JPG
           .

       Acu-Init-Popup.
           PERFORM Acu-Screen1-Mn-Tags-Menu
           MOVE Menu-Handle TO Screen1-Mn-Tags-Handle
           .

       Acu-Exit-Rtn.
      * destroy font
           PERFORM Acu-Exit-Font
      * destroy bitmap
           PERFORM Acu-Exit-Bmp
           PERFORM Acu-Close-Files
           PERFORM After-Program
           EXIT PROGRAM
           STOP RUN
           .
       Acu-Exit-Font.
      * font destroy
           .

       Acu-Exit-Bmp.
      * bitmap destroy
           IF ZOOMOUT24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ZOOMOUT24-JPG
              MOVE 0 TO ZOOMOUT24-JPG
           END-IF
           IF CREERxx24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY CREERxx24-JPG
              MOVE 0 TO CREERxx24-JPG
           END-IF
           IF MODIFIE24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY MODIFIE24-JPG
              MOVE 0 TO MODIFIE24-JPG
           END-IF
           IF SUPPRIM24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY SUPPRIM24-JPG
              MOVE 0 TO SUPPRIM24-JPG
           END-IF
           IF SAUVEGA24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY SAUVEGA24-JPG
              MOVE 0 TO SAUVEGA24-JPG
           END-IF
           IF RAFRAIC24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY RAFRAIC24-JPG
              MOVE 0 TO RAFRAIC24-JPG
           END-IF
           IF FLECHEG24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY FLECHEG24-JPG
              MOVE 0 TO FLECHEG24-JPG
           END-IF
           IF FLECHED24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY FLECHED24-JPG
              MOVE 0 TO FLECHED24-JPG
           END-IF
           IF FILEJPG16-bmp NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY FILEJPG16-bmp
              MOVE 0 TO FILEJPG16-bmp
           END-IF
           IF FILEPDF16-bmp NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY FILEPDF16-bmp
              MOVE 0 TO FILEPDF16-bmp
           END-IF
           IF FILETXT16-bmp NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY FILETXT16-bmp
              MOVE 0 TO FILETXT16-bmp
           END-IF
           IF FILEHTM16-bmp NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY FILEHTM16-bmp
              MOVE 0 TO FILEHTM16-bmp
           END-IF
           IF ZOOMxxx12-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ZOOMxxx12-JPG
              MOVE 0 TO ZOOMxxx12-JPG
           END-IF
           IF FILEEXC16-bmp NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY FILEEXC16-bmp
              MOVE 0 TO FILEEXC16-bmp
           END-IF
           IF FILEWOR16-bmp NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY FILEWOR16-bmp
              MOVE 0 TO FILEWOR16-bmp
           END-IF
           IF MODPHOT24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY MODPHOT24-JPG
              MOVE 0 TO MODPHOT24-JPG
           END-IF
           IF FITSIZE24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY FITSIZE24-JPG
              MOVE 0 TO FITSIZE24-JPG
           END-IF
           IF IMPRIME24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY IMPRIME24-JPG
              MOVE 0 TO IMPRIME24-JPG
           END-IF
           IF CBUNCHK13-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY CBUNCHK13-JPG
              MOVE 0 TO CBUNCHK13-JPG
           END-IF
           IF CBCHECK13-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY CBCHECK13-JPG
              MOVE 0 TO CBCHECK13-JPG
           END-IF
           IF LETTRET12-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY LETTRET12-JPG
              MOVE 0 TO LETTRET12-JPG
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
      *    Before-Create
      * display screen
              DISPLAY Floating GRAPHICAL WINDOW
                 LINES 71,50, SIZE 86,50, LAYOUT-MANAGER IS Screen1-LM 
                 CELL HEIGHT 10, CELL WIDTH 10, COLOR IS 65793, 
                 LABEL-OFFSET 0, LINK TO THREAD, MIN-LINES 71,50, 
                 MIN-SIZE 86,50, MODELESS, RESIZABLE, NO SCROLL, 
                 WITH SYSTEM MENU, 
                 TITLE "DOCUMENTS ATTACHÉS", TITLE-BAR, VISIBLE 0, 
                 NO WRAP, 
                 EVENT PROCEDURE Screen1-Event-Proc, 
                 HANDLE IS Screen1-Handle
      * toolbar
           DISPLAY Screen1 UPON Screen1-Handle
      *    After-Create
           .

       Acu-Screen1-Init-Data.
           PERFORM Screen1-Bef-Initdata
           PERFORM Acu-Screen1-Gd-1-Content
           PERFORM Screen1-Aft-Initdata
           .
      * Screen1
       Acu-Screen1-Proc.
           PERFORM UNTIL Exit-Pushed
              ACCEPT Screen1  
                 ON EXCEPTION PERFORM Acu-Screen1-Evaluate-Func
              END-ACCEPT
              EVALUATE TRUE
      * Screen1-Pb-New Link To
              WHEN Key-Status = 2111
                 PERFORM Screen1-Pb-New-Link
              END-EVALUATE
           END-PERFORM
           DESTROY Screen1-Handle
           INITIALIZE Key-Status
           .

      * Screen1-Gd-1
       Acu-Screen1-Gd-1-Content.
      * Cells Settings
           MODIFY Screen1-Gd-1, X = 3, Y = 1, CELL-DATA = "Document", 
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
      * Screen1-Pb-Taille Link To
              WHEN Key-Status = 1802
                 PERFORM Screen1-Pb-Taille-Link
      * Screen1-Pb-Browse Link To
              WHEN Key-Status = 2119
                 PERFORM Screen1-Pb-Browse-Link
      * Screen1-Pb-Modify Link To
              WHEN Key-Status = 2112
                 PERFORM Screen1-Pb-Modify-Link
      * Screen1-Pb-Delete Link To
              WHEN Key-Status = 2117
                 PERFORM Screen1-Pb-Delete-Link
      * Screen1-Pb-Save Link To
              WHEN Key-Status = 2114
                 PERFORM Screen1-Pb-Save-Link
      * Screen1-Pb-Cancel Link To
              WHEN Key-Status = 2113
                 PERFORM Screen1-Pb-Cancel-Link
      * Screen1-Pb-Previous Link To
              WHEN Key-Status = 2115
                 PERFORM Screen1-Pb-Previous-Link
      * Screen1-Pb-Next Link To
              WHEN Key-Status = 2116
                 PERFORM Screen1-Pb-Next-Link
      * Screen1-Pb-Wall Link To
              WHEN Key-Status = 2121
                 PERFORM Screen1-Pb-Wall-Link
      * MI-tag1 Link To
              WHEN Key-Status = 2451
                 PERFORM Screen1-Mn-Tags-MI-tag1-Link
      * MI-tag2 Link To
              WHEN Key-Status = 2452
                 PERFORM Screen1-Mn-Tags-MI-tag2-Link
      * MI-tag3 Link To
              WHEN Key-Status = 2453
                 PERFORM Screen1-Mn-Tags-MI-tag3-Link
      * MI-tag4 Link To
              WHEN Key-Status = 2454
                 PERFORM Screen1-Mn-Tags-MI-tag4-Link
      * MI-tag5 Link To
              WHEN Key-Status = 2455
                 PERFORM Screen1-Mn-Tags-MI-tag5-Link
      * MI-tag6 Link To
              WHEN Key-Status = 2456
                 PERFORM Screen1-Mn-Tags-MI-tag6-Link
      * MI-tag7 Link To
              WHEN Key-Status = 2457
                 PERFORM Screen1-Mn-Tags-MI-tag7-Link
      * MI-tag8 Link To
              WHEN Key-Status = 2458
                 PERFORM Screen1-Mn-Tags-MI-tag8-Link
      * MI-tag9 Link To
              WHEN Key-Status = 2459
                 PERFORM Screen1-Mn-Tags-MI-tag9-Link
      * MI-tag10 Link To
              WHEN Key-Status = 2460
                 PERFORM Screen1-Mn-Tags-MI-tag10-Link
      * MI-tag11 Link To
              WHEN Key-Status = 2461
                 PERFORM Screen1-Mn-Tags-MI-tag11-Link
      * MI-tag12 Link To
              WHEN Key-Status = 2462
                 PERFORM Screen1-Mn-Tags-MI-tag12-Link
      * MI-tag13 Link To
              WHEN Key-Status = 2463
                 PERFORM Screen1-Mn-Tags-MI-tag13-Link
      * MI-tag14 Link To
              WHEN Key-Status = 2464
                 PERFORM Screen1-Mn-Tags-MI-tag14-Link
      * MI-tag15 Link To
              WHEN Key-Status = 2465
                 PERFORM Screen1-Mn-Tags-MI-tag15-Link
      * Screen1-Pb-Print Link To
              WHEN Key-Status = 2122
                 PERFORM Screen1-Pb-Print-Link
           END-EVALUATE
           PERFORM Screen1-Link
           MOVE 1 TO Accept-Control
           .

       Acu-Close-Files.
      *    Before-Close
      *    After-Close
           .

      * COBCAP

      * ATTACH

      * ATTCLA

      * ATTREL

      * XMLOut-File

      * MXPARAM

      * RECH

      * RECHCMD

      * ATTACH2

       Acu-Screen1-Exit.
           SET Exit-Pushed TO TRUE
           .

      * Screen1-Mn-Tags
       Acu-Screen1-Mn-Tags-Menu.
           PERFORM Acu-Screen1-Mn-Tags
              THRU Acu-Screen1-Mn-Tags-Exit.

       Acu-Screen1-Mn-Tags.
           CALL "W$MENU" USING Wmenu-New-Popup GIVING Menu-Handle
           IF Menu-Handle = ZERO
              GO TO Acu-Screen1-Mn-Tags-Exit
           END-IF
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, "tag1", 
              2451
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, "tag2", 
              2452
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, "tag3", 
              2453
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, "tag4", 
              2454
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, "tag5", 
              2455
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, "tag6", 
              2456
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, "tag7", 
              2457
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, "tag8", 
              2458
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, "tag9", 
              2459
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, "tag10", 
              2460
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, "tag11", 
              2461
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, "tag12", 
              2462
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, "tag13", 
              2463
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, "tag14", 
              2464
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, "tag15", 
              2465
           .

       Acu-Screen1-Mn-Tags-Exit.
           MOVE ZERO TO Return-Code.


       Screen1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Ntf-Resized
              PERFORM Screen1-Ev-Ntf-Resized
           END-EVALUATE
           .

       Screen1-Gd-1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Begin-Drag
              PERFORM Screen1-Gd-1-Ev-Msg-Begin-Drag
           WHEN Msg-Begin-Entry
              PERFORM Screen1-Gd-1-Ev-Msg-Begin-Entry
           WHEN Msg-Bitmap-Clicked
              PERFORM Screen1-Gd-1-Ev-Msg-Bitmap-Clicked
           WHEN Msg-End-Drag
              PERFORM Screen1-Gd-1-Ev-Msg-End-Drag
           WHEN Msg-Goto-Cell
              PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell-Mouse
              PERFORM Screen1-Gd-1-Ev-Msg-Goto-Cell-Mouse
           END-EVALUATE
           .

       Screen1-Cb-View-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-Cb-View-Ev-Cmd-Clicked
           END-EVALUATE
           .
      ***   start event editor code   ***
       copy "W:/mistral/copy/envmis.cbl".
      ** copy "W:/mistral/copy/XMLOut.cbl".
110419* COPY "W:/mistral/copy/centrefenetre.cbl".
020819 COPY "W:/mistral/copy/MisCentrefenetre.cbl".


       Before-Program.
           perform controle-call
      * text existence photo dans autres ATTACH     
           if lk-att-test = 1
              open input attach
              perform stat
              initialize ENR-ATT
              move lk-att-cle1 to cle1-ATT
              read attach not invalid 
                   perform test-existe
                   move W-EXISTE to lk-att-test
              end-read
              perform stat
              close attach
              go acu-exit-rtn
           end-if

           copy "W:/mistral/copy/init-trace-java.cbl".

           accept w-serveur from environment "SERVEUR"
      *    Récupère les informations du terminal (permettra de savoir si
      *    on est en thin client)
           accept TERMINAL-ABILITIES from TERMINAL-INFO
           COPY "W:/mistral/copy/lectport-tomcat.cbl".

      *    Nom temporaire pour les fichiers transférés
           move function current-date to datheu-sys-m
           move spaces to w-tempFilename
           string MX-DIR delimited by "  "
                  "/ft/ATT-" DELIMITED BY " "
                  IDE-PALM DELIMITED BY " "
                  DATHEU-SYS-M DELIMITED BY " "
                  into w-tempFilename

      *---- contrôle possibilité modification 
      **     IF MOB-PALM = 0
      **        MOVE IDE-PALM TO LK-CPERMIS-IDE
      **        MOVE 25 TO LK-CPERMIS-LOG
      **        MOVE 278 TO LK-CPERMIS-RUB
      **        CALL "cpermis.acu" USING LK-ZONE-PALM LK-CPERMIS
      **        CANCEL "cpermis.acu"
      **        MOVE LK-CPERMIS-PER TO AUTO-MOD
      **     END-IF
           IF lk-att-typ = "VGPS" OR "SFAF"
230819     OR LK-ATT-CHO = "i" 
              move 2 to auto-mod
           end-if


           MOVE " " TO W-RCX-PALM
      *     IF CX-PALM = 1|presence de logiciel comptable
      **---- Possibilité d'accéder à fiche client ou fournisseur comptable
      *       MOVE 3 TO LOG-PALM2
      *       IF LK-ATT-TYP = "CLI" MOVE 9 TO NPR-PALM2 
      *       END-IF
030518**       IF LK-ATT-TYP = "FOU" MOVE 11 TO NPR-PALM2 
030518*       IF LK-ATT-TYP = "FOU" MOVE 10 TO NPR-PALM2 
      *       END-IF
      *       CALL "verifacc.acu" USING ZONE-PALM
      *       CANCEL "verifacc.acu"     
030518*       IF EXEC-PALM2 = "X"
      *       OR MODIF-PALM2 = "X" 
      *          MOVE "X" TO W-RCX-PALM 
      *       END-IF 
      *     ELSE
      *       MOVE "X" TO W-RCX-PALM
      *     END-IF
           .

       Screen1-Bef-Initdata.
           move "D" to w-view
           if w-view not = "F" 
             perform ChangeView
           end-if
           move lk-att-typ to W-TYP-CDA
           EVALUATE lk-att-typ 
           WHEN "ORE" 
           WHEN "ESE" MOVE 12 TO NBCAR
           WHEN "TPE" MOVE 20 TO NBCAR
           WHEN "BSE" MOVE 11 TO NBCAR
           WHEN "CTL" MOVE 11 TO NBCAR
                      move "BSE" to W-TYP-CDA
           WHEN "BRE" MOVE 11 TO NBCAR
           WHEN "RAC" MOVE 10 TO NBCAR
                      move "CFA" to W-TYP-CDA
           WHEN "DMC" 
           WHEN "SCM" MOVE 30 TO NBCAR
                      move "SLM" to W-TYP-CDA
           WHEN "OFL" MOVE 30 TO NBCAR
                      move "BSE" to W-TYP-CDA
           WHEN OTHER MOVE 30 TO NBCAR
           END-EVALUATE.
       
      *
       Screen1-Aft-Initdata.
110419*   
      *     IF LK-ATT-HANDLE <> 0     
      *        MODIFY Screen1-Handle,
      *           VISIBLE 1
      *        MOVE LK-ATT-HANDLE TO WCF-HANDLE-FP
      *        MOVE 10 TO WCF-PIXLINE-FS
      *                   WCF-PIXSIZE-FS
      *        PERFORM CentreFenetre
      *     ELSE
      *        MODIFY Screen1-Handle,
      *           VISIBLE 1
      *     END-IF
110419*
020819     PERFORM MisCentreFenetreScreen10

           MOVE 72 TO SV-LINES-E
           MOVE 87 TO SV-SIZE-E

           perform OpenFiles

           modify Screen1-La-Element, title = lk-att-name
           perform LoadTags
           perform LoadAttachments
           perform Screen1-Pb-Next-Link
           IF lk-att-typ = "VGPS" OR "SFAF"
              move 1 to w-state
              modify Screen1-Cb-View, value w-state           
              move "F" to w-view
              perform ChangeView
           end-if
           .


       OpenFiles.
           open i-o ATTACH     perform stat
           open i-o ATTCLA     perform stat
           open i-o ATTREL     perform stat
           .

       CloseFiles.
           close ATTACH
           close ATTCLA
           close ATTREL
           .


       LoadTags.
           move 2450 to w-id
           perform varying i from 1 by 1 until i > 15
             add 1 to w-id
             call "w$menu" using WMENU-DELETE,
                           Screen1-Mn-Tags-Handle, w-id
           end-perform

           move 1 to w-io
           move W-TYP-CDA to ORI-ATTC
           move low-value to ORD-ATTC
           start ATTCLA key >= CLE2-ATTC
             invalid key move 0 to w-io
           end-start
           perform stat

           move 0 to w-cntTag
           move 2450 to w-id

           perform until w-io = 0
             read ATTCLA next
               at end move 0 to w-io
             end-read
             perform stat
             if ORI-ATTC not = W-TYP-CDA 
               move 0 to w-io
             end-if
             IF (CX-ATTC = 1) AND (W-IO = 1)|réservé comptabilité
               IF W-RCX-PALM = "X" MOVE 2 TO W-IO
               END-IF
             END-IF
             if w-io = 1  
020819       and w-cntTag < 15
               add 1 to w-id w-cntTag
               move ORD-ATTC to w-tags-ord(w-cntTag)
               call "w$menu" using WMENU-ADD, Screen1-Mn-Tags-Handle, 
                    0, 0, LIB-ATTC, w-id
               if rso-attc = 1 and soc-attc not = nso-palm | réservé autre société: disable
                  call "w$menu" using WMENU-DISABLE,
                           Screen1-Mn-Tags-Handle, w-id
               end-if
             end-if
             if w-io = 2 move 1 to w-io
             end-if
           end-perform

           .


       LoadAttachments.
120311*    comptage pour ascenseur (si ascenseur déclaré aprés remplissage gris, marche moyen)
           move 0 to w-count w-nonmod
           move 1 to w-io  
           initialize ENR-ATT
           move lk-att-soc to SOC-ATT
           move lk-att-typ to ORI-ATT
           move lk-att-cle(1:NBCAR) to CLE-ATT
           move 0 to RAN-ATT
           start ATTACH key >= CLE2-ATT
             invalid key move 0 to w-io
           end-start
           perform stat  

           perform until w-io = 0
             read ATTACH next
               at end move 0 to w-io
             end-read
             perform stat
             if SOC-ATT not = lk-att-soc 
             or ORI-ATT not = lk-att-typ 
             OR CLE-ATT(1:NBCAR) <> lk-att-cle(1:NBCAR)
               move 0 to w-io
             end-if
             if w-io = 1 
                 perform TEST-VISU-SOC
                 if auto-v = 1
                    ADD 1 TO W-COUNT
                 end-if
             END-IF
           END-PERFORM

           IF W-COUNT > 7 
              MODIFY Screen1-Gd-1,
                 VSCROLL 
           END-IF
120311
           move 1 to w-io  
           initialize ENR-ATT RA-Table-DOC
           move lk-att-soc to SOC-ATT
           move lk-att-typ to ORI-ATT
           move lk-att-cle(1:nbcar) to cle-att
           move 0 to RAN-ATT
           start ATTACH key >= CLE2-ATT
             invalid key move 0 to w-io
           end-start
           perform stat  
                                
           move 0 to w-count
           move 0 to w-index
           perform until w-io = 0
             read ATTACH next
               at end move 0 to w-io
             end-read
             perform stat
             if SOC-ATT not = lk-att-soc 
             or ORI-ATT not = lk-att-typ 
             OR CLE-ATT(1:NBCAR) <> lk-att-cle(1:NBCAR)
               move 0 to w-io
             end-if
             if w-io = 1 
               perform TEST-VISU-SOC
               if auto-v = 1 
                  move 1 to w-test
                  perform SetAttachmentGridRecord
                  if w-test = 1 add 1 to w-count
                  end-if
               end-if
             end-if     
           end-perform

130619* recherche documents associés
      *     IF  MX-PALM = 1
230819*     AND LK-ATT-TYP <> "RAC"
      *                AND <> "FFA" | gérés par LISTE-AUTRES-DOC dans RAC et FFA
      *        move 1 to w-nonmod
      *        move space to lk-att-autres
      *        move lk-att-typ to lk-att-autres-typ
      *        move lk-att-cle to lk-att-autres-cle1
      *        move lk-att-soc to lk-att-autres-soc
      *        call "att-autres.acu" using zone-palm lk-att-autres
      *           on exception continue
      *        end-call
      *        cancel "att-autres.acu"
      *        perform varying W from 1 by 1 until W > LK-ATT-AUTRES-NBR
      *             IF LK-ATT-AUTRES-CLEA(W) not = space
      *                move LK-ATT-AUTRES-CLEA(W) to cle1-att
      *                read attach not invalid
      *                   perform TEST-VISU-SOC
      *                   if auto-v = 1 
      *                      move 1 to w-test
      *                      perform SetAttachmentGridRecord
      *                      if w-test = 1 add 1 to w-count
      *                      end-if
      *                   end-if
      *                end-read
      *                perform stat
      *             END-IF
      *        end-perform
      *     END-IF
           move 0 to w-nonmod w-test
130619
           if w-count = 0 move space to enr-att
           end-if
           .

      * Remplit le record d'un enregistrement de la grille avec un attachement et le place dans
      * la grille à la position indiquée
      * [i] ENR-ATT
      * [i] w-index position de l'élément dans la grille :
      *        n (0 < n <= nombre de ligne) pour remplacer une ligne existante
      *        0 pour ajouter une nouvelle ligne à la fin
      *        -n pour insérer une nouvelle ligne à l'index n
       SetAttachmentGridRecord.
040719* pour éviter les doublons quand on recherche les autres documents
           move 0 to w-exi
           if ord-att not = 0 and w-test = 1
              perform varying Z from 1 by 1 until Z > 500
                 IF FIC-ATT = ra-cledoc(Z)
                    MOVE 500 TO Z
                    move 1 to w-exi 
                    move 2 to w-test
                    exit perform
                 end-if
                 IF ra-cledoc(Z) = SPACE
                    move FIC-ATT to ra-cledoc(Z)
                    MOVE 500 TO Z
                    exit perform
                 end-if
              end-perform
              if w-exi = 1 exit paragraph
              end-if
           end-if.
040719

           move TIT-ATT to Gd-1-Col-Nom
           if w-nonmod = 1 and ide-palm = "MIS"
              move space to Gd-1-Col-Nom
              evaluate ori-att
              when "BSE" string TIT-ATT " *bs" delimited by "    "
                         into Gd-1-Col-Nom
              when "TPE" string TIT-ATT " *tr" delimited by "    "
                         into Gd-1-Col-Nom
              end-evaluate
           end-if
130619     move w-nonmod to Gd-1-Col-Nonmod
220513
           IF Gd-1-Col-Nom = SPACE 
              MOVE "." TO Gd-1-Col-Nom | sinon photos sans titres apparaissent pas (Mobivip Smart par exemple)
           END-IF
220513
           if w-index = 0 
             inquire Screen1-Gd-1, last-row in i
             add 1 to i
             modify Screen1-Gd-1, record-to-add = Screen1-Gd-1-Record,
                           y = i
           else if w-index < 0 
             compute i = - w-index
             modify Screen1-Gd-1, insertion-index = i,
                    record-to-add = Screen1-Gd-1-Record, y = i
           else
             modify Screen1-Gd-1, y = w-index,
                    record-data = Screen1-Gd-1-Record
           end-if end-if
           modify Screen1-Gd-1, x = 2, hidden-data = ORD-ATT

           evaluate MIM-ATT
             when "application/pdf"
               modify Screen1-Gd-1, x = 2, bitmap = FILEPDF16-bmp
             when "image/gif"
             when "image/jpeg"
             when "image/png"
               modify Screen1-Gd-1, x = 2, bitmap = FILEJPG16-bmp
             when "text/plain"
               modify Screen1-Gd-1, x = 2, bitmap = FILETXT16-bmp
             when "text/html"
               modify Screen1-Gd-1, x = 2, bitmap = FILEHTM16-bmp
             when "text/csv" 
               modify Screen1-Gd-1, x = 2, bitmap = FILEEXC16-bmp
             when "application/vnd.ms-excel" 
               modify Screen1-Gd-1, x = 2, bitmap = FILEEXC16-bmp
             when "application/msword" 
               modify Screen1-Gd-1, x = 2, bitmap = FILEWOR16-bmp
181114       when "application/web"
               modify Screen1-Gd-1, x = 2, bitmap = FILEHTM16-bmp
           end-evaluate

           if w-index <= 0 
             modify Screen1-Gd-1, x = 1, bitmap = CBUNCHK13-JPG,
                    hidden-data = 0
           end-if 

           initialize Screen1-Gd-1-Record
           .

      *
       Screen1-Gd-1-Ev-Msg-Goto-Cell.
           if w-edition not = spaces  exit paragraph
           end-if

           modify Screen1-Gd-1, y = old-row, row-color = 0,
                  y = event-data-2, row-color = w-row-low-color
           move event-data-2 to w-gd1-sel
           perform Screen1-Gd-1-Ev-Msg-Begin-Entry
           move w-gd1-sel to old-row
           IF MOB-PALM = 0
160212     AND IMPRIM-PALM <> "X" 
              modify Screen1-Pb-Print, visible = 1
           END-IF
           .
      *
       Screen1-Gd-1-Ev-Msg-Goto-Cell-Mouse.
           perform Screen1-Gd-1-Ev-Msg-Goto-Cell    
           .

      *
       Screen1-Gd-1-Ev-Msg-Begin-Entry.
           move event-action-fail to event-action
           if w-edition not = spaces  exit paragraph 
           end-if

           subtract 1 from event-data-2 giving w-current
           inquire Screen1-Gd-1(event-data-2, 2),
                   hidden-data in ORD-ATT
           inquire Screen1-Gd-1(event-data-2, 4),
                   cell-data in MODIF-NONAUTO
           
           if ord-att = 0 
              move "about:blank" to s
              modify Screen1-Wb-1, value = s
              exit paragraph
           end-if

           read ATTACH
             invalid key
               display message "Problème pour lire le document attaché"
                           FILE-STATUS
               exit paragraph
           end-read
           perform stat

           perform varying i from 1 by 1 until i > w-cntTag
             move 0 to w-tags-selected(i)
             move ORD-ATT to ATT-ATTR
             move w-tags-ord(i) to CLA-ATTR
             read ATTREL
               not invalid key
                 move 1 to w-tags-selected(i)
             end-read
             perform stat
           end-perform
           perform DisplayCount
           perform DisplayAttachment
           perform DisplayAttachmentFile
           if ide-palm = "MIS" and nons-att = 1
              modify Screen1-Bt-NONS, visible 1
           else
              modify Screen1-Bt-NONS, visible 0
           end-if
           .

      * Affiche le nombre de documents
       DisplayCount.
           if w-count = 0 
             modify Screen1-La-Count, title = "Aucun"
           else
             if w-current < 10 
               move w-current(2:1) to s2
             else
               move w-current to s2
             end-if
             if w-count < 10 
               move w-count(2:1) to s3
             else
               move w-count to s3
             end-if
             move spaces to s
             string s2 " / " s3 " - " delimited by "  " into s
             modify Screen1-La-Count, title = s
           end-if
           .

      * Affiche le détail d'un document attaché
      * [i] ENR-ATT le document attaché à afficher
       DisplayAttachment.
           modify Screen1-La-FileName, title = FIC-ATT
           modify Screen1-Ef-Title, value = TIT-ATT
           modify Screen1-La-Title, title = TIT-ATT
           modify Screen1-Ef-Comment, value = COM-ATT
           modify Screen1-La-Author, title = ICRE-ATT
           move spaces to s
           if DCRE-ATT not = 0 
             copy "../../mistral/copy/Ef-Date10-Fic2Ecr.cbl"
                  replacing ==CPYDAT-ECR== BY ==s==
                            ==CPYDAT-FIC== BY ==DCRE-ATT==.
             if heu-att <> 0
                move heu-att(1:2) to s(12:2)
                move ":" to s(14:1)
                move heu-att(3:2) to s(15:2)
             end-if
           end-if
           modify Screen1-La-Date, title = s
           perform DisplayTags
           .

      * Affiche le fichier du document joint dans le browser
      * [i] ENR-ATT  
       DisplayAttachmentFile.
           if FIC-ATT = spaces 
             move "about:blank" to s
           else
             move spaces to s
130619       perform Mep-Folder
             if MOB-PALM = 0  
               string "http://" delimited by " "
                      w-serveur delimited by "  "
                      ":" delimited by size
                      W-NUMPORT-TOMCAT delimited by " "
                      "/mis/file?file=" delimited by " "
130619*                lk-att-folder "/" FIC-ATT
130619                tmp-folder "/" FIC-ATT
                      "&login=MIS&pwd=C1SECRET"
                      delimited by "   "
                      into s      
             else
               string lk-att-folder "/" FIC-ATT delimited by "   "
                      into s
             end-if
           end-if

181114     IF FIC-ATT(1:7) = "http://" OR FIC-ATT(1:8) = "https://"    | Spécial Avesco
181114*        modify Screen1-Wb-1, value = FIC-ATT
030120
              IF XMLS-ATT <> SPACE THEN
      *          URL plus grande que FIC-ATT
                 MOVE SPACE TO W-HTTP
                 STRING FIC-ATT
                        XMLS-ATT 
                   INTO W-HTTP
               ELSE
                  MOVE FIC-ATT TO W-HTTP
               END-IF

               modify Screen1-Wb-1, value = W-HTTP
030120
           else
              modify Screen1-Wb-1, value = s
           END-IF.
           .

       DisplayTempFile.
           if w-tempFilename = spaces 
             move "about:blank" to s
           else
             if MOB-PALM = 0 
               move spaces to s
               string "http://" delimited by " "
                      w-serveur delimited by "  "
                      ":" delimited by " "
                      W-NUMPORT-TOMCAT delimited by " "
                      "/mis/file?file=" delimited by " "
                      w-tempFilename
                      "&login=MIS&pwd=C1SECRET"
                      "&ext=" w-ext
                      delimited by "   "
                      into s
             else
               move w-tempFilename to s
             end-if
           end-if
           modify Screen1-Wb-1, value = s
           .

      * Change la vue d'affichage
      * [i] w-view D = mode détails, F = mode full screen
       ChangeView.
           evaluate w-view
             when "F"
               move 20,30 to w-dy
               move 0 to w-state
             when "D"
               move -20,30 to w-dy
               move 1 to w-state
           end-evaluate

           if w-view = "D" 
              modify Screen1-Cb-View, bitmap-handle FITSIZE24-JPG,
                     title "Agrandir le document" 
           else
              modify Screen1-Cb-View, bitmap-handle FITSIZE24-JPG,
                     title "Afficher le détail"
           end-if

           inquire Screen1-Wb-1, lines in w-y
           add w-dy to w-y
           modify Screen1-Wb-1, lines w-y

           inquire Screen1-La-Count, line in w-y
           add w-dy to w-y
           modify Screen1-La-Count, line w-y
           inquire Screen1-La-Title, line in w-y
           add w-dy to w-y
           modify Screen1-La-Title, line w-y

      *    Les boutons d'édition sont accessibles que si on est entré dans
      *    le programme avec les droits 
      *     if (lk-att-cho not = "I" and w-state = 1 
250510*         and auto-mod not = 2) 
250510*     or (auto-mod = 1 and w-state = 1)
      * changé le 25/10/10 on prend les droits du programme appelant sauf
      * si autoristaion à oui ou non                    
251010     if w-state = 1
251010     and (auto-mod = 1 
                or (auto-mod = 0 and modif-palm <> "X"))
             move 1 to w-state2
           else
             move 0 to w-state2
           end-if

           modify Screen1-Pb-New, visible = w-state2
           modify Screen1-Pb-Modify, visible = w-state2
           if MOB-PALM = 0
              modify Screen1-Pb-Taille, visible = w-state2
           else
              modify Screen1-Pb-Taille, visible = false
           end-if
           modify Screen1-Pb-Delete, visible = w-state2
      *    Les boutons sauvegarder et annuler ne sont visibles que si on
      *    est aussi en mode détails ET en mode édition
           if lk-att-cho not = "I" and w-state = 1 and
               w-edition not = spaces 
             move 1 to w-state2
           else
             move 0 to w-state2
           end-if
           modify Screen1-Pb-Cancel, visible = w-state2
           modify Screen1-Pb-Save, visible = w-state2
      *    Le bouton parcourir est visible que si on est en mode détails
      *    ET en mode édition de type création
           if lk-att-cho not = "I" and w-state = 1 and w-edition = "C" 
             move 1 to w-state2
           else
             move 0 to w-state2
           end-if
           modify Screen1-Pb-Browse, visible = w-state2

           modify Screen1-Gd-1, visible = w-state
           modify Screen1-Fr-Prop, visible = w-state
           modify Screen1-Li-FileName, visible = w-state
           modify Screen1-La-FileName, visible = w-state
           modify Screen1-Li-Title, visible = w-state
           modify Screen1-Ef-Title, visible = w-state
           modify Screen1-Li-Comment, visible = w-state
           modify Screen1-Ef-Comment, visible = w-state
           modify Screen1-Li-Date, visible = w-state
           modify Screen1-La-Date, visible = w-state
           modify Screen1-Li-Author, visible = w-state
           modify Screen1-La-Author, visible = w-state
           modify Screen1-Li-Cla, visible = w-state
           modify Screen1-Ef-Cla, visible = w-state
           IF W-EDITION NOT = SPACES
              modify Screen1-Pb-Wall, visible = w-state.
           .

      * Change le mode d'édition de la fenêtre
      * [i] w-edition C = création, M = modification, '' = consultation
       ChangeEditionMode.
           if w-edition = spaces 
             modify Screen1-Cb-View, visible = 1
             modify Screen1-Pb-Previous, visible = 1
             modify Screen1-Pb-Next, visible = 1
             modify Screen1-Ef-Title, enabled 0
             modify Screen1-Ef-Comment, enabled 0
             modify Screen1-Pb-Wall, visible = 0
             modify Screen1-Pb-New, visible = true
             modify Screen1-Pb-Modify, visible = true
             if MOB-PALM = 0
                modify Screen1-Pb-Taille, visible = true
             else
                modify Screen1-Pb-Taille, visible = false
             end-if
             modify Screen1-Pb-Delete, visible = true
             modify Screen1-Pb-Save, visible = false
             modify Screen1-Pb-Cancel, visible = false
           else
             modify Screen1-Cb-View, visible = 0
             modify Screen1-Pb-Previous, visible = 0
             modify Screen1-Pb-Next, visible = 0
             modify Screen1-Ef-Title, enabled 1
             modify Screen1-Ef-Comment, enabled 1
             modify Screen1-Pb-Wall, visible = 1
             modify Screen1-Pb-New, visible = false
             modify Screen1-Pb-Modify, visible = false
             modify Screen1-Pb-Taille, visible = false
             modify Screen1-Pb-Delete, visible = false
             modify Screen1-Pb-Save, visible = true
             modify Screen1-Pb-Cancel, visible = true
           end-if

           if w-edition = "C" 
             modify Screen1-Pb-Browse, visible = true
           else
             modify Screen1-Pb-Browse, visible = false
           end-if
           .

      *
       Screen1-Pb-New-Link.
250510     if auto-mod = 2 
251010     or (auto-mod = 0 and modif-palm = "X")
              exit paragraph 
250510     end-if

           initialize ENR-ATT
           move lk-att-typ to ORI-ATT
           move lk-att-cle to CLE-ATT
           move lk-att-soc to SOC-ATT
           inquire Screen1-Gd-1, last-row in RAN-ATT
           move IDE-PALM to ICRE-ATT
           accept DCRE-ATT from century-date

           perform varying i from 1 by 1 until i > w-cntTag
             move w-tags-ord(i) to ORD-ATTC
             read ATTCLA
               invalid key initialize ENR-ATTC
             end-read
             move DEF-ATTC to w-tags-selected(i)
           end-perform
           
           perform DisplayAttachment

           perform DisplayAttachmentFile

           move "C" to w-edition
           perform ChangeEditionMode

           perform Screen1-Pb-Browse-Link
           .
       
      *
       Screen1-Pb-Modify-Link.
250510     if auto-mod = 2 
251010     or (auto-mod = 0 and modif-palm = "X")
130619     or MODIF-NONAUTO = 1
              exit paragraph 
250510     end-if

           if ORD-ATT = 0 
             exit paragraph
           end-if

           perform DisplayAttachment

           move "M" to w-edition
           perform ChangeEditionMode
           .
      *
       Screen1-Pb-Cancel-Link. 
           if ORD-ATT = 0 
             initialize ENR-ATT
             perform varying i from 1 by 1 until i > w-cntTag
               move 0 to w-tags-selected(i)
             end-perform
             perform DisplayAttachmentFile
           end-if
           perform DisplayAttachment

           move spaces to w-edition
           perform ChangeEditionMode
           .
      *
       Screen1-Pb-Save-Link.
           perform Ddv
           if w-ddv  = 0  exit paragraph 
           end-if

           if ORD-ATT = 0 
             move 1 to w-state
           else
             move 0 to w-state
           end-if
           perform SaveAttachment

           perform DisplayAttachment
           if w-state = 1 
             add 1 to w-count
             perform DisplayCount
             move 0 to w-index
           else
             move w-gd1-sel to w-index
           end-if
           perform SetAttachmentGridRecord
 
           if w-index = -1  
             move i to event-data-2
           else
             move w-index to event-data-2
           end-if
           move 1 to event-data-1
150513
           if event-data-2 = 0
              inquire Screen1-Gd-1, LAST-ROW event-data-2
           end-if
150513
           modify Screen1-Gd-1, y = old-row, row-color = 0,
                  y = event-data-2, row-color = w-row-low-color
           move event-data-2 to old-row
           move spaces to w-edition
           perform Screen1-Gd-1-Ev-Msg-Begin-Entry
 
           move spaces to w-edition
           perform ChangeEditionMode
           .

      * Vérifie les données saisies par l'utilisateur
      * [o] w-ddv 1 si les données sont valides, 0 sinon
       Ddv.
           move 0 to w-ddv
           if w-edition = "C" 
             inquire Screen1-La-FileName, title in s
             if s = spaces 
               display message box
                 "Veuillez indiquer le fichier à attacher."
               exit paragraph
             end-if
           end-if

           inquire Screen1-Ef-Title, value in s
      *     if s = spaces 
      *       display message box
      *         "Veuillez indiquer le titre du document."
      *       exit paragraph
      *     end-if
           move 1 to w-ddv
           .        

       SaveAttachment.         
           move space to zon-repert
           unstring lk-att-folder delimited by "/" into 
              repert(1) repert(2) repert(3) repert(4) repert(5) 
              repert(6) repert(7) 
           if repert(3) not = space
              move space to w-repert
              string repert(1) "/" repert(2) "/" repert(3)
              delimited by " " into w-repert
              call "c$makedir" using w-repert
           end-if
           if repert(4) not = space
              move space to w-repert
              string repert(1) "/" repert(2) "/" repert(3) "/" repert(4)
              delimited by " " into w-repert
              call "c$makedir" using w-repert
           end-if
           if repert(5) not = space
              move space to w-repert
              string repert(1) "/" repert(2) "/" repert(3) "/" repert(4)
                     "/" repert(5)
              delimited by " " into w-repert
              call "c$makedir" using w-repert
           end-if
           if repert(6) not = space
              move space to w-repert
              string repert(1) "/" repert(2) "/" repert(3) "/" repert(4)
                     "/" repert(5) "/" repert(6)
              delimited by " " into w-repert
              call "c$makedir" using w-repert
           end-if
           call "c$makedir" using lk-att-folder

      *    Traitement spécial pour les nouveaux documents
           if ORD-ATT = 0 
      *      Lui trouve un numéro d'ordre
             perform GetNextOrdAttachment
             accept DCRE-ATT from century-date
      *      Trouve un nom de fichier
             move FIC-ATT to s
             perform GetFileParts
160614
             if w-ext not = spaces 
                move function lower-case(w-ext) to w-ext
             end-if
160614
             move lk-att-cle to w-att-cle
             perform varying k from 30 by -1 until k = 1 
                     or w-att-cle(k:1) not = space
               continue
             end-perform
             perform varying k2 from 1 by 1 until k2 > k
               if w-att-cle(k2:1) = space or "/" 
                 move "_" to w-att-cle(k2:1)
               end-if
             end-perform
             move 0 to w-ret
             move 0 to i
             perform until w-ret not = 0
               add 1 to i
      *        Formate le modèle du nom de fichier
               if i < 10 
                 move i(3:1) to s2
               else  if i < 100 
                        move i(2:2) to s2
                     else 
                        move i to s2
                     end-if
               end-if
               move spaces to FIC-ATT
               if MOB-PALM = 0 
                 string w-att-cle "_" s2 ".*" delimited by "   "
                        into FIC-ATT
               else
      *          Inclut le numéro de portable pour éviter collisions lors de la synchro
                 string w-att-cle "_" MOB-PALM "_" s2 ".*"
                        delimited by "   "  into FIC-ATT
               end-if
      *        Cherche si un fichier existe avec ce modèle de nom
               call "c$list-directory"
                    using LISTDIR-OPEN, lk-att-folder, FIC-ATT
               move return-code to w-hFind
               if w-hFind  = 0 
150609            move 1 to w-ret                          
               else
      *          Cherche si un fichier existe
                 call "c$list-directory"
                      using LISTDIR-NEXT, w-hFind, w-filename
                 if w-filename = spaces 
                   move 1 to w-ret
                 end-if
                 call "c$list-directory" using LISTDIR-CLOSE, w-hFind
               end-if
             end-perform
      *      Puis le copie avec ce modèle
             move spaces to FIC-ATT w-filename
             if MOB-PALM = 0 
               string w-att-cle "_" s2 "." w-ext delimited by "   "
                      into FIC-ATT  
             else
               string w-att-cle "_" MOB-PALM "_" s2 "." w-ext
                    delimited by "   "  into FIC-ATT
             end-if
             string lk-att-folder "/" FIC-ATT delimited by "   "
                      into w-filename     
             call "c$copy" using w-tempFilename, w-filename
                           giving w-ret
             call "c$delete" using w-tempFilename
           end-if
           inquire Screen1-Ef-Title, value in TIT-ATT
           inquire Screen1-Ef-Comment, value in COM-ATT
           accept dme-att from century-date
           rewrite ENR-ATT
           perform stat
      

      *    Enregistre les tags
      *    Evenement de synchro sur ATTREL
           perform varying i from 1 by 1 until i > w-cntTag
             move ORD-ATT to ATT-ATTR
             move w-tags-ord(i) to CLA-ATTR
             read ATTREL
             perform stat
             if w-tags-selected(i) = 0                
               if Valid-File-Status 
                 delete ATTREL
                 perform stat
               end-if
             else
               if not Valid-File-Status 
                 write ENR-ATTR
                 perform stat
               end-if
             end-if             
           end-perform
           .

      * Cherche le prochain n° d'ordre disponible pour sauvegarder un nouvel attachement
      * [i/o] ENR-ATT renseigne ORD-ATT sans effacer les autres champs
       GetNextOrdAttachment.
           move ENR-ATT to w-enr-ATT

      *    Cherche le dernier enregistrement du fichier
           move 1 to w-io   
           MOVE MOB-PALM TO MOB-ATT
           move 9999999  to ORD2-ATT
           start ATTACH key <= CLE1-ATT
             invalid key move 0 to w-io
           end-start
           perform stat
           if w-io = 1 
             read ATTACH previous
               at end move 0 to w-io
             end-read
             perform stat
           end-if

      *    En déduit le prochain numéro d'ordre
           if w-io = 0 OR MOB-PALM NOT = MOB-ATT 
             MOVE MOB-PALM TO W-ord1-ATT
             move 1        to w-ord2-ATT
           else
             MOVE MOB-PALM TO W-ord1-ATT
             add 1 ORD2-ATT giving w-ord2-ATT
           end-if

      *    Le réserve
           move w-enr-ATT to ENR-ATT
           move w-ord-ATT to ORD-ATT
           write ENR-ATT
           perform stat
           .

      *
       Screen1-Pb-Browse-Link.
      *    Demande à l'utilisateur de choisir le fichier  
160513     IF MOB-PALM = 0
              initialize lk-uploadfile
              move w-tempFileName to lk-uploadfile-destfile
                                     w-browseFileName
              move 1 to lk-uploadfile-keepext
              move "Document" to lk-uploadfile-title
              call "../../mx/o/uploadfile.acu"
                 using zone-palm, lk-uploadfile
              cancel "../../mx/o/uploadfile.acu"
              if lk-uploadfile-savedfile = space
                 move lk-uploadfile-srcfile to lk-uploadfile-savedfile
              end-if
              if lk-uploadfile-savedfile not = space  
      *        Vérifie que l'extension soit bien supportée
                  move lk-uploadfile-savedfile to w-browseFileName 
              end-if   
              unstring w-browseFileName delimited by "/ft/"
                 into s OPNSAV-BASENAME 
           ELSE
160513
              initialize OPENSAVE-DATA
              move "Document" To OPNSAV-TITLE
              move "Tous les fichiers (*.*)|*.*" To OPNSAV-FILTERS
              call "C$OPENSAVEBOX" 
                Using  OPENSAVE-OPEN-BOX, OPENSAVE-DATA
                giving OPENSAVE-STATUS
              end-call
              cancel "C$OPENSAVEBOX"   
              if not OPENSAVE-OK  exit paragraph 
              end-if
      *    Récupère le nom sélectionné
              if IS-REMOTE 
                move spaces to w-browseFileName
                string "@[DISPLAY]:" OPNSAV-FILENAME delimited by size
                    into w-browseFileName
              else
                move OPNSAV-FILENAME to w-browseFileName
              end-if
           end-if
      *    Copie le fichier
040614* avec redimensionnement              
           move 0 to w-ok
           if mob-palm = 0
              move w-browseFileName to w-curphoto
              move w-tempFileName to w-thumbnail
             perform Do-Change-Taille
           end-if
040614
           if w-ok = 0
              call "c$copy" using w-browseFileName, w-tempFileName
                 giving w-ret
              if w-ret not = 0 
                display message box "Problème pour copier le fichier"
                w-newline w-browseFileName w-newline w-tempFileName
                exit paragraph
              end-if
           end-if
           if w-browseFileName <> space
             call "c$delete" using w-browseFileName
                 giving w-ret 
             if w-ret not = 0 
               display message box "Problème pour supprimer le fichier"
               w-newline w-browseFileName  
               exit paragraph
             end-if
           end-if

      *    Vérifie que l'extension soit bien supportée
           move OPNSAV-BASENAME to s
           perform GetFileParts
           if w-ext not = spaces 
             move function lower-case(w-ext) to w-ext
           end-if
           evaluate w-ext
             when "pdf"
               move "application/pdf" to MIM-ATT
             when "gif"
               move "image/gif" to MIM-ATT
             when "jpg"
             when "jpeg"
               move "image/jpeg" to MIM-ATT
             when "png"
               move "image/png" to MIM-ATT
             when "txt"
               move "text/plain" to MIM-ATT
             when "htm"
             when "html"
               move "text/html" to MIM-ATT
             when "csv"
               move "text/csv" to MIM-ATT
             when "xls"
             when "xlsx"
               move "application/vnd.ms-excel" to MIM-ATT
             when "doc"
             when "docx"
               move "application/msword" to MIM-ATT
             when other
               move spaces to MIM-ATT
           end-evaluate

      *    Okai
           move OPNSAV-BASENAME to FIC-ATT
           modify Screen1-La-FileName, title = OPNSAV-BASENAME
           perform DisplayTempFile

           if w-ext = "pdf" 
              call "c$sleep" using 1
           end-if

           move 4 to accept-control
           move 13 to control-id
           .

       
      * Retourne le nom et l'extension d'un nom de fichier
      * [i] s nom du fichier
      * [o] w-name le nom du fichier sans l'extension
      * [o] w-ext l'extension du fichier (sans le point)
       GetFileParts.
           move function length(s) to n
           perform varying i from n by -1 until i = 0 or s(i:1) = "."
             continue
           end-perform
           if i = 0 
             move s to w-name
             move spaces to w-ext
           else
             subtract 1 from i giving j
             move s(1:j) to w-name
             add 1 to i giving j
             move s(j:) to w-ext
           end-if
           .
      *
       Screen1-Pb-Delete-Link.
250510     if auto-mod = 2 
251010     or (auto-mod = 0 and modif-palm = "X")
130619     or MODIF-NONAUTO = 1
              exit paragraph 
250510     end-if

           if ORD-ATT = 0 
             exit paragraph
           end-if
           move "203" to acu-msg-id
           perform acu-show-msg
           if acu-return-value not = 1 exit paragraph
           end-if
      *    Nom du fichier représentant le document attaché
           move spaces to w-filename
           string lk-att-folder "/" FIC-ATT delimited by "   "
                  into w-filename

      *    Vérifie si le fichier existe
           call "c$fileinfo" using w-filename, file-info giving w-ret

           if w-ret = 0 
250516*    Test si image utilisée sur d'autre attachements
              perform Test-Existe
              if W-EXISTE = 0 
250516
      *      Si oui, le supprime
                call "c$delete" using w-filename giving w-ret
                if w-ret not = 0 
                  display message "Problème pour supprimer le fichier "
                       w-filename
                  exit paragraph
                end-if
              end-if
           end-if.

      *    Supprime l'enregistrement dans le fichier
           delete ATTACH
           perform stat
           subtract 1 from w-count

      *    Supprime les classements + synchro
           perform varying i from 1 by 1 until i > w-cntTag
             move ORD-ATT       to ATT-ATTR
             move w-tags-ord(i) to CLA-ATTR
             read ATTREL
             perform stat
             if Valid-File-Status 
                 delete ATTREL
                 perform stat
             end-if
           end-perform

           modify Screen1-Gd-1, record-to-delete = w-gd1-sel
           inquire Screen1-Gd-1, LAST-ROW in lastrow
           if lastrow < w-gd1-sel move lastrow to w-gd1-sel.
           move w-gd1-sel to event-data-2
           move 1 to event-data-1
      *     move 0 to w-gd1-sel
      *     perform Screen1-Gd-1-Ev-Msg-Goto-Cell
           modify Screen1-Gd-1, y = old-row, row-color = 0,
                  y = event-data-2, row-color = w-row-low-color
           move event-data-2 to old-row
      *     move event-data-2 to w-gd1-sel
           move spaces to w-edition
           perform Screen1-Gd-1-Ev-Msg-Begin-Entry

      *     initialize ENR-ATT
      *     perform varying i from 1 by 1 until i > w-cntTag
      *       move 0 to w-tags-selected(i)
      *     end-perform
      *
           perform DisplayCount
      *     perform DisplayAttachment
      *     perform DisplayAttachmentFile
           .
      *
       Screen1-Pb-Next-Link.
           if w-count >= 1 and w-current < w-count 
             if w-current = 0 
               move 1 to w-current
             else
               add 1 to w-current
             end-if
             add 1 to w-current giving event-data-2
             move 2 to event-data-1
             perform Screen1-Gd-1-Ev-Msg-Goto-Cell
      *       perform Screen1-Gd-1-Ev-Msg-Begin-Entry
           end-if
           .
      *
       Screen1-Pb-Previous-Link.
           if w-current > 1 
             subtract 1 from w-current
             add 1 to w-current giving event-data-2
             move 2 to event-data-1
             perform Screen1-Gd-1-Ev-Msg-Goto-Cell
      *       perform Screen1-Gd-1-Ev-Msg-Begin-Entry
           end-if
           .
      *
       Screen1-Cb-View-Ev-Cmd-Clicked.
           inquire Screen1-Cb-View, value in w-state
           if w-state = 1 
             move "F" to w-view
           else
             move "D" to w-view
           end-if
           perform ChangeView
           .
      *
       After-Program.
           move w-count to lk-att-count
           perform CloseFiles
      *    Supprime le fichier temporaire du fichier choisi
           call "c$delete" using w-tempFilename giving w-ret
           .
      *
       Screen1-Pb-Wall-Link.
           call "w$menu" using WMENU-POPUP, Screen1-Mn-Tags-Handle
           .

      *
       Screen1-Mn-Tags-MI-tag1-Link.
           move 1 to w-index
           perform CheckTag
           .
      *
       Screen1-Mn-Tags-MI-tag2-Link.
           move 2 to w-index
           perform CheckTag
           .
      *
       Screen1-Mn-Tags-MI-tag3-Link.
           move 3 to w-index
           perform CheckTag
           .
      *
       Screen1-Mn-Tags-MI-tag4-Link.
           move 4 to w-index
           perform CheckTag
           .
      *
       Screen1-Mn-Tags-MI-tag5-Link.
           move 5 to w-index
           perform CheckTag
           .
      *
       Screen1-Mn-Tags-MI-tag6-Link.
           move 6 to w-index
           perform CheckTag
           .
      *
       Screen1-Mn-Tags-MI-tag7-Link.
           move 7 to w-index
           perform CheckTag
           .
      *
       Screen1-Mn-Tags-MI-tag8-Link.
           move 8 to w-index
           perform CheckTag
           .
      *
       Screen1-Mn-Tags-MI-tag9-Link.
           move 9 to w-index
           perform CheckTag
           .
      *
       Screen1-Mn-Tags-MI-tag10-Link.
           move 10 to w-index
           perform CheckTag
           .
      *
       Screen1-Mn-Tags-MI-tag11-Link.
           move 11 to w-index
           perform CheckTag
           .
      *
       Screen1-Mn-Tags-MI-tag12-Link.
           move 12 to w-index
           perform CheckTag
           .
      *
       Screen1-Mn-Tags-MI-tag13-Link.
           move 13 to w-index
           perform CheckTag
           .
      *
       Screen1-Mn-Tags-MI-tag14-Link.
           move 14 to w-index
           perform CheckTag
           .
      *
       Screen1-Mn-Tags-MI-tag15-Link.
           move 15 to w-index
           perform CheckTag
           .

       CheckTag.
           if w-tags-selected(w-index) = 0 
             move 1 to w-tags-selected(w-index)
           else
             move 0 to w-tags-selected(w-index)
           end-if

           perform DisplayTags
           .

       DisplayTags.
           move 2450 to w-id
           move spaces to s


           perform varying i from 1 by 1 until i > w-cntTag
             add 1 to w-id
             if w-tags-selected(i) = 0 
               call "w$menu" using WMENU-UNCHECK,
                           Screen1-Mn-Tags-Handle, w-id
             else
               call "w$menu" using WMENU-CHECK,
                           Screen1-Mn-Tags-Handle, w-id
               move w-tags-ord(i) to ORD-ATTC
               read ATTCLA
               perform stat
               if s = spaces 
                 move LIB-ATTC to s
               else
                 string s delimited by "   "
                        "," " " delimited by "   "
                        LIB-ATTC delimited by "   "
                        into s
               end-if
             end-if
           end-perform

           modify Screen1-Ef-Cla, value = s
           .

      *
       Screen1-Pb-Print-Link.

           .
      *
       Screen1-Gd-1-Ev-Msg-End-Drag.
           modify Screen1-Gd-1, cursor-x = 0, cursor-y = 0

           if auto-mod = 2 
           or (auto-mod = 0 and modif-palm = "X")
           or w-edition not = spaces 
             exit paragraph
           end-if
           if event-data-2 = w-gd1-sel or
              w-gd1-sel + 1 = event-data-2 
             exit paragraph
           end-if

           inquire Screen1-Gd-1(w-gd1-sel, 2), hidden-data in ORD-ATT
           read ATTACH
             invalid key exit paragraph
           end-read
           perform stat

           modify Screen1-Gd-1, record-to-delete = w-gd1-sel
           if w-gd1-sel > event-data-2 
             compute w-index = - event-data-2
           else
             compute w-index = 1 - event-data-2
           end-if
           perform SetAttachmentGridRecord

           perform Screen1-Gd-1-Ev-Msg-Goto-Cell

           inquire Screen1-Gd-1, last-row in n
           perform varying i from event-data-2 by 1 until i > n
             inquire Screen1-Gd-1(i, 2), hidden-data in ORD-ATT
             read ATTACH
               invalid key exit perform cycle
             end-read
             perform stat
             subtract 1 from i giving RAN-ATT
             rewrite ENR-ATT
             perform stat
           end-perform       
           .

       Imprime-Photo.

           .

      *
       Screen1-Ev-Cmd-Close.
           perform Mistral-WindowClosing
           .
      *
       Screen1-Ev-Ntf-Resized.
           MOVE 1 TO IND-RESIZE
           .
      *
       Screen1-Link.
           IF IND-RESIZE = 1
              MOVE EVENT-DATA-1 TO WLINES-E
              MOVE EVENT-DATA-2 TO WSIZE-E
              COMPUTE WLINES-E = WLINES-E / 100
              COMPUTE WSIZE-E  = WSIZE-E / 100
              COMPUTE DIF-LINES-E = WLINES-E - SV-LINES-E
              COMPUTE DIF-SIZE-E  = WSIZE-E - SV-SIZE-E 
              PERFORM Adapte-Taille
              MOVE 0 TO IND-RESIZE
              MOVE WLINES-E TO SV-LINES-E
              MOVE WSIZE-E TO SV-SIZE-E
              MOVE 0 TO DIF-LINES-E DIF-SIZE-E
           END-IF 
           .

       Adapte-Taille.
           INQUIRE Screen1-Wb-1, LINES WLINES-T, SIZE WSIZE-T
           ADD DIF-LINES-E TO WLINES-T
           ADD DIF-SIZE-E TO WSIZE-T
           MODIFY Screen1-Wb-1, LINES WLINES-T, SIZE WSIZE-T.
           INQUIRE Screen1-La-Count, LINE WLINES-T
           ADD DIF-LINES-E TO WLINES-T
           MODIFY Screen1-La-Count, LINE WLINES-T.
           INQUIRE Screen1-La-Title, LINE WLINES-T
           ADD DIF-LINES-E TO WLINES-T
           MODIFY Screen1-La-Title, LINE WLINES-T.
      *
      * Screen1-Pb-Email-Link.
      *     initialize lk-mail W-URL
      *
      *     inquire Screen1-Gd-1, last-row in n
      *     perform varying i from 1 by 1 until i > n
      *       inquire Screen1-Gd-1(i, 1), hidden-data in w-sel
      *       if w-sel = 1 
      *         inquire Screen1-Gd-1(i, 2), hidden-data in ORD-ATT
      *         read ATTACH
      *           invalid key exit perform cycle
      *         end-read
      *         perform stat
181114*         IF FIC-ATT(1:7) = "http://" OR FIC-ATT(1:8) = "https://"    | Spécial Avesco
181114*            MOVE 1 TO W-URL
181114*            exit perform cycle
181114*         end-if
      *         move spaces to s
130619*         perform Mep-Folder
130619**         string lk-att-folder "/" FIC-ATT delimited by " " into s
130619*         string tmp-folder "/" FIC-ATT delimited by " " into s
      *         if lk-mail-attachments = spaces 
      *           move s to lk-mail-attachments
      *         else
      *           string lk-mail-attachments delimited by " "
      *                  "|" delimited by size
      *                  s delimited by " "
      *                  into lk-mail-attachments
      *         end-if
      *       end-if
      *     end-perform
      *
      *     if lk-mail-attachments = spaces 
      *       IF W-URL = 0 
      *          display message box 
      *               "Veuillez sélectionner les documents à"
      *               " envoyer par email."
      *          exit paragraph
      *        else
      *          display message box 
      *               "Ces documents ne peuvent pas être envoyés"
      *               "par email."
      *          exit paragraph
      *        end-if
      *     end-if
      *
      *     string "Documents pour " delimited by size
      *            lk-att-name 
      *            into lk-mail-body
190215*     move lk-att-ema to lk-mail-to
      *     call "../../mistral/o/writemail.acu" using zone-palm, lk-mail
      *     cancel "../../mistral/o/writemail.acu"
      *     .
      **
       Screen1-Gd-1-Ev-Msg-Bitmap-Clicked.
           if event-data-1 = 1 
             inquire Screen1-gd-1, hidden-data in i
             if i = 1 
               modify Screen1-Gd-1, bitmap = CBUNCHK13-JPG,
                      hidden-data = 0
             else
               modify Screen1-Gd-1, bitmap = CBCHECK13-JPG,
                      hidden-data = 1
             end-if
           end-if
           .
      *
       Screen1-Pb-Taille-Link.
           if auto-mod = 2 
           or (auto-mod = 0 and modif-palm = "X")
           or mob-palm not = 0
130619     or MODIF-NONAUTO = 1
              exit paragraph 
           end-if
 
           if ORD-ATT = 0 
             exit paragraph
           end-if.

           move FIC-ATT to s
           perform GetFileParts
           if w-ext not = spaces 
             move function lower-case(w-ext) to w-ext
           end-if
           if w-ext not = "jpg" and not = "jpeg"
              exit paragraph
           end-if.

           perform Change-Taille.
           if w-ok = 0 exit paragraph
           end-if
           move "Validez-vous le redimensionnement?" to acu-msg-1
           perform msg-on
           if acu-return-value = 1
              call "c$copy" using w-thumbnail w-curPhoto
                             giving w-status
              if w-status not = 0
                 move "Impossible de copier la photo." to acu-msg-1
                 perform msg-info
              else
                 move "Redimensionnement effectué." to acu-msg-1
                 perform msg-info
              end-if
           end-if.
           
       Change-Taille.
           move space to w-curPhoto w-thumbnail
           string lk-att-folder "/" FIC-ATT delimited by "   "
                      into w-curPhoto
           string mx-dir "/ft/" FIC-ATT delimited by "   "
                      into w-thumbnail.

           perform Do-Change-Taille.

           if w-status not = 0 or j-int not = 0 
              if j-int <> -9
                 move j-int to z-int
                 move "Problème dimension photo" to acu-msg-1
                 string w-curPhoto " -" " " w-thumbnail
                 delimited by "   "
                 INTO acu-msg-2
                 perform msg-erreur
                 exit paragraph
              else
                 move "Le dimension de la photo ne peut être modifiée."
                 to acu-msg-1
                 perform msg-erreur
                 exit paragraph
              end-if
           end-if
           move spaces to s
           string "http://" delimited by size
                  w-serveur delimited by "  "
                  ":" delimited by size
                  W-NUMPORT-TOMCAT delimited by " "
                  "/mis/file?file=" delimited by size
                  w-thumbnail
                  "&login=MIS&pwd=C1SECRET"
                  delimited by "   "
                  into s
           modify Screen1-Wb-1, value = s.

       Do-Change-Taille.
           move 0 to w-ok
           call "c$java"
                using CJAVA-CALLSTATIC,
                     "fr/mistral/awt/ImageHelper"
                     "getMaximumImage", "(XIIX)I",
                     w-curPhoto, 800, 600, w-thumbnail, j-int
                   giving w-status.
           if not (w-status not = 0 or j-int not = 0)
              move 1 to w-ok
           end-if.
              
           

       Screen1-Gd-1-Ev-Msg-Begin-Drag.
           if auto-mod = 2 
           or (auto-mod = 0 and modif-palm = "X")
130619     or MODIF-NONAUTO = 1
           or w-edition not = spaces 
              MOVE EVENT-ACTION-FAIL TO EVENT-ACTION
              EXIT PARAGRAPH
           END-IF
           MODIFY Screen1-Gd-1, CURSOR-COLOR = 160.
      *
       Screen1-Pb-Close-Link.
           perform Acu-Screen1-Exit 
           .

       Test-Existe.
           COPY "../../mistral/copy/Assign-FICTMP.cbl" REPLACING 
              ==FICTMP==   BY ==RECH==
              =='FICTMP'== BY ==RECH==.
           CLOSE RECH.
      
           MOVE 0 TO W-EXISTE

           MOVE "ATTACH" TO CMD-RECH-FIC
           MOVE SPACE TO CMD-RECH-DIR
           STRING G-DIR "/cxg" delimited by " " into CMD-RECH-DIR
           MOVE ASSIGN-RECH TO CMD-RECH-RESULT
           MOVE 1 TO CMD-RECH-DEBSOR
           MOVE 510 TO CMD-RECH-FINSOR
           MOVE RECORD-POSITION OF FIC-ATT TO CMD-RECH-POSR(1)
           MOVE 30 TO CMD-RECH-LONR(1)
           MOVE FIC-ATT TO CMD-RECH-VAL(1)
           MOVE "==" TO CMD-RECH-OPE(1)
           COPY "W:/mistral/copy/rech.cbl".

           OPEN INPUT RECH
           PERFORM STAT
           MOVE 0 TO W-EOF
           MOVE SPACE TO ENR-RECH
           PERFORM UNTIL W-EOF = 1
              MOVE SPACE TO ENR-RECH 
              READ RECH NEXT END MOVE 1 TO W-EOF
              END-READ
              PERFORM STAT
              IF W-EOF NOT = 1 
                   move enr-rech to enr-att2
                   if cle1-att not = cle1-att2
                      MOVE 1 TO W-EXISTE
                   end-if
              END-IF
           END-PERFORM
           CLOSE RECH
           DELETE FILE RECH.

      * pour changer le n° de société par bon chez SECA/ISERMAT
       CHANGE-SOC-ATT.
           move 0 to w-count
           move 1 to w-io  
           initialize ENR-ATT
           start ATTACH key >= CLE2-ATT
             invalid key move 0 to w-io
           end-start
           perform stat  

           perform until w-io = 0
             read ATTACH next
               at end move 0 to w-io
             end-read
             perform stat
             if w-io = 1 
                if SOC-ATT = 1 
                   move 10 to soc-att
                   rewrite enr-att
                   end-rewrite
                   perform stat
                   ADD 1 TO W-COUNT
                end-if
             END-IF
           END-PERFORM
           display message w-count.

       TEST-VISU-SOC.
           move 1 to w-io-attrel auto-v
           move ord-att to ATT-ATTR
           move low-value to CLA-ATTR

           start ATTREL key >= CLE1-ATTR
             invalid key move 0 to w-io-attrel
           end-start
           perform stat
           perform until w-io-attrel = 0
             read ATTREL next
               at end move 0 to w-io-attrel
             end-read
             perform stat
             if ATT-ATTR not = ord-att  
               move 0 to w-io-attrel
             end-if
             if w-io-attrel = 1 
               move cla-attr to ord-attc
               read attcla invalid exit perform cycle
               end-read
               perform stat
               if rso-attc = 1 and soc-attc not = nso-palm
                  move 0 to auto-v
               end-if
               if cx-attc = 1 and W-RCX-PALM = "X"
                 move 0 to auto-v
               end-if
             end-if
           end-perform.

       Mep-Folder.
           move lk-att-folder to tmp-folder
           evaluate ori-att
           when "TPE"
              move space to tmp-folder
              string IMAGE-DIR 
                     "/mx" LK-att-soc "/fi/TR" delimited by " "
                     into tmp-folder
           when "BSE"
              move space to tmp-folder
              string IMAGE-DIR 
                     "/mx" LK-att-soc "/fi/BSE" delimited by " "
                     into tmp-folder
           end-evaluate.


       

      *{Bench}end
       REPORT-COMPOSER SECTION.
