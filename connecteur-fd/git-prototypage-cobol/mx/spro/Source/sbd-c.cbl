      *{Bench}prg-comment
      * sbd-c.cbl
      * sbd-c.cbl is generated from W:\mx\spro\sbd-c.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. sbd-c.
       AUTHOR. kobalt2.
       DATE-WRITTEN. mardi 30 juin 2020 12:27:30.
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
       COPY "MXFAMART.sl".
       COPY "MXART.sl".
       COPY "MXCLID.sl".
       COPY "MXGRAFAM.sl".
       COPY "MXPREGEN.sl".
       COPY "MXARTSA.sl".
       COPY "MXPREGENV.sl".
       COPY "MXPARAM.sl".
       COPY "COBCAP.sl".
       COPY "MXBDIS.sl".
       COPY "MXAGEDIS.sl".
       COPY "MXAGENCE.sl".
       COPY "MXPARDIS.sl".
       COPY "MXMARQUE.sl".
       COPY "MXLDIS.sl".
       COPY "MXHISVTE.sl".
       COPY "MXCLI.sl".
       COPY "MXCATFOU.sl".
       COPY "MXGRAFAD.sl".
       COPY "MXFOU.sl".
       COPY "MXART2.sl".
       COPY "MXDOCTEC.sl".
       COPY "MXARTSA2.sl".
       COPY "MXLDIS2.sl".
       COPY "MXBDIS2.sl".
       COPY "MXAGENCE2.sl".
       COPY "MXCOMMENT.sl".
       COPY "MXCLI2.sl".
       COPY "MXAGENCE3.sl".
       COPY "ATTACH.sl".
       COPY "INTSEL.sl".
      *{Bench}end
       DATA                        DIVISION.
       FILE                        SECTION.
      *{Bench}file
       COPY "MXFAMART.fd".
       COPY "MXART.fd".
       COPY "MXCLID.fd".
       COPY "MXGRAFAM.fd".
       COPY "MXPREGEN.fd".
       COPY "MXARTSA.fd".
       COPY "MXPREGENV.fd".
       COPY "MXPARAM.fd".
       COPY "COBCAP.fd".
       COPY "MXBDIS.fd".
       COPY "MXAGEDIS.fd".
       COPY "MXAGENCE.fd".
       COPY "MXPARDIS.fd".
       COPY "MXMARQUE.fd".
       COPY "MXLDIS.fd".
       COPY "MXHISVTE.fd".
       COPY "MXCLI.fd".
       COPY "MXCATFOU.fd".
       COPY "MXGRAFAD.fd".
       COPY "MXFOU.fd".
       COPY "MXART2.fd".
       COPY "MXDOCTEC.fd".
       COPY "MXARTSA2.fd".
       COPY "MXLDIS2.fd".
       COPY "MXBDIS2.fd".
       COPY "MXAGENCE2.fd".
       COPY "MXCOMMENT.fd".
       COPY "MXCLI2.fd".
       COPY "MXAGENCE3.fd".
       COPY "ATTACH.fd".
       COPY "INTSEL.fd".
      *{Bench}end
       WORKING-STORAGE             SECTION.
           COPY "W:\MX\COPY\LK-MCLI-L.WRK".
           COPY "W:\MX\COPY\LK-MBDI-L.WRK".
           COPY "W:\MISTRAL\COPY\TABECH.WRK".
           COPY "W:\MISTRAL\COPY\TABTER.WRK".
           COPY "W:\MX\COPY\LK-MART-L.WRK".
           COPY "W:\MX\COPY\LK-ATT.WRK".
           COPY "W:\MISTRAL\COPY\EF-TEL.WRK".
           COPY "W:\MX\COPY\LK-MCHC-L.WRK".
           COPY "W:\MISTRAL\COPY\EF-POS.WRK".
           COPY "W:\MISTRAL\COPY\EF-DATE.WRK".
           COPY "W:\MX\COPY\CAL-PV-ART.WRK".
           COPY "W:\MX\COPY\CAL-MARGE.WRK".
           COPY "W:\mistral\copy\LK-LISTE.wrk".
           COPY "W:\mx\copy\LK-MGFA-T.wrk".
           COPY "W:\mx\copy\LK-VCF-C.wrk".
           COPY "W:\mx\copy\LK-MFOU-L.wrk".
           COPY "W:\mistral\copy\LK-IMPRIME.wrk".
           COPY "W:\mx\copy\LK-CDOCTEC.wrk".
           COPY "W:\mx\copy\ControlePeriode.wrk".
           COPY "W:\mistral\copy\Mis-EnregOccupe.wrk".
           COPY "W:\mx\copy\LK-CCOMMENT.wrk".
           COPY "W:\mx\copy\LK-ART-C.wrk".
           COPY "W:\mx\copy\Cm-Mois-Ouvert.wrk".
           COPY "W:\mx\copy\tspvte.wrk".


      *{Bench}acu-def
       COPY "acugui.def".
       COPY "acucobol.def".
       COPY "crtvars.def".
       COPY "fonts.def".
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
           COPY  "LK-INT.wrk".
           COPY  "Cm-MTDI.wrk".
           COPY  "demat.wrk".
           COPY  "LK-SCODART-L.wrk".
           COPY  "recherche-photo.wrk".
           COPY  "calechea.wrk".
       77 W-LOG-PALM       PIC  999
                  VALUE IS 25.
       77 W-NPR-PALM       PIC  9999
                  VALUE IS 63.
       77 Screen1-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 MODU-MOBISCOP    PIC  9.
       77 Default-bmp      PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Default-Font
                  USAGE IS HANDLE OF FONT DEFAULT-FONT.
       77 ScreenE-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 Small-Font
                  USAGE IS HANDLE OF FONT SMALL-FONT.
       77 W-MXPARAM        PIC  9(9).
       77 W-MXPARDIS       PIC  9(9).
       77 ZOOMxxx16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 RECHERC24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 CBCHECK13-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 CBUNCHK13-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 QUITTER16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 WARNING32-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 RAFRAIC24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 DUPLIQU16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 SUPPRIM24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 CREERxx24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 MODIFIE24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 SAUVEGA24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 IMPRIME24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 AIDExxx24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 VALIDER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ANNULER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 VALIDER16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 VALIDER12-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 EXPANDxx7-JPG    PIC  S9(9)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ANNULER12-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 AGENCEx30-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 COLLAPSE7-JPG    PIC  S9(9)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 QUITTER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 USERxxx20-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ZOOMxxx12-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 AJOUTLG16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 SUPPRLG16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 VISPIEC32-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ZOOMxxx12-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ZOOMxxx16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 INFORMA12-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 DATETRT16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ZOOMxxx10-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 NOSERIE12-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ANNULER16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 INTERLO16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 LIEUXxx16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TBLPAI-FILE-STATUS           PIC  X(2).
           88 Valid-TBLPAI-FILE-STATUS VALUE IS "00" THRU "09". 
       77 WTITLE-RCV       PIC  X(40)
                  VALUE IS " Voir les remises en cascade ".
       77 FILE-STATUS      PIC  X(2).
       77 PAYS-FILE-STATUS PIC  X(2).
       77 CXCLI-FILE-STATUS            PIC  X(2).
       77 PERSON-FILE-STATUS           PIC  X(2).
       77 CXDOMTIERS-FILE-STATUS       PIC  X(2).
       77 W-TITSOC         PIC  9(9).
       77 TITSOC-FILE-STATUS           PIC  X(2).
       77 CALREF-FILE-STATUS           PIC  X(2).
       77 W-MXTABRMA       PIC  9(9).
       77 DEVI-FILE-STATUS PIC  X(2).
       77 HISDEV-FILE-STATUS           PIC  X(2).
       77 DATETRT20-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Screen2-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 Screen0-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 Screen3-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 Screen2-DaGd-1-Row-Highlight-Color       PIC  9(6)
                  VALUE IS 257.
       77 Screen2-DaGd-1-Cursor-X      PIC  9(5).
       77 Screen2-DaGd-1-Cursor-Y      PIC  9(5).
       77 Screen2-DaGd-1-Cursor-X-Old  PIC  9(5).
       77 Screen2-DaGd-1-Cursor-Y-Old  PIC  9(5).
       77 Screen3-DaGd-2-Row-Highlight-Color       PIC  9(6)
                  VALUE IS 257.
       77 Screen3-DaGd-2-Cursor-X      PIC  9(5).
       77 Screen3-DaGd-2-Cursor-Y      PIC  9(5).
       77 Screen3-DaGd-2-Cursor-X-Old  PIC  9(5).
       77 Screen3-DaGd-2-Cursor-Y-Old  PIC  9(5).
       01 TABLE-TYP.
           05 FILLER           PIC  X(50)
                      VALUE IS "Bon de Commande".
           05 FILLER           PIC  9
                      VALUE IS 0.
           05 FILLER           PIC  X(50)
                      VALUE IS "Bon de Livraison".
           05 FILLER           PIC  9
                      VALUE IS 1.
           05 FILLER           PIC  X(50)
                      VALUE IS "Avoir & Retour".
           05 FILLER           PIC  9
                      VALUE IS 3.
           05 FILLER           PIC  X(50)
                      VALUE IS "Devis".
           05 FILLER           PIC  9
                      VALUE IS 8.
           05 FILLER           PIC  X(51).
       01 R-TABLE-TYP REDEFINES TABLE-TYP.
           05 ELT-TYPTYP
                      OCCURS 5 TIMES.
               06 ELT-TYP          PIC  X(50).
               06 ELT-COD          PIC  9.
       01 TABLE-CVM.
           05 FILLER           PIC  X(20)
                      VALUE IS "Rupture".
           05 FILLER           PIC  X(20)
                      VALUE IS "Prix".
           05 FILLER           PIC  X(20)
                      VALUE IS "Qualité".
           05 FILLER           PIC  X(20)
                      VALUE IS "Réf. non gérée".
           05 FILLER           PIC  X(20)
                      VALUE IS "Autre".
       01 R-TABLE-CVM REDEFINES TABLE-CVM.
           05 ELT-CVM          PIC  X(20)
                      OCCURS 5 TIMES.
       01 TABLE-TBP.
           05 FILLER           PIC  X(20)
                      VALUE IS "Sur stock".
           05 FILLER           PIC  X(20)
                      VALUE IS "Fou -> client".
           05 FILLER           PIC  X(20)
                      VALUE IS "Fou -> stk central".
           05 FILLER           PIC  X(20)
                      VALUE IS "Fou -> agence".
       01 R-TABLE-TBP REDEFINES TABLE-TBP.
           05 ELT-TBP          PIC  X(20)
                      OCCURS 4 TIMES.
       77 LK-CALL          PIC  9
                  VALUE IS 0.
       77 SV-TYP           PIC  9
                  VALUE IS 0.
       77 Cm-TFA-Handle
                  USAGE IS HANDLE OF COMBO-BOX VALUE NULL.
       78 Cm-TFA-NbMaxItems VALUE IS 6. 
       77 Cm-TFA-9-3       PIC  9(3)
                  USAGE IS COMP-1.
       01 Cm-TFA-Items
                  OCCURS CM-TFA-NBMAXITEMS TIMES.
           05 Cm-TFA-LIB       PIC  X(25).
           05 FILLER           PIC  X(30).
           05 Cm-TFA-COD       PIC  9(1).
       77 Cm-TFA-SelectedItem          PIC  9(1).
       77 Cm-TFA-LoadedItems           PIC  9(3)
                  USAGE IS COMP-1
                  VALUE IS 0.
       77 Large-Font
                  USAGE IS HANDLE OF FONT LARGE-FONT.
       77 WENABLE-QTE      PIC  9
                  VALUE IS 1.
       77 WENABLE-PUB      PIC  9
                  VALUE IS 1.
       77 WENABLE-REM      PIC  9
                  VALUE IS 1.
       77 WENABLE-LPZ      PIC  9
                  VALUE IS 1.
       77 WENABLE-PZE      PIC  9
                  VALUE IS 1.
       77 WENABLE-ISQ      PIC  9
                  VALUE IS 1.
       77 WENABLE-EXC      PIC  9
                  VALUE IS 1.
       77 WENABLE-AR1      PIC  9
                  VALUE IS 1.
       77 WENABLE-AR2      PIC  9
                  VALUE IS 1.
       77 WENABLE-DES      PIC  9
                  VALUE IS 1.
       77 WENABLE-INP      PIC  9
                  VALUE IS 1.
       77 WENABLE-TLI      PIC  9
                  VALUE IS 1.
       77 WENABLE-TCO      PIC  9
                  VALUE IS 1.
       77 WENABLE-LISTE    PIC  9
                  VALUE IS 1.
       77 WENABLE-DLI      PIC  9
                  VALUE IS 0.
       77 WENABLE-AGS      PIC  9
                  VALUE IS 0.
       77 WENABLE-FOU      PIC  9
                  VALUE IS 1.
       77 WENABLE-PZE4     PIC  9.
       77 W-LDEVFOU        PIC  X(20).
       77 WVISIBLE-LPZ     PIC  9
                  VALUE IS 1.
       77 WVISIBLE-MON     PIC  9
                  VALUE IS 1.
       77 Color112         PIC  9(6)
                  VALUE IS 2.
       77 Color194         PIC  9(6)
                  VALUE IS 194.
       77 WVISIBLE-REC     PIC  9
                  VALUE IS 0.
       77 WVISIBLE-PRO     PIC  9
                  VALUE IS 0.
       77 WVISIBLE-PZE     PIC  9
                  VALUE IS 1.
       77 Screen2-Bt-1-Handle          PIC  S9(9)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 WTITLE-RCM       PIC  X(40)
                  VALUE IS " Masquer les remises en cascade ".
       01 Screen1-BUF.
           05 Screen1-RADIO-2-BUF          PIC  9
                      VALUE IS ZERO.
           05 Screen1-DaCb-IFO-BUF         PIC  9
                      VALUE IS ZERO.
           05 Screen1-DaCb-IVR-BUF         PIC  9
                      VALUE IS ZERO.
           05 Screen1-RADIO-1-BUF          PIC  9
                      VALUE IS ZERO.
           05 Screen1-RADIO-4-BUF          PIC  9
                      VALUE IS ZERO.
           05 Screen1-DaEf-Rep-BUF         PIC  X(4).
           05 Screen1-DaEf-JDLI-BUF        PIC  99
                      BLANK WHEN ZERO.
           05 Screen1-DaEf-MDLI-BUF        PIC  99
                      BLANK WHEN ZERO.
           05 Screen1-DaEf-SADLI-BUF       PIC  9999
                      BLANK WHEN ZERO.
           05 Screen1-RADIO-5-BUF          PIC  9
                      VALUE IS ZERO.
           05 Screen1-DaCb-IFD-BUF         PIC  9
                      VALUE IS ZERO.
           05 Screen1-DaCb-PUS-BUF         PIC  9
                      VALUE IS ZERO.
       01 Screen2-BUF.
           05 Screen2-DaGd-1-BUF.
               06 Screen2-DaGd-1-BUF-1         PIC  X.
               06 Screen2-DaGd-1-BUF-2         PIC  X(21).
               06 Screen2-DaGd-1-BUF-3         PIC  X(40).
               06 Screen2-DaGd-1-BUF-4         PIC  ZZZZZ9,99-.
               06 Screen2-DaGd-1-BUF-5         PIC  ZZZZZZ9,99.
               06 Screen2-DaGd-1-BUF-6         PIC  Z9,99-.
               06 Screen2-DaGd-1-BUF-7         PIC  ZZZZZZ9,99.
               06 Screen2-DaGd-1-BUF-8         PIC  ZZZZZZ9,99-.
               06 Screen2-DaGd-1-BUF-9         PIC  X.
               06 Screen2-DaGd-1-BUF-10        PIC  X.
               06 Screen2-La-LMBL-Buf          PIC  X(4)
                          VALUE IS "% MB".
       01 Ligne-Af.
           05 DaGd-1-Col-Inp   PIC  X(1).
           05 DaGd-1-Col-Art   PIC  X(21).
           05 DaGd-1-Col-Des   PIC  X(40).
           05 DaGd-1-Col-Qte   PIC  ZZZZZ9,99-
                      BLANK WHEN ZERO.
           05 DaGd-1-Col-QteSD REDEFINES DaGd-1-Col-Qte  PIC  ZZZZZ9-
                      BLANK WHEN ZERO.
           05 DaGd-1-Col-Isq REDEFINES DaGd-1-Col-Qte  PIC  X(10).
           05 DaGd-1-Col-Pub   PIC  ZZZZZZZ9,99-
                      BLANK WHEN ZERO.
           05 DaGd-1-Col-PubP REDEFINES DaGd-1-Col-Pub  PIC  
           ZZZZZZZZ9,99
                      BLANK WHEN ZERO.
           05 DaGd-1-Col-PubL REDEFINES DaGd-1-Col-Pub  PIC  X(12).
           05 DaGd-1-Col-Rem   PIC  Z9,99-
                      BLANK WHEN ZERO.
           05 DaGd-1-Col-Pun   PIC  ZZZZZZZ9,99-
                      BLANK WHEN ZERO.
           05 DaGd-1-Col-PunP REDEFINES DaGd-1-Col-Pun  PIC  
           ZZZZZZZZ9,99
                      BLANK WHEN ZERO.
           05 DaGd-1-Col-Mon   PIC  ZZZZZZZZ9,99-
                      BLANK WHEN ZERO.
           05 DaGd-1-Col-Lpz REDEFINES DaGd-1-Col-Mon  PIC  X(13).
           05 DaGd-1-Col-Tli   PIC  X.
           05 DaGd-1-Col-Pro   PIC  X.
           05 DaGd-1-Col-MB    PIC  ZZZZZ9,99-
                      BLANK WHEN ZERO.
           05 DaGd-1-Col-PMB   PIC  ZZ9,99-
                      BLANK WHEN ZERO.
           05 DaGd-1-Col-Msg   PIC  X(12).
           05 DaGd-1-Col-Bon   PIC  9(8).
           05 DaGd-1-Col-Lig   PIC  9(4).
           05 DaGd-1-Col-CodTli            PIC  9(1).
           05 DaGd-1-Col-DEL   PIC  X(15).
           05 DaGd-1-Col-SV    PIC  X(15).
      *
      *
       01 Ligne-Af-Pai.
           05 DaGd-2-Col-PAI   PIC  99.
           05 DaGd-2-Col-LIBPAI            PIC  X(20).
           05 DaGd-2-Col-ECH   PIC  9.
           05 DaGd-2-Col-LIBECH            PIC  X(10).
           05 R-DaGd-2-Col-LIBECH REDEFINES DaGd-2-Col-LIBECH.
               10 DaGd-2-Col-NJE   PIC  Z(3).
               10 DaGd-2-Col-LNJE  PIC  X(7).
           05 DaGd-2-Col-TER   PIC  9.
           05 DaGd-2-Col-LIBTER            PIC  X(11).
           05 DaGd-2-Col-DAE   PIC  99/99/9999.
      *                BLANK WHEN ZERO.
           05 DaGd-2-Col-POU   PIC  ZZ9,99-
                      BLANK WHEN ZERO.
           05 DaGd-2-Col-MON   PIC  ZZZZZZZZ9,99-
                      BLANK WHEN ZERO.
      *
      *
       77 W-CLI            PIC  9(6).
       77 W-FCO            PIC  9(8).
       77 W-ICP            PIC  9.
       77 W-AGE            PIC  XXX.
       77 W-BON            PIC  9(8).
       77 W-TYC            PIC  S9(1)
                  VALUE IS 0.
       77 W-TYP            PIC  S9(1)
                  VALUE IS -1.
       77 W-OTE            PIC  S9(1)
                  VALUE IS 0.
       77 W-IND            PIC  S9(1)
                  VALUE IS 0.
       77 WENABLE          PIC  S9(1)
                  VALUE IS 0.
       77 WVISIBLE         PIC  S9(1)
                  VALUE IS 0.
       77 SV-DAT-BON       PIC  9(8).
       01 W-DAT            PIC  9(8).
       01 R-W-DAT REDEFINES W-DAT.
           05 W-SS PIC  99.
           05 W-AA PIC  99.
           05 W-MM PIC  99.
           05 W-JJ PIC  99.
       77 W-CHC            PIC  9(9).
       01 PER-C            PIC  9(4).
       01 R-PER-C REDEFINES PER-C.
           05 M-PER-C          PIC  99.
           05 A-PER-C          PIC  99.
       01 PER-1            PIC  9(4).
       01 R-PER-1 REDEFINES PER-1.
           05 M-PER-1          PIC  99.
           05 A-PER-1          PIC  99.
       77 I    PIC  S9(5)
                  VALUE IS 0.
       77 J    PIC  9(3).
       77 W-MOI            PIC  S9(5)
                  VALUE IS 0.
       77 SV-QTE-MLDI      PIC  S9(9)V99.
       77 SV-MON           PIC  S9(12)V99.
       77 EF-MON           PIC  9(12)V99.
       77 SV-ART-MLDI      PIC  X(20).
       77 SV-TLI-MLDI      PIC  9.
       77 SV-TBP-MLDI      PIC  9.
       77 SV-PZE-MLDI      PIC  9.
       77 SV-AGS-MLDI      PIC  XXX.
       77 SV-DEP-MLDI      PIC  999.
       77 W-STC            PIC  S9(9)V99.
       77 W-STO            PIC  S9(9)V99.
       77 SV-STO           PIC  S9(9)V99.
       77 W-STG            PIC  S9(9)V99.
       77 W-STD            PIC  S9(9)V99.
       77 W-STOGR          PIC  S9(9)V99.
       77 W-QCCGR          PIC  S9(9)V99.
       77 W-QCFGR          PIC  S9(9)V99.
       77 W-MON            PIC  S9(12)V99.
       77 A-QTE            PIC  S9(9)V99.
       77 I-QTE            PIC  S9(9)V99.
       77 W-QTC            PIC  S9(6)V99.
       01 W-QTE            PIC  S9(6)V99.
       01 R-W-QTE REDEFINES W-QTE.
           05 W-QTE1           PIC  9(6).
           05 W-QTE2           PIC  9(2).
       77 W-IND1           PIC  9.
      *     05 W-QTES           PIC  X.
       77 W-QTL            PIC  S9(6)V99.
      *     05 W-QTES           PIC  X.
       77 SST-QTL          PIC  S9(6)V99.
      *     05 W-QTES           PIC  X.
       77 SST-QTC          PIC  S9(6)V99.
       77 W-MOB            PIC  S9(9)V99.
       77 W-PUN            PIC  S9(9)V99.
       77 W-PRB            PIC  S9(9)V99.
       77 W-PUS            PIC  S9(9)V99.
       77 W-PUB            PIC  S9(9)V99.
       77 W-REM            PIC  S99V99.
       77 W-REMC           PIC  S99V99.
       77 W-REC            PIC  S99V99
                  OCCURS 6 TIMES.
       77 W-PZE            PIC  9
                  VALUE IS 0.
       77 TOT-HT           PIC  S9(12)V99.
       77 TOT-HTS          PIC  9(12)V99.
       77 TOT-RPM          PIC  S9(12)V99.
       77 TOT-HTT          PIC  S9(12)V99.
       77 TOT-HPI          PIC  S9(12)V99.
       77 TOT-HPR          PIC  S9(12)V99.
       77 TOT-MG           PIC  S9(12)V99.
       77 TOT-PR           PIC  S9(12)V99.
       77 TOT-TTC          PIC  S9(12)V99.
       77 TOT-TVA          PIC  S9(12)V99.
       77 TOT-FFA          PIC  S9(12)V99.
       77 TOT-POR          PIC  S9(12)V99.
       77 TOT-NET          PIC  S9(12)V99.
       77 TOT-ESC          PIC  S9(12)V99.
       77 W-TVA            PIC  S9(12)V99.
       77 TOT-HTB          PIC  S9(12)V99.
       77 TOT-POI          PIC  S9(9)V99.
       77 TOT-VOL          PIC  S9(9)V99.
       77 TOT-LIG          PIC  9(6).
       77 W-POI            PIC  S9(9)V99.
       77 W-VOL            PIC  S9(9)V99.
       77 W-MARGE          PIC  S9(9)V99.
       77 W-PAC            PIC  S9(9)V99.
       77 TVA-FFA          PIC  S9(9)V99.
       77 TVA-POR          PIC  S9(9)V99.
       77 W-PM PIC  S9(4)V99.
       77 W-MSG-PM         PIC  X(12).
       77 W-CT PIC  9.
       77 W-REP            PIC  X(4).
       77 W-NOM            PIC  X(30).
       77 W-STR            PIC  X(30).
       77 W-MSG            PIC  X(80).
       01 TABLE-C-MON.
           05 C-MON            PIC  S9(12)V99
                      OCCURS 8 TIMES.
           05 C-MOS            PIC  S9(12)V99
                      OCCURS 8 TIMES.
           05 C-PQP            PIC  S9(12)V99
                      OCCURS 8 TIMES.
           05 C-ESC            PIC  S9(12)V99
                      OCCURS 8 TIMES.
           05 C-TVA            PIC  9
                      OCCURS 8 TIMES.
       77 INDICE           PIC  9(4).
       77 SV-INDICE        PIC  9(4).
       77 INDICE-PAI       PIC  99.
       77 WCOL PIC  99.
       77 WLIG PIC  99.
       77 BITMAPLINE       PIC  99.
       77 BITMAPCOL        PIC  99.
       77 W-DES            PIC  X(62).
       77 W-EXIT           PIC  X.
       77 TYPM PIC  X.
       77 W-INP            PIC  X.
       77 CDF  PIC  X.
       77 CDFL PIC  X.
       77 SV-CDF2          PIC  X.
       77 SV-CDF1          PIC  X.
       77 SV-CDF           PIC  X.
       77 D82  PIC  ZZZZZZZ9,99-
                  BLANK WHEN ZERO.
       77 D92  PIC  ZZZZZZZZ9,99-
                  BLANK WHEN ZERO.
       77 D6   PIC  ZZZZZZ-
                  BLANK WHEN ZERO.
       77 D62  PIC  ZZZBZZ9,99-
                  BLANK WHEN ZERO.
       77 D72  PIC  ZZZZBZZ9,99-
                  BLANK WHEN ZERO.
       77 D52  PIC  ZZZZ9,99-
                  BLANK WHEN ZERO.
       77 D7   PIC  ZZZZBZZ9-
                  BLANK WHEN ZERO.
       77 D22  PIC  ZZ9,99-
                  BLANK WHEN ZERO.
       77 W-ART-MAJ        PIC  X(20).
       77 W-LIN-MAJ        PIC  9(4).
       01 Ef-TRP.
           05 EF-TRP1          PIC  ZZZ9,99.
           05 EF-TRP2          PIC  BX.
       01 W-ART            PIC  X(20).
       01 R-W-ART REDEFINES W-ART.
           05 W-AR1            PIC  X(4).
           05 R-W-AR1 REDEFINES W-AR1.
               10 W-GFA            PIC  99.
               10 W-FSA            PIC  99.
           05 W-AR2            PIC  X(16).
       77 SV-ENR-MBDI      PIC  X(2000).
       77 SV-ENR-MBDI2     PIC  X(2000).
       77 SV-ENR-MLDI      PIC  X(2000).
       77 SV-ENR-MLDI2     PIC  X(2000).
       77 W-NPA            PIC  9.
       77 W-RAI            PIC  X(30).
       77 W-CV PIC  X(35).
       77 Af-POS           PIC  X(8).
       77 Af-TEL           PIC  X(15).
       77 AF-W-DAT         PIC  X(10).
       77 W-LBON           PIC  X(14).
       77 D-LIG            PIC  9(4).
       77 SV-D-LIG         PIC  9(4).
       77 D-LIN            PIC  9(4).
       77 D-RAN            PIC  9(4).
       77 D-INDICE         PIC  9(4).
       77 W-PRI            PIC  S9(12)V99.
       77 Mon-Rem          PIC  S9(10)V99.
       77 W-NOM-ITC        PIC  X(30).
       77 Af-TIT           PIC  X(10).
       77 DFA-INT          PIC  9(8).
       01 W-HEU            PIC  S9(6)V99
                  SIGN IS TRAILING SEPARATE CHARACTER.
       01 R-W-HEU REDEFINES W-HEU.
           05 W-HEU1           PIC  9(6).
           05 W-HEU2           PIC  99.
           05 FILLER           PIC  X.
       77 W-NBGRT          PIC  9(3).
       77 MAX-DEL          PIC  9(3).
       77 W-GRT            PIC  9(2).
       77 WG   PIC  9(3).
       77 PR-MAT           PIC  9.
       77 NOU-A            PIC  9.
       77 D2   PIC  ZZ.
       77 D-REV            PIC  9(6).
       77 D-HIV            PIC  9(9).
       77 SV-ENR-HIV       PIC  X(1000).
       77 SV-ENR-ART       PIC  X(1000).
       77 SV-ENR-ART2      PIC  X(1000).
       77 WDAT-OK          PIC  9(1).
       01 TABPRI.
           05 ELT-PRI          PIC  9(9)V99
                      OCCURS 200 TIMES.
           05 ELT-QTE          PIC  9(3)
                      OCCURS 200 TIMES.
       77 INDICE-PRI       PIC  9(3).
       77 W-NIV            PIC  9(1).
       77 W-SST            PIC  9(3).
       77 W-OK-ASA         PIC  9(1).
       77 ASSIGN-TRITAM    PIC  X(60).
       77 WASS-TRITAM      PIC  X(20)
                  VALUE IS "SBD-TRITAM".
       77 SSSIGN-TRISEL    PIC  X(60).
       77 WASS-TRISEL      PIC  X(20)
                  VALUE IS "SBD-TRIGCA".
       77 ScreenRUP-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 Medium-Font
                  USAGE IS HANDLE OF FONT MEDIUM-FONT.
       77 W-AGS            PIC  X(3).
       77 W-DPS            PIC  9(3)
                  VALUE IS 0.
       77 AUTO-3EC         PIC  9(1).
       77 AUTO-MOP         PIC  9(1).
       77 AUTO-GRATUIT     PIC  9(1).
       77 AUTO-AVO         PIC  9(1).
       77 AUTO-MAR         PIC  9(1).
       77 AUTO-BLC         PIC  9(1).
       77 AUTO-MG          PIC  9(1).
       77 AUTO-BLI         PIC  9(1).
       77 AUTO-BLR         PIC  9(1).
       77 AUTO-BLF         PIC  9(1).
       77 AUTO-FOU         PIC  9(1).
       77 AUTO-CT          PIC  9(1).
       77 AUTO-MODCD       PIC  9(1).
       77 AUTO-CRECD       PIC  9(1).
       77 AUTO-VISCD       PIC  9(1).
       77 AUTO-MODBL       PIC  9(1).
       77 AUTO-CREBL       PIC  9(1).
       77 AUTO-VISBL       PIC  9(1).
       77 AUTO-CAST        PIC  9(1).
       77 AUTO-REMUNI      PIC  9(1).
       77 AUTO-PASUV       PIC  9(1).
       77 AUTO-DCD         PIC  9.
       77 AUTO-MOTIF       PIC  9.
       77 Screen2-Mn-2-Handle
                  USAGE IS HANDLE OF MENU VALUE NULL.
       77 PREVISU24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ZOOMxxx10-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 MBAFFICH10-JPG   PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-MXTABCOE       PIC  9(9).
       77 W-RAP-INT        PIC  9
                  VALUE IS 4.
       77 W-CHF-INT        PIC  9
                  VALUE IS 0.
       77 W-TTC-INT        PIC  9
                  VALUE IS 0.
       77 W-ESC-INT        PIC  99V99.
       77 W-PTC-INT        PIC  S9(1)
                  VALUE IS 1.
       77 W-THT-INT        PIC  9
                  VALUE IS 0.
       77 W-SUP-INT        PIC  9
                  VALUE IS 0.
       77 W-RIA-INT        PIC  9
                  VALUE IS 4.
       77 W-TTCD-INT       PIC  9
                  VALUE IS 0.
       77 W-RAPD-INT       PIC  9
                  VALUE IS 0.
       77 W-TTCA-INT       PIC  9
                  VALUE IS 0.
       77 W-SUPB-INT       PIC  9
                  VALUE IS 0.
       77 ScreenE-Cb-Bp-Value          PIC  9
                  VALUE IS 0.
       77 ScreenE-Cb-Dv-Value          PIC  9
                  VALUE IS 0.
       77 ScreenE-Cb-FACP-Value        PIC  9
                  VALUE IS 0.
       77 ScreenE-Cb-Ar-Value          PIC  9
                  VALUE IS 0.
       77 ScreenE-Pg-1-Visible         PIC  9
                  VALUE IS 0.
       77 ScreenE-Pg-2-Visible         PIC  9
                  VALUE IS 0.
       77 ScreenE-Pg-3-Visible         PIC  9
                  VALUE IS 0.
       77 WENABLE-PTC      PIC  9
                  VALUE IS 1.
       77 WVISIBLE-DV      PIC  9
                  VALUE IS 1.
       77 WVISIBLE-BP      PIC  9
                  VALUE IS 0.
       77 WVISIBLE-AR      PIC  9
                  VALUE IS 0.
       77 WVISIBLE-TYC8    PIC  9
                  VALUE IS 0.
       77 WVISIBLE-TCO     PIC  9
                  VALUE IS 1.
       77 WENABLE-DV       PIC  9
                  VALUE IS 1.
       77 WENABLE-FACP     PIC  9
                  VALUE IS 1.
       77 WENABLE-DVP      PIC  9
                  VALUE IS 1.
       77 WENABLE-BP       PIC  9
                  VALUE IS 1.
       77 WENABLE-AR       PIC  9
                  VALUE IS 1.
       77 INDPRVW          PIC  9.
       77 EXI-CD           PIC  9.
       77 EXI-C3           PIC  9.
       77 ScreenE-Cb-FACC-Value        PIC  9
                  VALUE IS 0.
       77 WENABLE-FACC     PIC  9
                  VALUE IS 1.
       77 ScreenE-Cb-PFAC-Value        PIC  9
                  VALUE IS 0.
       77 W-ICALL          PIC  9.
       77 W-COE            PIC  S9(6)V9(9).
       77 NB-DEVIS         PIC  9(3).
       77 NB-BL            PIC  9(3).
       77 NUM-BL           PIC  9(8).
       77 NB-CDE           PIC  9(3).
       77 ScreenLIV-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       01 ScreenLIV-Gd-1-Record.
           05 Gd-Liv-Col-Inp   PIC  X.
           05 Gd-Liv-Col-Art   PIC  X(21).
           05 Gd-Liv-Col-Des   PIC  X(40).
           05 Gd-Liv-Col-Qtd   PIC  X(10).
           05 Gd-Liv-Col-Qtc   PIC  X(10).
           05 Gd-Liv-Col-Qtl   PIC  X(10).
           05 Gd-Liv-Col-Rel   PIC  X.
           05 Gd-Liv-Col-Sto   PIC  X(10).
           05 Gd-Liv-Col-LT    PIC  X(08).
           05 Gd-Liv-Col-Ind   PIC  9(1).
           05 Gd-Liv-Col-Lig   PIC  9(4).
           05 Gd-Liv-Col-IndRel            PIC  9(1).
           05 Gd-Liv-Col-Pm    PIC  9(1).
       77 ScreenLIV-Tit    PIC  X(80).
       77 WCol-Bitmap      PIC  9(2)
                  VALUE IS 9.
       77 WCol-Qtbase      PIC  9(2).
       77 WCol-LigV        PIC  9(2)
                  VALUE IS 11.
       77 WCol-Ind         PIC  9(2)
                  VALUE IS 10.
       77 WCol-Rel         PIC  9(2)
                  VALUE IS 7.
       77 WCol-IndRel      PIC  9(2)
                  VALUE IS 12.
       77 WCol-IndPM       PIC  9(2)
                  VALUE IS 13.
       77 W-Affiche        PIC  9.
       77 W-INDPM          PIC  9.
       77 ScreenLIV-Msg    PIC  X(100)
                  VALUE IS "pour changer le statut d'une ligne".
       77 ScreenLIV-Pb-Livrer-Tit      PIC  X(15)
                  VALUE IS "Tout livrer".
       77 ScreenLIV-Pb-Annuler-Tit     PIC  X(20)
                  VALUE IS "Annulation livraison".
       77 W-LigneModifiee  PIC  9.
       77 Wvisible-COP     PIC  9
                  VALUE IS 0.
       01 CM-COP-Record.
           02 Cm-Cop-Rai       PIC  X(30).
           02 FILLER           PIC  X.
           02 Cm-Cop-CV        PIC  X(35).
           02 FILLER           PIC  X(10).
           02 Cm-Cop-Num       PIC  999.
       77 Cm-COP-Record1   PIC  X(100).
       01 TABLE-PAI
                  OCCURS 5 TIMES.
           05 IT-PAI           PIC  99.
           05 IT-ECH           PIC  9.
           05 IT-TER           PIC  9.
           05 IT-NJE           PIC  999.
           05 IT-POU           PIC  9(3)V99.
           05 IT-MON           PIC  S9(12)V99.
       77 W-COP            PIC  99.
       77 W-COP-PR         PIC  99.
       77 W-LPA            PIC  X(30).
       77 WENABLE-3        PIC  9
                  VALUE IS 1.
       77 NO-LF            PIC  9(4).
       77 NO-LF1           PIC  9(4).
       77 W-PCTF           PIC  S9(3)V9(5).
       77 S-PCT            PIC  S9(3)V99.
       77 L-PCT            PIC  +++9,99.
       77 WEnable-Forfait  PIC  9.
       77 A-BON            PIC  9(8).
       77 A-LIG            PIC  9(4).
       77 N-BON            PIC  9(8).
       77 N-LIG            PIC  9(4).
       77 A-CLE            PIC  X(20).
       77 N-CLE            PIC  X(20).
       77 A-CLEB           PIC  X(20).
       77 N-CLEB           PIC  X(20).
       77 A-CLEL           PIC  X(20).
       77 N-CLEL           PIC  X(20).
       77 W-INO            PIC  X.
       77 W-NewCde         PIC  9(8).
       77 D8   PIC  Z(8).
       77 D3   PIC  Z(3).
       77 TCC-Default      PIC  X.
      *
      *
       77 TCC-Urgent       PIC  X.
      *
      *
       77 TCC-Stock        PIC  X.
       77 TCC-Normal       PIC  X.
       77 Screen3-Cb-Edb-Buf           PIC  9
                  VALUE IS 0.
       77 Screen3-Cb-Edf-Buf           PIC  9
                  VALUE IS 0.
       77 Screen3-Cb-Edbp-Buf          PIC  9
                  VALUE IS 0.
       77 D-ORD            PIC  9(9).
       77 W-INDRC          PIC  9(1).
       77 M-PLA            PIC  S9(3)V99.
       77 M-MIN            PIC  S9(3)V99.
       77 M-MAX            PIC  S9(3)V99.
       77 M-AUT            PIC  X(3).
       77 ATTENTE          PIC  9(1).
       77 ATTENTE-MARGE    PIC  9(1).
       77 T-MARGE          PIC  S9(7)V99.
       77 WY   PIC  9(4).
       77 WYD  PIC  9(4).
       77 WLIBLIV          PIC  X(10).
       77 W-INDANNUL       PIC  9(1).
       77 W-TYPTRS         PIC  9(1).
       77 W-TYPTRSLIG      PIC  9(1).
       77 W-TLI            PIC  9(1).
       77 SV-REM           PIC  S9(3)V99.
       77 SV-REMC          PIC  S9(3)V99.
       77 T-MG PIC  S9(7)V99.
       77 W-Ligne-Correcte PIC  9(1).
      *
      *
      *
       77 Screen4-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 W-COLOR          PIC  9(3).
       77 W-AFF-MB         PIC  9(1).
       77 W-MODREM         PIC  9.
       77 ZREMP            PIC  ++++9,99
                  BLANK WHEN ZERO.
       77 W-OK PIC  9.
       77 W-AGEASA         PIC  X(3).
       77 W-DEPASA         PIC  9(3).
       77 W-CODASA         PIC  X(20).
       77 WENABLE-DPS      PIC  9
                  VALUE IS 0.
       77 WVISIBLE-BL      PIC  9
                  VALUE IS 1.
       77 WENABLE-RAP      PIC  9
                  VALUE IS 1.
       77 WENABLE-BL       PIC  9
                  VALUE IS 1.
       77 W-COG            PIC  9(3).
       01 Screen3-Buf.
           05 Screen3-RADIO-IFA-BUF        PIC  9
                      VALUE IS ZERO.
           05 Screen3-DaEf-FFA-BUF         PIC  ZZ9,99-
                      BLANK WHEN ZERO.
           05 Screen3-DaEf-ACO-BUF         PIC  ZZZZZZ9,99
                      BLANK WHEN ZERO.
           05 Screen3-RADIO-ADF-BUF        PIC  9
                      VALUE IS ZERO.
           05 Screen3-DaEf-Dom-BUF         PIC  X(24).
           05 Screen3-DaEf-Adb-BUF         PIC  X(24).
           05 Screen3-DaEf-Rib-BUF         PIC  X(35).
           05 Screen3-RADIO-MFA-BUF        PIC  9
                      VALUE IS ZERO.
           05 Screen3-DaCb-MPA-BUF         PIC  9
                      VALUE IS ZERO.
           05 Screen3-DaEf-NPA-BUF         PIC  9.
           05 Screen3-DaCb-TTR-BUF         PIC  9
                      VALUE IS ZERO.
           05 Screen3-Cb-IRM-BUF           PIC  9
                      VALUE IS ZERO.
           05 Screen3-NPT-BUF  PIC  Z(5)
                      VALUE IS ZERO.
           05 Screen3-PQP-BUF  PIC  Z(5)
                      VALUE IS ZERO.
           05 Screen3-NBC-BUF  PIC  Z(5)
                      VALUE IS ZERO.
           05 SCREEN3-LIG-MCOB-BUF         PIC  ZZ.
       77 WENABLE-FAC      PIC  9
                  VALUE IS 1.
       77 A-DFA-INT        PIC  X(10).
       77 ScreenE-Cb-BL-Value          PIC  9
                  VALUE IS 0.
       77 ScreenE-Cb-FAC-Value         PIC  9
                  VALUE IS 0.
       77 Screen2-Ef-Dep-Col           PIC  S9(4)V9(2)
                  VALUE IS 90,29.
       77 Screen2-Pb-Dep-Col           PIC  S9(4)V9(2)
                  VALUE IS 84,57.
       77 WChange-Stock    PIC  9.
       77 WChange-Statut   PIC  9.
       77 Statut-Av        PIC  9.
       77 Statut-Ap        PIC  9.
       77 WCol-Lig         PIC  9(3)
                  VALUE IS 15.
       77 WCol-Bon         PIC  9(3)
                  VALUE IS 14.
       77 WCol-Tli         PIC  9(3)
                  VALUE IS 16.
       77 WCol-AffTli      PIC  9(3)
                  VALUE IS 9.
       77 wCol-PUB         PIC  9(3)
                  VALUE IS 5.
       77 WCol-Del         PIC  9(3)
                  VALUE IS 17.
       77 WCol-SV          PIC  9(3)
                  VALUE IS 18.
       77 Wlast-Row        PIC  9(4).
       77 TMP-9-3          PIC  9(4).
       77 La-Facture       PIC  X(33)
                  VALUE IS "Facture n° XX999999/D du 99/99/99".
       77 Wvisible-lafac   PIC  9
                  VALUE IS 0.
       77 IND-INITLINE     PIC  9.
       77 IND-INITLINE2    PIC  9.
       77 W-EOF-MASA2      PIC  9.
       77 W-LINE           PIC  9(4)V99.
       77 W-COLUMN         PIC  9(4)V99.
       77 W-SIZE           PIC  9(4)V99.
       77 W-TABRLA         PIC  9(9).
       77 TABRLA-FILE-STATUS           PIC  X(2).
           88 Valid-TABRLA VALUE IS "00" THRU "09". 
       77 W-DUPBP-INT      PIC  9.
       77 W-DUP-INT        PIC  9.
       77 W-DUPBL-INT      PIC  9.
       77 W-DUPAR-INT      PIC  9.
       77 W-TEC-INT        PIC  X(4).
       77 OKVERTx16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 IND-ANN          PIC  9.
       77 D-SIR            PIC  999B999B999
                  BLANK WHEN ZERO.
       77 W-ART-RUP        PIC  X(20).
       77 W-DES-RUP        PIC  X(40).
       77 W-COMPL          PIC  9.
       77 W-EQUIV          PIC  9.
       77 INDICE-C         PIC  9(3).
       77 W-Change-Art     PIC  9.
       77 MATERIE16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 GRIDxxx16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 MARTEAU24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TERMINX24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 SUITDOS24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 PRECDOS24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 COLISXX16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 CAMIONX24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 PRESTOT24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 RELIQNO16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 RELIQOK16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TOUTCOC24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TOUTDEC24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ADRDIVE16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 OK-ECR           PIC  9.
       77 W-TDEL           PIC  9(4).
       77 W-SDEL           PIC  9(4).
       77 W-NBP            PIC  9(3).
       77 WARBLAN24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 IND-C            PIC  9.
       77 IND-L            PIC  9.
       77 ENGRDOU24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-ANNUL-EDI      PIC  9.
       77 FICHART12-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 SV-MAR           PIC  X(4).
       77 INDIC-EPAVE      PIC  9.
       77 ASSIGN-MXSELARTBL            PIC  X(60).
       77 W-MXSELARTBL     PIC  9(9).
       77 ARTICLE16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ARTICLE12-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ARTICLE16-BPM    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 WENABLE-ESC      PIC  9
                  VALUE IS 0.
       77 BASE-ENABLE-ESC  PIC  9.
      *
      *
       77 MOD-OFFICE       PIC  9.
      *
      *
       77 AUTO-EFD         PIC  9.
       77 UNE-MARGE-BAD    PIC  9.
       01 W-BON-MAGD.
           02 W-MOB-MAGD       PIC  9(3).
           02 W-NUM-MAGD       PIC  9(5).
       77 WVisible-SAV     PIC  9.
       77 WVisible-GAR     PIC  9.
       77 WVisible-LSD     PIC  9.
       77 Screen2-La-LMBT-Buf          PIC  X(4)
                  VALUE IS "% MB".
       77 WV-MBT           PIC  9
                  VALUE IS 0.
       77 WENABLE-DUPBL    PIC  9
                  VALUE IS 1.
       77 WENABLE-TMP      PIC  9
                  VALUE IS 1.
       77 ScreenE-Cb-EX-Value          PIC  9
                  VALUE IS 0.
       77 WVISIBLE-EX      PIC  9
                  VALUE IS 1.
       77 NBR-CONSTR       PIC  9.
       77 W-PERFORM        PIC  9.
       77 ENGRSIM24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ADD-NB           PIC  S9.
       77 SV-NCP           PIC  9(9).
       77 SV-NCPL          PIC  9(9).
       77 W-NCP            PIC  9(9).
       77 AUTO-LP          PIC  9.
       77 WORI-CUC         PIC  X.
       77 DUPLIQU24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 WVISIBLE-ENS     PIC  9
                  VALUE IS 0.
       77 WENABLE-DUP      PIC  9
                  VALUE IS 1.
       77 WVISIBLE-ENSD    PIC  9
                  VALUE IS 0.
       77 WVISIBLE-ENSB    PIC  9
                  VALUE IS 0.
       77 WVISIBLE-ENSC    PIC  9
                  VALUE IS 0.
       77 W-INIT-ENS       PIC  9.
       77 MODU-LIE         PIC  9.
       77 MODU-CB          PIC  9
                  VALUE IS 0.
       77 MODU-M3          PIC  9
                  VALUE IS 1.
       77 MODU-DECO        PIC  9
                  VALUE IS 1.
       77 MODU-MSPLI       PIC  9
                  VALUE IS 1.
       77 EXIMOD-DECO      PIC  9
                  VALUE IS 1.
       77 GRIDxxx24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-IES-MBDI       PIC  9
                  VALUE IS 0.
       77 Z-BON            PIC  9(8).
       77 W-LIE            PIC  9.
       77 IND-RELIQUAT-DEVIS           PIC  9.
      *
      *
       77 SV-Y-OLD         PIC  9(4).
       77 CHANGE-DAT       PIC  9.
       77 LIEUX3x16-jpg    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 SV-DLP           PIC  9(8).
       77 SV-CLI           PIC  9(8).
       77 SV-TCC           PIC  X.
       77 N-TYP            PIC  9.
       77 Z-MOD            PIC  X
                  VALUE IS "D".
       77 SV-CDF-MPAR      PIC  9.
       77 W-AUTO-BON       PIC  9.
       77 W-CXSOC          PIC  9(9).
       77 W-AVOIR-OK       PIC  9.
       77 W-MXPARACH       PIC  9(9).
       77 LA-CMQ           PIC  X(20).
       77 color-stock      PIC  9(6)
                  VALUE IS 194.
       77 W-ECRAN          PIC  9.
       77 Test-TAA         PIC  9.
       77 Test-Tout        PIC  9.
       77 WV-AFFGES        PIC  9
                  VALUE IS 1.
       77 IND-REPRISE      PIC  9.
       77 A-STO            PIC  S9(9)V99.
       77 P-STO            PIC  S9(9)V99.
       77 W-MAJPRI         PIC  S9(9)V99.
       77 W-MAJMON         PIC  S9(12)V99.
       77 W-RIC            PIC  9.
       77 W-ABANDON        PIC  9.
       77 W-ERR            PIC  9.
       77 W-AGSC           PIC  X(3).
       77 NB-LIG-CDE       PIC  9(4).
       77 W-LIBTYP         PIC  X(10).
       77 W-TYPE-ENV       PIC  XX.
       01 W-ARTR.
           05 W-ARTR1          PIC  X(4).
           05 W-ARTR2          PIC  X(21).
       01 W-ARTR3.
           05 W-ARTR31         PIC  X(4).
           05 W-ARTR32         PIC  X(16).
       01 W-ARTRGD.
           05 W-ARTRGD1        PIC  X(4).
           05 FILLER           PIC  X.
           05 W-ARTRGD2        PIC  X(16).
       77 IND-RELECT       PIC  9.
       77 D35  PIC  ZZ9,99999.
       77 SV-D-RAN         PIC  9(4).
       77 W-NBR            PIC  9(3).
       77 W-FIC2           PIC  9.
       77 W-TYP2           PIC  9.
       77 EXI-TCFC         PIC  9.
       77 EXI-TCFBL        PIC  9.
       77 W-TCFBL          PIC  X.
       77 W-DELBL          PIC  9(3)
                  OCCURS 4 TIMES.
       77 INDICE-DELAI     PIC  9(3).
       77 W-TCCBL          PIC  X.
       77 EXI-TCF1         PIC  9.
       77 EXI-TCF2         PIC  9.
       77 EXI-TCF3         PIC  9.
       77 W-EOF-TCF        PIC  9.
       77 W-EOF-CAL        PIC  9.
       77 IND-ADRD         PIC  9.
       77 IND-CMQ          PIC  9.
       77 IND-AUTO-ANNUL   PIC  9.
       77 INDIC-BT         PIC  9.
       77 W-EOF-MAGC2      PIC  9.
       77 W-EOF-COMPL      PIC  9.
       77 W-CAL-PUB        PIC  9.
       77 W-SOCR           PIC  9(4).
       77 EMAIL-CLIENT     PIC  X(60)
                  VALUE IS "nathalie,clair@mistral,fr".
       77 RECHERC16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ScreenRech-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 MAILxxx16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 MAILENV16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-BMP            PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 WVISIBLE-ESC     PIC  9
                  VALUE IS 1.
       77 W-MXPARAMEXT     PIC  9(9).
       77 AUTO-REPRISE     PIC  9.
       77 OCCASAJ16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 REPPMAT16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Modu-Stockeur    PIC  9
                  VALUE IS 0.
       77 Modu-Kardex      PIC  9.
       77 Modu-Hanel       PIC  9.
       77 Modu-Modula      PIC  9.
       77 ASSIGN-STOCKEUR  PIC  X(100).
       77 ASSIGN-STOCKEUR2 PIC  X(100).
       77 SV-ASSIGN        PIC  X(80).
       77 W-COMMAND        PIC  X(200).
       77 W-STK-TYP        PIC  X.
       77 W-STK-CAS        PIC  X(7).
       77 A4   PIC  ZZZ9.
       77 A3   PIC  ZZ9.
       77 A2   PIC  Z9.
       77 A1   PIC  9.
       77 KS-QTE           PIC  S9(6)V99.
       77 K-QTE            PIC  ZZZZ9,99.
       77 K-QTE2           PIC  ZZZZ9.
       77 K-QTE3           PIC  99999999,99.
       77 K-DES            PIC  X(40).
       77 K-RAI            PIC  X(20).
       01 K-ART.
           02 K-ART1           PIC  X(4).
           02 K-ART2           PIC  X(16).
       77 W-NBL-STK        PIC  9(3).
       77 W-NBL6-STK       PIC  9(6).
       77 W-TMP2           PIC  9(3).
       77 W-TMP            PIC  9(3).
       77 W-ENR-STK        PIC  X(100).
       77 W-EOF-MLDI2      PIC  9.
       77 W-TYP-STK        PIC  X(3).
       77 W-GEN-STK        PIC  9.
      *
      *
       77 STATUS-CODE      PIC  9.
       77 W-AMB-MAGD       PIC  9
                  VALUE IS 1.
       77 Screen2-La-MSGMBL-Col        PIC  S9(4)V9(2)
                  VALUE IS 103,00.
       77 Screen2-La-MSGMBL-Line       PIC  S9(4)V9(2)
                  VALUE IS 32,62.
       77 WVISIBLE-ARBP    PIC  9
                  VALUE IS 0.
       77 ScreenRUP-Rb-TBP-Value       PIC  S9(1)
                  VALUE IS 0.
       77 EUROXXX12-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 WV-ILI           PIC  9
                  VALUE IS 1.
       77 SPLITERV7-bmp    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 CLIENTx12-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 AGENCEx16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-MXPARFID       PIC  9(9).
       77 W-MXTABUNI       PIC  9(9).
       77 SV-HCD-MLDI      PIC  9(8).
       77 TOUTCOC16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TOUTDEC16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ETIQxxx24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       01 W-INT-ETI.
           02 NSA-INT-ETI      PIC  9
                      VALUE IS 2.
           02 AGE-INT-ETI      PIC  XXX.
           02 ETI-INT-ETI      PIC  9
                      VALUE IS 1.
           02 ART-INT-ETI      PIC  9.
           02 ORI-INT-ETI      PIC  9
                      VALUE IS 6.
       01 W-INT4-ETI.
           02 QTE-INT-ETI      PIC  9(4)
                      OCCURS 90 TIMES.
           02 CAS-INT-ETI      PIC  9
                      VALUE IS 1.
           02 CASD-INT-ETI     PIC  X(7).
           02 CASF-INT-ETI     PIC  X(7).
           02 NBSFA-INT-ETI    PIC  99.
           02 SFA-INT-ETI      PIC  9
                      VALUE IS 1.
           02 TSFA-INT-ETI     PIC  9(4)
                      OCCURS 40 TIMES.
           02 NAT-INT-ETI      PIC  X.
           02 COD-INT-ETI      PIC  9(2)
                      VALUE IS 0.
           02 PRI-INT-ETI      PIC  9
                      VALUE IS 1.
           02 REM-INT-ETI      PIC  9(2).
           02 CLA-INT-ETI      PIC  9
                      VALUE IS 1.
      *
      *
           02 MAJ-INT-ETI      PIC  9.
           02 CHA-INT-ETI      PIC  9
                      VALUE IS 0.
           02 DCHA-INT-ETI     PIC  9(8).
           02 STO-INT-ETI      PIC  9
                      VALUE IS 0.
           02 RED-INT-ETI      PIC  9.
           02 REC-INT-ETI      PIC  9
                      VALUE IS 1.
           02 DRED-INT-ETI     PIC  9(8).
           02 IPR-INT-ETI      PIC  X.
           02 PRO-INT-ETI      PIC  9
                      VALUE IS 0.
           02 IMP-INT-ETI      PIC  X(20).
           02 CMQ-INT-ETI      PIC  9
                      VALUE IS 1.
           02 BDN-INT-ETI      PIC  9
                      VALUE IS 0.
           02 CHF-INT-ETI      PIC  99
                      VALUE IS 50.
       01 LK-ETI.
           05 ASSIGN-ETI       PIC  X(60).
           05 WASS-ETI         PIC  X(20)
                      VALUE IS "ETI".
           05 W-ETI            PIC  99
                      VALUE IS 1.
           05 LK-ETI-SEL       PIC  9(4).
           05 LK-ETI-CHO       PIC  X.
           05 FILLER           PIC  X(79).
       01 paiements.
           05 mess1            PIC  X(30)
                      VALUE IS "Traite directe".
           05 mess2            PIC  X(30)
                      VALUE IS "Traite à l'acceptation".
           05 mess3            PIC  X(30)
                      VALUE IS "BOR".
           05 mess4            PIC  X(30)
                      VALUE IS "Chèque/Commande".
           05 mess5            PIC  X(30)
                      VALUE IS "Chèque/Facturation".
           05 mess6            PIC  X(30)
                      VALUE IS "Espèces".
           05 mess7            PIC  X(30)
                      VALUE IS "Carte bancaire".
           05 mess8            PIC  X(30)
                      VALUE IS "Virement".
           05 mess9            PIC  X(30)
                      VALUE IS "Prélèvement".
       78 nb-paiements VALUE IS 9. 
       01 lib-paiement REDEFINES paiements  PIC  X(30)
                  OCCURS nb-paiements TIMES.
       77 COD-TPA          PIC  9(3).
      * Zones utilisées par la ComboBox des Types de Commandes.
       01 Cm-MTCC.
           05 Cm-MTCC-Handle
                      USAGE IS HANDLE OF COMBO-BOX VALUE NULL.
           78 Cm-MTCC-NbMaxItems VALUE IS 50. 
           05 Cm-MTCC-9-3      PIC  9(3)
                      USAGE IS COMP-1.
           05 Cm-MTCC-Items
                      OCCURS Cm-MTCC-NbMaxItems TIMES.
               10 Cm-MTCC-LIB      PIC  X(12).
               10 Cm-MTCC-LIB2     PIC  X(25).
               10 Cm-MTCC-COD      PIC  X(1).
           05 Cm-MTCC-SelectedItem         PIC  X(1).
           05 Cm-MTCC-LoadedItems          PIC  9(3)
                      USAGE IS COMP-1
                      VALUE IS 0.
           05 WOPEN-MXTYPCDC   PIC  9.
           05 WOPEN-MXTYPCDF   PIC  9.
           05 Cm-MTCC-Last-FOU PIC  9(6).
      *--- Si = 1 --> Le premier item de la combo est vide
      *
           05 Cm-MTCC-Item1Vide            PIC  9.
       01 AUTO-ZONE-BASE.
           02 AUTO-DOM         PIC  9.
           02 AUTO-PAI         PIC  9.
           02 AUTO-ESC         PIC  9.
           02 AUTO-ACO         PIC  9.
           02 AUTO-IAC         PIC  9.
           02 AUTO-NAF         PIC  9.
           02 AUTO-REP         PIC  9.
           02 AUTO-REPO        PIC  9.
           02 AUTO-AFC         PIC  9.
           02 AUTO-REGUL       PIC  9.
           02 AUTO-REF         PIC  9.
           02 AUTO-TFA         PIC  9.
           02 AUTO-FDU         PIC  9.
           02 AUTO-ARD         PIC  9.
           02 AUTO-PRER        PIC  9.
      *ation réservée
           02 AUTO-CREAVO      PIC  9.
       77 MODU-CDEWEB      PIC  9.
       77 AG-TOPAZ         PIC  X(3)
                  VALUE IS "70".
       77 W-SCREEN         PIC  9.
       77 IND-AFF-STSC     PIC  9.
       77 Visible-Etiq     PIC  9
                  VALUE IS 0.
       77 D44  PIC  ZZZ9,9999.
       77 W-CPDA           PIC  9
                  VALUE IS 0.
       77 W-NUU            PIC  9(4)V9(4).
       77 PAS-SCODART      PIC  9.
       77 IND-CDES-ATT     PIC  9
                  VALUE IS 0.
       77 AUTO-CFA         PIC  9.
       77 W-TROUVE         PIC  9
                  VALUE IS 0.
       77 SV-SER           PIC  X(20).
       77 W-GENCFA         PIC  9.
       77 W-ACA-WEB        PIC  9.
       77 W-AR220          PIC  X(30).
       77 W-SERVEUR        PIC  X(64).
       77 W-TIT            PIC  X(60).
       77 WSIZE            PIC  9(3)V99.
       77 WLINES           PIC  9(3)V99.
       77 WLIB-MMSG        PIC  X(252).
       77 CAL-COMP-REMISE  PIC  9.
       77 WV-RecupCde      PIC  9
                  VALUE IS 0.
       77 DOLLARX12-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 WVISIBLE-BLCHF   PIC  9
                  VALUE IS 1.
       77 TROMBON24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 VALIDER16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ANNULER16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ENCOURR16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 WV-DELAI         PIC  9
                  VALUE IS 0.
       77 Wenable-fgm      PIC  9
                  VALUE IS 0.
       77 W-FGM-INT        PIC  9
                  VALUE IS 0.
       77 Wvisible-FGM     PIC  9
                  VALUE IS 1.
       77 WEBTOPx16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-QCFE           PIC  -(6)9,99.
       77 SV-QCFE          PIC  -(6)9,99.
       77 W-QCFPAR         PIC  X(20).
       77 W-FICTRACE       PIC  X(10).
       77 W-KEY            PIC  X(30).
       77 WTITLE-DEMAT     PIC  X(30)
                  VALUE IS "Type démat".
       77 MODU-EXPANSIO    PIC  9.
       77 F-BDIS2          PIC  9.
       77 W-RIABL-INT      PIC  9
                  VALUE IS 4.
       77 WVISIBLE-BLAR    PIC  9
                  VALUE IS 1.
       77 WENABLE-BLAR     PIC  9
                  VALUE IS 1.
       77 WV-SER           PIC  9
                  VALUE IS 1.
       77 isModifying      PIC  9
                  VALUE IS 1.
       77 W-LIBSTC         PIC  X(30)
                  VALUE IS "Stock central".
       77 W-LIBSTG         PIC  X(30)
                  VALUE IS "Stock global".
       77 W-LIBSTGR        PIC  X(30)
                  VALUE IS "Stock groupe".
       77 Screen1-DaCb-EXC-BUF         PIC  9
                  VALUE IS 0.
       77 AJOUTLG16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 SUPPRIM16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 DUPLIQU12-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 INTERLO16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 SAUVEGARDER32-BMP            PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 IMPRIMER32-BMP   PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 MODIFIER32-BMP   PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 SUPPRIMER32-BMP  PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 DUPLIQUER32-BMP  PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 RAFRAICHIR32-BMP PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 CREER32-BMP      PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Calibri12
                  USAGE IS HANDLE OF FONT VALUE NULL.
       77 Calibri11
                  USAGE IS HANDLE OF FONT VALUE NULL.
       77 Calibri10
                  USAGE IS HANDLE OF FONT VALUE NULL.
       77 Calibri9
                  USAGE IS HANDLE OF FONT VALUE NULL.
       77 FLECHED32-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TERMINER32-BMP   PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FLECHEG32-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TROMBONE32-BMP   PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ADDxxxx16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 SAUVEGA16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 MODIFIE16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 STOPxxx16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Screen2-Ef-1-Value           PIC  X(30).
       77 Screen2-Ef-2-Value           PIC  X(30).
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
       77 Screen2-Cm-1-Value           PIC  X(5).
       77 Screen2-Ef-3-Value           PIC  X(30).
       77 Screen2-Ef-4-Value           PIC  X(30).
       77 Screen2-Ef-5-Value           PIC  X(30).
       77 FLECHEB16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Screen1-Mn-Fonctions-Handle
                  USAGE IS HANDLE OF MENU VALUE NULL.
       77 FLECHEB24-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Screen1-Mn-Boutons-Handle
                  USAGE IS HANDLE OF MENU VALUE NULL.
       01 .
           03 Screen3-Cm-1-Container-Item.
               05      PIC  X(5)
                          VALUE IS "Item1".
               05      PIC  X(5)
                          VALUE IS "Item2".
               05      PIC  X(5)
                          VALUE IS "Item3".
           78 Screen3-Cm-1-Container-Num VALUE IS 3. 
           03 Screen3-Cm-1-Container REDEFINES 
           Screen3-Cm-1-Container-Item  PIC  X(5)
                      OCCURS 3 TIMES
                      INDEXED  Screen3-Cm-1-Container-Idx.
       77 Screen3-Cb-1-Value           PIC  9
                  VALUE IS 0.
       77 Screen3-Ef-4-Value           PIC  X(30).
       77 Screen3-Ef-5-Value           PIC  X(30).
       77 Screen3-Ef-6-Value           PIC  X(30).
       77 W-PARAM          PIC  X(100).
       77 W-PARAM1         PIC  X(3).
       77 W-PARAM2         PIC  9(8).

      *{Bench}end
       LINKAGE                     SECTION.
      *{Bench}linkage
       01 LK-ZONE-PALM     PIC  X(500).
           COPY  "LK-SBD-C.wrk".
      *{Bench}end
       SCREEN                      SECTION.
       COPY "../../../mistral/copy/MIs-EnregOccupe-Screen.cpy".
      *{Bench}copy-screen
       01 Screen2, HELP-ID 250063.
           03 Screen2-Fr-5a, Frame, 
              COL 1,71, LINE 1,00, LINES 2,92 CELLS, SIZE 35,29 CELLS, 
              LOWERED, ID IS 154, BACKGROUND-LOW, 
              ATW-CSS-CLASS "breadcrumb".
           03 Screen2-La-10b, Label, 
              COL 14,00, LINE 2,00, LINES 1,85 CELLS, SIZE 1,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 155, 
              LABEL-OFFSET 0, 
              TITLE "/", TRANSPARENT, 
              ATW-CSS-CLASS "breadcrumb-separator".
           03 Screen2-La-10aa, Label, 
              COL 25,86, LINE 2,00, LINES 1,85 CELLS, SIZE 1,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 156, 
              LABEL-OFFSET 0, 
              TITLE "/", TRANSPARENT, 
              ATW-CSS-CLASS "breadcrumb-separator".
           03 Screen2-Pb-1ab, Push-Button, 
              COL 16,00, LINE 1,69, LINES 1,85 CELLS, SIZE 9,29 CELLS, 
              ID IS 159, 
              TITLE "2. Lignes", 
              ATW-CSS-CLASS "breadcrumb-item active".
           03 Screen2-Fr-9bbb, Frame, 
              COL 1,71, LINE 7,00, LINES 6,00 CELLS, SIZE 96,57 CELLS, 
              LOWERED, COLOR IS 1, FILL-COLOR 16, FILL-PERCENT 100, 
              ID IS 129, BACKGROUND-LOW, ATW-CSS-CLASS "card".
           03 Screen2-Fr-9bba, Frame, 
              COL 100,86, LINE 7,00, LINES 6,00 CELLS, 
              SIZE 73,71 CELLS, 
              LOWERED, COLOR IS 1, FILL-COLOR 16, FILL-PERCENT 100, 
              ID IS 130, BACKGROUND-LOW, ATW-CSS-CLASS "card".
           03 Screen2-Fr-9bb, Frame, 
              COL 1,71, LINE 13,08, LINES 6,00 CELLS, 
              SIZE 172,86 CELLS, 
              LOWERED, COLOR IS 1, FILL-COLOR 16, FILL-PERCENT 100, 
              ID IS 126, BACKGROUND-LOW, ATW-CSS-CLASS "card".
           03 Screen2-Fr-9a, Frame, 
              COL 117,14, LINE 59,31, LINES 23,00 CELLS, 
              SIZE 57,14 CELLS, 
              LOWERED, COLOR IS 1, FILL-COLOR 16, FILL-PERCENT 100, 
              ID IS 26, BACKGROUND-LOW, ATW-CSS-CLASS "card-bottom".
           03 Screen2-La-3, Label, 
              COL 120,14, LINE 61,38, LINES 2,00 CELLS, 
              SIZE 9,00 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 79, LABEL-OFFSET 0, 
              TITLE "Agence", TRANSPARENT.
           03 Screen2-Fr-9b, Frame, 
              COL 117,14, LINE 22,92, LINES 4,15 CELLS, 
              SIZE 57,14 CELLS, 
              LOWERED, COLOR IS 1, FILL-COLOR 16, FILL-PERCENT 100, 
              ID IS 28, BACKGROUND-LOW, ATW-CSS-CLASS "card-top".
           03 Screen2-La-1, Label, 
              COL 120,00, LINE 24,08, LINES 2,69 CELLS, 
              SIZE 22,00 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 29, LABEL-OFFSET 0, 
              TITLE "Détail ligne", TRANSPARENT, ATW-CSS-CLASS "h5".
           03 Screen2-Fr-9, Frame, 
              COL 117,14, LINE 26,62, LINES 28,23 CELLS, 
              SIZE 57,14 CELLS, 
              LOWERED, COLOR IS 1, FILL-COLOR 16, FILL-PERCENT 100, 
              ID IS 5, BACKGROUND-LOW, ATW-CSS-CLASS "card-bottom".
           03 Screen2-La-Fac, Label, 
              COL 62,71, LINE 20,69, LINES 1,85 CELLS, 
              SIZE 27,29 CELLS, 
              COLOR IS 13, FONT IS Small-Font, ID IS 25, CENTER, 
              LABEL-OFFSET 0, TITLE La-facture, TRANSPARENT, 
              VISIBLE Wvisible-lafac.
           03 Screen2-Pb-Marge, Push-Button, 
              COL 1,71, LINE 20,54, LINES 2,38 CELLS, SIZE 10,00 CELLS, 
              EXCEPTION-VALUE 9860, FONT IS Default-Font, ID IS 125, 
              TITLE "Marges ", VISIBLE W-AMB-MAGD.
           03 Screen2-Fr-5, Frame, 
              COL 66,00, LINE 79,69, LINES 2,08 CELLS, 
              SIZE 37,71 CELLS, 
              LOWERED, FONT IS Small-Font, ID IS 30, BACKGROUND-LOW.
           03 Screen2-Cm-TCO, Combo-Box, 
              COL 135,14, LINE 75,00, LINES 9,62 CELLS, 
              SIZE 14,71 CELLS, 
              3-D, COLOR IS 2, ENABLED WENABLE-TCO, 
              FONT IS Default-Font, ID IS 80, MASS-UPDATE 0, 
              NOTIFY-SELCHANGE, DROP-LIST, UNSORTED, 
              EVENT PROCEDURE Screen2-Cm-TCO-Event-Proc.
           03 Screen2-Cm-CVM, Combo-Box, 
              COL 134,71, LINE 75,00, LINES 8,00 CELLS, 
              SIZE 17,57 CELLS, 
              3-D, COLOR IS 2, FONT IS Default-Font, ID IS 127, 
              MASS-UPDATE 0, NOTIFY-SELCHANGE, DROP-LIST, UNSORTED, 
              VISIBLE Wenable-tli, 
              EVENT PROCEDURE Screen2-Cm-CVM-Event-Proc.
           03 Screen2-Fr-8, Frame, 
              COL 72,00, LINE 80,08, LINES 1,85 CELLS, 
              SIZE 42,57 CELLS, 
              LOWERED, FONT IS Small-Font, ID IS 44, BACKGROUND-LOW.
           03 Screen2-Fr-1, Frame, 
              COL 1,71, LINE 62,31, LINES 3,38 CELLS, 
              SIZE 112,86 CELLS, 
              LOWERED, ALTERNATE, FILL-COLOR 16, FILL-PERCENT 100, 
              FULL-HEIGHT, ID IS 93, BACKGROUND-LOW, 
              ATW-CSS-CLASS "card-bottom".
           03 Screen2-La-TotLig, Label, 
              COL 1,86, LINE 63,15, LINES 1,85 CELLS, SIZE 5,29 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 91, CENTER, 
              LABEL-OFFSET 0.
           03 Screen2-Fr-4, Frame, 
              COL 2,14, LINE 79,15, LINES 2,69 CELLS, SIZE 61,43 CELLS, 
              RIMMED, ID IS 101, VISIBLE IFO-MBDI, BACKGROUND-LOW.
           03 Screen2-La-PCT, Label, 
              COL 20,43, LINE 80,23, LINES 1,00 CELLS, SIZE 5,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 105, 
              LABEL-OFFSET 0, 
              TITLE "+999,99", TRANSPARENT, VISIBLE IFO-MBDI.
           03 Screen2-La-LPCT, Label, 
              COL 26,71, LINE 80,23, LINES 1,00 CELLS, SIZE 1,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 106, 
              LABEL-OFFSET 0, 
              TITLE "%", TRANSPARENT, VISIBLE IFO-MBDI.
           03 Screen2-Fr-2, Frame, 
              COL 10,14, LINE 80,08, LINES 1,77 CELLS, 
              SIZE 22,86 CELLS, 
              LOWERED, COLOR IS 2, FONT IS Small-Font, ID IS 16, 
              BACKGROUND-LOW.
           03 Screen2-La-Promo, Label, 
              COL 13,86, LINE 80,77, LINES 1,00 CELLS, SIZE 7,14 CELLS, 
              COLOR IS 13, FONT IS Small-Font, ID IS 88, 
              LABEL-OFFSET 0, 
              TITLE "Promotion", TRANSPARENT, VISIBLE 0.
           03 Screen2-Pb-Serie, Push-Button, 
              COL 28,71, LINE 80,31, LINES 12, SIZE 12, 
              BITMAP-HANDLE NOSERIE12-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1031, ID IS 20, 
              TITLE "Voir les n° de série", VISIBLE 0.
           03 Screen2-La-RQ, Label, 
              COL 10,29, LINE 80,69, LINES 1,08 CELLS, SIZE 3,00 CELLS, 
              COLOR IS 432, FONT IS Default-Font, ID IS 137, CENTER, 
              LABEL-OFFSET 0, 
              TITLE "RQ", VISIBLE 0.
           03 Screen2-Fr-6, Frame, 
              COL 43,86, LINE 79,62, LINES 2,15 CELLS, 
              SIZE 28,00 CELLS, 
              LOWERED, FONT IS Small-Font, ID IS 36, BACKGROUND-LOW.
           03 Screen2-DaEf-Mon, Entry-Field, 
              COL 131,86, LINE 45,69, LINES 2,46 CELLS, 
              SIZE 12,29 CELLS, 
              3-D, COLOR IS Color194, ENABLED 0, FONT IS Large-Font, 
              ID IS 111, CENTER, MAX-TEXT 30, VISIBLE WVISIBLE-MON, 
              EVENT PROCEDURE Screen2-DaEf-Mon-Event-Proc.
           03 Screen2-Pb-TTC, Push-Button, 
              COL 146,86, LINE 45,69, LINES 2,38 CELLS, 
              SIZE 4,57 CELLS, 
              FONT IS Small-Font, ID IS 157, TERMINATION-VALUE 1636, 
              ATW-CSS-CLASS "fa fa-euro-sign fa-2x".
           03 Screen2-DaEf-LPZ, Entry-Field, 
              COL 131,86, LINE 45,69, LINES 2,46 CELLS, 
              SIZE 13,57 CELLS, 
              3-D, COLOR IS 2, ENABLED WENABLE-LPZ, ID IS 15, 
              MAX-TEXT 10, VISIBLE WVISIBLE-LPZ.
           03 Screen2-DaEf-SADLI, Entry-Field, 
              COL 151,86, LINE 78,54, LINES 2,46 CELLS, 
              SIZE 9,14 CELLS, 
              3-D, COLOR IS 2, ENABLED WENABLE-DLI, 
              FONT IS Default-Font, ID IS 19, MAX-TEXT 4.
           03 Screen2-Ef-MOT, Entry-Field, 
              COL 134,57, LINE 78,54, LINES 2,46 CELLS, 
              SIZE 18,14 CELLS, 
              3-D, COLOR IS 2, FONT IS Small-Font, ID IS 42, 
              MAX-TEXT 15, NOTIFY-CHANGE, VISIBLE 0, 
              EVENT PROCEDURE Screen2-Ef-MOT-Event-Proc.
           03 Screen2-La-REC, Label, 
              COL 146,86, LINE 39,54, LINES 2,62 CELLS, 
              SIZE 6,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 41, 
              LABEL-OFFSET 20, 
              TITLE "Rem. en Cascade", TRANSPARENT, 
              VISIBLE WVISIBLE-REC.
           03 Screen2-La-LTotHt, Label, 
              COL 94,14, LINE 63,15, LINES 1,85 CELLS, SIZE 2,86 CELLS, 
              COLOR IS 514, FONT IS Default-Font, ID IS 59, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "HT".
           03 Screen2-Fr-7, Frame, 
              COL 20,57, LINE 79,54, LINES 1,92 CELLS, 
              SIZE 23,14 CELLS, 
              LOWERED, COLOR IS 2, FONT IS Small-Font, ID IS 60, 
              BACKGROUND-LOW.
           03 Screen2-Fr-3, Frame, 
              COL 2,00, LINE 79,54, LINES 2,31 CELLS, SIZE 18,29 CELLS, 
              LOWERED, COLOR IS 2, FONT IS Small-Font, ID IS 17, 
              BACKGROUND-LOW.
           03 Screen2-DaGd-1, Grid, 
              COL 1,71, LINE 23,31, LINES 39,08 CELLS, 
              SIZE 112,86 CELLS, 
              NO-BOX, CENTERED-HEADINGS, COLOR IS 2, COLUMN-HEADINGS, 
              DATA-COLUMNS (1, 2, 23, 63, 73, 85, 91, 103, 116, 117,
              118, 128, 135, 147, 155, 159, 160, 175), 
              DISPLAY-COLUMNS (1, 3, 22, 63, 73, 88, 96, 111, 126, 128,
              130, 145, 154, 157, 165, 169, 170, 185), 
              ALIGNMENT ("C", "L", "L", "U", "R", "R", "R", "R", "U", "U
      -       "", "R", "R", "U", "U", "U", "U", "U", "U"), 
              DATA-TYPES ("X(1)", "X(20)", "X(40)", "9(10)", "9(10)", "S
      -       "99V99", "9(10)", "9(11)", "X(1)", "X(1)", "9(10)", "S999V
      -       "99", "X", "9(8)", "9(4)", "9(1)", "X", "X"), 
              SEPARATION (5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
              5, 5, 5), 
              CURSOR-FRAME-WIDTH 0, DIVIDER-COLOR W-Divider-Color, 
              END-COLOR W-End-Color, FONT IS Small-Font, 
              HEADING-COLOR W-Heading-Color, 
              HEADING-DIVIDER-COLOR W-Heading-Divider-Color, ID IS 1, 
              NUM-COL-HEADINGS 1, NUM-ROWS W-Num-Rows, TILED-HEADINGS, 
              VPADDING 50, VSCROLL, ATW-CSS-CLASS "table", 
              EVENT PROCEDURE Screen2-DaGd-1-Event-Proc.
           03 Screen2-Pb-Precedent, Push-Button, 
              COL 3,00, LINE 1,69, LINES 1,85 CELLS, SIZE 10,29 CELLS, 
              FONT IS Small-Font, ID IS 2000, SELF-ACT, 
              TERMINATION-VALUE 9862, 
              TITLE "1. En-tête", ATW-CSS-CLASS "breadcrumb-item".
           03 Screen2-Pb-Suivant, Push-Button, 
              COL 28,29, LINE 1,69, LINES 1,85 CELLS, SIZE 7,29 CELLS, 
              FONT IS Small-Font, ID IS 2001, SELF-ACT, 
              TERMINATION-VALUE 9861, 
              TITLE "3. Pied", ATW-CSS-CLASS "breadcrumb-item".
           03 Screen2-DaRb-INP0, Radio-Button, 
              COL 122,43, LINE 28,08, LINES 1,69 CELLS, 
              SIZE 15,43 CELLS, 
              COLOR IS 514, ENABLED WENABLE-INP, FONT IS Small-Font, 
              GROUP 200, GROUP-VALUE 1, ID IS 2, 
              TITLE "Article", 
              EVENT PROCEDURE Screen2-DaRb-INP0-Event-Proc.
           03 Screen2-DaRb-INP4, Radio-Button, 
              COL 135,71, LINE 28,08, LINES 1,69 CELLS, 
              SIZE 15,43 CELLS, 
              COLOR IS 514, ENABLED WENABLE-INP, FONT IS Small-Font, 
              GROUP 200, GROUP-VALUE 2, ID IS 4, 
              TITLE "Prestation", 
              EVENT PROCEDURE Screen2-DaRb-INP4-Event-Proc.
           03 Screen2-DaRb-INP9, Radio-Button, 
              COL 151,00, LINE 28,08, LINES 1,69 CELLS, 
              SIZE 15,43 CELLS, 
              COLOR IS 514, ENABLED WENABLE-INP, FONT IS Small-Font, 
              GROUP 200, GROUP-VALUE 3, ID IS 6, 
              TITLE "Commentaire", 
              BEFORE PROCEDURE Screen2-DaRb-INP9-Ev-Cmd-Clicked, 
              EVENT PROCEDURE Screen2-DaRb-INP9-Event-Proc.
           03 Screen2-La-Qte, Label, 
              COL 119,86, LINE 34,15, LINES 1,85 CELLS, 
              SIZE 11,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 9, LABEL-OFFSET 0, 
              TITLE "Quantité", TRANSPARENT.
           03 Screen2-Ef-Ar1, Entry-Field, 
              COL 131,86, LINE 30,54, LINES 2,46 CELLS, 
              SIZE 9,71 CELLS, 
              3-D, COLOR IS 2, ENABLED WENABLE-AR1, ID IS 112, 
              MAX-TEXT 4, 
              EVENT PROCEDURE Screen2-Ef-Ar1-Event-Proc.
           03 Screen2-Ef-Ar2, Entry-Field, 
              COL 143,14, LINE 30,54, LINES 2,46 CELLS, 
              SIZE 21,57 CELLS, 
              3-D, COLOR IS 2, ENABLED WENABLE-AR2, ID IS 113, 
              MAX-TEXT 16, 
              AFTER PROCEDURE Screen2-Ef-Ar2-AfterProcedure.
           03 Screen2-Ef-Fou, Entry-Field, 
              COL 79,00, LINE 80,23, LINES 1,31 CELLS, SIZE 6,00 CELLS, 
              3-D, ENABLED WENABLE-FOU, FONT IS Small-Font, ID IS 69, 
              CENTER, MAX-TEXT 6, VISIBLE 0, 
              EVENT PROCEDURE Screen2-Ef-Fou-Event-Proc.
           03 Screen2-Ef-Pac, Entry-Field, 
              COL 91,14, LINE 80,31, LINES 1,31 CELLS, SIZE 7,86 CELLS, 
              3-D, COLOR IS 2, ENABLED WENABLE-FOU, FONT IS Small-Font, 
              ID IS 95, CENTER, VISIBLE 0, 
              EVENT PROCEDURE Screen2-Ef-Pac-Event-Proc.
           03 Screen2-Ef-Des, Entry-Field, 
              COL 3,00, LINE 80,38, LINES 1,38 CELLS, SIZE 61,43 CELLS, 
              3-D, COLOR IS 2, ENABLED WENABLE-DES, ID IS 115, 
              NOTIFY-CHANGE, 
              EVENT PROCEDURE Screen2-Ef-Des-Event-Proc.
           03 Screen2-DaEf-Qte, Entry-Field, 
              COL 131,86, LINE 33,54, LINES 2,46 CELLS, 
              SIZE 11,57 CELLS, 
              3-D, COLOR IS 2, ENABLED WENABLE-QTE, ID IS 8, CENTER, 
              MAX-TEXT 10, NOTIFY-CHANGE, 
              AFTER PROCEDURE Screen2-DaEf-Qte-AfterProcedure, 
              EVENT PROCEDURE Screen2-DaEf-Rem-Event-Proc.
           03 Screen2-DaCb-Isq, Check-Box, 
              COL 149,71, LINE 49,46, LINES 1,69 CELLS, 
              SIZE 22,29 CELLS, 
              COLOR IS 514, ENABLED WENABLE-ISQ, FONT IS Small-Font, 
              ID IS 18, SELF-ACT, 
              TITLE "Régularisation", 
              EVENT PROCEDURE Screen2-DaCb-Isq-Event-Proc.
           03 Screen2-DaCb-EXC, Check-Box, 
              COL 149,71, LINE 51,38, LINES 1,69 CELLS, 
              SIZE 22,14 CELLS, 
              COLOR IS 514, ENABLED WENABLE-EXC, FONT IS Small-Font, 
              ID IS 27, SELF-ACT, 
              TITLE "Sortie exceptionnelle", 
              EVENT PROCEDURE Screen2-DaCb-EXC-Event-Proc.
           03 Screen2-La-Pub, Label, 
              COL 119,86, LINE 37,08, LINES 1,85 CELLS, 
              SIZE 11,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 10, LABEL-OFFSET 0, 
              TITLE "P.U. Brut", TRANSPARENT.
           03 Screen2-DaEf-Pub, Entry-Field, 
              COL 131,86, LINE 36,54, LINES 2,46 CELLS, 
              SIZE 13,57 CELLS, 
              3-D, COLOR IS 2, ENABLED WENABLE-PUB, ID IS 11, CENTER, 
              MAX-TEXT 15, NOTIFY-CHANGE, 
              EVENT PROCEDURE Screen2-DaEf-Rem-Event-Proc.
           03 Screen2-La-Rem, Label, 
              COL 119,86, LINE 40,08, LINES 1,85 CELLS, 
              SIZE 11,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 13, LABEL-OFFSET 0, 
              TITLE "% Remise", TRANSPARENT.
           03 Screen2-DaEf-Rem, Entry-Field, 
              COL 131,86, LINE 39,54, LINES 2,46 CELLS, 
              SIZE 6,00 CELLS, 
              3-D, COLOR IS 2, ENABLED WENABLE-REM, ID IS 12, CENTER, 
              MAX-TEXT 6, NOTIFY-CHANGE, 
              AFTER PROCEDURE Screen2-DaEf-Rem-AfterProcedure, 
              EVENT PROCEDURE Screen2-DaEf-Rem-Event-Proc.
           03 Screen2-La-RC, Label, 
              COL 139,14, LINE 40,08, LINES 1,85 CELLS, 
              SIZE 3,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 119, 
              LABEL-OFFSET 0, 
              TITLE "RC", TRANSPARENT.
           03 Screen2-La-Pun, Label, 
              COL 119,86, LINE 43,23, LINES 1,85 CELLS, 
              SIZE 11,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 116, 
              LABEL-OFFSET 0, 
              TITLE "P.U. Net", TRANSPARENT.
           03 Screen2-DaEf-Pun, Entry-Field, 
              COL 131,86, LINE 42,62, LINES 2,46 CELLS, 
              SIZE 13,57 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 120, CENTER, 
              MAX-TEXT 15, 
              EVENT PROCEDURE Screen2-DaEf-Pun-Event-Proc.
           03 Screen2-Pb-RC, Push-Button, 
              COL 142,86, LINE 39,92, LINES 1,46 CELLS, 
              SIZE 2,86 CELLS, 
              ENABLED WENABLE-REM, FONT IS Default-Font, ID IS 45, 
              NO-AUTO-DEFAULT, NO-TAB, SELF-ACT, 
              TERMINATION-VALUE 2012, 
              ATW-CSS-CLASS "fa fa-angle-double-down", 
              EVENT PROCEDURE Screen2-Pb-RC-Event-Proc.
           03 Screen2-DaRb-PZE0, Radio-Button, 
              COL 121,14, LINE 49,46, LINES 1,69 CELLS, 
              SIZE 11,14 CELLS, 
              COLOR IS 514, ENABLED WENABLE-PZE, FONT IS Small-Font, 
              GROUP 151, GROUP-VALUE 9, ID IS 43, 
              TITLE "Payant", VISIBLE WVISIBLE-PZE, 
              EVENT PROCEDURE Screen2-DaRb-PZE0-Event-Proc.
           03 Screen2-DaRb-PZE1, Radio-Button, 
              COL 121,14, LINE 51,38, LINES 1,69 CELLS, 
              SIZE 11,43 CELLS, 
              COLOR IS 514, ENABLED WENABLE-PZE, FONT IS Small-Font, 
              GROUP 151, GROUP-VALUE 1, ID IS 21, 
              TITLE "Gratuit", VISIBLE WVISIBLE-PZE, 
              EVENT PROCEDURE Screen2-DaRb-PZE1-Event-Proc.
           03 Screen2-DaEf-REC1, Entry-Field, 
              COL 153,86, LINE 39,54, LINES 2,46 CELLS, 
              SIZE 6,00 CELLS, 
              3-D, COLOR IS 2, ENABLED WENABLE-REM, ID IS 34, 
              MAX-TEXT 5, VISIBLE WVISIBLE-REC, 
              EVENT PROCEDURE Screen2-DaEf-REC1-Event-Proc.
           03 Screen2-DaEf-REC2, Entry-Field, 
              COL 160,43, LINE 39,54, LINES 2,46 CELLS, 
              SIZE 6,00 CELLS, 
              3-D, COLOR IS 2, ENABLED WENABLE-REM, ID IS 35, 
              MAX-TEXT 5, VISIBLE WVISIBLE-REC, 
              EVENT PROCEDURE Screen2-DaEf-REC2-Event-Proc.
           03 Screen2-DaEf-REC3, Entry-Field, 
              COL 167,00, LINE 39,54, LINES 2,46 CELLS, 
              SIZE 6,00 CELLS, 
              3-D, COLOR IS 2, ENABLED WENABLE-REM, ID IS 37, 
              MAX-TEXT 5, VISIBLE WVISIBLE-REC, 
              EVENT PROCEDURE Screen2-DaEf-REC3-Event-Proc.
           03 Screen2-DaEf-REC4, Entry-Field, 
              COL 153,86, LINE 42,54, LINES 2,46 CELLS, 
              SIZE 6,00 CELLS, 
              3-D, COLOR IS 2, ENABLED WENABLE-REM, ID IS 38, 
              MAX-TEXT 5, VISIBLE WVISIBLE-REC, 
              EVENT PROCEDURE Screen2-DaEf-REC4-Event-Proc.
           03 Screen2-DaEf-REC5, Entry-Field, 
              COL 160,43, LINE 42,54, LINES 2,46 CELLS, 
              SIZE 6,00 CELLS, 
              3-D, COLOR IS 2, ENABLED WENABLE-REM, ID IS 39, 
              MAX-TEXT 5, VISIBLE WVISIBLE-REC, 
              EVENT PROCEDURE Screen2-DaEf-REC5-Event-Proc.
           03 Screen2-DaEf-REC6, Entry-Field, 
              COL 167,00, LINE 42,54, LINES 2,46 CELLS, 
              SIZE 6,00 CELLS, 
              3-D, COLOR IS 2, ENABLED WENABLE-REM, ID IS 40, 
              MAX-TEXT 5, VISIBLE WVISIBLE-REC, 
              EVENT PROCEDURE Screen2-DaEf-REC6-Event-Proc.
           03 Screen2-DaRb-PZE2, Radio-Button, 
              COL 134,43, LINE 49,46, LINES 1,69 CELLS, 
              SIZE 12,29 CELLS, 
              COLOR IS 514, ENABLED WENABLE-PZE, FONT IS Small-Font, 
              GROUP 151, GROUP-VALUE 2, ID IS 22, 
              TITLE "Echange", VISIBLE WVISIBLE-PZE, 
              EVENT PROCEDURE Screen2-DaRb-PZE2-Event-Proc.
           03 Screen2-DaRb-PZE3, Radio-Button, 
              COL 134,43, LINE 51,38, LINES 1,69 CELLS, 
              SIZE 12,71 CELLS, 
              COLOR IS 514, ENABLED WENABLE-PZE, FONT IS Small-Font, 
              GROUP 151, GROUP-VALUE 3, ID IS 23, 
              TITLE "En attente", VISIBLE WVISIBLE-PZE, 
              EVENT PROCEDURE Screen2-DaRb-PZE3-Event-Proc.
           03 Screen2-DaCb-TLI, Check-Box, 
              COL 127,14, LINE 72,54, LINES 1,69 CELLS, 
              SIZE 10,57 CELLS, 
              COLOR IS 514, ENABLED WENABLE-TLI, FONT IS Small-Font, 
              ID IS 82, SELF-ACT, 
              TITLE "Commande", 
              EVENT PROCEDURE Screen2-DaCb-TLI-Event-Proc.
           03 Screen2-Cb-PZE4, Check-Box, 
              COL 141,29, LINE 72,54, LINES 1,69 CELLS, 
              SIZE 12,00 CELLS, 
              COLOR IS 514, ENABLED WENABLE-PZE4, FONT IS Small-Font, 
              ID IS 24, 
              TITLE "Vte manquée", 
              EVENT PROCEDURE Screen2-Cb-PZE4-Event-Proc.
           03 Screen2-DaEf-JDLI, Entry-Field, 
              COL 134,71, LINE 78,54, LINES 2,46 CELLS, 
              SIZE 5,71 CELLS, 
              3-D, COLOR IS 2, ENABLED WENABLE-DLI, 
              FONT IS Default-Font, ID IS 96, MAX-TEXT 2, 
              AFTER PROCEDURE Screen2-DaEf-JDLI-Ev-Msg-Validate, 
              EVENT PROCEDURE Screen1-DaEf-JDLI-Event-Proc.
           03 Screen2-DaEf-MDLI, Entry-Field, 
              COL 143,14, LINE 78,54, LINES 2,46 CELLS, 
              SIZE 5,71 CELLS, 
              3-D, COLOR IS 2, ENABLED WENABLE-DLI, 
              FONT IS Default-Font, ID IS 97, MAX-TEXT 2, 
              EVENT PROCEDURE Screen1-DaEf-MDLI-Event-Proc.
           03 Screen2-Pb-Valider, Push-Button, 
              COL 98,43, LINE 79,92, LINES 16, SIZE 16, 
              BITMAP-HANDLE VALIDER16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              FONT IS Small-Font, ID IS 31, DEFAULT-BUTTON, 
              TERMINATION-VALUE 9858, 
              TITLE "Valider", VISIBLE 0.
           03 Screen2-Pb-Annuler, Push-Button, 
              COL 101,86, LINE 79,92, LINES 16, SIZE 16, 
              BITMAP-HANDLE ANNULER16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 2008, FONT IS Small-Font, ID IS 32, 
              NO-AUTO-DEFAULT, NO-TAB, SELF-ACT, 
              TITLE "Annuler", VISIBLE 0.
           03 Screen2-Pb-Supprimer, Push-Button, 
              COL 158,14, LINE 24,00, LINES 2,38 CELLS, 
              SIZE 4,57 CELLS, 
              EXCEPTION-VALUE 9856, FONT IS Default-Font, ID IS 50, 
              NO-AUTO-DEFAULT, NO-TAB, SELF-ACT, 
              ATW-CSS-CLASS "fa fa-close fa-2x button-success".
           03 Screen2-La-Lcas, Label, 
              COL 155,14, LINE 70,15, LINES 1,85 CELLS, 
              SIZE 6,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 54, LABEL-OFFSET 0, 
              TITLE "Casier", TRANSPARENT.
           03 Screen2-La-Cas, Label, 
              COL 162,29, LINE 70,15, LINES 1,85 CELLS, 
              SIZE 8,29 CELLS, 
              COLOR IS 194, FONT IS Small-Font, ID IS 55, 
              LABEL-OFFSET 0, TRANSPARENT.
           03 Screen2-La-LStg, Label, 
              COL 119,86, LINE 67,23, LINES 1,85 CELLS, 
              SIZE 12,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 56, LABEL-OFFSET 0, 
              TITLE W-LIBSTG, TRANSPARENT.
           03 Screen2-La-Stg, Label, 
              COL 134,71, LINE 67,23, LINES 1,85 CELLS, 
              SIZE 7,14 CELLS, 
              COLOR IS 194, FONT IS Small-Font, ID IS 57, 
              LABEL-OFFSET 0, TRANSPARENT.
           03 Screen2-La-LStc, Label, 
              COL 119,86, LINE 70,15, LINES 1,85 CELLS, 
              SIZE 12,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 58, LABEL-OFFSET 0, 
              TITLE W-LIBSTC, TRANSPARENT.
           03 Screen2-La-Stc, Label, 
              COL 134,71, LINE 70,15, LINES 1,85 CELLS, 
              SIZE 7,14 CELLS, 
              COLOR IS 194, FONT IS Small-Font, ID IS 61, 
              LABEL-OFFSET 0, TRANSPARENT.
           03 Screen2-La-Lecf, Label, 
              COL 144,29, LINE 67,23, LINES 1,85 CELLS, 
              SIZE 4,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 62, LABEL-OFFSET 0, 
              TITLE "ECF", TRANSPARENT.
           03 Screen2-La-Ecf, Label, 
              COL 148,86, LINE 67,23, LINES 1,85 CELLS, 
              SIZE 5,71 CELLS, 
              COLOR IS 194, FONT IS Small-Font, ID IS 63, 
              LABEL-OFFSET 0, TRANSPARENT.
           03 Screen2-La-Lecc, Label, 
              COL 144,29, LINE 70,15, LINES 1,85 CELLS, 
              SIZE 4,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 65, LABEL-OFFSET 0, 
              TITLE "ECC", TRANSPARENT.
           03 Screen2-La-Ecc, Label, 
              COL 148,86, LINE 70,15, LINES 1,85 CELLS, 
              SIZE 5,71 CELLS, 
              COLOR IS 194, FONT IS Small-Font, ID IS 64, 
              LABEL-OFFSET 0, TRANSPARENT.
           03 Screen2-La-TotHt, Label, 
              COL 97,00, LINE 63,15, LINES 1,85 CELLS, 
              SIZE 12,29 CELLS, 
              COLOR IS 514, FONT IS Default-Font, ID IS 51, 
              LABEL-OFFSET 0.
           03 Screen2-DaEf-Bon, Entry-Field, 
              COL 30,14, LINE 15,00, LINES 2,46 CELLS, 
              SIZE 11,29 CELLS, 
              3-D, COLOR IS LK-MEP-COULAGE-COUL, ENABLED 0, ID IS 66, 
              CENTER, MAX-TEXT 6, READ-ONLY, VALUE Z-BON.
           03 Screen2-La-Lbon, Label, 
              COL 4,00, LINE 15,54, LINES 1,85 CELLS, SIZE 17,57 CELLS, 
              COLOR IS 5, FONT IS Small-Font, ID IS 67, RIGHT, 
              LABEL-OFFSET 0, TITLE W-LBON.
           03 Screen2-Pb-Terminer, Push-Button, 
              COL 2,00, LINE 79,54, LINES 2,38 CELLS, SIZE 4,57 CELLS, 
              EXCEPTION-VALUE 9840, FLAT, FONT IS Small-Font, ID IS 68, 
              SELF-ACT, 
              ATW-CSS-CLASS "fa fa-power-off fa-2x button-warning".
           03 Screen2-Pb-Imprimer, Push-Button, 
              COL 132,43, LINE 1,38, LINES 24, SIZE 118, 
              BITMAP-HANDLE IMPRIMER32-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 9816, FONT IS Default-Font, ID IS 70, 
              NO-AUTO-DEFAULT, NO-TAB, SELF-ACT, 
              TITLE "Imprimer", ATW-CSS-CLASS "button-imprimer".
           03 Screen2-Pb-Modifier, Push-Button, 
              COL 151,14, LINE 1,38, LINES 24, SIZE 118, 
              BITMAP-HANDLE MODIFIE16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 9854, FONT IS Default-Font, ID IS 71, 
              NO-AUTO-DEFAULT, NO-TAB, SELF-ACT, 
              TITLE "Modifier", ATW-CSS-CLASS "button-modifier".
           03 Screen2-Pb-Liste, Push-Button, 
              COL 165,86, LINE 30,54, LINES 2,38 CELLS, 
              SIZE 4,57 CELLS, 
              ENABLED WENABLE-LISTE, EXCEPTION-VALUE 1007, 
              FONT IS Default-Font, ID IS 72, NO-AUTO-DEFAULT, NO-TAB, 
              SELF-ACT, ATW-CSS-CLASS "fa fa-search fa-2x".
           03 Screen2-DaEf-Rai, Entry-Field, 
              COL 44,00, LINE 15,00, LINES 2,46 CELLS, 
              SIZE 30,57 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 73, CENTER, 
              MAX-TEXT 25, VALUE W-RAI.
           03 Screen2-DaEf-Cv, Entry-Field, 
              COL 75,29, LINE 15,00, LINES 2,46 CELLS, 
              SIZE 30,57 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 74, CENTER, 
              MAX-TEXT 35, VALUE W-CV.
           03 Screen2-Pb-Ajouter, Push-Button, 
              COL 152,71, LINE 24,00, LINES 2,38 CELLS, 
              SIZE 4,57 CELLS, 
              FONT IS Default-Font, ID IS 75, NO-AUTO-DEFAULT, NO-TAB, 
              SELF-ACT, TERMINATION-VALUE 9857, 
              ATW-CSS-CLASS "fa fa-plus fa-2x button-success".
           03 Screen2-DaEf-Ags, Entry-Field, 
              COL 134,71, LINE 60,85, LINES 2,46 CELLS, 
              SIZE 7,14 CELLS, 
              3-D, COLOR IS 2, ENABLED WENABLE-AGS, ID IS 76, CENTER, 
              MAX-TEXT 3, NOTIFY-CHANGE, VISIBLE EXM-MPAD, 
              EVENT PROCEDURE Screen2-DaEf-Ags-Event-Proc.
           03 Screen2-Pb-Ags, Push-Button, 
              COL 143,29, LINE 60,85, LINES 2,38 CELLS, 
              SIZE 8,71 CELLS, 
              ENABLED WENABLE-AGS, EXCEPTION-VALUE 2050, 
              FONT IS Small-Font, ID IS 78, NO-AUTO-DEFAULT, NO-TAB, 
              SELF-ACT, 
              TITLE "Agence", VISIBLE EXM-MPAD.
           03 Screen2-La-MHT, Label, 
              COL 119,86, LINE 46,31, LINES 1,85 CELLS, 
              SIZE 11,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 14, LABEL-OFFSET 0, 
              TITLE "Montant HT", TRANSPARENT.
           03 Screen2-La-DliSla1, Label, 
              COL 141,29, LINE 79,23, LINES 1,00 CELLS, 
              SIZE 1,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 99, 
              LABEL-OFFSET 20, 
              TITLE "/", TRANSPARENT.
           03 Screen2-La-Dli, Label, 
              COL 119,86, LINE 79,08, LINES 1,85 CELLS, 
              SIZE 10,00 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 98, LABEL-OFFSET 0, 
              TITLE "Liv prévue", TRANSPARENT.
           03 Screen2-La-TCO, Label, 
              COL 119,86, LINE 75,23, LINES 1,85 CELLS, 
              SIZE 10,00 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 33, LABEL-OFFSET 0, 
              TITLE "Type", TRANSPARENT.
           03 Screen2-Bt-1, Bitmap, 
              COL 22,43, LINE 80,69, LINES 10, SIZE 7, 
              BITMAP-HANDLE COLLAPSE7-JPG, BITMAP-NUMBER 1, 
              ID IS 81, VISIBLE 0.
           03 Screen2-La-LTotPoi, Label, 
              COL 14,43, LINE 63,15, LINES 1,85 CELLS, SIZE 5,86 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 47, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Poids ".
           03 Screen2-La-TotPoi, Label, 
              COL 20,29, LINE 63,15, LINES 1,85 CELLS, SIZE 9,14 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 48, 
              LABEL-OFFSET 0.
           03 Screen2-La-LTotTTC, Label, 
              COL 75,29, LINE 63,15, LINES 1,85 CELLS, SIZE 3,86 CELLS, 
              COLOR IS 514, FONT IS Default-Font, ID IS 49, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "TTC".
           03 Screen2-La-TotTTC, Label, 
              COL 79,14, LINE 63,15, LINES 1,85 CELLS, 
              SIZE 13,43 CELLS, 
              COLOR IS 514, FONT IS Default-Font, ID IS 84, 
              LABEL-OFFSET 0.
           03 Screen2-La-LMBL, Label, 
              COL 156,43, LINE 72,85, LINES 1,85 CELLS, 
              SIZE 5,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 85, LABEL-OFFSET 0, 
              TITLE Screen2-La-LMBL-Buf, TRANSPARENT.
           03 Screen2-La-MBL, Label, 
              COL 164,00, LINE 72,85, LINES 1,85 CELLS, 
              SIZE 7,71 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 86, LABEL-OFFSET 0, 
              TRANSPARENT.
           03 Screen2-La-MSGMBL, Label, 
              COL 67,14, LINE 80,31, LINES 1,00 CELLS, 
              SIZE 10,00 CELLS, 
              COLOR IS 6, FONT IS Small-Font, ID IS 87, CENTER, 
              LABEL-OFFSET 0.
           03 Screen2-La-LtotLig, Label, 
              COL 7,14, LINE 63,15, LINES 1,85 CELLS, SIZE 6,71 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 90, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Postes".
           03 Screen2-La-LKg, Label, 
              COL 30,14, LINE 63,15, LINES 1,85 CELLS, SIZE 2,14 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 92, CENTER, 
              LABEL-OFFSET 0, 
              TITLE "Kg".
           03 Screen2-Pb-ListeFou, Push-Button, 
              COL 76,43, LINE 80,23, LINES 10, SIZE 10, 
              BITMAP-HANDLE ZOOMxxx10-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              ENABLED WENABLE-FOU, EXCEPTION-VALUE 1066, 
              FONT IS Small-Font, ID IS 94, NO-AUTO-DEFAULT, 
              TITLE "Fournisseur", VISIBLE 0.
           03 Screen2-La-DevFou, Label, 
              COL 81,71, LINE 80,62, LINES 1,00 CELLS, SIZE 6,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 52, RIGHT, 
              LABEL-OFFSET 0, 
              TITLE "EUR", TRANSPARENT, VISIBLE 0.
           03 Screen2-Pb-Doc, Push-Button, 
              COL 105,57, LINE 80,08, LINES 12, SIZE 12, 
              BITMAP-HANDLE INFORMA12-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1021, FONT IS Small-Font, ID IS 3, 
              NO-AUTO-DEFAULT, 
              TITLE "Consulter la documentation de l'article", 
              VISIBLE 0.
           03 Screen2-La-Fou, Label, 
              COL 67,71, LINE 80,31, LINES 1,00 CELLS, SIZE 8,00 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 7, RIGHT, 
              LABEL-OFFSET 0, 
              TITLE "Fournisseur", TRANSPARENT, VISIBLE 0.
           03 Screen2-La-2, Label, 
              COL 3,29, LINE 80,15, LINES 1,00 CELLS, SIZE 4,71 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 77, LABEL-OFFSET 0, 
              TITLE "Forfait", TRANSPARENT, VISIBLE IFO-MBDI.
           03 Screen2-Cb-DFO, Check-Box, 
              COL 37,86, LINE 80,15, LINES 1,00 CELLS, 
              SIZE 25,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 102, LEFT-TEXT, 
              TITLE "Communiquer détail prix au client ", 
              VALUE DFO-MBDI, VISIBLE IFO-MBDI.
           03 Screen2-Ef-MFO, Entry-Field, 
              COL 8,71, LINE 80,00, LINES 1,46 CELLS, SIZE 11,29 CELLS, 
              3-D, COLOR IS 2, ID IS 103, CENTER, VISIBLE IFO-MBDI, 
              AFTER PROCEDURE Screen2-Ef-MFO-Aft-Procedure.
           03 Screen2-Pb-AppliquerForfait, Push-Button, 
              COL 29,14, LINE 79,92, LINES 1,46 CELLS, SIZE 7,71 CELLS, 
              EXCEPTION-VALUE 1085, FONT IS Small-Font, ID IS 104, 
              NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Appliquer", VISIBLE IFO-MBDI.
           03 Screen2-La-Rel, Label, 
              COL 12,71, LINE 20,77, LINES 1,85 CELLS, 
              SIZE 23,71 CELLS, 
              COLOR IS 5, FONT IS Small-Font, ID IS 107, RIGHT, 
              LABEL-OFFSET 0, 
              TITLE "Reliquat commande n°", TRANSPARENT, VISIBLE 0.
           03 Screen2-La-BCO, Label, 
              COL 37,14, LINE 20,69, LINES 1,85 CELLS, SIZE 8,57 CELLS, 
              COLOR IS 5, FONT IS Small-Font, ID IS 108, 
              LABEL-OFFSET 0, 
              TITLE "99999999", TRANSPARENT, VISIBLE 0.
           03 Screen2-La-DU, Label, 
              COL 45,86, LINE 20,69, LINES 1,85 CELLS, SIZE 2,86 CELLS, 
              COLOR IS 5, FONT IS Small-Font, ID IS 109, 
              LABEL-OFFSET 0, 
              TITLE "du", TRANSPARENT, VISIBLE 0.
           03 Screen2-La-DCO, Label, 
              COL 50,57, LINE 20,69, LINES 1,85 CELLS, 
              SIZE 10,43 CELLS, 
              COLOR IS 5, FONT IS Small-Font, ID IS 110, 
              LABEL-OFFSET 0, 
              TITLE "99/99/9999", TRANSPARENT, VISIBLE 0.
           03 Screen2-La-LIVP, Label, 
              COL 62,57, LINE 20,69, LINES 1,85 CELLS, 
              SIZE 14,29 CELLS, 
              COLOR IS 5, FONT IS Small-Font, ID IS 114, 
              LABEL-OFFSET 0, 
              TITLE "Livraison prévue le", TRANSPARENT, VISIBLE 0.
           03 Screen2-La-DLO, Label, 
              COL 77,00, LINE 20,69, LINES 1,85 CELLS, SIZE 8,57 CELLS, 
              COLOR IS 5, FONT IS Small-Font, ID IS 117, 
              LABEL-OFFSET 0, 
              TITLE "99/99/9999", TRANSPARENT, VISIBLE 0.
           03 Screen2-La-LFRP, Label, 
              COL 33,29, LINE 63,15, LINES 1,85 CELLS, 
              SIZE 10,43 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 118, CENTER, 
              LABEL-OFFSET 0, 
              TITLE "Franco port", VISIBLE 0.
           03 Screen2-La-FRP, Label, 
              COL 43,71, LINE 63,15, LINES 1,85 CELLS, SIZE 5,71 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 121, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "99999", VISIBLE 0.
           03 Screen2-La-ABRD, Label, 
              COL 109,43, LINE 63,15, LINES 1,85 CELLS, 
              SIZE 4,43 CELLS, 
              COLOR IS 514, FONT IS Default-Font, ID IS 122, LEFT, 
              LABEL-OFFSET 0, TITLE ABRD-MPAR.
           03 Screen2-La-LHTT, Label, 
              COL 53,71, LINE 63,15, LINES 1,85 CELLS, SIZE 9,14 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 123, CENTER, 
              LABEL-OFFSET 0, 
              TITLE "Commande", VISIBLE 0.
           03 Screen2-La-TotHTT, Label, 
              COL 63,14, LINE 63,15, LINES 1,85 CELLS, 
              SIZE 10,00 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 124, CENTER, 
              LABEL-OFFSET 0, TITLE ABRD-MPAR, VISIBLE 0.
           03 Screen2-Pb-FicheArt, Push-Button, 
              COL 163,43, LINE 24,00, LINES 2,38 CELLS, 
              SIZE 4,57 CELLS, 
              ID IS 128, TERMINATION-VALUE 9701, 
              ATW-CSS-CLASS "fa fa-edit fa-2x".
           03 Screen2-La-MBT, Label, 
              COL 103,14, LINE 20,54, LINES 1,85 CELLS, 
              SIZE 9,43 CELLS, 
              COLOR IS 5, FONT IS Default-Font, ID IS 134, RIGHT, 
              LABEL-OFFSET 0, VISIBLE WV-MBT.
           03 Screen2-La-LMBT, Label, 
              COL 94,57, LINE 20,54, LINES 1,85 CELLS, SIZE 7,71 CELLS, 
              COLOR IS 5, FONT IS Default-Font, ID IS 135, RIGHT, 
              LABEL-OFFSET 0, TITLE Screen2-La-LMBT-Buf, 
              VISIBLE WV-MBT.
           03 Screen2-La-MSGMBT, Label, 
              COL 100,43, LINE 20,54, LINES 1,85 CELLS, 
              SIZE 10,00 CELLS, 
              COLOR IS 237, FONT IS Small-Font, ID IS 136, CENTER, 
              LABEL-OFFSET 0, TRANSPARENT, VISIBLE 0.
           03 Screen2-DaEf-Age, Entry-Field, 
              COL 23,29, LINE 15,00, LINES 2,46 CELLS, SIZE 6,14 CELLS, 
              3-D, COLOR IS LK-MEP-COULAGE-COUL, ENABLED 0, ID IS 141, 
              CENTER, MAX-TEXT 6, READ-ONLY, VALUE ABR-MAGC.
           03 Screen2-La-Dispo, Label, 
              COL 152,71, LINE 67,15, LINES 1,85 CELLS, 
              SIZE 8,00 CELLS, 
              COLOR IS 205, FONT IS Small-Font, ID IS 142, LEFT, 
              LABEL-OFFSET 0, TRANSPARENT.
           03 Screen2-Pb-Recherche, Push-Button, 
              COL 168,86, LINE 24,00, LINES 2,38 CELLS, 
              SIZE 4,57 CELLS, 
              ID IS 144, TERMINATION-VALUE 9806, 
              ATW-CSS-CLASS "fa fa-search fa-2x".
           03 Screen2-La-LStgr, Label, 
              COL 119,86, LINE 64,46, LINES 1,85 CELLS, 
              SIZE 12,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 152, 
              LABEL-OFFSET 0, TITLE W-LIBSTGR, TRANSPARENT, VISIBLE 0.
           03 Screen2-La-Stgr, Label, 
              COL 134,71, LINE 64,46, LINES 1,85 CELLS, 
              SIZE 7,14 CELLS, 
              COLOR IS 194, FONT IS Small-Font, ID IS 153, 
              LABEL-OFFSET 0, TRANSPARENT, VISIBLE 0.
           03 Screen2-Bt-1a, Bitmap, 
              COL 17,14, LINE 80,23, LINES 12, SIZE 12, 
              BITMAP-HANDLE DOLLARX12-JPG, BITMAP-NUMBER 1, 
              ID IS 161, VISIBLE 0.
           03 Screen2-Fr-9ba, Frame, 
              COL 117,14, LINE 55,62, LINES 4,15 CELLS, 
              SIZE 57,14 CELLS, 
              LOWERED, COLOR IS 1, FILL-COLOR 16, FILL-PERCENT 100, 
              ID IS 46, BACKGROUND-LOW, ATW-CSS-CLASS "card-top".
           03 Screen2-La-1a, Label, 
              COL 119,71, LINE 56,77, LINES 2,69 CELLS, 
              SIZE 22,00 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 53, LABEL-OFFSET 0, 
              TITLE "Stock", TRANSPARENT, ATW-CSS-CLASS "h5".
           03 Screen2-La-DliSla2, Label, 
              COL 150,00, LINE 79,23, LINES 1,00 CELLS, 
              SIZE 1,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 100, 
              LABEL-OFFSET 20, 
              TITLE "/", TRANSPARENT, VISIBLE 0.
           03 Screen1-La-3b, Label, 
              COL 103,29, LINE 9,77, LINES 1,92 CELLS, SIZE 9,00 CELLS, 
              COLOR IS 2, FONT IS Calibri10, ID IS 131, LABEL-OFFSET 0, 
              TITLE "Bon N°", TRANSPARENT.
           03 Screen1-Ef-Bona, Entry-Field, 
              COL 111,71, LINE 9,23, LINES 2,46 CELLS, 
              SIZE 17,14 CELLS, 
              3-D, COLOR IS 2, ID IS 132, CENTER, MAX-TEXT 8, NUMERIC, 
              EVENT PROCEDURE Screen1-Ef-Bon-Event-Proc.
           03 Screen1-DaCb-IFOa, Check-Box, 
              COL 135,71, LINE 9,62, LINES 1,38 CELLS, 
              SIZE 15,43 CELLS, 
              COLOR IS 514, FONT IS Calibri10, ID IS 133, NO-TAB, 
              SELF-ACT, 
              TITLE "Forfait", VALUE Screen1-DaCb-IFO-BUF, 
              ATW-CSS-CLASS "switch".
           03 Screen1-Rb-classica, Radio-Button, 
              COL 154,57, LINE 8,69, LINES 1,15 CELLS, 
              SIZE 18,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 1, 
              ID IS 138, 
              TITLE "Classic".
           03 Screen1-Rb-copropa, Radio-Button, 
              COL 154,57, LINE 10,62, LINES 1,15 CELLS, 
              SIZE 18,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 2, 
              ID IS 139, 
              TITLE "Co-propriété".
           03 Screen2-Ef-1, Entry-Field, 
              COL 45,86, LINE 4,46, LINES 2,46 CELLS, SIZE 70,57 CELLS, 
              3-D, COLOR IS 2, ID IS 140, VALUE Screen2-Ef-1-Value.
           03 Screen2-Ef-2, Entry-Field, 
              COL 117,57, LINE 4,38, LINES 2,46 CELLS, SIZE 5,57 CELLS, 
              3-D, COLOR IS 2, ID IS 143, VALUE Screen2-Ef-2-Value.
           03 Screen2-Pb-3, Push-Button, 
              COL 3,14, LINE 9,15, LINES 24, SIZE 24, 
              BITMAP-HANDLE ZOOMxxx12-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              ID IS 145, ATW-CSS-CLASS "button-icon fa-home".
           03 Screen2-Pb-4, Push-Button, 
              COL 59,29, LINE 9,15, LINES 24, SIZE 24, 
              BITMAP-HANDLE ZOOMxxx12-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              ID IS 146, ATW-CSS-CLASS "button-icon fa-calendar-alt".
           03 Screen2-Pb-5, Push-Button, 
              COL 92,29, LINE 9,15, LINES 24, SIZE 24, 
              BITMAP-HANDLE ZOOMxxx12-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              ID IS 147, ATW-CSS-CLASS "button-icon fa-search".
           03 Screen2-Cm-1, Combo-Box, 
              COL 67,57, LINE 9,15, LINES 6,15 CELLS, SIZE 24,00 CELLS, 
              3-D, ID IS 148, MASS-UPDATE 0, DROP-LIST, UNSORTED, 
              VALUE Screen2-Cm-1-Value.
           03 Screen2-Ef-3, Entry-Field, 
              COL 8,57, LINE 9,15, LINES 2,46 CELLS, SIZE 5,86 CELLS, 
              3-D, COLOR IS 2, ID IS 149, VALUE Screen2-Ef-3-Value.
           03 Screen2-Ef-4, Entry-Field, 
              COL 15,43, LINE 9,15, LINES 2,46 CELLS, SIZE 28,43 CELLS, 
              3-D, COLOR IS 2, ID IS 150, VALUE Screen2-Ef-4-Value.
           03 Screen2-Ef-5, Entry-Field, 
              COL 44,43, LINE 9,15, LINES 2,46 CELLS, SIZE 14,29 CELLS, 
              3-D, COLOR IS 2, ID IS 151, VALUE Screen2-Ef-5-Value.
       01 Screen3, HELP-ID 250063.
           03 Screen3-Fr-4a, Frame, 
              COL 100,86, LINE 7,00, LINES 6,00 CELLS, 
              SIZE 73,71 CELLS, 
              LOWERED, FILL-COLOR 16, FILL-PERCENT 50, FILL-COLOR2 16, 
              ID IS 77, BACKGROUND-LOW, ATW-CSS-CLASS "card".
           03 Screen3-Rb-1, Radio-Button, 
              COL 154,57, LINE 8,85, LINES 1,15 CELLS, 
              SIZE 18,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 1, 
              ID IS 98, 
              TITLE "Classic".
           03 Screen3-Rb-2, Radio-Button, 
              COL 154,57, LINE 10,69, LINES 1,15 CELLS, 
              SIZE 18,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 1, GROUP-VALUE 2, 
              ID IS 100, 
              TITLE "Co-propriété".
           03 Screen3-Cb-1, Check-Box, 
              COL 138,57, LINE 9,54, LINES 1,38 CELLS, 
              SIZE 15,43 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 102, 
              TITLE "Forfait", VALUE Screen3-Cb-1-Value, 
              ATW-CSS-CLASS "switch".
           03 Screen3-La-1, Label, 
              COL 103,43, LINE 9,69, LINES 1,92 CELLS, SIZE 9,00 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 103, 
              LABEL-OFFSET 0, 
              TITLE "Bon N°", TRANSPARENT.
           03 Screen3-Ef-4, Entry-Field, 
              COL 111,86, LINE 9,15, LINES 2,46 CELLS, 
              SIZE 18,00 CELLS, 
              3-D, COLOR IS 2, ID IS 104, VALUE Screen3-Ef-4-Value.
           03 Screen3-Fr-4aa, Frame, 
              COL 1,71, LINE 13,08, LINES 6,00 CELLS, 
              SIZE 172,86 CELLS, 
              LOWERED, FILL-COLOR 16, FILL-PERCENT 50, FILL-COLOR2 16, 
              ID IS 78, BACKGROUND-LOW, ATW-CSS-CLASS "card".
           03 Screen3-Fr-4, Frame, 
              COL 1,71, LINE 7,00, LINES 6,00 CELLS, SIZE 96,57 CELLS, 
              LOWERED, FILL-COLOR 16, FILL-PERCENT 50, FILL-COLOR2 16, 
              ID IS 36, BACKGROUND-LOW, ATW-CSS-CLASS "card".
           03 Screen3-Fr-3a, Frame, 
              COL 1,71, LINE 76,23, LINES 6,38 CELLS, 
              SIZE 173,14 CELLS, 
              LOWERED, FILL-COLOR 16, FILL-PERCENT 100, 
              FONT IS Small-Font, ID IS 91, TITLE-POSITION 2, 
              BACKGROUND-LOW, ATW-CSS-CLASS "card-bottom".
           03 Screen3-Fr-5baa, Frame, 
              COL 1,71, LINE 72,38, LINES 4,31 CELLS, 
              SIZE 173,14 CELLS, 
              LOWERED, FILL-COLOR 16, FILL-PERCENT 50, FILL-COLOR2 16, 
              ID IS 26, BACKGROUND-LOW, ATW-CSS-CLASS "card-top".
           03 Screen3-La-2aaa, Label, 
              COL 3,43, LINE 73,54, LINES 2,38 CELLS, SIZE 33,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 90, LABEL-OFFSET 0, 
              TITLE "Totaux", TRANSPARENT, ATW-CSS-CLASS "h5".
           03 Screen3-Fr-5ba, Frame, 
              COL 1,71, LINE 58,69, LINES 4,31 CELLS, 
              SIZE 173,14 CELLS, 
              LOWERED, FILL-COLOR 16, FILL-PERCENT 50, FILL-COLOR2 16, 
              ID IS 42, BACKGROUND-LOW, ATW-CSS-CLASS "card-top".
           03 Screen3-La-2aa, Label, 
              COL 3,43, LINE 59,85, LINES 2,38 CELLS, SIZE 33,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 63, LABEL-OFFSET 0, 
              TITLE "Texte à imprimer", TRANSPARENT, 
              ATW-CSS-CLASS "h5".
           03 Screen3-Fr-2, Frame, 
              COL 1,71, LINE 24,38, LINES 20,00 CELLS, 
              SIZE 84,29 CELLS, 
              LOWERED, COLOR IS 2, FILL-COLOR 16, FILL-PERCENT 100, 
              FONT IS Small-Font, ID IS 37, BACKGROUND-LOW, 
              ATW-CSS-CLASS "card-bottom".
           03 Screen3-Fr-3, Frame, 
              COL 1,71, LINE 62,54, LINES 8,85 CELLS, 
              SIZE 173,14 CELLS, 
              LOWERED, FILL-COLOR 16, FILL-PERCENT 100, 
              FONT IS Small-Font, ID IS 25, TITLE-POSITION 2, 
              BACKGROUND-LOW, ATW-CSS-CLASS "card-bottom".
           03 Screen3-Fr-1, Frame, 
              COL 1,71, LINE 49,77, LINES 7,77 CELLS, SIZE 67,71 CELLS, 
              LOWERED, COLOR IS 2, FILL-COLOR 16, FILL-PERCENT 100, 
              FONT IS Small-Font, FULL-HEIGHT, ID IS 35, 
              BACKGROUND-LOW, ATW-CSS-CLASS "card-bottom".
           03 Screen3-Cb-IRM4, Check-Box, 
              COL 41,14, LINE 54,54, LINES 1,62 CELLS, SIZE 8,57 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 99, 
              TITLE "Reçu", VALUE Screen3-Cb-IRM-BUF, VISIBLE 0.
           03 Screen3-Bt-web, Bitmap, TRANSPARENT-COLOR 12632256, 
              COL 51,29, LINE 54,38, LINES 1,85 CELLS, SIZE 3,43 CELLS, 
              ID IS 101, VISIBLE 0, ATW-CSS-CLASS "fa-search".
           03 Screen3-Fr-Dom, Frame, 
              COL 90,57, LINE 24,38, LINES 20,00 CELLS, 
              SIZE 84,29 CELLS, 
              LOWERED, COLOR IS 2, FILL-COLOR 16, FILL-PERCENT 100, 
              FONT IS Small-Font, ID IS 45, BACKGROUND-LOW, 
              ATW-CSS-CLASS "card-bottom".
           03 Screen3-DaEf-Dom, Entry-Field, 
              COL 112,14, LINE 25,77, LINES 2,46 CELLS, 
              SIZE 51,43 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 50, MAX-TEXT 24, 
              VALUE Screen3-DaEf-Dom-BUF.
           03 Screen3-DaEf-Adb, Entry-Field, 
              COL 112,14, LINE 29,38, LINES 2,46 CELLS, 
              SIZE 51,43 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 51, MAX-TEXT 24, 
              VALUE Screen3-DaEf-Adb-BUF.
           03 Screen3-DaEf-Rib, Entry-Field, 
              COL 112,14, LINE 32,92, LINES 2,46 CELLS, 
              SIZE 51,43 CELLS, 
              3-D, COLOR IS 2, ID IS 52, MAX-TEXT 35, 
              VALUE Screen3-DaEf-Rib-BUF.
           03 Screen3-La-6, Label, 
              COL 93,14, LINE 26,38, LINES 1,92 CELLS, 
              SIZE 18,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 20, LABEL-OFFSET 0, 
              TITLE "Nom de la banque", TRANSPARENT.
           03 Screen3-La-6a, Label, 
              COL 93,14, LINE 30,00, LINES 1,92 CELLS, 
              SIZE 18,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 22, LABEL-OFFSET 0, 
              TITLE "Adresse", TRANSPARENT.
           03 Screen3-La-6aa, Label, 
              COL 93,14, LINE 33,54, LINES 1,92 CELLS, 
              SIZE 18,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 43, LABEL-OFFSET 0, 
              TITLE "RIB", TRANSPARENT.
           03 Screen3-DaRb-IFA1, Radio-Button, 
              COL 21,14, LINE 26,15, LINES 1,23 CELLS, 
              SIZE 15,43 CELLS, 
              COLOR IS 514, ENABLED WENABLE-3, FONT IS Small-Font, 
              GROUP 301, GROUP-VALUE 2, ID IS 8, 
              TITLE "A facturer", VALUE Screen3-RADIO-IFA-BUF, 
              EVENT PROCEDURE Screen3-DaRb-IFA1-Event-Proc.
           03 Screen3-DaRb-IFA0, Radio-Button, 
              COL 37,86, LINE 26,15, LINES 1,23 CELLS, 
              SIZE 15,43 CELLS, 
              COLOR IS 514, ENABLED WENABLE-3, FONT IS Small-Font, 
              GROUP 301, GROUP-VALUE 1, ID IS 7, 
              TITLE "En attente", VALUE Screen3-RADIO-IFA-BUF, 
              EVENT PROCEDURE Screen3-DaRb-IFA0-Event-Proc.
           03 Screen3-Cm-MFA, Combo-Box, 
              COL 20,57, LINE 29,08, LINES 7,77 CELLS, 
              SIZE 31,43 CELLS, 
              3-D, COLOR IS 2, ENABLED WENABLE-3, FONT IS Default-Font, 
              ID IS 34, MASS-UPDATE 0, DROP-LIST, UNSORTED.
           03 Screen3-La-MFA, Label, 
              COL 3,29, LINE 29,31, LINES 1,92 CELLS, SIZE 15,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 9, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Mois facturation", TRANSPARENT.
           03 Screen3-La-TFA, Label, 
              COL 3,29, LINE 33,23, LINES 1,92 CELLS, SIZE 15,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 10, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Type facturation", TRANSPARENT.
           03 Screen3-Cm-TFA, Combo-Box, 
              COL 20,57, LINE 33,08, LINES 9,23 CELLS, 
              SIZE 31,43 CELLS, 
              3-D, COLOR IS 2, ENABLED WENABLE-3, FONT IS Default-Font, 
              ID IS 11, MASS-UPDATE 0, NOTIFY-SELCHANGE, DROP-LIST, 
              UNSORTED, 
              AFTER PROCEDURE Screen3-Cm-TFA-Aft-Procedure, 
              EVENT PROCEDURE Screen3-Cm-TFA-Event-Proc.
           03 Screen3-DaRb-ADF0, Radio-Button, 
              COL 21,14, LINE 37,38, LINES 1,23 CELLS, 
              SIZE 15,43 CELLS, 
              COLOR IS 514, ENABLED WENABLE-3, FONT IS Small-Font, 
              GROUP 302, GROUP-VALUE 1, ID IS 48, 
              TITLE "Client", VALUE Screen3-RADIO-ADF-BUF.
           03 Screen3-DaRb-ADF1, Radio-Button, 
              COL 37,86, LINE 37,38, LINES 1,23 CELLS, 
              SIZE 21,71 CELLS, 
              COLOR IS 514, ENABLED WENABLE-3, FONT IS Small-Font, 
              GROUP 302, GROUP-VALUE 2, ID IS 49, 
              TITLE "Lieu de livraison", VALUE Screen3-RADIO-ADF-BUF.
           03 Screen3-DaCb-TTR, Check-Box, 
              COL 61,14, LINE 29,54, LINES 1,23 CELLS, SIZE 5,71 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 21, SELF-ACT, 
              TITLE "Port", VALUE Screen3-DaCb-TTR-BUF, 
              EVENT PROCEDURE Screen3-DaCb-TTR-Event-Proc.
           03 Screen3-La-FFA, Label, 
              COL 3,29, LINE 40,85, LINES 1,92 CELLS, SIZE 15,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 1, LABEL-OFFSET 0, 
              TITLE "Frais de facturation", TRANSPARENT.
           03 Screen3-DaEf-FFA, Entry-Field, 
              COL 20,57, LINE 40,38, LINES 2,46 CELLS, 
              SIZE 31,43 CELLS, 
              3-D, COLOR IS 2, ID IS 12, CENTER, MAX-TEXT 7, 
              AFTER PROCEDURE Screen3-DaEf-FFA-Aft-Procedure.
           03 Screen3-La-ACO, Label, 
              COL 30,71, LINE 51,46, LINES 1,85 CELLS, SIZE 9,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 13, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Acompte", TRANSPARENT.
           03 Screen3-DaEf-NPA, Entry-Field, 
              COL 8,00, LINE 50,85, LINES 2,46 CELLS, SIZE 7,86 CELLS, 
              3-D, COLOR IS 2, ID IS 18, MAX-TEXT 1, MAX-VAL 5, 
              MIN-VAL 1, NOTIFY-CHANGE, AUTO-SPIN, 
              VALUE Screen3-DaEf-NPA-BUF, 
              EVENT PROCEDURE Screen3-DaEf-NPA-Event-Proc.
           03 Screen3-DaEf-ACO, Entry-Field, 
              COL 41,14, LINE 50,85, LINES 2,46 CELLS, 
              SIZE 12,71 CELLS, 
              3-D, COLOR IS 2, ID IS 14, CENTER, MAX-TEXT 11, 
              AFTER PROCEDURE Screen3-DaEf-ACO-Aft-Procedure.
           03 Screen3-DaCb-MPA, Check-Box, 
              COL 8,00, LINE 54,69, LINES 1,62 CELLS, SIZE 13,57 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 15, SELF-ACT, 
              TITLE "Sur relevé ", VALUE Screen3-DaCb-MPA-BUF, 
              EVENT PROCEDURE Screen3-DaCb-MPA-Event-Proc.
           03 Screen3-La-ADF, Label, 
              COL 3,29, LINE 37,31, LINES 1,92 CELLS, SIZE 15,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 44, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Adresse facture", TRANSPARENT.
           03 Screen3-Pb-Imprimer, Push-Button, 
              COL 113,00, LINE 1,38, LINES 24, SIZE 118, 
              BITMAP-HANDLE IMPRIMER32-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 9816, FONT IS Default-Font, ID IS 60, 
              NO-AUTO-DEFAULT, NO-TAB, SELF-ACT, 
              TITLE "Imprimer", ATW-CSS-CLASS "button-imprimer".
           03 Screen3-Pb-Modifier, Push-Button, 
              COL 150,43, LINE 1,38, LINES 24, SIZE 118, 
              BITMAP-HANDLE MODIFIE16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              FONT IS Default-Font, ID IS 61, NO-AUTO-DEFAULT, NO-TAB, 
              SELF-ACT, TERMINATION-VALUE 9854, 
              TITLE "Modifier", ATW-CSS-CLASS "button-modifier".
           03 Screen3-DaGd-2, Grid, 
              COL 74,00, LINE 45,92, LINES 11,69 CELLS, 
              SIZE 100,86 CELLS, 
              NO-BOX, COLOR IS 2, COLUMN-HEADINGS, 
              DATA-COLUMNS (1, 3, 23, 24, 27, 34, 35, 46, 56, 62), 
              DISPLAY-COLUMNS (1, 8, 33, 38, 42, 51, 56, 71, 86, 94), 
              ALIGNMENT ("C", "U", "C", "R", "L", "C", "U", "C", "C", "R
      -       ""), 
              DATA-TYPES ("9(2)", "X(20)", "9(1)", "9(3)", "X(7)", "9(1)
      -       "", "X(12)", "X(10)", "X", "X"), 
              SEPARATION (5, 5, 5, 0, 5, 5, 5, 5, 5, 5), 
              COLUMN-DIVIDERS (0, 1, 0, 0, 1, 0, 1, 1, 1, 1), 
              CURSOR-COLOR 482, CURSOR-FRAME-WIDTH 1, DIVIDER-COLOR 8, 
              FONT IS Small-Font, HEADING-COLOR 257, 
              HEADING-DIVIDER-COLOR 9, ID IS 62, NUM-COL-HEADINGS 1, 
              NUM-ROWS 6, TILED-HEADINGS, USE-TAB, VPADDING 50, 
              VSCROLL, ATW-CSS-CLASS "table", 
              AFTER PROCEDURE Screen3-DaGd-2-Aft-Procedure, 
              EVENT PROCEDURE Screen3-DaGd-1-Event-Proc.
           03 Screen3-La-7, Label, 
              COL 3,86, LINE 51,38, LINES 1,85 CELLS, SIZE 3,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 17, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "En", TRANSPARENT.
           03 Screen3-La-8, Label, 
              COL 17,14, LINE 51,38, LINES 1,85 CELLS, SIZE 3,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 19, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "fois", TRANSPARENT.
           03 Screen3-Pb-Terminer, Push-Button, 
              COL 9,14, LINE 83,38, LINES 32, SIZE 32, 
              BITMAP-HANDLE TERMINER32-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              FLAT, FONT IS Small-Font, ID IS 3, NO-AUTO-DEFAULT, 
              NO-TAB, SELF-ACT, TERMINATION-VALUE 9840, 
              TITLE "Terminer".
           03 Screen3-La-Lbon, Label, 
              COL 4,00, LINE 15,54, LINES 1,85 CELLS, SIZE 17,57 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 67, RIGHT, 
              LABEL-OFFSET 0.
           03 Screen3-DaEf-Bon, Entry-Field, 
              COL 28,57, LINE 15,00, LINES 2,46 CELLS, 
              SIZE 10,71 CELLS, 
              3-D, COLOR IS LK-MEP-COULAGE-COUL, ENABLED 0, ID IS 66, 
              CENTER, MAX-TEXT 6, READ-ONLY, USE-TAB, VALUE W-BON.
           03 Screen3-DaEf-Rai, Entry-Field, 
              COL 42,00, LINE 15,00, LINES 2,46 CELLS, 
              SIZE 30,57 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 73, CENTER, 
              MAX-TEXT 25, USE-TAB, VALUE W-RAI.
           03 Screen3-Pb-Sauvegarder, Push-Button, 
              COL 131,71, LINE 1,38, LINES 24, SIZE 118, 
              BITMAP-HANDLE SAUVEGA16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              FONT IS Default-Font, ID IS 84, NO-AUTO-DEFAULT, NO-TAB, 
              SELF-ACT, TERMINATION-VALUE 9819, 
              TITLE "Sauvegarder", ATW-CSS-CLASS "button-sauvegarder".
           03 Screen3-Ef-TXT, Entry-Field, 
              COL 13,29, LINE 63,92, LINES 5,92 CELLS, 
              SIZE 160,14 CELLS, 
              NO-BOX, COLOR IS 2, ENABLED 0, ID IS 23, MAX-TEXT 60, 
              MULTILINE, VALUE LIB-MCMO.
           03 Screen3-Cb-EDB, Check-Box, 
              COL 111,43, LINE 60,54, LINES 1,15 CELLS, 
              SIZE 2,14 CELLS, 
              COLOR IS 514, ENABLED 0, FONT IS Small-Font, ID IS 27, 
              VALUE Screen3-Cb-Edb-Buf.
           03 Screen3-Cb-EDF, Check-Box, 
              COL 125,29, LINE 60,54, LINES 1,15 CELLS, 
              SIZE 2,86 CELLS, 
              COLOR IS 514, ENABLED 0, FONT IS Small-Font, ID IS 28, 
              VALUE Screen3-Cb-Edf-Buf.
           03 Screen3-La-EDB, Label, 
              COL 114,43, LINE 60,38, LINES 1,85 CELLS, 
              SIZE 10,29 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 24, 
              LABEL-OFFSET 0, 
              TITLE "Devis".
           03 Screen3-La-EDF, Label, 
              COL 128,71, LINE 60,38, LINES 1,85 CELLS, 
              SIZE 11,43 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 29, 
              LABEL-OFFSET 0, 
              TITLE "Proforma".
           03 Screen3-Pb-TXT, Push-Button, 
              COL 16,00, LINE 65,38, LINES 2,31 CELLS, 
              SIZE 16,57 CELLS, 
              FONT IS Small-Font, ID IS 30, TITLE-POSITION 2, 
              TERMINATION-VALUE 126, 
              TITLE "Saisir le texte".
           03 Screen3-La-4, Label, 
              COL 2,86, LINE 66,08, LINES 2,38 CELLS, SIZE 10,29 CELLS, 
              COLOR IS 3, FONT IS Small-Font, ID IS 31, CENTER, 
              LABEL-OFFSET 0, 
              TITLE "Saisir le texte", TRANSPARENT.
           03 Screen3-Cb-EDBP, Check-Box, 
              COL 143,86, LINE 60,54, LINES 1,15 CELLS, 
              SIZE 2,86 CELLS, 
              COLOR IS 514, ENABLED 0, FONT IS Small-Font, ID IS 32, 
              VALUE Screen3-Cb-Edbp-Buf, VISIBLE 0.
           03 Screen3-La-EDBP, Label, 
              COL 147,29, LINE 60,38, LINES 1,85 CELLS, 
              SIZE 23,29 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 33, 
              LABEL-OFFSET 0, 
              TITLE "Bon de préparation", VISIBLE 0.
           03 Screen3-La-Lpieces, Label, 
              COL 38,29, LINE 77,62, LINES 1,85 CELLS, SIZE 9,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 38, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Pièces", TRANSPARENT.
           03 Screen3-La-Lpresta, Label, 
              COL 38,29, LINE 80,15, LINES 1,85 CELLS, SIZE 9,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 39, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Prestations", TRANSPARENT.
           03 Screen3-La-HPR, Label, 
              COL 50,57, LINE 80,15, LINES 1,85 CELLS, 
              SIZE 11,86 CELLS, 
              COLOR IS 2, FONT IS Default-Font, ID IS 40, RIGHT, 
              LABEL-OFFSET 0, TRANSPARENT.
           03 Screen3-La-HPI, Label, 
              COL 50,57, LINE 77,62, LINES 1,85 CELLS, 
              SIZE 11,86 CELLS, 
              COLOR IS 2, FONT IS Default-Font, ID IS 41, RIGHT, 
              LABEL-OFFSET 0, TRANSPARENT.
           03 Screen3-La-LTOTFFA, Label, 
              COL 72,71, LINE 77,62, LINES 1,85 CELLS, SIZE 6,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 46, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "F.F.", TRANSPARENT.
           03 Screen3-La-TotFFA, Label, 
              COL 81,29, LINE 77,62, LINES 1,85 CELLS, 
              SIZE 10,29 CELLS, 
              COLOR IS 2, FONT IS Default-Font, ID IS 47, RIGHT, 
              LABEL-OFFSET 0, TRANSPARENT.
           03 Screen3-La-TotPOR, Label, 
              COL 81,29, LINE 80,15, LINES 1,85 CELLS, 
              SIZE 10,29 CELLS, 
              COLOR IS 2, FONT IS Default-Font, ID IS 55, RIGHT, 
              LABEL-OFFSET 0, TRANSPARENT.
           03 Screen3-La-Lport, Label, 
              COL 72,71, LINE 80,15, LINES 1,85 CELLS, SIZE 6,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 56, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Port", TRANSPARENT.
           03 Screen3-La-Ltva, Label, 
              COL 105,86, LINE 77,62, LINES 1,85 CELLS, 
              SIZE 9,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 57, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "TVA", TRANSPARENT.
           03 Screen3-La-TotTVA, Label, 
              COL 116,43, LINE 77,62, LINES 1,85 CELLS, 
              SIZE 11,86 CELLS, 
              COLOR IS 2, FONT IS Default-Font, ID IS 58, RIGHT, 
              LABEL-OFFSET 0, TRANSPARENT.
           03 Screen3-La-TotTtc, Label, 
              COL 116,43, LINE 80,15, LINES 1,85 CELLS, 
              SIZE 11,86 CELLS, 
              COLOR IS 2, FONT IS Default-Font, ID IS 59, RIGHT, 
              LABEL-OFFSET 0, TRANSPARENT.
           03 Screen3-La-Lttc, Label, 
              COL 105,86, LINE 80,15, LINES 1,85 CELLS, 
              SIZE 9,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 64, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Total TTC", TRANSPARENT.
           03 Screen3-La-Lnbl, Label, 
              COL 17,43, LINE 77,62, LINES 1,85 CELLS, SIZE 6,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 65, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Lignes", TRANSPARENT.
           03 Screen3-La-Lpoi, Label, 
              COL 17,43, LINE 80,15, LINES 1,85 CELLS, SIZE 6,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 68, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Kg", TRANSPARENT.
           03 Screen3-La-TotPoi, Label, 
              COL 4,00, LINE 80,15, LINES 1,85 CELLS, SIZE 10,00 CELLS, 
              COLOR IS 2, FONT IS Default-Font, ID IS 69, RIGHT, 
              LABEL-OFFSET 0, TRANSPARENT.
           03 Screen3-La-TotLig, Label, 
              COL 4,00, LINE 77,62, LINES 1,85 CELLS, SIZE 10,00 CELLS, 
              COLOR IS 2, FONT IS Default-Font, ID IS 70, RIGHT, 
              LABEL-OFFSET 0, TRANSPARENT.
           03 Screen3-La-Lesc, Label, 
              COL 136,86, LINE 77,62, LINES 1,85 CELLS, 
              SIZE 11,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 71, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Escompte", TRANSPARENT.
           03 Screen3-La-Lnap, Label, 
              COL 136,86, LINE 80,15, LINES 1,85 CELLS, 
              SIZE 11,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 72, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Net à Payer", TRANSPARENT.
           03 Screen3-La-NAP, Label, 
              COL 150,57, LINE 80,15, LINES 1,85 CELLS, 
              SIZE 14,29 CELLS, 
              COLOR IS 5, FONT IS Default-Font, ID IS 75, RIGHT, 
              LABEL-OFFSET 0, TRANSPARENT.
           03 Screen3-La-TotEsc, Label, 
              COL 150,57, LINE 77,62, LINES 1,85 CELLS, 
              SIZE 14,29 CELLS, 
              COLOR IS 2, FONT IS Default-Font, ID IS 76, RIGHT, 
              LABEL-OFFSET 0, TRANSPARENT.
           03 Screen3-La-Fac, Label, 
              COL 46,29, LINE 84,54, LINES 1,00 CELLS, 
              SIZE 26,71 CELLS, 
              COLOR IS 13, FONT IS Small-Font, ID IS 118, CENTER, 
              LABEL-OFFSET 0, TITLE La-facture, TRANSPARENT, 
              VISIBLE Wvisible-lafac.
           03 Screen3-La-Trp, Label, 
              COL 61,57, LINE 32,46, LINES 1,00 CELLS, 
              SIZE 22,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 88, LABEL-OFFSET 0, 
              TRANSPARENT, VISIBLE 0.
           03 Screen3-DaEf-Age, Entry-Field, 
              COL 21,86, LINE 15,00, LINES 2,46 CELLS, SIZE 6,14 CELLS, 
              3-D, COLOR IS LK-MEP-COULAGE-COUL, ENABLED 0, ID IS 141, 
              CENTER, MAX-TEXT 6, READ-ONLY, VALUE ABR-MAGC.
           03 Screen3-La-Mail, Label, 
              COL 74,71, LINE 84,46, LINES 1,08 CELLS, 
              SIZE 21,71 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 127, RIGHT, 
              LABEL-OFFSET 0, TITLE EMAIL-CLIENT, TRANSPARENT.
           03 Screen3-DaEf-Cv, Entry-Field, 
              COL 73,14, LINE 15,00, LINES 2,46 CELLS, 
              SIZE 30,57 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 74, CENTER, 
              MAX-TEXT 35, USE-TAB, VALUE W-CV.
           03 Screen3-DaCb-ILI, Check-Box, 
              COL 61,14, LINE 33,46, LINES 1,23 CELLS, 
              SIZE 13,43 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 95, SELF-ACT, 
              TITLE "Transport/nous", VALUE ILI-MBDI, VISIBLE WV-ILI, 
              EVENT PROCEDURE Screen3-DaCb-ILI-Event-Proc.
           03 Screen3-Pb-Attach, Push-Button, 
              COL 15,00, LINE 83,54, LINES 32, SIZE 32, 
              BITMAP-HANDLE TROMBONE32-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 6854, FLAT, ID IS 206, 
              TRANSPARENT-COLOR 16777215, 
              TITLE "Documents attachés".
           03 Screen3-Ef-VAO, Entry-Field, 
              COL 35,14, LINE 84,08, LINES 1,31 CELLS, SIZE 4,57 CELLS, 
              3-D, COLOR IS 2, ID IS 81, CENTER, MAX-TEXT 2, NUMERIC, 
              VISIBLE 0.
           03 Screen3-La-VAO1, Label, 
              COL 23,00, LINE 84,15, LINES 1,00 CELLS, 
              SIZE 11,71 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 82, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Validité de l'offre", TRANSPARENT, VISIBLE 0.
           03 Screen3-La-VAO2, Label, 
              COL 40,57, LINE 84,15, LINES 1,00 CELLS, SIZE 3,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 83, LABEL-OFFSET 0, 
              TITLE "jours", TRANSPARENT, VISIBLE 0.
           03 Screen3-La-DEL1, Label, 
              COL 23,00, LINE 85,15, LINES 1,00 CELLS, 
              SIZE 11,71 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 85, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Délai de livraison", TRANSPARENT, VISIBLE 0.
           03 Screen3-Ef-DEL, Entry-Field, 
              COL 35,14, LINE 85,08, LINES 1,31 CELLS, SIZE 4,57 CELLS, 
              3-D, COLOR IS 2, ID IS 86, CENTER, MAX-TEXT 2, NUMERIC, 
              VISIBLE 0.
           03 Screen3-La-DEL2, Label, 
              COL 40,57, LINE 85,15, LINES 1,00 CELLS, SIZE 3,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 87, LABEL-OFFSET 0, 
              TITLE "jours", TRANSPARENT, VISIBLE 0.
           03 Screen3-Ef-MPF, Entry-Field, 
              COL 68,86, LINE 29,08, LINES 2,46 CELLS, 
              SIZE 11,57 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 89, CENTER, VISIBLE 0, 
              AFTER PROCEDURE Screen3-Ef-MPF-Aft-Procedure.
           03 Screen3-Fr-5, Frame, 
              COL 1,71, LINE 20,54, LINES 4,31 CELLS, SIZE 84,29 CELLS, 
              LOWERED, FILL-COLOR 16, FILL-PERCENT 50, FILL-COLOR2 16, 
              ID IS 4, BACKGROUND-LOW, ATW-CSS-CLASS "card-top".
           03 Screen3-La-2, Label, 
              COL 3,43, LINE 21,69, LINES 2,00 CELLS, SIZE 20,71 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 6, LABEL-OFFSET 0, 
              TITLE "Facturation", TRANSPARENT, ATW-CSS-CLASS "h5".
           03 Screen3-Fr-5a, Frame, 
              COL 90,57, LINE 20,54, LINES 4,31 CELLS, 
              SIZE 84,29 CELLS, 
              LOWERED, FILL-COLOR 16, FILL-PERCENT 50, FILL-COLOR2 16, 
              ID IS 5, BACKGROUND-LOW, ATW-CSS-CLASS "card-top".
           03 Screen3-La-5, Label, 
              COL 92,43, LINE 21,69, LINES 2,08 CELLS, 
              SIZE 28,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 16, LABEL-OFFSET 0, 
              TITLE "Domiciliation bancaire", TRANSPARENT, 
              ATW-CSS-CLASS "h5".
           03 Screen3-Fr-5b, Frame, 
              COL 1,71, LINE 45,54, LINES 4,31 CELLS, SIZE 67,71 CELLS, 
              LOWERED, FILL-COLOR 16, FILL-PERCENT 50, FILL-COLOR2 16, 
              ID IS 53, BACKGROUND-LOW, ATW-CSS-CLASS "card-top".
           03 Screen3-La-2a, Label, 
              COL 3,43, LINE 46,69, LINES 2,00 CELLS, SIZE 20,71 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 54, LABEL-OFFSET 0, 
              TITLE "Règlement", TRANSPARENT, ATW-CSS-CLASS "h5".
           03 Screen3-Pb-1, Push-Button, 
              COL 3,14, LINE 9,15, LINES 24, SIZE 24, 
              BITMAP-HANDLE ZOOMxxx12-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              ID IS 79, ATW-CSS-CLASS "button-icon fa-home".
           03 Screen3-Pb-2, Push-Button, 
              COL 59,71, LINE 9,15, LINES 24, SIZE 24, 
              BITMAP-HANDLE ZOOMxxx12-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              ID IS 80, ATW-CSS-CLASS "button-icon fa-calendar-alt".
           03 Screen3-Pb-3, Push-Button, 
              COL 92,29, LINE 9,15, LINES 24, SIZE 24, 
              BITMAP-HANDLE ZOOMxxx12-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              ID IS 92, ATW-CSS-CLASS "button-icon fa-search".
           03 Screen3-Ef-1, Entry-Field, 
              COL 8,57, LINE 9,15, LINES 2,46 CELLS, SIZE 5,86 CELLS, 
              3-D, COLOR IS 2, ID IS 93.
           03 Screen3-Ef-2, Entry-Field, 
              COL 15,43, LINE 9,15, LINES 2,46 CELLS, SIZE 28,43 CELLS, 
              3-D, COLOR IS 2, ID IS 94.
           03 Screen3-Ef-3, Entry-Field, 
              COL 44,86, LINE 9,15, LINES 2,46 CELLS, SIZE 14,29 CELLS, 
              3-D, COLOR IS 2, ID IS 96.
           03 Screen3-Cm-1, Combo-Box, 
              COL 67,71, LINE 9,15, LINES 6,15 CELLS, SIZE 24,00 CELLS, 
              3-D, ID IS 97, MASS-UPDATE 0, DROP-LIST, UNSORTED.
           03 Screen3-Ef-5, Entry-Field, 
              COL 46,00, LINE 4,38, LINES 2,46 CELLS, SIZE 70,57 CELLS, 
              3-D, COLOR IS 2, ID IS 105, VALUE Screen3-Ef-5-Value.
           03 Screen3-Ef-6, Entry-Field, 
              COL 117,57, LINE 4,38, LINES 2,46 CELLS, SIZE 5,57 CELLS, 
              3-D, COLOR IS 2, ID IS 106, VALUE Screen3-Ef-6-Value.
           03 Screen1-Fr-5a, Frame, 
              COL 1,71, LINE 1,00, LINES 2,92 CELLS, SIZE 35,29 CELLS, 
              LOWERED, ID IS 107, BACKGROUND-LOW, 
              ATW-CSS-CLASS "breadcrumb".
           03 Screen1-La-10b, Label, 
              COL 14,00, LINE 2,00, LINES 1,85 CELLS, SIZE 1,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 117, 
              LABEL-OFFSET 0, 
              TITLE "/", TRANSPARENT, 
              ATW-CSS-CLASS "breadcrumb-separator".
           03 Screen1-La-10aa, Label, 
              COL 25,86, LINE 2,00, LINES 1,85 CELLS, SIZE 1,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 120, 
              LABEL-OFFSET 0, 
              TITLE "/", TRANSPARENT, 
              ATW-CSS-CLASS "breadcrumb-separator".
           03 Screen1-Pb-1a, Push-Button, 
              COL 3,00, LINE 1,69, LINES 1,85 CELLS, SIZE 10,29 CELLS, 
              ID IS 121, 
              TITLE "1. En-tête", ATW-CSS-CLASS "breadcrumb-item".
           03 Screen1-Pb-1aaa, Push-Button, 
              COL 28,29, LINE 1,69, LINES 1,85 CELLS, SIZE 7,29 CELLS, 
              ID IS 111, 
              TITLE "3. Pied", ATW-CSS-CLASS "breadcrumb-item active".
           03 Screen3-Pb-Precedent, Push-Button, 
              COL 16,00, LINE 1,69, LINES 1,85 CELLS, SIZE 8,71 CELLS, 
              FLAT, FONT IS Small-Font, ID IS 2, NO-AUTO-DEFAULT, 
              NO-TAB, SELF-ACT, TERMINATION-VALUE 9862, 
              TITLE "2. Lignes", ATW-CSS-CLASS "breadcrumb-item".
       01 ScreenRUP.
           03 ScreenRUP-Fr-1, Frame, 
              COL 1,00, LINE 1,00, LINES 5,92 CELLS, SIZE 44,43 CELLS, 
              LOWERED, COLOR IS 9, FILL-COLOR 16, FILL-PERCENT 100, 
              ID IS 10, BACKGROUND-LOW.
           03 ScreenRUP-Pb-Sortie, Push-Button, 
              COL 14,43, LINE 7,92, LINES 1,69 CELLS, SIZE 17,57 CELLS, 
              EXCEPTION-VALUE 6702, FONT IS Small-Font, ID IS 2, 
              TITLE "Forcer Sortie".
           03 ScreenRUP-Pb-Cde, Push-Button, 
              COL 14,43, LINE 9,62, LINES 1,69 CELLS, SIZE 17,57 CELLS, 
              EXCEPTION-VALUE 6703, FONT IS Small-Font, ID IS 3, 
              TITLE "Mettre en Commande".
           03 ScreenRUP-Pb-Vmanque, Push-Button, 
              COL 14,43, LINE 15,08, LINES 1,69 CELLS, 
              SIZE 17,57 CELLS, 
              EXCEPTION-VALUE 6706, FONT IS Small-Font, ID IS 4, 
              TITLE "Vente Manquée".
           03 ScreenRUP-Pb-Annuler, Push-Button, 
              COL 14,43, LINE 18,46, LINES 1,69 CELLS, 
              SIZE 17,57 CELLS, 
              EXCEPTION-VALUE 6705, FONT IS Small-Font, ID IS 5, 
              TITLE "Annuler".
           03 ScreenRUP-Ef-1, Entry-Field, 
              COL 10,43, LINE 2,23, LINES 1,38 CELLS, SIZE 25,43 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 8, VALUE W-ART-RUP.
           03 ScreenRUP-La-1, Label, 
              COL 1,29, LINE 4,38, LINES 2,15 CELLS, SIZE 43,71 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 1, 
              LABEL-OFFSET 0, TITLE W-DES-RUP.
           03 ScreenRUP-Bt-1, Bitmap, 
              COL 2,00, LINE 1,69, LINES 32, SIZE 32, 
              BITMAP-HANDLE WARBLAN24-JPG, BITMAP-NUMBER 1, 
              ID IS 9.
           03 ScreenRUP-Pb-LivPart, Push-Button, 
              COL 14,43, LINE 11,31, LINES 1,69 CELLS, 
              SIZE 17,57 CELLS, 
              EXCEPTION-VALUE 6709, FONT IS Small-Font, ID IS 11, 
              TITLE "Livraison Partielle", VISIBLE 0.
           03 ScreenRUP-Ef-QTL, Entry-Field, 
              COL 10,86, LINE 13,54, LINES 1,38 CELLS, SIZE 6,43 CELLS, 
              3-D, COLOR IS 2, ID IS 12, VISIBLE 0, 
              EVENT PROCEDURE ScreenRUP-Ef-QTL-Event-Proc.
           03 ScreenRUP-Ef-QTC, Entry-Field, 
              COL 33,86, LINE 13,54, LINES 1,38 CELLS, SIZE 6,43 CELLS, 
              3-D, COLOR IS 2, ID IS 13, VISIBLE 0, 
              EVENT PROCEDURE ScreenRUP-Ef-QTC-Event-Proc.
           03 ScreenRUP-La-QTL, Label, 
              COL 1,71, LINE 13,69, LINES 1,08 CELLS, SIZE 8,29 CELLS, 
              COLOR IS 2, FONT IS Default-Font, ID IS 14, RIGHT, 
              LABEL-OFFSET 0, 
              TITLE "Livré", TRANSPARENT, VISIBLE 0.
           03 ScreenRUP-La-QTC, Label, 
              COL 20,43, LINE 13,77, LINES 1,00 CELLS, 
              SIZE 13,00 CELLS, 
              COLOR IS 2, FONT IS Default-Font, ID IS 15, 
              LABEL-OFFSET 0, 
              TITLE "En commmande", TRANSPARENT, VISIBLE 0.
           03 ScreenRUP-Pb-ValidLP, Push-Button, 
              COL 20,43, LINE 16,62, LINES 16, SIZE 16, 
              BITMAP-HANDLE VALIDER16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 9858, FONT IS Small-Font, ID IS 16, 
              TITLE "Valider", VISIBLE 0.
           03 ScreenRUP-Pb-AnnulLP, Push-Button, 
              COL 23,86, LINE 16,62, LINES 16, SIZE 16, 
              BITMAP-HANDLE ANNULER16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 9860, FONT IS Small-Font, ID IS 17, 
              TITLE "Annuler", VISIBLE 0.
           03 ScreenRUP-La-adr, Label, 
              COL 1,71, LINE 7,38, LINES 2,15 CELLS, SIZE 7,71 CELLS, 
              COLOR IS 16389, FONT IS Default-Font, ID IS 22, CENTER, 
              LABEL-OFFSET 0, 
              TITLE "Adresse dérogée", TRANSPARENT, VISIBLE 0.
           03 ScreenRUP-La-UAC, Label, 
              COL 33,86, LINE 7,38, LINES 3,00 CELLS, SIZE 10,00 CELLS, 
              COLOR IS 13, FONT IS Small-Font, ID IS 23, CENTER, 
              LABEL-OFFSET 0, TRANSPARENT.
           03 ScreenRUP-La-NUU, Label, 
              COL 33,86, LINE 11,00, LINES 2,15 CELLS, 
              SIZE 10,00 CELLS, 
              COLOR IS 13, FONT IS Small-Font, ID IS 24, CENTER, 
              LABEL-OFFSET 0, TRANSPARENT.
       01 ScreenLIV.
           03 ScreenLIV-Gd-1, Grid, 
              COL 1,00, LINE 1,62, LINES 24,77 CELLS, 
              SIZE 104,57 CELLS, 
              3-D, CENTERED-HEADINGS, COLOR IS 2, COLUMN-HEADINGS, 
              DATA-COLUMNS (1, 2, 23, 63, 73, 83, 93, 94, 104, 112, 113,
              117, 118), 
              DISPLAY-COLUMNS (1, 4, 26, 68, 79, 89, 99, 105, 116, 124,
              132, 140, 148), 
              ALIGNMENT ("C", "U", "U", "C", "C", "C", "C", "C", "U", "U
      -       "", "U", "U", "U"), 
              DATA-TYPES ("X", "X", "X", "X", "X", "X", "X", "X", "X", "
      -       "9(1)", "9(4)", "9(1)", "9(1)"), 
              SEPARATION (5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5), 
              COLUMN-DIVIDERS (1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1), 
              CURSOR-FRAME-WIDTH 1, DIVIDER-COLOR w-divider-color, 
              DRAG-COLOR 1, END-COLOR w-end-color, FONT IS Small-Font, 
              HEADING-COLOR w-heading-color, 
              HEADING-DIVIDER-COLOR w-heading-divider-color, ID IS 1, 
              NUM-COL-HEADINGS 1, NUM-ROWS W-NUM-ROWS, 
              RECORD-DATA ScreenLIV-Gd-1-Record, TILED-HEADINGS, 
              USE-TAB, VPADDING 50, VSCROLL, 
              EVENT PROCEDURE ScreenLIV-Gd-1-Event-Proc.
           03 ScreenLIV-Fr-1, Frame, 
              COL 13,14, LINE 26,92, LINES 2,15 CELLS, 
              SIZE 41,00 CELLS, 
              COLOR IS 264, FILL-COLOR 16, FILL-PERCENT 100, ID IS 10, 
              BACKGROUND-LOW.
           03 ScreenLIV-Pb-Livrer, Push-Button, 
              COL 1,57, LINE 26,85, LINES 24, SIZE 24, 
              BITMAP-HANDLE TOUTCOC24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1081, FONT IS Small-Font, ID IS 2, 
              NO-AUTO-DEFAULT, TITLE ScreenLIV-Pb-Livrer-Tit.
           03 ScreenLIV-Pb-Annuler, Push-Button, 
              COL 6,14, LINE 26,85, LINES 24, SIZE 24, 
              BITMAP-HANDLE TOUTDEC24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1082, FONT IS Small-Font, ID IS 3, 
              NO-AUTO-DEFAULT, TITLE ScreenLIV-Pb-Annuler-Tit.
           03 ScreenLIV-Bt-1, Bitmap, TRANSPARENT-COLOR 12632256, 
              COL 58,86, LINE 27,54, LINES 16, SIZE 16, 
              BITMAP-HANDLE RELIQOK16-BMP, BITMAP-NUMBER 1, 
              ID IS 4.
           03 ScreenLIV-Bt-2, Bitmap, TRANSPARENT-COLOR 12632256, 
              COL 76,71, LINE 27,54, LINES 16, SIZE 16, 
              BITMAP-HANDLE RELIQNO16-BMP, BITMAP-NUMBER 1, 
              ID IS 5.
           03 ScreenLIV-Pb-Valider, Push-Button, 
              COL 95,86, LINE 26,85, LINES 24, SIZE 24, 
              BITMAP-HANDLE VALIDER24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1101, ID IS 6, NO-AUTO-DEFAULT, 
              TITLE "Valider".
           03 ScreenLIV-La-Lib, Label, 
              COL 32,71, LINE 27,62, LINES 1,00 CELLS, 
              SIZE 22,71 CELLS, 
              COLOR IS 5, FONT IS Small-Font, ID IS 7, LABEL-OFFSET 0, 
              TITLE ScreenLIV-Msg, TRANSPARENT.
           03 ScreenLIV-La-Lib0, Label, 
              COL 16,43, LINE 27,62, LINES 1,00 CELLS, 
              SIZE 12,71 CELLS, 
              COLOR IS 5, FONT IS Small-Font, ID IS 9, LABEL-OFFSET 0, 
              TITLE "Double-cliquez sur", TRANSPARENT.
           03 ScreenLIV-Pb-Abandon, Push-Button, 
              COL 100,43, LINE 26,85, LINES 24, SIZE 24, 
              BITMAP-HANDLE ANNULER24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1102, ID IS 11, NO-AUTO-DEFAULT, 
              TITLE "Abandonner".
           03 ScreenLIV-Bt-4, Bitmap, TRANSPARENT-COLOR 12632256, 
              COL 30,00, LINE 27,62, LINES 16, SIZE 16, 
              BITMAP-HANDLE COLISXX16-BMP, BITMAP-NUMBER 1, 
              ID IS 12.
           03 ScreenLIV-La-1, Label, 
              COL 61,14, LINE 27,77, LINES 1,00 CELLS, 
              SIZE 14,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 8, LABEL-OFFSET 0, 
              TITLE "= Reliquat conservé", TRANSPARENT.
           03 ScreenLIV-La-1a, Label, 
              COL 79,00, LINE 27,77, LINES 1,00 CELLS, 
              SIZE 15,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 13, LABEL-OFFSET 0, 
              TITLE "= Reliquat abondonné", TRANSPARENT.
       01 ScreenMarge.
           03 ScreenMarge-La-1, Label, 
              COL 6,71, LINE 1,38, LINES 1,08 CELLS, SIZE 18,86 CELLS, 
              COLOR IS 2, FONT IS Default-Font, ID IS 1, CENTER, 
              LABEL-OFFSET 0, 
              TITLE "Saisir l'autorisation", TRANSPARENT.
           03 ScreenMarge-Ef-Aut, Entry-Field, 
              COL 13,29, LINE 3,08, LINES 1,46 CELLS, SIZE 5,57 CELLS, 
              3-D, COLOR IS 2, ID IS 2, MAX-TEXT 3, SECURE, 
              EVENT PROCEDURE ScreenMarge-Ef-Aut-Event-Proc.
           03 ScreenMarge-Pb-Valider, Push-Button, 
              COL 19,57, LINE 2,92, LINES 16, SIZE 16, 
              BITMAP-HANDLE VALIDER16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 9858, FONT IS Small-Font, ID IS 5, 
              SELF-ACT, 
              TITLE "Valider".
           03 ScreenMarge-Pb-Annuler, Push-Button, 
              COL 5,86, LINE 6,62, LINES 1,62 CELLS, SIZE 20,57 CELLS, 
              EXCEPTION-VALUE 1302, FONT IS Small-Font, ID IS 4, 
              SELF-ACT, 
              TITLE "Laisser le bon en attente".
           03 ScreenMarge-La-1a, Label, 
              COL 13,00, LINE 5,00, LINES 1,00 CELLS, SIZE 6,29 CELLS, 
              COLOR IS 2, FONT IS Default-Font, ID IS 3, CENTER, 
              LABEL-OFFSET 0, 
              TITLE "ou", TRANSPARENT.
       01 Screen1, HELP-ID 250063.
           03 Screen1-Fr-4aab, Frame, 
              COL 100,86, LINE 7,00, LINES 6,00 CELLS, 
              SIZE 73,71 CELLS, 
              LOWERED, COLOR IS 2, FILL-COLOR 16, FILL-PERCENT 100, 
              FONT IS Small-Font, ID IS 88, BACKGROUND-LOW, 
              ATW-CSS-CLASS "card".
           03 Screen1-Fr-4, Frame, 
              COL 1,71, LINE 52,85, LINES 23,85 CELLS, 
              SIZE 172,86 CELLS, 
              LOWERED, COLOR IS 2, FILL-COLOR 16, FILL-PERCENT 100, 
              FONT IS Small-Font, ID IS 55, BACKGROUND-LOW, 
              ATW-CSS-CLASS "card".
           03 Screen1-La-9, Label, 
              COL 147,57, LINE 54,38, LINES 3,92 CELLS, 
              SIZE 25,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 36, LABEL-OFFSET 0, 
              TITLE "Texte H1", TRANSPARENT, ATW-CSS-CLASS "h1".
           03 Screen1-La-9a, Label, 
              COL 147,57, LINE 57,77, LINES 3,92 CELLS, 
              SIZE 25,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 45, LABEL-OFFSET 0, 
              TITLE "Texte H2", TRANSPARENT, ATW-CSS-CLASS "h2".
           03 Screen1-La-9aa, Label, 
              COL 147,57, LINE 60,92, LINES 3,92 CELLS, 
              SIZE 25,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 95, LABEL-OFFSET 0, 
              TITLE "Texte H3", TRANSPARENT, ATW-CSS-CLASS "h3".
           03 Screen1-La-9aaa, Label, 
              COL 147,57, LINE 63,46, LINES 3,92 CELLS, 
              SIZE 25,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 124, 
              LABEL-OFFSET 0, 
              TITLE "Texte H4", TRANSPARENT, ATW-CSS-CLASS "h4".
           03 Screen1-La-9aaaa, Label, 
              COL 147,57, LINE 65,77, LINES 3,92 CELLS, 
              SIZE 25,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 125, 
              LABEL-OFFSET 0, 
              TITLE "Texte H5", TRANSPARENT, ATW-CSS-CLASS "h5".
           03 Screen1-Fr-4aaa, Frame, 
              COL 1,71, LINE 13,08, LINES 6,00 CELLS, 
              SIZE 172,86 CELLS, 
              LOWERED, COLOR IS 2, FILL-COLOR 16, FILL-PERCENT 100, 
              FONT IS Small-Font, ID IS 12, BACKGROUND-LOW, 
              ATW-CSS-CLASS "card".
           03 Screen1-Fr-4aa, Frame, 
              COL 90,43, LINE 20,54, LINES 4,15 CELLS, 
              SIZE 84,29 CELLS, 
              LOWERED, COLOR IS 2, FILL-COLOR 16, FILL-PERCENT 100, 
              FONT IS Small-Font, ID IS 64, BACKGROUND-LOW, 
              ATW-CSS-CLASS "card-top".
           03 Screen1-Fr-4a, Frame, 
              COL 1,71, LINE 20,54, LINES 4,15 CELLS, SIZE 84,29 CELLS, 
              LOWERED, COLOR IS 2, FILL-COLOR 16, FILL-PERCENT 100, 
              FONT IS Small-Font, ID IS 46, BACKGROUND-LOW, 
              ATW-CSS-CLASS "card-top".
           03 Screen1-Fr-2, Frame, 
              COL 1,71, LINE 7,00, LINES 6,00 CELLS, SIZE 96,57 CELLS, 
              LOWERED, COLOR IS 2, FILL-COLOR 16, FILL-PERCENT 100, 
              FONT IS Small-Font, ID IS 34, BACKGROUND-LOW, 
              ATW-CSS-CLASS "card".
           03 Screen1-Pb-ListeBon, Push-Button, 
              COL 92,29, LINE 9,15, LINES 24, SIZE 24, 
              BITMAP-HANDLE ZOOMxxx12-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 1007, FONT IS Default-Font, ID IS 93, 
              NO-AUTO-DEFAULT, NO-TAB, SELF-ACT, VISIBLE 0, 
              ATW-CSS-CLASS "button-icon fa-search".
           03 Screen1-Fr-3, Frame, 
              COL 90,43, LINE 24,00, LINES 24,23 CELLS, 
              SIZE 84,29 CELLS, 
              LOWERED, COLOR IS 2, FILL-COLOR 16, FILL-PERCENT 100, 
              FONT IS Calibri12, ID IS 42, TITLE-POSITION 2, 
              BACKGROUND-LOW, ATW-CSS-CLASS "card-bottom".
           03 Screen1-La-5b, Label, 
              COL 92,29, LINE 26,54, LINES 1,92 CELLS, 
              SIZE 15,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 30, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Nom", TRANSPARENT.
           03 Screen1-La-5ab, Label, 
              COL 92,29, LINE 30,54, LINES 1,92 CELLS, 
              SIZE 15,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 31, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Adresse", TRANSPARENT.
           03 Screen1-La-5aaaa, Label, 
              COL 123,00, LINE 38,38, LINES 1,92 CELLS, 
              SIZE 6,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 39, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Ville", TRANSPARENT.
           03 Screen1-La-5aac, Label, 
              COL 92,14, LINE 38,38, LINES 1,92 CELLS, 
              SIZE 15,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 35, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Code Postal", TRANSPARENT.
           03 Screen1-Fr-1, Frame, 
              COL 1,71, LINE 24,00, LINES 24,23 CELLS, 
              SIZE 84,29 CELLS, 
              LOWERED, COLOR IS 2, FILL-COLOR 16, FILL-PERCENT 100, 
              FONT IS Calibri12, ID IS 10, TITLE-POSITION 2, 
              BACKGROUND-LOW, ATW-CSS-CLASS "card-bottom".
           03 Screen1-La-RLA, Label, 
              COL 41,43, LINE 29,23, LINES 1,00 CELLS, 
              SIZE 12,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 119, CENTER, 
              LABEL-OFFSET 0, TRANSPARENT.
           03 Screen1-La-4, Label, 
              COL 32,29, LINE 33,69, LINES 1,00 CELLS, SIZE 5,00 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 63, RIGHT, 
              LABEL-OFFSET 0, 
              TITLE "SIREN", TRANSPARENT, VISIBLE 0.
           03 Screen1-La-5, Label, 
              COL 3,57, LINE 26,54, LINES 1,92 CELLS, SIZE 15,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 1, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Nom", TRANSPARENT.
           03 Screen1-La-5a, Label, 
              COL 3,57, LINE 30,23, LINES 1,92 CELLS, SIZE 15,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 4, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Adresse", TRANSPARENT.
           03 Screen1-La-5aa, Label, 
              COL 3,57, LINE 38,23, LINES 1,92 CELLS, SIZE 15,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 6, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Code Postal", TRANSPARENT.
           03 Screen1-La-5aaa, Label, 
              COL 34,14, LINE 38,38, LINES 1,92 CELLS, SIZE 6,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 11, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Ville", TRANSPARENT.
           03 Screen1-La-5aab, Label, 
              COL 3,57, LINE 41,38, LINES 1,92 CELLS, SIZE 15,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 20, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Téléphones", TRANSPARENT.
           03 Screen1-Pb-Modifier, Push-Button, 
              COL 151,14, LINE 1,38, LINES 24, SIZE 118, 
              BITMAP-HANDLE MODIFIE16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              ENABLED 0, EXCEPTION-VALUE 9854, FONT IS Default-Font, 
              ID IS 72, NO-AUTO-DEFAULT, NO-TAB, SELF-ACT, 
              TITLE "Modifier", ATW-CSS-CLASS "button-modifier".
           03 Screen1-Pb-Sauvegarder, Push-Button, 
              COL 111,43, LINE 1,38, LINES 24, SIZE 156, 
              BITMAP-HANDLE SAUVEGA16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              ENABLED 0, EXCEPTION-VALUE 9819, FONT IS Default-Font, 
              ID IS 83, NO-AUTO-DEFAULT, NO-TAB, SELF-ACT, 
              TITLE "Sauvegarder", ATW-CSS-CLASS "button-sauvegarder".
           03 Screen1-Pb-Creer, Push-Button, 
              COL 135,71, LINE 1,38, LINES 24, SIZE 96, 
              BITMAP-HANDLE ADDxxxx16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              ENABLED 0, FONT IS Default-Font, ID IS 71, 
              NO-AUTO-DEFAULT, NO-TAB, SELF-ACT, 
              TERMINATION-VALUE 9853, 
              TITLE "Créer", 
              ATW-CSS-CLASS "button-creer button-success", 
              ATW-CSS-ID "toto".
           03 Screen1-Pb-Supprimer, Push-Button, 
              COL 92,57, LINE 1,38, LINES 24, SIZE 118, 
              BITMAP-HANDLE SUPPRIM16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              ENABLED 0, EXCEPTION-VALUE 9856, FONT IS Default-Font, 
              ID IS 70, NO-AUTO-DEFAULT, NO-TAB, SELF-ACT, 
              TITLE "Supprimer", 
              ATW-CSS-CLASS "button-supprimer button-danger".
           03 Screen1-Pb-Imprimer, Push-Button, 
              COL 74,00, LINE 1,38, LINES 24, SIZE 118, 
              BITMAP-HANDLE IMPRIMER32-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              ENABLED 0, EXCEPTION-VALUE 9816, FONT IS Default-Font, 
              ID IS 84, NO-AUTO-DEFAULT, NO-TAB, SELF-ACT, 
              TITLE "Imprimer", ATW-CSS-CLASS "button-imprimer".
           03 Screen1-Ef-1, Entry-Field, 
              COL 46,00, LINE 4,38, LINES 2,46 CELLS, SIZE 70,57 CELLS, 
              3-D, COLOR IS W-COLOR-PROTO, ENABLED 0, 
              FONT IS Default-Font, ID IS 3, CENTER, READ-ONLY, 
              USE-TAB, VALUE RAI-MPAR, ATW-CSS-ID "environnement".
           03 Screen1-Ef-IDE, Entry-Field, 
              COL 117,57, LINE 4,38, LINES 2,46 CELLS, SIZE 5,57 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 5, CENTER, READ-ONLY, 
              USE-TAB.
           03 Screen1-Pb-Agence, Push-Button, 
              COL 3,14, LINE 9,15, LINES 24, SIZE 24, 
              BITMAP-HANDLE ZOOMxxx12-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              FONT IS Default-Font, ID IS 92, NO-AUTO-DEFAULT, NO-TAB, 
              SELF-ACT, TERMINATION-VALUE 1011, 
              ATW-CSS-CLASS "button-icon fa-home".
           03 Screen1-Ef-Age, Entry-Field, 
              COL 8,57, LINE 9,15, LINES 2,46 CELLS, SIZE 5,86 CELLS, 
              3-D, COLOR IS 2, ID IS 76, CENTER, MAX-TEXT 3, 
              AFTER PROCEDURE Screen1-Ef-Age-AfterProcedure.
           03 Screen1-Ef-NomAge, Entry-Field, 
              COL 15,43, LINE 9,15, LINES 2,46 CELLS, SIZE 28,43 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, FONT IS Small-Font, ID IS 79, 
              MAX-TEXT 3, USE-TAB.
           03 Screen1-Ef-Dat, Entry-Field, 
              COL 44,86, LINE 9,15, LINES 2,46 CELLS, SIZE 14,29 CELLS, 
              3-D, COLOR IS 2, ID IS 78, CENTER, 
              ATW-CSS-CLASS "date-picker", 
              AFTER PROCEDURE Screen1-Ef-Dat-Ev-Msg-Validate.
           03 Screen1-Cm-Typ, Combo-Box, 
              COL 67,71, LINE 9,15, LINES 6,15 CELLS, SIZE 24,00 CELLS, 
              3-D, COLOR IS 2, FONT IS Small-Font, ID IS 94, 
              MASS-UPDATE 0, NOTIFY-SELCHANGE, DROP-LIST, UNSORTED, 
              EVENT PROCEDURE Screen1-Cm-Typ-Event-Proc, 
              EXCEPTION PROCEDURE Screen1-Cm-Typ-Exception-Proc.
           03 Screen1-Ef-Bon, Entry-Field, 
              COL 111,71, LINE 9,23, LINES 2,46 CELLS, 
              SIZE 17,14 CELLS, 
              3-D, COLOR IS 2, ID IS 2001, CENTER, MAX-TEXT 8, NUMERIC, 
              EVENT PROCEDURE Screen1-Ef-Bon-Event-Proc.
           03 Screen1-DaCb-IFO, Check-Box, 
              COL 135,71, LINE 9,62, LINES 1,38 CELLS, 
              SIZE 15,43 CELLS, 
              COLOR IS 514, FONT IS Calibri10, ID IS 37, NO-TAB, 
              SELF-ACT, 
              TITLE "Forfait", VALUE Screen1-DaCb-IFO-BUF, 
              ATW-CSS-CLASS "switch".
           03 Screen1-DaCb-IVR, Check-Box, 
              COL 66,86, LINE 71,08, LINES 1,38 CELLS, 
              SIZE 28,29 CELLS, 
              COLOR IS 514, FONT IS Calibri10, ID IS 86, NO-TAB, 
              SELF-ACT, 
              TITLE "Rétrocession", VALUE Screen1-DaCb-IVR-BUF, 
              ATW-CSS-CLASS "switch".
           03 Screen1-Ef-Cli, Entry-Field, 
              COL 68,00, LINE 26,23, LINES 2,46 CELLS, SIZE 8,86 CELLS, 
              3-D, COLOR IS 2, ID IS 7, MAX-TEXT 8, NUMERIC, 
              EVENT PROCEDURE Screen1-Ef-Cli-Event-Proc.
           03 Screen1-Pb-ListeCli, Push-Button, 
              COL 80,29, LINE 21,54, LINES 2,38 CELLS, SIZE 4,57 CELLS, 
              EXCEPTION-VALUE 9806, FONT IS Default-Font, ID IS 15, 
              NO-AUTO-DEFAULT, NO-TAB, 
              ATW-CSS-CLASS "button-icon fa-search".
           03 Screen1-Ef-Rai, Entry-Field, 
              COL 20,43, LINE 26,23, LINES 2,46 CELLS, 
              SIZE 45,86 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 8, USE-TAB.
           03 Screen1-Ef-Nom, Entry-Field, 
              COL 20,43, LINE 29,62, LINES 7,15 CELLS, 
              SIZE 56,43 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 9, MULTILINE, USE-TAB.
           03 Screen1-Ef-Pos, Entry-Field, 
              COL 20,43, LINE 37,85, LINES 2,46 CELLS, 
              SIZE 11,43 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 14, USE-TAB.
           03 Screen1-Ef-Vil, Entry-Field, 
              COL 41,29, LINE 37,85, LINES 2,46 CELLS, 
              SIZE 35,57 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 13, USE-TAB.
           03 Screen1-Ef-TEL, Entry-Field, 
              COL 20,43, LINE 41,08, LINES 2,46 CELLS, 
              SIZE 27,14 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 51, USE-TAB.
           03 Screen1-Ef-LRAI, Entry-Field, 
              COL 109,43, LINE 26,23, LINES 2,46 CELLS, 
              SIZE 56,43 CELLS, 
              3-D, COLOR IS 2, ID IS 43, 
              EVENT PROCEDURE Screen1-Ef-LRAI-Event-Proc.
           03 Screen1-Ef-LNOM, Entry-Field, 
              COL 109,43, LINE 29,77, LINES 7,15 CELLS, 
              SIZE 56,43 CELLS, 
              3-D, COLOR IS 2, ID IS 44, MAX-LINES 3, MAX-TEXT 75, 
              MULTILINE, USE-RETURN.
           03 Screen1-Ef-LPOS, Entry-Field, 
              COL 109,43, LINE 37,85, LINES 2,46 CELLS, 
              SIZE 11,43 CELLS, 
              3-D, COLOR IS 2, ID IS 48, 
              EVENT PROCEDURE Screen1-Ef-LPOS-Event-Proc.
           03 Screen1-Ef-LVIL, Entry-Field, 
              COL 130,29, LINE 37,85, LINES 2,46 CELLS, 
              SIZE 35,57 CELLS, 
              3-D, COLOR IS 2, ID IS 47.
           03 Screen1-Cm-TCO, Combo-Box, 
              COL 28,86, LINE 54,31, LINES 11,08 CELLS, 
              SIZE 30,71 CELLS, 
              3-D, COLOR IS 2, FONT IS Default-Font, ID IS 61, 
              MASS-UPDATE 0, NOTIFY-SELCHANGE, DROP-LIST, UNSORTED.
           03 Screen1-DaEf-MDLI, Entry-Field, 
              COL 33,14, LINE 57,69, LINES 2,46 CELLS, SIZE 2,86 CELLS, 
              3-D, COLOR IS 2, ID IS 97, MAX-TEXT 2, 
              VALUE Screen1-DaEf-MDLI-BUF, 
              AFTER PROCEDURE Screen1-DaEf-MDLI-Ev-Msg-Validate, 
              EVENT PROCEDURE Screen1-DaEf-MDLI-Event-Proc.
           03 Screen1-DaEf-SADLI, Entry-Field, 
              COL 37,43, LINE 57,69, LINES 2,46 CELLS, SIZE 5,14 CELLS, 
              3-D, COLOR IS 2, ID IS 98, MAX-TEXT 4, 
              VALUE Screen1-DaEf-SADLI-BUF.
           03 Screen1-DaEf-Rep, Entry-Field, 
              COL 28,86, LINE 61,00, LINES 2,46 CELLS, SIZE 6,43 CELLS, 
              3-D, COLOR IS 2, ID IS 77, MAX-TEXT 4, 
              VALUE Screen1-DaEf-Rep-BUF, 
              AFTER PROCEDURE Screen1-DaEf-Rep-AfterProcedure.
           03 Screen1-Ef-NomRep, Entry-Field, 
              COL 37,14, LINE 61,00, LINES 2,46 CELLS, 
              SIZE 19,71 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 25, USE-TAB.
           03 Screen1-DaRb-AFC0, Radio-Button, 
              COL 28,71, LINE 65,08, LINES 1,00 CELLS, 
              SIZE 13,29 CELLS, 
              COLOR IS 514, FONT IS Calibri10, GROUP 5, GROUP-VALUE 1, 
              ID IS 29, 
              TITLE "Soumis", VALUE Screen1-RADIO-5-BUF.
           03 Screen1-DaRb-AFC1, Radio-Button, 
              COL 28,71, LINE 66,77, LINES 1,00 CELLS, 
              SIZE 13,29 CELLS, 
              COLOR IS 514, FONT IS Calibri10, GROUP 5, GROUP-VALUE 2, 
              ID IS 32, 
              TITLE "Exonéré", VALUE Screen1-RADIO-5-BUF.
           03 Screen1-DaRb-AFC2, Radio-Button, 
              COL 42,43, LINE 65,08, LINES 1,00 CELLS, 
              SIZE 13,29 CELLS, 
              COLOR IS 514, FONT IS Calibri10, GROUP 5, GROUP-VALUE 3, 
              ID IS 57, VALUE Screen1-RADIO-5-BUF.
           03 Screen1-DaRb-AFC3, Radio-Button, 
              COL 42,43, LINE 66,77, LINES 1,00 CELLS, 
              SIZE 13,29 CELLS, 
              COLOR IS 514, FONT IS Calibri10, GROUP 5, GROUP-VALUE 4, 
              ID IS 58, VALUE Screen1-RADIO-5-BUF.
           03 Screen1-DaCb-IFD, Check-Box, 
              COL 3,14, LINE 79,23, LINES 2,46 CELLS, SIZE 26,14 CELLS, 
              COLOR IS 514, FONT IS Calibri10, ID IS 62, LEFT-TEXT, 
              SELF-ACT, 
              TITLE "Facture en", VALUE Screen1-DaCb-IFD-BUF, 
              VISIBLE 0, 
              EVENT PROCEDURE Screen1-DaCb-IFD-Event-Proc.
           03 Screen1-DaCb-PUS, Check-Box, 
              COL 27,71, LINE 80,00, LINES 1,00 CELLS, 
              SIZE 12,71 CELLS, 
              COLOR IS 514, FONT IS Calibri10, ID IS 67, SELF-ACT, 
              TITLE "Port usine ", VALUE Screen1-DaCb-PUS-BUF, 
              VISIBLE 0.
           03 Screen1-DaRb-IRE0, Radio-Button, 
              COL 67,14, LINE 56,92, LINES 1,15 CELLS, SIZE 8,29 CELLS, 
              COLOR IS 514, FONT IS Calibri10, GROUP 4, GROUP-VALUE 7, 
              ID IS 24, 
              TITLE "Std", VALUE Screen1-RADIO-4-BUF, 
              EVENT PROCEDURE Screen1-DaRb-IRE0-Event-Proc.
           03 Screen1-DaRb-IRE1, Radio-Button, 
              COL 67,14, LINE 58,77, LINES 1,15 CELLS, SIZE 8,29 CELLS, 
              COLOR IS 514, FONT IS Calibri10, GROUP 4, GROUP-VALUE 8, 
              ID IS 26, 
              TITLE "Uni", VALUE Screen1-RADIO-4-BUF, 
              EVENT PROCEDURE Screen1-DaRb-IRE1-Event-Proc.
           03 Screen1-DaRb-IRE2, Radio-Button, 
              COL 76,29, LINE 58,77, LINES 1,15 CELLS, SIZE 8,29 CELLS, 
              COLOR IS 514, FONT IS Calibri10, GROUP 4, GROUP-VALUE 9, 
              ID IS 27, 
              TITLE "En +", VALUE Screen1-RADIO-4-BUF, 
              EVENT PROCEDURE Screen1-DaRb-IRE2-Event-Proc.
           03 Screen1-DaRb-IRE9, Radio-Button, 
              COL 76,29, LINE 56,92, LINES 1,15 CELLS, SIZE 8,29 CELLS, 
              COLOR IS 514, FONT IS Calibri10, GROUP 4, GROUP-VALUE 10, 
              ID IS 68, 
              TITLE "Sans", VALUE Screen1-RADIO-4-BUF, 
              EVENT PROCEDURE Screen1-DaRb-IRE9-Event-Proc.
           03 Screen1-DaRb-ACA0, Radio-Button, 
              COL 67,14, LINE 66,38, LINES 1,00 CELLS, 
              SIZE 13,00 CELLS, 
              COLOR IS 514, FONT IS Calibri10, GROUP 1, GROUP-VALUE 1, 
              ID IS 80, VALUE Screen1-RADIO-1-BUF.
           03 Screen1-DaRb-ACA1, Radio-Button, 
              COL 67,14, LINE 68,08, LINES 1,00 CELLS, 
              SIZE 13,00 CELLS, 
              COLOR IS 514, FONT IS Calibri10, GROUP 1, GROUP-VALUE 2, 
              ID IS 81, VALUE Screen1-RADIO-1-BUF.
           03 Screen1-DaRb-ACA2, Radio-Button, 
              COL 79,00, LINE 66,31, LINES 1,00 CELLS, 
              SIZE 13,00 CELLS, 
              COLOR IS 514, FONT IS Calibri10, GROUP 1, GROUP-VALUE 3, 
              ID IS 82, VALUE Screen1-RADIO-1-BUF.
           03 Screen1-DaEf-Ref, Entry-Field, 
              COL 103,71, LINE 54,31, LINES 2,46 CELLS, 
              SIZE 30,71 CELLS, 
              3-D, COLOR IS 2, ID IS 50, MAX-TEXT 30.
           03 Screen1-DaEf-Ref2, Entry-Field, 
              COL 103,71, LINE 57,69, LINES 2,46 CELLS, 
              SIZE 30,71 CELLS, 
              3-D, COLOR IS 2, ID IS 89, MAX-TEXT 30.
           03 Screen1-DaEf-Nrf, Entry-Field, 
              COL 103,71, LINE 61,00, LINES 2,46 CELLS, 
              SIZE 21,43 CELLS, 
              3-D, COLOR IS 2, ID IS 16, MAX-TEXT 12.
           03 Screen1-DaEf-Naf, Entry-Field, 
              COL 103,71, LINE 64,31, LINES 2,46 CELLS, 
              SIZE 14,71 CELLS, 
              3-D, COLOR IS 2, FONT IS Default-Font, ID IS 18, 
              MAX-TEXT 10, VISIBLE WV-AFFGES, 
              EVENT PROCEDURE Screen1-DaEf-Naf-Event-Proc.
           03 Screen1-La-1, Label, 
              COL 88,71, LINE 54,85, LINES 1,92 CELLS, 
              SIZE 15,29 CELLS, 
              COLOR IS 2, FONT IS Calibri9, ID IS 17, LABEL-OFFSET 0, 
              TITLE "Réf. client", TRANSPARENT.
           03 Screen1-La-2, Label, 
              COL 88,57, LINE 61,62, LINES 1,92 CELLS, 
              SIZE 15,29 CELLS, 
              COLOR IS 2, FONT IS Calibri9, ID IS 19, LABEL-OFFSET 0, 
              TITLE "Réf. interne", TRANSPARENT.
           03 Screen1-La-NAF, Label, 
              COL 88,57, LINE 64,92, LINES 1,92 CELLS, 
              SIZE 15,29 CELLS, 
              COLOR IS 2, FONT IS Calibri9, ID IS 21, LABEL-OFFSET 0, 
              TITLE "N° d'affaire", TRANSPARENT, VISIBLE WV-AFFGES.
           03 Screen1-La-3, Label, 
              COL 103,29, LINE 9,77, LINES 1,92 CELLS, SIZE 9,00 CELLS, 
              COLOR IS 2, FONT IS Calibri10, ID IS 23, LABEL-OFFSET 0, 
              TITLE "Bon N°", TRANSPARENT.
           03 Screen1-DaEf-MAM, Entry-Field, 
              COL 149,29, LINE 54,31, LINES 2,46 CELLS, 
              SIZE 5,14 CELLS, 
              3-D, COLOR IS 2, FONT IS Small-Font, ID IS 105, 
              MAX-TEXT 3, VISIBLE APM-MPAD, 
              AFTER PROCEDURE Screen1-DaEf-MAM-AfterProcedure.
           03 Screen1-La-13, Label, 
              COL 3,57, LINE 58,31, LINES 1,92 CELLS, SIZE 25,00 CELLS, 
              COLOR IS 2, FONT IS Calibri9, ID IS 53, LABEL-OFFSET 0, 
              TITLE "Livraison prévue le", TRANSPARENT.
           03 Screen1-La-14, Label, 
              COL 3,43, LINE 61,62, LINES 1,92 CELLS, SIZE 25,00 CELLS, 
              COLOR IS 2, FONT IS Calibri9, ID IS 54, LABEL-OFFSET 0, 
              TITLE "Commercial", TRANSPARENT.
           03 Screen1-La-Delai, Label, 
              COL 45,29, LINE 64,54, LINES 1,00 CELLS, 
              SIZE 12,00 CELLS, 
              COLOR IS 2, FONT IS Default-Font, ID IS 101, 
              LABEL-OFFSET 20, TRANSPARENT.
           03 Screen1-Pb-Date, Push-Button, 
              COL 59,71, LINE 9,15, LINES 24, SIZE 24, 
              BITMAP-HANDLE ZOOMxxx12-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              FONT IS Default-Font, ID IS 102, NO-AUTO-DEFAULT, NO-TAB, 
              SELF-ACT, TERMINATION-VALUE 1013, 
              ATW-CSS-CLASS "button-icon fa-calendar-alt", 
              ATW-CSS-ID "open-example-popup".
           03 Screen1-La-21, Label, 
              COL 3,43, LINE 54,85, LINES 1,92 CELLS, SIZE 25,00 CELLS, 
              COLOR IS 2, FONT IS Calibri9, ID IS 103, LABEL-OFFSET 0, 
              TITLE "Type commande", TRANSPARENT.
           03 Screen1-La-AFC, Label, 
              COL 3,57, LINE 64,92, LINES 1,92 CELLS, SIZE 25,00 CELLS, 
              COLOR IS 2, FONT IS Calibri9, ID IS 28, LABEL-OFFSET 0, 
              TITLE "Affectation Fiscale", TRANSPARENT.
           03 Screen1-Pb-ListeMarque, Push-Button, 
              COL 168,14, LINE 54,31, LINES 2,38 CELLS, 
              SIZE 4,57 CELLS, 
              ENABLED 0, FONT IS Calibri10, ID IS 107, NO-AUTO-DEFAULT, 
              NO-TAB, SELF-ACT, VISIBLE APM-MPAD, 
              ATW-CSS-CLASS "button-icon fa-search".
           03 Screen1-DaEf-TYM, Entry-Field, 
              COL 149,29, LINE 57,69, LINES 2,46 CELLS, 
              SIZE 17,71 CELLS, 
              3-D, COLOR IS 2, FONT IS Small-Font, ID IS 106, 
              MAX-TEXT 16, VISIBLE APM-MPAD.
           03 Screen1-Br-APM1, Bar, 
              COL 10,29, LINE 80,46, SIZE 16,29 CELLS, 
              COLOR IS 8, ID IS 109, VISIBLE APM-MPAD, WIDTH 1.
           03 Screen1-Ef-LIB-MAR, Entry-Field, 
              COL 155,00, LINE 54,31, LINES 2,46 CELLS, 
              SIZE 11,86 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, FONT IS Small-Font, 
              ID IS 113, VISIBLE APM-MPAD.
           03 Screen1-Pb-ListeType, Push-Button, 
              COL 168,14, LINE 57,69, LINES 2,38 CELLS, 
              SIZE 4,57 CELLS, 
              ENABLED 0, FONT IS Calibri10, ID IS 114, NO-AUTO-DEFAULT, 
              NO-TAB, SELF-ACT, VISIBLE APM-MPAD, 
              ATW-CSS-CLASS "button-icon fa-search".
           03 Screen1-Pb-Ags, Push-Button, 
              COL 29,14, LINE 70,69, LINES 2,38 CELLS, SIZE 8,29 CELLS, 
              EXCEPTION-VALUE 1631, FONT IS Small-Font, ID IS 85, 
              NO-AUTO-DEFAULT, NO-TAB, SELF-ACT, 
              TITLE "Agence", VISIBLE EXM-MPAD.
           03 Screen1-Ef-Ags, Entry-Field, 
              COL 38,57, LINE 70,69, LINES 2,46 CELLS, SIZE 9,29 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 104, MAX-TEXT 3, 
              VISIBLE EXM-MPAD.
           03 Screen1-Pb-Dps, Push-Button, 
              COL 29,14, LINE 70,69, LINES 2,38 CELLS, SIZE 8,29 CELLS, 
              EXCEPTION-VALUE 1632, FONT IS Small-Font, ID IS 115, 
              NO-AUTO-DEFAULT, NO-TAB, SELF-ACT, 
              TITLE "Dépôt".
           03 Screen1-Ef-Dps, Entry-Field, 
              COL 38,57, LINE 70,69, LINES 2,46 CELLS, SIZE 9,29 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 116, MAX-TEXT 4.
           03 Screen1-Ef-Itc, Entry-Field, 
              COL 27,00, LINE 44,38, LINES 2,46 CELLS, 
              SIZE 33,14 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 33, READ-ONLY.
           03 Screen1-Pb-AjoutBon, Push-Button, 
              COL 41,29, LINE 79,69, LINES 16, SIZE 16, 
              BITMAP-HANDLE DUPLIQU12-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1040, ID IS 38, 
              TITLE "Ajouter un devis ou une commande à ce bon", 
              VISIBLE 0.
           03 Screen1-Pb-Itc, Push-Button, 
              COL 20,43, LINE 44,38, LINES 2,38 CELLS, SIZE 4,57 CELLS, 
              EXCEPTION-VALUE 1018, FONT IS Small-Font, ID IS 41, 
              NO-AUTO-DEFAULT, ATW-CSS-CLASS "button-icon fa-users".
           03 Screen1-Cb-ICP, Check-Box, 
              COL 7,57, LINE 79,69, LINES 1,92 CELLS, SIZE 17,00 CELLS, 
              COLOR IS 2, FONT IS Calibri10, ID IS 52, 
              TITLE "Prospect", VISIBLE 0, 
              EVENT PROCEDURE Screen1-Cb-ICP-Event-Proc.
           03 Screen1-Ef-TELITC, Entry-Field, 
              COL 62,14, LINE 44,38, LINES 2,46 CELLS, 
              SIZE 14,71 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 75, USE-TAB.
           03 Screen1-La-Fac, Label, 
              COL 25,00, LINE 79,92, LINES 1,38 CELLS, 
              SIZE 32,86 CELLS, 
              COLOR IS 13, FONT IS Calibri11, ID IS 118, CENTER, 
              LABEL-OFFSET 0, 
              TITLE "Facture n° AA999999/D du 99/99/99", TRANSPARENT, 
              VISIBLE 0.
           03 Screen1-Ef-MRU, Entry-Field, 
              COL 71,29, LINE 61,00, LINES 2,46 CELLS, SIZE 7,14 CELLS, 
              3-D, COLOR IS 2, FONT IS Calibri10, ID IS 122, 
              MAX-TEXT 5, VISIBLE 0, 
              AFTER PROCEDURE Screen1-Ef-MRU-Aft-Procedure.
           03 Screen1-Pb-Mail, Push-Button, 
              COL 109,43, LINE 41,08, LINES 2,38 CELLS, 
              SIZE 4,57 CELLS, 
              ID IS 128, VISIBLE 0, 
              ATW-CSS-CLASS "button-icon fa-paper-plane".
           03 Screen1-La-Mail, Label, 
              COL 115,43, LINE 41,69, LINES 1,08 CELLS, 
              SIZE 38,14 CELLS, 
              COLOR IS 2, FONT IS Calibri10, ID IS 127, LABEL-OFFSET 0, 
              TITLE "nathalie,clair@mistral,fr", TRANSPARENT, 
              VISIBLE 0.
           03 Screen1-DaRb-ACA3, Radio-Button, 
              COL 79,00, LINE 68,00, LINES 1,00 CELLS, 
              SIZE 13,00 CELLS, 
              COLOR IS 514, FONT IS Calibri10, GROUP 1, GROUP-VALUE 4, 
              ID IS 131, VALUE Screen1-RADIO-1-BUF.
           03 Screen1-La-crsd, Label, 
              COL 31,00, LINE 79,92, LINES 1,08 CELLS, SIZE 1,86 CELLS, 
              COLOR IS 290, FONT IS Calibri10, ID IS 138, 
              LABEL-OFFSET 0, 
              TITLE "=", TRANSPARENT, VISIBLE 0.
           03 Screen1-Ef-crs, Entry-Field, 
              COL 45,57, LINE 66,15, LINES 1,08 CELLS, SIZE 8,71 CELLS, 
              NO-BOX, COLOR IS 2, ENABLED 0, FONT IS Small-Font, 
              ID IS 137, LEFT, VISIBLE 0.
           03 Screen1-DaCb-EXC, Check-Box, 
              COL 66,86, LINE 73,46, LINES 1,38 CELLS, 
              SIZE 28,29 CELLS, 
              COLOR IS 514, FONT IS Calibri10, ID IS 146, NO-TAB, 
              SELF-ACT, VTOP, 
              TITLE "Sortie exceptionnelle", 
              VALUE Screen1-DaCb-EXC-BUF, ATW-CSS-CLASS "switch".
           03 Screen1-Ef-TEL2, Entry-Field, 
              COL 49,71, LINE 41,08, LINES 2,46 CELLS, 
              SIZE 27,14 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 148, USE-TAB.
           03 Screen1-La-6, Label, 
              COL 2,14, LINE 50,08, LINES 3,23 CELLS, 
              SIZE 172,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 40, LABEL-OFFSET 0, 
              TITLE "Informations complémentaires", TRANSPARENT, 
              ATW-CSS-CLASS "h3".
           03 Screen1-La-7, Label, 
              COL 4,14, LINE 21,69, LINES 2,62 CELLS, SIZE 35,00 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 49, LABEL-OFFSET 0, 
              TITLE "Clients", TRANSPARENT, ATW-CSS-CLASS "h5".
           03 Screen1-La-7a, Label, 
              COL 93,00, LINE 21,62, LINES 2,62 CELLS, 
              SIZE 35,00 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 65, LABEL-OFFSET 0, 
              TITLE "Lieu de livraison", TRANSPARENT, 
              ATW-CSS-CLASS "h5".
           03 Screen1-La-3a, Label, 
              COL 3,57, LINE 71,15, LINES 1,92 CELLS, SIZE 21,86 CELLS, 
              COLOR IS 2, FONT IS Calibri10, ID IS 66, LABEL-OFFSET 0, 
              TITLE "Sortie du stock", TRANSPARENT.
           03 Screen1-La-msg, Label, 
              COL 36,71, LINE 79,92, LINES 1,38 CELLS, 
              SIZE 13,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 73, LABEL-OFFSET 0, 
              TRANSPARENT.
           03 Screen1-DaEf-JDLI, Entry-Field, 
              COL 28,86, LINE 57,69, LINES 2,46 CELLS, 
              SIZE 15,29 CELLS, 
              3-D, COLOR IS 2, ID IS 96, MAX-TEXT 2, 
              VALUE Screen1-DaEf-JDLI-BUF, 
              AFTER PROCEDURE Screen1-DaEf-JDLI-Ev-Msg-Validate, 
              EVENT PROCEDURE Screen1-DaEf-JDLI-Event-Proc.
           03 Screen1-La-1a, Label, 
              COL 138,57, LINE 54,85, LINES 1,92 CELLS, 
              SIZE 9,00 CELLS, 
              COLOR IS 2, FONT IS Calibri9, ID IS 56, LABEL-OFFSET 0, 
              TITLE "Marque", TRANSPARENT.
           03 Screen1-La-1aa, Label, 
              COL 138,57, LINE 58,31, LINES 1,92 CELLS, 
              SIZE 8,86 CELLS, 
              COLOR IS 2, FONT IS Calibri9, ID IS 60, LABEL-OFFSET 0, 
              TITLE "Type", TRANSPARENT.
           03 Screen1-La-1b, Label, 
              COL 66,71, LINE 54,85, LINES 1,92 CELLS, 
              SIZE 15,29 CELLS, 
              COLOR IS 2, FONT IS Calibri9, ID IS 59, LABEL-OFFSET 0, 
              TITLE "Remise", TRANSPARENT.
           03 Screen1-La-1ba, Label, 
              COL 66,71, LINE 64,23, LINES 1,92 CELLS, 
              SIZE 15,29 CELLS, 
              COLOR IS 2, FONT IS Calibri9, ID IS 74, LABEL-OFFSET 0, 
              TITLE "Niveau", TRANSPARENT.
           03 Screen1-Rb-classic, Radio-Button, 
              COL 154,57, LINE 8,69, LINES 1,15 CELLS, 
              SIZE 18,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 122, GROUP-VALUE 1, 
              ID IS 2, 
              TITLE "Classic".
           03 Screen1-Rb-coprop, Radio-Button, 
              COL 154,57, LINE 10,62, LINES 1,15 CELLS, 
              SIZE 18,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 122, GROUP-VALUE 2, 
              ID IS 87, 
              TITLE "Co-propriété".
           03 Screen1-Ef-2aa, Entry-Field, 
              COL 21,86, LINE 15,00, LINES 2,46 CELLS, SIZE 6,14 CELLS, 
              3-D, COLOR IS 2, ID IS 99.
           03 Screen1-Ef-2a, Entry-Field, 
              COL 28,57, LINE 15,00, LINES 2,46 CELLS, 
              SIZE 10,71 CELLS, 
              3-D, COLOR IS 2, ID IS 100, ATW-CSS-ID "champCobol3".
           03 Screen1-Ef-2aaa, Entry-Field, 
              COL 42,00, LINE 15,00, LINES 2,46 CELLS, 
              SIZE 30,57 CELLS, 
              3-D, COLOR IS 2, ID IS 108, ATW-CSS-ID "champCobol1".
           03 Screen1-Ef-2aaaa, Entry-Field, 
              COL 73,14, LINE 15,00, LINES 2,46 CELLS, 
              SIZE 30,57 CELLS, 
              3-D, COLOR IS 2, ID IS 110, ATW-CSS-ID "champCobol2".
           03 Screen1-La-8, Label, 
              COL 4,00, LINE 15,54, LINES 1,85 CELLS, SIZE 17,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 112, 
              LABEL-OFFSET 0, 
              TITLE "Commande n°", TRANSPARENT.
           03 Screen1-Pb-Terminer, Push-Button, 
              COL 82,57, LINE 79,23, LINES 24, SIZE 156, 
              BITMAP-HANDLE RAFRAICHIR32-BMP, BITMAP-NUMBER 1, 
              UNFRAMED, 
              ENABLED 0, EXCEPTION-VALUE 9840, FLAT, 
              FONT IS Small-Font, ID IS 22, TITLE-POSITION 2, SELF-ACT.
           03 Screen1-Fr-5, Frame, 
              COL 1,71, LINE 1,00, LINES 2,92 CELLS, SIZE 35,29 CELLS, 
              LOWERED, ID IS 90, BACKGROUND-LOW, 
              ATW-CSS-CLASS "breadcrumb".
           03 Screen1-La-10, Label, 
              COL 14,00, LINE 2,00, LINES 1,85 CELLS, SIZE 1,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 117, 
              LABEL-OFFSET 0, 
              TITLE "/", TRANSPARENT, 
              ATW-CSS-CLASS "breadcrumb-separator".
           03 Screen1-La-10a, Label, 
              COL 25,86, LINE 2,00, LINES 1,85 CELLS, SIZE 1,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 120, 
              LABEL-OFFSET 0, 
              TITLE "/", TRANSPARENT, 
              ATW-CSS-CLASS "breadcrumb-separator".
           03 Screen1-Pb-1, Push-Button, 
              COL 3,00, LINE 1,69, LINES 1,85 CELLS, SIZE 10,29 CELLS, 
              ID IS 91, 
              TITLE "1. En-tête", 
              ATW-CSS-CLASS "breadcrumb-item active".
           03 Screen1-Pb-1aa, Push-Button, 
              COL 28,29, LINE 1,69, LINES 1,85 CELLS, SIZE 7,29 CELLS, 
              ENABLED 0, ID IS 111, 
              TITLE "3. Pied", ATW-CSS-CLASS "breadcrumb-item".
           03 Screen1-Pb-Fonctions, Push-Button, 
              COL 37,57, LINE 1,46, LINES 24, SIZE 154, 
              BITMAP-HANDLE FLECHEB24-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 4501, FONT IS Large-Font, ID IS 121, 
              TITLE-POSITION 2, 
              TITLE "Autres fonctions", ATW-CSS-CLASS "button-autres".
           03 Screen1-Pb-AutresBoutons, Push-Button, 
              COL 169,86, LINE 1,38, LINES 24, SIZE 24, 
              BITMAP-HANDLE FLECHEB24-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 4500, FONT IS Large-Font, ID IS 123, 
              TITLE-POSITION 1, 
              TITLE "Plus d'actions", ATW-CSS-CLASS "fa-list".
           03 Screen1-Pb-Suivant, Push-Button, 
              COL 16,00, LINE 1,69, LINES 1,85 CELLS, SIZE 8,71 CELLS, 
              EXCEPTION-VALUE 9861, FONT IS Small-Font, ID IS 69, 
              SELF-ACT, 
              TITLE "2. Lignes", ATW-CSS-CLASS "breadcrumb-item".
       01 ScreenRech.
           03 ScreenRech-Ef-AR1, Entry-Field, 
              COL 16,00, LINE 1,92, LINES 1,38 CELLS, SIZE 5,14 CELLS, 
              3-D, COLOR IS 2, ID IS 4, VALUE W-ARTR1.
           03 ScreenRech-Ef-AR2, Entry-Field, 
              COL 21,86, LINE 1,92, LINES 1,38 CELLS, SIZE 25,00 CELLS, 
              3-D, COLOR IS 2, ID IS 5, VALUE W-ARTR2, 
              AFTER PROCEDURE ScreenRech-Ef-AR2-Aft-Procedure.
           03 ScreenRech-Pb-Valider, Push-Button, 
              COL 52,43, LINE 1,38, LINES 24, SIZE 24, 
              BITMAP-HANDLE VALIDER24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              ID IS 1, NO-TAB, TERMINATION-VALUE 9858, 
              TITLE "Valider".
           03 ScreenRech-Pb-Annuler, Push-Button, 
              COL 57,00, LINE 1,38, LINES 24, SIZE 24, 
              BITMAP-HANDLE ANNULER24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 9858, ID IS 2, NO-TAB, 
              TITLE "Annuler".
           03 ScreenRech-La-1, Label, 
              COL 2,00, LINE 2,08, LINES 1,38 CELLS, SIZE 14,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 3, LABEL-OFFSET 0, 
              TITLE "Article à rechercher", TRANSPARENT.
           03 ScreenRech-Pb-Liste, Push-Button, 
              COL 47,57, LINE 1,92, LINES 12, SIZE 12, 
              BITMAP-HANDLE ZOOMxxx12-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 2000, ID IS 6, NO-TAB, 
              TITLE "Recherche article".

      *{Bench}end

      *{Bench}linkpara
       PROCEDURE DIVISION USING LK-ZONE-PALM, LK-SBD-C.
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
           MOVE 7 TO Wpal-Color-Id
           MOVE 237 TO Wpal-Red
           MOVE 255 TO Wpal-Green
           MOVE 221 TO Wpal-Blue
           CALL "W$PALETTE" USING Wpalette-Set-Color, Wpalette-Data
           MOVE 12 TO Wpal-Color-Id
           MOVE 0 TO Wpal-Red
           MOVE 128 TO Wpal-Green
           MOVE 0 TO Wpal-Blue
           CALL "W$PALETTE" USING Wpalette-Set-Color, Wpalette-Data
           MOVE 15 TO Wpal-Color-Id
           MOVE 255 TO Wpal-Red
           MOVE 255 TO Wpal-Green
           MOVE 150 TO Wpal-Blue
           CALL "W$PALETTE" USING Wpalette-Set-Color, Wpalette-Data
      * set font
           PERFORM Acu-Init-Font
      * load bitmap
           PERFORM Acu-Init-Bmp
      * create pop-up menu
           PERFORM Acu-Init-Popup
      * open file
           PERFORM Acu-Open-Files
      *    After-Init
           .

       Acu-Init-Font.
      * font setting
           INITIALIZE WFONT-DATA Calibri10
           MOVE 10 TO WFONT-SIZE
           MOVE "Calibri" TO WFONT-NAME
           SET WFCHARSET-DEFAULT TO TRUE
           SET WFONT-BOLD TO FALSE
           SET WFONT-ITALIC TO FALSE
           SET WFONT-UNDERLINE TO FALSE
           SET WFONT-STRIKEOUT TO FALSE
           SET WFFAMILY-DONT-CARE TO TRUE
           SET WFONT-FIXED-PITCH TO FALSE
           CALL "W$FONT" USING WFONT-GET-FONT, Calibri10, WFONT-DATA
           INITIALIZE WFONT-DATA Calibri12
           MOVE 12 TO WFONT-SIZE
           MOVE "Calibri" TO WFONT-NAME
           SET WFCHARSET-DEFAULT TO TRUE
           SET WFONT-BOLD TO FALSE
           SET WFONT-ITALIC TO FALSE
           SET WFONT-UNDERLINE TO FALSE
           SET WFONT-STRIKEOUT TO FALSE
           SET WFFAMILY-DONT-CARE TO TRUE
           SET WFONT-FIXED-PITCH TO FALSE
           CALL "W$FONT" USING WFONT-GET-FONT, Calibri12, WFONT-DATA
           INITIALIZE WFONT-DATA Calibri9
           MOVE 9 TO WFONT-SIZE
           MOVE "Calibri" TO WFONT-NAME
           SET WFCHARSET-DEFAULT TO TRUE
           SET WFONT-BOLD TO FALSE
           SET WFONT-ITALIC TO FALSE
           SET WFONT-UNDERLINE TO FALSE
           SET WFONT-STRIKEOUT TO FALSE
           SET WFFAMILY-DONT-CARE TO TRUE
           SET WFONT-FIXED-PITCH TO FALSE
           CALL "W$FONT" USING WFONT-GET-FONT, Calibri9, WFONT-DATA
           INITIALIZE WFONT-DATA Calibri11
           MOVE 11 TO WFONT-SIZE
           MOVE "Calibri" TO WFONT-NAME
           SET WFCHARSET-DEFAULT TO TRUE
           SET WFONT-BOLD TO FALSE
           SET WFONT-ITALIC TO FALSE
           SET WFONT-UNDERLINE TO FALSE
           SET WFONT-STRIKEOUT TO FALSE
           SET WFFAMILY-DONT-CARE TO TRUE
           SET WFONT-FIXED-PITCH TO FALSE
           CALL "W$FONT" USING WFONT-GET-FONT, Calibri11, WFONT-DATA
           .

       Acu-Init-Bmp.
      * bitmap loading
           COPY RESOURCE "NOSERIE12.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "NOSERIE12.JPG", GIVING 
              NOSERIE12-JPG
           COPY RESOURCE "VALIDER16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "VALIDER16.BMP", GIVING 
              VALIDER16-BMP
           COPY RESOURCE "ANNULER16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ANNULER16.BMP", GIVING 
              ANNULER16-BMP
           COPY RESOURCE "IMPRIMER32.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "IMPRIMER32.BMP", GIVING 
              IMPRIMER32-BMP
           COPY RESOURCE "W:\mx\resource\MODIFIE16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "MODIFIE16.BMP", GIVING 
              MODIFIE16-BMP
           COPY RESOURCE "COLLAPSE7.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "COLLAPSE7.JPG", GIVING 
              COLLAPSE7-JPG
           COPY RESOURCE "ZOOMxxx10.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ZOOMxxx10.BMP", GIVING 
              ZOOMxxx10-BMP
           COPY RESOURCE "INFORMA12.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "INFORMA12.JPG", GIVING 
              INFORMA12-JPG
           COPY RESOURCE "DOLLARX12.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "DOLLARX12.JPG", GIVING 
              DOLLARX12-JPG
           COPY RESOURCE "ZOOMxxx12.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ZOOMxxx12.BMP", GIVING 
              ZOOMxxx12-BMP
           COPY RESOURCE "W:\mx\resource\IMPRIMER32.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "IMPRIMER32.BMP", GIVING 
              IMPRIMER32-BMP
           COPY RESOURCE "TERMINER32.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "TERMINER32.BMP", GIVING 
              TERMINER32-BMP
           COPY RESOURCE "W:\mx\resource\SAUVEGA16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "SAUVEGA16.BMP", GIVING 
              SAUVEGA16-BMP
           COPY RESOURCE "TROMBONE32.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "TROMBONE32.BMP", GIVING 
              TROMBONE32-BMP
           COPY RESOURCE "WARBLAN24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "WARBLAN24.JPG", GIVING 
              WARBLAN24-JPG
           COPY RESOURCE "TOUTCOC24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "TOUTCOC24.JPG", GIVING 
              TOUTCOC24-JPG
           COPY RESOURCE "TOUTDEC24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "TOUTDEC24.JPG", GIVING 
              TOUTDEC24-JPG
           COPY RESOURCE "RELIQOK16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "RELIQOK16.BMP", GIVING 
              RELIQOK16-BMP
           COPY RESOURCE "RELIQNO16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "RELIQNO16.BMP", GIVING 
              RELIQNO16-BMP
           COPY RESOURCE "VALIDER24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "VALIDER24.JPG", GIVING 
              VALIDER24-JPG
           COPY RESOURCE "ANNULER24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ANNULER24.JPG", GIVING 
              ANNULER24-JPG
           COPY RESOURCE "COLISXX16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "COLISXX16.BMP", GIVING 
              COLISXX16-BMP
           COPY RESOURCE "VALIDER16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "VALIDER16.BMP", GIVING 
              VALIDER16-BMP
           COPY RESOURCE "W:\mx\resource\ADDxxxx16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ADDxxxx16.BMP", GIVING 
              ADDxxxx16-BMP
           COPY RESOURCE "W:\mx\resource\SUPPRIM16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "SUPPRIM16.BMP", GIVING 
              SUPPRIM16-BMP
           COPY RESOURCE "DUPLIQU12.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "DUPLIQU12.BMP", GIVING 
              DUPLIQU12-BMP
           COPY RESOURCE "W:\mx\resource\RAFRAICHIR32.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "RAFRAICHIR32.BMP", 
              GIVING RAFRAICHIR32-BMP
           COPY RESOURCE "W:\mx\resource\FLECHEB24.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "FLECHEB24.BMP", GIVING 
              FLECHEB24-BMP
           .

       Acu-Init-Popup.
           PERFORM Acu-Screen2-Mn-2-Menu
           MOVE Menu-Handle TO Screen2-Mn-2-Handle
           PERFORM Acu-Screen1-Mn-Fonctions-Menu
           MOVE Menu-Handle TO Screen1-Mn-Fonctions-Handle
           PERFORM Acu-Screen1-Mn-Boutons-Menu
           MOVE Menu-Handle TO Screen1-Mn-Boutons-Handle
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
           IF Calibri10 NOT = NULL
              DESTROY Calibri10
              SET Calibri10 TO NULL
           END-IF
           IF Calibri12 NOT = NULL
              DESTROY Calibri12
              SET Calibri12 TO NULL
           END-IF
           IF Calibri9 NOT = NULL
              DESTROY Calibri9
              SET Calibri9 TO NULL
           END-IF
           IF Calibri11 NOT = NULL
              DESTROY Calibri11
              SET Calibri11 TO NULL
           END-IF
           .

       Acu-Exit-Bmp.
      * bitmap destroy
           IF NOSERIE12-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY NOSERIE12-JPG
              MOVE 0 TO NOSERIE12-JPG
           END-IF
           IF VALIDER16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY VALIDER16-BMP
              MOVE 0 TO VALIDER16-BMP
           END-IF
           IF ANNULER16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ANNULER16-BMP
              MOVE 0 TO ANNULER16-BMP
           END-IF
           IF IMPRIMER32-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY IMPRIMER32-BMP
              MOVE 0 TO IMPRIMER32-BMP
           END-IF
           IF MODIFIE16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY MODIFIE16-BMP
              MOVE 0 TO MODIFIE16-BMP
           END-IF
           IF COLLAPSE7-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY COLLAPSE7-JPG
              MOVE 0 TO COLLAPSE7-JPG
           END-IF
           IF ZOOMxxx10-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ZOOMxxx10-BMP
              MOVE 0 TO ZOOMxxx10-BMP
           END-IF
           IF INFORMA12-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY INFORMA12-JPG
              MOVE 0 TO INFORMA12-JPG
           END-IF
           IF DOLLARX12-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY DOLLARX12-JPG
              MOVE 0 TO DOLLARX12-JPG
           END-IF
           IF ZOOMxxx12-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ZOOMxxx12-BMP
              MOVE 0 TO ZOOMxxx12-BMP
           END-IF
           IF IMPRIMER32-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY IMPRIMER32-BMP
              MOVE 0 TO IMPRIMER32-BMP
           END-IF
           IF TERMINER32-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY TERMINER32-BMP
              MOVE 0 TO TERMINER32-BMP
           END-IF
           IF SAUVEGA16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY SAUVEGA16-BMP
              MOVE 0 TO SAUVEGA16-BMP
           END-IF
           IF TROMBONE32-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY TROMBONE32-BMP
              MOVE 0 TO TROMBONE32-BMP
           END-IF
           IF WARBLAN24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY WARBLAN24-JPG
              MOVE 0 TO WARBLAN24-JPG
           END-IF
           IF TOUTCOC24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY TOUTCOC24-JPG
              MOVE 0 TO TOUTCOC24-JPG
           END-IF
           IF TOUTDEC24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY TOUTDEC24-JPG
              MOVE 0 TO TOUTDEC24-JPG
           END-IF
           IF RELIQOK16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY RELIQOK16-BMP
              MOVE 0 TO RELIQOK16-BMP
           END-IF
           IF RELIQNO16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY RELIQNO16-BMP
              MOVE 0 TO RELIQNO16-BMP
           END-IF
           IF VALIDER24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY VALIDER24-JPG
              MOVE 0 TO VALIDER24-JPG
           END-IF
           IF ANNULER24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ANNULER24-JPG
              MOVE 0 TO ANNULER24-JPG
           END-IF
           IF COLISXX16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY COLISXX16-BMP
              MOVE 0 TO COLISXX16-BMP
           END-IF
           IF VALIDER16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY VALIDER16-BMP
              MOVE 0 TO VALIDER16-BMP
           END-IF
           IF ADDxxxx16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ADDxxxx16-BMP
              MOVE 0 TO ADDxxxx16-BMP
           END-IF
           IF SUPPRIM16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY SUPPRIM16-BMP
              MOVE 0 TO SUPPRIM16-BMP
           END-IF
           IF DUPLIQU12-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY DUPLIQU12-BMP
              MOVE 0 TO DUPLIQU12-BMP
           END-IF
           IF RAFRAICHIR32-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY RAFRAICHIR32-BMP
              MOVE 0 TO RAFRAICHIR32-BMP
           END-IF
           IF FLECHEB24-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY FLECHEB24-BMP
              MOVE 0 TO FLECHEB24-BMP
           END-IF
           .

       Acu-Open-Files.
      *    Before-Open
      *    After-Open
           .

       Acu-Screen2-Routine.
      *    Before-Routine
           PERFORM Acu-Screen2-Scrn
           PERFORM Acu-Screen2-Proc
      *    After-Routine
           .

       Acu-Screen3-Routine.
      *    Before-Routine
           PERFORM Acu-Screen3-Scrn
           PERFORM Acu-Screen3-Proc
      *    After-Routine
           .

       Acu-ScreenRUP-Routine.
      *    Before-Routine
           PERFORM Acu-ScreenRUP-Scrn
           PERFORM Acu-ScreenRUP-Proc
      *    After-Routine
           .

       Acu-ScreenLIV-Routine.
      *    Before-Routine
           PERFORM Acu-ScreenLIV-Scrn
           PERFORM Acu-ScreenLIV-Proc
      *    After-Routine
           .

       Acu-ScreenMarge-Routine.
      *    Before-Routine
           PERFORM Acu-ScreenMarge-Scrn
           PERFORM Acu-ScreenMarge-Proc
      *    After-Routine
           .

       Acu-Screen1-Routine.
      *    Before-Routine
           PERFORM Acu-Screen1-Scrn
           PERFORM Acu-Screen1-Proc
           PERFORM Screen1-Aft-Routine
           .

       Acu-ScreenRech-Routine.
      *    Before-Routine
           PERFORM Acu-ScreenRech-Scrn
           PERFORM Acu-ScreenRech-Proc
      *    After-Routine
           .

       Acu-Screen2-Scrn.
           PERFORM Acu-Screen2-Create-Win
           PERFORM Acu-Screen2-Init-Data
           .

       Acu-Screen3-Scrn.
           PERFORM Acu-Screen3-Create-Win
           PERFORM Acu-Screen3-Init-Data
           .

       Acu-ScreenRUP-Scrn.
           PERFORM Acu-ScreenRUP-Create-Win
           PERFORM Acu-ScreenRUP-Init-Data
           .

       Acu-ScreenLIV-Scrn.
           PERFORM Acu-ScreenLIV-Create-Win
           PERFORM Acu-ScreenLIV-Init-Data
           .

       Acu-ScreenMarge-Scrn.
           PERFORM Acu-ScreenMarge-Create-Win
           PERFORM Acu-ScreenMarge-Init-Data
           .

       Acu-Screen1-Scrn.
           PERFORM Acu-Screen1-Create-Win
           PERFORM Acu-Screen1-Init-Data
           .

       Acu-ScreenRech-Scrn.
           PERFORM Acu-ScreenRech-Create-Win
           PERFORM Acu-ScreenRech-Init-Data
           .

       Acu-Screen2-Create-Win.
           PERFORM Screen2-Bef-Create
      * display screen
              DISPLAY Floating GRAPHICAL WINDOW
                 LINES 82,62, SIZE 175,00, CELL HEIGHT 13, 
                 CELL WIDTH 7, BOXED, COLOR IS 65792, LABEL-OFFSET 0, 
                 LINK TO THREAD, NO SCROLL, TITLE-BAR, USER-GRAY, 
                 USER-WHITE, NO WRAP, ATW-CSS-ID "max_screen_sbd_2", 
                 EVENT PROCEDURE Screen2-Event-Proc, 
                 HANDLE IS Screen2-Handle
      * toolbar
           DISPLAY Screen2 UPON Screen2-Handle
      *    After-Create
           .

       Acu-Screen3-Create-Win.
           PERFORM Screen3-Bef-Create
      * display screen
              DISPLAY Floating GRAPHICAL WINDOW
                 LINES 85,77, SIZE 175,00, CELL HEIGHT 13, 
                 CELL WIDTH 7, BOXED, COLOR IS 65793, LABEL-OFFSET 0, 
                 LINK TO THREAD, NO SCROLL, TITLE-BAR, USER-GRAY, 
                 USER-WHITE, NO WRAP, ATW-CSS-ID "max_screen_sbd_3", 
                 EVENT PROCEDURE Screen3-Event-Proc, 
                 HANDLE IS Screen3-Handle
      * toolbar
           DISPLAY Screen3 UPON Screen3-Handle
      *    After-Create
           .

       Acu-ScreenRUP-Create-Win.
           PERFORM ScreenRUP-Bef-Create
      * display screen
              DISPLAY Floating GRAPHICAL WINDOW
                 LINES 20,08, SIZE 44,43, CELL HEIGHT 13, CELL WIDTH 7, 
                 COLOR IS 65730, LABEL-OFFSET 0, LINK TO THREAD, 
                 NO SCROLL, 
                 TITLE " RUPTURE DE STOCK", TITLE-BAR, USER-GRAY, 
                 USER-WHITE, NO WRAP, 
                 EVENT PROCEDURE ScreenRUP-Event-Proc, 
                 HANDLE IS ScreenRUP-Handle
      * toolbar
           DISPLAY ScreenRUP UPON ScreenRUP-Handle
      *    After-Create
           .

       Acu-ScreenLIV-Create-Win.
           PERFORM ScreenLIV-Bef-Create
      * display screen
              DISPLAY Floating GRAPHICAL WINDOW
                 LINES 28,62, SIZE 104,57, CELL HEIGHT 13, 
                 CELL WIDTH 7, BOXED, COLOR IS 65793, LABEL-OFFSET 0, 
                 LINK TO THREAD, MODELESS, NO SCROLL, 
                 TITLE ScreenLIV-Tit, TITLE-BAR, USER-GRAY, USER-WHITE, 
                 NO WRAP, 
                 EVENT PROCEDURE ScreenLIV-Event-Proc, 
                 HANDLE IS ScreenLIV-Handle
      * toolbar
           DISPLAY ScreenLIV UPON ScreenLIV-Handle
      *    After-Create
           .

       Acu-ScreenMarge-Create-Win.
      *    Before-Create
      * display screen
              DISPLAY Floating GRAPHICAL WINDOW
                 LINES 8,62, SIZE 30,29, CELL HEIGHT 13, CELL WIDTH 7, 
                 COLOR IS 65793, LABEL-OFFSET 0, LINK TO THREAD, 
                 MODELESS, NO SCROLL, TITLE MPL-MAGD, TITLE-BAR, 
                 USER-GRAY, USER-WHITE, NO WRAP, 
                 EVENT PROCEDURE Screen4-Event-Proc, 
                 HANDLE IS Screen4-Handle
      * toolbar
           DISPLAY ScreenMarge UPON Screen4-Handle
      *    After-Create
           .

       Acu-Screen1-Create-Win.
           PERFORM Screen1-Bef-Create
      * display screen
              DISPLAY Independent GRAPHICAL WINDOW
                 SCREEN LINE INIT-LINE, SCREEN COLUMN INIT-COLUMN, 
                 LINES 83,00, SIZE 175,00, CELL HEIGHT 13, 
                 CELL WIDTH 7, AUTO-MINIMIZE, COLOR IS 65793, 
                 LABEL-OFFSET 0, MODELESS, NO SCROLL, WITH SYSTEM MENU, 
                 TITLE PROLOG-PALM, TITLE-BAR, USER-GRAY, USER-WHITE, 
                 NO WRAP, ATW-CSS-ID "max_screen_sbd_1", 
                 EVENT PROCEDURE Screen1-Event-Proc, 
                 HANDLE IS Screen1-Handle
      * toolbar
           DISPLAY Screen1 UPON Screen1-Handle
      *    After-Create
           .

       Acu-ScreenRech-Create-Win.
           PERFORM ScreenRech-Bef-Create
      * display screen
              DISPLAY Floating GRAPHICAL WINDOW
                 LINES 3,46, SIZE 61,57, CELL HEIGHT 13, CELL WIDTH 7, 
                 COLOR IS 65793, LABEL-OFFSET 0, LINK TO THREAD, 
                 MODELESS, NO SCROLL, 
                 TITLE "Rechercher un article", TITLE-BAR, USER-GRAY, 
                 USER-WHITE, NO WRAP, 
                 HANDLE IS ScreenRech-Handle
      * toolbar
           DISPLAY ScreenRech UPON ScreenRech-Handle
      *    After-Create
           .

       Acu-Screen2-Init-Data.
      *    Before-Initdata
           PERFORM Acu-Screen2-Cm-TCO-Content
           PERFORM Acu-Screen2-Cm-CVM-Content
           PERFORM Acu-Screen2-DaGd-1-Content
           PERFORM Acu-Screen2-Cm-1-Content
           PERFORM Screen2-AfterInitData
           .

       Acu-Screen3-Init-Data.
      *    Before-Initdata
           PERFORM Acu-Screen3-Cm-MFA-Content
           PERFORM Acu-Screen3-Cm-TFA-Content
           PERFORM Acu-Screen3-DaGd-2-Content
           PERFORM Acu-Screen3-Cm-1-Content
           PERFORM Screen3-AfterInitData
           .

       Acu-ScreenRUP-Init-Data.
      *    Before-Initdata
           PERFORM ScreenRUP-Aft-Initdata
           .

       Acu-ScreenLIV-Init-Data.
      *    Before-Initdata
           PERFORM Acu-ScreenLIV-Gd-1-Content
           PERFORM ScreenLIV-Aft-Initdata
           .

       Acu-ScreenMarge-Init-Data.
      *    Before-Initdata
           PERFORM ScreenMarge-Aft-Initdata
           .

       Acu-Screen1-Init-Data.
      *    Before-Initdata
           PERFORM Acu-Screen1-Cm-Typ-Content
           PERFORM Acu-Screen1-Cm-TCO-Content
           PERFORM Screen1-AfterInitData
           .

       Acu-ScreenRech-Init-Data.
      *    Before-Initdata
           PERFORM ScreenRech-Aft-Initdata
           .
      * Screen2
       Acu-Screen2-Proc.
           PERFORM UNTIL Exit-Pushed
              ACCEPT Screen2  
                 ON EXCEPTION PERFORM Acu-Screen2-Evaluate-Func
              END-ACCEPT
              EVALUATE TRUE
      * Screen2-Pb-TTC Link To
              WHEN Key-Status = 1636
                 PERFORM Screen2-Pb-TTC-Link
      * Screen2-Pb-Precedent Link To
              WHEN Key-Status = 9862
                 PERFORM Screen2-Pb-Precedent-LinkTo
      * Screen2-Pb-Suivant Link To
              WHEN Key-Status = 9861
                 PERFORM Screen2-Pb-Suivant-LinkTo
      * Screen2-Pb-RC Link To
              WHEN Key-Status = 2012
                 PERFORM Screen2-Pb-RC-LinkTo
      * Screen2-Pb-Valider Link To
              WHEN Key-Status = 9858
                 PERFORM Screen2-Pb-Valider-LinkTo
      * Screen2-Pb-Ajouter Link To
              WHEN Key-Status = 9857
                 PERFORM Ajout-Ligne
      * Screen2-Pb-FicheArt Link To
              WHEN Key-Status = 9701
                 PERFORM Screen2-Pb-FicheArt-Link
      * Screen2-Pb-Recherche Link To
              WHEN Key-Status = 9806
                 PERFORM Screen2-Pb-Recherche-Link
              END-EVALUATE
           END-PERFORM
           DESTROY Screen2-Handle
           INITIALIZE Key-Status
           .
      * Screen3
       Acu-Screen3-Proc.
           PERFORM UNTIL Exit-Pushed
              ACCEPT Screen3  
                 ON EXCEPTION PERFORM Acu-Screen3-Evaluate-Func
              END-ACCEPT
              EVALUATE TRUE
      * Screen3-Pb-Modifier Link To
              WHEN Key-Status = 9854
                 PERFORM Screen3-Pb-Modifier-LinkTo
      * Screen3-Pb-Terminer Link To
              WHEN Key-Status = 9840
                 PERFORM Screen3-Pb-Terminer-LinkTo
      * Screen3-Pb-Sauvegarder Link To
              WHEN Key-Status = 9819
                 PERFORM Screen3-Pb-Sauvegarder-Link
      * Screen3-Pb-TXT Link To
              WHEN Key-Status = 126
                 PERFORM Screen3-Pb-TXT-Link
      * Screen3-Pb-Precedent Link To
              WHEN Key-Status = 9862
                 PERFORM Screen3-Pb-Precedent-LinkTo
              END-EVALUATE
           END-PERFORM
           DESTROY Screen3-Handle
           INITIALIZE Key-Status
           .
      * ScreenRUP
       Acu-ScreenRUP-Proc.
           PERFORM UNTIL Exit-Pushed
              ACCEPT ScreenRUP  
                 ON EXCEPTION PERFORM Acu-ScreenRUP-Evaluate-Func
              END-ACCEPT
           END-PERFORM
           DESTROY ScreenRUP-Handle
           INITIALIZE Key-Status
           .
      * ScreenLIV
       Acu-ScreenLIV-Proc.
           PERFORM UNTIL Exit-Pushed
              ACCEPT ScreenLIV  
                 ON EXCEPTION PERFORM Acu-ScreenLIV-Evaluate-Func
              END-ACCEPT
           END-PERFORM
           DESTROY ScreenLIV-Handle
           INITIALIZE Key-Status
           .
      * ScreenMarge
       Acu-ScreenMarge-Proc.
           PERFORM UNTIL Exit-Pushed
              ACCEPT ScreenMarge  
                 ON EXCEPTION PERFORM Acu-ScreenMarge-Evaluate-Func
              END-ACCEPT
           END-PERFORM
           DESTROY Screen4-Handle
           INITIALIZE Key-Status
           .
      * Screen1
       Acu-Screen1-Proc.
           PERFORM UNTIL Exit-Pushed
              ACCEPT Screen1  
                 ON EXCEPTION PERFORM Acu-Screen1-Evaluate-Func
              END-ACCEPT
              EVALUATE TRUE
      * Screen1-Pb-Creer Link To
              WHEN Key-Status = 9853
                 PERFORM Screen1-Pb-Creer-LinkTo
      * Screen1-Pb-Agence Link To
              WHEN Key-Status = 1011
                 PERFORM Screen1-Pb-Agence-LinkTo
      * Screen1-Pb-Date Link To
              WHEN Key-Status = 1013
                 PERFORM Screen1-Pb-Date-LinkTo
              END-EVALUATE
           END-PERFORM
           DESTROY Screen1-Handle
           INITIALIZE Key-Status
           .
      * ScreenRech
       Acu-ScreenRech-Proc.
           PERFORM UNTIL Exit-Pushed
              ACCEPT ScreenRech  
                 ON EXCEPTION PERFORM Acu-ScreenRech-Evaluate-Func
              END-ACCEPT
              EVALUATE TRUE
      * ScreenRech-Pb-Valider Link To
              WHEN Key-Status = 9858
                 PERFORM ScreenRech-Pb-Valider-Link
              END-EVALUATE
           END-PERFORM
           DESTROY ScreenRech-Handle
           INITIALIZE Key-Status
           .

      * Screen2-Cm-TCO
       Acu-Screen2-Cm-TCO-Content.
           .

      * Screen2-Cm-CVM
       Acu-Screen2-Cm-CVM-Content.
           .

      * Screen2-DaGd-1
       Acu-Screen2-DaGd-1-Content.
      * Cells Settings
           MODIFY Screen2-DaGd-1, X = 1, Y = 1, 
              CELL-COLOR = W-Heading-Color, CELL-FONT = Small-Font, 
              CELL-DATA = "T", 
           MODIFY Screen2-DaGd-1, X = 2, Y = 1, 
              CELL-COLOR = W-Heading-Color, CELL-FONT = Small-Font, 
              CELL-DATA = "Produit", 
           MODIFY Screen2-DaGd-1, X = 3, Y = 1, 
              CELL-COLOR = W-Heading-Color, CELL-FONT = Small-Font, 
              CELL-DATA = "Description", 
           MODIFY Screen2-DaGd-1, X = 4, Y = 1, 
              CELL-COLOR = W-Heading-Color, CELL-FONT = Small-Font, 
              CELL-DATA = "Quantité", 
           MODIFY Screen2-DaGd-1, X = 5, Y = 1, 
              CELL-COLOR = W-Heading-Color, CELL-FONT = Small-Font, 
              CELL-DATA = "PU Brut", 
           MODIFY Screen2-DaGd-1, X = 6, Y = 1, 
              CELL-COLOR = W-Heading-Color, CELL-FONT = Small-Font, 
              CELL-DATA = "% R", 
           MODIFY Screen2-DaGd-1, X = 7, Y = 1, 
              CELL-COLOR = W-Heading-Color, CELL-FONT = Small-Font, 
              CELL-DATA = "PU Net", 
           MODIFY Screen2-DaGd-1, X = 8, Y = 1, 
              CELL-COLOR = W-Heading-Color, CELL-FONT = Small-Font, 
              CELL-DATA = "Montant", 
           MODIFY Screen2-DaGd-1, X = 9, Y = 1, 
              CELL-COLOR = W-Heading-Color, CELL-FONT = Small-Font, 
              CELL-DATA = "S", 
           MODIFY Screen2-DaGd-1, X = 10, Y = 1, 
              CELL-COLOR = W-Heading-Color, CELL-FONT = Small-Font, 
              CELL-DATA = "P", 
           MODIFY Screen2-DaGd-1, X = 11, Y = 1, CELL-DATA = "Marge", 
           MODIFY Screen2-DaGd-1, X = 12, Y = 1, CELL-DATA = "% MB", 
           .

      * Screen2-Cm-1
       Acu-Screen2-Cm-1-Content.
           MODIFY Screen2-Cm-1, MASS-UPDATE = 1, RESET-LIST = 1
           MODIFY Screen2-Cm-1, ITEM-TO-ADD = TABLE 
              Screen2-Cm-1-Container
           MODIFY Screen2-Cm-1, MASS-UPDATE = 0
           MODIFY Screen2-Cm-1, VALUE Screen2-Cm-1-Value
           .

      * Screen3-Cm-MFA
       Acu-Screen3-Cm-MFA-Content.
           .

      * Screen3-Cm-TFA
       Acu-Screen3-Cm-TFA-Content.
           .

      * Screen3-DaGd-2
       Acu-Screen3-DaGd-2-Content.
      * Cells Settings
           MODIFY Screen3-DaGd-2, X = 1, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, 
           MODIFY Screen3-DaGd-2, X = 2, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = 
              "        Mode paiement", 
           MODIFY Screen3-DaGd-2, X = 3, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, 
           MODIFY Screen3-DaGd-2, X = 4, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "Ech", 
           MODIFY Screen3-DaGd-2, X = 5, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "éance", 
           MODIFY Screen3-DaGd-2, X = 6, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, 
           MODIFY Screen3-DaGd-2, X = 7, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "     Terme", 
           MODIFY Screen3-DaGd-2, X = 8, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "Echéance prévue", 
           MODIFY Screen3-DaGd-2, X = 9, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "%", 
           MODIFY Screen3-DaGd-2, X = 10, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "Montant échéance", 
           .

      * Screen3-Cm-1
       Acu-Screen3-Cm-1-Content.
           MODIFY Screen3-Cm-1, MASS-UPDATE = 1, RESET-LIST = 1
           MODIFY Screen3-Cm-1, ITEM-TO-ADD = TABLE 
              Screen3-Cm-1-Container
           MODIFY Screen3-Cm-1, MASS-UPDATE = 0
           .

      * ScreenLIV-Gd-1
       Acu-ScreenLIV-Gd-1-Content.
      * Cells Settings
           MODIFY ScreenLIV-Gd-1, X = 1, Y = 1, CELL-DATA = "T", 
           MODIFY ScreenLIV-Gd-1, X = 2, Y = 1, CELL-DATA = "Produit", 
           MODIFY ScreenLIV-Gd-1, X = 3, Y = 1, CELL-DATA = 
              "Description", 
           MODIFY ScreenLIV-Gd-1, X = 4, Y = 1, CELL-DATA = "Proposé", 
           MODIFY ScreenLIV-Gd-1, X = 5, Y = 1, CELL-DATA = "Commandé", 
           MODIFY ScreenLIV-Gd-1, X = 6, Y = 1, CELL-DATA = "Livré", 
           MODIFY ScreenLIV-Gd-1, X = 7, Y = 1, CELL-DATA = "Rel", 
           MODIFY ScreenLIV-Gd-1, X = 8, Y = 1, CELL-DATA = "Stock", 
           .

      * Screen1-Cm-Typ
       Acu-Screen1-Cm-Typ-Content.
           .

      * Screen1-Cm-TCO
       Acu-Screen1-Cm-TCO-Content.
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
      * Screen2-Pb-Marge Link To
              WHEN Key-Status = 9860
                 PERFORM Screen2-Pb-Marge-Link
      * Screen2-Pb-Serie Link To
              WHEN Key-Status = 1031
                 PERFORM Screen2-Pb-Serie-Link
      * Screen2-Pb-Annuler Link To
              WHEN Key-Status = 2008
                 PERFORM Screen2-Pb-Annuler-LinkTo
      * Screen2-Pb-Supprimer Link To
              WHEN Key-Status = 9856
                 PERFORM Screen2-Pb-Supprimer-LinkTo
      * Screen2-Pb-Terminer Link To
              WHEN Key-Status = 9840
                 PERFORM Screen2-Pb-Terminer-LinkTo
      * Screen2-Pb-Imprimer Link To
              WHEN Key-Status = 9816
                 PERFORM Screen2-Pb-Imprimer-LinkTo
      * Screen2-Pb-Modifier Link To
              WHEN Key-Status = 9854
                 PERFORM Screen2-Pb-Modifier-LinkTo
      * Screen2-Pb-Liste Link To
              WHEN Key-Status = 1007
                 PERFORM Screen2-Pb-Liste-LinkTo
      * Screen2-Pb-Ags Link To
              WHEN Key-Status = 2050
                 PERFORM Screen2-Pb-Ags-Link
      * MI-Articles Link To
              WHEN Key-Status = 1001
                 PERFORM Call-Liste-Art
      * MI-Famillesarticles Link To
              WHEN Key-Status = 1005
                 PERFORM Call-Liste-Fsa
      * Screen2-Pb-ListeFou Link To
              WHEN Key-Status = 1066
                 PERFORM Call-Liste-Fou
      * Screen2-Pb-Doc Link To
              WHEN Key-Status = 1021
                 PERFORM Screen2-Pb-Doc-Link
      * Screen2-Pb-AppliquerForfait Link To
              WHEN Key-Status = 1085
                 PERFORM Applic-Forfait
           END-EVALUATE
           PERFORM Screen2-LinkTo
           MOVE 1 TO Accept-Control
           .

      * Screen3
       Acu-Screen3-Evaluate-Func.
           EVALUATE TRUE
              WHEN Exit-Pushed
                 PERFORM Acu-Screen3-Exit
              WHEN Event-Occurred
                 IF Event-Type = Cmd-Close
                    PERFORM Acu-Screen3-Exit
                 END-IF
      * Screen3-Pb-Imprimer Link To
              WHEN Key-Status = 9816
                 PERFORM Screen3-Pb-Imprimer-Link
      * Screen3-Pb-Attach Link To
              WHEN Key-Status = 6854
                 PERFORM Screen3-Pb-Attach-Link
           END-EVALUATE
           MOVE 1 TO Accept-Control
           .

      * ScreenRUP
       Acu-ScreenRUP-Evaluate-Func.
           EVALUATE TRUE
              WHEN Exit-Pushed
                 PERFORM Acu-ScreenRUP-Exit
              WHEN Event-Occurred
                 IF Event-Type = Cmd-Close
                    PERFORM Acu-ScreenRUP-Exit
                 END-IF
      * ScreenRUP-Pb-Sortie Link To
              WHEN Key-Status = 6702
                 PERFORM ScreenRUP-Pb-Sortie-Link
      * ScreenRUP-Pb-Cde Link To
              WHEN Key-Status = 6703
                 PERFORM ScreenRUP-Pb-Cde-Link
      * ScreenRUP-Pb-Vmanque Link To
              WHEN Key-Status = 6706
                 PERFORM ScreenRUP-Pb-Vmanque-Link
      * ScreenRUP-Pb-Annuler Link To
              WHEN Key-Status = 6705
                 PERFORM ScreenRUP-Pb-Annuler-Link
      * ScreenRUP-Pb-LivPart Link To
              WHEN Key-Status = 6709
                 PERFORM ScreenRUP-Pb-LivPart-Link
      * ScreenRUP-Pb-ValidLP Link To
              WHEN Key-Status = 9858
                 PERFORM ScreenRUP-Pb-ValidLP-Link
      * ScreenRUP-Pb-AnnulLP Link To
              WHEN Key-Status = 9860
                 PERFORM ScreenRUP-Pb-AnnulLP-Link
           END-EVALUATE
           MOVE 1 TO Accept-Control
           .

      * ScreenLIV
       Acu-ScreenLIV-Evaluate-Func.
           EVALUATE TRUE
              WHEN Exit-Pushed
                 PERFORM Acu-ScreenLIV-Exit
              WHEN Event-Occurred
                 IF Event-Type = Cmd-Close
                    PERFORM Acu-ScreenLIV-Exit
                 END-IF
      * ScreenLIV-Pb-Livrer Link To
              WHEN Key-Status = 1081
                 PERFORM ScreenLIV-Pb-Livrer-Link
      * ScreenLIV-Pb-Annuler Link To
              WHEN Key-Status = 1082
                 PERFORM ScreenLIV-Pb-Annuler-Link
      * ScreenLIV-Pb-Valider Link To
              WHEN Key-Status = 1101
                 PERFORM ScreenLIV-Pb-Valider-Link
      * ScreenLIV-Pb-Abandon Link To
              WHEN Key-Status = 1102
                 PERFORM ScreenLIV-Pb-Abandon-Link
           END-EVALUATE
           MOVE 1 TO Accept-Control
           .

      * ScreenMarge
       Acu-ScreenMarge-Evaluate-Func.
           EVALUATE TRUE
              WHEN Exit-Pushed
                 PERFORM Acu-ScreenMarge-Exit
              WHEN Event-Occurred
                 IF Event-Type = Cmd-Close
                    PERFORM Acu-ScreenMarge-Exit
                 END-IF
      * ScreenMarge-Pb-Valider Link To
              WHEN Key-Status = 9858
                 PERFORM ScreenMarge-Pb-Valider-Link
      * ScreenMarge-Pb-Annuler Link To
              WHEN Key-Status = 1302
                 PERFORM ScreenMarge-Pb-Annuler-Link
           END-EVALUATE
           MOVE 1 TO Accept-Control
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
      * Screen1-Pb-ListeBon Link To
              WHEN Key-Status = 1007
                 PERFORM Screen1-Pb-ListeBon-LinkTo
      * Screen1-Pb-Modifier Link To
              WHEN Key-Status = 9854
                 PERFORM Screen1-Pb-Modifier-LinkTo
      * Screen1-Pb-Sauvegarder Link To
              WHEN Key-Status = 9819
                 PERFORM Screen1-Pb-Sauvegarder-LinkTo
      * Screen1-Pb-Supprimer Link To
              WHEN Key-Status = 9856
                 PERFORM Screen1-Pb-Supprimer-LinkTo
      * Screen1-Pb-Imprimer Link To
              WHEN Key-Status = 9816
                 PERFORM Screen1-Pb-Imprimer-LinkTo
      * Screen1-Pb-ListeCli Link To
              WHEN Key-Status = 9806
                 PERFORM Screen1-Pb-ListeCli-LinkTo
      * Screen1-Pb-Ags Link To
              WHEN Key-Status = 1631
                 PERFORM Screen1-Pb-Ags-Link
      * Screen1-Pb-Dps Link To
              WHEN Key-Status = 1632
                 PERFORM Screen1-Pb-Dps-Link
      * Screen1-Pb-AjoutBon Link To
              WHEN Key-Status = 1040
                 PERFORM Screen1-Pb-AjoutBon-Link
      * Screen1-Pb-Itc Link To
              WHEN Key-Status = 1018
                 PERFORM Screen1-Ef-Itc-Ev-Cmd-Goto
      * Screen1-Pb-Terminer Link To
              WHEN Key-Status = 9840
                 PERFORM Screen1-Pb-Terminer-LinkTo
      * Screen1-Pb-Fonctions Link To
              WHEN Key-Status = 4501
                 PERFORM Screen1-Pb-Fonctions-Link
      * MI-SaisiepiècessurOR Link To
              WHEN Key-Status = 6001
                 PERFORM Screen1-Mn-1-MI-SaisiepiecessurOR-Link
      * MI-RetoursdepiècessurOR Link To
              WHEN Key-Status = 6002
                 PERFORM Screen1-Mn-1-MI-RetoursdepiecessurOR-Link
      * MI-PrestationssurOR Link To
              WHEN Key-Status = 6003
                 PERFORM Screen1-Mn-1-MI-PrestationssurOR-Link
      * MI-BLpiècessousgarantie Link To
              WHEN Key-Status = 6004
                 PERFORM Screen1-Mn-1-MI-BLpiecessousgarantie-Link
      * MI-ImportdevisSAV Link To
              WHEN Key-Status = 6005
                 PERFORM Screen1-Mn-1-MI-ImportdevisSAV-Link
      * MI-Encaissementdécaissement Link To
              WHEN Key-Status = 6006
                 PERFORM Screen1-Mn-1-MI-Encaissementdecaissement-Link
      * Screen1-Pb-AutresBoutons Link To
              WHEN Key-Status = 4500
                 PERFORM Screen1-Pb-AutresBoutons-Link
      * MI-Dupliquer Link To
              WHEN Key-Status = 2328
                 PERFORM Screen1-Pb-Dupliquer-Link
      * MI-Supprimer Link To
              WHEN Key-Status = 2329
                 PERFORM Screen1-Pb-Supprimer-LinkTo
      * Screen1-Pb-Suivant Link To
              WHEN Key-Status = 9861
                 PERFORM Screen1-Pb-Lignes-LinkTo
           END-EVALUATE
           MOVE 1 TO Accept-Control
           .

      * ScreenRech
       Acu-ScreenRech-Evaluate-Func.
           EVALUATE TRUE
              WHEN Exit-Pushed
                 PERFORM Acu-ScreenRech-Exit
              WHEN Event-Occurred
                 IF Event-Type = Cmd-Close
                    PERFORM Acu-ScreenRech-Exit
                 END-IF
      * ScreenRech-Pb-Annuler Link To
              WHEN Key-Status = 9858
                 PERFORM ScreenRech-Pb-Annuler-Link
      * ScreenRech-Pb-Liste Link To
              WHEN Key-Status = 2000
                 PERFORM ScreenRech-Pb-Liste-Link
           END-EVALUATE
           MOVE 1 TO Accept-Control
           .

       Acu-Close-Files.
      *    Before-Close
      *    After-Close
           .

      * MXFAMART

      * MXART

      * MXCLID

      * MXGRAFAM

      * MXPREGEN

      * MXARTSA

      * MXPREGENV

      * MXPARAM

      * COBCAP

      * MXBDIS

      * MXAGEDIS

      * MXAGENCE

      * MXPARDIS

      * MXMARQUE

      * MXLDIS

      * MXHISVTE

      * MXCLI

      * MXCATFOU

      * MXGRAFAD

      * MXFOU

      * MXART2

      * MXDOCTEC

      * ARTSA2

      * MXLDIS2

      * MXBDIS2

      * MXAGENCE2

      * MXCOMMENT

      * INTSEL

      * MXCLI2

      * MXAGENCE3

      * ATTACH

       Acu-Screen2-Exit.
           SET Exit-Pushed TO TRUE
           .

       Acu-Screen3-Exit.
           SET Exit-Pushed TO TRUE
           .

       Acu-ScreenRUP-Exit.
           SET Exit-Pushed TO TRUE
           .

       Acu-ScreenLIV-Exit.
           SET Exit-Pushed TO TRUE
           .

       Acu-ScreenMarge-Exit.
           SET Exit-Pushed TO TRUE
           .

       Acu-Screen1-Exit.
           SET Exit-Pushed TO TRUE
           .

       Acu-ScreenRech-Exit.
           SET Exit-Pushed TO TRUE
           .

      * Screen2-Mn-2
       Acu-Screen2-Mn-2-Menu.
           PERFORM Acu-Screen2-Mn-2
              THRU Acu-Screen2-Mn-2-Exit.

       Acu-Screen2-Mn-2.
           CALL "W$MENU" USING Wmenu-New-Popup GIVING Menu-Handle
           IF Menu-Handle = ZERO
              GO TO Acu-Screen2-Mn-2-Exit
           END-IF
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, 
              "Articles", 1001
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, 
              "Familles articles", 1005
           .

       Acu-Screen2-Mn-2-Exit.
           MOVE ZERO TO Return-Code.

      * Screen1-Mn-Fonctions
       Acu-Screen1-Mn-Fonctions-Menu.
           PERFORM Acu-Screen1-Mn-Fonctions
              THRU Acu-Screen1-Mn-Fonctions-Exit.

       Acu-Screen1-Mn-Fonctions.
           CALL "W$MENU" USING Wmenu-New-Popup GIVING Menu-Handle
           IF Menu-Handle = ZERO
              GO TO Acu-Screen1-Mn-Fonctions-Exit
           END-IF
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, 
              "Sortie de pièces sur OR", 6001
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, 
              "Retours de pièces sur OR", 6002
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, 
              "Prestations sur OR", 6003
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, 
              "B/L pièces sous garantie", 6004
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, 
              "Import devis  SAV", 6005
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, 
              "Encaissement / décaissement", 6006
           .

       Acu-Screen1-Mn-Fonctions-Exit.
           MOVE ZERO TO Return-Code.

      * Screen1-Mn-Boutons
       Acu-Screen1-Mn-Boutons-Menu.
           PERFORM Acu-Screen1-Mn-Boutons
              THRU Acu-Screen1-Mn-Boutons-Exit.

       Acu-Screen1-Mn-Boutons.
           CALL "W$MENU" USING Wmenu-New-Popup GIVING Menu-Handle
           IF Menu-Handle = ZERO
              GO TO Acu-Screen1-Mn-Boutons-Exit
           END-IF
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, 
              "Dupliquer", 2328
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, 
              "Supprimer", 2329
           .

       Acu-Screen1-Mn-Boutons-Exit.
           MOVE ZERO TO Return-Code.


       Screen2-Event-Proc.
           .

       Screen2-Cm-TCO-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Ntf-Selchange
              PERFORM Screen2-Cm-TCO-Ev-Ntf-Selchange
           END-EVALUATE
           .

       Screen2-Cm-CVM-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Ntf-Selchange
              PERFORM Screen2-Cm-CVM-Ev-Ntf-Selchange
           END-EVALUATE
           .

       Screen2-DaEf-Mon-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen2-DaEf-Mon-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen2-Ef-MOT-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Ntf-Changed
              PERFORM ligne-modifiee
           END-EVALUATE
           .

       Screen2-DaGd-1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Begin-Drag
              PERFORM Screen2-DaGd-1-Ev-Msg-Begin-Drag
           WHEN Msg-Begin-Entry
              PERFORM Screen2-DaGd-1-Ev-Msg-Begin-Entry
           WHEN Msg-End-Drag
              PERFORM Screen2-DaGd-1-Ev-Msg-End-Drag
           WHEN Msg-Goto-Cell
              PERFORM Screen2-DaGd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell-Drag
              PERFORM Screen2-DaGd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell-Mouse
              PERFORM Screen2-DaGd-1-Ev-Msg-Goto-Cell
           END-EVALUATE
           .

       Screen2-DaRb-INP0-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen2-DaRb-INP0-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen2-DaRb-INP4-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen2-DaRb-INP4-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen2-DaRb-INP9-Event-Proc.
           .

       Screen2-Ef-Ar1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen2-Ef-Ar1-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen2-Ef-Fou-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen2-Ef-Fou-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen2-Ef-Pac-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen2-Ef-Pac-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen2-Ef-Des-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Ntf-Changed
              PERFORM ligne-modifiee
           END-EVALUATE
           .

       Screen2-DaEf-Rem-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Ntf-Changed
              PERFORM Ligne-Modifiee
           WHEN Msg-Validate
              EVALUATE Event-Control-Id
              WHEN 11
                 PERFORM Screen2-DaEf-Pub-Ev-Msg-Validate
              END-EVALUATE
           END-EVALUATE
           .

       Screen2-DaCb-Isq-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen2-DaCb-Isq-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen2-DaCb-EXC-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM ligne-modifiee
           END-EVALUATE
           .

       Screen2-DaEf-Pun-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen2-DaEf-Pun-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen2-Pb-RC-Event-Proc.
           .

       Screen2-DaRb-PZE0-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen2-DaRb-PZE0-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen2-DaRb-PZE1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen2-DaRb-PZE1-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen2-DaEf-REC1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen2-DaEf-REC1-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen2-DaEf-REC2-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen2-DaEf-REC2-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen2-DaEf-REC3-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen2-DaEf-REC3-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen2-DaEf-REC4-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen2-DaEf-REC4-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen2-DaEf-REC5-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen2-DaEf-REC5-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen2-DaEf-REC6-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen2-DaEf-REC6-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen2-DaRb-PZE2-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen2-DaRb-PZE2-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen2-DaRb-PZE3-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen2-DaRb-PZE3-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen2-DaCb-TLI-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen2-DaCb-TLI-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen2-Cb-PZE4-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen2-Cb-PZE4-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-DaEf-JDLI-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-DaEf-JDLI-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-DaEf-MDLI-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-DaEf-MDLI-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen2-DaEf-Ags-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen2-DaEf-Ags-Ev-Msg-Validate
           WHEN Ntf-Changed
              PERFORM Ligne-Modifiee
           END-EVALUATE
           .

       Screen1-Ef-Bon-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-Ef-Bon-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen3-Event-Proc.
           .

       Screen3-DaRb-IFA1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen3-DaRb-IFA1-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen3-DaRb-IFA0-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen3-DaRb-IFA0-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen3-Cm-TFA-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Ntf-Selchange
              PERFORM Screen3-Cm-TFA-Ev-Ntf-Selchange
           END-EVALUATE
           .

       Screen3-DaCb-TTR-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen3-DaCb-TTR-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen3-DaEf-NPA-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen3-DaEf-NPA-Ev-Ntf-Changed
           WHEN Ntf-Changed
              PERFORM Screen3-DaEf-NPA-Ev-Ntf-Changed
           END-EVALUATE
           .

       Screen3-DaCb-MPA-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen3-DaCb-MPA-Click
           END-EVALUATE
           .

       Screen3-DaGd-1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Begin-Entry
              PERFORM Screen3-DaGd-2-Ev-Msg-Begin-Entry
           WHEN Msg-Bitmap-Clicked
              PERFORM Screen3-DaGd-2-Ev-Msg-Bitmap-Clicked
           WHEN Msg-Finish-Entry
              PERFORM Screen3-DaGd-2-Ev-Msg-Finish-Entry
           WHEN Msg-Goto-Cell
              PERFORM Screen3-DaGd-2-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell-Drag
              PERFORM Screen3-DaGd-2-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell-Mouse
              PERFORM Screen3-DaGd-2-Ev-Msg-Goto-Cell
           END-EVALUATE
           .

       Screen3-DaCb-ILI-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen3-DaCb-ILI-Ev-Cmd-Clicked
           END-EVALUATE
           .

       ScreenRUP-Event-Proc.
           .

       ScreenRUP-Ef-QTL-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM ScreenRUP-Ef-QTL-Ev-Msg-Validate
           END-EVALUATE
           .

       ScreenRUP-Ef-QTC-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM ScreenRUP-Ef-QTC-Ev-Msg-Validate
           END-EVALUATE
           .

       ScreenLIV-Event-Proc.
           .

       ScreenLIV-Gd-1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Begin-Entry
              PERFORM ScreenLIV-Gd-1-Ev-Msg-Begin-Entry
           WHEN Msg-Bitmap-Clicked
              PERFORM ScreenLIV-Gd-1-Ev-Msg-Bitmap-Clicked
           WHEN Msg-Finish-Entry
              PERFORM ScreenLIV-Gd-1-Ev-Msg-Finish-Entry
           WHEN Msg-Goto-Cell
              PERFORM ScreenLIV-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell-Drag
              PERFORM ScreenLIV-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell-Mouse
              PERFORM ScreenLIV-Gd-1-Ev-Msg-Goto-Cell
           END-EVALUATE
           .

       Screen4-Event-Proc.
           .

       ScreenMarge-Ef-Aut-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM ScreenMarge-Ef-Aut-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Close
              PERFORM Screen1-Pb-Quitter-LinkTo
           END-EVALUATE
           .

       Screen1-Cm-Typ-Event-Proc.
           .

       Screen1-Cm-Typ-Exception-Proc.
      * 
           IF Event-Occurred
              EVALUATE Event-Type
              WHEN Ntf-Selchange
                 PERFORM Screen1-Cm-Typ-Ex-Ntf-Selchange
              END-EVALUATE
           END-IF
           .

       Screen1-Ef-Cli-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-Ef-Cli-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-Ef-LRAI-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-Ef-LRAI-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-Ef-LPOS-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-Ef-LPOS-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-DaCb-IFD-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-DaCb-IFD-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-DaRb-IRE0-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-DaRb-IRE0-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-DaRb-IRE1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-DaRb-IRE1-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-DaRb-IRE2-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-DaRb-IRE2-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-DaRb-IRE9-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-DaRb-IRE9-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-DaEf-Naf-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-DaEf-Naf-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-Cb-ICP-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-Cb-ICP-Ev-Cmd-Clicked
           END-EVALUATE
           .
      ***   start event editor code   ***
      *    COPY A METTRE DANS LE SOURCE
      *     COPY "W:\MX\COPY\LK-MCLI-L.WRK".
      *     COPY "W:\MX\COPY\LK-MBDI-L.WRK".
      *     COPY "W:\MISTRAL\COPY\TABECH.WRK".
      *     COPY "W:\MISTRAL\COPY\TABTER.WRK".
      *     COPY "W:\MISTRAL\COPY\CALECHEA.WRK".
      *     COPY "W:\MISTRAL\COPY\LK-TPA-L.WRK".
      *     COPY "W:\MISTRAL\COPY\LK-ECH-L.WRK".
      *     COPY "W:\MISTRAL\COPY\LK-TER-L.WRK".
      *     COPY "W:\MX\COPY\LK-MART-L.WRK".
      *     COPY "W:\MISTRAL\COPY\EF-TEL.WRK".
      *     COPY "W:\MISTRAL\COPY\EF-POS.WRK".
      *     COPY "W:\MISTRAL\COPY\EF-DATE.WRK".
      *     COPY "W:\MX\COPY\LK-MTYM-L.WRK".
      *     COPY "W:\MX\COPY\CAL-PV-ART.WRK".
      *     COPY "W:\MX\COPY\CAL-MARGE.WRK".
      *     COPY "W:\MX\COPY\LK-SCODART-L.WRK".
      *     COPY "W:\mx\copy\tspvte.wrk".
      *     COPY "W:\mistral\copy\LK-LISTE.wrk".
      *     COPY "W:\mx\copy\LK-ASA-C.wrk".
      *     COPY "W:\mx\copy\Mep-Permis.wrk".
      *     COPY "W:\mx\copy\LK-MGFA-T.wrk".
      *     COPY "W:\mx\copy\LK-VCF-C.wrk".
      *     COPY "W:\mx\copy\LK-MFOU-L.wrk".
      *     COPY "W:\mistral\copy\LK-EXIMOD.wrk".
      *     COPY "W:\mistral\copy\LK-IMPRIME.wrk".
      *     COPY "W:\mx\copy\LK-CDOCTEC.wrk".
      *     COPY "W:\mx\copy\ControlePeriode.wrk".
      *     COPY "W:\mistral\copy\Mis-EnregOccupe.wrk".
      *     COPY "W:\mx\copy\LK-CCOMMENT.wrk".
      *     COPY "W:\mx\copy\Cm-Mois-Ouvert.wrk".
      *     COPY "W:\mx\copy\LK-ART-C.wrk".

       COPY "W:/mistral/copy/envmis.cbl".
       COPY "W:/mx/copy/calechea.cbl".
       COPY "W:/mx/copy/CAL-MARGE.cbl".
       COPY "W:/mx/copy/CAL-PV-ART-D.cbl".
       COPY "W:/mx/copy/CAL-PV-CTF-D.cbl".
       COPY "W:/mx/copy/MajHisvte-D.cbl".
       COPY "W:/mx/copy/maj-artsa-sbd.cbl".
       COPY "W:/mx/copy/copy-sbd-c.cbl".
       COPY "W:/mistral/copy/MisCentrefenetre.cbl".

       Screen1-Bef-Create.
           MOVE LK-ZONE-PALM TO ZONE-PALM      | Permet de renseigner MOB-PALM avant le call adéquat si MobiVip
           PERFORM controle-Palmec
           PERFORM SAUVE-PALETTE
           PERFORM open-file-rtn
           MOVE 1 TO W-MXPARAM
           READ MXPARAM INVALID MOVE "Lecture PARAM" TO Acu-Msg-2
                                GO ERREUR
           END-READ
           PERFORM STAT
           MOVE 0 TO WV-SER
      
           MOVE 1 TO AUTO-CFA
           MOVE 1 TO AUTO-EFD
           MOVE 0 TO AUTO-REPRISE
           
           OPEN  I-O MXPARDIS
           PERFORM STAT.
           MOVE 1 TO W-MXPARDIS
           READ MXPARDIS INVALID 
                MOVE "PARDIS non Créé" TO Acu-Msg-2
                GO ERREUR
           END-READ
           PERFORM STAT
           CLOSE MXPARDIS

           MOVE 1 TO WV-AFFGES.

      *
       Screen1-Aft-Routine.
           PERFORM  close-file-rtn
           PERFORM RESTORE-PALETTE
           .   

      *************************
      *     INITIALISATION    *
      *************************
       Screen1-AfterInitData.
           ACCEPT W-PARAM FROM COMMAND-LINE
           UNSTRING W-PARAM DELIMITED BY " " INTO 
                    W-PARAM1 W-PARAM2
           
120819     PERFORM MisCentreFenetreScreen1
           IF STE-MPAR = 0 PERFORM ACU-SCREEN1-EXIT.
           MOVE MOI-MPAR TO M-PER-C
           MOVE ANN-MPAR TO A-PER-C
           IF MOI-MPAR = 1
                MOVE 12 TO M-PER-1
                IF ANN-MPAR = 0 MOVE 99 TO A-PER-1
                           ELSE ADD -1 ANN-MPAR GIVING A-PER-1
                END-IF
           ELSE ADD -1 MOI-MPAR GIVING M-PER-1
                MOVE ANN-MPAR TO A-PER-1.

           PERFORM Rech-TCC-Default

              MOVE 1 TO AUTO-3EC AUTO-MOP AUTO-GRATUIT AUTO-AVO
                        AUTO-MAR AUTO-BLC AUTO-MG AUTO-BLI
                        AUTO-FOU AUTO-CT AUTO-BLR AUTO-BLF
                        AUTO-DOM AUTO-IAC AUTO-PAI AUTO-ESC AUTO-ACO
                        AUTO-NAF AUTO-REP AUTO-REPO AUTO-AFC AUTO-TFA
                        AUTO-MODCD AUTO-VISCD AUTO-VISBL
                        AUTO-CRECD AUTO-REF AUTO-ARD 
241012        MOVE 2 TO AUTO-CREBL AUTO-MODBL AUTO-PRER

           IF AUTO-BLF = 2 
              MODIFY Screen1-DaCb-IFO, VISIBLE 0
           END-IF
           IF AUTO-BLR = 2 
              MODIFY Screen1-DaCb-IVR, VISIBLE 0
           END-IF
           PERFORM Affiche-CM-TCO-ENTETE

           | Sortie stock sur autres agences     
      *    IF EXM-MPAD = 0 
      *       MODIFY Screen1-Ef-Dps, LINE 2,23
      *       MODIFY Screen1-Pb-Dps, LINE 2,23
      *       MOVE 73,29 TO Screen2-Pb-Dep-Col
      *       MOVE 80,00 TO Screen2-Ef-Dep-Col
      *    END-IF

           IF LK-SBD-C-CHO = CHOIX-I OR "V"
              MODIFY Screen1-Ef-Ags, ENABLED FALSE
              MODIFY Screen1-Pb-Ags, ENABLED FALSE
           END-IF
      *  Gestion des niveaux de commande
           IF GMT-MPAD = 0
              MOVE SPACE TO LC0-MPAD LC1-MPAD LC2-MPAD
           END-IF.
           MODIFY Screen1-DaRb-ACA0, TITLE LC0-MPAD
           MODIFY Screen1-DaRb-ACA1, TITLE LC1-MPAD
           MODIFY Screen1-DaRb-ACA2, TITLE LC2-MPAD
           MODIFY Screen1-DaRb-ACA3, TITLE LC3-MPAD.
           IF LC0-MPAD = SPACE
              MODIFY Screen1-DaRb-ACA0, VISIBLE = FALSE
           END-IF.
           IF LC1-MPAD = SPACE
              MODIFY Screen1-DaRb-ACA1, VISIBLE = FALSE
           END-IF.
           IF LC2-MPAD = SPACE
              MODIFY Screen1-DaRb-ACA2, VISIBLE = FALSE
           END-IF.
           IF LC3-MPAD = SPACE
              MODIFY Screen1-DaRb-ACA3, VISIBLE = FALSE
           END-IF.
      *  Gestion des groupes de TVA
           IF GTV1-MPAR = SPACE
              MODIFY Screen1-DaRb-AFC2, VISIBLE FALSE
           ELSE
              MODIFY Screen1-DaRb-AFC2, TITLE GTV1-MPAR
           END-IF.
           IF GTV2-MPAR = SPACE
              MODIFY Screen1-DaRb-AFC3, VISIBLE FALSE
           ELSE
              MODIFY Screen1-DaRb-AFC3, TITLE GTV2-MPAR
           END-IF.
      *  Gestion du port usine
           IF PUS-MPAR NOT = 1
              MODIFY Screen1-DaCb-PUS, VISIBLE FALSE
           END-IF.
      * Date
           MOVE DTT-PALM TO W-DAT.
           IF W-PARAM2 <> SPACES
               MOVE W-PARAM2 TO W-DAT
           ELSE
               IF LK-SBD-C-CHO = "V"
                   MOVE LK-SBD-C-DAV TO W-DAT
               END-IF
           END-IF
                               
           PERFORM Affich-Dat
           MOVE 0 TO WDAT-OK
           COPY "W:/mx/copy/ControlePeriode.cbl" REPLACING 
                ==CPYDAT== BY ==W-DAT==.
           IF DateSaisie-Erreur = 0
           OR LK-SBD-C-CHO = CHOIX-I OR "V"
               MODIFY Screen1-Ef-Dat, Enabled FALSE
               MOVE 1 TO WDAT-OK
           END-IF
090409     MODIFY Screen1-Ef-IDE, VALUE IDE-PALM.
     
      * Agence
           IF LK-SBD-C-CHO = CHOIX-I OR "V" 
           OR CHOIX-C
                MOVE LK-SBD-C-AGE TO AGE-PALM
           END-IF
           IF W-PARAM1 <> SPACES
                MOVE W-PARAM1 TO AGE-PALM
           END-IF
           COPY "W:/mx/copy/Init-Agence-sans-Rb.cbl" REPLACING
                     ==DCN-AGE== BY ==W-AGE==
                     ==DCN-Ef-Age== BY ==Screen1-Ef-Age==
                     ==DCN-Ef-NomAge== BY ==Screen1-Ef-NomAge==.
      
           IF (    LK-SBD-C-CHO = CHOIX-I 
                               OR "V" )
           AND WAGC-OK = 0 THEN
              PERFORM CLOSE-FILE-RTN
              PERFORM RESTORE-PALETTE
              GO ACU-EXIT-RTN
           END-IF
      
           | si non modifiable: test AGEDIS + factures comptoir
           IF WAGC-OK > 0
           OR LK-SBD-C-CHO = CHOIX-C
               INITIALIZE ENR-MAGD
               MOVE W-AGE TO COD-MAGD
               READ MXAGEDIS INVALID
                  IF WAGC-OK = 2 |EXIT PROGRAM
                     MOVE "Aucune agence !" TO Acu-Msg-1
                     PERFORM ERREUR
                  END-IF
               END-READ
               PERFORM STAT
               MOVE AMB-MAGD TO W-AMB-MAGD
               IF AUTO-MG = 2 MOVE 0 TO W-AMB-MAGD
               END-IF
               PERFORM LECT-GROUTL
               PERFORM LECT-CXSOC
               MOVE AGSC-MAGC TO W-AGSC.

      * Combo des types de commande
241012     IF MOB-PALM > 0 PERFORM READ-MOBILE.
           MODIFY Screen1-Cm-Typ, RESET-LIST = 1
              PERFORM VARYING I FROM 1 BY 1 UNTIL I > 4
                 IF (I = 1 AND AUTO-VISCD NOT = 2)
                 OR (I = 2 AND AUTO-VISBL NOT = 2)
                 OR (I = 3 AND AUTO-VISBL NOT = 2 
                           AND AUTO-CREAVO NOT = 2)
                 OR (I = 4)
                    MODIFY Screen1-Cm-Typ, ITEM-TO-ADD = ELT-TYPTYP(I)
                 END-IF
              END-PERFORM

           PERFORM Screen1-Enable-False
           MOVE 0 TO WENABLE
           PERFORM Screen1-Enable-Bon

           IF WAGC-OK = 2 OR LK-SBD-C-CHO = CHOIX-I OR "V" OR CHOIX-C
                MODIFY Screen1-Ef-Age, ENABLED FALSE
           END-IF
           IF (WAGC-OK = 2 AND WDAT-OK = 1) 
                MODIFY Screen1-Pb-Creer, ENABLED TRUE
                MODIFY Screen1-Pb-ListeBon, VISIBLE TRUE
                IF MOB-PALM = 0 
                   MOVE MXREP-PALM TO WVisible-SAV
                   MOVE MXGAR-PALM TO WVisible-GAR
                   ADD MXCAI-PALM MXLSD-PALM GIVING Wvisible-LSD
                   PERFORM Affiche-Saisies-SAV
                END-IF
                MOVE 1 TO WENABLE
                PERFORM Screen1-Enable-Bon
           END-IF.

      *  Si MobiVip
           IF MOB-PALM NOT = 0
              | Agence par défaut
              MODIFY Screen1-Ef-Age, VALUE = AGE-PALM
              PERFORM Screen1-Ef-Age-AfterProcedure
              | Pas de Sortie de stock
              MOVE 0 TO EXM-MPAD
              MODIFY Screen1-Pb-Ags, VISIBLE 0
              MODIFY Screen1-Ef-Ags, VISIBLE 0
              MODIFY Screen1-Pb-Dps, VISIBLE 0
              MODIFY Screen1-Ef-Dps, VISIBLE 0
              CALL "W$MENU" USING WMENU-DELETE,        | Choix Article / Integration Constructeur non autorisé
                   Screen2-Mn-2-Handle, 1018
              MODIFY Screen2-Pb-FicheArt, VISIBLE 0
           END-IF.

           IF LK-SBD-C-CHO = CHOIX-I OR "V"
                MODIFY Screen1-Pb-Creer, ENABLED FALSE
                MOVE 0 TO WVisible-SAV WVisible-GAR Wvisible-LSD
                PERFORM Affiche-Saisies-SAV
           END-IF.

           IF LK-SBD-C-CHO = CHOIX-I OR "V"
                MOVE LK-SBD-C-AGE TO AGE-MBDI W-AGE
                MOVE LK-SBD-C-BON TO BON-MBDI W-BON
                READ MXBDIS INVALID MOVE "Lecture bon" TO Acu-MSG-2
                                    MOVE CLE1-MBDI TO Acu-MSG-3 
                                    GO ERREUR
                END-READ
                PERFORM STAT
                PERFORM Screen1-Interro-Bon
           END-IF
           
      * Création directe par .bat (M3)     
           IF LK-SBD-C-CHO = CHOIX-C
              MODIFY Screen1-Pb-Creer, ENABLED TRUE
              MOVE LK-SBD-C-TYP TO W-TYP
              PERFORM Affich-Typ
              PERFORM Screen1-Pb-Creer-LinkTo
           END-IF
261219     MOVE Screen1-Handle TO HANDLE-PALM
           .


       Affich-ACA.
           EVALUATE ACA-MBDI   | type de bon (direct/indirect)
           WHEN ZERO
              MOVE 1 TO Screen1-RADIO-1-BUF
              MODIFY Screen1-DaRb-ACA0, VALUE 1
           WHEN 1
              MOVE 2 TO Screen1-RADIO-1-BUF
              MODIFY Screen1-DaRb-ACA1, VALUE 2
           WHEN 2
              MOVE 3 TO Screen1-RADIO-1-BUF
              MODIFY Screen1-DaRb-ACA2, VALUE 3
           WHEN 3
              MOVE 4 TO Screen1-RADIO-1-BUF
              MODIFY Screen1-DaRb-ACA3, VALUE 4
           WHEN OTHER
              MOVE ZERO TO Screen1-RADIO-1-BUF
           END-EVALUATE
           .

       Screen2-Buf-To-Fld.
           IF INP-MLDI = PRODUIT-A OR PRODUIT-P
              INQUIRE Screen2-DaEf-REC1, VALUE REC-MLDI(1)
              INQUIRE Screen2-DaEf-REC2, VALUE REC-MLDI(2)
              INQUIRE Screen2-DaEf-REC3, VALUE REC-MLDI(3)
              INQUIRE Screen2-DaEf-REC4, VALUE REC-MLDI(4)
              INQUIRE Screen2-DaEf-REC5, VALUE REC-MLDI(5)
              INQUIRE Screen2-DaEf-REC6, VALUE REC-MLDI(6)
              INQUIRE Screen2-DaEf-Qte, VALUE QTE-MLDI
              INQUIRE Screen2-DaEf-Pub, VALUE PUB-MLDI
              INQUIRE Screen2-DaEf-Rem, VALUE REM-MLDI
              INQUIRE Screen2-DaCb-EXC, VALUE EXC-MLDI
              INQUIRE Screen2-DaEf-Pun, VALUE PUN-MLDI
           END-IF
           IF PZE-MLDI = 1 OR 2 OR 3
              INQUIRE Screen2-DaEf-LPZ, VALUE LPZ-MLDI
           END-IF.
           IF PZE-MLDI = 4 AND CVM-MLDI = 9 
              INQUIRE Screen2-Ef-MOT, VALUE MOT-MLDI
           END-IF
           INQUIRE Screen2-DaCb-TLI, VALUE IN W-TLI
           IF IRPM-MLDI = 1 MOVE 0 TO W-TLI
           END-IF
           IF W-TLI = 1     
              IF TLI-MLDI NOT = 3 OR DCO-MLDI = 0
                 MOVE W-DAT TO DCO-MLDI
              END-IF
              MOVE 3 TO TLI-MLDI
              INQUIRE Screen2-DaEf-MDLI, VALUE MDLP-MLDI
              INQUIRE Screen2-DaEf-JDLI, VALUE JDLP-MLDI
              INQUIRE Screen2-DaEf-SADLI, VALUE SADLP-MLDI
           ELSE
              MOVE 1 TO TLI-MLDI
           END-IF.
           IF (INP-MLDI = PRODUIT-A AND ART-MLDI(1:4) NUMERIC)
           OR (INP-MLDI = PRODUIT-P AND (TLI-MLDI = 3
050115                                   OR TYP-MBDI = 8))
              INQUIRE Screen2-Ef-Fou, VALUE in FOU-MLDI
           END-IF.

       Screen2-Fld-To-Buf.
           MODIFY Screen2-Ef-AR1, VALUE AR1-MLDI
           MODIFY Screen2-Ef-AR2, VALUE AR2-MLDI
 
           IF INP-MLDI = PRODUIT-A OR SPACE
               MODIFY Screen2-DaRb-INP0, VALUE 1
               MODIFY Screen2-Ef-Des, VALUE W-DES
           END-IF
           IF INP-MLDI = PRODUIT-P
               MODIFY Screen2-DaRb-INP4, VALUE 2
               MODIFY Screen2-Ef-Des, VALUE W-DES
           END-IF
           IF INP-MLDI = PRODUIT-C
               MODIFY Screen2-DaRb-INP9, VALUE 3
               MODIFY Screen2-Ef-Des, VALUE LIB-MCMO
           END-IF
           MOVE QTE-MLDI TO D62
           MODIFY Screen2-DaEf-Qte, VALUE D62
           
           PERFORM Affiche-Pze
           PERFORM Affiche-Rec
           PERFORM Affiche-Prix
           MODIFY Screen2-DaEf-Lpz, VALUE LPZ-MLDI

           MODIFY Screen2-DaCb-ISQ, VALUE ISQ-MLDI
           MODIFY Screen2-DaCb-EXC, VALUE EXC-MLDI
           IF TLI-MLDI = 3
              MODIFY Screen2-DaCb-TLI, VALUE 1
           ELSE
              MODIFY Screen2-DaCb-TLI, VALUE 0
           END-IF
     
           MOVE AGS-MLDI TO COD-MAGC2  
            PERFORM Lect-Agence2
           MODIFY Screen2-DaEf-Ags, VALUE ABR-MAGC2

           PERFORM Affiche-Infos-Commande
           PERFORM Affiche-TcoEtDlp
           PERFORM Affiche-FouEtBoutons.             

       Affiche-TcoEtDlp.
           IF TLI-MLDI NOT = 3 
090616     AND TYP-MBDI NOT = 8 
                MOVE 0 TO Cm-MTCC-SelectedItem
                MODIFY Screen2-Cm-TCO, VISIBLE FALSE
           ELSE 
                MODIFY Screen2-Cm-TCO, VISIBLE TRUE
                MOVE TCC-MLDI TO Cm-MTCC-SelectedItem  
           END-IF
           PERFORM Affiche-CM-TCO  
           IF TLI-MLDI = 3
161112     OR TYP-MBDI = 8
              MODIFY Screen2-DaEf-JDLI, VALUE JDLP-MLDI
              MODIFY Screen2-DaEf-MDLI, VALUE MDLP-MLDI
              MODIFY Screen2-DaEf-SADLI, VALUE SADLP-MLDI
           END-IF
           IF MODU-M3 = 1 
              PERFORM Affich-TBPL
           END-IF.

       Affiche-FouEtBoutons.
           IF INP-MLDI = PRODUIT-C OR " " 
                MODIFY Screen2-Ef-Fou, VISIBLE FALSE
                MODIFY Screen2-Ef-Pac, VISIBLE FALSE
                MODIFY Screen2-Pb-ListeFou, VISIBLE FALSE
                MODIFY Screen2-La-Fou, VISIBLE FALSE
                MODIFY Screen2-Pb-Liste, TITLE "Voir le commentaire"
                MODIFY Screen2-La-RQ, VISIBLE 0
           END-IF.

           IF INP-MLDI = PRODUIT-P 
                MODIFY Screen2-La-RQ, VISIBLE 0
                MODIFY Screen2-Pb-Liste, TITLE "Liste"
                IF TLI-MLDI = 3 
050115          OR TYP-MBDI = 8
                   MODIFY Screen2-Ef-Fou, VISIBLE TRUE, ENABLED TRUE,
                                          VALUE FOU-MLDI
                   MOVE PAC-MLDI TO D72
                   MODIFY Screen2-Ef-Pac, VISIBLE TRUE, ENABLED TRUE,
                                          VALUE D72
                   MODIFY Screen2-Pb-ListeFou, VISIBLE TRUE, 
                                               ENABLED TRUE
                   PERFORM Aff-Dev-Div
                   MODIFY Screen2-La-Fou, VISIBLE TRUE
                ELSE
                   MODIFY Screen2-Ef-Fou, VISIBLE FALSE
                   MODIFY Screen2-Ef-Pac, VISIBLE FALSE
                   MODIFY Screen2-Pb-ListeFou, VISIBLE FALSE
                   MODIFY Screen2-La-Fou, VISIBLE FALSE
                END-IF
           END-IF.

           IF INP-MLDI = PRODUIT-A 
                MODIFY Screen2-Pb-Liste, TITLE "Liste"
                IF AR1-MLDI NUMERIC
                   MODIFY Screen2-Ef-Fou, VISIBLE TRUE, 
                                             VALUE FOU-MLDI,
                                             ENABLED TRUE
                   MOVE PAC-MLDI TO D72
                   MODIFY Screen2-Ef-Pac, VISIBLE TRUE, VALUE D72,
                                             ENABLED TRUE
                   MODIFY Screen2-Pb-ListeFou, VISIBLE TRUE, 
                                                  ENABLED TRUE
                   MODIFY Screen2-La-Fou, VISIBLE TRUE
                   PERFORM Aff-Dev-Div
                   MODIFY Screen2-La-RQ, VISIBLE 0
                ELSE
                   MODIFY Screen2-Ef-Fou, VISIBLE FALSE
                   MODIFY Screen2-Ef-Pac, VISIBLE FALSE
                   MODIFY Screen2-Pb-ListeFou, VISIBLE FALSE
                   MODIFY Screen2-La-Fou, VISIBLE FALSE
                   IF (ITC-MART = 1 OR 2)  
                        MODIFY Screen2-La-RQ, VISIBLE 1
                   ELSE MODIFY Screen2-La-RQ, VISIBLE 0
                   END-IF
               END-IF
           END-IF. 
           IF INP-MLDI = PRODUIT-A AND ART-MLDI(1:4) NOT NUMERIC
           AND DOC-MART = 1
                MODIFY Screen2-Pb-Doc, VISIBLE TRUE
           ELSE MODIFY Screen2-Pb-Doc, VISIBLE FALSE
           END-IF.

       Affiche-Infos-Commande.
           IF TLI-MLDI = 3 
090616     OR TYP-MBDI = 8
                MOVE 1 TO WVISIBLE-TCO
           ELSE MOVE 0 TO WVISIBLE-TCO.
           MODIFY Screen2-Cm-TCO, VISIBLE WVISIBLE-TCO
           IF TYP-MBDI = 8 MOVE 1 TO WVISIBLE-TCO
           END-IF.
           MODIFY Screen2-DaEf-JDLI, VISIBLE WVISIBLE-TCO
           MODIFY Screen2-DaEf-MDLI, VISIBLE WVISIBLE-TCO
           MODIFY Screen2-DaEf-SADLI, VISIBLE WVISIBLE-TCO
           MODIFY Screen2-La-DliSla1, VISIBLE WVISIBLE-TCO
           MODIFY Screen2-La-DliSla2, VISIBLE WVISIBLE-TCO
           MODIFY Screen2-La-Dli, VISIBLE WVISIBLE-TCO.
           IF PZE-MLDI = 4 
                MODIFY Screen2-La-Tco, VISIBLE 1, TITLE "Motif"
           ELSE MODIFY Screen2-La-Tco, VISIBLE WVISIBLE-TCO, 
                                       TITLE W-LIBTYP  
           END-IF
           PERFORM Affiche-Cmq THRU F-Affiche-Cmq.

       Affiche-PZE.
           IF PZE-MLDI = 4
               MODIFY Screen2-Cb-PZE4, VALUE 1
               MODIFY Screen2-Cm-CVM, VISIBLE TRUE
               MODIFY Screen2-La-Tco, VISIBLE 1, TITLE "Motif"
               PERFORM Affich-Cvm
               IF CVM-MLDI NOT = 9 
                  MODIFY Screen2-Ef-MOT, VISIBLE FALSE
               ELSE                                   
                  MODIFY Screen2-Ef-MOT, VALUE MOT-MLDI, VISIBLE TRUE
               END-IF
           ELSE
               MODIFY Screen2-Cb-PZE4, VALUE 0
               MODIFY Screen2-Ef-MOT, VISIBLE FALSE
               MODIFY Screen2-Cm-CVM, VISIBLE FALSE
               IF TLI-MLDI = 3
090616         OR TYP-MBDI = 8
                    MODIFY Screen2-La-Tco, VISIBLE 1, TITLE W-LIBTYP
               ELSE MODIFY Screen2-La-Tco, VISIBLE 0, TITLE W-LIBTYP
               END-IF                
           END-IF
           EVALUATE PZE-MLDI
           WHEN 9
           WHEN 0
              MODIFY Screen2-DaRb-PZE0, VALUE 9
           WHEN 1
              MODIFY Screen2-DaRb-PZE1, VALUE 1
           WHEN 2
              MODIFY Screen2-DaRb-PZE2, VALUE 2
           WHEN 3
              MODIFY Screen2-DaRb-PZE3, VALUE 3
           END-EVALUATE.
           
       Increment-Bon.
           MOVE 0 TO W-IND W-BON 
           INITIALIZE ENR-MBDI
           MOVE W-AGE TO COD-MAGD
           READ MXAGEDIS LOCK INVALID
              MOVE "Lecture AGEDIS" TO Acu-Msg-2
              MOVE CLE1-MAGD TO Acu-Msg-3 GO ERREUR.
           PERFORM STAT
           IF IND-STAT = 1  
              PERFORM Acu-Extended-File-Status
              MOVE 2 TO W-IND
              EXIT PARAGRAPH.

           ADD 1 TO BON-MAGD
           REWRITE ENR-MAGD INVALID
           MOVE "Réécriture AGEDIS" TO Acu-Msg-2
           MOVE CLE1-MAGD TO Acu-Msg-3 GO ERREUR.
           PERFORM STAT           
           MOVE W-AGE    TO AGE-MBDI
           MOVE MOB-PALM TO MOB-MBDI
           MOVE BON-MAGD TO BON2-MBDI
           MOVE BON-MBDI TO W-BON
           READ MXBDIS INVALID MOVE 1 TO W-IND.
           PERFORM STAT.
           IF W-IND = 1 
              PERFORM Test-Hisvte THRU F-Test-Hisvte 
           END-IF
           .

       Decrement-Bon.
           MOVE 0 TO W-IND W-BON
           MOVE W-AGE TO COD-MAGD
           READ MXAGEDIS LOCK INVALID
              MOVE "Lecture AGEDIS" TO Acu-Msg-2
              MOVE CLE1-MAGD TO Acu-Msg-3 GO ERREUR.
           PERFORM STAT
           IF IND-STAT = 1  
              PERFORM Acu-Extended-File-Status
              MOVE 2 TO W-IND
              EXIT PARAGRAPH.
           IF NOT (MOB-PALM = MOB-MBDI AND BON-MAGD = BON2-MBDI)
              UNLOCK MXAGEDIS
              EXIT PARAGRAPH
           END-IF
           ADD -1 TO BON-MAGD
           REWRITE ENR-MAGD INVALID
              MOVE "Réécriture AGEDIS" TO Acu-Msg-2
              MOVE CLE1-MAGD TO Acu-Msg-3 GO ERREUR.
           PERFORM STAT.           
       
      * test si existence du n° de bon dans histo des ventes 
       Test-Hisvte.
           MOVE W-AGE    TO AGE-MHIV
           MOVE BON-MAGD TO BON-MHIV
           MOVE "D"      TO ORI-MHIV
           MOVE ZERO     TO LIG-MHIV LIN-MHIV 
           START MXHISVTE KEY NOT < CLE1-MHIV INVALID GO F-Test-Hisvte.
           READ MXHISVTE NEXT  END GO F-Test-Hisvte.
           PERFORM STAT
           IF AGE-MHIV NOT = W-AGE OR BON-MHIV NOT = BON-MAGD
           OR ORI-MHIV NOT = "D" GO F-Test-Hisvte.
           MOVE 0 TO W-IND.
       F-Test-Hisvte.
   
       Affich-Dat.
           MOVE W-DAT TO D-SAMJ PERFORM CONVDAT-SAMJ-JMSA
           MODIFY Screen1-Ef-DAT, VALUE L-DAT8.
           
       Affich-Typ.
           EVALUATE TYP-MBDI
           WHEN 0
           WHEN 5
                MODIFY Screen1-Cm-typ, VALUE ELT-TYPTYP(1)
           WHEN 1
           WHEN 2
                MODIFY Screen1-Cm-typ, VALUE ELT-TYPTYP(2)
           WHEN 3
                MODIFY Screen1-Cm-typ, VALUE ELT-TYPTYP(3)
           WHEN 8
                MODIFY Screen1-Cm-typ, VALUE ELT-TYPTYP(4)
           WHEN OTHER
                MODIFY Screen1-Cm-typ, VALUE " "
           END-EVALUATE.

       Affich-Bdis.
           IF TYC-MBDI = 2 
                PERFORM Lect-MXCOPROBL-Premier
           ELSE MOVE 1 TO W-COP W-COP-PR
           END-IF.
           MOVE TYP-MBDI TO W-TYP
           PERFORM Affich-Typ
           PERFORM Aff-Selon-Typ.
           MOVE DAT-MBDI TO D-SAMJ PERFORM CONVDAT-SAMJ-JMSA
           MODIFY Screen1-Ef-DAT, VALUE L-DAT8.
           MODIFY Screen1-Ef-IDE, VALUE SAL-MBDI.
           MOVE TCC-MBDI TO Cm-MTCC-SelectedItem
           PERFORM Affiche-CM-TCO-ENTETE

           PERFORM Screen1-Fld-To-Buf


           MODIFY Screen1-Ef-Cli, VALUE = CLI-MBDI
           INITIALIZE ENR-MCLI ENR-MCLD  
           
           IF CLI-MBDI NOT = 0 
                MODIFY Screen1-Cb-ICP, VALUE 0
                MOVE 0 TO W-ICP
                MOVE CLI-MBDI TO COD-MCLI 
                READ MXCLI KEY CLE6-MCLI 
                PERFORM STAT
                PERFORM Lect-MXCLID
                PERFORM Lect-CXCLI
                PERFORM Mep-Icl-Cli.
           IF CLI-MBDI = 0 AND FCO-MBDI NOT = 0
                MODIFY Screen1-Cb-ICP, VALUE 1
                MOVE 1 TO W-ICP
                MODIFY Screen1-Ef-Cli, VALUE = FCO-MBDI
                MOVE FCO-MBDI TO FCO-MCLI 
                READ MXCLI KEY CLE7-MCLI 
                PERFORM STAT.

           PERFORM Affich-Cli

           PERFORM Affich-Chc-Div
           
           PERFORM Affich-Itc

           IF APM-MPAD = 1
              MODIFY Screen1-DaEf-MAM, VALUE MAM-MBDI  | marque
              MODIFY Screen1-DaEf-TYM, VALUE TYM-MBDI | type
              IF MAM-MBDI NOT = SPACE
                 OPEN INPUT MXMARQUE 
                 PERFORM STAT
                 MOVE SPACE TO ENR-MMAR
                 MOVE MAM-MBDI TO COD-MMAR
                 READ MXMARQUE
                 PERFORM STAT
                 CLOSE MXMARQUE
                 MODIFY Screen1-Ef-LIB-MAR, VALUE LIB-MMAR
              END-IF
           END-IF.

           PERFORM Affich-Dli
           PERFORM Affich-Rep.
           PERFORM Mep-Facture
           IF (TYP-MBDI = 1 OR 3 OR 8) AND TRA-MBDI NOT = 0
                MODIFY Screen1-La-Fac, TITLE La-Facture, visible true
           else MODIFY Screen1-La-Fac, TITLE space, visible false
           end-if.

       Mep-Facture.
           MOVE SPACE TO La-Facture
           MOVE 0 TO Wvisible-lafac
           IF TYP-MBDI = 8 AND TRA-MBDI = 1
              EVALUATE STA-MBDI 
              WHEN "A" MOVE "Devis abandonné" TO la-facture
              WHEN "R" MOVE "Devis reporté" TO la-facture
              WHEN "P" MOVE "Devis perdu" TO la-facture
              WHEN OTHER MOVE "Devis gagné" TO la-facture
              END-EVALUATE
              move 1 to Wvisible-lafac
           END-IF
           IF TYP-MBDI = 1 AND TRA-MBDI NOT = 0
              MOVE "Facture" to la-facture
           END-IF.
           IF TYP-MBDI = 3 AND TRA-MBDI NOT = 0
              MOVE "Avoir" to la-facture
           END-IF.
           IF (TYP-MBDI = 1 OR 3) AND TRA-MBDI NOT = 0
              move 1 to Wvisible-lafac
              move dfa-mbdi to d-samj perform convdat-samj-jmsa
              STRING La-facture delimited by " "
                     " " ABR-MAGC FAC-MBDI "/D du" " "
                     l-dat8 delimited by "    "
                     into la-facture
           END-IF.

       Affich-Itc.
     
       Efface-Cli.
           MOVE SPACE TO W-RAI Af-Pos W-CV Af-Tel  
           MODIFY Screen1-Ef-Rai, VALUE SPACE
           MODIFY Screen1-Ef-Nom, VALUE SPACE
           MODIFY Screen1-Ef-Vil, VALUE SPACE
           MODIFY Screen1-Ef-Pos, VALUE SPACE
           MODIFY Screen1-Ef-TEL, VALUE SPACE
           MODIFY Screen1-Ef-TEL2, VALUE SPACE
           MODIFY Screen1-La-RLA, TITLE SPACE
           MODIFY Screen1-La-Msg, VISIBLE 0
           MODIFY Screen1-DaCb-IFD, Visible FALSE.
           MODIFY Screen1-Ef-CRS, Visible FALSE.
           MODIFY Screen1-La-CRSD, Visible FALSE.
           move 0 to wv-ser
           perform Affiche-Svc.

       Affich-Cli.
           MOVE RAI-MCLI TO W-RAI
           MODIFY Screen1-Ef-Rai, VALUE W-RAI
           MODIFY Screen1-Ef-Nom, VALUE ADR-MCLI
           MODIFY Screen1-Ef-Vil, VALUE VIL-MCLI
           COPY "W:/mistral/copy/Ef-Pos-Fic2Ecr.cbl"
                REPLACING ==CPYPOS-PAYS== BY ==PAY-MCLI==
                          ==CPYPOS-FIC==  BY ==POS-MCLI==
                          ==CPYPOS-ECR==  BY ==Af-POS==.
           MODIFY Screen1-Ef-Pos, VALUE Af-POS
           
           MOVE SPACE TO W-CV
           STRING Af-POS DELIMITED BY " "
                  " " DELIMITED BY SIZE
                  VIL-MCLI DELIMITED BY SIZE INTO W-CV.
           COPY "W:/mistral/copy/Ef-Tel-Fic2Ecr.cbl"
                REPLACING ==CPYTEL-PAYS== BY ==PAY-MCLI==
                          ==CPYTEL-FIC==  BY ==TEL-MCLI==
                          ==CPYTEL-ECR==  BY ==Af-TEL==.
           MODIFY Screen1-Ef-TEL, VALUE Af-TEL.
      *     IF AF-TEL = SPACE
              COPY "W:/mistral/copy/Ef-Tel-Fic2Ecr.cbl"
                REPLACING ==CPYTEL-PAYS== BY ==PAY-MCLI==
                          ==CPYTEL-FIC==  BY ==TE2-MCLI==
                          ==CPYTEL-ECR==  BY ==Af-TEL==.
      *     END-IF
           MODIFY Screen1-Ef-TEL2, VALUE Af-TEL.
           PERFORM Affich-RLA
           MOVE 112   TO WSIZE
           MOVE 1,08  TO WLINES
           IF WLIB-MMSG(77:) <> SPACE
                MOVE 103 TO WSIZE
                MOVE 2,2 TO WLINES
           END-IF
           MODIFY Screen1-La-Msg, TITLE WLIB-MMSG, VISIBLE 0
           PERFORM Mep-Ifd
           PERFORM Mep-Pus
           PERFORM Mep-Afc

           perform Lect-Email
           PERFORM Affich-Email.
           IF MODU-M3 = 1 
              move 0 to indic-bt
              PERFORM Rech-Adresse-Derogee-Tout
           END-IF.
           perform Test-et-Affiche-Svc.
    
       Affich-RLA.

       Affich-Rep.
           
       Affich-Chc-Div.
      *    Affichage lieu de livraison divers
           MODIFY Screen1-Ef-LRAI, VALUE RAI-MBDI
           MODIFY Screen1-Ef-LNOM, VALUE ADR-MBDI
           COPY "W:/mistral/copy/Ef-Pos-Fic2Ecr.cbl"
                REPLACING ==CPYPOS-PAYS== BY ==PAY-MCLI==
                          ==CPYPOS-FIC==  BY ==POS-MBDI==
                          ==CPYPOS-ECR==  BY ==Af-POS==.
           MODIFY Screen1-Ef-LPOS, VALUE Af-POS
           MODIFY Screen1-Ef-LVIL, VALUE VIL-MBDI.

       Affich-Dli.
           MODIFY Screen1-DaEf-JDLI, VALUE JDLP-MBDI
           MODIFY Screen1-DaEf-MDLI, VALUE MDLP-MBDI
           MODIFY Screen1-DaEf-SADLI, VALUE SADLP-MBDI
           PERFORM Affich-Msg-Delai6Mois.
           
       Affich-Msg-Delai6Mois.
           MODIFY Screen1-La-Delai, TITLE SPACE
           IF DLP-MBDI = ZERO EXIT PARAGRAPH.

           IF ADLP-MBDI = ADAT-MBDI
               COMPUTE W-MOI = MDLP-MBDI - MDAT-MBDI
               IF (W-MOI > 6)
               OR (W-MOI = 6 AND JDLP-MBDI > JDAT-MBDI)
                  MODIFY Screen1-La-Delai, TITLE "Délai > 6 mois"
                  EXIT PARAGRAPH.
           IF ADLP-MBDI > ADAT-MBDI
               IF MDLP-MBDI > MDAT-MBDI
                    MODIFY Screen1-La-Delai, TITLE "Délai > 6 mois"
               ELSE COMPUTE W-MOI = ((ADLP-MBDI - ADAT-MBDI) * 12) -
                                     (MDAT-MBDI - MDLP-MBDI)
                    IF (W-MOI > 6)
                    OR ( W-MOI = 6 AND JDLP-MBDI > JDAT-MBDI)
                        MODIFY Screen1-La-Delai, TITLE "Délai > 6 mois".

       Screen1-Efface.
           MODIFY Screen1-Ef-Cli, VALUE SPACE
           MODIFY Screen1-Cb-ICP, VALUE 0
           MODIFY Screen1-Ef-Rai, VALUE SPACE
           MODIFY Screen1-Ef-Nom, VALUE SPACE
           MODIFY Screen1-Ef-Vil, VALUE SPACE
           MODIFY Screen1-Ef-Pos, VALUE SPACE
           MODIFY Screen1-La-Msg, VISIBLE 0
           MODIFY Screen1-Ef-ITC, VALUE SPACE
           MODIFY Screen1-Ef-TELITC, VALUE SPACE
           MODIFY Screen1-Ef-LRAI, VALUE SPACE
           MODIFY Screen1-Ef-LNOM, VALUE SPACE
           MODIFY Screen1-Ef-LVIL, VALUE SPACE
           MODIFY Screen1-Ef-LPOS, VALUE SPACE
           MODIFY Screen1-Ef-TEL, VALUE SPACE
           MODIFY Screen1-Ef-TEL2, VALUE SPACE
           MODIFY Screen1-La-RLA, TITLE SPACE
           MODIFY Screen1-DaEf-JDLI, VALUE SPACE
           MODIFY Screen1-DaEf-MDLI, VALUE SPACE
           MODIFY Screen1-DaEf-SADLI, VALUE SPACE
           MODIFY Screen1-DaEf-Ref, VALUE SPACE
           MODIFY Screen1-DaEf-Ref2, VALUE SPACE
           MODIFY Screen1-DaEf-Nrf, VALUE SPACE
           MODIFY Screen1-DaEf-Naf, VALUE SPACE
      *     MODIFY Screen1-DaEf-Svc, VALUE SPACE
           MODIFY Screen1-DaEf-Rep, VALUE SPACE
           MODIFY Screen1-Ef-NomRep, VALUE SPACE
           MODIFY Screen1-DaRb-ACA0, VALUE 0
           MODIFY Screen1-DaRb-ACA1, VALUE 0
           MODIFY Screen1-DaRb-ACA2, VALUE 0
           MODIFY Screen1-DaRb-ACA3, VALUE 0
           MODIFY Screen1-DaCb-IVR, VALUE 0
           MODIFY Screen1-DaCb-EXC, VALUE 0
           MODIFY Screen1-DaCb-IFO, VALUE 0
           MODIFY Screen1-DaRb-IRE0, VALUE 0
           MODIFY Screen1-DaRb-IRE1, VALUE 0
           MODIFY Screen1-DaRb-IRE2, VALUE 0
           MODIFY Screen1-DaRb-IRE9, VALUE 0
           MODIFY Screen1-Ef-MRU, VISIBLE 0
           MODIFY Screen1-DaCb-IFD, VISIBLE 0
           MODIFY Screen1-Ef-CRS, Visible FALSE.
           MODIFY Screen1-La-CRSD, Visible FALSE.
           MODIFY Screen1-DaCb-PUS, VISIBLE 0
           MODIFY Screen1-DaRb-AFC0, VALUE 0
           MODIFY Screen1-DaRb-AFC1, VALUE 0
           MODIFY Screen1-DaRb-AFC2, VALUE 0
           MODIFY Screen1-DaRb-AFC3, VALUE 0
           MODIFY Screen1-La-Delai, TITLE SPACE
           MODIFY Screen1-Cm-TCO, VALUE SPACE
           MODIFY Screen1-DaEf-MAM, VALUE SPACE
           MODIFY Screen1-DaEf-TYM, VALUE SPACE
           MODIFY Screen1-Ef-LIB-MAR, VALUE SPACE
           MODIFY Screen1-Ef-ITC, VALUE SPACE
           MODIFY Screen1-Ef-TELITC, VALUE SPACE
           move 0 to wv-ser
           perform Affiche-Svc.
           PERFORM Affich-Dat.
           MODIFY Screen1-La-Fac, TITLE space, visible false.
           MODIFY Screen1-Ef-IDE, VALUE IDE-PALM.
           modify Screen1-Pb-Mail, VISIBLE 0
           modify Screen1-La-mail, VISIBLE 0.
           move space to moa-mbdi.

       Screen1-Enable-Chc-Div.
           MODIFY Screen1-Ef-LRAI, ENABLED WENABLE
           MODIFY Screen1-Ef-LNOM, ENABLED WENABLE
           MODIFY Screen1-Ef-LPOS, ENABLED WENABLE
           MODIFY Screen1-Ef-LVIL, ENABLED WENABLE.
           
       Screen1-Enable.                
           IF WENABLE = 1 AND TYC-MBDI = 2
             MODIFY Screen1-Ef-Cli, ENABLED 0
             MODIFY Screen1-Cb-Icp, ENABLED 0
             MODIFY Screen1-Pb-ListeCli, ENABLED 0
           ELSE
             IF TYC-MBDI = 1 AND CDF <> CHOIX-C 
                MODIFY Screen1-Ef-Cli, ENABLED 0
                MODIFY Screen1-Cb-Icp, ENABLED 0
                MODIFY Screen1-Pb-ListeCli, ENABLED 0
             ELSE
                MODIFY Screen1-Ef-Cli, ENABLED WENABLE
                MODIFY Screen1-Cb-Icp, ENABLED WENABLE
                MODIFY Screen1-Pb-ListeCli, ENABLED WENABLE
             END-IF
           END-IF
           MODIFY Screen1-DaEf-Ref, ENABLED WENABLE
           MODIFY Screen1-DaEf-Ref2, ENABLED WENABLE
           MODIFY Screen1-DaEf-Nrf, ENABLED WENABLE
           MOVE WENABLE TO WENABLE-TMP
           IF AUTO-REP = 2 OR 
              (MOB-PALM > 0 AND (CLI-PALM = 850225 OR <  10) AND   | Si Landa, le cial n'est pas modifiable sur le portable pour les commandes
              TYP-MBDI = 0)
              MOVE 0 TO WENABLE-TMP
           END-IF
           MODIFY Screen1-DaEf-Rep,    ENABLED WENABLE-TMP
           MODIFY Screen1-DaEf-Naf,    ENABLED WENABLE
      *     MODIFY Screen1-DaEf-Svc,    ENABLED WENABLE
           MODIFY Screen1-Cm-TCO,      ENABLED WENABLE
           MODIFY Screen1-DaEf-JDLI,   ENABLED WENABLE
           MODIFY Screen1-DaEf-MDLI,   ENABLED WENABLE
           MODIFY Screen1-DaEf-SADLI,  ENABLED FALSE
           MODIFY Screen1-DaCb-IVR,    ENABLED WENABLE
           IF CDF = "C" OR "Z"
              MODIFY Screen1-DaCb-EXC, ENABLED WENABLE
           ELSE
              MODIFY Screen1-DaCb-EXC, ENABLED 0
           END-IF
           MODIFY Screen1-DaCb-IFO,    ENABLED WENABLE
           MOVE WENABLE TO WENABLE-TMP
           MODIFY Screen1-DaRb-ACA0, ENABLED WENABLE-TMP
           MODIFY Screen1-DaRb-ACA2, ENABLED WENABLE-TMP
           MODIFY Screen1-DaRb-ACA3, ENABLED WENABLE-TMP
           IF AUTO-CT = 2
              MOVE 0 TO WENABLE-TMP
           END-IF
           MODIFY Screen1-DaRb-ACA1, ENABLED WENABLE-TMP
           MOVE WENABLE TO WENABLE-TMP
           IF AUTO-MOP = 2 OR AUTO-REMUNI = 2
              MOVE 0 TO WENABLE-TMP
           END-IF
           MODIFY Screen1-DaRb-IRE0, ENABLED WENABLE-TMP
           MODIFY Screen1-DaRb-IRE1, ENABLED WENABLE-TMP
           MODIFY Screen1-DaRb-IRE2, ENABLED WENABLE-TMP
           MODIFY Screen1-DaRb-IRE9, ENABLED WENABLE-TMP
           MODIFY Screen1-Ef-MRU,    ENABLED WENABLE-TMP   
           MODIFY Screen1-DaRb-AFC0, ENABLED WENABLE
           MODIFY Screen1-DaRb-AFC1, ENABLED WENABLE
           MODIFY Screen1-DaRb-AFC2, ENABLED WENABLE
           MODIFY Screen1-DaRb-AFC3, ENABLED WENABLE
           MODIFY Screen1-DaCb-PUS, ENABLED WENABLE
           MODIFY Screen1-DaCb-IFD, ENABLED WENABLE
           MODIFY Screen1-DaEf-MAM, ENABLED WENABLE
           MODIFY Screen1-DaEf-TYM, ENABLED WENABLE

           IF WENABLE = 0 OR CHC-MBDI = 0
              PERFORM Screen1-Enable-Chc-Div
           END-IF.
           IF WENABLE = 1 PERFORM Mep-Enable-Afc.
           
       Screen1-Enable-Bon.
           MODIFY Screen1-Ef-Bon, ENABLED WENABLE
           MODIFY Screen1-Cm-Typ, ENABLED WENABLE
           MODIFY Screen1-Pb-ListeBon, VISIBLE WENABLE.

       Screen1-Enable-True.
           MOVE 1 TO WENABLE
           PERFORM Screen1-Enable.
           
       Screen1-Enable-False.
           MOVE 0 TO WENABLE
           PERFORM Screen1-Enable.

      ******************************************************************
       LECT-MXCLID.
           MOVE 1 TO EXI-CD
           MOVE SPACE TO GTL-MCLD
           MOVE COD-MCLI TO COD-MCLD
           READ MXCLID INVALID 
                MOVE 0 TO EXI-CD
                MOVE " Client Inconnu en Distribution " TO ACU-MSG-1
                PERFORM MSG-ERREUR.
           PERFORM STAT
           IF EXI-CD = 1 PERFORM LECT-MXCLID-GTL.  

       LECT-MXCLID-GTL.       
       
       LECT-CXCLI.
           MOVE 1 TO EXI-C3.
      *
       Mep-Icl-Cli.
      *
       Maj-Pai-Cli.
           MOVE PAI-MCLD TO PAI-MBDI(1)
           MOVE ECH-MCLD TO ECH-MBDI(1)
           MOVE TER-MCLD TO TER-MBDI(1)
           MOVE ZERO TO NJE-MBDI(1)
           IF REL-MCLI NOT = ZERO AND IDV-MCLI = 0 
              MOVE 4 TO MPA-MBDI
              IF PREL-MPAR NOT = 1
                 MOVE PAI-MCLI TO PAI-MBDI(1)
                 MOVE ECH-MCLI TO ECH-MBDI(1)
                 MOVE TER-MCLI TO TER-MBDI(1).
           IF REL-MCLI = ZERO OR IDV-MCLI = 1 
              MOVE 2 TO MPA-MBDI.

       Maj-Enr-Cli.
           PERFORM Maj-Pai-Cli
           MOVE FID-MCLI TO FID-MBDI
           MOVE TFA-MCLD TO TFA-MBDI
           MOVE REP-MCLD TO REP-MBDI
           IF IEE-MPAD = 1 AND REP-MBDI = SPACE
              MOVE IDE-PALM TO REP-MBDI
           END-IF    
           IF IEE-MPAD = 2
              MOVE IDE-PALM TO REP-MBDI
           END-IF    
           MOVE LIP-MCLI TO LIP-MBDI
           IF (TYP-MBDI = 1 
091018         OR 0 OR 8 OR 3)         | PGATP
           AND NTP-MAGD NOT = 4 
              MOVE SPO-MCLD TO TTR-MBDI.
           PERFORM Affich-Rep

           IF TYP-MCLI = 1
                MOVE 1 TO AFC-MBDI
           ELSE IF AFC-MAGC <> 0
                     MOVE AFC-MAGC TO AFC-MBDI.
070318     PERFORM MEP-PAYS-AFC.
           PERFORM Mep-Enable-Afc.

           MOVE 0 TO ITC-MBDI
           PERFORM Affich-Itc.
           move space to SVC-MBDI
           perform Lecture-Svc
           IF CLF-MCLI NOT = 0 
                MOVE COD-MCLI TO CLL-MBDI 
                MOVE CLF-MCLI TO CLI-MBDI
                PERFORM Rech-Chacli 
           ELSE MOVE 0 TO CLL-MBDI
           END-IF.   
           IF DEV-MCLI NOT = SPACE
           AND IFO-MBDI NOT = 1 
           AND TYC-MBDI NOT = 2
           AND DEV-MCLI NOT = DEV-MPAR AND NOT = SPACE
              MOVE 1 TO IFD-MBDI
              MODIFY Screen1-DaCb-IFD, VALUE IFD-MBDI 
           END-IF.
        
       Rech-Chacli.
           MOVE ZERO TO CHC-MBDI CDL-MBDI
           MOVE TIT-MCLI TO TIT-MBDI
           MOVE RAI-MCLI TO RAI-MBDI
           MOVE ADR-MCLI TO ADR-MBDI
           MOVE POS-MCLI TO POS-MBDI
           MOVE VIL-MCLI TO VIL-MBDI
           MODIFY Screen1-Ef-Cli, VALUE CLF-MCLI
           MOVE CLF-MCLI TO COD-MCLI
           READ MXCLI KEY CLE6-MCLI 
           PERFORM STAT
           PERFORM Affich-Cli
           PERFORM Lect-Mxclid
           PERFORM Maj-Pai-Cli
           PERFORM Affich-Chc-Div.

       Mep-Afc.
           MOVE 1 TO WENABLE
           IF TYP-MCLI = 1
                MOVE 1 TO AFC-MBDI
                MOVE 0 TO WENABLE
           ELSE IF AFC-MAGC <> 0
                MOVE AFC-MAGC TO AFC-MBDI
                MOVE 0 TO WENABLE
           ELSE IF GTV1-MPAR = SPACE AND GTV2-MPAR = SPACE
                MOVE 0 TO AFC-MBDI
                MOVE 0 TO WENABLE.
           | on fait toujours saisir pour les prospects
           IF W-ICP = 1 MOVE 1 TO WENABLE
           END-IF
070318     PERFORM MEP-PAYS-AFC.
           EVALUATE AFC-MBDI
           WHEN ZERO
              MODIFY Screen1-DaRb-AFC0, VALUE 1
           WHEN 1
              MODIFY Screen1-DaRb-AFC1, VALUE 2
           WHEN 2
              MODIFY Screen1-DaRb-AFC2, VALUE 3
           WHEN 3
              MODIFY Screen1-DaRb-AFC3, VALUE 4
           END-EVALUATE.

070318 MEP-PAYS-AFC.
           IF PAY-MAGC <> PAY-MCLI
           AND (PAY-MAGC <> SPACE AND PAY-MCLI <> SPACE)
           AND EXOAP-MPAR = 1
              MOVE 1 TO AFC-MBDI WENABLE 
           END-IF.

       Mep-Enable-Afc.
           PERFORM Mep-Afc
           IF AUTO-AFC = 2 MOVE 0 TO WENABLE
           END-IF
           MODIFY Screen1-DaRb-AFC0, ENABLED WENABLE
           MODIFY Screen1-DaRb-AFC1, ENABLED WENABLE
           MODIFY Screen1-DaRb-AFC2, ENABLED WENABLE
           MODIFY Screen1-DaRb-AFC3, ENABLED WENABLE.

       Mep-Ifd.
           
       Mep-Pus.
           IF PUS-MCLD = 0 OR PUS-MPAR NOT = 1
                MOVE 1 TO PUS-MBDI
                MODIFY Screen1-DaCb-PUS, VISIBLE FALSE
           ELSE MODIFY Screen1-DaCb-PUS, VISIBLE TRUE
           END-IF.
           
       Recup-Entete.
           PERFORM Screen1-Buf-To-Fld
           INQUIRE Screen1-Cm-TCO, VALUE IN CM-MTCC-Items(1)
           MOVE Cm-MTCC-COD(1) TO TCC-MBDI
           INQUIRE SCreen1-Cb-ICP, VALUE IN W-ICP
           IF W-ICP = 0 INQUIRE Screen1-Ef-Cli, VALUE IN CLI-MBDI
                        MOVE ZERO TO FCO-MBDI
                   ELSE INQUIRE Screen1-Ef-Cli, VALUE IN FCO-MBDI
                        MOVE ZERO TO CLI-MBDI.
           INQUIRE Screen1-Ef-LRAI, VALUE IN RAI-MBDI
           INQUIRE Screen1-Ef-LNOM, VALUE IN ADR-MBDI
           INQUIRE Screen1-Ef-LVIL, VALUE IN VIL-MBDI.

       Controle-Entete.
           MOVE 0 TO W-IND
      *    contrôle du client
           IF (CLI-MBDI = ZERO AND (FCO-MBDI = ZERO))
              MOVE " Client non renseigné" TO ACU-MSG-1
              PERFORM MSG-INFO
              MOVE 1 TO W-IND
              EXIT PARAGRAPH.
           IF CLI-MBDI NOT = 0
              MOVE CLI-MBDI TO COD-MCLI COD-MCLD W-CLI
              READ MXCLI KEY CLE6-MCLI INVALID
                 MOVE "Client inconnu" TO ACU-MSG-1
                 PERFORM MSG-INFO
                 MOVE 1 TO W-IND
                 EXIT PARAGRAPH
              END-READ
              PERFORM STAT
              IF CANN-MCLI = 1 
                 MOVE "Client Supprimé" TO ACU-MSG-1
                 PERFORM MSG-INFO
                 MOVE 1 TO W-IND
                 EXIT PARAGRAPH
              END-IF
              PERFORM Lect-MXCLID
              PERFORM Lect-CXCLI
              PERFORM Mep-Icl-Cli
              IF EXI-CD = 0 OR EXI-C3 = 0
                 MOVE 1 TO W-IND
                 EXIT PARAGRAPH
              END-IF
              PERFORM Controle-Cli
              IF W-CLI = 0 
                 MOVE 1 TO W-IND
                 EXIT PARAGRAPH
              END-IF
           END-IF.
           IF CLI-MBDI = 0
              MOVE FCO-MBDI TO FCO-MCLI 
              READ MXCLI KEY CLE7-MCLI INVALID
                 MOVE "Prospect inconnu" TO ACU-MSG-1
                 PERFORM MSG-INFO
                 MOVE 1 TO W-IND
                 EXIT PARAGRAPH
              END-READ
              PERFORM STAT
              IF CANNP-MCLI = 1
                 MOVE "Prospect Supprimé" TO ACU-MSG-1
                 PERFORM MSG-INFO
                 MOVE 1 TO W-IND
                 EXIT PARAGRAPH
              END-IF
           END-IF.
      *    contrôle du niveau de commande
           IF GMT-MPAD = 1 
           AND ACA-MBDI > 3 
              MOVE "Indiquez le niveau de commande SVP." TO ACU-MSG-1
              PERFORM MSG-INFO
              MOVE 1 TO W-IND
              EXIT PARAGRAPH.
      *    contrôle autorisations
           IF NAF-MBDI = SPACE AND AUTO-NAF = 2
           AND TYP-MBDI NOT = 8
              MOVE "Renseignez le n° d'affaire SVP." TO ACU-MSG-1
              PERFORM MSG-ERREUR
              MOVE 1 TO W-IND
              EXIT PARAGRAPH.
           PERFORM Screen1-DaEf-Naf-Ev-Msg-Validate
           IF REF-MBDI(1) = SPACE AND AUTO-REF = 2
           AND TYP-MBDI NOT = 8
              MOVE "Renseignez la référence SVP." TO ACU-MSG-1
              PERFORM MSG-ERREUR
              MOVE 1 TO W-IND
              EXIT PARAGRAPH
           END-IF.
           IF REF-MBDI(1) = SPACE AND RBO-MCLI = 1
           AND TYP-MBDI NOT = 8
              MOVE "Référence client non renseignée."
              TO ACU-MSG-1
              MOVE "Confirmez-vous ?" TO ACU-MSG-2
              IF MAFR-MPAR = 1
                 MOVE "Attention! Le BL ne sera pas facturé!" 
                 TO ACU-MSG-3
              END-IF
              MOVE 2 TO ACU-DEFAULT-BUTTON
              PERFORM MSG-ON
              IF ACU-RETURN-VALUE <> 1
              OR FAO-MCLD = 1
                 MOVE 1 TO W-IND
                 EXIT PARAGRAPH
              END-IF
           END-IF.
           IF APM-MPAD = 1 AND TYP-MBDI NOT = 8 AND AUTO-MAR = 2
           AND MAM-MBDI = SPACE
              MOVE "Renseignez la marque du matériel SVP." TO ACU-MSG-1
              PERFORM MSG-ERREUR
              MOVE 1 TO W-IND
              EXIT PARAGRAPH
           END-IF
290119
           IF  TYP-MBDI = 3
           AND MOA-MBDI = SPACE
           AND AUTO-MOTIF = 2 THEN
              move "Motif d'avoir obligatoire" to acu-msg-1
              PERFORM MSG-ERREUR
              MOVE 1 TO W-IND
              EXIT PARAGRAPH
           END-IF
290119
           .

       Maj-Entete.
           PERFORM Recup-Entete
           PERFORM Controle-Entete
           IF W-IND NOT = 0 EXIT PARAGRAPH.
           IF TYC-MBDI <> 2 MOVE 0 TO NBC-MBDI NPT-MBDI
           END-IF

           IF CDF = CHOIX-M 
                OR "Z"
              PERFORM Test-Modif-DLI
              PERFORM Test-Modif-CLI
           END-IF

           IF CDF = CHOIX-C
              PERFORM Mep-Et-Wri-MXBDIS
           ELSE
              PERFORM Rew-MXBDIS
           END-IF.
           MOVE ENR-MBDI TO SV-ENR-MBDI.
           IF TYC-MBDI <> 2
              MOVE CLE1-MBDI TO CLE1-MBDI2
              PERFORM Del-MXCOPROBL
           END-IF
250412     PERFORM Maj-Transpe
           .
           
       Test-Modif-CLI.
           if sv-cli = 0 
              move CLI-MBDI to sv-CLI
           end-if
           IF (SV-CLI = CLI-MBDI)
           OR (MODU-M3 = 1)
              EXIT PARAGRAPH
           END-IF
           MOVE "Client modifié." 
           to acu-msg-1
           move "Recalcul du prix des pièces et des prestations?" 
           to acu-msg-2
           perform msg-on
           if acu-return-value = 1
              perform Mod-Prix-Cli 
           end-if
           move CLI-MBDI to sv-CLI
           .

       Test-Modif-DLI.
           IF (SV-DLP = DLP-MBDI AND SV-TCC = TCC-MBDI)
           OR (TYP-MBDI NOT = 0 AND NOT = 8)
           OR (MODU-M3 = 1)
           OR (TCCF-MPAR = 1) |trop compliqué
              EXIT PARAGRAPH
           END-IF
           IF SV-DLP NOT = DLP-MBDI
           AND SV-TCC = TCC-MBDI
              MOVE "Souhaitez-vous changer la date de livraison" 
              to acu-msg-1
              move "prévue sur toutes les lignes de la commande?" 
              to acu-msg-2
           END-IF
           IF SV-DLP = DLP-MBDI
           AND SV-TCC NOT = TCC-MBDI
              MOVE "Souhaitez-vous changer le type de commande" 
              to acu-msg-1
              move "sur toutes les lignes de la commande?" 
              to acu-msg-2
           END-IF
           IF SV-DLP NOT = DLP-MBDI
           AND SV-TCC NOT = TCC-MBDI
              MOVE "Souhaitez-vous changer la date de livraison" 
              to acu-msg-1
              move "prévue et le type de commande" 
              to acu-msg-2
              move "sur toutes les lignes de la commande?" 
              to acu-msg-3
           END-IF
           perform msg-on
           if acu-return-value = 1
              perform mod-dli 
           end-if
           move DLP-MBDI to sv-dlp
           move TCC-MBDI to sv-tcc
           .

       Lock-Entete.
           MOVE 0 TO W-IND
           MOVE W-AGE TO AGE-MBDI
           MOVE W-BON TO BON-MBDI
           READ MXBDIS LOCK INVALID
              MOVE "Bon non Trouvé" TO ACU-MSG-1
              PERFORM MSG-INFO
              MOVE 1 TO W-IND
              EXIT PARAGRAPH
           END-READ
           PERFORM STAT
           IF IND-STAT = 1
              MOVE "399" TO Acu-Msg-Id
              PERFORM Acu-Show-Msg
              MOVE 1 TO W-IND
              EXIT PARAGRAPH.
           IF TRA-MBDI NOT = ZERO

              MOVE "Impossible - Bon facturé " TO ACU-MSG-1
              PERFORM MSG-INFO
              MOVE 1 TO W-IND
              UNLOCK MXBDIS
              EXIT PARAGRAPH.
           IF GEN-MBDI NOT = ZERO
061113     AND NOT (CLI-PALM = 690141 AND (STE-MCLI = 100 OR 110))
230218     AND NOT (CLI-PALM = 590825 AND STE-MCLI > 0)
              MOVE "Impossible - Bon inter-sociétés " TO ACU-MSG-1
              PERFORM MSG-INFO
              MOVE 1 TO W-IND
              UNLOCK MXBDIS
              EXIT PARAGRAPH
           END-IF.
           .

       Mep-Lbon.
           IF TYP-MBDI = 0 OR 5 MOVE "Commande N°" TO W-LBON.
           IF TYP-MBDI = 1 OR 2 OR 6 MOVE "B/L N°" TO W-LBON.
           IF TYP-MBDI = 3 MOVE "Avoir N°" TO W-LBON.
           IF TYP-MBDI = 8 MOVE "Devis N°" TO W-LBON.
           
       Remp-Grille-Ldis.
           MOVE 0 TO TOT-HT D-RAN D-LIG MAX-DEL
                     TOT-TTC TOT-POI TOT-HPI TOT-HPR TOT-HTB
                     TOT-TVA TOT-LIG TOT-HTT TOT-MG TOT-RPM
                     TOT-VOL
           INITIALIZE TABLE-C-MON
           MOVE 9 TO C-TVA(1) C-TVA(2) C-TVA(3) C-TVA(4)
                     C-TVA(5) C-TVA(6) C-TVA(7) C-TVA(8)
           MOVE 0 TO Screen2-DaGd-1-Cursor-X-Old
                     Screen2-DaGd-1-Cursor-Y-Old
           MODIFY Screen2-DaGd-1, RESET-GRID = 1
           PERFORM Acu-Screen2-DaGd-1-Content
           IF W-MODREM = 1
              MODIFY Screen2-DaGd-1(1, 7), CELL-DATA "% R Complément",
                         CELL-COLOR 432
           END-IF
           MOVE W-AGE TO AGE-MLDI
           MOVE W-BON TO BON-MLDI
           MOVE ZERO TO RAN-MLDI W-EOF ATTENTE
           MOVE 1 TO WY
           START MXLDIS KEY NOT < CLE4-MLDI INVALID MOVE 1 TO W-EOF.
           IF W-EOF = 0
               READ MXLDIS NEXT END MOVE 1 TO W-EOF
               END-READ
               PERFORM STAT.
           PERFORM UNTIL W-EOF = 1
                   OR BON-MLDI NOT = W-BON OR AGE-MLDI NOT = W-AGE
                ADD 1 TO WY 
                PERFORM Remp-Une-Ligne
                IF PZE-MLDI = 3 MOVE 1 TO ATTENTE
                 END-IF
                PERFORM Color-Grid-Commande
                PERFORM Color-Grid-Marge
                IF W-MODREM = 1
                   MOVE REMC-MLDI TO ZREMP
                   MODIFY Screen2-DaGd-1(WY, 7), CELL-DATA ZREMP,
                         CELL-COLOR 13
                END-IF
      *          MOVE INDICE TO D-INDICE
                IF RAN-MLDI > D-RAN MOVE RAN-MLDI TO D-RAN
                END-IF
                IF LIG-MLDI > D-LIG MOVE LIG-MLDI TO D-LIG
                END-IF
                READ MXLDIS NEXT END MOVE 1 TO W-EOF
                END-READ
                PERFORM STAT
           END-PERFORM
           IF TYP-MBDI = 1 AND BCG-MBDI NOT = 0 AND CDF = CHOIX-I
                PERFORM Remp-Grille-Ldis-Commande.


           PERFORM Aff-Tot.

       Remp-Grille-Ldis-Commande.
           MOVE W-AGE TO AGE-MLDI
           MOVE BCG-MBDI TO BON-MLDI
           MOVE ZERO TO RAN-MLDI W-EOF
           START MXLDIS KEY NOT < CLE4-MLDI INVALID MOVE 1 TO W-EOF.
           IF W-EOF = 0
               READ MXLDIS NEXT END MOVE 1 TO W-EOF
               END-READ
               PERFORM STAT.
           PERFORM UNTIL W-EOF = 1
                   OR BON-MLDI NOT = BCG-MBDI OR AGE-MLDI NOT = W-AGE
                ADD 1 TO WY
                PERFORM Remp-Une-Ligne 
                PERFORM Color-Grid-Commande
                PERFORM Color-Grid-Marge
                IF RAN-MLDI > D-RAN MOVE RAN-MLDI TO D-RAN
                END-IF
                IF LIG-MLDI > D-LIG MOVE LIG-MLDI TO D-LIG
                END-IF
                READ MXLDIS NEXT END MOVE 1 TO W-EOF
                END-READ
                PERFORM STAT
           END-PERFORM.

       Remp-Une-Ligne.
           PERFORM Lect-Art-Ou-Pre
           PERFORM Maj-Grille
           PERFORM ADD-MON
           MODIFY Screen2-DaGd-1, RECORD-TO-ADD = Ligne-Af.
           PERFORM Sauv-Grid-Cle.

      * Ligne en commande affichée en vert
       Color-Grid-Commande.
           INQUIRE Screen2-DaGd-1(WY, WCol-Tli),
                   CELL-DATA IN W-TLI
           IF W-TLI = 3 AND TYP-MBDI = 1
               MODIFY Screen2-DaGd-1(WY), ROW-COLOR = 226
           ELSE
               MODIFY Screen2-DaGd-1(WY), ROW-COLOR = 0
               IF MODU-M3 = 1 AND W-TLI = 3 AND TYP-MBDI = 0
                  INQUIRE Screen2-DaGd-1(WY, WCol-AffTli),
                    CELL-DATA IN DaGd-1-Col-TLI
                  IF DaGd-1-Col-TLI = "T"
                      MODIFY Screen2-DaGd-1(WY), ROW-COLOR = 194
                  END-IF
               END-IF
           END-IF.

       Color-Grid-Marge.
           IF W-COLOR = 198 MOVE 2 TO W-COLOR.
           IF W-COLOR = 525 MOVE 13 TO W-COLOR.
           IF W-COLOR = 524 MOVE 12 TO W-COLOR.
           MODIFY Screen2-DaGd-1(WY, 12), CELL-COLOR W-COLOR. 
         
       Sauv-Grid-Cle.
           MODIFY Screen2-DaGd-1(WY, WCol-Lig),
                   CELL-DATA LIG-MLDI
           MODIFY Screen2-DaGd-1(WY, WCol-Bon),
                   CELL-DATA BON-MLDI.

       Maj-Grille.
           MOVE SPACE TO LIGNE-AF
           MOVE BON-MLDI TO DaGD-1-Col-Bon
           MOVE LIG-MLDI TO DaGD-1-Col-Lig
           MOVE TLI-MLDI TO DaGD-1-Col-CodTli
           IF INP-MLDI = PRODUIT-A
              MOVE PRODUIT-A TO DaGD-1-Col-Inp
              IF IRPM-MLDI = 1 MOVE "R" TO DaGD-1-Col-Inp
              END-IF
              MOVE ART-MLDI TO COD-MART
              PERFORM Mep-Des-Art
              IF CLI-PALM = 850225 
              AND CO1-MART NOT NUMERIC
              AND RFI-MART NOT = SPACE
                   STRING RFI-MART " - " W-DES DELIMITED By "   "  
                   INTO DaGD-1-Col-Des
              ELSE MOVE W-DES TO DaGD-1-Col-Des
              END-IF.
           IF INP-MLDI = PRODUIT-P
              MOVE PRODUIT-P TO DaGD-1-Col-Inp
              MOVE PRE-MLDI TO COD-MPGE
              IF INL-MPGE NOT = 1
                   MOVE LIB-MPGE TO DaGD-1-Col-Des
              ELSE MOVE COM1-MLDI TO DaGD-1-Col-Des.

           IF INP-MLDI = PRODUIT-C
              MOVE PRODUIT-C TO DaGD-1-Col-Inp
              MOVE DES-MLDI TO DaGD-1-Col-Des.
           STRING AR1-MLDI DELIMITED BY SIZE
                  " " DELIMITED BY SIZE
                  AR2-MLDI DELIMITED BY SIZE INTO DaGD-1-Col-Art
           IF ISQ-MLDI = 1
              MOVE "  Régul." TO DaGd-1-Col-Isq
           ELSE
              MOVE QTE-MLDI TO W-QTE
              IF W-QTE2 = 0 MOVE QTE-MLDI TO DaGD-1-Col-QteSD
                       ELSE MOVE QTE-MLDI TO DaGD-1-Col-Qte
              END-IF
           END-IF
           IF PUB-MLDI > 99999999 
                MOVE PUB-MLDI TO DaGD-1-Col-PubP
           ELSE MOVE PUB-MLDI TO DaGD-1-Col-Pub
           END-IF
           PERFORM Cal-Mon-Rem-D
           MOVE MON-REM TO DaGD-1-Col-Rem
           PERFORM Cal-Mon
           PERFORM CAL-POI
           PERFORM Cal-Pac
           IF PUN-MLDI > 99999999 
                MOVE PUN-MLDI TO DaGD-1-Col-PunP
           ELSE MOVE PUN-MLDI TO DaGD-1-Col-Pun
           END-IF
           IF PZE-MLDI = 1 MOVE LPZ-MLDI TO DaGD-1-Col-Lpz
           ELSE IF PZE-MLDI = 2 MOVE "Echange" TO DaGD-1-Col-Lpz
           ELSE IF PZE-MLDI = 3 MOVE "En attente" TO DaGD-1-Col-Lpz
           ELSE IF PZE-MLDI = 4 MOVE "Vte Manquée" TO DaGD-1-Col-Lpz
           ELSE MOVE W-MON TO DaGD-1-Col-Mon.
           IF TLI-MLDI = 3
              MOVE "C" TO DaGd-1-Col-TLI
           END-IF.
           IF PRO-MLDI NOT = 0 
              MOVE "P" TO DaGd-1-Col-Pro
           END-IF
           MOVE 2 TO W-COLOR
           IF (INP-MLDI = PRODUIT-P OR PRODUIT-A) 
           AND (PZE-MLDI = 0 OR 1)
              COMPUTE W-MARGE = W-MON - W-PAC
              IF ISQ-MLDI = 1 MOVE W-MON TO W-MARGE
              END-IF
              COMPUTE W-PM ROUNDED = (W-MON - W-PAC) / W-MON * 100
              IF W-MON = 0 MOVE 0 TO W-PM
              END-IF            
              PERFORM Test-Marge 
              MOVE W-PM TO DaGd-1-Col-PMB
              MOVE W-MARGE TO DaGd-1-Col-MB
              MOVE W-MSG-PM TO DaGd-1-Col-Msg
           END-IF.
                             
       Mep-Detail-Ldis.
           MOVE AGE-MBDI TO AGE-MLDI
           INQUIRE Screen2-DaGd-1(Screen2-DaGd-1-Cursor-Y, WCol-Lig),
                   CELL-DATA IN LIG-MLDI
           INQUIRE Screen2-DaGd-1(Screen2-DaGd-1-Cursor-Y, WCol-Bon),
                   CELL-DATA IN BON-MLDI
           READ MXLDIS INVALID MOVE "Lecture LDIS/DETAIL" TO Acu-Msg-2
                               MOVE CLE1-MLDI TO Acu-Msg-3 GO ERREUR.
           PERFORM STAT
           IF TCC-MLDI = 0 
              MOVE TCC-MBDI TO TCC-MLDI 
           END-IF
           IF JDLP-MLDI = 0 
              MOVE DLP-MBDI TO DLP-MLDI
           END-IF
           MOVE SPACE TO W-DES ENR-MART ENR-MASA
           IF INP-MLDI = PRODUIT-A
              PERFORM Mep-Age-Masa
              MOVE ART-MLDI TO COD-MART COD-MASA
              IF AR1-MLDI NOT NUMERIC
                   READ MXART
                   PERFORM STAT
                   READ MXARTSA
                   PERFORM STAT
              END-IF
              MOVE SPACE TO ENR-MFAM ENR-MGFA
              IF AR1-MLDI NOT NUMERIC
                   MOVE GRA-MART TO GRA-MFAM GRA-MGFA
                   MOVE FAM-MART TO FAM-MFAM FAM-MGFA
              ELSE MOVE AR1-MLDI TO CLE1-MFAM CLE1-MGFA
                   PERFORM Controle-Fou
              END-IF
              READ MXFAMART
              PERFORM STAT
              READ MXGRAFAM
              PERFORM STAT
              PERFORM Mep-Des-Art
              if PRO-MLDI not = 0 PERFORM Lect-Promo-Bdi.
           IF INP-MLDI = PRODUIT-P
              MOVE SPACE TO ENR-MPGE ENR-MPGEV AR2-MLDI ENR-MASA
              MOVE PRE-MLDI TO COD-MPGE COD-MPGEV
              READ MXPREGEN 
              PERFORM STAT
              READ MXPREGENV 
              PERFORM STAT
              PERFORM LECT-TSPMOP
              IF INL-MPGE NOT = 1
                   MOVE LIB-MPGE TO W-DES LPR-MLDI
              ELSE MOVE LPR-MLDI TO W-DES.
           IF INP-MLDI = PRODUIT-C
              MOVE SPACE TO ART-MLDI ENR-MASA
              MOVE ZERO TO QTE-MLDI PUB-MLDI PUN-MLDI
              MOVE 1 TO W-NIV
              PERFORM Lect-Mxcomment
              MOVE DES-MLDI TO W-DES.
           
           PERFORM Cal-Mon
           PERFORM Cal-Pac
           PERFORM Cal-Poi
           PERFORM Lect-Gricli
           IF TBP-MLDI = 0 MOVE 1 TO TBP-MLDI
           END-IF
           MOVE ART-MLDI TO SV-ART-MLDI
           MOVE QTE-MLDI TO SV-QTE-MLDI
           MOVE TLI-MLDI TO SV-TLI-MLDI
           MOVE TBP-MLDI TO SV-TBP-MLDI
           MOVE DEP-MLDI TO SV-DEP-MLDI
           MOVE AGS-MLDI TO SV-AGS-MLDI
           MOVE PZE-MLDI TO SV-PZE-MLDI
           MOVE ENR-MLDI TO SV-ENR-MLDI
           PERFORM Affich-Sto.

           IF TLI-MLDI NOT = 3 
090616     AND TYP-MBDI NOT = 8
                MOVE 0 TO Cm-MTCC-SelectedItem
                MODIFY Screen2-Cm-TCO, VISIBLE FALSE
           ELSE 
                MODIFY Screen2-Cm-TCO, VISIBLE TRUE
                MOVE TCC-MLDI TO Cm-MTCC-SelectedItem 
           END-IF
           PERFORM Affiche-CM-TCO
           
           IF MODU-M3 = 1 
                PERFORM Affich-TBPL
           END-IF

           IF PZE-MLDI = 2
                MOVE "Echange" TO LPZ-MLDI
           END-IF
           IF PZE-MLDI = 3
                MOVE "En attente" TO LPZ-MLDI
           END-IF
           IF PZE-MLDI = 1 OR 2 OR 3
                MOVE 1 TO WVISIBLE-LPZ
                MOVE 0 TO WVISIBLE-MON
           ELSE
                MOVE 0 TO WVISIBLE-LPZ
                MOVE 1 TO WVISIBLE-MON
           END-IF
           IF PZE-MLDI = 1
                MOVE 1 TO WENABLE-LPZ
           ELSE MOVE 0 TO WENABLE-LPZ
           END-IF
           PERFORM Screen2-Enable-Lpz-Mon
           IF PZE-MLDI = 0 MOVE 9 TO PZE-MLDI.
           PERFORM Screen2-Fld-To-Buf
           IF PZE-MLDI = 9 MOVE 0 TO PZE-MLDI.
           IF INP-MLDI = PRODUIT-A AND PRO-MLDI NOT = 0
                MODIFY Screen2-La-Promo, Visible TRUE
           ELSE MODIFY Screen2-La-Promo, Visible FALSE
           END-IF   
           IF INP-MLDI = PRODUIT-A AND (ITC-MART = 1 OR 2) 
           AND AR1-MLDI NOT NUMERIC  
                MODIFY Screen2-La-RQ, VISIBLE 1
           ELSE MODIFY Screen2-La-RQ, VISIBLE 0
           END-IF
           PERFORM Affiche-Marge
           PERFORM Lect-Lock-Ldis
           IF (CDFL = CHOIX-M OR "Z") 
060312     AND WENABLE NOT = 0
              PERFORM Mep-Enable-Rem
           END-IF
           IF INP-MLDI = PRODUIT-A AND ART-MLDI(1:4) NOT NUMERIC
           AND DOC-MART = 1
                MODIFY Screen2-Pb-Doc, VISIBLE TRUE
           ELSE MODIFY Screen2-Pb-Doc, VISIBLE FALSE
           END-IF
           IF INP-MLDI NOT = PRODUIT-C
                MODIFY Screen2-Pb-Liste,  TITLE "Liste"
           ELSE MODIFY Screen2-Pb-Liste,  TITLE "Voir le commentaire"
           END-IF

           MOVE 0 TO NOU-A.
           PERFORM Ligne-Non-Modifiee.

       Lect-Gricli.

       Mep-Des-Art.
           MOVE SPACE TO W-DES
           IF CO1-MART NOT NUMERIC 
           AND (    MOD-MART = 0
300306           OR DES-MLDI = SPACE ) | Pas de libellé en création article libellé modifable sinon
                STRING DES-MART DELIMITED BY "   "
                       " " DELIMITED BY SIZE
                       DE2-MART DELIMITED BY "   " INTO W-DES
                MOVE DES-MART TO DES-MLDI
                MOVE DE2-MART TO DE2-MLDI
           ELSE STRING DES-MLDI DELIMITED BY "   "
                       " " DELIMITED BY SIZE
                       DE2-MLDI DELIMITED BY "   " INTO W-DES.

       Lect-Mxcomment.
           MOVE SPACE TO ENR-MCMO
           MOVE "D" TO ORI-MCMO
           IF W-NIV = 1 MOVE CLE1-MLDI TO CLE-MCMO. | ligne normale  
           IF W-NIV = 3 MOVE "E" TO INO-MCMO        | texte entête
                        MOVE CLE1-MBDI TO CLE-MCMO.
           READ MXCOMMENT 
           PERFORM STAT.

       Add-Mon.
           IF INP-MLDI = PRODUIT-A OR PRODUIT-P 
                ADD 1 TO TOT-LIG
                IF PZE-MLDI NOT = 4 
                   ADD W-MON TO TOT-HTT
                END-IF
           END-IF
           IF (TLI-MLDI = 1 AND PZE-MLDI NOT = 4)
           OR (TLI-MLDI NOT = 1 AND TYP-MBDI = 0 AND PZE-MLDI NOT = 4)
                CONTINUE 
           ELSE EXIT PARAGRAPH
           END-IF
           ADD W-MON TO TOT-HT.
           IF IRPM-MLDI = 1 ADD W-MON TO TOT-RPM
           END-IF
           ADD W-POI TO TOT-POI.
           ADD W-VOL TO TOT-VOL.
140909     IF ISQ-MLDI = 1 COMPUTE TOT-MG = TOT-MG + W-MON
                      ELSE COMPUTE TOT-MG = TOT-MG + W-MON - W-PAC
           END-IF
           IF INP-MLDI = PRODUIT-A ADD W-MON TO TOT-HPI
                              ELSE ADD W-MON TO TOT-HPR
           END-IF           
           MOVE 0 TO W-OTE
           PERFORM MAJ-BASE.
           IF  PZE-MLDI NOT = 4
020813     AND CAL-COMP-REMISE = 0 | Agram TOT-HTB sert à calculer la remise complémentaire, mais continuait à être calculé pendant le calcul...
                ADD W-MOB TO TOT-HTB
           END-IF.

       Sub-Mon.
           IF (INP-MLDI = PRODUIT-A OR PRODUIT-P) AND PZE-MLDI NOT = 4 
                SUBTRACT W-MON FROM TOT-HTT
           END-IF
           IF (TLI-MLDI = 1 AND PZE-MLDI NOT = 4)
           OR (TLI-MLDI NOT = 1 AND TYP-MBDI = 0 AND PZE-MLDI NOT = 4)
                CONTINUE 
           ELSE EXIT PARAGRAPH
           END-IF
           SUBTRACT W-MON FROM TOT-HT.
           IF IRPM-MLDI = 1 SUBTRACT W-MON FROM TOT-RPM
           END-IF
           SUBTRACT W-POI FROM TOT-POI
           SUBTRACT W-VOL FROM TOT-VOL
           SUBTRACT W-MARGE FROM TOT-MG.
           IF INP-MLDI = PRODUIT-A SUBTRACT W-MON FROM TOT-HPI
                        ELSE SUBTRACT W-MON FROM TOT-HPR
           END-IF
           IF INP-MLDI = PRODUIT-A OR PRODUIT-P ADD -1 TO TOT-LIG
           END-IF
           PERFORM MAJ-BASE.
           IF PZE-MLDI NOT = 4
                SUBTRACT W-MOB FROM TOT-HTB
           END-IF.

       Maj-Base.
           IF INP-MLDI = PRODUIT-A PERFORM RECH-CT.
           IF INP-MLDI = PRODUIT-P PERFORM RECH-CTP.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 8
               IF C-TVA(I) = 9
                  MOVE W-CT TO C-TVA(I)
               END-IF
               IF C-TVA(I) = W-CT
                  IF W-OTE = 1 OR 2
                       SUBTRACT W-MON FROM C-MON(I)
                  ELSE ADD W-MON TO C-MON(I)
                  END-IF
                  IF (INP-MLDI = PRODUIT-A) 
                  OR (INP-MLDI = PRODUIT-P AND AES-MPGEV = 0)
                       IF W-OTE = 1 OR 2
                            SUBTRACT W-MON FROM C-MOS(I)
                       ELSE ADD W-MON TO C-MOS(I)
                       END-IF
                  END-IF
                  MOVE 9 TO I
               END-IF
           END-PERFORM.

           MOVE ZERO TO TOT-TTC TOT-TVA
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 8
               ADD C-MON(I) TO TOT-TTC
               IF C-TVA(I) NOT = 9 AND NOT = 0
                   MOVE C-TVA(I) TO J
                   IF RCT-MPAR(J) NOT = 1
                        COMPUTE W-TVA ROUNDED = C-MON(I)
                           * TVA-MPAR(J) / 100
                        ADD W-TVA TO TOT-TTC TOT-TVA
                   END-IF
               END-IF
           END-PERFORM.
                     
       RECH-CT.
           MOVE 0 TO W-CT
           IF AFC-MBDI = 0 MOVE TVA2-MFAM TO W-CT.
           IF AFC-MBDI = 3 MOVE TVA3-MFAM TO W-CT. 
           IF AR1-MLDI NOT NUMERIC
           AND NAT-MART = 2
           AND IRPM-MLDI <> 1

           AND ITM-MLDI = 1
              MOVE 0 TO W-CT
           END-IF.
           IF AR1-MLDI NOT NUMERIC
           AND NAT-MART = 2
           AND IRPM-MLDI = 1
           AND IRE-MLDI = 2
              MOVE 0 TO W-CT
           END-IF.

       RECH-CTP.
           MOVE 0 TO W-CT
           IF AFC-MBDI = 0 MOVE TVA-MPGE TO W-CT.
           IF AFC-MBDI = 2 MOVE TVA2-MPGE TO W-CT.
           IF AFC-MBDI = 3 MOVE TVA3-MPGE TO W-CT.

       CAL-PAC.
           IF INP-MLDI = PRODUIT-P
             EVALUATE TPR-MPGEV 
             WHEN 1
                MOVE PAC-MPGEV TO PRU-MLDI
             WHEN 2
                COMPUTE PRU-MLDI ROUNDED = PUN-MLDI * PPRS-MPGEV / 100
             WHEN 3

                COMPUTE PRU-MLDI ROUNDED = PAC-MPGEV * PPRS-MPGEV |/ 100
             END-EVALUATE
           END-IF
           IF INP-MLDI = PRODUIT-P AND NBT-MPGEV = 1
             MOVE QTE-MLDI TO W-HEU
             COMPUTE W-PAC = (W-HEU1 * PRU-MLDI)
                              + (W-HEU2 * PRU-MLDI / 60)
             IF QTE-MLDI < ZERO MULTIPLY -1 BY W-PAC
             END-IF
           ELSE 
             IF ISQ-MLDI = 0 
                IF ART-MLDI(1:4) NOT NUMERIC AND UPR-MART NOT = 0
                AND INP-MLDI = PRODUIT-A
                  COMPUTE W-PAC ROUNDED = QTE-MLDI * PRU-MLDI / UPR-MART
                ELSE
                  COMPUTE W-PAC ROUNDED = QTE-MLDI * PRU-MLDI
                END-IF
           ELSE MOVE PRU-MLDI TO W-PAC.
           IF INP-MLDI = PRODUIT-C MOVE 0 TO W-PAC
           END-IF.

       CAL-POI.
           IF IPO-MFAM = 1 OR 2
120418          MOVE NUU-MART TO W-NUU
                IF UAC-MART = 0 
                OR CLI-PALM = 850225 |Chez LANDA dans UAC ce n'est pas le conditionnement...
270116          OR UPO-MPAR = 2      |Finalement je mets un paramètre sinon Hydraparts et Agram crient...
                   MOVE 1 TO UAC-MART W-NUU
                END-IF
                COMPUTE W-POI ROUNDED = POI-MART * QTE-MLDI
200715                                 / UAC-MART 
120418                                 / W-NUU
           ELSE MOVE ZERO TO W-POI.
           IF IPO-MFAM = 2 COMPUTE W-POI ROUNDED = W-POI * 1000.
           COMPUTE W-VOL ROUNDED = QTE-MLDI * VOL-MART
           IF INP-MLDI NOT = PRODUIT-A OR ART-MLDI(1:4) NUMERIC
               MOVE ZERO TO W-POI W-VOL.       
       Cal-Mon.
           IF INP-MLDI = PRODUIT-P AND (CAL-MPGEV = 1 OR 2)
                MOVE 1 TO QTE-MLDI.
           PERFORM CAL-PU
           IF INP-MLDI = PRODUIT-P AND NBT-MPGEV = 1
                MOVE QTE-MLDI TO W-HEU
                COMPUTE W-MON ROUNDED = 
                   (W-HEU1 * W-PUN) + (W-HEU2 * W-PUN / 60)
                COMPUTE W-MOB ROUNDED = (W-HEU1 * W-PRB)
                              + (W-HEU2 * W-PRB / 60)
                IF QTE-MLDI < ZERO MULTIPLY -1 BY W-MON
                                   MULTIPLY -1 BY W-MOB
                END-IF
           ELSE IF ISQ-MLDI = 0
                   IF AR1-MLDI NOT NUMERIC AND UPR-MART NOT = 0
                   AND INP-MLDI = PRODUIT-A
                      COMPUTE W-MON ROUNDED
                         = QTE-MLDI * ((W-PUN / UPR-MART) + W-PUS)
                      COMPUTE W-MOB ROUNDED
                         = QTE-MLDI * W-PRB / UPR-MART
                 ELSE COMPUTE W-MON ROUNDED = QTE-MLDI * (W-PUN + W-PUS)
                      COMPUTE W-MOB ROUNDED = QTE-MLDI * W-PRB
                ELSE COMPUTE W-MON ROUNDED = W-PUN + W-PUS
                     MOVE W-PRB TO W-MOB.
           IF INP-MLDI = PRODUIT-C MOVE ZERO TO W-MON.
           IF INP-MLDI = PRODUIT-P OR PRODUIT-C MOVE ZERO TO W-MOB.

       Cal-Pu.
      *    Calcul du prix unitaire net de la ligne (W-PUN),
      *    du montant du port usine (W-PUS)
      *    et du PU brut pour calcul remise complémentaire (W-PRB)
           MOVE PUB-MLDI TO W-PUB W-PRB
           COMPUTE W-PUN ROUNDED = W-PUB -
                          (W-PUB * REM-MLDI / 100)
           COMPUTE W-PUN ROUNDED = W-PUN -
                          (W-PUN * REC-MLDI(1) / 100)
           COMPUTE W-PUN ROUNDED = W-PUN -
                          (W-PUN * REC-MLDI(2) / 100)
           COMPUTE W-PUN ROUNDED = W-PUN -
                          (W-PUN * REC-MLDI(3) / 100)
           COMPUTE W-PUN ROUNDED = W-PUN -
                          (W-PUN * REC-MLDI(4) / 100)
           COMPUTE W-PUN ROUNDED = W-PUN -
                          (W-PUN * REC-MLDI(5) / 100)
           COMPUTE W-PUN ROUNDED = W-PUN -
                          (W-PUN * REC-MLDI(6) / 100).
           IF IPNS-MLDI <> 1
              MOVE W-PUN TO PUN-MLDI
           ELSE
              MOVE PUN-MLDI TO W-PUN
           END-IF
           MOVE PUB-MLDI TO W-PRB
           MOVE 0 TO W-PUS
           IF INP-MLDI NOT = PRODUIT-A MOVE 0 TO W-PRB.
           IF INP-MLDI = PRODUIT-A AND IRE-MFAM = 1 MOVE 0 TO W-PRB.
           IF PUS-MPAR = 1 AND PUS-MCLD = 1 AND INP-MLDI = PRODUIT-A
           AND PUS-MFAM = 0 AND IFO-MBDI NOT = 1 AND PUS-MBDI = 0
                COMPUTE W-PUS ROUNDED = PUB-MLDI * PPU-MPAR / 100.

       Mep-Pze-Not-Zero.
           MOVE ZERO TO PUB-MLDI REM-MLDI PUN-MLDI W-PUN W-MON
                        REC-MLDI(1) REC-MLDI(2) IPNS-MLDI
                        REC-MLDI(3) REC-MLDI(4)
                        REC-MLDI(5) REC-MLDI(6) REMC-MLDI
           MOVE 0 TO WENABLE-PUB WENABLE-REM
           IF LPZ-MLDI = SPACE AND PZE-MLDI = 1
                MOVE LPZ-MPAR TO LPZ-MLDI
           END-IF
           IF PZE-MLDI = 2 MOVE "Echange" TO LPZ-MLDI
           END-IF
           IF PZE-MLDI = 3 MOVE "En attente" TO LPZ-MLDI
           END-IF
           MOVE 1 TO WVISIBLE-LPZ
           MOVE 0 TO WVISIBLE-MON
           IF PZE-MLDI = 1
                MOVE 1 TO WENABLE-LPZ
           ELSE MOVE 0 TO WENABLE-LPZ
           END-IF
           PERFORM Screen2-Enable-Pub-Rem
           PERFORM Screen2-Enable-Lpz-Mon
           PERFORM Cal-Mon
           IF PZE-MLDI = 0 MOVE 9 TO PZE-MLDI.
           PERFORM Calcul-Et-Affiche-Prix| au lieu de Screen2-Fld-To-Buf
           MODIFY Screen2-DaEf-Lpz, VALUE LPZ-MLDI
           IF PZE-MLDI = 9 MOVE 0 TO PZE-MLDI.
           
       Mep-Pze-Zero.
           IF INP-MLDI = PRODUIT-P AND (CAL-MPGEV = 2 OR 3)
                CONTINUE
           ELSE
                MOVE 1 TO WENABLE-PUB
           END-IF
           MOVE 1 TO WENABLE-REM WVISIBLE-MON
           IF AUTO-MOP = 2 OR IRPM-MLDI = 1
              MOVE 0 TO WENABLE-REM WENABLE-PUB
           END-IF
270312* Quitté     
           IF INP-MLDI = PRODUIT-P AND (CAL-MPGEV = 1 OR 4)
              MOVE 1 TO WENABLE-PUB
           END-IF
270312
           MOVE 0 TO WENABLE-LPZ WVISIBLE-LPZ
           PERFORM Screen2-Enable-Pub-Rem
           PERFORM Screen2-Enable-Lpz-Mon

           IF INP-MLDI = PRODUIT-P
121113     AND NOT (PVT-MPGEV = 0 AND (CAL-MPGEV = 2 OR 3))
              IF INL-MPGE = 1
                  MOVE LPR-MLDI TO LIB-MPGE
              END-IF
              PERFORM Maj-Enr-Pre
           END-IF
           IF INP-MLDI = PRODUIT-A AND ART-MLDI(1:4) NOT NUMERIC
              IF MOD-MART = 1 |OR S3D-MCLD = 1
                 MOVE DES-MLDI TO DES-MART
                 MOVE DE2-MLDI TO DE2-MART
              END-IF
              PERFORM Maj-Enr-Art
           END-IF 
           IF INP-MLDI = PRODUIT-A AND ART-MLDI(1:4) NUMERIC
           AND PAC-MLDI <> 0
              MOVE PAC-MLDI TO CAL-PV-PTF
              MOVE FOU-MLDI TO CAL-PV-FOU
              MOVE AR2-MLDI TO CAL-PV-REF  
              MOVE 1 TO W-CAL-PUB
              PERFORM After-Pac
           END-IF
           PERFORM Cal-Mon
           IF PZE-MLDI = 0 MOVE 9 TO PZE-MLDI.
           PERFORM Calcul-Et-Affiche-Prix| au lieu de Screen2-Fld-To-Buf
           IF PZE-MLDI = 9 MOVE 0 TO PZE-MLDI.

       Calcul-Et-Affiche-Prix.          
           PERFORM Cal-Mon
           PERFORM Affiche-Prix
           PERFORM Affiche-Rec
           PERFORM Cal-Pac
           PERFORM Affiche-Marge.

       Affiche-Prix.
           MOVE PUB-MLDI TO D72 D92  
           IF PUB-MLDI > 9999999
              MODIFY Screen2-DaEf-Pub, VALUE D92
           ELSE
              MODIFY Screen2-DaEf-Pub, VALUE D72
           END-IF
           MOVE REM-MLDI TO D22
           MODIFY Screen2-DaEf-Rem, VALUE D22
           MOVE PUN-MLDI TO D72 D92
           IF PUN-MLDI > 9999999
              MODIFY Screen2-DaEf-Pun, VALUE D92
           ELSE
              MODIFY Screen2-DaEf-Pun, VALUE D72
           END-IF
           MOVE W-MON TO D72 D92 
           IF W-MON > 9999999
              MODIFY Screen2-DaEf-Mon, VALUE D92
           ELSE
              MODIFY Screen2-DaEf-Mon, VALUE D72
           END-IF
           .

       Affiche-Rec.
           MOVE REC-MLDI(1) TO D22
           MODIFY Screen2-DaEf-REC1, VALUE D22
           MOVE REC-MLDI(2) TO D22
           MODIFY Screen2-DaEf-REC2, VALUE D22
           MOVE REC-MLDI(3) TO D22
           MODIFY Screen2-DaEf-REC3, VALUE D22
           MOVE REC-MLDI(4) TO D22
           MODIFY Screen2-DaEf-REC4, VALUE D22
           MOVE REC-MLDI(5) TO D22
           MODIFY Screen2-DaEf-REC5, VALUE D22
           MOVE REC-MLDI(6) TO D22
           MODIFY Screen2-DaEf-REC6, VALUE D22.

       Lect-Art-Ou-Pre.
           IF INP-MLDI = PRODUIT-P
                INITIALIZE ENR-MPGE ENR-MPGEV
                MOVE PRE-MLDI TO COD-MPGE COD-MPGEV
                READ MXPREGEN
                PERFORM STAT
                READ MXPREGENV
                PERFORM STAT
                PERFORM LECT-TSPMOP
                MOVE TVA-MPGE TO TVA-MFAM
                MOVE TVA2-MPGE TO TVA2-MFAM
                MOVE TVA3-MPGE TO TVA3-MFAM
           END-IF.
           IF INP-MLDI = PRODUIT-A
                INITIALIZE ENR-MART ENR-MFAM ENR-MGFA ENR-MASA  
                MOVE ART-MLDI TO W-ART COD-MART COD-MASA
                PERFORM Mep-Age-Masa
                IF W-AR1 NOT NUMERIC
                     READ MXART
                     PERFORM STAT
                     READ MXARTSA
                     PERFORM STAT
                     MOVE GRA-MART TO GRA-MFAM GRA-MGFA
                     MOVE FAM-MART TO FAM-MFAM FAM-MGFA
                     READ MXFAMART
                     PERFORM STAT
                     READ MXGRAFAM
                     PERFORM STAT
                ELSE INITIALIZE ENR-MFAM
                     MOVE W-AR1 TO CLE1-MFAM CLE1-MGFA
                     READ MXFAMART
                     PERFORM STAT
                     READ MXGRAFAM
                     PERFORM STAT
                END-IF
           END-IF.

       Maj-Ligne.
           IF INP-MLDI = PRODUIT-C OR ART-MLDI = SPACE
                EXIT PARAGRAPH.
           MODIFY Screen2-Handle, ENABLED FALSE
           PERFORM Curseur-Sablier
           PERFORM Lect-Art-Ou-Pre
           PERFORM CAL-MON.
           PERFORM CAL-POI.
           PERFORM CAL-PAC.
           COMPUTE W-MARGE ROUNDED = W-MON - W-PAC
140909     IF ISQ-MLDI = 1 MOVE W-MON TO W-MARGE
140909     END-IF
           IF W-OTE = 1 OR 2 
                PERFORM SUB-MON
           ELSE PERFORM ADD-MON
           END-IF.

           IF W-OTE = 0  | supprimer n° de série si pas concerné
           AND (INP-MLDI NOT = PRODUIT-A 
                OR W-AR1 NUMERIC 
                OR (NAT-MGFA NOT = 9 AND NAT-MART NOT = 2))
                MOVE 1 TO W-NIV
                PERFORM DEL-MSPMAT THRU F-DEL-MSPMAT
                MOVE 0 TO IRPM-MLDI.
           
           IF INP-MLDI = PRODUIT-A 
           AND TYP-MBDI NOT = 8 
           AND AR1-MLDI NOT NUMERIC  
               PERFORM Maj-Artsa   
               IF TYC-MBDI = 1 AND SRI-MPAR = 1 AND TAA-MBDI NOT = 0
               AND TAA-MLDI NOT = 0
                  MOVE 1 TO W-NIV
                  MOVE CLE1-MLDI TO A-CLEL
                  PERFORM Copie-TSV-Mspmat THRU F-Copie-TSV-Mspmat
               END-IF
           END-IF.
  
           IF INP-MLDI = PRODUIT-A 
           AND TYP-MBDI NOT = 8 
           AND AR1-MLDI NUMERIC   
               MOVE ART-MLDI TO W-ART-MAJ | mise à jour ligne art divers
               MOVE 0 TO W-LIN-MAJ     
               MOVE QTE-MLDI TO A-QTE      

               IF W-OTE = 0 OR 2
                  PERFORM Maj-Hisvte-Ldis
                  PERFORM Maj-Reserv THRU F-Maj-Reserv
                  MOVE ZERO TO SV-HCD-MLDI
                  PERFORM Maj-Hiscdd THRU F-Maj-Hiscdd
               END-IF
           END-IF.

           IF INP-MLDI = PRODUIT-P
               IF W-OTE = 0 OR 2
                  PERFORM Maj-Reserv THRU F-Maj-Reserv
                  MOVE ZERO TO SV-HCD-MLDI
                  PERFORM Maj-Hiscdd THRU F-Maj-Hiscdd

               END-IF
           END-IF  


           IF TYP-MBDI = 8 AND (W-OTE = 0 OR 2)
               PERFORM MAJ-HISDVD THRU F-MAJ-HISDVD
           END-IF

           IF HDD-MLDI NOT = 0 AND TYP-MBDI = 1 AND W-OTE = 0
               PERFORM Livre-HISDVD
           END-IF
      
           PERFORM Affiche-Marge.
           MODIFY Screen2-Handle, ENABLED TRUE
           PERFORM Curseur-Fleche.

       Affiche-Marge.
           | Si MobiDis et client = LANDA, on n'affiche pas la marge à la ligne
           IF MOB-PALM > 0 AND (CLI-PALM = 850225 OR <  10)        
              EXIT PARAGRAPH
           END-IF
           MOVE ZERO TO D22
           IF AMB-MAGD = 1 AND AUTO-MG <> 2 AND NAM-MAGD NOT = 2
              IF PZE-MLDI = 0 OR 1
                 COMPUTE W-PM ROUNDED = (W-MON - W-PAC) / W-MON * 100
                 IF W-MON = 0 MOVE 0 TO W-PM
                 END-IF
                 IF ISQ-MLDI = 1 
040811           OR IRPM-MLDI = 1 
                    MOVE 100 TO W-PM
                 END-IF
                 MOVE W-PM TO D22. 
           MODIFY Screen2-La-Mbl, TITLE D22
           IF AMB-MAGD = 1 AND AUTO-MG <> 2 
              PERFORM TEST-MARGE 
              IF NAM-MAGD NOT = 2
                 MODIFY Screen2-La-MsgMBL, TITLE W-MSG-PM, 
                                           COLOR W-COLOR.

       TEST-MARGE.
           IF ART-MLDI(1:4) NUMERIC 
                MOVE ART-MLDI(1:2) TO CLE1-MGFD
           ELSE MOVE GRA-MART TO GRA-MGFD.
           READ MXGRAFAD INVALID MOVE SPACE TO ENR-MGFD
           END-READ
           PERFORM STAT
      
           IF ART-MLDI(1:4) NUMERIC 
                MOVE ART-MLDI(1:4) TO CLE1-MFAM
           ELSE MOVE GRA-MART TO GRA-MFAM
                MOVE FAM-MART TO FAM-MFAM
           END-IF.
           READ MXFAMART INVALID MOVE SPACE TO ENR-MFAM
           END-READ
           PERFORM STAT
           PERFORM Init-Marges
      
           IF INP-MLDI = PRODUIT-A AND ART-MLDI(1:4) NOT NUMERIC
           AND (MIA-MAGD <> 1 OR TYC-MBDI <> 1)
              IF ICO-MART = 1 SUBTRACT MIB-MGFD FROM MMI-MGFD
                              SUBTRACT MIB-MGFD FROM MMX-MGFD
                              SUBTRACT MIB-MGFD FROM MMP-MGFD
              ELSE IF ICO-MART = 9 OR 2
                                   ADD MAB-MGFD TO MMI-MGFD
                                   ADD MAB-MGFD TO MMX-MGFD
                                   ADD MAB-MGFD TO MMP-MGFD.
           IF INP-MLDI = PRODUIT-P MOVE MIP-MPAR TO MMI-MGFD
                                   MOVE MXP-MPAR TO MMX-MGFD
                                   MOVE MPP-MPAR TO MMP-MGFD.
       
           MOVE SPACE TO W-MSG-PM
           MOVE 0 TO W-COLOR
           IF PZE-MLDI > 1
              MOVE 198 TO W-COLOR
           ELSE IF W-PM < MMP-MGFD
              MOVE MPL-MAGD TO W-MSG-PM
              MOVE 432 TO W-COLOR     | rouge < plancher
240111        IF UNE-MARGE-BAD = 0 MOVE 1 TO UNE-MARGE-BAD
              END-IF
           ELSE IF W-PM < MMI-MGFD AND > MMP-MGFD
              MOVE MMN-MAGD TO W-MSG-PM
              MOVE 525 TO W-COLOR     | rouge < mini
           ELSE IF W-PM > MMX-MGFD
              MOVE MMX-MAGD TO W-MSG-PM
              MOVE 524 TO W-COLOR     | vert > maxi
           ELSE
              MOVE 198 TO W-COLOR.    | incolore    
191118* supprimé dans le cadre de la restandardisation de Topaz
      *     IF MODU-M3 = 1
      *     AND INP-MLDI = PRODUIT-A AND ART-MLDI(1:4) NOT NUMERIC
      *        perform Controle-Marge-M3
      *     END-IF.

      ** contrôle par rapprt au prix d'achat du référentiel
      * Controle-Marge-M3.
      *     move mxart-cob to tmp-file-process1
      *     inspect mxart-cob replacing all lk-numsoc by w-socr 
      *     OPEN I-O MXART2 
      *     PERFORM STAT
      *     move space to enr-mart2
      *     move ART-MLDI to cod-mart2
      *     read mxart2 invalid move space to cod-mart2
      *     end-read
      *     perform stat
      *     close mxart2
      *     move tmp-file-process1 to mxart-cob
      *     if cod-mart2 <> space and pun-mldi < pac-mart2
      *        MOVE MPL-MAGD TO W-MSG-PM
      *        MOVE 432 TO W-COLOR     | rouge < plancher
      *        MOVE 2 TO UNE-MARGE-BAD
      *     end-if.

       Lect-Lock-Ldis.
           IF CDF NOT = CHOIX-I
              READ MXLDIS LOCK INVALID 
                          MOVE "Lecture LDIS/LOCK" TO Acu-Msg-2
                          MOVE CLE1-MLDI TO Acu-Msg-3
                          GO ERREUR
              END-READ
              PERFORM STAT
              IF IND-STAT = 1 
                   MOVE "399" TO Acu-Msg-Id
                   PERFORM Acu-Show-Msg
                   MOVE 0 TO WENABLE
                   PERFORM Screen2-Enable
                   MOVE CHOIX-I TO CDFL
                   READ MXLDIS
                   PERFORM STAT
              else IF CDFL NOT = "Z" MOVE CHOIX-M TO CDFL
                   END-IF
                   MOVE ENR-MLDI TO SV-ENR-MLDI
                   MOVE QTE-MLDI TO SV-QTE-MLDI
                   MOVE ART-MLDI TO SV-ART-MLDI
                   MOVE TLI-MLDI TO SV-TLI-MLDI
                   MOVE TBP-MLDI TO SV-TBP-MLDI
                   MOVE PZE-MLDI TO SV-PZE-MLDI
                   MOVE DEP-MLDI TO SV-DEP-MLDI
                   MOVE AGS-MLDI TO SV-AGS-MLDI
                   MOVE 1 TO WENABLE
                   PERFORM Screen2-Enable
              end-if
           ELSE
              MOVE 0 TO WENABLE
              PERFORM Screen2-Enable
              MOVE CHOIX-I TO CDFL.
           
       Lect-Lock-Artsa.
           MOVE 1 TO W-OK-ASA
           PERFORM Mep-Age-Masa
           MOVE W-ART-MAJ TO COD-MASA
           READ MXARTSA LOCK INVALID 
                IF MOB-PALM = 0 
                   PERFORM Creat-Artsa
                   GO Lect-Lock-Artsa
                ELSE
                   MOVE 0 TO W-OK-ASA
                   EXIT PARAGRAPH
                END-IF
           END-READ
           PERFORM STAT
      *     MOVE "STOCK ARTICLE" TO ScreenOccupe-Fic      | Le 07/01/2009: Commenté car, chez LANDA, le bouclage 
      *     MOVE CLE1-MASA TO ScreenOccupe-Cle            | ne dure qu'environ 1mn30 et le programme "tombe" 
      *     PERFORM Mis-EnregOccupe                       | alors que la tache tourne toujours !!
           IF IND-STAT = 1 
070109        MOVE "399" TO Acu-Msg-Id
070109        PERFORM Acu-Show-Msg
              GO Lect-Lock-Artsa
           END-IF.

       Creat-Artsa.
           INITIALIZE ENR-MASA
           PERFORM Mep-Age-Masa
           MOVE W-ART-MAJ TO COD-MASA
           MOVE 1 TO STO-MASA
160109     ACCEPT DME-MASA FROM CENTURY-DATE
           WRITE ENR-MASA INVALID MOVE "Ecriture ARTSA" TO Acu-Msg-2
                                  MOVE CLE1-MASA TO Acu-Msg-3
                                  GO ERREUR.
           PERFORM STAT.
                   
      ******************************************************************
      *                  Mise à jour des ventes manquées               *
      ****************************************************************** 
       MAJ-VMANQUE.
      *     
       Call-Liste-Art.
           MOVE SPACE TO LK-MART-L
           MOVE W-AGE TO LK-MART-L-AGE
           MOVE CLI-MBDI TO LK-MART-L-CLI
           MOVE TCC-MLDI TO LK-MART-L-TCC
           MOVE "D" TO LK-MART-L-MOD
           MOVE 1 TO LK-MART-L-SER
111016     MOVE MXFWK-PALM TO LK-MART-L-PREF
           CALL "mart-l.acu" USING ZONE-PALM LK-MART-L
           CANCEL "mart-l.acu"
           PERFORM Repositionne-Screen2
           IF LK-MART-L-COD = SPACE
                EXIT PARAGRAPH
           END-IF
           MOVE LK-MART-L-NSER TO SV-SER

           PERFORM Mep-Age-Masa
           MOVE LK-MART-L-COD TO COD-MART COD-MASA
           READ MXART INVALID EXIT PARAGRAPH
           END-READ
           PERFORM STAT
           IF CANN-MART = 1 OR TAR-MART = 2 OR ILV-MART = 1 
              EXIT PARAGRAPH
           END-IF
200312     |article Tipmat chez M3 ou vice-versa (pas de test sur Topaz)
191118* supprimé dans le cadre de la restandardisation de Topaz
      *     IF MODU-M3 = 1 
      *     AND SOC-MART <> STC-MAGC
      *     AND (SOC-MART = 1 OR 2)
      *        IF SOC-MART = 2 
      *           MOVE "Attention! Pièce TIPMAT!" to acu-msg-1
      *        ELSE
      *           MOVE "Attention! Pièce M3!" to acu-msg-1
      *        END-IF
      *        move "Confirmez-vous?" to acu-msg-2
      *        PERFORM msg-on
      *        if acu-return-value = 2
      *           MOVE 0 TO W-OK
      *        end-if
      *     END-IF.

           READ MXARTSA INVALID MOVE SPACE TO ENR-MASA
           END-READ
           PERFORM STAT
           MOVE SPACE TO ENR-MFAM ENR-MGFA
           MOVE GRA-MART TO GRA-MFAM GRA-MGFA
           MOVE FAM-MART TO FAM-MFAM FAM-MGFA
           READ MXFAMART
           PERFORM STAT
           READ MXGRAFAM
           PERFORM STAT
           IF COD-MART NOT = ART-MLDI
              MOVE 1 TO NOU-A
           END-IF
           MOVE COD-MART TO W-ART
           PERFORM After-Art
           PERFORM Screen2-Enable-Dep-Ags
           PERFORM Affiche-FouEtBoutons
           IF INO-MART = 1 OR 2 
              PERFORM TRAIT-NOMLDIS
           END-IF
           IF (NAT-MGFA = 9 OR NAT-MART = 2)
           AND SV-SER NOT = SPACE
              PERFORM TRAIT-MSPMAT
           END-IF
           IF PUB-MLDI = 0 AND PZE-MLDI = 0 MOVE 11 TO CONTROL-ID
                                       ELSE MOVE 31 TO CONTROL-ID.
           
       Call-Liste-Fsa.
           MOVE SPACE TO LK-MGFA-T
           MOVE AR1-MLDI(1:2) TO LK-MGFA-T-GRA
           MOVE AR1-MLDI(3:2) TO LK-MGFA-T-FAM
           CALL "mgfa-t.acu" USING ZONE-PALM LK-MGFA-T
           CANCEL "mgfa-t.acu"
           PERFORM Repositionne-Screen2
           IF LK-MGFA-T-GRA = ZERO
                EXIT PARAGRAPH
           END-IF
           PERFORM Ligne-Modifiee
           MOVE LK-MGFA-T-GRA TO W-GFA
           MOVE LK-MGFA-T-FAM TO W-FSA
           PERFORM After-Fsa
           IF W-IND = 0 
                MODIFY Screen2-Ef-Ar1, VALUE SPACE
           ELSE MODIFY Screen2-Ef-Ar1, VALUE W-AR1
                MOVE W-AR1 TO AR1-MLDI
                PERFORM Affiche-FouEtBoutons
           END-IF.
           PERFORM Screen2-Enable-Dep-Ags.

       Screen2-Cm-TCO-Ev-Ntf-Selchange.
           PERFORM Ligne-Modifiee.
           INQUIRE Screen2-Cm-TCO, VALUE IN CM-MTCC-Items(1)
           MOVE Cm-MTCC-COD(1) TO TCC-MLDI 
           PERFORM Lect-TYPCDC 
           PERFORM Recherche-TCF

           PERFORM Lect-Gricli.
           PERFORM Cal-Delai      
           IF INP-MLDI = PRODUIT-A
              IF ART-MLDI(1:4) NOT NUMERIC
                 PERFORM MAJ-REMISE
              ELSE
                 PERFORM MAJ-REMISE-DIVERS
              END-IF
              PERFORM Affiche-Prix
              PERFORM Affiche-Rec
           END-IF
           .

       Cal-Delai.

       Recherche-Jour-Ouvrable.

       Recherche-TCF.
 
      * Test existence TCF de chaque type pour proposer dans fenetre choix
       Test-Exi-Tcf.
           
      *
       Screen2-Pb-Compo-Link.

       Screen2-Pb-Serie-Link.

       Trait-Commentaire.
070411*     IF INP-MLDI NOT = PRODUIT-C EXIT PARAGRAPH
070411*     END-IF
           MOVE SPACE TO LK-CCOMMENT
           INQUIRE Screen2-Ef-Des, VALUE LK-CCOMMENT-LIB
           IF LK-CCOMMENT-LIB = SPACE
              MODIFY Screen2-Ef-Des, VALUE "."
           END-IF
           PERFORM Avant-Call
           MOVE "D" TO LK-CCOMMENT-ORI
           MOVE CLE1-MLDI TO LK-CCOMMENT-CLE
           IF TYP-MBDI = 0 MOVE "C" TO LK-CCOMMENT-STA
           ELSE IF TYP-MBDI = 8 MOVE "D" TO LK-CCOMMENT-STA
           ELSE MOVE "L" TO LK-CCOMMENT-STA.
           MOVE INP-MLDI TO LK-CCOMMENT-INP
           MOVE CDF TO LK-CCOMMENT-CDF
           IF LK-CCOMMENT-CDF = "Z" MOVE CHOIX-M TO LK-CCOMMENT-CDF
           END-IF
           CALL "ccomment.acu" USING ZONE-PALM LK-CCOMMENT
           CANCEL "ccomment.acu"
           PERFORM Repositionne-Screen2
           IF CDF = CHOIX-I
070411     OR INP-MLDI <> PRODUIT-C
              EXIT PARAGRAPH
           END-IF
           MOVE 1 TO W-NIV
           PERFORM Lect-MXCOMMENT
           MODIFY Screen2-Ef-Des, VALUE LIB-MCMO
           PERFORM Valid-Ligne
           PERFORM Mep-Detail-Ldis
           MODIFY Screen2-DaGd-1, Y = Screen2-DaGd-1-Cursor-Y,
                RECORD-DATA = Ligne-Af, COLOR = 0.
           move Screen2-DaGd-1-Cursor-Y to WY
           PERFORM Sauv-Grid-Cle
           IF CDFL = CHOIX-C OR "Z"
                PERFORM AJOUT-Ldis
           END-IF.

       Maj-Enr-Art.
           MOVE DES-MART TO DES-MLDI
           MOVE DE2-MART TO DE2-MLDI

      * pour calcul marge si PV client = PAMP
           MOVE PUB-MLDI TO CAL-MARGE-PUB   
           MOVE PUN-MLDI TO CAL-MARGE-PUN   
           PERFORM CAL-PV-ART-D    | calcul prix de vente
           MOVE W-PUB TO PUB-MLDI
           MOVE COD-MART TO W-ART          
           MOVE PUB-MLDI TO CAL-MARGE-PUB   
           MOVE PUN-MLDI TO CAL-MARGE-PUN 
           MOVE 0 TO IPNS-MLDI
           PERFORM CAL-MARGE THRU F-CAL-MARGE.  | calcul prix revient
           MOVE CAL-MARGE-PAC TO PRU-MLDI

           IF TYP-MBDI NOT = 0 MOVE 1 TO TLI-MLDI.
           MOVE CAS-MASA TO CAS-MLDI.
           PERFORM MAJ-REMISE.       | calcul remise

           PERFORM Trait-Promo-Bdi      | promotions
           
           PERFORM Cal-Prix-Fonction-Quantite.   | tarif à colonnes 

           IF NAT-MART = 2 MOVE 0 TO PUB-MLDI PUN-MLDI IPNS-MLDI
           END-IF

           PERFORM Mep-Enable-Rem.

       Maj-Pri-Art.
           IF INP-MLDI <> PRODUIT-A
           OR AR1-MLDI NUMERIC
           OR NAT-MART = 2 
              EXIT PARAGRAPH
           END-IF
090414     PERFORM Lect-Gricli
      * calcul prix article
           MOVE PUB-MLDI TO CAL-MARGE-PUB   
           MOVE PUN-MLDI TO CAL-MARGE-PUN   
           PERFORM CAL-PV-ART-D    | calcul prix de vente
           MOVE W-PUB TO PUB-MLDI
           MOVE COD-MART TO W-ART          
           MOVE PUB-MLDI TO CAL-MARGE-PUB   
           MOVE PUN-MLDI TO CAL-MARGE-PUN 
           PERFORM CAL-MARGE THRU F-CAL-MARGE.  | calcul prix revient
           MOVE CAL-MARGE-PAC TO PRU-MLDI
           MOVE CAS-MASA TO CAS-MLDI.
           PERFORM MAJ-REMISE.                   | calcul remise
           PERFORM Trait-Promo-Bdi               | promotions          
           PERFORM Cal-Prix-Fonction-Quantite.   | tarif à colonnes 

      * calcul marge si passage ligne en livré 
       CAL-PR.
           IF INP-MLDI <> "A" OR ART-MLDI(1:4) NUMERIC
               EXIT PARAGRAPH
           END-IF
260118* Codimatra pour mettre à jour PRU-MLDI
           IF NAT-MART = 2
              MOVE 1 TO W-NIV
              PERFORM CAL-MSPMAT THRU F-CAL-MSPMAT
              EXIT PARAGRAPH
           END-IF
290118
           MOVE COD-MART TO W-ART  
           MOVE PUB-MLDI TO CAL-MARGE-PUB   
           MOVE PUN-MLDI TO CAL-MARGE-PUN   
           PERFORM CAL-MARGE THRU F-CAL-MARGE.  | calcul prix revient
           MOVE CAL-MARGE-PAC TO PRU-MLDI.

       Mep-Enable-Rem.  
           MODIFY Screen2-DaEf-Rem, ENABLED TRUE
           MODIFY Screen2-Pb-RC, ENABLED TRUE
           MODIFY Screen2-DaEf-Pun, ENABLED TRUE
           MODIFY Screen2-Pb-TTC, ENABLED TRUE
           IF (PZE-MLDI = 1 OR 2 OR 3)
           OR (IFO-MBDI = 1 OR IRE-MBDI = 1 OR 9)
           OR (INP-MLDI = PRODUIT-C)
           OR (AUTO-MOP = 2)
           OR (IRPM-MLDI = 1)
                MODIFY Screen2-DaEf-Rem, ENABLED FALSE
                MODIFY Screen2-Pb-RC, ENABLED FALSE
                MODIFY Screen2-DaEf-Pun, ENABLED FALSE
                MODIFY Screen2-Pb-TTC, ENABLED FALSE
           END-IF.

       MAJ-REMISE. 
           MOVE ZERO TO REMC-MLDI
           IF REM-MCLD NOT = 0
                MOVE REM-MCLD TO REM-MLDI
           END-IF.

           IF REM-MCLD NOT = 0
           OR (BFC-MCLD = 8 AND TAG-MFAM = 1 AND GMR-MPAR = 0)
           OR (BFC-MCLD = 6 AND TAG-MFAM = 1)
040315*     OR (W-ART(1:4) NUMERIC)
                CONTINUE
           ELSE 
040315          
                IF W-ART(1:4) NUMERIC 
                   MOVE CRC-MFAM TO CRC-MART
                END-IF 
040315
                MOVE W-REM TO REM-MLDI
                PERFORM VARYING I FROM 1 BY 1 UNTIL I > 6
                    MOVE W-REC(I) TO REC-MLDI(I)
                END-PERFORM
           END-IF.   

           IF IFO-MBDI = 1 OR IRE-MBDI = 9
                MOVE ZERO TO REC-MLDI(1) REC-MLDI(2) REC-MLDI(3)
                             REC-MLDI(4) REC-MLDI(5) REC-MLDI(6)
                             REM-MLDI
                EXIT PARAGRAPH
           END-IF

           IF IRE-MBDI = 1 MOVE MRU-MBDI TO REM-MLDI
           ELSE IF IRE-MBDI = 9 MOVE 0 TO REM-MLDI
           ELSE IF IRE-MBDI = 2 PERFORM MEP-CASCADE2.

       MAJ-REMISE-DIVERS.
           MOVE ZERO TO REMC-MLDI
           IF REM-MCLD NOT = 0
                MOVE REM-MCLD TO REM-MLDI
           END-IF.
      
           IF REM-MCLD NOT = 0
           OR (BFC-MCLD = 8 AND TAG-MFAM = 1 AND GMR-MPAR = 0)
           OR (BFC-MCLD = 6 AND TAG-MFAM = 1)
                EXIT PARAGRAPH
           END-IF
           
040315     MOVE CRC-MFAM TO CRC-MART..
     
       MEP-CASCADE2.
           IF REM-MLDI = 0 MOVE MRU-MBDI TO REM-MLDI
           ELSE IF REC-MLDI(1) = 0 MOVE MRU-MBDI TO REC-MLDI(1)
           ELSE IF REC-MLDI(2) = 0 MOVE MRU-MBDI TO REC-MLDI(2)
           ELSE IF REC-MLDI(3) = 0 MOVE MRU-MBDI TO REC-MLDI(3)
           ELSE IF REC-MLDI(4) = 0 MOVE MRU-MBDI TO REC-MLDI(4)
           ELSE IF REC-MLDI(5) = 0 MOVE MRU-MBDI TO REC-MLDI(5)
           ELSE IF REC-MLDI(6) = 0 MOVE MRU-MBDI TO REC-MLDI(6).
      
       RECH-REM.
       RECH-MXREMFOU-ART.

       After-Art.
           MODIFY Screen2-Ef-Ar1, VALUE CO1-MART
           MODIFY Screen2-Ef-Ar2, VALUE CO2-MART
           PERFORM Mep-Des-Art.
           MODIFY Screen2-Ef-Des, VALUE W-DES, enabled mod-mart
           IF (ITC-MART = 1 OR 2)  
                MODIFY Screen2-La-RQ, VISIBLE 1
           ELSE MODIFY Screen2-La-RQ, VISIBLE 0
           END-IF
           IF COD-MART NOT = ART-MLDI
                PERFORM Ligne-Modifiee
                PERFORM Maj-Enr-Art

                PERFORM Calcul-Et-Affiche-Prix
                PERFORM Affich-Sto
090616          IF TCCF-MPAR <> 1 PERFORM Lect-TYPCDC 
090616          END-IF
                PERFORM Cal-Delai 
                PERFORM Test-Societe-Agence
           END-IF.
           
       After-Fsa.
           MOVE W-GFA TO GRA-MGFA GRA-MFAM GRA-MGFD
           MOVE W-FSA TO FAM-MGFA FAM-MFAM
           MOVE 1 TO W-IND
           READ MXGRAFAM INVALID MOVE 0 TO W-IND 
                                 EXIT PARAGRAPH
           END-READ
           PERFORM STAT
           READ MXGRAFAD INVALID MOVE 0 TO W-IND 
                                 EXIT PARAGRAPH
           END-READ
           PERFORM STAT
           READ MXFAMART INVALID MOVE 0 TO W-IND  
                                 EXIT PARAGRAPH
           END-READ
           PERFORM STAT.
           MODIFY Screen2-Ef-Des, ENABLED W-IND.

       After-Ctf.
           INITIALIZE ENR-MCTF
           MOVE FOU-MLDI TO CAL-PV-FOU FOU-MCTF
           MOVE LK-VCF-C-REF TO CAL-PV-REF REF-MCTF       
           MOVE 0 TO CAL-PV-PTF
           OPEN INPUT MXCATFOU
           PERFORM STAT
           READ MXCATFOU INVALID 
                CLOSE MXCATFOU
                PERFORM Rech-Refdiv THRU F-Rech-Refdiv
                EXIT PARAGRAPH
           END-READ
           PERFORM STAT
           CLOSE MXCATFOU
           MOVE FOU-MCTF TO COD-MFOU
           PERFORM Lect-Fou
           MOVE DES-MCTF TO DES-MLDI W-DES
           MODIFY Screen2-Ef-Des, VALUE W-DES
220118
           IF GRA-MCTF <> 0 AND FAM-MCTF <> 0
              MOVE GRA-MCTF TO AR1-MLDI(1:2)
              MOVE FAM-MCTF TO AR1-MLDI(3:2)
           END-IF
220118
           MOVE 1 TO ICF-MLDI                       
           MOVE PRI-MCTF TO CAL-PV-PTF PAC-MLDI
           MOVE 1 TO W-CAL-PUB
           PERFORM After-Pac.
           MOVE SPACE TO CAS-MLDI.
           IF TYP-MBDI NOT = 0 MOVE 1 TO TLI-MLDI.   
        
       Rech-Art-Cree.
           MOVE LK-VCF-C-FOU TO FOU-MART
           MOVE LK-VCF-C-REF TO REF-MART
           READ MXART KEY CLE3-MART INVALID MOVE SPACE TO ENR-MART
                                            EXIT PARAGRAPH
           END-READ
           PERFORM STAT
           IF CANN-MART = 1 MOVE SPACE TO ENR-MART
                            EXIT PARAGRAPH
           END-IF

           PERFORM Mep-Age-Masa
           MOVE COD-MART TO COD-MASA  
           PERFORM TEST-ARTSA
           IF W-OK-ASA = 0 MOVE SPACE TO ENR-MART
                           EXIT PARAGRAPH
           END-IF

           MOVE 1 TO NOU-A
           PERFORM After-Art
           PERFORM Screen2-Enable-Dep-Ags
           PERFORM Affiche-FouEtBoutons
           IF PUB-MLDI = 0 AND PZE-MLDI = 0 MOVE 11 TO CONTROL-ID
                                       ELSE MOVE 31 TO CONTROL-ID.

       Rech-Refdiv.   
       F-Rech-Refdiv.
           IF W-TROUVE = 0 
              MOVE 1 TO W-CAL-PUB
              PERFORM After-Pac.

       After-Pac.
           IF TCF-MLDI = SPACE
                PERFORM Lect-TYPCDC 
                PERFORM Recherche-TCF
           END-IF
           MOVE TCF-MLDI TO CAL-PV-TCF
           IF INP-MLDI = PRODUIT-A
                PERFORM CAL-PV-CTF-D THRU F-CAL-PV-CTF-D
           ELSE MOVE PAC-MLDI TO CAL-PV-PAC
           END-IF
           IF W-CAL-PUB = 1
              MOVE W-PUB TO PUB-MLDI
              MOVE W-REM TO REM-MLDI
           END-IF
           MOVE 0 TO IPNS-MLDI
           MOVE CAL-PV-PAC TO PRU-MLDI   
           
           IF W-CAL-PUB = 1
           AND NOT CLI-PALM = 421325
               MOVE AR1-MLDI(1:2) TO GRA-MART
               MOVE AR1-MLDI(3:2) TO FAM-MART
               MOVE FOU-MLDI TO FOU-MART
               PERFORM MAJ-REMISE
               MOVE W-PUB TO PUB-MLDI
           END-IF
 
           PERFORM Calcul-Et-Affiche-Prix
           MOVE PAC-MLDI TO D72 
           MODIFY Screen2-Ef-Pac, VALUE D72.

       Controle-Pre.
           MOVE 1 TO W-OK
           MOVE PRE-MLDI TO COD-MPGE COD-MPGEV
           READ MXPREGEN INVALID 
                MOVE " Prestation Inconnue " to acu-msg-1
                PERFORM msg-info
                MOVE 0 TO W-OK
                go F-Controle-Pre
           END-READ
           PERFORM STAT
           IF CANN-MPGE = 1 
                MOVE " Prestation Supprimée " to acu-msg-1
                PERFORM msg-info
                MOVE 0 TO W-OK
                go F-Controle-Pre
           END-IF
           READ MXPREGENV INVALID 
                MOVE " Prestation Inconnue " to acu-msg-1
                PERFORM msg-info
                MOVE 0 TO W-OK
                go F-Controle-Pre
           END-READ
           PERFORM STAT
           PERFORM LECT-TSPMOP.
       F-Controle-Pre.
           IF W-OK = 0 AND W-Affiche = 1
                MOVE SPACE TO W-ART
                MODIFY Screen2-Ef-Ar1, VALUE SPACE
                MOVE 4 TO ACCEPT-CONTROL
                MOVE 112 TO CONTROL-ID
           END-IF.

       Controle-Art.
           MOVE 1 TO W-OK
           MOVE ART-MLDI TO W-ART
           IF W-AR1 NOT NUMERIC
              PERFORM Mep-Age-Masa
              MOVE W-ART TO COD-MART COD-MASA  
              READ MXART INVALID
250915             IF COD-MART <> SPACE
                      MOVE " Article Inconnu " to acu-msg-1
                      move W-ART to acu-msg-2
                      PERFORM msg-info
250915             END-IF
                   MOVE 0 TO W-OK
                   go F-Controle-Art
              END-READ
              PERFORM STAT
              IF CANN-MART = 1 
                   MOVE " Article supprimé " to acu-msg-1
                   move W-ART to acu-msg-2
                   PERFORM msg-info
                   MOVE 0 TO W-OK
                   go F-Controle-Art
              END-IF
              IF TAR-MART = 2 
                   MOVE " Article interdit à la vente " to acu-msg-1
                   move W-ART to acu-msg-2
                   PERFORM msg-info
                   MOVE 0 TO W-OK
                   go F-Controle-Art
              END-IF
              IF ILV-MART = 1 
                   MOVE " Article de location " to acu-msg-1
                   move W-ART to acu-msg-2
                   PERFORM msg-info
                   MOVE 0 TO W-OK
                   go F-Controle-Art
              END-IF
              |SGR: article doit être géré en stock
              IF CLI-PALM = 190582 
              AND TYP-MBDI NOT = 8
              AND STO-MASA = 2
              | on ne pose plus la question 12/11/13
      *           MOVE 
      *           "Article non géré en stock - A gérer ?"
      *           TO ACU-MSG-1
      *           PERFORM MSG-ON
      *           IF ACU-RETURN-VALUE = 1
                      move cod-mart to W-ART-MAJ
                      PERFORM Lect-Lock-Artsa
                      if w-ok-asa = 1
                         MOVE 1 TO STO-MASA
                         ACCEPT DME-MASA FROM CENTURY-DATE
                         REWRITE ENR-MASA 
                         END-REWRITE
                         PERFORM STAT
                      else
                         MOVE 0 TO W-OK
                         go F-Controle-Art
                      end-if
      *           ELSE
      *                MOVE 0 TO W-OK
      *                go F-Controle-Art
      *           END-IF
              END-IF
              |
              MOVE GRA-MART TO GRA-MFAM GRA-MGFA
              MOVE FAM-MART TO FAM-MFAM FAM-MGFA
           else
              MOVE W-AR1 TO CLE1-MFAM CLE1-MGFA
           end-if
           READ MXGRAFAM INVALID
                MOVE " Famille Article Inconnue " to acu-msg-1
                move cle1-mgfa to acu-msg-2
                move W-ART to acu-msg-3
                PERFORM msg-info
                MOVE 0 TO W-OK
                go F-Controle-Art
           END-READ
           PERFORM STAT
           READ MXFAMART INVALID
                MOVE " Famille Article Inconnue " to acu-msg-1
                move cle1-mfam to acu-msg-2
                move W-ART to acu-msg-3
                PERFORM msg-info
                MOVE 0 TO W-OK
                go F-Controle-Art
           END-READ
           PERFORM STAT
           IF W-AR1 NOT NUMERIC
              PERFORM TEST-ARTSA
              IF W-OK-ASA = 0 MOVE 0 TO W-OK
                              go F-Controle-Art
              END-IF
           END-IF.
       F-Controle-Art.
           IF W-OK = 0 AND W-Affiche = 1
                MOVE SPACE TO W-ART
                MODIFY Screen2-Ef-Ar1, VALUE SPACE
                MODIFY Screen2-Ef-Ar2, VALUE SPACE
                MOVE 4 TO ACCEPT-CONTROL
                IF SCA-MPAR = 2 MOVE 113 TO CONTROL-ID
                           ELSE MOVE 112 TO CONTROL-ID
                END-IF
           END-IF.
       
       Cal-Sto.
           MOVE ZERO TO W-STD
           MOVE STC-MASA TO W-STO SV-STO
           MOVE STC-MASA TO W-STC
           MOVE QSTM-MASA(1) TO W-STG
011018* pour Foraloc pour afficher le stock dispo
           EVALUATE STLA-MPAR 
           WHEN 1 
              SUBTRACT QCC-MASA FROM W-STC
              SUBTRACT QCC-MASA FROM W-STG
           WHEN 2
              COMPUTE W-STC = W-STC - QCC-MASA + QCF-MASA
              COMPUTE W-STG = W-STG - QCC-MASA + QCF-MASA
110119* stock dispo hors contre-marques
           WHEN 3
              COMPUTE W-STC = W-STC - QCC-MASA + QCF-MASA
              COMPUTE W-STG = W-STG - QCC-MASA + QCF-MASA
110119
           END-EVALUATE
011018
           PERFORM Cal-Sto-Ste

           PERFORM Verif-Statut

           | commande M3
           IF MODU-M3 = 1 AND TYP-MBDI = 0 
              COMPUTE W-STO = W-STO - QTE-MLDI + SV-QTE-MLDI 
           END-IF

           | bon de livraison
           IF TYP-MBDI = 1
              | si on change d'article ou de dépôt
              IF WChange-Stock = 1 OR 2
                   IF TLI-MLDI NOT = 3 AND PZE-MLDI NOT = 4
                      COMPUTE W-STO = W-STO - QTE-MLDI
                   END-IF
              ELSE 
              | si on ne change pas d'article ni de dépôt
                   | si la ligne est livrée et qu'elle l'était déjà
                   IF WChange-Statut = 4
                      COMPUTE W-STO = W-STO - QTE-MLDI + SV-QTE-MLDI
                      COMPUTE W-STG = W-STG + SV-QTE-MLDI
                      IF DEP-MLDI = ZERO 
                         COMPUTE W-STC = W-STC + SV-QTE-MLDI
                      ELSE 
                         COMPUTE W-STD = W-STD + SV-QTE-MLDI
                      END-IF
                   END-IF
                   | si la ligne est en commande et qu'elle était livrée
                   IF WChange-Statut = 2
                      COMPUTE W-STO = W-STO + SV-QTE-MLDI
                      COMPUTE W-STG = W-STG + SV-QTE-MLDI
                      IF DEP-MLDI = ZERO 
                         COMPUTE W-STC = W-STC + SV-QTE-MLDI
                      ELSE 
                         COMPUTE W-STD = W-STD + SV-QTE-MLDI
                      END-IF
                   END-IF
                   | si la ligne est livrée et qu'elle était en commande
                   IF WChange-Statut = 1
                   AND NOT ((CST-MPAR = 1 OR 2 OR 3) AND MODU-M3 = 0)
                      COMPUTE W-STO = W-STO - QTE-MLDI 
                   END-IF
              END-IF
           END-IF.
           | avoir
           IF TYP-MBDI = 3
              IF WChange-Stock = 1 OR 2
                   | si on change d'article ou de dépôt
                   COMPUTE W-STO = W-STO + QTE-MLDI
              ELSE 
                   | si on ne change pas d'article
                   COMPUTE W-STO = W-STO + QTE-MLDI - SV-QTE-MLDI
                   COMPUTE W-STG = W-STG - SV-QTE-MLDI
                   IF DEP-MLDI = ZERO 
                        COMPUTE W-STC = W-STC - SV-QTE-MLDI
                   ELSE COMPUTE W-STD = W-STD - SV-QTE-MLDI
                   END-IF
              END-IF
           END-IF.

       Cal-Sto-Ste.
           move cod-masa to cod-masa2
           move 0 to W-STOGR w-eof-masa2 w-qccgr w-qcfgr
           start mxartsa2 key not < cle3-masa2 invalid 
                 move 1 to w-eof-masa2
           end-start
           perform until w-eof-masa2 = 1
              read mxartsa2 next end move 1 to w-eof-masa2
                                     exit perform cycle
              end-read
              perform stat
              if cod-masa <> cod-masa2 
                 move 1 to w-eof-masa2
                 exit perform cycle
              end-if
              add qcc-masa2 to w-qccgr 
              add qcf-masa2 to w-qcfgr
              add qstm-masa2(1) to w-stogr
           end-perform.
011018* pour afficher le stock dispo
           EVALUATE STLA-MPAR 
           WHEN 1 
              SUBTRACT w-qccgr FROM w-stogr
           WHEN 2
              COMPUTE w-stogr = w-stogr - w-qccgr + w-qcfgr
110119
           WHEN 3 
              COMPUTE w-stogr = w-stogr - w-qccgr + w-qcfgr
110119
           END-EVALUATE.

       Verif-Statut.
           MOVE 0 TO WChange-Stock WChange-Statut Statut-Av Statut-Ap
           | test pour savoir si on change d'article ou de stock
           IF SV-ART-MLDI NOT = ART-MLDI 
           OR SV-AGS-MLDI NOT = AGS-MLDI 
                MOVE 1 TO WChange-Stock
           ELSE IF SV-DEP-MLDI NOT = DEP-MLDI
                   MOVE 2 TO WChange-Stock
                END-IF
           END-IF
           | test pour savoir si le statut de la ligne change
           IF TYP-MBDI = 1 AND (SV-TLI-MLDI = 3 OR SV-PZE-MLDI = 4) 
                MOVE 1 TO Statut-Av
           END-IF
290212     IF TYP-MBDI = 0 AND MODU-M3 = 1
           AND SV-TBP-MLDI NOT = 1
                MOVE 1 TO Statut-Av
           END-IF
           IF TYP-MBDI = 1  AND (TLI-MLDI = 3 OR PZE-MLDI = 4) 
                MOVE 1 TO Statut-Ap
           END-IF
290212     IF TYP-MBDI = 0 AND MODU-M3 = 1
           AND TBP-MLDI NOT = 1
                MOVE 1 TO Statut-Ap
           END-IF
           IF Statut-Av NOT = Statut-Ap
                IF Statut-Av = 1 
                     MOVE 1 TO WChange-Statut  | commandé -> livré
                ELSE MOVE 2 TO WChange-Statut  | livré -> commandé
                END-IF
           ELSE IF Statut-Av = 1               
                     MOVE 3 TO WChange-Statut  | commandé -> commandé
                ELSE MOVE 4 TO WChange-Statut  | livré -> livré
                END-IF
           END-IF.

       Cal-Sto-Compo.

       Affich-Sto.
           PERFORM Cal-Sto   
              MODIFY Screen2-La-LStc, TITLE W-LIBSTC
              MODIFY Screen2-La-Cas, TITLE CAS-MASA
           IF COD-MASA = SPACE 
              MOVE ZERO TO W-STO W-STC W-STD W-STG W-STOGR
                           w-qccgr w-qcfgr
              MOVE SPACE TO ENR-MASA  
           END-IF        

           MOVE W-STG TO W-HEU
           MOVE W-HEU TO D52 D7 
           IF STO-MASA = 2
091018     OR INO-MART = 1 OR 2
              MOVE 0 TO D52 D7.
           IF W-STG < 0 MOVE 5 TO W-COLOR
                   ELSE MOVE color-stock TO W-COLOR
           END-IF
           IF W-HEU2 = 0 MODIFY Screen2-La-Stg, TITLE D7, COLOR W-COLOR
                    ELSE MODIFY Screen2-La-Stg, TITLE D52, COLOR W-COLOR
           END-IF
                 
           MOVE W-STOGR TO D52 D7 W-HEU
           IF W-STOGR < 0 MOVE 5 TO W-COLOR
                     ELSE MOVE color-stock TO W-COLOR
           END-IF
250919* affichage stock centrale d'achat si non appartenance articles / société
           IF IND-AFF-STSC = 1
              INITIALIZE ENR-MASA2
              MOVE W-AGSC TO AGE-MASA2 
              MOVE COD-MASA TO COD-MASA2
              READ MXARTSA2 
              END-READ
              PERFORM STAT
              MOVE STC-MASA2 TO W-HEU
              EVALUATE STLA-MPAR 
              WHEN 1 
                 SUBTRACT QCC-MASA2 FROM W-HEU
              WHEN 2
                 COMPUTE W-HEU = W-HEU - QCC-MASA2 + QCF-MASA2
              WHEN 3
                 COMPUTE W-HEU =
                    W-HEU - QCC-MASA2 + QCF-MASA2
              END-EVALUATE
              MOVE W-HEU TO D52 D7  
              IF W-HEU < 0 MOVE 5 TO W-COLOR
                      ELSE MOVE color-stock TO W-COLOR
              END-IF
           END-IF.
250919
091018     IF INO-MART = 1 OR 2 MOVE 0 TO D52 D7
091018     END-IF.
           IF W-HEU2 = 0 MODIFY Screen2-La-Stgr, TITLE D7, COLOR W-COLOR
                  ELSE MODIFY Screen2-La-Stgr, TITLE D52, COLOR W-COLOR
           END-IF
      
           IF DEP-MLDI = 0 MOVE W-STC TO W-HEU
                      ELSE MOVE W-STD TO W-HEU.
           MOVE W-HEU TO D52 D7 
           IF STO-MASA = 2 
091018     OR INO-MART = 1 OR 2
              MOVE 0 TO D52 D7.
           IF (DEP-MLDI = 0 AND W-STD < 0)
           OR (DEP-MLDI NOT = 0 AND W-STC < 0)
                MOVE 5 TO W-COLOR
           ELSE MOVE color-stock TO W-COLOR
           END-IF
           IF W-HEU2 = 0 MODIFY Screen2-La-Stc, TITLE D7, COLOR W-COLOR
                    ELSE MODIFY Screen2-La-Stc, TITLE D52, COLOR W-COLOR
           END-IF
          
           MOVE QCF-MASA TO D52 D6 W-HEU
191118* supprimé dans le cadre de la restandardisation de Topaz
      *     if modu-m3 = 1 move w-qcfgr to D52 D6 W-HEU.
           IF STO-MASA = 2 MOVE 0 TO D52 D6.
           IF W-HEU2 = 0 MODIFY Screen2-La-Ecf, TITLE D6
                    ELSE MODIFY Screen2-La-Ecf, TITLE D52.

           MOVE QCC-MASA TO D52 D6 W-HEU
191118* supprimé dans le cadre de la restandardisation de Topaz
      *     if modu-m3 = 1 move w-qccgr to D52 D6 W-HEU.
           IF STO-MASA = 2 MOVE 0 TO D52 D6.
           IF W-HEU2 = 0 MODIFY Screen2-La-Ecc, TITLE D6
                    ELSE MODIFY Screen2-La-Ecc, TITLE D52.

      *
      * Liste des Prestations
      *
       Call-Liste-Pre.
           MOVE SPACE TO LK-LISTE
           MOVE PRE-MLDI TO LK-LISTE-COD(1)
           MOVE 1 TO LK-LISTE-DIS LK-LISTE-MAXSEL
           CALL "mpge-l.acu" USING ZONE-PALM LK-LISTE
           CANCEL "mpge-l.acu"
           PERFORM Repositionne-Screen2
           IF LK-LISTE-COD(1) = SPACE
                EXIT PARAGRAPH
           END-IF

           MOVE LK-LISTE-COD(1) TO COD-MPGE COD-MPGEV
           READ MXPREGEN INVALID EXIT PARAGRAPH
           END-READ
           PERFORM STAT
           IF CANN-MPGE = 1 EXIT PARAGRAPH
           END-IF
           IF AUTO-PRER = 2 AND IRS-MPGE = 1
              EXIT PARAGRAPH
           END-IF
           READ MXPREGENV INVALID EXIT PARAGRAPH
           END-READ
           PERFORM STAT
           PERFORM LECT-TSPMOP
           PERFORM After-Pre.
           MOVE 1 TO WENABLE
           PERFORM Screen2-Enable
           IF PUB-MLDI = 0 AND PZE-MLDI = 0 MOVE 11 TO CONTROL-ID
                                       ELSE MOVE 31 TO CONTROL-ID.
       Maj-Enr-Pre.
           MOVE LIB-MPGE TO LPR-MLDI.
           IF BFC-MCLD = 0 OR 3 OR 8 OR 6 OR 4 OR 5 OR 7
               MOVE PVT-MPGEV TO PUB-MLDI.
           IF BFC-MCLD = 2
               MOVE PAC-MPGEV TO PUB-MLDI.
           MOVE PAC-MPGEV TO PAC-MLDI
           MOVE 0 TO IPNS-MLDI
           MOVE FOU-MPGE TO FOU-MLDI
           EVALUATE TPR-MPGEV 
           WHEN 1
               MOVE PAC-MPGEV TO PRU-MLDI
           WHEN 2
               COMPUTE PRU-MLDI ROUNDED = PVT-MPGEV * PPRS-MPGEV / 100
           WHEN 3
               COMPUTE PRU-MLDI ROUNDED = PAC-MPGEV * PPRS-MPGEV 
           END-EVALUATE
           MOVE ZERO TO PZE-MLDI
           IF TYP-MBDI NOT = 0
               MOVE 1 TO TLI-MLDI.
           MOVE REM-MCLD TO REM-MLDI
           IF IRE-MBDI = 1 MOVE MRU-MBDI TO REM-MLDI
           ELSE IF IRE-MBDI = 9 MOVE 0 TO REM-MLDI
           ELSE IF IRE-MBDI = 2 AND REM-MCLD = 0 
               PERFORM MEP-CASCADE2.
121113
           IF PVT-MPGEV = 0 AND (CAL-MPGEV = 2 OR 3)
              MODIFY Screen2-DaRb-PZE1, VALUE 1
              perform Screen2-DaRb-PZE1-Ev-Cmd-Clicked
           END-IF.
121113
       Maj-Pri-Pre.
           IF BFC-MCLD = 0 OR 3 OR 8 OR 6 OR 4 OR 5 OR 7
               MOVE PVT-MPGEV TO PUB-MLDI.
           IF BFC-MCLD = 2
               MOVE PAC-MPGEV TO PUB-MLDI.
           MOVE PAC-MPGEV TO PAC-MLDI
           MOVE FOU-MPGE TO FOU-MLDI
           EVALUATE TPR-MPGEV 
           WHEN 1
               MOVE PAC-MPGEV TO PRU-MLDI
           WHEN 2
               COMPUTE PRU-MLDI ROUNDED = PVT-MPGEV * PPRS-MPGEV / 100
           WHEN 3
               COMPUTE PRU-MLDI ROUNDED = PAC-MPGEV * PPRS-MPGEV 
           END-EVALUATE
           MOVE ZERO TO PZE-MLDI
           MOVE REM-MCLD TO REM-MLDI
           IF IRE-MBDI = 1 MOVE MRU-MBDI TO REM-MLDI
           ELSE IF IRE-MBDI = 9 MOVE 0 TO REM-MLDI
           ELSE IF IRE-MBDI = 2 AND REM-MCLD = 0 
              PERFORM MEP-CASCADE2.
           IF PVT-MPGEV = 0 AND (CAL-MPGEV = 2 OR 3)
              MOVE 1 TO PZE-MLDI
           END-IF.

       After-Pre.
           MODIFY Screen2-Ef-Ar1, VALUE COD-MPGE
           MODIFY Screen2-Ef-Ar2, VALUE SPACE
           IF INL-MPGE = 0 MODIFY Screen2-Ef-Des, VALUE LIB-MPGE
           END-IF

           IF COD-MPGE NOT = PRE-MLDI
                PERFORM Ligne-Modifiee
                PERFORM Maj-Enr-Pre
                MODIFY Screen2-Ef-Des, VALUE LPR-MLDI
                PERFORM Calcul-Et-Affiche-Prix
                MOVE PAC-MLDI TO D72 
                MODIFY Screen2-Ef-Pac, VALUE D72
                MODIFY Screen2-Ef-Fou, VALUE FOU-MLDI
                MODIFY Screen2-La-Cas, TITLE SPACE
                MOVE ZERO TO D72
                MODIFY Screen2-La-Stg, TITLE D72
                MODIFY Screen2-La-Stgr, TITLE D72
                MODIFY Screen2-La-Stc, TITLE D72
                MODIFY Screen2-La-Ecf, TITLE D72
                MODIFY Screen2-La-Ecc, TITLE D72
           END-IF.

           IF INL-MPGE = 1
                MODIFY Screen2-Ef-Des, ENABLED TRUE
           ELSE MODIFY Screen2-Ef-Des, ENABLED FALSE.
           
       Recup-Ligne.
           PERFORM Screen2-Buf-To-Fld
           IF INP-MLDI = PRODUIT-A
              INQUIRE Screen2-Ef-Ar1, VALUE IN AR1-MLDI
              INQUIRE Screen2-Ef-Ar2, VALUE IN AR2-MLDI.
           IF INP-MLDI = PRODUIT-P
              MOVE SPACE TO ART-MLDI
              INQUIRE Screen2-Ef-Ar1, VALUE IN PRE-MLDI.
           INQUIRE Screen2-Ef-Des, VALUE IN W-DES
           MOVE W-DES(1:40) TO DES-MLDI
           MOVE W-DES(41:)  TO DE2-MLDI
           IF PZE-MLDI = 9 MOVE 0 TO PZE-MLDI.
           IF TLI-MLDI = 3
090616     OR TYP-MBDI = 8
              INQUIRE Screen2-Cm-TCO, VALUE IN CM-MTCC-Items(1)
              MOVE Cm-MTCC-COD(1) TO TCC-MLDI
           END-IF.

       Screen2-Enable.
           IF BLI-MLDI > 0 
              MOVE 0 TO WENABLE
           END-IF
           IF EPG-MLDI = 1 AND TLI-MLDI = 3
              PERFORM TEST-CMQ
191118* supprimé dans le cadre de la restandardisation de Topaz
              IF IND-CMQ = 1 
020415        AND MODU-M3 = 1
                 MOVE 0 TO WENABLE
              END-IF
           END-IF
           IF INP-MLDI = "P" AND AUTO-PRER = 2 AND IRS-MPGE = 1
              MOVE 0 TO WENABLE
           END-IF

      *    indicateur produit
           IF (WENABLE = 1 AND CDFL = CHOIX-C) OR WENABLE = 0
              MOVE WENABLE TO WENABLE-INP
           ELSE 
              MOVE 0 TO WENABLE-INP
           END-IF.

      *    code
           IF INP-MLDI NOT = PRODUIT-C
              MOVE WENABLE TO WENABLE-AR1 WENABLE-LISTE
060111        IF AUTO-ARD = 2 AND INP-MLDI = PRODUIT-A
                 MOVE 0 TO WENABLE-AR1
060111        END-IF 
           ELSE
              MOVE 1 TO WENABLE-LISTE
              MOVE 0 TO WENABLE-AR1 
           END-IF.
           IF INP-MLDI = PRODUIT-A
              MOVE WENABLE TO WENABLE-AR2 WENABLE-AGS 
           ELSE
              MOVE 0 TO WENABLE-AR2 WENABLE-AGS 
           END-IF.
      *    désignation
           IF (INP-MLDI = PRODUIT-A AND AR1-MLDI NOT NUMERIC
               AND MOD-MART = 1)
           OR (INP-MLDI = PRODUIT-A AND AR1-MLDI NUMERIC)
           OR (INP-MLDI = PRODUIT-P AND INL-MPGE = 1)
           |OR (INP-MLDI = PRODUIT-C)
              MOVE WENABLE TO WENABLE-DES
           ELSE
              MOVE 0 TO WENABLE-DES
           END-IF.  
      *    quantité
           IF (INP-MLDI = PRODUIT-A)
           OR (INP-MLDI = PRODUIT-P AND CAL-MPGEV > 2)
              MOVE WENABLE TO WENABLE-QTE
           ELSE
              MOVE 0 TO WENABLE-QTE
           END-IF.
      *    fournisseur et prix d'achat
           IF (INP-MLDI = PRODUIT-P AND (TLI-MLDI = 3 
050115                                   OR TYP-MBDI = 8)
               AND WENABLE = 1)
           OR (INP-MLDI = PRODUIT-A AND ART-MLDI(1:4) NUMERIC
               AND WENABLE = 1)
                MOVE 1 TO WENABLE-FOU
           ELSE MOVE 0 TO WENABLE-FOU
           END-IF
           
      *    prix
           IF ((WENABLE = 1 AND PZE-MLDI = 0) OR WENABLE = 0)
           AND (INP-MLDI NOT = PRODUIT-C)
              IF INP-MLDI = PRODUIT-P AND (CAL-MPGEV = 2 OR 3)
                 MOVE 0 TO WENABLE-PUB WENABLE-REM
              ELSE
                 MOVE WENABLE TO WENABLE-PUB WENABLE-REM
           ELSE
              MOVE 0 TO WENABLE-PUB WENABLE-REM
           END-IF.           
           IF IFO-MBDI = 1 OR IRE-MBDI = 1 OR 9 
              MOVE 0 TO WENABLE-REM
           END-IF
           
           IF AUTO-MOP = 2 
270312* Quitté - modif prix si prix saisi   
              IF INP-MLDI = PRODUIT-P AND (CAL-MPGEV = 1 OR 4)
                 MOVE 0 TO WENABLE-REM
              ELSE
270312
                 MOVE 0 TO WENABLE-REM WENABLE-PUB
270312        END-IF
           END-IF
           IF (WENABLE = 1 AND TLI-MLDI = 3) OR WENABLE = 0
161112     OR (WENABLE = 1 AND TYP-MBDI = 8)
              MOVE WENABLE TO WENABLE-TCO WENABLE-DLI
           END-IF
           if (modu-m3 = 1 and tli-mldi = 3 and typ-mbdi = 0 
           and art-mldi(1:4) not numeric)
              move 0 to WENABLE-TCO
           end-if
           MOVE WENABLE TO WENABLE-PZE WENABLE-TLI
           IF INP-MLDI = PRODUIT-C 
              MOVE 0 TO WENABLE-PZE
           END-IF.
           IF TYP-MBDI NOT = 1
              MOVE 0 TO WENABLE-TLI
           END-IF
           IF INP-MLDI NOT = PRODUIT-C
              MOVE WENABLE TO WENABLE-EXC WENABLE-ISQ
           ELSE
              MOVE 0 TO WENABLE-EXC WENABLE-ISQ
           END-IF.
           IF AUTO-REGUL = 2 MOVE 0 TO WENABLE-ISQ
           END-IF
           IF INP-MLDI NOT = PRODUIT-C AND WENABLE = 1 AND PZE-MLDI = 1
              MOVE 1 TO WENABLE-LPZ 
           ELSE
              MOVE 0 TO WENABLE-LPZ 
           END-IF.
           IF INP-MLDI NOT = PRODUIT-A OR WENABLE = 0 OR EXM-MPAD = 0
           OR TYP-MBDI = 8
           OR TYC-MBDI = 1
           OR MODU-M3 = 1
              MOVE 0 TO WENABLE-AGS
           ELSE
              MOVE 1 TO WENABLE-AGS
           END-IF.
           IF INP-MLDI NOT = PRODUIT-A OR WENABLE = 0 
              MOVE 0 TO WENABLE-DPS
           ELSE
              MOVE 1 TO WENABLE-DPS
           END-IF.
           IF TYP-MBDI NOT = 1 OR INP-MLDI NOT = PRODUIT-A 
           OR WENABLE = 0 
              MOVE 0 TO WENABLE-PZE4
           ELSE
              MOVE 1 TO WENABLE-PZE4
           END-IF.
           IF W-LIE = 1 AND LCF-MLDI = 0
              MOVE 0 TO WENABLE-TLI 
           END-IF

           IF IRPM-MLDI = 1 
               MOVE 0 TO WENABLE-QTE WENABLE-ISQ WENABLE-EXC
                         WENABLE-DPS WENABLE-AGS WENABLE-PZE4
                         WENABLE-AR1 WENABLE-AR2 WENABLE-DES
                         WENABLE-INP WENABLE-LISTE WENABLE-PZE
                         WENABLE-TLI WENABLE-TCO WENABLE-DLI
                         WENABLE-FOU WENABLE-PUB WENABLE-REM
           END-IF
           PERFORM Screen2-Enable-Dep-Ags
           MODIFY Screen2-DaRb-INP0, ENABLED WENABLE-INP
           MODIFY Screen2-DaRb-INP4, ENABLED WENABLE-INP
           MODIFY Screen2-DaRb-INP9, ENABLED WENABLE-INP
           MODIFY Screen2-Ef-Ar1,    ENABLED WENABLE-AR1
           MODIFY Screen2-Ef-Ar2,    ENABLED WENABLE-AR2
           MODIFY Screen2-Pb-Liste,  ENABLED WENABLE-LISTE
           MODIFY Screen2-DaEf-Qte,  ENABLED WENABLE-QTE
           MODIFY Screen2-DaCb-Isq,  ENABLED WENABLE-ISQ              
           MODIFY Screen2-DaCb-Exc,  ENABLED WENABLE-EXC
           MODIFY Screen2-Ef-Des,    ENABLED WENABLE-DES
           MODIFY Screen2-Pb-Ags,    ENABLED WENABLE-AGS          
           PERFORM Screen2-Enable-Pub-Rem
           MODIFY Screen2-DaRb-PZE0, ENABLED WENABLE-PZE
           MODIFY Screen2-Cm-CVM, ENABLED WENABLE
           IF AUTO-GRATUIT = 2
                MODIFY Screen2-DaRb-PZE1, ENABLED 0
           ELSE MODIFY Screen2-DaRb-PZE1, ENABLED WENABLE-PZE
           END-IF
           MODIFY Screen2-Cb-PZE4, ENABLED WENABLE-PZE4
           MODIFY Screen2-DaRb-PZE2, ENABLED WENABLE-PZE
           MODIFY Screen2-DaRb-PZE3, ENABLED WENABLE-PZE
           MODIFY Screen2-DaCb-TLI,  ENABLED WENABLE-TLI 
           MODIFY Screen2-Cm-TCO,    ENABLED WENABLE-TCO
           MODIFY Screen2-DaEf-JDLI, ENABLED WENABLE-DLI
           MODIFY Screen2-DaEf-MDLI, ENABLED WENABLE-DLI
           MODIFY Screen2-DaEf-SADLI, ENABLED WENABLE-DLI
           MODIFY Screen2-PB-ListeFou, ENABLED WENABLE-FOU
           MODIFY Screen2-Ef-Fou, ENABLED WENABLE-FOU
           MODIFY Screen2-Ef-Pac, ENABLED WENABLE-FOU
           PERFORM Screen2-Enable-Lpz-Mon.
           IF CDFL NOT = CHOIX-C OR WENABLE = 0
              MODIFY Screen2-Pb-Ajouter, VISIBLE WENABLE
              MODIFY Screen2-Pb-Supprimer, VISIBLE WENABLE
           END-IF.

       Screen2-Enable-Dep-Ags.
           IF INP-MLDI = PRODUIT-A 
           AND ART-MLDI(1:4) NOT NUMERIC 
           AND MOB-PALM = 0 
           AND TYC-MBDI NOT = 1  
              MODIFY Screen2-Pb-Ags, ENABLED WENABLE
           ELSE
              MODIFY Screen2-Pb-Ags, ENABLED 0
           END-IF.

       Screen2-Enable-Pub-Rem.
           MODIFY Screen2-DaEf-Pub,  ENABLED WENABLE-PUB
           MODIFY Screen2-Pb-Rc,     ENABLED WENABLE-REM
           MODIFY Screen2-DaEf-Rem,  ENABLED WENABLE-REM
           MODIFY Screen2-DaEf-Rec1, ENABLED WENABLE-REM
           MODIFY Screen2-DaEf-Rec2, ENABLED WENABLE-REM
           MODIFY Screen2-DaEf-Rec3, ENABLED WENABLE-REM
           MODIFY Screen2-DaEf-Rec4, ENABLED WENABLE-REM
           MODIFY Screen2-DaEf-Rec5, ENABLED WENABLE-REM
           MODIFY Screen2-DaEf-Rec6, ENABLED WENABLE-REM
           MODIFY Screen2-DaEf-Pun,  ENABLED WENABLE-REM
           MODIFY  Screen2-Pb-TTC,   ENABLED WENABLE-REM.

       Screen2-Enable-Lpz-Mon.
           MODIFY Screen2-DaEf-LPZ,  ENABLED WENABLE-LPZ.
           MODIFY Screen2-DaEf-LPZ,  VISIBLE WVISIBLE-LPZ.
           MODIFY Screen2-DaEf-MON,  VISIBLE WVISIBLE-MON.

       Screen2-Visible-Rec-Pze.  
           MODIFY Screen2-DaRb-PZE0, VISIBLE WVISIBLE-PZE
           MODIFY Screen2-DaRb-PZE1, VISIBLE WVISIBLE-PZE
           MODIFY Screen2-DaRb-PZE2, VISIBLE WVISIBLE-PZE
           MODIFY Screen2-DaRb-PZE3, VISIBLE WVISIBLE-PZE
           MODIFY Screen2-DaEf-REC1, VISIBLE WVISIBLE-REC
           MODIFY Screen2-DaEf-REC2, VISIBLE WVISIBLE-REC
           MODIFY Screen2-DaEf-REC3, VISIBLE WVISIBLE-REC
           MODIFY Screen2-DaEf-REC4, VISIBLE WVISIBLE-REC
           MODIFY Screen2-DaEf-REC5, VISIBLE WVISIBLE-REC
           MODIFY Screen2-DaEf-REC6, VISIBLE WVISIBLE-REC
           MODIFY Screen2-La-Rec, VISIBLE WVISIBLE-REC.

       Screen2-DaGd-1-Ev-Msg-Begin-Entry.
           SET EVENT-ACTION TO EVENT-ACTION-FAIL.
       
      ******************************************************************
      *  
      *
       Screen1-Cb-ICP-Ev-Cmd-Clicked.
           INQUIRE Screen1-Cb-ICP, VALUE IN W-ICP
           IF W-ICP = 1 MOVE ZERO TO FCO-MBDI
                   ELSE MOVE ZERO TO CLI-MBDI 
           END-IF.
           MOVE 0 TO ITC-MBDI CHC-MBDI
           PERFORM Affich-Chc-div
           MODIFY Screen1-Ef-Cli, VALUE SPACE
           PERFORM Efface-CLI.
           MODIFY Screen1-Ef-ITC, VALUE SPACE.
           MODIFY Screen1-Ef-TELITC, VALUE SPACE.

       Screen1-Ef-Cli-Ev-Msg-Validate.
           IF W-ICP = 0 
                INQUIRE Screen1-Ef-Cli, VALUE IN W-CLI
                MOVE 0 TO W-FCO
                IF W-CLI = 0 EXIT PARAGRAPH
                END-IF
           ELSE INQUIRE Screen1-Ef-Cli, VALUE IN W-FCO
                MOVE ZERO TO W-CLI
                IF W-FCO = ZERO EXIT PARAGRAPH
                END-IF
           END-IF

           IF W-ICP = 1
              MOVE W-FCO TO FCO-MCLI
              READ MXCLI KEY CLE7-MCLI INVALID
                 MOVE "Prospect Incorrect" TO ACU-MSG-1
                 PERFORM MSG-INFO
                 MOVE 0 TO W-FCO
                 MODIFY Screen1-Ef-Cli, VALUE SPACE
                 PERFORM Efface-CLI
                 EXIT PARAGRAPH
              END-READ
              PERFORM STAT
              IF CANNP-MCLI = 1
                 MOVE "Prospect Supprimé" TO ACU-MSG-1
                 PERFORM MSG-INFO
                 PERFORM Retour-Cli
                 EXIT PARAGRAPH
              END-IF
              MOVE SPACE TO ENR-MCLD 
              IF COD-MCLI NOT = 0 AND CANN-MCLI = 0
                 MOVE 0 TO W-ICP
                 MODIFY Screen1-Cb-ICP, VALUE W-ICP
                 MOVE COD-MCLI TO W-CLI
                 MOVE 0 TO W-FCO
                 MODIFY Screen1-Ef-Cli, VALUE W-CLI
              END-IF
           END-IF

           IF W-ICP = 0
              MOVE W-CLI TO COD-MCLI COD-MCLD
              READ MXCLI KEY CLE6-MCLI INVALID
                 MOVE "Client Inconnu" TO ACU-MSG-1
                 PERFORM MSG-INFO
                 PERFORM Retour-Cli
                 EXIT PARAGRAPH
              END-READ
              PERFORM STAT
              IF CANN-MCLI = 1 
                 MOVE "Client Supprimé" TO ACU-MSG-1
                 PERFORM MSG-INFO
                 PERFORM Retour-Cli
                 EXIT PARAGRAPH
              END-IF
              PERFORM Lect-MXCLID
              PERFORM Lect-CXCLI
              PERFORM Mep-Icl-Cli
              IF EXI-CD = 0 OR EXI-C3 = 0
                 PERFORM Retour-Cli
                 EXIT PARAGRAPH
              END-IF
              PERFORM Controle-Cli
              IF W-CLI = 0 
                 EXIT PARAGRAPH
              END-IF
           END-IF.

      *     IF IDV-MCLI NOT = 1 
              MOVE 0 TO CDV-MBDI
              PERFORM Affich-Cli
      *     ELSE
      *        IF ((W-ICP = 0 AND W-CLI NOT = CLI-MBDI)
      *        OR (W-ICP = 1 AND W-FCO NOT = FCO-MBDI))
      *        AND TYC-MBDI NOT = 2 AND NOT = 8 | pour ne pas effacer le n° saisi dans ccoprobl
      *           MOVE 0 TO CDV-MBDI
      *        END-IF
      *        IF CDV-MBDI = 0 
      *           MOVE W-CLI TO LK-MCDV-L-CLI
      *           PERFORM ListeClidiv
      *           IF LK-MCDV-L-COD = 0 
      *                EXIT PARAGRAPH
      *           END-IF
      *        ELSE
      *           IF TYC-MBDI = 2
      *              MOVE CDV-MBDI TO COD-MCDV
      *              READ MXCLIDIV INVALID MOVE SPACE TO ENR-MCDV
      *              END-READ
      *              PERFORM STAT
      *             PERFORM Affich-Clidiv
      *           END-IF
      *        END-IF
      *     END-IF.

           IF (W-ICP = 0 AND W-CLI NOT = CLI-MBDI)
           OR (W-ICP = 1 AND W-FCO NOT = FCO-MBDI)
              MOVE W-CLI TO CLI-MBDI
              MOVE W-FCO TO FCO-MBDI
              PERFORM Maj-Enr-Cli
              IF TYC-MBDI NOT = 2 AND NOT = 8 AND W-ICP = 0
                MOVE 0 TO W-NIV
                PERFORM VERIF-RISQUE
                 IF W-CLI = 0 EXIT PARAGRAPH
                 END-IF
                 IF TYP-MBDI <> 3
                    PERFORM Test-Autres-Bons THRU F-Test-Autres-Bons
                 END-IF
              END-IF
           END-IF          

           IF CDF = "Z" AND ORI-MBDI > 0 AND W-PERFORM = 0
                MOVE 1 TO W-PERFORM 
                PERFORM Affich-Bdis
                MOVE 0 TO W-PERFORM
                MODIFY Screen1-Pb-Sauvegarder, ENABLED 0
                MODIFY Screen1-Pb-Terminer,    VISIBLE 0
      *          MODIFY Screen1-Pb-Rafraichir,  VISIBLE 0
      *          MODIFY Screen1-Pb-Quitter,     VISIBLE 0
                MOVE 0 TO WVisible-SAV WVisible-GAR Wvisible-LSD
                PERFORM Affiche-Saisies-SAV
                MOVE 4 TO ACCEPT-CONTROL
                MOVE 69 TO CONTROL-ID
           ELSE MOVE 4 TO ACCEPT-CONTROL
                MOVE 41 TO CONTROL-ID
           END-IF
           .
              
       Controle-Cli.
           IF TYC-MBDI = 1 AND IAG-MCLI NOT = 1
              MOVE "Client non lié à une agence" TO ACU-MSG-1
              PERFORM MSG-INFO
              PERFORM Retour-Cli
              EXIT PARAGRAPH
           END-IF
           IF TYC-MBDI = 1 AND AGL-MCLI = W-AGE
              MOVE "Client lié à cette agence" TO ACU-MSG-1
              PERFORM MSG-INFO
              PERFORM Retour-Cli
              EXIT PARAGRAPH
           END-IF
           IF TYC-MBDI NOT = 1 AND IAG-MCLI = 1
              MOVE "Client lié à une agence" TO ACU-MSG-1
              PERFORM MSG-INFO
              PERFORM Retour-Cli
              EXIT PARAGRAPH
           END-IF
           IF BCA-MPAD = 1 AND AGE-MCLI NOT = W-AGE
              IF AGE-MCLI NOT = SPACE
                 STRING "Client lié à l'agence " AGE-MCLI
                 INTO ACU-MSG-1
              ELSE
                 MOVE "Client non lié à cette agence " 
                 TO ACU-MSG-1
              END-IF
              PERFORM MSG-INFO
              PERFORM Retour-Cli
              EXIT PARAGRAPH
           END-IF
           IF TYC-MBDI = 1 
               OPEN INPUT MXAGENCE2
               PERFORM STAT
               MOVE AGL-MCLI TO COD-MAGC2
               READ MXAGENCE2 INVALID 
                    MOVE "Client lié à une agence inconnue" 
                    TO ACU-MSG-1
                    PERFORM MSG-INFO
                    PERFORM Retour-Cli
                    CLOSE MXAGENCE2
                    EXIT PARAGRAPH
               END-READ
               PERFORM STAT
               CLOSE MXAGENCE2
               IF STC-MAGC = STC-MAGC2
                    MOVE "Client lié à la même société comptable"
                    TO ACU-MSG-1
                    PERFORM MSG-INFO
                    PERFORM Retour-Cli
                    EXIT PARAGRAPH
               END-IF
           END-IF.

       Retour-Cli.
           MOVE ZERO TO W-CLI
           MODIFY Screen1-Ef-Cli, VALUE SPACE
           PERFORM Efface-CLI.
    
      **** contrôle du risque client
       VERIF-RISQUE.
            
      **** contrôle existence autres bons en cours
       Test-Autres-Bons.
           MOVE SPACE TO ENR-MBDI2
           MOVE COD-MCLI TO CLI-MBDI2
           MOVE 0 TO W-EOF NB-DEVIS NB-CDE NB-BL
           START MXBDIS2 KEY NOT < CLE4-MBDI2 INVALID MOVE 1 TO W-EOF.
           IF W-EOF = 0
              READ MXBDIS2 NEXT END MOVE 1 TO W-EOF
              END-READ
              PERFORM STAT.
           PERFORM UNTIL W-EOF = 1 OR CLI-MBDI2 NOT = COD-MCLI
              PERFORM Test-Un-Autre-Bon
              IF W-OK = 1
                  | autre B/L en cours 
                  IF (TYP-MBDI = 1 AND TYP-MBDI2 = 1 AND TRA-MBDI2 = 0 
                  AND BON-MBDI NOT = BON-MBDI2  
                  AND GEN-MBDI2 = 0)
                      MOVE BON-MBDI2 TO NUM-BL
                      ADD 1 TO NB-BL
                  END-IF
                  | commande
                  IF TYP-MBDI2 = 0
                     ADD 1 TO NB-CDE
                  END-IF
                  | devis
                  IF TYP-MBDI2 = 8
                     ADD 1 TO NB-DEVIS
                  END-IF
               END-IF
               READ MXBDIS2 NEXT END MOVE 1 TO W-EOF
               END-READ
               PERFORM STAT
           END-PERFORM      
111212* test devis sur fiche prospect
           IF FCO-MCLI <> 0 
              MOVE SPACE TO LK-MBDI-L   
              MOVE FCO-MCLI TO LK-MBDI-L-FCO
              MOVE 8 TO LK-MBDI-L-IND
              CALL "mbdi-l.acu" USING ZONE-PALM LK-MBDI-L
              CANCEL "mbdi-l.acu"
              ADD LK-MBDI-L-NBSEL TO NB-DEVIS
           END-IF
111212
           
           IF (NB-DEVIS = 0 AND NB-CDE = 0 AND NB-BL = 0)
           OR ((TYP-MBDI = 8 OR 0) AND NB-DEVIS = 0)
               GO F-Test-Autres-Bons
           END-IF.

           MOVE SPACE TO LK-MBDI-L   
           MOVE COD-MCLI TO LK-MBDI-L-CLI
           IF TYP-MBDI = 1 MOVE 7 TO LK-MBDI-L-TYP
           END-IF
           IF TYP-MBDI = 0 OR 8 MOVE 8 TO LK-MBDI-L-TYP
           END-IF
           IF IDV-MCLI = 1 MOVE CDV-MBDI TO LK-MBDI-L-CDV
           END-IF   
           IF MXSLIE-PALM = 1 OR MODU-M3 = 1
              MOVE W-AGE TO LK-MBDI-L-AGE(1)
           END-IF
           MOVE 0 TO LK-MBDI-L-STA 
           MOVE 1 TO LK-MBDI-L-VIS
           CALL "mbdi-l.acu" USING ZONE-PALM LK-MBDI-L
           CANCEL "mbdi-l.acu"
           IF LK-MBDI-L-BON(1) = 0 GO F-Test-Autres-Bons.

           MOVE LK-MBDI-L-AGE(1) TO AGE-MBDI2
           MOVE LK-MBDI-L-BON(1) TO BON-MBDI2
           READ MXBDIS2 LOCK INVALID GO F-Test-Autres-Bons
           END-READ
           PERFORM STAT
           IF IND-STAT = 1
              MOVE "399" TO Acu-Msg-Id
              PERFORM Acu-Show-Msg
              GO F-Test-Autres-Bons
           END-IF   
           IF W-AGE NOT = AGE-MBDI2
           AND TYP-MBDI2 NOT = 8
              STRING "Impossible - Bon de l'agence " AGE-MBDI2
              INTO ACU-MSG-1
              PERFORM MSG-INFO
              GO F-Test-Autres-Bons
           END-IF

           PERFORM Test-Un-Autre-Bon

           IF (MOB-PALM > 0 AND (CLI-PALM = 850225 OR <  10) AND        | Si Landa, et si transformation devis en commande, 
              TYP-MBDI = 0 AND REP-MBDI2 NOT = REP-MCLD)                | le cial du devis doit être le même que celui de CLID
              MOVE "Incohérence Vendeur" TO ACU-MSG-1
              PERFORM MSG-INFO
              MOVE 0 TO W-OK
           END-IF.

           IF W-OK = 0 
              GO F-Test-Autres-Bons
           END-IF
           IF (TYP-MBDI = 1 AND TYP-MBDI2 = 1)
           OR (TYP-MBDI = 8 AND TYP-MBDI2 = 8)
              MOVE CHOIX-I TO CDF
              PERFORM Screen1-Mode-Interrogation
              MOVE 0 TO WENABLE
              PERFORM Screen1-Enable
              UNLOCK MXBDIS2
              MOVE ENR-MBDI2 TO ENR-MBDI
              MOVE BON-MBDI2 TO W-BON
              MODIFY Screen1-Ef-Bon, VALUE W-BON
              PERFORM Screen1-Ef-Bon-Ev-Msg-Validate
              GO F-Test-Autres-Bons
           END-IF
           PERFORM Acu-ScreenLiv-Routine.
       F-Test-Autres-Bons.

       Test-Un-Autre-Bon.
           MOVE 1 TO W-OK
           IF TRA-MBDI2 NOT = 0 
              MOVE 0 TO W-OK.             | en cours
           IF GEN-MBDI2 NOT = 0 AND LCO-MPAR = 1 AND MXSLIE-PALM = 0
           AND NOT (CLI-PALM = 690141 AND (STE-MCLI = 100 OR 110) | Sahamat/Foraloc
                    AND W-AGE = "E01" AND TYP-MBDI2 = 0)
230218     AND NOT (CLI-PALM = 590825 AND STE-MCLI > 0 
                    AND TYP-MBDI2 = 0)
              MOVE 0 TO W-OK.             | B/L généré par un OR
           IF (IDV-MCLI = 1 AND CDV-MBDI NOT = CDV-MBDI2) 
              MOVE 0 TO W-OK.             | même client divers
           IF (CLI-MBDI2 = 0 AND FCO-MBDI NOT = FCO-MBDI2
111212                       AND FCO-MBDI2 NOT = FCO-MCLI) 
              MOVE 0 TO W-OK.             | même prospect    
           IF (MXSLIE-PALM = 1 OR MODU-M3 = 1)
           AND AGE-MBDI2 NOT = W-AGE  | même agence (TOUFFLIN)
              MOVE 0 TO W-OK.
      *     IF CAT-MBDI2 = 1 
      *        MOVE 0 TO W-OK.             | cde pas en attente (Promodis)
      *     IF MODU-CENTRA = 1 
      *        MOVE BON-MBDI2 TO BON-MBDI
      *        PERFORM VERIF-AFFCENT
      *        MOVE 0 TO BON-MBDI
      *        IF W-LIE = 1 MOVE 0 TO W-OK
      *        END-IF
      *     END-IF.

      **** Client divers
      
      **** Interlocuteur
       Screen1-Ef-Itc-Ev-Cmd-Goto.    

       Lect-MXCOPROBL-Premier.

      *****************************************
      *    VISU D'UN BON (APPEL EN INTERRO)   *
      *****************************************
       Screen1-Interro-Bon.
           MODIFY Screen1-Ef-Bon, VALUE BON-MBDI
           PERFORM Affich-BDIS
           MOVE 0 TO WENABLE
           PERFORM Screen1-Enable-Bon
           MOVE CHOIX-I TO CDF
           MODIFY Screen1-Ef-Age, ENABLED FALSE
           MODIFY Screen1-Pb-Suivant, ENABLED TRUE
           MODIFY Screen1-Pb-Terminer, VISIBLE TRUE
           MODIFY Screen1-Pb-Imprimer, ENABLED TRUE.
090113     MODIFY Screen1-Pb-Modifier, ENABLED 1.

      *****************************************
      *    GESTION DES BOUTONS SUR L'ECRAN 1  *
      *****************************************
       Screen1-Pb-Ags-Link.
           IF MODU-M3 = 1 EXIT PARAGRAPH
           END-IF
           MOVE SPACE TO LK-LISTE
           MOVE W-AGS TO LK-LISTE-COD(1)
           MOVE 1 TO LK-LISTE-MAXSEL
           CALL "magc-l.acu" USING ZONE-PALM LK-LISTE
           CANCEL "magc-l.acu"
           IF LK-LISTE-COD(1) = SPACE
                EXIT PARAGRAPH
           END-IF
           MOVE LK-LISTE-COD(1) TO W-AGS COD-MAGC2
           PERFORM Lect-Agence2
           MOVE COD-MAGC2 TO W-AGS
           IF W-AGS = W-AGE MOVE SPACE TO W-AGS ENR-MAGC2.
           MODIFY Screen1-Ef-Ags, VALUE ABR-MAGC2.

       Screen1-Pb-Dps-Link.

       Screen1-Pb-Quitter-LinkTo.
      *     inquire Screen1-Pb-Quitter, visible in W-vs-pb
      *     if w-vs-pb = 0 exit paragraph
      *     end-if      
      *     PERFORM Mistral-CloseCurrentWindow
      *     PERFORM Acu-Screen1-Exit
           .
       Screen1-Pb-Lignes-LinkTo.
      *     inquire Screen1-Pb-Suivant, visible in W-vs-pb
      *     if w-vs-pb = 0 exit paragraph
      *     end-if
           IF W-BON = 0 EXIT PARAGRAPH.
           IF CDF NOT = CHOIX-I
              PERFORM Maj-Entete
              IF W-IND NOT = 0 EXIT PARAGRAPH
              END-IF
              MOVE 1 TO Test-TAA
220711        MOVE 1 TO IND-RELECT
              PERFORM Lock-Entete
220711        MOVE 0 TO IND-RELECT
              MOVE 0 TO Test-TAA
              IF W-IND = 1
                 MOVE CHOIX-I TO CDF
                 MOVE 0 TO WENABLE
                 PERFORM Screen1-Enable
                 MODIFY Screen1-Pb-Sauvegarder, ENABLED FALSE
      *           MODIFY Screen1-Pb-Rafraichir, VISIBLE FALSE
      *        ELSE
              END-IF
                 MODIFY Screen1-Pb-Terminer, VISIBLE FALSE
      *           MODIFY Screen1-Pb-Quitter, VISIBLE FALSE
      *        END-IF
           END-IF

           MOVE 0 TO WVisible-SAV WVisible-GAR Wvisible-LSD
           PERFORM Affiche-Saisies-SAV
           PERFORM Change-Color-Grid
           MOVE CDF TO SV-CDF1

           PERFORM Acu-Screen2-Routine
           IF (CDF NOT = "Z" AND CDF = SV-CDF1)
           OR (BON-MBDI = 0)

               EXIT PARAGRAPH
           END-IF
           IF CDF = CHOIX-I
              PERFORM Screen1-Mode-Interrogation
              MOVE 0 TO WENABLE
              PERFORM Screen1-Enable
           ELSE
              PERFORM Screen1-Mode-Modification
              MOVE 1 TO WENABLE
              PERFORM Screen1-Enable
              MOVE 0 TO WENABLE
              PERFORM Screen1-Enable-Bon
           END-IF.

       Screen1-Pb-Creer-LinkTo.
      *     inquire Screen1-Pb-Creer, visible in W-vs-pb
      *     if w-vs-pb = 0 exit paragraph
      *     end-if
           IF W-TYP = -1
                MOVE " Sélectionnez le type de bon " TO ACU-MSG-1
                PERFORM MSG-INFO
                EXIT PARAGRAPH.
           MOVE CHOIX-C TO CDF-FONCTION
           MOVE W-TYP TO TYP-MBDI
           PERFORM Test-Auto-Fonction
           IF OK-Fonction = 0 EXIT PARAGRAPH
           END-IF
           MOVE 0 TO W-IND
           PERFORM Increment-Bon UNTIL W-IND NOT = 0
           IF W-IND = 2 EXIT PARAGRAPH.
           MOVE CHOIX-C TO CDF
           INITIALIZE ENR-MBDI ENR-MCLI W-ICP SV-ENR-MBDI SV-DLP SV-CLI
                      W-GENCFA
           PERFORM DEL-TRISEL
           MOVE SPACE TO La-Facture SV-TCC
           MOVE 0 TO Wvisible-lafac W-LIE 
           MOVE W-AGE TO AGE-MBDI
           MOVE W-BON TO BON-MBDI
           MOVE W-DAT TO DAT-MBDI
           MOVE W-TYP TO TYP-MBDI
160112     MOVE 1     TO TBP-MBDI
           IF NCD-MPAD > 0 AND < 5 
              COMPUTE ACA-MBDI = NCD-MPAD - 1
           END-IF
           IF NCD-MPAD = 0 
              MOVE 0 TO ACA-MBDI
           END-IF
           IF NCD-MPAD = 9 
              MOVE 9 TO ACA-MBDI
           END-IF
      *     IF AUTO-CT = 2 MOVE 1 TO ACA-MBDI.
           IF MOB-PALM > 0 AND (CLI-PALM = 850225 OR <  10)         | Si MobiDis et client = LANDA
              MOVE 1 TO ACA-MBDI.
           MOVE W-DPS TO DEP-MBDI
           MOVE W-AGS TO AGS-MBDI
           IF TYC-MBDI = 1 MOVE SPACE TO AGS-MBDI.
121216* Appel Call Center TOPAZ
           IF W-BGP = 2 AND MODU-M3 = 1
              MOVE "CC" TO NRF-MBDI
           END-IF
121216
           IF TYP-MBDI = 8 
               MOVE DEL-MAGD TO DEL-MBDI
               MOVE VAO-MAGD TO VAO-MBDI
               IF DEL-MBDI NOT = 0
                  COMPUTE DLP-MBDI = FUNCTION DATE-OF-INTEGER
                  (FUNCTION INTEGER-OF-DATE (DAT-MBDI) + DEL-MBDI)
               END-IF
           END-IF

           PERFORM Screen1-Efface
           PERFORM Screen1-Fld-To-Buf
           
           MOVE TCC-Default TO TCC-MBDI Cm-MTCC-SelectedItem
           PERFORM Affiche-CM-TCO-ENTETE
           MOVE 1 TO WENABLE
           PERFORM Screen1-Enable
           MODIFY Screen1-Ef-Bon, VALUE W-BON
           MOVE 0 TO WENABLE
           PERFORM Screen1-Enable-Bon
      * Création directe par .bat (M3)
           IF LK-SBD-C-CHO = CHOIX-C
              MOVE LK-SBD-C-TYP TO TYP-MBDI W-TYP
              PERFORM Affich-Typ
              PERFORM Aff-Selon-Typ
              IF LK-SBD-C-CLI NOT = 0 
                 MODIFY Screen1-Ef-Cli, VALUE = LK-SBD-C-CLI
                 PERFORM Screen1-Ef-Cli-Ev-Msg-Validate
              END-IF
           END-IF.
      
           PERFORM Screen1-Mode-Modification
           MODIFY Screen1-Pb-Creer,    ENABLED FALSE
           MODIFY Screen1-Pb-Suivant,  ENABLED TRUE
           MODIFY Screen1-Pb-Terminer, VISIBLE TRUE
           MOVE 4 TO ACCEPT-CONTROL
           MOVE 7 TO CONTROL-ID.
 
       Screen1-Pb-Modifier-LinkTo.
      *     inquire Screen1-Pb-Modifier, visible in W-vs-pb
      *     if w-vs-pb = 0 exit paragraph
      *     end-if

           IF W-BON = 0 EXIT PARAGRAPH.
           MOVE CHOIX-M TO CDF-FONCTION
      *     PERFORM Controle-Fonction
           PERFORM Test-Auto-Fonction
           IF OK-Fonction = 0 EXIT PARAGRAPH
           END-IF
           PERFORM Lock-Entete
           IF W-IND = 1 
              EXIT PARAGRAPH
           END-IF

           MOVE CHOIX-M TO CDF
           MOVE ENR-MBDI TO SV-ENR-MBDI
           MOVE 1 TO WENABLE
           PERFORM Screen1-Enable
           MOVE 0 TO WENABLE
           PERFORM Screen1-Enable-Bon.
           PERFORM Change-Color-Grid.
           PERFORM Screen1-Mode-Modification
           MODIFY Screen1-Pb-Creer, ENABLED FALSE.

       Screen1-Pb-Dupliquer-Link.
      *     inquire Screen1-Pb-Dupliquer, visible in W-vs-pb
      *     if w-vs-pb = 0 
           if w-bon = 0 
              exit paragraph
           end-if
           if (typ-mbdi not = 8 and not = 0)
              display message "Non réalisable"
              exit paragraph
           end-if
           MOVE CHOIX-C TO CDF-FONCTION
           PERFORM Controle-Fonction  
           IF OK-Fonction = 0 EXIT PARAGRAPH
           END-IF

           IF TYP-MBDI = 8
              MOVE "Souhaitez-vous dupliquer ce devis ?" TO ACU-MSG-1
           ELSE
              MOVE "Souhaitez-vous dupliquer cette commande ?" 
              TO ACU-MSG-1
           END-IF
           PERFORM MSG-ON
           IF ACU-RETURN-VALUE NOT = 1 EXIT PARAGRAPH
           END-IF
           MOVE ENR-MBDI TO ENR-MBDI2
           MOVE BON-MBDI TO A-BON
           MOVE CLE1-MBDI TO A-CLEB
           MOVE 0 TO W-IND
           PERFORM Increment-Bon UNTIL W-IND NOT = 0
           IF W-IND = 2 EXIT PARAGRAPH.
           MOVE CHOIX-M TO CDF
           MOVE ENR-MBDI2 TO ENR-MBDI SV-ENR-MBDI
210319     move CLI-MBDI to sv-CLI  |pour proposer de changer les prix 
130508*     INITIALIZE ENR-MCLI W-ICP 
           MOVE SPACE TO La-Facture
           MOVE 0 TO Wvisible-lafac
           MOVE W-AGE TO AGE-MBDI
           MOVE W-BON TO BON-MBDI N-BON
           MOVE W-DAT TO DAT-MBDI
           MOVE ZERO  TO TRA-MBDI
060411                   BCG-MBDI
           IF MOB-PALM > 0 MOVE 1 TO IES-MBDI.
           WRITE ENR-MBDI INVALID MOVE "Ecriture BDIS" TO ACU-MSG-2
                                  MOVE CLE1-MBDI TO ACU-MSG-3 
                                  GO ERREUR.
           PERFORM STAT.
           READ MXBDIS LOCK
           PERFORM STAT
           MODIFY Screen1-Ef-BON, VALUE W-BON
           
           MOVE CLE1-MBDI TO N-CLEB
           MOVE "E" TO W-INO
           PERFORM Transfert-Mxcomment.

           MOVE 9 TO W-TYPTRS
           MOVE "Z" TO CDF.
           PERFORM DUPLIC-LIGNES THRU F-DUPLIC-LIGNES.
           PERFORM Screen1-Mode-Modification
           PERFORM Affich-Dat
           MOVE 1 TO WENABLE
           PERFORM Screen1-Enable
           MOVE 0 TO WENABLE
           PERFORM Screen1-Enable-Bon.

       Screen1-Pb-Sauvegarder-LinkTo.
      *     inquire Screen1-Pb-Sauvegarder, visible in W-vs-pb
      *     if w-vs-pb = 0 exit paragraph
      *     end-if
           IF W-BON = 0 EXIT PARAGRAPH.

           PERFORM Maj-Entete
           IF W-IND NOT = 0 
           OR (FAO-MCLD = 1 AND TYP-MBDI = 1) | sinon on peut sortir sans facturer
              EXIT PARAGRAPH.
           MOVE CHOIX-I TO CDF
           MOVE 0 TO WENABLE
           PERFORM Screen1-Enable
           PERFORM Screen1-Mode-Interrogation
           PERFORM Change-Color-Grid.

      * Screen1-Pb-Rafraichir-Link.
      *     inquire Screen1-Pb-Rafraichir, visible in W-vs-pb
      *     if w-vs-pb = 0 exit paragraph
      *     end-if
      *     IF CDF = CHOIX-C
      *        PERFORM Screen1-Pb-Terminer-LinkTo
      *     END-IF.
      *     IF CDF = CHOIX-M OR "Z"
      *        MOVE SV-ENR-MBDI TO ENR-MBDI
      *        PERFORM Affich-BDIS
      *        MOVE CHOIX-I TO CDF
      *        MOVE 0 TO WENABLE
      *        PERFORM Screen1-Enable
      *        PERFORM Screen1-Mode-Interrogation
      *        PERFORM Change-Color-Grid
      *     END-IF.
             
       Screen1-Pb-AjoutBon-Link.
           PERFORM Test-Autres-Bons THRU F-Test-Autres-Bons.

       Screen1-Pb-ListeCli-LinkTo.
           inquire Screen1-Pb-ListeCli, visible in W-vs-pb
           if w-vs-pb = 0 exit paragraph
           end-if
           inquire Screen1-Pb-ListeCli, enabled in W-vs-pb
           if w-vs-pb = 0 exit paragraph
           end-if
           MOVE SPACE TO LK-MCLI-L
           MOVE 1 TO LK-MCLI-L-NumFiltre
           IF TYC-MBDI = 1 MOVE 1 TO LK-MCLI-L-IAG
           END-IF
           IF W-ICP = 1 MOVE 2 TO LK-MCLI-L-NumFiltre   | prospects
           END-IF                                      
           CALL "mcli-l.acu" USING ZONE-PALM LK-MCLI-L
           CANCEL "mcli-l.acu"
           IF W-ICP = 0 AND LK-MCLI-L-COD = 0 EXIT PARAGRAPH.
           IF W-ICP = 1 AND LK-MCLI-L-FCO = SPACE EXIT PARAGRAPH.
           IF W-ICP = 0 MODIFY Screen1-Ef-Cli, VALUE LK-MCLI-L-COD
                   ELSE MODIFY Screen1-Ef-Cli, VALUE LK-MCLI-L-FCO
           END-IF
           PERFORM Screen1-Ef-Cli-Ev-Msg-Validate.
          
       Screen1-Pb-Terminer-LinkTo.
           inquire Screen1-Pb-Terminer, visible in W-vs-pb
           if w-vs-pb = 0 exit paragraph
           end-if
           IF CDF = CHOIX-C
              PERFORM Decrement-Bon
           END-IF
           IF CDF = CHOIX-M OR "Z"
               PERFORM Test-Existence-Lignes
               IF W-INDANNUL = 1 EXIT PARAGRAPH
               END-IF
               IF W-INDANNUL = 2 PERFORM Retour-Saisie-Numero
                                 EXIT PARAGRAPH
               END-IF
               PERFORM Recup-Entete
               MOVE SV-ENR-MBDI TO ENR-MBDI2
               MOVE TAT-MBDI TO TAT-MBDI2
               MOVE TAC-MBDI TO TAC-MBDI2
               IF ENR-MBDI NOT = ENR-MBDI2
                    MOVE "202" TO Acu-Msg-Id
                    PERFORM Acu-Show-Msg
                    IF Acu-Return-Value = 1
                       PERFORM Maj-Entete
                       IF W-IND NOT = 0 EXIT PARAGRAPH
                       END-IF
                    END-IF
               ELSE PERFORM Controle-Entete
                    IF W-IND NOT = 0 EXIT PARAGRAPH
                    END-IF
                    PERFORM Controle-Pied
                    IF W-IND NOT = 0 EXIT PARAGRAPH
                    END-IF
               END-IF
           END-IF.
           IF LK-SBD-C-CHO = CHOIX-I OR "V"
              DESTROY Screen1-Handle
              PERFORM RESTORE-PALETTE
              GO Acu-Exit-Rtn
           END-IF
           PERFORM Retour-Saisie-Numero.

       Retour-Saisie-Numero.
           IF LK-SBD-C-CHO = CHOIX-I OR "V"
              DESTROY Screen1-Handle
              PERFORM RESTORE-PALETTE
              GO Acu-Exit-Rtn
           END-IF
           MOVE SPACE TO ENR-MBDI
           PERFORM Screen1-Enable-False
           MOVE 1 TO WENABLE
           PERFORM Screen1-Enable-Bon
           MODIFY Screen1-Ef-Bon, VALUE SPACE
           MODIFY Screen1-Pb-Creer, ENABLED TRUE
           MODIFY Screen1-Pb-Modifier, ENABLED FALSE
      *     MODIFY Screen1-Pb-Dupliquer, VISIBLE FALSE
           MODIFY Screen1-Pb-Supprimer, ENABLED FALSE
           MODIFY Screen1-Pb-Sauvegarder, ENABLED FALSE
      *     MODIFY Screen1-Pb-Rafraichir, VISIBLE FALSE
           MODIFY Screen1-Pb-AjoutBon, VISIBLE FALSE
           MODIFY Screen1-Pb-Suivant, ENABLED FALSE
           MODIFY Screen1-Pb-Terminer, VISIBLE FALSE
      *     MODIFY Screen1-Pb-Quitter, VISIBLE TRUE
           IF MOB-PALM = 0 
              MOVE MXREP-PALM TO WVisible-SAV
              MOVE MXGAR-PALM TO WVisible-GAR
              ADD MXCAI-PALM MXLSD-PALM GIVING Wvisible-LSD
              PERFORM Affiche-Saisies-SAV
           END-IF
           MOVE ZERO TO W-BON W-GENCFA
           PERFORM DEL-TRISEL
           MOVE CHOIX-I TO CDF
           PERFORM Screen1-Efface
           UNLOCK MXBDIS
           UNLOCK MXBDIS2
           UNLOCK MXLDIS.

       Screen1-Ef-Bon-Ev-Msg-Validate.
           INQUIRE Screen1-Ef-Bon, VALUE IN W-BON
           IF W-BON = 0 EXIT PARAGRAPH.
           MOVE W-AGE TO AGE-MBDI
           MOVE W-BON TO BON-MBDI
           READ MXBDIS 
           INVALID
              MOVE 0 TO W-TROUVE
           NOT INVALID
               MOVE 1 TO W-TROUVE
           END-READ
           PERFORM STAT

           IF W-TROUVE = 0  
              EXIT PARAGRAPH.

           IF TYP-MBDI NOT = 8 AND W-TYP = 8 AND LK-CALL = 0
               MOVE "Attention! ce n'est pas un devis !!!" TO ACU-MSG-1
               PERFORM MSG-INFO
               IF (TYP-MBDI = 0 AND AUTO-VISCD = 2)
               OR ((TYP-MBDI = 1 OR 3) AND AUTO-VISBL = 2) 
               OR (TYP-MBDI = 3 AND AUTO-CREAVO = 2)
                  MOVE ZERO TO W-BON
                  MODIFY Screen1-Ef-Bon, VALUE SPACE
                  EXIT PARAGRAPH
               END-IF
           END-IF.
           IF TYP-MBDI = 8 AND W-TYP NOT = 8 AND NOT = -1
           AND LK-CALL = 0
               MOVE "Attention! C'est un devis !!!" TO ACU-MSG-1
               PERFORM MSG-INFO
           END-IF.
           | Spécial Landa
           IF AUTO-CT = 2 AND ACA-MBDI = 1 AND TYP-MBDI = 0
               MOVE "C'est un bon de commande terrain" 
               TO ACU-MSG-1
               PERFORM MSG-INFO
               MOVE ZERO TO W-BON
               MODIFY Screen1-Ef-Bon, VALUE SPACE
               EXIT PARAGRAPH.
           IF TYP-MBDI = 9
               MOVE "C'est un bon libre-service" TO ACU-MSG-1
               PERFORM MSG-INFO
               MOVE ZERO TO W-BON
               MODIFY Screen1-Ef-Bon, VALUE SPACE
               EXIT PARAGRAPH.
           IF TYC-MBDI = 7
               MOVE "C'est un bon/refacturation fournisseur"
               TO ACU-MSG-1
               PERFORM MSG-INFO
               MOVE ZERO TO W-BON
               MODIFY Screen1-Ef-Bon, VALUE SPACE
               EXIT PARAGRAPH.
           IF TYP-MBDI = 0 
           AND ((W-TYP NOT = 0 AND NOT = -1) OR AUTO-VISCD = 2) 
           AND LK-CALL = 0
               MOVE "Attention! C'est un bon de commande !!!" 
               TO ACU-MSG-1
               PERFORM MSG-INFO
               IF AUTO-VISCD = 2
                  MOVE ZERO TO W-BON
                  MODIFY Screen1-Ef-Bon, VALUE SPACE
                  EXIT PARAGRAPH
               END-IF
           END-IF.
           IF TYP-MBDI = 3 AND W-TYP NOT = 3 AND LK-CALL = 0
           AND LK-SBD-C-CHO NOT = "V"
               MOVE "Attention! C'est un bon de retour !!!" TO ACU-MSG-1
               PERFORM MSG-INFO
               IF AUTO-VISBL = 2
               OR AUTO-CREAVO = 2
                  MOVE ZERO TO W-BON
                  MODIFY Screen1-Ef-Bon, VALUE SPACE
                  EXIT PARAGRAPH
               END-IF
           END-IF.
           IF (TYP-MBDI = 1 OR 2 OR 6) 
           AND ((W-TYP NOT = 1 AND NOT = -1) OR AUTO-VISBL = 2) 
           AND LK-CALL = 0
           AND LK-SBD-C-CHO NOT = "V"
               MOVE "Attention! C'est un bon de livraison !!!" 
               TO ACU-MSG-1
               PERFORM MSG-INFO
               IF AUTO-VISBL = 2
                  MOVE ZERO TO W-BON
                  MODIFY Screen1-Ef-Bon, VALUE SPACE
                  EXIT PARAGRAPH
               END-IF
           END-IF.

           PERFORM Affich-BDIS 
           MOVE DLP-MBDI TO SV-DLP
           MOVE TCC-MBDI TO SV-TCC
270114     MOVE CLI-MBDI TO SV-CLI
           MOVE 0 TO WENABLE
           PERFORM Screen1-Enable-Bon
           MOVE CHOIX-I TO CDF
           MODIFY Screen1-Pb-Suivant, ENABLED TRUE
           MODIFY Screen1-Pb-Terminer, VISIBLE TRUE, ENABLED TRUE
           MODIFY Screen1-Pb-Creer, ENABLED FALSE
           IF TRA-MBDI = 0 
           AND (GEN-MBDI = 0 
061113        OR (CLI-PALM = 690141 AND (STE-MCLI = 100 OR 110))
230218        OR (CLI-PALM = 590825 AND STE-MCLI > 0))
              MODIFY Screen1-Pb-Modifier, ENABLED TRUE
              MODIFY Screen1-Pb-Supprimer, ENABLED TRUE
      *        IF TYP-MBDI = 8 
      *                   OR 0
      *           MODIFY Screen1-Pb-Dupliquer, VISIBLE TRUE
      *        END-IF
           END-IF
           MODIFY Screen1-Pb-Imprimer, VISIBLE TRUE
           PERFORM Change-Color-Grid.

       Screen1-Pb-ListeBon-LinkTo.
           IF W-TYP = -1
                move " Sélectionnez le type de bon " to acu-msg-1
                PERFORM msg-info
                EXIT PARAGRAPH.
           MOVE SPACE TO LK-MBDI-L
           MOVE W-AGE TO LK-MBDI-L-AGE(1)
           MOVE W-TYP TO LK-MBDI-L-TYP
           MOVE 0     TO LK-MBDI-L-STA LK-MBDI-L-VIS
           |MOVE 2     TO LK-MBDI-L-IND
           CALL "mbdi-l.acu" USING ZONE-PALM LK-MBDI-L
           CANCEL "mbdi-l.acu"
           IF LK-MBDI-L-BON(1) = 0 EXIT PARAGRAPH.
           MOVE LK-MBDI-L-BON(1) TO W-BON
           MODIFY Screen1-Ef-Bon, VALUE W-BON               

           PERFORM Screen1-Ef-Bon-Ev-Msg-Validate.
           
       Screen1-Cm-Typ-Ex-Ntf-Selchange.
           INQUIRE Screen1-Cm-Typ, VALUE IN ELT-TYPTYP(5)
           MOVE ELT-COD(5) TO W-TYP
           PERFORM Aff-Selon-Typ.

       Aff-Selon-Typ.
           IF W-TYP = 8
                MODIFY Screen1-Cb-ICP, VISIBLE 1
           ELSE MODIFY Screen1-Cb-ICP, VISIBLE 0
           END-IF.

       Screen1-Ef-LRAI-Ev-Msg-Validate.
           INQUIRE Screen1-Ef-LRAI, VALUE IN RAI-MBDI
           IF RAI-MBDI <> SPACE 
                MOVE 0 TO CHC-MBDI
           ELSE MOVE SPACE TO RAI-MBDI ADR-MBDI
                              POS-MBDI VIL-MBDI
                PERFORM Affich-Chc-Div
                MOVE 61 TO CONTROL-ID
                MOVE 4 TO ACCEPT-CONTROL
           END-IF.

       Screen1-Pb-Supprimer-LinkTo.
      *     inquire Screen1-Pb-Supprimer, visible in W-vs-pb
      *     if w-vs-pb = 0 exit paragraph
      *     end-if

           IF W-BON = 0 EXIT PARAGRAPH
           END-IF
           MOVE CHOIX-A TO CDF-FONCTION
      *     PERFORM Controle-Fonction
           PERFORM Test-Auto-Fonction
           IF OK-Fonction = 0 EXIT PARAGRAPH
           END-IF
           MOVE "203" TO Acu-Msg-Id
           PERFORM Acu-Show-Msg
           IF Acu-Return-Value NOT = 1
              EXIT PARAGRAPH
           END-IF
           PERFORM Lock-Entete
           IF W-IND = 1 
              EXIT PARAGRAPH
           END-IF
           MOVE AGE-MBDI TO AGE-MLDI
           MOVE BON-MBDI TO BON-MLDI
           MOVE ZERO TO RAN-MLDI W-EOF W-ERR
           START MXLDIS KEY NOT < CLE4-MLDI INVALID MOVE 1 TO W-EOF.
           IF W-EOF = 0
              READ MXLDIS NEXT END MOVE 1 TO W-EOF
              END-READ
              PERFORM STAT.
           PERFORM UNTIL W-EOF = 1 
              OR AGE-MLDI NOT = AGE-MBDI
              OR BON-MLDI NOT = BON-MBDI
              IF EPG-MLDI = 1 AND TLI-MLDI = 3
                 PERFORM TEST-CMQ
              END-IF
              IF (BLI-MLDI > 0
              OR (EPG-MLDI = 1 AND TLI-MLDI = 3 AND IND-CMQ = 1
020415            AND MODU-M3 = 1))
                 MOVE 1 TO W-ERR
              ELSE
                 MOVE 2 TO W-OTE
                 PERFORM Maj-Ligne
                 PERFORM Del-MXLDIS
                 PERFORM Maj-Delvte-Ldis
              END-IF
              READ MXLDIS NEXT END MOVE 1 TO W-EOF
              END-READ
              PERFORM STAT
           END-PERFORM.
           UNLOCK MXLDIS
           IF W-ERR = 1
              MOVE 
              "Suppression impossible - Transfert inter-sociétés généré"
              to acu-msg-1
              perform msg-erreur
              EXIT PARAGRAPH
           END-IF

           PERFORM Del-MXBDIS.
           PERFORM Maj-Delvte-Bdis.
           PERFORM Del-GenBlfms.
           PERFORM Supprime-Photos.
           PERFORM Retour-Saisie-Numero.

       Screen1-Pb-Imprimer-LinkTo.
           inquire Screen1-Pb-Imprimer, visible in W-vs-pb
           if w-vs-pb = 0 exit paragraph
           end-if
           move "Impression non gérée" to acu-msg-1
           perform msg-info.

       Screen1-Pb-Agence-LinkTo.
           IF CDF = CHOIX-M OR W-BON NOT = 0 OR W-BGP = 2
              EXIT PARAGRAPH
           END-IF.
           MODIFY Screen1-Ef-Age, ENABLED TRUE
           MOVE 76 TO CONTROL-ID
           MOVE 4 TO ACCEPT-CONTROL.
          
       Screen1-Ef-Dat-Ev-Msg-Validate. 
           INQUIRE Screen1-Ef-Dat VALUE IN Af-W-DAT
           COPY "W:/mistral/copy/Ef-Date10-Ecr2Fic.cbl"
           REPLACING ==CPYDAT-FIC== BY ==W-DAT==
                     ==CPYDAT-ECR== BY ==Af-W-DAT==.
           MODIFY Screen1-Ef-DAT, VALUE Af-W-DAT. 
           MOVE 1 TO WDAT-OK
           COPY "W:/mx/copy/ControlePeriode.cbl" REPLACING 
                ==CPYDAT== BY ==W-DAT==.
           IF DateSaisie-Erreur = 1
                MOVE 0 TO WDAT-OK
           END-IF
           IF WDAT-OK = 0 
              IF CDF = CHOIX-M AND W-BON NOT = 0 
                 MOVE "Date incorrecte" TO ACU-MSG-1
                 PERFORM MSG-ERREUR
                 move dat-mbdi to d-samj 
                 perform convdat-samj-jmsa
                 MODIFY Screen1-Ef-DAT, VALUE l-dat8 
                 exit paragraph
              END-IF
              IF MOB-PALM = 0
                 MOVE 4 TO ACCEPT-CONTROL
                 MOVE 78 TO CONTROL-ID
                 EXIT PARAGRAPH
              ELSE
                 MOVE "Confirmez-vous cette date ? " TO ACU-MSG-1
                 PERFORM MSG-ON
                 IF ACU-RETURN-VALUE not = 1
                   MOVE 4 TO ACCEPT-CONTROL
                   MOVE 78 TO CONTROL-ID
                   EXIT PARAGRAPH
                 END-IF
              END-IF                    
           END-IF
           PERFORM Affich-Dat

           IF CDF = CHOIX-M AND W-BON NOT = 0 
              PERFORM Change-Date-Bon 
              EXIT PARAGRAPH
           END-IF.

           MODIFY Screen1-Ef-Dat, ENABLED FALSE, COLOR 514.
           MODIFY Screen1-Pb-Creer, ENABLED TRUE
           IF MOB-PALM = 0 
              MOVE MXREP-PALM TO WVisible-SAV
              MOVE MXGAR-PALM TO WVisible-GAR
              ADD MXCAI-PALM MXLSD-PALM GIVING Wvisible-LSD
              PERFORM Affiche-Saisies-SAV
           END-IF
           MODIFY Screen1-Pb-ListeBon, VISIBLE TRUE
           MOVE 1 TO WENABLE
           PERFORM Screen1-Enable-Bon.

       Screen1-DaEf-Rep-AfterProcedure.
           INQUIRE Screen1-DaEf-Rep, VALUE IN W-REP.

       Screen1-Pb-1-LinkTo.

       Screen1-Ef-LPOS-Ev-Msg-Validate.
           INQUIRE Screen1-Ef-LPOS, VALUE IN Af-POS
           COPY "W:/mistral/copy/Ef-Pos-Ecr2Fic.cbl"
                REPLACING ==CPYPOS-PAYS== BY ==PAY-MCLI==
                          ==CPYPOS-FIC==  BY ==POS-MBDI==
                          ==CPYPOS-ECR==  BY ==Af-POS==
                          ==CPYPOS-VIL==  BY ==VIL-MBDI==.
           MODIFY Screen1-Ef-LPOS, VALUE Af-POS
           MODIFY Screen1-Ef-LVIL, VALUE VIL-MBDI
           .

       Screen1-DaEf-JDLI-Ev-Msg-Validate.
           INQUIRE Screen1-DaEf-JDLI, VALUE IN JDLP-MBDI
           IF JDLP-MBDI = 0 AND TYP-MBDI = 8
                MOVE 0 TO DLP-MBDI
                PERFORM Affich-Dli
                EXIT PARAGRAPH.
           IF JDLP-MBDI = 0 AND (TYP-MBDI NOT = 0 OR MODU-M3 = 1)
                MOVE DAT-MBDI TO DLP-MBDI
                PERFORM Affich-Dli
                EXIT PARAGRAPH.
           IF JDLP-MBDI = 0 OR > 31
                MOVE 4 TO ACCEPT-CONTROL
                MOVE 96 TO CONTROL-ID.

       Screen1-DaEf-MDLI-Ev-Msg-Validate.
           INQUIRE Screen1-DaEf-MDLI, VALUE IN MDLP-MBDI
           IF MDLP-MBDI > MDAT-MBDI
           OR (JDLP-MBDI NOT < JDAT-MBDI AND MDLP-MBDI = MDAT-MBDI)
                MOVE ADAT-MBDI TO ADLP-MBDI
                MOVE SDAT-MBDI TO SDLP-MBDI
           ELSE ADD 1 ADAT-MBDI GIVING ADLP-MBDI
                IF ADLP-MBDI > 50 MOVE 19 TO SDLP-MBDI
                             ELSE MOVE 20 TO SDLP-MBDI.
           PERFORM Affich-Dli
           IF DLP-MBDI = 0 EXIT PARAGRAPH.
           PERFORM Affich-Dli
           IF DLP-MBDI < DAT-MBDI
               MOVE
               " Date de Livraison < Date de Commande " to acu-msg-1
               PERFORM msg-info
               MOVE 4 TO ACCEPT-CONTROL
               MOVE 96 TO CONTROL-ID
               EXIT PARAGRAPH.
           
       Screen1-Pb-Date-LinkTo.
      *     IF CDF = CHOIX-M OR W-BON NOT = 0 
      *        EXIT PARAGRAPH
      *     END-IF.
           IF CDF NOT = CHOIX-M AND W-BON NOT = 0 
              EXIT PARAGRAPH
           END-IF
           IF W-BON NOT = 0 AND DAT-MBDI < DDE-MPAR
              EXIT PARAGRAPH
           END-IF

           MODIFY Screen1-Ef-Dat, ENABLED TRUE
           MOVE 0 TO WENABLE
           PERFORM Screen1-Enable-Bon
           MODIFY Screen1-Pb-Creer, ENABLED FALSE
           MOVE 78 TO CONTROL-ID
           MOVE 4 TO ACCEPT-CONTROL.
      
       Screen1-DaEf-Naf-Ev-Msg-Validate.
           INQUIRE Screen1-DaEf-Naf, VALUE NAF-MBDI
           .

      * Validation n° agence
       Screen1-Ef-Age-AfterProcedure.
           INQUIRE Screen1-Ef-Age, VALUE IN W-AGE
           IF W-BGP = 2 | appel direct M3: pas de controle agence autorisée
              MOVE 1 TO MOB-PALM
           END-IF
           COPY "W:/mx/copy/Ef-Agence.cbl" REPLACING
                  ==DCN-AGE== BY ==W-AGE==
                  ==DCN-Ef-Age== BY ==Screen1-Ef-Age==
                  ==DCN-Ef-NomAge== BY ==Screen1-Ef-NomAge== .
           IF W-BGP = 2 | appel direct M3 
              MOVE 0 TO MOB-PALM
           END-IF

           IF WAGC-OK NOT = 0
               MOVE W-AGE TO COD-MAGD
               READ MXAGEDIS INVALID 
                    MOVE "Agence non créée en distribution" to acu-msg-1
                    PERFORM msg-info
                    move 0 to wagc-ok
               end-read
               PERFORM stat
               MOVE AMB-MAGD TO W-AMB-MAGD
               IF AUTO-MG = 2 MOVE 0 TO W-AMB-MAGD
               END-IF
               PERFORM LECT-GROUTL
               PERFORM LECT-CXSOC
               MOVE AGSC-MAGC TO W-AGSC 
           end-if
           IF WAGC-OK = 0
                MOVE 4 TO ACCEPT-CONTROL
                MOVE 76 TO CONTROL-ID
           ELSE
                MODIFY Screen1-Ef-Age, ENABLED FALSE
                IF WDAT-OK = 1 
                   MODIFY Screen1-Pb-Creer, ENABLED TRUE
                   MODIFY Screen1-Pb-ListeBon, VISIBLE TRUE
                   IF MOB-PALM = 0 
                      MOVE MXREP-PALM TO WVisible-SAV
                      MOVE MXGAR-PALM TO WVisible-GAR
                      ADD MXCAI-PALM MXLSD-PALM GIVING Wvisible-LSD
                      PERFORM Affiche-Saisies-SAV
                   END-IF
                   MOVE 1 TO WENABLE
                   PERFORM Screen1-Enable-Bon
                END-IF
           END-IF
           .

       Lect-CLL.
           open input mxcli2
           perform stat
           move cll-mbdi to cod-mcli2
           read mxcli2 key cle6-mcli2 
           end-read.
           perform stat
           close mxcli2.

       Screen1-DaEf-MAM-AfterProcedure.
           INQUIRE Screen1-DaEf-MAM, VALUE IN COD-MMAR
           IF COD-MMAR = MAM-MBDI
                EXIT PARAGRAPH
           END-IF.
           IF COD-MMAR = SPACE
                MODIFY Screen1-Ef-LIB-MAR, VALUE SPACE
                MODIFY Screen1-DaEf-TYM, VALUE SPACE
                MOVE SPACE TO MAM-MBDI
                EXIT PARAGRAPH
           END-IF.

           OPEN I-O MXMARQUE PERFORM STAT
           READ MXMARQUE INVALID 
                MOVE " Marque Inconnue " to acu-msg-1
                PERFORM msg-info
                MODIFY Screen1-DaEf-MAM, VALUE SPACE
                MOVE SPACE TO MAM-MBDI
                MOVE 4 TO ACCEPT-CONTROL
                MOVE 105 TO CONTROL-ID
                CLOSE MXMARQUE
                EXIT PARAGRAPH
           END-READ
           PERFORM STAT
           CLOSE MXMARQUE
           MODIFY Screen1-Ef-LIB-MAR, VALUE LIB-MMAR
           MODIFY Screen1-DaEf-TYM, VALUE SPACE
           MOVE COD-MMAR TO MAM-MBDI.

      *****************************************
      *    GESTION DES BOUTONS SUR L'ECRAN 2  *
      ***************************************** 
       Screen2-Pb-Precedent-LinkTo.
           inquire Screen2-Pb-Precedent, visible in W-vs-pb
           if w-vs-pb = 0 exit paragraph
           end-if
           IF CDF NOT = CHOIX-I
              PERFORM Test-Forfait
              IF W-OK = 0 EXIT PARAGRAPH
              END-IF
              PERFORM Test-Coherences-Lignes
              IF W-Ligne-Correcte = 0 
                 PERFORM Screen2-DaGd-1-Ev-Msg-Goto-Cell
                 EXIT PARAGRAPH
              END-IF
              PERFORM Test-Risque-Screen2
              IF W-OK = 0 EXIT PARAGRAPH
              END-IF
              PERFORM Maj-GenBlfms
              PERFORM Maj-Tot-Bon
              MOVE 1 TO IND-RELECT
              PERFORM Lock-Entete
              MOVE 0 TO IND-RELECT
              IF W-IND = 1 
                 MOVE CHOIX-I TO CDF
              END-IF
              PERFORM Fin-En-Cours
           END-IF
           MODIFY Screen1-Pb-Suivant, ENABLED TRUE
           IF CDF <> "Z"
              MODIFY Screen1-Pb-Terminer, ENABLED TRUE
           END-IF
           PERFORM Mistral-CloseCurrentWindow
           .

       Screen2-Pb-Suivant-LinkTo.
           inquire Screen2-Pb-Suivant, visible in W-vs-pb
           if w-vs-pb = 0 exit paragraph
           end-if
           IF CDF NOT = CHOIX-I
              PERFORM Test-Existence-Lignes
              IF W-INDANNUL = 2 
                 EXIT PARAGRAPH
              END-IF
              IF W-INDANNUL = 1 
                 PERFORM Retour-Saisie-Numero 
                 PERFORM Mistral-CloseCurrentWindow
                 EXIT PARAGRAPH
              END-IF
              PERFORM Test-Forfait
              IF W-OK = 0 EXIT PARAGRAPH
              END-IF                    
              PERFORM Test-Coherences-Lignes
              IF W-Ligne-Correcte = 0 
                 PERFORM Screen2-DaGd-1-Ev-Msg-Goto-Cell
                 EXIT PARAGRAPH
              END-IF
              PERFORM Test-Risque-Screen2
              IF W-OK = 0 EXIT PARAGRAPH
              END-IF
              PERFORM Maj-GenBlfms
              PERFORM Maj-Tot-Bon
              MOVE 1 TO IND-RELECT
              PERFORM Lock-Entete
              MOVE 0 TO IND-RELECT
              IF W-IND = 1 
                 MOVE CHOIX-I TO CDF
              END-IF
              PERFORM Fin-En-Cours
           END-IF
           MOVE CDF TO SV-CDF2
           MOVE 0 TO WENABLE
           PERFORM Screen2-Enable
           PERFORM Acu-Screen3-Routine
           IF CDF <> SV-CDF2
              IF IFO-MBDI = 1 
                   IF CDF = CHOIX-I MOVE 0 TO WENABLE-FORFAIT
                           ELSE MOVE 1 TO WENABLE-FORFAIT
                   END-IF
                   PERFORM ForfaitEnable
              END-IF
              IF CDF = CHOIX-I
                   MODIFY Screen2-Pb-Modifier, ENABLED TRUE
              ELSE MODIFY Screen2-Pb-Modifier, ENABLED FALSE
              END-IF
           END-IF.
           IF W-EXIT = "X" 
              MOVE SPACE TO W-EXIT
              PERFORM Retour-Saisie-Numero
              PERFORM Mistral-CloseCurrentWindow
           END-IF.


       Screen2-Pb-Marge-Link.
           inquire Screen2-Pb-Marge, visible in W-vs-pb
           if w-vs-pb = 0 AND NOT 
              (MOB-PALM > 0 AND (CLI-PALM = 850225 OR <  10))
              exit paragraph
           END-IF
           IF W-AFF-MB = 1
              MODIFY Screen2-DaGd-1,
      *        DISPLAY-COLUMNS (1, 3, 22, 63, 73, 88, 96, 111, 126, 128,
      *        130, 145, 154),
              DISPLAY-COLUMNS (1, 3, 22, 63, 73, 88, 96, 111, 126, 128,
              130, 145, 154, 157, 165, 169)
               X = 5, COLUMN-COLOR 2,
               X = 6, COLUMN-COLOR 2,
               X = 9, COLUMN-COLOR 2,
               X = 10, COLUMN-COLOR 2
              PERFORM Acu-Screen2-DaGd-1-Content
              MODIFY Screen2-Pb-Marge, BITMAP-HANDLE MBAFFICH10-JPG
              IF (MOB-PALM > 0 AND (CLI-PALM = 850225 OR <  10))       | Si Landa et portable: Affichage de la marge Totale 
                 MOVE 0 TO WV-MBT
                 DISPLAY Screen2-La-LMBT
                 DISPLAY Screen2-La-MBT
              END-IF
              MOVE 0 TO W-AFF-MB
           ELSE 
              MODIFY Screen2-DaGd-1,              
      *        DISPLAY-COLUMNS (1, 3, 22, 63, 73, 74, 75, 90, 105, 
      *        106, 107, 120, 130), 
              DISPLAY-COLUMNS (1, 3, 22, 63, 73, 74, 75, 90, 105, 106,
              107, 120, 130, 157, 165, 169)
              | pour afficher les colonnes reserrées en blanc sur fond blanc
               X = 5, COLUMN-COLOR 528,
               X = 6, COLUMN-COLOR 528,
               X = 9, COLUMN-COLOR 528,
               X = 10, COLUMN-COLOR 528,
               X = 5, Y = 1, CELL-DATA " ",
               X = 6, Y = 1, CELL-DATA " ",
               X = 9, Y = 1, CELL-DATA " ",
               X = 10, Y = 1, CELL-DATA " " 
              MODIFY Screen2-Pb-Marge, TiTLE "X Marges"
              MOVE 1 TO W-AFF-MB
           END-IF.
           PERFORM Aff-Tot.

       Test-Existence-Lignes.
           MOVE 0 TO W-INDANNUL
           IF CDF = CHOIX-I EXIT PARAGRAPH
           END-IF
           MOVE CLE1-MBDI TO CLE1-MBDI2
           PERFORM Verif-Reste
           IF WY = 0       
              MOVE "Aucune ligne sur ce bon" TO ACU-MSG-1
                 MOVE "Voulez-vous le supprimer?" TO ACU-MSG-2
              PERFORM MSG-ON
              IF ACU-RETURN-VALUE = 1 
                   DELETE MXBDIS
                   PERFORM STAT
                   PERFORM Maj-Delvte-Bdis
                   PERFORM Del-GenBlfms
250412             PERFORM Del-Transpe
                   MOVE CLE1-MBDI TO CLE1-MBDI2
                   MOVE 1 TO W-INDANNUL
              ELSE MOVE 2 TO W-INDANNUL
              END-IF
           ELSE
              IF TYP-MBDI = 1 
                 PERFORM VERIF-LIV THRU F-VERIF-LIV
                 IF IND-L = 0 
                    MOVE 0 TO TYP-MBDI
                    IF TYC-MBDI = 8 MOVE 0 TO TYC-MBDI
                    END-IF
                    MOVE "Aucune ligne livrée" to acu-msg-1
                    MOVE "B/L transformé en bon de commande" 
                    to acu-msg-2
                    perform msg-info
240611              perform Del-Commande
                 END-IF
              END-IF
           END-IF.

240611
       Del-Commande.
           IF BCG-MBDI = 0 OR BCG-MBDI = BON-MBDI
              EXIT PARAGRAPH
           END-IF
           MOVE AGE-MBDI TO AGE-MBDI2
           MOVE BCG-MBDI TO BON-MBDI2
           PERFORM Verif-Reste
           IF WY > 0  
              EXIT PARAGRAPH
           END-IF

           READ MXBDIS2 LOCK INVALID exit paragraph
           END-READ
           PERFORM STAT
           MOVE "BON DE COMMANDE" TO ScreenOccupe-Fic
           MOVE CLE1-MBDI2 TO ScreenOccupe-Cle
           PERFORM Mis-EnregOccupe
           IF IND-STAT = 1 GO Del-Commande
           END-IF.
           DELETE MXBDIS2
           PERFORM STAT.

      *----------- si création bl sur cde vérif qu'il y a -------------*
      *----------- eu des lignes livrées ------------------------------*
       Verif-Liv.
           MOVE 0 TO IND-C IND-L
           MOVE W-AGE    TO AGE-MLDI
           MOVE BON-MBDI TO BON-MLDI
           MOVE ZERO     TO LIG-MLDI
           START MXLDIS KEY NOT < CLE1-MLDI INVALID GO F-Verif-Liv.
       Lec-Verif-Liv.
           READ MXLDIS NEXT AT END GO F-Verif-Liv.
           PERFORM STAT
           IF AGE-MBDI NOT = AGE-MLDI 
           OR BON-MBDI NOT = BON-MLDI GO F-Verif-Liv.
           IF IND-STAT = 1 GO Lec-Verif-Liv.
           IF ART-MLDI = SPACES 
           OR PZE-MLDI = 9 GO Lec-Verif-Liv.
           IF TLI-MLDI = 2 OR 3 OR 4 MOVE 1 TO IND-C.
           IF TLI-MLDI = 1 MOVE 1 TO IND-L.
           GO Lec-Verif-Liv.
       F-Verif-Liv.
           EXIT.

       Test-Coherences-Lignes.
           MOVE AGE-MBDI TO AGE-MLDI
           MOVE BON-MBDI TO BON-MLDI
           MOVE ZERO TO RAN-MLDI W-EOF 
           MOVE 1 TO W-Ligne-Correcte
           START MXLDIS KEY NOT < CLE4-MLDI INVALID MOVE 1 TO W-EOF.
           IF W-EOF = 0
              READ MXLDIS NEXT END MOVE 1 TO W-EOF
              END-READ
              PERFORM STAT.
           PERFORM UNTIL W-EOF = 1 OR AGE-MLDI NOT = AGE-MBDI
              OR BON-MLDI NOT = BON-MBDI
              IF INP-MLDI = PRODUIT-A OR PRODUIT-P
                 PERFORM Test-Coherence-Une-Ligne
              END-IF    
              IF W-Ligne-Correcte = 0 
                   MOVE 1 TO W-EOF
              ELSE READ MXLDIS NEXT END MOVE 1 TO W-EOF
                   END-READ
                   PERFORM STAT
              END-IF
           END-PERFORM.
           
       Test-Coherence-Une-Ligne.
           MOVE 0 TO W-Affiche 
           IF INP-MLDI NOT = PRODUIT-A AND NOT = PRODUIT-P 
              EXIT PARAGRAPH
           END-IF
           IF INP-MLDI = PRODUIT-A
                PERFORM Controle-Art thru F-Controle-Art
                if w-ok not = 1 MOVE 0 TO W-Ligne-Correcte
                                exit paragraph
                end-if
           end-if
           IF INP-MLDI = PRODUIT-P
                PERFORM Controle-Pre thru F-Controle-Pre
                if w-ok not = 1 MOVE 0 TO W-Ligne-Correcte
                                exit paragraph
                end-if
           end-if

           MOVE 0 TO IND-CMQ
           IF BLI-MLDI > 0 
              MOVE 1 TO IND-CMQ
           END-IF
           IF EPG-MLDI = 1 AND TLI-MLDI = 3
              PERFORM TEST-CMQ
           END-IF

           IF STN-MPAR = 1 
           AND IND-CMQ = 0
              MOVE ART-MLDI TO SV-ART-MLDI
              MOVE QTE-MLDI TO SV-QTE-MLDI
              MOVE TLI-MLDI TO SV-TLI-MLDI
              MOVE TBP-MLDI TO SV-TBP-MLDI
              MOVE AGS-MLDI TO SV-AGS-MLDI
              MOVE DEP-MLDI TO SV-DEP-MLDI 
              MOVE 0 TO AUTO-LP
              PERFORM Controle-Stock
              IF W-STO < ZERO 
                MOVE "ARTICLE:" TO ACU-MSG-1
                MOVE W-ART-RUP TO ACU-MSG-2
                MOVE "Stock négatif non autorisé" to acu-msg-3
                PERFORM msg-info
                MOVE 0 TO W-OK W-Ligne-Correcte
                EXIT PARAGRAPH
              END-IF
           END-IF.

           IF INP-MLDI = PRODUIT-A 
           AND W-AR1 NOT NUMERIC 
           AND (NAT-MGFA = 9 OR NAT-MART = 2)
           AND TYP-MBDI NOT = 8 
           AND TLI-MLDI = 1 
           AND ISQ-MLDI NOT = 1
           AND PZE-MLDI NOT = 4 
           AND W-ICALL = 0
                MOVE 1 TO W-NIV
                PERFORM CAL-MSPMAT THRU F-CAL-MSPMAT
                IF QTE-MLDI < 0 MULTIPLY -1 BY W-QTE
                END-IF
                IF W-QTE NOT = QTE-MLDI
                   MOVE "ARTICLE:" TO ACU-MSG-1
                   MOVE COD-MART TO ACU-MSG-2
                   MOVE "Saisissez les n° de série" to acu-msg-3
                   PERFORM msg-info
                   move 0 to w-ok W-Ligne-Correcte
                   exit paragraph
                END-IF
           END-IF.
           IF INP-MLDI = PRODUIT-A AND W-AR1 NOT NUMERIC 
           AND (INO-MART = 1 OR 2) AND TYP-MBDI NOT = 8 
           AND TLI-MLDI = 1 AND ISQ-MLDI NOT = 1
           AND PZE-MLDI NOT = 4 AND W-ICALL = 0
                PERFORM VERIF-MSPMATN THRU F-VERIF-MSPMATN
                IF W-OK = 0
                   MOVE "ARTICLE:" TO ACU-MSG-1

                   MOVE COD-MART TO ACU-MSG-2
                   MOVE "Saisissez les n° de série dans la composition"
                   to acu-msg-3
                   PERFORM msg-info
                   move 0 to w-ok W-Ligne-Correcte
                   exit paragraph
                END-IF
           END-IF.

       Screen2-Pb-Liste-LinkTo.
           IF INP-MLDI = PRODUIT-A
              CALL "W$MENU" USING WMENU-POPUP, Screen2-Mn-2-Handle.
           IF INP-MLDI = PRODUIT-P

              PERFORM Call-Liste-Pre.
           IF INP-MLDI = PRODUIT-C
              PERFORM Trait-Commentaire.
        
       Screen2-Pb-Imprimer-LinkTo.
           inquire Screen2-Pb-Imprimer, visible in W-vs-pb
           if w-vs-pb = 0 exit paragraph
           end-if
           IF CDF NOT = CHOIX-I
              PERFORM Test-Forfait
              IF W-OK = 0 EXIT PARAGRAPH
              END-IF
              PERFORM Test-Coherences-Lignes
              IF W-Ligne-Correcte = 0 
                 PERFORM Screen2-DaGd-1-Ev-Msg-Goto-Cell
                 EXIT PARAGRAPH
              END-IF
              PERFORM Test-Risque-Screen2
              IF W-OK = 0 EXIT PARAGRAPH
              END-IF
              PERFORM Maj-GenBlfms
              PERFORM Maj-Tot-Bon
              PERFORM Fin-En-Cours
              MOVE ENR-MBDI TO SV-ENR-MBDI
              MOVE CHOIX-I TO CDF
              IF BCG-MBDI NOT = 0  | réaffichage grille après génération commande
                 PERFORM Remp-Grille-Ldis
              END-IF
              MODIFY Screen2-Pb-Modifier, ENABLED TRUE
              inquire Screen2-DaGd-1, last-row in WLAST-Row
              IF WLAST-Row NOT = 1
                 MOVE 2 TO Event-Data-2               
                 PERFORM Screen2-DaGd-1-Ev-Msg-Goto-Cell
              ELSE
                 MOVE SPACE TO ENR-MLDI
              END-IF
              MOVE 0 TO WENABLE
              PERFORM Screen2-Enable
           END-IF
           move "Impression non gérée" to acu-msg-1
           perform msg-info.

       Screen2-Pb-Annuler-LinkTo.
           inquire Screen2-Pb-Annuler, visible in W-vs-pb
           if w-vs-pb = 0 exit paragraph
           end-if
           if lig-mldi = 0 
              PERFORM Ligne-Non-Modifiee
              perform ajout-ldis
              EXIT PARAGRAPH
           end-if
           IF Screen2-DaGd-1-Cursor-Y NOT = 0
              MOVE CHOIX-M TO CDFL
              PERFORM Mep-Detail-Ldis
              EXIT PARAGRAPH
           END-IF
           PERFORM Ligne-Non-Modifiee.

       Ligne-Modifiee.
           IF W-LigneModifiee = 1 EXIT PARAGRAPH
           END-IF
           MODIFY Screen2-Pb-Ajouter, VISIBLE 0.
           MODIFY Screen2-Pb-Supprimer, VISIBLE 0.
           MODIFY Screen2-Pb-Annuler, VISIBLE 1.
           MODIFY Screen2-Pb-Valider, VISIBLE 1.
           MODIFY Screen2-Pb-Precedent, VISIBLE 0.
           MODIFY Screen2-Pb-Suivant, VISIBLE 0.
           MODIFY Screen2-Pb-Terminer, VISIBLE 0.
           MODIFY Screen2-Pb-Imprimer, VISIBLE 0.
           MODIFY Screen2-Pb-Recherche,  VISIBLE 0.
           MODIFY Screen2-DaGd-1, ENABLED 0.
           IF IFO-MBDI = 1
              MOVE 0 TO WENABLE-FORFAIT
              PERFORM ForfaitEnable.
           MOVE 1 TO W-LigneModifiee.

       Ligne-Non-Modifiee.
           IF W-LigneModifiee = 0 EXIT PARAGRAPH
           END-IF
           IF CDF NOT = CHOIX-I
              MODIFY Screen2-Pb-Ajouter, VISIBLE 1
              MODIFY Screen2-Pb-Supprimer, VISIBLE 1
           END-IF
           MODIFY Screen2-Pb-Annuler, VISIBLE 0.
           MODIFY Screen2-Pb-Valider, VISIBLE 0.
           MODIFY Screen2-Pb-Precedent, VISIBLE 1.
           MODIFY Screen2-Pb-Suivant, VISIBLE 1.
           IF CDF NOT = CHOIX-C AND NOT = "Z"
              MODIFY Screen2-Pb-Terminer, VISIBLE 1
              MODIFY Screen2-Pb-Imprimer, VISIBLE 1
           END-IF
           MODIFY Screen2-Pb-Recherche,  VISIBLE 1.
           
           MODIFY Screen2-DaGd-1, ENABLED 1.
           IF IFO-MBDI = 1
              MOVE 1 TO WENABLE-FORFAIT
              PERFORM ForfaitEnable.
           MOVE 0 TO W-LigneModifiee.

       Screen2-Pb-Supprimer-LinkTo.
           inquire Screen2-Pb-Supprimer, visible in W-vs-pb
           if w-vs-pb = 0 exit paragraph
           end-if
           IF CDF = CHOIX-I EXIT PARAGRAPH
           END-IF
           IF INP-MLDI = "P" AND AUTO-PRER = 2 AND IRS-MPGE = 1
              EXIT PARAGRAPH
           END-IF
           
           IF LIG-MLDI = 0 
              PERFORM Ajout-Ldis
              EXIT PARAGRAPH
           END-IF     
           IF BLI-MLDI > 0 
              EXIT PARAGRAPH
           END-IF
           IF EPG-MLDI = 1 AND TLI-MLDI = 3
              PERFORM TEST-CMQ
              IF IND-CMQ = 1 
180319
      *           IF (IDE-PALM = "MIS")
      *           OR (CLI-PALM = 851233 AND (IDE-PALM = "GLA" OR "FEF"
230218*               OR "CHY" OR "BIF"
      *               OR "JEF" OR "PQE" OR "DKE" OR "GUS"))
221113*           OR (CLI-PALM = 190582 AND IDE-PALM = "DA") | SGR
020415*           OR (CLI-PALM <> 851233 AND <> 190582)
                 IF AUTO-DCD NOT = 2
180319
                     MOVE "Attention! Commande fournisseur créée !!!"
                     TO ACU-MSG-1
                     MOVE "Confirmez-vous la suppression ?" TO ACU-MSG-2
                     MOVE 2 TO ACU-DEFAULT-BUTTON
                     PERFORM MSG-ON
                     IF ACU-RETURN-VALUE = 2 EXIT PARAGRAPH
                     END-IF
                 ELSE
180319
                     MOVE "Impossible - Commande fournisseur créée."
                     TO ACU-MSG-1
                     PERFORM MSG-INFO
                     EXIT PARAGRAPH
180319
                 END-IF
              END-IF
           END-IF.
      
           MOVE "203" TO Acu-Msg-Id                                                                                        
           PERFORM Acu-Show-Msg
           IF Acu-Return-Value NOT = 1
              EXIT PARAGRAPH
           END-IF
           MOVE 2 TO W-OTE
           PERFORM Maj-Ligne
           PERFORM Del-MXLDIS  
           PERFORM Maj-Delvte-Ldis
           move Screen2-DaGd-1-Cursor-Y to sv-indice
           PERFORM Screen2-AfterInitData
           MOVE 0 TO W-SST                                     
           PERFORM Position-Sur-Grille-Annulation.
           MOVE SV-INDICE TO Screen2-DaGd-1-Cursor-Y
           if Screen2-DaGd-1-Cursor-Y not = 1
                PERFORM Mep-Detail-Ldis
           ELSE PERFORM Ajout-Ldis.

       Position-Sur-Grille-Annulation.
           inquire Screen2-DaGd-1, last-row in WLAST-Row
           if Screen2-DaGd-1-Cursor-Y > WLAST-Row 
               move WLAST-Row to Screen2-DaGd-1-Cursor-Y SV-INDICE
           end-if
           MOVE Screen2-DaGd-1-Cursor-Y TO EVENT-DATA-2 
           MOVE 1 TO EVENT-DATA-1             
           IF Event-Data-2 = Screen2-DaGd-1-Cursor-Y-Old 
               MOVE Event-Data-1 TO Screen2-DaGd-1-Cursor-X-Old
           ELSE
               MOVE Screen2-DaGd-1-Cursor-Y-Old TO WY
               PERFORM Color-Grid-Commande
               MODIFY Screen2-DaGd-1(Event-Data-2),
                      ROW-COLOR = Screen2-DaGd-1-Row-Highlight-Color
           END-IF 
           MOVE Event-Data-1 TO Screen2-DaGd-1-Cursor-X
                                Screen2-DaGd-1-Cursor-X-Old
           MOVE Event-Data-2 TO Screen2-DaGd-1-Cursor-Y
                                Screen2-DaGd-1-Cursor-Y-Old.
           MODIFY Screen2-DaGd-1, CURSOR-X = Event-Data-1, 
                                  CURSOR-Y = Event-Data-2,
                                  X = Event-Data-1,
                                  Y = Event-Data-2.
           MOVE 1 TO Control-ID.

       Screen2-Pb-Doc-Link.
           MOVE SPACE TO LK-CDOCTEC
           INQUIRE Screen2-Ef-Ar1, VALUE IN LK-CDOCTEC-AR1 
           INQUIRE Screen2-Ef-Ar2, VALUE IN LK-CDOCTEC-AR2 
           IF INP-MLDI NOT = PRODUIT-A OR LK-CDOCTEC-ART = SPACE 
           OR LK-CDOCTEC-AR1 NUMERIC
                EXIT PARAGRAPH
           END-IF
           MOVE "BA" TO LK-CDOCTEC-ORI 
           MOVE LK-CDOCTEC-ART TO LK-CDOCTEC-CLE
           MOVE CHOIX-I TO LK-CDOCTEC-CDF
           CALL "cdoctec.acu" USING ZONE-PALM LK-CDOCTEC
           CANCEL "cdoctec.acu"
           PERFORM Repositionne-Screen2.

       Screen2-Pb-Valider-LinkTo.
           inquire Screen2-Pb-Valider, visible in W-vs-pb
           if w-vs-pb = 0 exit paragraph
           end-if      
240915
           IF CDFL = CHOIX-C AND ART-MLDI = SPACE AND INP-MLDI = "A"
           AND CONTROL-ID = 115
             PERFORM Recherche-Designation
             EXIT PARAGRAPH
           END-IF
240915         
           MOVE 1 TO W-OK
           PERFORM Valid-Ligne
           IF W-OK = 0 
              EXIT PARAGRAPH
           END-IF
           PERFORM Ligne-Non-Modifiee
           IF CDFL = CHOIX-M 
                PERFORM Mep-Detail-Ldis
                MODIFY Screen2-DaGd-1, Y = Screen2-DaGd-1-Cursor-Y,
                                  RECORD-DATA = Ligne-Af
                MOVE Screen2-DaGd-1-Cursor-Y TO WY
                PERFORM Color-Grid-Marge
                PERFORM Sauv-Grid-Cle
                MOVE 4 TO ACCEPT-CONTROL
                MOVE 1 TO CONTROL-ID
150616          perform AFFICHE-DELAI-GLOBAL
           ELSE IF CDFL = "Z"
                   PERFORM Mep-Detail-Ldis
                   MODIFY Screen2-DaGd-1, Y = Screen2-DaGd-1-Cursor-Y,
                                  RECORD-DATA = Ligne-Af  
                   MOVE Screen2-DaGd-1-Cursor-Y TO WY
                   PERFORM Sauv-Grid-Cle
                   PERFORM Color-Grid-Commande
                   PERFORM Color-Grid-Marge
                END-IF
150616          perform AFFICHE-DELAI-GLOBAL
                PERFORM Position-Sur-Grille-Creation
                MOVE ART-MLDI TO COD-MART
                PERFORM Ligne-Non-Modifiee
                PERFORM Ajout-Ldis
           END-IF.

       Verif-Si-Modif-Ligne. 
           IF CDFL NOT = CHOIX-M AND NOT = "Z" EXIT PARAGRAPH
           END-IF
           PERFORM Recup-Ligne
      *    si aucune modification: pas de mise à jour
           IF ENR-MLDI = SV-ENR-MLDI EXIT PARAGRAPH
           END-IF.

           MOVE SV-ENR-MLDI TO ENR-MLDI2

           IF (INP-MLDI = INP-MLDI2)    | commentaire inchangé
           AND (INP-MLDI = PRODUIT-C AND DES-MLDI = DES-MLDI2)
                EXIT PARAGRAPH
           END-IF

           MOVE "202" TO Acu-Msg-Id
           PERFORM Acu-Show-Msg
           IF Acu-Return-Value = 1
              PERFORM Valid-Ligne
              IF W-OK NOT = 1 move event-action-fail to event-action
                              EXIT PARAGRAPH
              END-IF
           END-IF.

       Valid-Ligne.
           PERFORM Recup-Ligne
           MOVE 1 TO W-Affiche

           MOVE 0 TO Test-Tout
           IF INP-MLDI = PRODUIT-A
           AND Test-Tout = 0
                PERFORM Controle-Art thru F-Controle-Art
                if w-ok not = 1 exit paragraph
                end-if
           end-if

           IF INP-MLDI = PRODUIT-P
           AND Test-Tout = 0
                PERFORM Controle-Pre thru F-Controle-Pre
                if w-ok not = 1 exit paragraph
                end-if
           end-if
           IF INP-MLDI = PRODUIT-C
           AND Test-Tout = 0
                move 1 to w-ok
                if DES-MLDI = space exit paragraph
                end-if
           end-if

           IF Test-Tout = 0
              PERFORM Controle-Dli
           END-IF
           MOVE 0 to W-Change-Art 
           MOVE 0 TO W-SST
           IF Test-Tout = 0
              IF MODU-M3 = 0 MOVE 1 TO AUTO-LP
              END-IF
              PERFORM Controle-Stock   
           END-IF.

           IF W-Change-Art = 1 
              MODIFY Screen2-Ef-Ar1, VALUE W-AR1
              MODIFY Screen2-Ef-Ar2, VALUE W-AR2
              PERFORM Mep-Equivalence
              GO Valid-Ligne
           END-IF.
 
110610*    Demande Bretagne Manutention
           IF  TLI-MLDI = 3
           AND INP-MLDI = PRODUIT-A
           AND ART-MLDI(1:4) NOT NUMERIC
           AND ACHI-MART = 1 THEN
              MOVE "Attention ! Article interdit à l'achat !"
                TO ACU-Msg-1
              PERFORM Msg-Info
           END-IF
 
           IF W-STO < ZERO AND STN-MPAR = 1
           AND Test-Tout = 0
                MOVE "Stock négatif non autorisé" to acu-msg-1
                PERFORM msg-info
                MOVE 0 TO W-OK
                EXIT PARAGRAPH
           END-IF.
 
           IF QTE-MLDI < ZERO  AND AUTO-CREAVO = 2
           AND Test-Tout = 0
230113     AND NOT (INP-MLDI = "A" AND IRPM-MLDI = 1)
130213     AND NOT (TYP-MBDI = 0 OR 8)
                MOVE "Quantité négative non autorisée" to acu-msg-1
                PERFORM msg-info
                MOVE 0 TO W-OK
                EXIT PARAGRAPH
           END-IF.
230113
           IF (PUB-MLDI < ZERO OR PUN-MLDI < ZERO)
           AND AUTO-CREAVO = 2
           AND Test-Tout = 0
                MOVE "Prix négatif non autorisé" to acu-msg-1
                PERFORM msg-info
                MOVE 0 TO W-OK
                EXIT PARAGRAPH
           END-IF.
230113
           IF MODU-M3 = 1 AND INP-MLDI = "A"
           AND AR1-MLDI NOT NUMERIC 
           AND UAC-MART > 1
           AND TLI-MLDI = 3
           AND TBP-MLDI = 2 |livraison directe chez le client 
           AND Test-Tout = 0
               COMPUTE W-HEU = QTE-MLDI / UAC-MART
               IF W-HEU2 <> 0
      *             Tombe pas rond
                  move uac-mart to A4
                  STRING "Commande obligatoire par" " " A4
                  delimited by "       " into acu-msg-1
                  PERFORM msg-info
                  MOVE 0 TO W-OK
                  EXIT PARAGRAPH
               END-IF
           END-IF.

           IF W-SST = 2
           AND Test-Tout = 0
                MOVE 0 TO W-OK
                MOVE 4 TO ACCEPT-CONTROL
                IF SCA-MPAR = 2 MOVE 113 TO CONTROL-ID
                           ELSE MOVE 112 TO CONTROL-ID
                END-IF
                MOVE 0 TO W-SST
                EXIT PARAGRAPH
           END-IF.

           IF INP-MLDI = PRODUIT-A AND ART-MLDI(1:4) NUMERIC 
           AND AUTO-FOU = 2
           AND (FOU-MLDI = 0 OR PAC-MLDI = 0)
              MOVE 0 TO W-OK
              MOVE 4 TO ACCEPT-CONTROL
              MOVE 69 TO CONTROL-ID
              exit paragraph
           END-IF 
           IF ((INP-MLDI = PRODUIT-A AND ART-MLDI(1:4) NUMERIC)
               OR (INP-MLDI = PRODUIT-P AND TLI-MLDI = 3))
           AND (FOU-MLDI NOT = 0)
                PERFORM Controle-Fou
                IF W-OK = 0 
                     MOVE 4 TO ACCEPT-CONTROL
                     MOVE 69 TO CONTROL-ID
                     exit paragraph
                END-IF
           END-IF
           IF ((INP-MLDI = PRODUIT-A AND ART-MLDI(1:4) NUMERIC)
               OR (INP-MLDI = PRODUIT-P AND TLI-MLDI = 3))
           AND (FOU-MLDI NOT = 0)   
                PERFORM Controle-Pac
                IF W-OK = 0
                   MOVE 4 TO ACCEPT-CONTROL
                   MOVE 95 TO CONTROL-ID
                   exit paragraph
                END-IF
           END-IF
           IF (INP-MLDI = PRODUIT-A OR PRODUIT-P) AND PZE-MLDI = 0
           AND PUB-MLDI = 0 
                MODIFY Screen2-La-Pub, COLOR 5 
                IF W-ICALL = 0
                   MOVE 0 TO W-OK
                   MOVE 4 TO ACCEPT-CONTROL
                   MOVE 11 TO CONTROL-ID
                   exit paragraph
                END-IF
           ELSE MODIFY Screen2-La-Pub, COLOR 2
           END-IF
      *     IF INP-MLDI = PRODUIT-A 
      *     AND W-AR1 NOT NUMERIC 
      *     AND (NAT-MGFA = 9 OR NAT-MART = 2)
      *     AND TYP-MBDI NOT = 8 
      *     AND TLI-MLDI = 1 
      *     AND ISQ-MLDI NOT = 1
      *     AND PZE-MLDI NOT = 4 
      *     AND W-ICALL = 0
      *     AND Test-Tout = 0
190711*     AND IND-REPRISE = 0
      *          MOVE 1 TO W-NIV
      *          PERFORM CAL-MSPMAT THRU F-CAL-MSPMAT
      *          IF QTE-MLDI < 0 MULTIPLY -1 BY W-QTE
      *          END-IF
      *          IF W-QTE NOT = QTE-MLDI
      *            MODIFY Screen2-la-NS, visible 1 
      *             move 0 to w-ok
      *             exit paragraph
      *          END-IF
      *     END-IF.
      *     IF INP-MLDI = PRODUIT-A AND W-AR1 NOT NUMERIC 
      *     AND (INO-MART = 1 OR 2) AND TYP-MBDI NOT = 8 
      *     AND TLI-MLDI = 1 AND ISQ-MLDI NOT = 1
      *     AND PZE-MLDI NOT = 4 AND W-ICALL = 0
      *     AND Test-Tout = 0
      *          PERFORM VERIF-MSPMATN THRU F-VERIF-MSPMATN
      *          IF W-OK = 0
      *             MODIFY Screen2-la-NS, visible 1 
      *             move 0 to w-ok
      *             exit paragraph
      *          END-IF
      *     END-IF.

210916     
           IF INP-MLDI = PRODUIT-A AND W-AR1 NOT NUMERIC 
           AND (INO-MART = 1 OR 2) AND TYP-MBDI NOT = 8 
           AND TLI-MLDI = 1 
           AND W-ICALL = 0
           AND Test-Tout = 0
                PERFORM PRORATISE-COMPO THRU F-PRORATISE-COMPO
           END-IF.
210916
           IF QTE-MLDI = 0 AND INP-MLDI = PRODUIT-A
                MOVE 1 TO ISQ-MLDI
           ELSE MOVE 0 TO ISQ-MLDI
           END-IF.
231014
           IF QTE-MLDI = 0 AND INP-MLDI = PRODUIT-A
071114     AND ISQ-MLDI NOT = 1
                move 0 to w-ok
                MOVE 4 TO ACCEPT-CONTROL
                MOVE 8 TO CONTROL-ID
                exit paragraph
           END-IF.
231014
           IF PZE-MLDI = 1 OR 2 
              MOVE ZERO TO PUB-MLDI REM-MLDI PUN-MLDI W-PUN W-MON
                        REC-MLDI(1) REC-MLDI(2) IPNS-MLDI
                        REC-MLDI(3) REC-MLDI(4)
                        REC-MLDI(5) REC-MLDI(6) REMC-MLDI
           END-IF
 
           IF W-ICALL = 0 AND TLI-MLDI = 3 
           AND (INP-MLDI = PRODUIT-A OR PRODUIT-P)
                MOVE 1 TO ILC-MLDI
           END-IF

           IF CDFL = CHOIX-M OR "Z"
                MOVE ENR-MLDI TO SV-ENR-MLDI2
                MOVE SV-ENR-MLDI TO ENR-MLDI
                MOVE QTE-MLDI TO SV-QTE-MLDI
                MOVE ART-MLDI TO SV-ART-MLDI
                MOVE AGS-MLDI TO SV-AGS-MLDI
                MOVE DEP-MLDI TO SV-DEP-MLDI
                MOVE 1 TO W-OTE
                PERFORM Maj-Ligne
                MOVE SV-ENR-MLDI2 TO ENR-MLDI
                | ajout le 18.01.2004 pour modif stock sur autre mois
                IF QTE-MLDI NOT = SV-QTE-MLDI 
                OR ART-MLDI NOT = SV-ART-MLDI 
                OR AGS-MLDI NOT = SV-AGS-MLDI 
                OR DEP-MLDI NOT = SV-DEP-MLDI 
                OR TLI-MLDI NOT = SV-TLI-MLDI 
                   MOVE W-DAT TO DSP-MLDI
                END-IF
           END-IF
      
           if w-sst = 3
              move sst-qtl to qte-mldi
           end-if
      
           IF CDFL = CHOIX-M OR "Z"    
                PERFORM Rew-MXLDIS
           ELSE ADD 1 TO D-LIG D-RAN
                MOVE D-LIG TO LIG-MLDI
                MOVE D-RAN TO RAN-MLDI
                MOVE W-AGE TO AGE-MLDI
                MOVE W-BON TO BON-MLDI
                PERFORM Wri-MXLDIS
           END-IF

           MOVE 0 TO W-OTE
           PERFORM Maj-Ligne
           PERFORM Rew-MXLDIS
           PERFORM Maj-Grille
           PERFORM Aff-Tot

           MOVE ENR-MLDI TO SV-ENR-MLDI
           MOVE ART-MLDI TO SV-ART-MLDI
           MOVE QTE-MLDI TO SV-QTE-MLDI
           MOVE TLI-MLDI TO SV-TLI-MLDI
           MOVE TBP-MLDI TO SV-TBP-MLDI
           MOVE AGS-MLDI TO SV-AGS-MLDI
           MOVE DEP-MLDI TO SV-DEP-MLDI

           IF CDFL = CHOIX-C
                MODIFY Screen2-DaGd-1, RECORD-TO-ADD Ligne-Af
                INQUIRE Screen2-DaGd-1, LAST-ROW IN WY
                PERFORM Sauv-Grid-Cle
                PERFORM Color-Grid-Commande
           END-IF.
      
           if w-sst = 3
270114     and sst-qtc <> 0
              MOVE ENR-MLDI TO ENR-MLDI2
              ADD 1 TO D-RAN MOVE D-RAN TO RAN-MLDI2
              perform Creat-Ligne-Commande-Partielle 
              PERFORM Maj-Grille
              MODIFY Screen2-DaGd-1, RECORD-TO-ADD Ligne-Af
              INQUIRE Screen2-DaGd-1, LAST-ROW IN WY
              PERFORM Sauv-Grid-Cle
              PERFORM Color-Grid-Commande
              MOVE 0 TO W-SST
              MOVE SV-ENR-MLDI TO ENR-MLDI
              MOVE SV-ART-MLDI TO ART-MLDI
              MOVE SV-QTE-MLDI TO QTE-MLDI
              MOVE SV-TLI-MLDI TO TLI-MLDI
              MOVE SV-TBP-MLDI TO TBP-MLDI
              MOVE SV-AGS-MLDI TO AGS-MLDI
              MOVE SV-DEP-MLDI TO DEP-MLDI
              PERFORM Maj-Grille
           end-if.
      
       Creat-Ligne-Commande-Partielle.
           ADD 1 TO D-LIG MOVE D-LIG TO LIG-MLDI2
           MOVE 0 TO REV-MLDI2 HIV-MLDI2 HIA-MLDI2 HCD-MLDI2 HDD-MLDI2
                     EDI-MLDI2
           MOVE SST-QTC TO QTE-MLDI2
           MOVE 3 TO TLI-MLDI2
           MOVE TCC-MBDI TO TCC-MLDI2
           MOVE TBP-MBDI TO TBP-MLDI2
           WRITE ENR-MLDI2 INVALID 
                 GO Creat-Ligne-Commande-Partielle
           END-WRITE
           PERFORM STAT
           MOVE ENR-MLDI2 TO ENR-MLDI
           PERFORM Cal-Delai
           MOVE 0 TO W-OTE
           PERFORM Maj-Artsa.
           REWRITE ENR-MLDI
           PERFORM STAT.
       
       Mep-Equivalence.
           MOVE 1 TO W-OK
           PERFORM Mep-Age-Masa
           MOVE W-ART TO COD-MART COD-MASA 
           READ MXART INVALID 
250915        IF COD-MART <> SPACE
                 MOVE " Article Inconnu " to acu-msg-1
                 PERFORM msg-info
250915        END-IF
              MOVE 0 TO W-OK
           END-READ
           PERFORM STAT
           IF CANN-MART = 1 
              MOVE " Article Supprimé " to acu-msg-1
              PERFORM msg-info
              MOVE 0 TO W-OK
           END-IF
           IF TAR-MART = 2 
              MOVE " Article interdit à la vente " to acu-msg-1
              PERFORM msg-info
              MOVE 0 TO W-OK
           END-IF
           IF ILV-MART = 1 
              MOVE " Article de location " to acu-msg-1
              PERFORM msg-info
              MOVE 0 TO W-OK
           END-IF    
           IF W-OK = 1
              PERFORM TEST-ARTSA
              IF W-OK-ASA = 0 MOVE 0 TO W-OK
              END-IF
           END-IF
                          
           IF W-OK = 0
                MOVE SPACE TO W-ART
                MODIFY Screen2-Ef-Ar1, VALUE SPACE
                MODIFY Screen2-Ef-Ar2, VALUE SPACE
                EXIT PARAGRAPH
           ELSE MOVE SPACE TO ENR-MFAM ENR-MGFA
                MOVE GRA-MART TO GRA-MFAM GRA-MGFA
                MOVE FAM-MART TO FAM-MFAM FAM-MGFA
                READ MXFAMART 
                PERFORM STAT
                READ MXGRAFAM
                PERFORM STAT
                PERFORM After-Art
                MOVE 1 TO NOU-A
                PERFORM Screen2-Enable-Dep-Ags
                PERFORM Affiche-FouEtBoutons
           END-IF.

       Controle-Dli.
           IF (INP-MLDI = PRODUIT-A OR PRODUIT-P) AND TLI-MLDI = 3
           AND DLP-MLDI < DAT-MBDI
                MODIFY Screen2-La-Dli, COLOR 5
      *          MOVE 0 TO W-OK
           ELSE MODIFY Screen2-La-Dli, COLOR 2
           END-IF.

       Controle-Fou.   
           OPEN INPUT MXFOU
           PERFORM STAT
           MOVE FOU-MLDI TO COD-MFOU
           READ MXFOU INVALID MODIFY Screen2-La-Fou, COLOR 5
                              MOVE 0 TO W-OK
                  NOT INVALID MODIFY Screen2-La-Fou, COLOR 2
           END-READ
           PERFORM STAT
           CLOSE MXFOU.
           IF W-OK = 1 AND (NTF-MFOU <> 0 AND <> 2)
              MODIFY Screen2-La-Fou, COLOR 5
              MOVE 0 TO W-OK
           END-IF.

       Controle-Pac.
           IF ((INP-MLDI = PRODUIT-A AND ART-MLDI(1:4) NUMERIC)
           OR (INP-MLDI = PRODUIT-P AND TLI-MLDI = 3))
               IF PRU-MLDI > PUN-MLDI 
                    MODIFY Screen2-La-DevFou, COLOR 5
      *              MOVE 0 TO W-OK
               ELSE MODIFY Screen2-La-DevFou, COLOR 2.

       Aff-Dev-Div.
           MOVE SPACE TO W-LDEVFOU
           IF IPAC-MLDI = 0
              IF DEV-MFOU = SPACE OR DEV-MPAR
                   STRING "Tarif" " " ABRD-MPAR DELIMITED BY "   "
                          INTO W-LDEVFOU
              ELSE STRING "Tarif" " " DEV-MFOU DELIMITED BY "   "
                          INTO W-LDEVFOU
              END-IF
           ELSE
              IF DEV-MFOU = SPACE OR DEV-MPAR
                   STRING "P.A." " " ABRD-MPAR DELIMITED BY "   "
                          INTO W-LDEVFOU
              ELSE STRING "P.A." " " DEV-MFOU DELIMITED BY "   "
                          INTO W-LDEVFOU
              END-IF
           END-IF
           MODIFY Screen2-La-DevFou, TITLE W-LDEVFOU, 
                                     VISIBLE TRUE.

       Position-Sur-Grille-Creation.
           inquire Screen2-DaGd-1, last-row in WLAST-Row
           MOVE WLAST-Row TO EVENT-DATA-2 
           MOVE 1 TO EVENT-DATA-1             
           MODIFY Screen2-DaGd-1, CURSOR-X = Event-Data-1, 
                                  CURSOR-Y = Event-Data-2,
                                  X = Event-Data-1,
                                  Y = Event-Data-2.

       Screen2-Pb-Modifier-LinkTo.
      *     inquire Screen2-Pb-Modifier, visible in W-vs-pb
      *     if w-vs-pb = 0 exit paragraph
      *     end-if

           MOVE CHOIX-M TO CDF-FONCTION
           PERFORM Test-Auto-Fonction
           IF OK-Fonction = 0 EXIT PARAGRAPH
           END-IF
           PERFORM Lock-Entete
           IF W-IND = 1 
              EXIT PARAGRAPH
           END-IF

           MOVE CHOIX-M TO CDF
           PERFORM Integration-Commande
           IF BCG-MBDI NOT = 0  | réaffichage grille après intégration commande
              PERFORM Remp-Grille-Ldis
           END-IF.
           MOVE ENR-MBDI TO SV-ENR-MBDI
           PERFORM Change-Color-Grid
           IF Screen2-DaGd-1-Cursor-Y-Old NOT = 0 
              PERFORM Affich-Change-Color-Grid
           END-IF
           MODIFY Screen2-Pb-Modifier, ENABLED FALSE
           IF IFO-MBDI = 1 
              MOVE 1 TO WENABLE-FORFAIT
              PERFORM ForfaitEnable
           END-IF
           IF BCG-MBDI NOT = 0
              inquire Screen2-DaGd-1, last-row in WLAST-Row
              IF WLAST-Row NOT = 1
      *        IF D-INDICE NOT = 0 
                  MOVE 2 TO Event-Data-2               
                  MOVE 0 TO Screen2-DaGd-1-Cursor-Y-Old 
                  PERFORM Screen2-DaGd-1-Ev-Msg-Goto-Cell
              END-IF
           ELSE
              IF Screen2-DaGd-1-Cursor-Y NOT = 0 
                 PERFORM Mep-Detail-Ldis
              ELSE
                 MODIFY Screen2-Pb-Ajouter, VISIBLE TRUE
              END-IF
           END-IF
           PERFORM Deb-En-Cours.
                                

       ForfaitEnable.
           IF IFO-MBDI = 1
              MODIFY Screen2-Ef-MFO, ENABLED WENABLE-FORFAIT
                                     VALUE MFO-MBDI
              MODIFY Screen2-Pb-AppliquerForfait, 
                     VISIBLE WENABLE-FORFAIT
              MODIFY Screen2-Cb-DFO, ENABLED WENABLE-FORFAIT.

       Screen2-Pb-Terminer-LinkTo.
           inquire Screen2-Pb-Terminer, visible in W-vs-pb
           if w-vs-pb = 0 exit paragraph
           end-if
           IF CDF NOT = CHOIX-I
              PERFORM Test-Existence-Lignes
              IF W-INDANNUL = 2 
                 EXIT PARAGRAPH
              END-IF
              IF W-INDANNUL = 1 
                 PERFORM Retour-Saisie-Numero 
                 PERFORM Mistral-CloseCurrentWindow
                 EXIT PARAGRAPH
              END-IF
              PERFORM Test-Forfait
              IF W-OK = 0 EXIT PARAGRAPH
              END-IF
              PERFORM Test-Coherences-Lignes
              IF W-Ligne-Correcte = 0 
                 PERFORM Screen2-DaGd-1-Ev-Msg-Goto-Cell
                 EXIT PARAGRAPH
              END-IF
              PERFORM Test-Risque-Screen2
              IF W-OK = 0 EXIT PARAGRAPH
              END-IF

              PERFORM Maj-GenBlfms
              PERFORM Controle-Pied
              IF W-IND NOT = 0 EXIT PARAGRAPH
              END-IF
              PERFORM Maj-Tot-Bon
              PERFORM Controle-Workflow
              MOVE ENR-MBDI TO SV-ENR-MBDI
              IF W-IND NOT = 0 EXIT PARAGRAPH
              END-IF
              PERFORM Fin-En-Cours
           END-IF
 
           IF (LK-SBD-C-CHO = CHOIX-I OR "V")
              DESTROY Screen2-Handle
              DESTROY Screen1-Handle
              PERFORM RESTORE-PALETTE
              GO Acu-Exit-Rtn
           END-IF
 
           PERFORM Retour-Saisie-Numero 
           MOVE CHOIX-I TO CDF
           PERFORM Mistral-CloseCurrentWindow.
           
       Change-Color-Grid.
           IF CDF = CHOIX-I
                MOVE W-Row-Low-Color
                     TO Screen2-DaGd-1-Row-Highlight-Color
           ELSE MOVE W-Row-High-Color 
                     TO Screen2-DaGd-1-Row-Highlight-Color.

       Affich-Change-Color-Grid.
           MODIFY Screen2-DaGd-1(Screen2-DaGd-1-Cursor-Y-Old),
                      ROW-COLOR = Screen2-DaGd-1-Row-Highlight-Color.

      *****************************************
      *    INITIALISATION DE L'ECRAN 2        *
      ***************************************** 
       Screen2-Bef-Create. 
           MOVE AMB-MAGD TO W-AMB-MAGD
           IF AUTO-MG = 2 MOVE 0 TO W-AMB-MAGD
           END-IF
           MOVE W-BON TO Z-BON
           INITIALIZE ENR-MLDI 
           MOVE ZERO TO W-MON W-PUN |INDICE
           MOVE SPACE TO W-DES LIB-MCMO
           PERFORM Mep-Lbon   
           IF (AMB-MAGD = 1 AND NAM-MAGD NOT = 2 AND AUTO-MG <> 2) AND
              NOT (MOB-PALM > 0 AND (CLI-PALM = 850225 OR <  10))      | Pour Landa: Si Mobidis Pas d'affichage de le marge Totale
                MOVE "% MB" TO Screen2-La-LMBL-Buf
           ELSE MOVE SPACE TO  Screen2-La-LMBL-Buf
           END-IF
           IF AMB-MAGD = 1 AND NAM-MAGD NOT = 1 AND AUTO-MG <> 2
                MOVE "% MB" TO Screen2-La-LMBT-Buf
                MOVE 1 TO WV-MBT 
                IF (MOB-PALM > 0 AND (CLI-PALM = 850225 OR <  10))
                   MOVE 0 TO WV-MBT
                END-IF
           ELSE MOVE SPACE TO  Screen2-La-LMBT-Buf
                MOVE 0 TO WV-MBT
           END-IF
      *  Sortie stock sur autres agences     
           IF EXM-MPAD = 0 
              MOVE 73,29 TO Screen2-Pb-Dep-Col
              MOVE 80,00 TO Screen2-Ef-Dep-Col
           ELSE
              MOVE 85 TO Screen2-Pb-Dep-Col
              MOVE 90,71 TO Screen2-Ef-Dep-Col
           END-IF
           MOVE 0 TO IND-INITLINE2

           MOVE ZERO TO WENABLE
           PERFORM SCREEN2-ENABLE
           MOVE 1 TO WVISIBLE-PZE
           MOVE 0 TO WVISIBLE-REC W-LigneModifiee W-AFF-MB
                     Screen2-DaGd-1-Cursor-Y-Old 
                     Screen2-DaGd-1-Cursor-Y
                     W-GEN-STK
           MOVE SPACE TO CDFL
           PERFORM Integration-Commande
           if cdf <> choix-I
              PERFORM Deb-En-Cours
           END-IF. 
           if typ-mbdi = 1 and tra-mbdi = 1
              PERFORM VERIF-LIV THRU F-VERIF-LIV
              move ind-c to WV-RecupCde
           else
              move 0 to WV-RecupCde
           end-if.
191118
           MOVE "Stock central" TO W-LIBSTC
           MOVE "Stock agence"  TO W-LIBSTG
           EVALUATE STLA-MPAR 
           WHEN 1 MOVE "Dispo central" TO W-LIBSTC
                  MOVE "Dispo agence" TO W-LIBSTG
           WHEN 2 MOVE "Prév. central" TO W-LIBSTC
                  MOVE "Prév. agence" TO W-LIBSTG
           WHEN 3 MOVE "DisHc central" TO W-LIBSTC
                  MOVE "DisHc agence" TO W-LIBSTG
           END-EVALUATE.

           IF AST-MPAR = 1 AND LCO-MPAR = 1
              MOVE "Stock groupe" TO W-LIBSTGR  
              EVALUATE STLA-MPAR 
              WHEN 1 MOVE "Dispo groupe" TO W-LIBSTGR
              WHEN 2 MOVE "Prév. groupe" TO W-LIBSTGR
              WHEN 3 MOVE "DisHc groupe" TO W-LIBSTGR
              END-EVALUATE
           ELSE
              MOVE "Stock société" TO W-LIBSTGR  
              EVALUATE STLA-MPAR 
              WHEN 1 MOVE "Dispo société" TO W-LIBSTGR
              WHEN 2 MOVE "Prév. société" TO W-LIBSTGR
              WHEN 3 MOVE "DisHc société" TO W-LIBSTGR
              END-EVALUATE
           END-IF.
250919
           IF IND-AFF-STSC = 1
              MOVE W-AGSC TO COD-MAGC2
              PERFORM Lect-Agence2
              MOVE SPACE TO W-LIBSTGR
              EVALUATE STLA-MPAR 
              WHEN 1 STRING "Dispo" " " ABR-MAGC2 
                          DELIMITED BY "  " INTO W-LIBSTGR
              WHEN 2 STRING "Prév." " " ABR-MAGC2 
                          DELIMITED BY "  " INTO W-LIBSTGR
              WHEN 3 STRING "DisHc" " " ABR-MAGC2 
                          DELIMITED BY "  " INTO W-LIBSTGR
              WHEN OTHER STRING "Stock" " " ABR-MAGC2 
                          DELIMITED BY "  " INTO W-LIBSTGR
              END-EVALUATE
           END-IF.
250919
      *     IF MODU-M3 = 1
      *        MOVE "Stock agence" TO W-LIBSTG
      *        MOVE "Stock dépôt"  TO W-LIBSTC
      *     END-IF.
191118                        
       Screen2-AfterInitData.
           PERFORM Repositionne-Screen2
           IF CDF = CHOIX-M OR CHOIX-C OR "Z" OR MODIF-PALM = "X"
           OR TRA-MBDI = 1
           OR (GEN-MBDI = 1
061113     AND NOT (CLI-PALM = 690141 AND (STE-MCLI = 100 OR 110))
230218     AND NOT (CLI-PALM = 590825 AND STE-MCLI > 0))
                MODIFY Screen2-Pb-Modifier, ENABLED FALSE
           ELSE MODIFY Screen2-Pb-Modifier, ENABLED TRUE
           END-IF.
           IF CDF = CHOIX-I
                MODIFY Screen2-Pb-Ajouter, VISIBLE 0
           END-IF
           MODIFY Screen2-Pb-Supprimer, VISIBLE 0
           IF CDF = CHOIX-C OR "Z"
                MODIFY Screen2-Pb-Imprimer, ENABLED FALSE
                MODIFY Screen2-Pb-Terminer, ENABLED FALSE
           ELSE 
                MODIFY Screen2-Pb-Imprimer, ENABLED TRUE
                MODIFY Screen2-Pb-Terminer, ENABLED TRUE
           END-IF.
           IF TYP-MBDI = 8
                MODIFY Screen2-DaEf-Ags, VISIBLE 0
                MODIFY Screen2-Pb-Ags, VISIBLE 0
           END-IF
                  
           PERFORM Init-Screen2

           PERFORM Remp-Grille-Ldis
           MODIFY Screen2-Pb-RC, BITMAP-HANDLE EXPANDxx7-JPG
           MODIFY Screen2-La-MsgMBL, COLOR 198, TITLE SPACE
           IF TSP-MBDI <> SPACE 
              MOVE TSP-MBDI TO TSP-MCLD
           END-IF.
    
           PERFORM LECT-TSPENT

           IF CDF = CHOIX-C OR "Z"
              PERFORM AJOUT-Ldis
           ELSE 
              MODIFY Screen2-Pb-Valider, VISIBLE False
              MODIFY Screen2-Pb-Annuler, VISIBLE False
           END-IF
           IF TYP-MBDI NOT = 1 
              MODIFY Screen2-Cb-PZE4, VISIBLE FALSE
              MODIFY Screen2-DaCb-TLI, ENABLED FALSE
           END-IF
           IF TYP-MBDI NOT = 1 AND NOT = 0
           OR (TYP-MBDI = 0 AND MODU-M3 = 1)
              MODIFY Screen2-DaCb-TLI, VISIBLE FALSE
           END-IF.
           MODIFY Screen2-La-PCT, TITLE SPACE.
           MODIFY Screen2-La-LPCT, TITLE SPACE.
           IF CDF = CHOIX-M OR CHOIX-C OR "Z" 
              MOVE 1 TO WENABLE-FORFAIT
           ELSE
              MOVE 0 TO WENABLE-FORFAIT
           END-IF.
           PERFORM ForfaitEnable.
           If ifd-mbdi = 1 and crs-mbdi <> 0
              move space to w-tit
              string "Saisie du montant en" " " 
                    dev-mcli delimited by "  " into w-tit
              modify screen2-pb-ttc title w-tit 
                     bitmap-handle DOLLARX12-JPG
           end-if

           IF FRP-MCLD NOT = 0
                MODIFY Screen2-La-LFRP, VISIBLE TRUE
                MOVE FRP-MCLD TO D6
                MODIFY Screen2-La-FRP, VISIBLE TRUE, TITLE D6
                MODIFY Screen2-La-LHTT, VISIBLE TRUE
                MODIFY Screen2-La-TOTHTT, VISIBLE TRUE
           END-IF

           MODIFY Screen2-Cm-CVM, RESET-LIST = 1
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
                MODIFY Screen2-Cm-Cvm, ITEM-TO-ADD = ELT-CVM(I)
           END-PERFORM

           IF TYP-MBDI = 8 AND NOF-MBDI <> 0 AND <> BON-MBDI
              MODIFY Screen2-La-Rel, VISIBLE TRUE,
                          TITLE "Reliquat devis n°"
              MOVE NOF-MBDI TO D8                
              MODIFY Screen2-La-BCO, VISIBLE TRUE, TITLE D8
           END-IF

           IF TYP-MBDI = 3 OR 8
           OR TRA-MBDI NOT = 0
           OR BCO-MBDI = 0
                CONTINUE
           ELSE
                MOVE BCO-MBDI TO D8                
                IF TYP-MBDI = 1
                     MODIFY Screen2-La-Rel, VISIBLE TRUE,
                          TITLE "Commande n°"
                ELSE  MODIFY Screen2-La-Rel, VISIBLE TRUE,
                          TITLE "Reliquat commande n°"
                END-IF
                MODIFY Screen2-La-BCO, VISIBLE TRUE, TITLE D8
                IF DCO-MBDI NOT = 0
                   MOVE DCO-MBDI TO D-SAMJ PERFORM CONVDAT-SAMJ-JMSA
                   MODIFY Screen2-La-DU, VISIBLE TRUE
                   MODIFY Screen2-La-DCO, VISIBLE TRUE, TITLE L-DAT8
                END-IF
                IF DLO-MBDI NOT = 0 
                
                   MOVE DLO-MBDI TO D-SAMJ PERFORM CONVDAT-SAMJ-JMSA
                   MODIFY Screen2-La-LIVP, VISIBLE TRUE
                   MODIFY Screen2-La-DLO, VISIBLE TRUE, TITLE L-DAT8
                END-IF                     
           END-IF.
           
           perform AFFICHE-DELAI-GLOBAL
   
           CALL "W$MENU" USING WMENU-DESTROY, Screen2-Mn-2-Handle

           PERFORM Acu-Screen2-Mn-2
           MOVE Menu-Handle TO Screen2-Mn-2-Handle

           IF AUTO-ARD = 2
              CALL "W$MENU" USING WMENU-DISABLE, 
                                  Screen2-Mn-2-Handle, 1005
           END-IF.

           IF MAT-MBDI = 0 THEN
      *       Enlève la recherche article intervention matériel
              CALL "W$MENU" USING WMENU-DELETE, Screen2-Mn-2-Handle, 
                                  1006
           END-IF
           .

      *****************************************
      *    GESTION DE LA GRILLE DES LIGNES    *
      *****************************************  
       Screen2-DaGd-1-Ev-Msg-Goto-Cell.
      * La ligne de titre est à ignorer...
           IF Event-Data-2 < 2
               MOVE 2 TO Event-Data-2
           END-IF

      * Pour voir si on a changé de ligne
           IF Event-Data-2 = Screen2-DaGd-1-Cursor-Y-Old THEN
               MOVE Event-Data-1 TO Screen2-DaGd-1-Cursor-X-Old
           ELSE          
               MOVE Screen2-DaGd-1-Cursor-Y-Old TO WY
               PERFORM Color-Grid-Commande
               MODIFY Screen2-DaGd-1(Event-Data-2),
                     ROW-COLOR = Screen2-DaGd-1-Row-Highlight-Color
           END-IF

           MOVE Event-Data-1 TO Screen2-DaGd-1-Cursor-X
                                Screen2-DaGd-1-Cursor-X-Old
           MOVE Event-Data-2 TO Screen2-DaGd-1-Cursor-Y
                                Screen2-DaGd-1-Cursor-Y-Old

           IF EVENT-DATA-2 < 2 EXIT PARAGRAPH.

           PERFORM Mep-Detail-Ldis

           IF CDF = CHOIX-C OR CHOIX-M OR "Z"
                MODIFY Screen2-Pb-Ajouter, VISIBLE TRUE
                MODIFY Screen2-Pb-Supprimer, VISIBLE TRUE
           END-IF.

      *****************************************
      *    CLICK RADIO-BOUTON PRODUIT         *
      *****************************************  
       Screen2-DaRb-INP0-Ev-Cmd-Clicked.
           IF INP-MLDI = PRODUIT-A EXIT PARAGRAPH
           END-IF
           PERFORM Ligne-Modifiee
           MOVE PRODUIT-A TO INP-MLDI
           MOVE 1 TO WENABLE
           IF ART-MLDI = SPACE INITIALIZE ENR-MART ENR-MASA
           END-IF
           PERFORM Affiche-FouEtBoutons
           PERFORM Screen2-Enable
           MOVE 4 TO ACCEPT-CONTROL
           IF SCA-MPAR = 2 MOVE 113 TO CONTROL-ID
                      ELSE MOVE 112 TO CONTROL-ID
           END-IF.
           
       Screen2-DaRb-INP4-Ev-Cmd-Clicked.
           IF INP-MLDI = PRODUIT-P EXIT PARAGRAPH
           END-IF
           PERFORM Ligne-Modifiee
           MOVE PRODUIT-P TO INP-MLDI
           MOVE 1 TO WENABLE
           IF PRE-MLDI = SPACE INITIALIZE ENR-MPGE ENR-MPGEV
           END-IF
           PERFORM Affiche-FouEtBoutons
           PERFORM Screen2-Enable
           MOVE 4 TO ACCEPT-CONTROL
           MOVE 112 TO CONTROL-ID.
           
       Screen2-DaRb-INP9-Ev-Cmd-Clicked.
           IF INP-MLDI = PRODUIT-C 
              PERFORM Trait-Commentaire 
              EXIT PARAGRAPH
           END-IF
           PERFORM Ligne-Modifiee
           MOVE PRODUIT-C TO INP-MLDI
           MOVE 0 TO QTE-MLDI PUB-MLDI REM-MLDI IPNS-MLDI PUN-MLDI
           MOVE SPACE TO ART-MLDI DES-MLDI
           MODIFY Screen2-DaEf-Qte, VALUE SPACE
           MODIFY Screen2-Ef-Ar1, VALUE SPACE
           MODIFY Screen2-Ef-Ar2, VALUE SPACE
           PERFORM Affiche-FouEtBoutons
           MOVE 1 TO WENABLE
           PERFORM Screen2-Enable
           PERFORM Trait-Commentaire.

      *****************************************
      *    CLICK RADIO-BOUTON GRATUIT         *
      *****************************************  
       Screen2-DaRb-PZE1-Ev-Cmd-Clicked.
           INQUIRE Screen2-DaRb-PZE1, VALUE IN W-PZE
           IF W-PZE = PZE-MLDI EXIT PARAGRAPH
           END-IF
           PERFORM Ligne-Modifiee
           IF W-PZE = 1 
                MOVE 1 TO PZE-MLDI
                MOVE SPACE TO LPZ-MLDI
                PERFORM Mep-Pze-Not-Zero
           ELSE PERFORM Mep-Pze-Zero
           END-IF.

       Screen2-DaRb-PZE2-Ev-Cmd-Clicked.
           INQUIRE Screen2-DaRb-PZE2, VALUE IN W-PZE

           IF W-PZE = PZE-MLDI EXIT PARAGRAPH
           END-IF
           PERFORM Ligne-Modifiee

           IF W-PZE = 2 
                MOVE 2 TO PZE-MLDI
                PERFORM Mep-Pze-Not-Zero
           ELSE PERFORM Mep-Pze-Zero
           END-IF.
           
       Screen2-DaRb-PZE3-Ev-Cmd-Clicked.
           INQUIRE Screen2-DaRb-PZE3, VALUE IN W-PZE
           IF W-PZE = PZE-MLDI EXIT PARAGRAPH
           END-IF
           PERFORM Ligne-Modifiee
           IF W-PZE = 3 
                MOVE 3 TO PZE-MLDI
                PERFORM Mep-Pze-Not-Zero
           ELSE PERFORM Mep-Pze-Zero
           END-IF.
           
       Screen2-DaRb-PZE0-Ev-Cmd-Clicked.
           INQUIRE Screen2-DaRb-PZE0, VALUE IN W-PZE
           IF W-PZE = 9 AND PZE-MLDI NOT = 0
                PERFORM Ligne-Modifiee
                MOVE 0 TO PZE-MLDI
                PERFORM Mep-Pze-Zero
           END-IF.
       
      **** Validation prix de vente
       Screen2-DaEf-Pub-Ev-Msg-Validate.
           MOVE PUB-MLDI TO SV-MON
      *     INQUIRE Screen2-Daef-Pub, VALUE IN EF-MON
      *     MOVE EF-MON TO PUB-MLDI
           INQUIRE Screen2-Daef-Pub, VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==PUB-MLDI==.
           IF PUB-MLDI = SV-MON
                EXIT PARAGRAPH
           END-IF
           MOVE 0 TO IPNS-MLDI
           PERFORM Controle-Pac
           PERFORM Calcul-Et-Affiche-Prix
           PERFORM Ligne-Modifiee.

      **** Validation prix net
       Screen2-DaEf-Pun-Ev-Msg-Validate.
           MOVE PUN-MLDI TO SV-MON
      *     INQUIRE Screen2-Daef-Pun, VALUE IN PUN-MLDI
           INQUIRE Screen2-Daef-Pun, VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==PUN-MLDI==.
           IF PUN-MLDI = SV-MON
              EXIT PARAGRAPH
           END-IF
           MOVE 1 TO IPNS-MLDI

           IF PUB-MLDI = 0 
              MOVE PUN-MLDI TO PUB-MLDI
           END-IF
           COMPUTE REM-MLDI ROUNDED = (PUB-MLDI - PUN-MLDI) / PUB-MLDI
                                       * 100
           MOVE 0 TO REC-MLDI(1) REC-MLDI(2) REC-MLDI(3)
                     REC-MLDI(4) REC-MLDI(5) REC-MLDI(6)
           PERFORM Controle-Pac
           PERFORM Calcul-Et-Affiche-Prix.
           PERFORM Ligne-Modifiee.

      **** Validation prix tarif article divers
       Screen2-Ef-Pac-Ev-Msg-Validate.
           MOVE PAC-MLDI TO SV-MON
      *     INQUIRE Screen2-Ef-Pac, VALUE IN EF-MON
      *     MOVE EF-MON TO PAC-MLDI
           INQUIRE Screen2-Ef-Pac, VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==PAC-MLDI==.
           PERFORM Controle-Pac
           IF PAC-MLDI = SV-MON
                EXIT PARAGRAPH
           END-IF
           MOVE PAC-MLDI TO CAL-PV-PTF
           MOVE FOU-MLDI TO CAL-PV-FOU
           MOVE AR2-MLDI TO CAL-PV-REF 
           MOVE 1 TO W-CAL-PUB
           PERFORM After-Pac.
           PERFORM Ligne-Modifiee.

       Lect-Fou.
           OPEN INPUT MXFOU
           PERFORM STAT
           READ MXFOU INVALID MOVE SPACE TO ENR-MFOU
           END-READ
           PERFORM STAT
           CLOSE MXFOU.

      **** Validation n° fournisseur
       Screen2-Ef-Fou-Ev-Msg-Validate.
           INQUIRE Screen2-Ef-Fou, VALUE IN COD-MFOU
           PERFORM Lect-Fou
           MODIFY Screen2-Ef-Fou, VALUE COD-MFOU.
           IF COD-MFOU NOT = FOU-MLDI
               PERFORM Ligne-Modifiee
           END-IF
           MOVE COD-MFOU TO FOU-MLDI
           move 1 to w-ok
           PERFORM Controle-Fou.
           if w-ok = 1 and tccf-mpar = 1
              move fou-mldi to fou-mart
              perform Test-Exi-Tcf
              IF exi-tcfc = 0 
                 MOVE "Aucun type de commande pour ce fournisseur"
                 to acu-msg-1
                 PERFORM msg-info
              else
                 if EXI-TCFBL = 0 
                    move w-tccbl to tcc-mldi
                    if w-tcfbl <> tcf-mldi perform RECUP-DELAIS-TCF
                    end-if
                    move w-tcfbl to tcf-mldi
310316              MOVE TCC-MLDI TO Cm-MTCC-SelectedItem
                    PERFORM Affiche-CM-TCO
                 end-if
              end-if
           end-if.

      **** Liste des fournisseurs
       Call-Liste-Fou.
           MOVE SPACE TO LK-MFOU-L
           MOVE FOU-MLDI TO LK-MFOU-L-PRESELECT
           IF INP-MLDI = PRODUIT-A MOVE 1 TO LK-MFOU-L-NTF
           END-IF
           CALL "mfou-l.acu" USING ZONE-PALM LK-MFOU-L
           CANCEL "mfou-l.acu"
           PERFORM Repositionne-Screen2
           IF LK-MFOU-L-COD = ZERO
                PERFORM Controle-Fou
                EXIT PARAGRAPH
           END-IF
           MODIFY Screen2-Ef-Fou, VALUE LK-MFOU-L-COD.
           PERFORM Screen2-Ef-Fou-Ev-Msg-Validate.

      ****  Validation 1er code
       Screen2-Ef-Ar1-Ev-Msg-Validate.
           IF INP-MLDI = PRODUIT-P
                INQUIRE Screen2-Ef-Ar1, VALUE IN W-AR1
                MOVE W-AR1 TO COD-MPGE COD-MPGEV
                READ MXPREGEN INVALID EXIT PARAGRAPH
                END-READ
                PERFORM STAT
                IF CANN-MPGE = 1 
                   MODIFY Screen2-Ef-Ar1, VALUE SPACE
                   MOVE 112 TO CONTROL-ID
                   MOVE 4 TO ACCEPT-CONTROL
                   EXIT PARAGRAPH
                END-IF
                IF AUTO-PRER = 2 AND IRS-MPGE = 1 
                   MOVE "Prestation non autorisée" to acu-msg-1
                   perform msg-info
                   MODIFY Screen2-Ef-Ar1, VALUE SPACE
                   MOVE 112 TO CONTROL-ID
                   MOVE 4 TO ACCEPT-CONTROL
                   EXIT PARAGRAPH
                END-IF
                READ MXPREGENV INVALID EXIT PARAGRAPH
                END-READ
                PERFORM STAT
                PERFORM LECT-TSPMOP
                IF W-AR1 NOT = PRE-MLDI
                     PERFORM After-Pre
                     PERFORM Ligne-Modifiee
                     MOVE 1 TO WENABLE
                     PERFORM Screen2-Enable
                END-IF
                IF INL-MPGE = 1 MOVE 115 TO CONTROL-ID
                           ELSE MOVE 8 TO CONTROL-ID
                END-IF
                MOVE 4 TO ACCEPT-CONTROL
                EXIT PARAGRAPH.
           IF INP-MLDI = PRODUIT-A
                INQUIRE Screen2-Ef-Ar1, VALUE IN W-AR1

                IF W-AR1 NOT = AR1-MLDI
                     PERFORM Ligne-Modifiee
                END-IF
                MOVE W-AR1 TO AR1-MLDI
                IF W-AR1 NOT NUMERIC
                     MOVE 113 TO CONTROL-ID
                     MOVE 4 TO ACCEPT-CONTROL
                     EXIT PARAGRAPH
                END-IF

                PERFORM After-Fsa
                IF W-IND = 0 
                     MOVE " Famille article inconnue " TO ACU-MSG-1
                     PERFORM MSG-INFO
                     MODIFY Screen2-Ef-Ar1, VALUE SPACE
                     MOVE 112 TO CONTROL-ID
                ELSE MOVE 113 TO CONTROL-ID
                END-IF
                MOVE 4 TO ACCEPT-CONTROL.
           PERFORM Affiche-FouEtBoutons.

      ****  Validation 2ème code
       Screen2-Ef-Ar2-AfterProcedure.
           INQUIRE Screen2-Ef-Ar1, VALUE IN W-AR1
           INQUIRE Screen2-Ef-Ar2, VALUE IN W-AR2

           IF W-AR1 NUMERIC AND W-AR2 NOT = SPACE AND NOT = AR2-MLDI
250915     AND PAS-SCODART <> 1
              IF FOU-MLDI NOT = 0
                   MOVE W-AR2 TO AR2-MLDI LK-VCF-C-REF
                   PERFORM After-Ctf
              ELSE 
                   INITIALIZE ENR-MCTF
171215                        CAL-PV-PTF
                   PERFORM Rech-Refdiv THRU F-Rech-Refdiv
              END-IF
              PERFORM Screen2-Enable-Dep-Ags
              PERFORM Ligne-Modifiee
              EXIT PARAGRAPH
           END-IF   

           IF (W-AR1 NUMERIC OR W-AR2 = SPACE OR W-ART = ART-MLDI)
250915     AND PAS-SCODART <> 1
              EXIT PARAGRAPH
           END-IF
           PERFORM Ligne-Modifiee
                         
250915     IF PAS-SCODART <> 1                                                                
              INITIALIZE LK-SCODART-L
              MOVE W-AR2 TO LK-SCODART-L-REF
              IF MODU-DECO = 1    
                 MOVE 0 TO W-NBR
                 INSPECT LK-SCODART-L-REF TALLYING W-NBR FOR ALL "_|_"
                 IF W-NBR = 1 
                    INQUIRE Screen2-Ef-Ar2, VALUE IN W-AR220
                    UNSTRING W-AR220 DELIMITED BY "_|_" 
                        INTO LK-SCODART-L-ART LK-SCODART-L-SER
                 END-IF
              END-IF
              MOVE 1 TO LK-SCODART-L-VTE
              MOVE CLI-MBDI TO LK-SCODART-L-CLI
              MOVE AGE-MLDI TO LK-SCODART-L-AGE
              MOVE 1 TO LK-SCODART-L-AFF
              MOVE TCC-MLDI TO LK-SCODART-L-TCC
              MOVE "D" TO LK-SCODART-L-MOD
              MOVE 2 TO LK-SCODART-L-RCF
111016        MOVE MXFWK-PALM TO LK-SCODART-L-PREF
              CALL "scodart-l.acu" USING ZONE-PALM LK-SCODART-L
              CANCEL "scodart-l.acu"
              IF LK-SCODART-L-ART = SPACE
240915*           MOVE "Référence erronée" TO ACU-Msg-1
240915*           PERFORM Msg-Info
                 EXIT PARAGRAPH
              END-IF
250915     END-IF

210915
           IF LK-SCODART-L-ART(1:4) NUMERIC
              MOVE LK-SCODART-L-FOU TO FOU-MLDI LK-VCF-C-FOU
              MODIFY Screen2-Ef-Fou, VALUE FOU-MLDI
              PERFORM Screen2-Ef-Fou-Ev-Msg-Validate
              MOVE LK-SCODART-L-ART(1:4) TO W-AR1 AR1-MLDI
              MOVE LK-SCODART-L-REF TO LK-VCF-C-REF
              MODIFY Screen2-Ef-Ar1, VALUE W-AR1
              MODIFY Screen2-Ef-Ar2, VALUE LK-SCODART-L-REF 
              PERFORM After-Fsa
              PERFORM After-Ctf
              PERFORM Affiche-FouEtBoutons
              PERFORM Screen2-Enable-Dep-Ags
              EXIT PARAGRAPH
           END-IF

210915
           MOVE LK-SCODART-L-SER TO SV-SER
           MOVE 1 TO W-OK
           MOVE LK-SCODART-L-ART TO W-ART
           PERFORM Mep-Age-Masa
           MOVE W-ART TO COD-MART COD-MASA 
           READ MXART INVALID
250915         IF COD-MART <> SPACE
                  MOVE " Article Inconnu " to acu-msg-1
                  PERFORM msg-info
250915         END-IF
               MOVE 0 TO W-OK
           END-READ
           PERFORM STAT
           IF CANN-MART = 1 
              MOVE " Article Supprimé " to acu-msg-1
              PERFORM msg-info
              MOVE 0 TO W-OK
           END-IF
           IF TAR-MART = 2 
              MOVE " Article interdit à la vente " to acu-msg-1
              PERFORM msg-info
              MOVE 0 TO W-OK
           END-IF
           IF ILV-MART = 1 
              MOVE " Article de location " to acu-msg-1
              PERFORM msg-info
              MOVE 0 TO W-OK
           END-IF
      *     |article Tipmat chez M3 ou vice-versa (pas de test sur Topaz)
191118* supprimé dans le cadre de la restandardisation de Topaz
      *     IF MODU-M3 = 1 
      *     AND SOC-MART <> STC-MAGC
      *     AND (SOC-MART = 1 OR 2)
      *        IF SOC-MART = 2 
      *           MOVE "Attention! Article TIPMAT!" to acu-msg-1
      *        ELSE
      *           MOVE "Attention! Article M3!" to acu-msg-1
      *        END-IF
      *        move "Confirmez-vous?" to acu-msg-2
      *        PERFORM msg-on
      *        if acu-return-value = 2
      *           MOVE 0 TO W-OK
      *        end-if
      *     END-IF.
021215
           IF W-OK = 1 AND TCCF-MPAR = 1
              perform Test-Exi-Tcf
              IF exi-tcfc = 0 
                 MOVE "Aucun type de commande pour ce fournisseur"
                 to acu-msg-1
                 PERFORM msg-info
                 MOVE 0 TO W-OK 
              else
                 if EXI-TCFBL = 0 
                    move w-tccbl to tcc-mldi
                    if w-tcfbl <> tcf-mldi perform RECUP-DELAIS-TCF
                    end-if
                    move w-tcfbl to tcf-mldi
                    MOVE TCC-MLDI TO Cm-MTCC-SelectedItem
                    PERFORM Affiche-CM-TCO
                 end-if
              end-if
           end-if
021215
           IF W-OK = 1
              PERFORM TEST-ARTSA
              IF W-OK-ASA = 0 MOVE 0 TO W-OK   
              END-IF
           END-IF

           IF W-OK = 1
              PERFORM Test-Exi-Art THRU F-Test-Exi-Art
           END-IF.
        
           IF W-OK = 0
                MOVE SPACE TO W-ART
                MODIFY Screen2-Ef-Ar1, VALUE SPACE
                MODIFY Screen2-Ef-Ar2, VALUE SPACE
                IF SCA-MPAR = 2 MOVE 113 TO CONTROL-ID
                           ELSE MOVE 112 TO CONTROL-ID
                END-IF
                MOVE 4 TO ACCEPT-CONTROL
                EXIT PARAGRAPH
           ELSE MOVE 0 TO NOU-A
                IF W-ART NOT = ART-MLDI

                     MOVE SPACE TO ENR-MFAM ENR-MGFA
                     MOVE GRA-MART TO GRA-MFAM GRA-MGFA
                     MOVE FAM-MART TO FAM-MFAM FAM-MGFA
                     READ MXFAMART 
                     PERFORM STAT
                     READ MXGRAFAM
                     PERFORM STAT
                     PERFORM After-Art
                     MOVE 1 TO NOU-A
                END-IF
                | ajout pour ne pas afficher le message "déjà existant"
                | plusieurs fois car parfois blocage car ne se positionne
                | pas sur la qté quand on confirme (chez Hydraparts)
                MOVE W-ART TO ART-MLDI
                PERFORM Screen2-Enable-Dep-Ags
                PERFORM Affiche-FouEtBoutons
                IF MOD-MART = 1  
                     MOVE 115 TO CONTROL-ID
                ELSE MOVE 8 TO CONTROL-ID
                END-IF
                MOVE 4 TO ACCEPT-CONTROL
           END-IF.
           
      ****  Validation quantité
       Screen2-DaEf-Qte-AfterProcedure.
           MOVE QTE-MLDI TO SV-MON

           INQUIRE Screen2-Daef-Qte, VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==QTE-MLDI==.
           IF QTE-MLDI = SV-MON
                EXIT PARAGRAPH
           END-IF
           IF AUTO-REGUL = 2 AND QTE-MLDI = 0
              MOVE 1 TO QTE-MLDI
           END-IF

           PERFORM Ligne-Modifiee
           IF QTE-MLDI NOT = 0 AND ISQ-MLDI = 1
                MOVE 0 TO ISQ-MLDI
                MODIFY Screen2-DaCb-Isq, VALUE 0
           END-IF
           MOVE QTE-MLDI TO W-QTE D6 D62
           IF W-QTE2 = 0 MODIFY Screen2-Daef-Qte, VALUE D6
                    ELSE MODIFY Screen2-Daef-Qte, VALUE D62

           END-IF
210616     MOVE COD-MART TO W-ART
231215     PERFORM Trait-Promo-Bdi      | promotions en qté
110216*     PERFORM Cal-Prix-Fonction-Quantite       | sinon efface la remise
           IF INP-MLDI = PRODUIT-A AND ART-MLDI(1:4) NOT NUMERIC
110216        PERFORM Cal-Prix-Fonction-Quantite
              PERFORM Affich-Sto
           END-IF.

      ****  Validation indicateur sans quantité
       Screen2-DaCb-Isq-Ev-Cmd-Clicked.
           IF ISQ-MLDI = 0
              MOVE 1 TO ISQ-MLDI
              MOVE 0 TO QTE-MLDI
              MODIFY Screen2-DaEf-Qte, VALUE SPACE, ENABLED FALSE
              MOVE 0 TO WENABLE-QTE
              PERFORM Cal-Prix-Fonction-Quantite
           ELSE
              MOVE 1 TO WENABLE-QTE QTE-MLDI D62
              MODIFY Screen2-DaEf-Qte, VALUE D62, ENABLED TRUE
              MOVE 0 TO ISQ-MLDI
              PERFORM Cal-Prix-Fonction-Quantite
           END-IF
           PERFORM Ligne-Modifiee
           IF INP-MLDI = PRODUIT-A AND ART-MLDI(1:4) NOT NUMERIC
              PERFORM Affich-Sto
           END-IF.
           
      ****  Bouton remise en cascade
       Screen2-Pb-RC-LinkTo.
           IF REM-MLDI = 0
                MOVE " Saisissez d'abord une remise de base " 
                to acu-msg-1
                PERFORM msg-info
                EXIT PARAGRAPH
           END-IF

           IF WVISIBLE-PZE = 1
                MOVE 0 TO WVISIBLE-PZE
                MOVE 1 TO WVISIBLE-REC
           ELSE
                MOVE 1 TO WVISIBLE-PZE
                MOVE 0 TO WVISIBLE-REC
           END-IF
           PERFORM Screen2-Visible-Rec-Pze
           IF WVISIBLE-PZE = 0
                MODIFY Screen2-Pb-RC, TITLE WTITLE-RCM
                MODIFY Screen2-Pb-RC, BITMAP-HANDLE COLLAPSE7-JPG
           ELSE
                MODIFY Screen2-Pb-RC, TITLE WTITLE-RCV
                MODIFY Screen2-Pb-RC, BITMAP-HANDLE EXPANDxx7-JPG
           END-IF.
           
      ****  Check box mise en commande
       Screen2-DaCb-TLI-Ev-Cmd-Clicked. 
           INQUIRE Screen2-DaCb-TLI, VALUE IN W-TLI
020217
           IF MODU-M3 = 1 AND TYP-MBDI = 1 
           AND NOT (AGS-MLDI = AG-TOPAZ  
                    OR (AGS-MLDI = SPACE AND AGE-MLDI = AG-TOPAZ))
           and w-tli = 1
              move "Mise en commande non autorisée" to acu-msg-1
              perform msg-info
              MODIFY Screen2-DaCb-TLI, VALUE 0
              move event-action-fail to event-action
              exit paragraph
           END-IF
020217                           
           PERFORM Ligne-Modifiee
           INQUIRE Screen2-DaCb-TLI, VALUE IN W-TLI
           IF W-TLI = 0
           OR IRPM-MLDI = 1
                MOVE 1 TO TLI-MLDI
                IF INP-MLDI = PRODUIT-A PERFORM Affich-Sto
                END-IF
                PERFORM Affiche-Infos-Commande
                PERFORM CONTROLE-DLI
                MOVE 0 TO WENABLE-TCO WENABLE-DLI
                PERFORM Affiche-FouEtBoutons
                PERFORM Screen2-Enable-Dep-Ags
                PERFORM CAL-PR
                EXIT PARAGRAPH
           END-IF
           MOVE 1 TO WENABLE-TCO WENABLE-DLI
           IF TCCF-MPAR = 0
              MOVE TCC-MBDI TO TCC-MLDI
           ELSE
              if art-mldi(1:4) numeric move fou-mldi to fou-mart
              end-if
              perform Test-Exi-Tcf
              IF exi-tcfc = 0 
                 IF fou-mart <> 0
                    MOVE "Aucun type de commande pour ce fournisseur"
                    to acu-msg-1
                    PERFORM msg-info
                 end-if
              else
                 if EXI-TCFBL = 0 
                    move w-tccbl to tcc-mldi
                    if w-tcfbl <> tcf-mldi perform RECUP-DELAIS-TCF
                    end-if
                    move w-tcfbl to tcf-mldi
                 end-if
              end-if
           END-IF.
           MOVE TBP-MBDI TO TBP-MLDI
           IF TLI-MLDI NOT = 3 OR DCO-MLDI = 0
              MOVE W-DAT TO DCO-MLDI
           END-IF

           MOVE 3 TO TLI-MLDI
           IF PZE-MLDI = 4 
                MOVE 0 TO PZE-MLDI
                MODIFY Screen2-Cb-PZE4, VALUE 0
                PERFORM Affiche-PZE
           END-IF           
           IF INP-MLDI = PRODUIT-A 
                PERFORM Affich-Sto
                PERFORM Cal-Delai
           END-IF
           PERFORM Affiche-Infos-Commande
           PERFORM Screen2-Enable-Dep-Ags
           MODIFY Screen2-Cm-TCO,    ENABLED WENABLE-TCO
           MODIFY Screen2-DaEf-JDLI, ENABLED WENABLE-DLI
           MODIFY Screen2-DaEf-MDLI, ENABLED WENABLE-DLI
           MODIFY Screen2-DaEf-SADLI, ENABLED WENABLE-DLI
           IF JDLP-MLDI = 0
                MOVE DLP-MBDI TO DLP-MLDI
                PERFORM Affich-DliLdi
           ELSE PERFORM CONTROLE-DLI
           END-IF          
           PERFORM Affiche-FouEtBoutons
           
           MOVE TCC-MLDI TO Cm-MTCC-SelectedItem
           PERFORM Affiche-CM-TCO
           IF MODU-M3 = 1 
              PERFORM Affich-TBPL
           END-IF.

       Affich-DliLdi.
           MODIFY Screen2-DaEf-JDLI, VALUE JDLP-MLDI
           MODIFY Screen2-DaEf-MDLI, VALUE MDLP-MLDI
           MODIFY Screen2-DaEf-SADLI, VALUE SADLP-MLDI.
           PERFORM CONTROLE-DLI.


      **** Click sur vente manquée
       Screen2-Cb-PZE4-Ev-Cmd-Clicked.
           PERFORM Ligne-Modifiee
           INQUIRE Screen2-Cb-PZE4, VALUE IN W-PZE
           IF W-PZE = 0 
           OR IRPM-MLDI = 1
                MOVE 0 TO PZE-MLDI
           ELSE MOVE 4 TO PZE-MLDI
                IF TLI-MLDI = 3 
                   MOVE 1 TO TLI-MLDI
                   MODIFY Screen2-DaCb-TLI, VALUE 0
                   PERFORM Affiche-Infos-Commande 
                END-IF
           END-IF
           PERFORM AFFICH-STO
           PERFORM Affiche-PZE.

       Affich-Cvm.
           EVALUATE CVM-MLDI
           WHEN 0
           WHEN 1
                MODIFY Screen2-Cm-Cvm, VALUE ELT-CVM(1)
           WHEN 2
                MODIFY Screen2-Cm-Cvm, VALUE ELT-CVM(2)
           WHEN 3
                MODIFY Screen2-Cm-Cvm, VALUE ELT-CVM(3)
           WHEN 4
                MODIFY Screen2-Cm-Cvm, VALUE ELT-CVM(4)
           WHEN 9
                MODIFY Screen2-Cm-Cvm, VALUE ELT-CVM(5)
           WHEN OTHER
                MODIFY Screen2-Cm-Cvm, VALUE " "
           END-EVALUATE.

       Affich-Tbpe.
       Affich-Tbpl.

       Screen2-Cm-CVM-Ev-Ntf-Selchange.
           IF EVENT-DATA-1 = 5 
                MODIFY Screen2-Ef-MOT, VISIBLE TRUE
                MOVE 9 TO CVM-MLDI
           ELSE MOVE EVENT-DATA-1 TO CVM-MLDI
                MODIFY Screen2-Ef-MOT, VISIBLE FALSE.

           PERFORM Ligne-Modifiee.

      **** Validation jour livraison prévue
       Screen2-DaEf-JDLI-Ev-Msg-Validate.
           MOVE JDLP-MLDI TO SV-MON
           INQUIRE Screen2-DaEf-JDLI, VALUE IN JDLP-MLDI
           IF SV-MON = JDLP-MLDI
                EXIT PARAGRAPH
           END-IF
           PERFORM Ligne-Modifiee.
           INQUIRE Screen2-DaEf-MDLI, VALUE IN MDLP-MLDI  | au cas ou non renseigné
           IF JDLP-MLDI = 0 AND TYP-MBDI = 8
                MOVE 0 TO DLP-MLDI
                PERFORM Affich-DliLdi
                EXIT PARAGRAPH.
           IF JDLP-MLDI = 0 AND TYP-MBDI NOT = 0
                MOVE DAT-MBDI TO DLP-MLDI
                PERFORM Affich-DliLdi
                EXIT PARAGRAPH.
           IF JDLP-MLDI = 0 OR > 31
                MOVE 4 TO ACCEPT-CONTROL
                MOVE 96 TO CONTROL-ID.

      ******************************************
      *      Validation remise en cascade      *
      ******************************************
       Screen2-DaEf-REC1-Ev-Msg-Validate.
           MOVE REC-MLDI(1) TO SV-MON
      *     INQUIRE Screen2-Daef-Rec1, VALUE IN REC-MLDI(1)
           INQUIRE Screen2-Daef-Rec1, VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==W-REMC==.
           MOVE W-REMC TO REC-MLDI(1)
           IF REC-MLDI(1) = SV-MON
                EXIT PARAGRAPH
           END-IF
           MOVE 0 TO IPNS-MLDI
           PERFORM Ligne-Modifiee
           IF REC-MLDI(1) = 0
                MOVE ZERO TO REC-MLDI(1) REC-MLDI(2) REC-MLDI(3)
                             REC-MLDI(4) REC-MLDI(5) REC-MLDI(6)
                MODIFY Screen2-DaEf-REC1, VALUE SPACE
                MODIFY Screen2-DaEf-REC2, VALUE SPACE
                MODIFY Screen2-DaEf-REC3, VALUE SPACE
                MODIFY Screen2-DaEf-REC4, VALUE SPACE
                MODIFY Screen2-DaEf-REC5, VALUE SPACE
                MODIFY Screen2-DaEf-REC6, VALUE SPACE
           END-IF

           PERFORM Calcul-Et-Affiche-Prix.
           
       Screen2-DaEf-REC2-Ev-Msg-Validate.
           MOVE REC-MLDI(2) TO SV-MON
      *     INQUIRE Screen2-Daef-Rec2, VALUE IN REC-MLDI(2)
           INQUIRE Screen2-Daef-Rec2, VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==W-REMC==.
           MOVE W-REMC TO REC-MLDI(2)
           IF REC-MLDI(2) = SV-MON
                EXIT PARAGRAPH
           END-IF
           MOVE 0 TO IPNS-MLDI
           PERFORM Ligne-Modifiee
           IF REC-MLDI(2) = 0
                MOVE ZERO TO REC-MLDI(2) REC-MLDI(3)
                             REC-MLDI(4) REC-MLDI(5) REC-MLDI(6)
                MODIFY Screen2-DaEf-REC2, VALUE SPACE
                MODIFY Screen2-DaEf-REC3, VALUE SPACE
                MODIFY Screen2-DaEf-REC4, VALUE SPACE
                MODIFY Screen2-DaEf-REC5, VALUE SPACE
                MODIFY Screen2-DaEf-REC6, VALUE SPACE
           END-IF
           PERFORM Calcul-Et-Affiche-Prix.

       Screen2-DaEf-REC3-Ev-Msg-Validate.
           MOVE REC-MLDI(3) TO SV-MON
      *     INQUIRE Screen2-Daef-Rec3, VALUE IN REC-MLDI(3)
           INQUIRE Screen2-Daef-Rec3, VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==W-REMC==.
           MOVE W-REMC TO REC-MLDI(3)
           IF REC-MLDI(3) = SV-MON
                EXIT PARAGRAPH
           END-IF
           MOVE 0 TO IPNS-MLDI
           PERFORM Ligne-Modifiee
           IF REC-MLDI(3) = 0
                MOVE ZERO TO REC-MLDI(3)
                             REC-MLDI(4) REC-MLDI(5) REC-MLDI(6)
                MODIFY Screen2-DaEf-REC3, VALUE SPACE
                MODIFY Screen2-DaEf-REC4, VALUE SPACE
                MODIFY Screen2-DaEf-REC5, VALUE SPACE
                MODIFY Screen2-DaEf-REC6, VALUE SPACE
           END-IF
           PERFORM Calcul-Et-Affiche-Prix.
           
       Screen2-DaEf-REC4-Ev-Msg-Validate.
           MOVE REC-MLDI(4) TO SV-MON
      *     INQUIRE Screen2-Daef-Rec4, VALUE IN REC-MLDI(4)
           INQUIRE Screen2-Daef-Rec4, VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==W-REMC==.
           MOVE W-REMC TO REC-MLDI(4)
           IF REC-MLDI(4) = SV-MON
                EXIT PARAGRAPH
           END-IF
           MOVE 0 TO IPNS-MLDI
           PERFORM Ligne-Modifiee
           IF REC-MLDI(4) = 0
                MOVE ZERO TO REC-MLDI(4) REC-MLDI(5) REC-MLDI(6)
                MODIFY Screen2-DaEf-REC4, VALUE SPACE
                MODIFY Screen2-DaEf-REC5, VALUE SPACE
                MODIFY Screen2-DaEf-REC6, VALUE SPACE
           END-IF
           PERFORM Calcul-Et-Affiche-Prix.
           
       Screen2-DaEf-REC5-Ev-Msg-Validate.
           MOVE REC-MLDI(5) TO SV-MON
      *     INQUIRE Screen2-Daef-Rec5, VALUE IN REC-MLDI(5)
           INQUIRE Screen2-Daef-Rec5, VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==W-REMC==.
           MOVE W-REMC TO REC-MLDI(5)
           IF REC-MLDI(5) = SV-MON
                EXIT PARAGRAPH
           END-IF
           MOVE 0 TO IPNS-MLDI
           PERFORM Ligne-Modifiee
           IF REC-MLDI(5) = 0
                MOVE ZERO TO REC-MLDI(5) REC-MLDI(6)
                MODIFY Screen2-DaEf-REC5, VALUE SPACE
                MODIFY Screen2-DaEf-REC6, VALUE SPACE
           END-IF
           PERFORM Calcul-Et-Affiche-Prix.
           
       Screen2-DaEf-REC6-Ev-Msg-Validate.
           MOVE REC-MLDI(6) TO SV-MON
      *     INQUIRE Screen2-Daef-Rec6, VALUE IN REC-MLDI(6)
           INQUIRE Screen2-Daef-Rec6, VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==W-REMC==.
           MOVE W-REMC TO REC-MLDI(6)
           IF REC-MLDI(6) = SV-MON
                EXIT PARAGRAPH
           END-IF
           MOVE 0 TO IPNS-MLDI
           PERFORM Ligne-Modifiee
           PERFORM Calcul-Et-Affiche-Prix.
      
      ****  Validation remise
       Screen2-DaEf-Rem-AfterProcedure.
           MOVE REM-MLDI TO SV-MON
      *     INQUIRE Screen2-Daef-Rem, VALUE IN REM-MLDI
           INQUIRE Screen2-Daef-Rem, VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==REM-MLDI==.
           IF REM-MLDI = SV-MON
                EXIT PARAGRAPH
           END-IF
           PERFORM Ligne-Modifiee
           MOVE 0 TO IPNS-MLDI
           IF REM-MLDI = 0
                MOVE ZERO TO REC-MLDI(1) REC-MLDI(2) REC-MLDI(3)
                             REC-MLDI(4) REC-MLDI(5) REC-MLDI(6)
                MODIFY Screen2-DaEf-REC1, VALUE SPACE
                MODIFY Screen2-DaEf-REC2, VALUE SPACE
                MODIFY Screen2-DaEf-REC3, VALUE SPACE
                MODIFY Screen2-DaEf-REC4, VALUE SPACE
                MODIFY Screen2-DaEf-REC5, VALUE SPACE
                MODIFY Screen2-DaEf-REC5, VALUE SPACE
                IF WVISIBLE-REC = 1
                     MOVE 0 TO WVISIBLE-REC
                     MOVE 1 TO WVISIBLE-PZE
                     PERFORM Screen2-Visible-Rec-Pze
                END-IF
           END-IF
           PERFORM Calcul-Et-Affiche-Prix.
      
      **********************************
      *           AJOUT LIGNE          *
      **********************************       
       Ajout-Ligne.
           IF CDF = CHOIX-I EXIT PARAGRAPH
           END-IF   
           PERFORM Ajout-Ldis.
           
       Ajout-Ldis.
           MOVE CHOIX-C TO CDFL
           INITIALIZE ENR-MLDI
           MOVE ENR-MLDI TO SV-ENR-MLDI
           MOVE SPACE TO SV-ART-MLDI SV-AGS-MLDI
           MOVE 0 TO SV-TLI-MLDI SV-QTE-MLDI SV-DEP-MLDI SV-PZE-MLDI
                     SV-TBP-MLDI
           PERFORM RAz-Enr
           MOVE ZERO TO W-MON W-PUN W-PAC
           MOVE PRODUIT-A TO INP-MLDI
           MOVE 1 TO QTE-MLDI 
           MOVE W-DAT TO DSP-MLDI
           MOVE MAM-MBDI TO MAM-MLDI
           MOVE TYM-MBDI TO TYM-MLDI
100619     MOVE EXC-MBDI TO EXC-MLDI
           MOVE SPACE TO ENR-MASA  
           PERFORM Affich-Sto
           MOVE SPACE TO W-DES LIB-MCMO
           PERFORM Screen2-Fld-To-Buf
           MODIFY Screen2-La-Mbl, TITLE SPACE
           MODIFY Screen2-La-Promo, Visible FALSE
           MODIFY Screen2-La-RQ, Visible FALSE
           MOVE SPACE TO W-MSG-PM
           MODIFY Screen2-La-MsgMBL, COLOR 198, TITLE W-MSG-PM.
           MOVE 1 TO WENABLE
           PERFORM Screen2-Enable
           MOVE 1 TO WVISIBLE-PZE 
           MOVE 0 TO WVISIBLE-REC 
           PERFORM Screen2-Visible-Rec-Pze
           MODIFY Screen2-Pb-RC, TITLE WTITLE-RCV
           MODIFY Screen2-Pb-RC, BITMAP-HANDLE EXPANDxx7-JPG
           MODIFY Screen2-Pb-Ajouter, VISIBLE 0
           MODIFY Screen2-Pb-Supprimer, VISIBLE 0
           MODIFY Screen2-Pb-Serie, VISIBLE 0
           MOVE Screen2-DaGd-1-Cursor-Y-Old TO WY
           PERFORM Color-Grid-Commande
           MOVE 0 TO Screen2-DaGd-1-Cursor-Y-Old    
250915     MODIFY Screen2-Ef-Des, ENABLED TRUE 

           MOVE 4 TO ACCEPT-CONTROL
           IF SCA-MPAR = 2 MOVE 113 TO CONTROL-ID
                      ELSE MOVE 112 TO CONTROL-ID
           END-IF.

       RAz-Enr.
           INITIALIZE ENR-MLDI
           MOVE 1 TO TLI-MLDI
           IF TYP-MBDI = 0 MOVE 3 TO TLI-MLDI
                           MOVE DAT-MBDI TO DCO-MLDI
                           MOVE DLP-MBDI TO DLP-MLDI.
           IF TYP-MBDI = 8 MOVE DLP-MBDI TO DLP-MLDI.
           MOVE TCC-MBDI TO TCC-MLDI                   
           MOVE TBP-MBDI TO TBP-MLDI
           IF TBP-MLDI = 0 MOVE 1 TO TBP-MLDI
           END-IF
           MOVE AGS-MBDI TO AGS-MLDI
           IF TYC-MBDI = 1 MOVE SPACE TO AGS-MLDI.
           MOVE DEP-MBDI TO DEP-MLDI 
           MOVE AGE-MBDI TO AGE-MLDI 
           MOVE BON-MBDI TO BON-MLDI
           PERFORM Lect-Gricli
           MOVE 0 TO W-REM W-PUB.  
 
       Maj-Tot-Bon.
           IF CDF NOT = CHOIX-I
              IF TYP-MBDI = 1 
                 PERFORM Creation-Commande
              END-IF
              PERFORM Maj-Fin-Bon
           END-IF.
           
      **********************************
      *           FIN ECRAN 2          *
      **********************************                
       Screen2-LinkTo.

      *****************************************
      *    GESTION DES BOUTONS SUR L'ECRAN 3  *
      *****************************************     
       Screen3-Pb-Precedent-LinkTo.
           inquire Screen3-Pb-Precedent, visible in W-vs-pb
           if w-vs-pb = 0 exit paragraph
           end-if
           PERFORM Maj-Pied
           IF W-IND NOT = 0 EXIT PARAGRAPH
           END-IF
           PERFORM Integration-Commande
           if cdf <> choix-I
              PERFORM Deb-En-Cours
           END-IF
           PERFORM Remp-Grille-Ldis
           inquire Screen2-DaGd-1, last-row in WLAST-Row
           IF WLAST-Row NOT = 1   
              MOVE 2 TO Event-Data-2               
              MOVE 0 TO Screen2-DaGd-1-Cursor-Y-Old 
              PERFORM Screen2-DaGd-1-Ev-Msg-Goto-Cell
           END-IF
           PERFORM Mistral-CloseCurrentWindow.
           
       Screen3-Pb-Terminer-LinkTo.
           inquire Screen3-Pb-Terminer, visible in W-vs-pb
           if w-vs-pb = 0 exit paragraph
           end-if

           IF MODU-M3 = 1 AND TYP-MBDI = 0 AND IND-CDES-ATT = 1
              MOVE "Attention! Commandes en attente!" to acu-msg-1
              MOVE "Voulez-vous vraiment quitter?" to acu-msg-2
              perform msg-on
              if acu-return-value = 2
                 EXIT PARAGRAPH
              END-IF
           END-IF.

           IF LK-SBD-C-CHO = CHOIX-I OR "V"
              DESTROY Screen3-Handle
              DESTROY Screen2-Handle
              DESTROY Screen1-Handle
              PERFORM RESTORE-PALETTE
              GO Acu-Exit-Rtn
           END-IF
           PERFORM Maj-Pied
           IF W-IND NOT = 0 EXIT PARAGRAPH
           END-IF.
           PERFORM Controle-Workflow
           MOVE "X" TO W-EXIT
           MOVE CHOIX-I TO CDF
           PERFORM Acu-Screen2-Exit.

       Screen3-Pb-Imprimer-Link.
           inquire Screen3-Pb-Imprimer, visible in W-vs-pb
           if w-vs-pb = 0 exit paragraph
           end-if
           PERFORM Maj-Pied
           IF W-IND NOT = 0 EXIT PARAGRAPH
           END-IF.
           move "Impression non gérée" to acu-msg-1
           perform msg-info.

       Screen3-Pb-TXT-Link.
           MOVE SPACE TO LK-CCOMMENT
           MOVE "D" TO LK-CCOMMENT-ORI
           MOVE "E" TO LK-CCOMMENT-INO
           MOVE CLE1-MBDI TO LK-CCOMMENT-CLE
           IF TYP-MBDI = 0 MOVE "C" TO LK-CCOMMENT-STA
           ELSE IF TYP-MBDI = 8 MOVE "D" TO LK-CCOMMENT-STA
           ELSE MOVE "L" TO LK-CCOMMENT-STA.
           MOVE CDF TO LK-CCOMMENT-CDF
           IF LK-CCOMMENT-CDF = "Z" MOVE CHOIX-M TO LK-CCOMMENT-CDF
           END-IF
           CALL "ccomment.acu" USING ZONE-PALM LK-CCOMMENT
           CANCEL "ccomment.acu"
           PERFORM Repositionne-Screen3
           IF CDF = CHOIX-I
              EXIT PARAGRAPH
           END-IF
           PERFORM Affich-Texte.
     
       Affich-Texte.
           MOVE 3 TO W-NIV
           PERFORM Lect-MXCOMMENT
           MODIFY Screen3-Ef-Txt, VALUE LIB-MCMO
           IF TYP-MBDI = 0 
              IF EAR-MCMO = 0 MOVE 1 TO Screen3-Cb-EDB-Buf
                         ELSE MOVE 0 TO Screen3-Cb-EDB-Buf
              END-IF
              IF EFAC-MCMO = 0 MOVE 1 TO Screen3-Cb-EDF-Buf
                          ELSE MOVE 0 TO Screen3-Cb-EDF-Buf
              END-IF
              IF EBP-MCMO = 0 MOVE 1 TO Screen3-Cb-EDBP-Buf
                         ELSE MOVE 0 TO Screen3-Cb-EDBP-Buf
              END-IF
           END-IF   
           IF TYP-MBDI NOT = 0 
              IF EBL-MCMO = 0 MOVE 1 TO Screen3-Cb-EDB-Buf
                         ELSE MOVE 0 TO Screen3-Cb-EDB-Buf
              END-IF
              IF EFAC-MCMO = 0 MOVE 1 TO Screen3-Cb-EDF-Buf
                          ELSE MOVE 0 TO Screen3-Cb-EDF-Buf
              END-IF
           END-IF   
           MODIFY Screen3-Cb-EDB, VALUE Screen3-Cb-EDB-Buf
           MODIFY Screen3-Cb-EDF, VALUE Screen3-Cb-EDF-Buf
           MODIFY Screen3-Cb-EDBP, VALUE Screen3-Cb-EDBP-Buf.

      *****************************************
      *    INITIALISATION DE L'ECRAN 3        *
      *****************************************  
       Screen3-Bef-Create.
           MOVE MXTRS-PALM TO WV-ILI
            IF TYP-MBDI > 1 
              MOVE 0 TO WV-ILI
           END-IF

           PERFORM INIT-ZONES-SCREEN3
           PERFORM VARYING W-NPA FROM 5 BY -1
              UNTIL W-NPA = 1 OR IT-PAI(W-NPA) NOT = 0
               CONTINUE
           END-PERFORM
           IF W-NPA = 0 MOVE 1 TO W-NPA
           END-IF
           IF TYC-MBDI = 2 MOVE 1 TO WVISIBLE-COP
                      ELSE MOVE 0 TO WVISIBLE-COP
           END-IF
           PERFORM Screen3-FLD-TO-BUF.
           MOVE 0 TO Cm-Mois-Ouvert-LoadedItems IND-CDES-ATT.

       Screen3-AfterInitData.
           PERFORM Repositionne-Screen3
           MODIFY Screen3-La-Lbon, TITLE W-LBON
           IF TYP-MBDI = 0 
              MODIFY Screen3-La-EDB, TITLE "A/R"
              MODIFY Screen3-La-EDF, TITLE "Proforma"
              MODIFY Screen3-La-EDBP, VISIBLE TRUE
              MODIFY Screen3-Cb-EDBP, VISIBLE TRUE
           END-IF
           IF TYP-MBDI = 1 
              MODIFY Screen3-La-EDB, TITLE "B/L"
              MODIFY Screen3-La-EDF, TITLE "Facture"
           END-IF
           IF TYP-MBDI = 3
              MODIFY Screen3-La-EDB, TITLE "B/R"
              MODIFY Screen3-La-EDF, TITLE "Note d'Avoir"
           END-IF
           IF TYP-MBDI = 8 
              MODIFY Screen3-DaRb-IFA1, VISIBLE 0
              MODIFY Screen3-DaRb-IFA0, VISIBLE 0
              MODIFY Screen3-Cm-MFA, VISIBLE 0
              MODIFY Screen3-La-MFA, VISIBLE 0
              MODIFY Screen3-Cm-TFA, VISIBLE 0
              MODIFY Screen3-La-TFA, VISIBLE 0
              MODIFY Screen3-La-ADF, VISIBLE 0
              MODIFY Screen3-DaRb-ADF0, VISIBLE 0
              MODIFY Screen3-DaRb-ADF1, VISIBLE 0
              MODIFY Screen3-La-DEL1, VISIBLE 1, LINE 7,54
              MODIFY Screen3-La-DEL2, VISIBLE 1, LINE 7,54
              MODIFY Screen3-Ef-DEL, VISIBLE 1, LINE 7,56 , 
                                      VALUE DEL-MBDI
              MODIFY Screen3-La-VAO1, VISIBLE 1, LINE 9,38
              MODIFY Screen3-La-VAO2, VISIBLE 1, LINE 9,38
              MODIFY Screen3-Ef-VAO, VISIBLE 1, LINE 9,39 , 
                                     VALUE VAO-MBDI
           END-IF
           IF TYP-MBDI = 3 OR IFD-MBDI = 1
              MODIFY Screen3-DaEf-ACO, VISIBLE 0
              MODIFY Screen3-La-ACO, VISIBLE 0
              MOVE 0 TO ACO-MBDI 
           END-IF
           PERFORM Mep-Visible-Pb-Facaco.
           IF (NTP-MAGD = 0)
271015     OR (NTP-MAGD = 4 AND TYP-MBDI NOT = 1 
271015                      AND NOT = 0 AND NOT = 8)
              MODIFY Screen3-DaCb-TTR, VISIBLE 0
           END-IF
           move ttr-mbdi to Screen3-DaCb-TTR-buf
           PERFORM Aff-Transport
           PERFORM Mep-Cm-TFA
           PERFORM Mep-Cm-MFA
           IF TYC-MBDI = 2
              MODIFY Screen3-DaEf-Rai, VISIBLE 0
              MODIFY Screen3-DaEf-Cv, VISIBLE 0
           END-IF
           PERFORM Init-Frais
           IF TFA-MBDI = 1 AND CDF = "Z" 
              MOVE TOT-FFA TO FFA-MBDI
           END-IF.    
           MOVE FFA-MBDI TO Screen3-DaEf-FFA-BUF
           MODIFY Screen3-DaEf-FFA, VALUE Screen3-DaEf-FFA-BUF
271114     MODIFY Screen3-DaEf-ACO, VALUE Screen3-DaEf-ACO-BUF
           PERFORM Cal-Totaux
           PERFORM Recal-Echeances
           PERFORM Affich-Pied
           IF (CDF = CHOIX-M OR "Z") AND AUTO-3EC NOT = 2 
                MOVE 1 TO WENABLE
                MODIFY Screen3-Pb-Modifier, ENABLED FALSE
                MODIFY Screen3-Pb-Imprimer, ENABLED FALSE
           ELSE MOVE 0 TO WENABLE
                IF MODIF-PALM = "X" 
                OR AUTO-3EC = 2 
                OR TRA-MBDI = 1 
                OR GEN-MBDI = 1
                     MODIFY Screen3-Pb-Modifier, ENABLED FALSE
                     MODIFY Screen3-Pb-Sauvegarder, ENABLED FALSE
                ELSE MODIFY Screen3-Pb-Modifier, ENABLED TRUE
                     MODIFY Screen3-Pb-Sauvegarder, ENABLED FALSE
                     MODIFY Screen3-Pb-Imprimer, ENABLED TRUE
                END-IF
           END-IF.

           PERFORM Screen3-Enable.

           IF TYC-MBDI = 2 MOVE 4 TO ACCEPT-CONTROL
                           MOVE 20 TO CONTROL-ID.


      * Remplir les zones de l'écran 3 (à partir de BDIS)    
       Screen3-Fld-To-Buf.
           EVALUATE IFA-MBDI
           WHEN ZERO
              MOVE 1 TO Screen3-RADIO-IFA-BUF
           WHEN 1
              MOVE 2 TO Screen3-RADIO-IFA-BUF
           WHEN OTHER
              MOVE ZERO TO Screen3-RADIO-IFA-BUF
           END-EVALUATE
           MOVE FFA-MBDI TO Screen3-DaEf-FFA-BUF
           MOVE ACO-MBDI TO Screen3-DaEf-ACO-BUF 
           EVALUATE IAF-MBDI
           WHEN ZERO
              MOVE 1 TO Screen3-RADIO-ADF-BUF
           WHEN 1
              MOVE 2 TO Screen3-RADIO-ADF-BUF
           WHEN OTHER
              MOVE ZERO TO Screen3-RADIO-ADF-BUF
           END-EVALUATE
           MOVE DOM-MBDI TO Screen3-DaEf-Dom-BUF
           MOVE ADB-MBDI TO Screen3-DaEf-Adb-BUF
           PERFORM Affich-Rib 
           IF MPA-MBDI = 4
              MOVE 1 TO Screen3-DaCb-MPA-BUF
           ELSE
              MOVE 0 TO Screen3-DaCb-MPA-BUF
           END-IF
           MOVE W-NPA TO Screen3-DaEf-NPA-BUF
           IF TTR-MBDI = 1
              MOVE 1 TO Screen3-DaCb-TTR-BUF
           ELSE
              MOVE 0 TO Screen3-DaCb-TTR-BUF
           END-IF.
           IF MOB-PALM > 0
              MOVE IES-MBDI TO W-IES-MBDI
              IF IES-MBDI = 2 MOVE 1 TO W-IES-MBDI 
              END-IF
           END-IF.
           IF IRM-MBDI = 4
                MOVE 1 TO Screen3-Cb-IRM-BUF
           ELSE MOVE 0 TO Screen3-Cb-IRM-BUF
           END-IF.
           
      * Remplir les zones de l'écran 3 (à partir de COPROBL)
       Screen3-Fld-To-Buf-Cop.
                                            
      * Récupère les infos de l'écran 3 dans BDIS
       Screen3-Buf-To-Fld.
           EVALUATE Screen3-RADIO-IFA-BUF
           WHEN 1
              MOVE ZERO TO IFA-MBDI
           WHEN 2
              MOVE 1 TO IFA-MBDI
           WHEN OTHER
              MOVE ZERO TO IFA-MBDI
           END-EVALUATE
           INQUIRE Screen3-DaEf-FFA, VALUE IN Screen3-DaEf-FFA-BUF
           MOVE Screen3-DaEf-FFA-BUF TO FFA-MBDI
           INQUIRE Screen3-DaEf-ACO, VALUE IN Screen3-DaEf-ACO-BUF
           MOVE Screen3-DaEf-ACO-BUF TO ACO-MBDI
           EVALUATE Screen3-RADIO-ADF-BUF
           WHEN 1
              MOVE ZERO TO IAF-MBDI
           WHEN 2
              MOVE 1 TO IAF-MBDI
           WHEN OTHER
              MOVE ZERO TO IAF-MBDI
           END-EVALUATE
           MOVE Screen3-DaEf-Dom-BUF TO DOM-MBDI
           MOVE Screen3-DaEf-Adb-BUF TO ADB-MBDI
           IF Screen3-DaCb-MPA-BUF = 1
              MOVE 4 TO MPA-MBDI
           ELSE
              MOVE 2 TO MPA-MBDI
           END-IF
           MOVE Screen3-DaEf-NPA-BUF TO W-NPA
           IF Screen3-DaCb-TTR-BUF = 1
              MOVE 1 TO TTR-MBDI
           ELSE
              MOVE 0 TO TTR-MBDI
           END-IF.
           IF MOB-PALM > 0 AND NOT (IES-MBDI = 2 OR 3)
              MOVE W-IES-MBDI TO IES-MBDI
           END-IF.

           IF (W-COP = W-COP-PR AND ACO-MBDI NOT = 0)
           AND (TYP-MBDI = 0 OR 1)
           AND (IRM-MBDI = 0 OR 4)
           AND (MODU-CDEWEB = 1 AND
                 (ACA-MBDI = W-ACA-WEB OR IRM-MBDI = 4))
              IF Screen3-Cb-IRM-BUF = 1
                 MOVE 4 TO IRM-MBDI
              ELSE
                 MOVE 0 TO IRM-MBDI
              END-IF
           END-IF.

      * Récupère les infos de l'écran 3 dans BDIS
       Screen3-Buf-To-Fld-Cop.

      *  ComboBox Types de Facturation
       Mep-Cm-TFA.
           IF Cm-TFA-LoadedItems = 0 THEN
               MOVE 1 TO Cm-TFA-COD(2)
               MOVE "Facture par Bon" TO Cm-TFA-LIB(2)
               MOVE 2 TO Cm-TFA-COD(3)
               MOVE "Bons regroupés" TO Cm-TFA-LIB(3)
               MOVE 3 TO Cm-TFA-COD(4)
               MOVE "Facture par Lieu" TO Cm-TFA-LIB(4)
               MOVE 4 TO Cm-TFA-COD(5)
               MOVE "Facture/Réf.Client" TO Cm-TFA-LIB(5)
               MOVE 5 TO Cm-TFA-COD(6)
               MOVE "B.Reg. + SsTotal" TO Cm-TFA-LIB(6)
               MOVE 5 TO Cm-TFA-LoadedItems
               MODIFY Screen3-Cm-TFA, RESET-LIST = 1
           END-IF
           MOVE TFA-MBDI TO Cm-TFA-SelectedItem
           SET Cm-TFA-Handle TO HANDLE OF Screen3-Cm-TFA
            COPY "W:/mx/copy/Cm-LoadAndSelect.cbl"
                REPLACING =='DCN-WRK'== BY ==TFA==
                          =='DCN-KEY'== BY ==COD==.
           .


      *   ComboBox Mois de Facturation
       Mep-Cm-MFA.
           IF PERM-MBDI > 0 AND < 13 
              MOVE ELT-MOIS(PERM-MBDI) TO Cm-Mois-Ouvert-SelectedItem
           ELSE
              MOVE SPACE TO Cm-Mois-Ouvert-SelectedItem
           END-IF
           MOVE SDAT-MBDI TO Cm-Mois-Ouvert-PerMini-S
           MOVE ADAT-MBDI TO Cm-Mois-Ouvert-PerMini-A

           MOVE MDAT-MBDI TO Cm-Mois-Ouvert-PerMini-M
           COPY "W:/mx/copy/Cm-Mois-Ouvert.cbl"              
                REPLACING ==DCN-COMBO== BY ==Screen3-Cm-MFA==.   
           .


       INIT-ZONES-SCREEN3.
              PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
                 MOVE PAI-MBDI(I) TO IT-PAI(I)

                 MOVE ECH-MBDI(I) TO IT-ECH(I)
                 MOVE TER-MBDI(I) TO IT-TER(I)
                 MOVE MON-MBDI(I) TO IT-MON(I)
                 MOVE POU-MBDI(I) TO IT-POU(I)
                 MOVE NJE-MBDI(I) TO IT-NJE(I)
              END-PERFORM
              MOVE LPA-MBDI TO W-LPA.


       Affich-Pied.
           IF IFF-MCLD = ZERO 
      *     OR TYP-MBDI = 0 OR 8         
                MOVE 0 TO W-IND
           ELSE MOVE 1 TO W-IND.
           MODIFY Screen3-La-LTOTFFA, VISIBLE W-IND
           MODIFY Screen3-La-TOTFFA, VISIBLE W-IND
           MODIFY Screen3-La-FFA, VISIBLE W-IND
           MODIFY Screen3-DAEF-FFA, VISIBLE W-IND

           PERFORM Affich-Rib
           PERFORM Affich-Texte
           PERFORM Remp-Grille-Pai
           perform Affich-PB-ATTACH.

       Affich-Pied-Tot.
           MOVE TOT-LIG TO D6
           MODIFY Screen3-La-TotLig, TITLE D6.
           MOVE TOT-POI TO D82
           MODIFY Screen3-La-TotPoi, TITLE D82.
           IF TYP-MBDI = 3 MULTIPLY -1 BY TOT-HPI GIVING D92
                      ELSE MOVE TOT-HPI TO D92.
           MODIFY Screen3-La-HPI, TITLE D92.
           IF TYP-MBDI = 3 MULTIPLY -1 BY TOT-HPR GIVING D92
                      ELSE MOVE TOT-HPR TO D92.
           MODIFY Screen3-La-HPR, TITLE D92.

           MOVE TOT-POR TO D82
           MODIFY Screen3-La-TotPor, TITLE D82.
           MOVE TOT-FFA TO D82
           MODIFY Screen3-La-TotFfa, TITLE D82.
           IF TYP-MBDI = 3 MULTIPLY -1 BY TOT-TVA GIVING D82
                      ELSE MOVE TOT-TVA TO D82.
           MODIFY Screen3-La-TotTva, TITLE D82.
           IF TYP-MBDI = 3 MULTIPLY -1 BY TOT-TTC GIVING D92
                      ELSE MOVE TOT-TTC TO D92.
           MODIFY Screen3-La-TotTtc, TITLE D92.
           MOVE TOT-ESC TO D82
           MODIFY Screen3-La-TotEsc, TITLE D82.
           IF TYP-MBDI = 3 MULTIPLY -1 BY TOT-NET GIVING D92
                      ELSE MOVE TOT-NET TO D92.
           MODIFY Screen3-La-Nap, TITLE D92.

       Cal-Port.
           MOVE ZERO TO TOT-POR
311018                  TVA-POR

           IF (NTP-MAGD = 1 OR 2 OR 3)    | port autre que saisie/transporteur sur BL
              IF TYC-MBDI = 1                
                   EXIT PARAGRAPH         | pas de port en inter-agence
              END-IF
              IF TTR-MBDI NOT = 1
                   EXIT PARAGRAPH         | si indicateur "pas de port" 
              END-IF
           END-IF

           IF NTP-MAGD = 1                | % sur BL 
              COMPUTE TOT-POR ROUNDED = TOT-HT * FOP-MAGD / 100
           END-IF.
           IF NTP-MAGD = 2                | forfait sur facture
                MOVE FOP-MAGD TO TOT-POR
           END-IF.
           IF NTP-MAGD = 3                | % sur facture
              COMPUTE TOT-POR ROUNDED = TOT-HPI * FOP-MAGD / 100
              IF TOT-POR > PLF-MAGD AND PLF-MAGD NOT = 0
                 MOVE PLF-MAGD TO TOT-POR
              END-IF
           END-IF.                       
           IF MPF-MBDI NOT = 0            | saisie bordereau transport
                MOVE MPF-MBDI TO TOT-POR
           END-IF.
           IF TPD-MPAD NOT = ZERO AND AFC-MBDI NOT = 1
           AND RCT-MPAR(TPD-MPAD) NOT = 1
               COMPUTE TVA-POR ROUNDED = 
                    TOT-POR * TVA-MPAR(TPD-MPAD) / 100
           END-IF.

       Cal-Totaux.
           PERFORM Cal-Port
           PERFORM Cal-Frais
           MOVE ZERO TO TOT-TTC TOT-TVA
           PERFORM CALC-TTC VARYING I FROM 1 BY 1 UNTIL I > 3.
           ADD TOT-POR TVA-POR TOT-FFA TVA-FFA TOT-TTC GIVING TOT-NET
           SUBTRACT ACO-MBDI FROM TOT-NET
           PERFORM Affich-Pied-Tot.

       Init-Frais.  
           MOVE ZERO TO TOT-FFA TVA-FFA
           MOVE TOT-HT TO TOT-HTS
           IF IFF-MCLD = ZERO OR TOT-HT = ZERO 
           OR (TYC-MBDI NOT = 2 AND PFF-MPAD = 1) 
                MOVE ZERO TO TOT-FFA
           ELSE IF (TOT-HT < ZERO OR TYP-MBDI = 3) AND IFN-MPAD = 0
                MOVE ZERO TO TOT-FFA
           ELSE IF (CFF-MPAD = 0 AND TOT-HTS > SFF-MPAD)
                OR (CFF-MPAD = 1 AND TOT-HTS < SFF-MPAD)
                     MOVE FIF-MPAD TO TOT-FFA
                ELSE ADD FIF-MPAD FFF-MPAD GIVING TOT-FFA
                END-IF
           END-IF.

       Cal-Frais.       
           PERFORM Init-Frais         
           IF TFA-MBDI = 1 
                MOVE FFA-MBDI TO TOT-FFA 
           END-IF.
           IF TOT-HT < 0 AND IFN-MPAD = 1 
                MULTIPLY -1 BY TOT-FFA
           END-IF.
           IF TFF-MPAD = ZERO OR AFC-MBDI = 1
           OR (TFF-MPAD NOT = 0 AND RCT-MPAR(TFF-MPAD) = 1)
                MOVE ZERO TO TVA-FFA
           ELSE COMPUTE TVA-FFA ROUNDED = TOT-FFA *
                             TVA-MPAR(TFF-MPAD) / 100
           END-IF.

       Calc-TTC.
           MOVE C-MON(I) TO C-PQP(I)
           MOVE C-TVA(I) TO W-CT
           IF W-CT NOT = ZERO AND NOT = 9 AND AFC-MBDI NOT = 1
           AND RCT-MPAR(W-CT) NOT = 1
               COMPUTE W-TVA ROUNDED = (C-PQP(I) - C-ESC(I))
                                       * TVA-MPAR(W-CT) / 100
               ADD W-TVA TO TOT-TTC TOT-TVA
           END-IF.
           ADD C-PQP(I) TO TOT-TTC
           ADD C-ESC(I) TO TOT-ESC.

       Affich-Rib.
          
       Affich-Rib-Cop.

       Affich-Pied-Mod.
           MODIFY Screen3-DaEf-FFA, VALUE Screen3-DaEf-FFA-BUF
           MODIFY Screen3-DaEf-ACO, VALUE Screen3-DaEf-ACO-BUF 
           MODIFY Screen3-DaEf-Dom, VALUE Screen3-DaEf-Dom-BUF
           MODIFY Screen3-DaEf-Adb, VALUE Screen3-DaEf-Adb-BUF
           MODIFY Screen3-DaEf-Rib, VALUE Screen3-DaEf-Rib-BUF
           MODIFY Screen3-DaCb-MPA, VALUE Screen3-DaCb-MPA-BUF
           MODIFY Screen3-Cb-IRM4, VALUE Screen3-Cb-IRM-BUF
           MODIFY Screen3-DaEf-NPA, VALUE Screen3-DaEf-NPA-BUF
           MODIFY Screen3-DaCb-TTR, VALUE Screen3-DaCb-TTR-BUF.

       Recup-Pied.
           PERFORM Screen3-Buf-To-Fld
           IF TYP-MBDI = 8
              INQUIRE Screen3-Ef-VAO, VALUE IN VAO-MBDI
              INQUIRE Screen3-Ef-DEL, VALUE IN DEL-MBDI
           ELSE
              INQUIRE Screen3-Cm-Tfa, VALUE IN Cm-TFA-Items(1)
              MOVE Cm-TFA-COD(1) TO TFA-MBDI
              INQUIRE Screen3-Cm-MFA, VALUE Cm-Mois-Ouvert-ITEMS(1)
              MOVE Cm-Mois-Ouvert-DAT(1) TO D-SAMJ
              MOVE M-SAMJ TO PERM-MBDI
              MOVE A-SAMJ TO PERA-MBDI
           END-IF
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
                 MOVE IT-PAI(I) TO PAI-MBDI(I) 
                 MOVE IT-ECH(I) TO ECH-MBDI(I) 
                 MOVE IT-TER(I) TO TER-MBDI(I) 
                 MOVE IT-MON(I) TO MON-MBDI(I) 
                 MOVE IT-POU(I) TO POU-MBDI(I) 
                 MOVE IT-NJE(I) TO NJE-MBDI(I) 
           END-PERFORM
           MOVE W-LPA TO LPA-MBDI.

       Controle-Pied.
           MOVE 0 TO W-IND.  
           IF AUTO-3EC = 2 
           OR (AUTO-PAI = 2 
261011         AND IDV-MCLI = 0)
              EXIT PARAGRAPH
           END-IF
           IF TFA-MBDI NOT = 1 
           AND IT-PAI(2) NOT = 0 
           AND MPA-MBDI <> 4
           AND TYP-MBDI NOT = 8
              MOVE "Paiement en plusieurs fois sur bons regroupés"
              TO ACU-MSG-1
              MOVE "Souhaitez-vous passer en 'un bon par facture'?"
              TO ACU-MSG-2
              perform msg-on
              if acu-return-value = 1 
                 move 1 to tfa-mbdi
                 perform Mep-Cm-TFA
              end-if
           END-IF

           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
              IF IT-PAI(I) NOT = 0 
                 IF IT-PAI(I) > 9
                      MOVE "Paiement inconnu" to acu-msg-1
                      perform msg-erreur
                      move 1 to w-ind
                      move 5 to i
                 end-if
              end-if
           end-perform.

       Maj-Pied.
           MOVE 0 TO W-IND
           IF CDF NOT = CHOIX-M AND NOT = "Z" EXIT PARAGRAPH.
           PERFORM Recup-Pied
           PERFORM Controle-Pied
           IF W-IND NOT = 0 EXIT PARAGRAPH.
           PERFORM Rew-MXBDIS
           MOVE ENR-MBDI TO SV-ENR-MBDI.
           
       Screen3-Enable. 
           IF ((TOT-HT < 0 OR TYP-MBDI = 3) AND AUTO-AVO = 2)
           OR (TYC-MBDI = 2 AND W-COP NOT = W-COP-PR)
           OR (ATTENTE = 1)
           OR (TYP-MBDI NOT = 1 AND NOT = 3)
                MODIFY Screen3-DaRb-IFA0, ENABLED FALSE
                MODIFY Screen3-DaRb-IFA1, ENABLED FALSE
           ELSE MODIFY Screen3-DaRb-IFA0, ENABLED WENABLE
                MODIFY Screen3-DaRb-IFA1, ENABLED WENABLE
           END-IF

           IF (TYC-MBDI = 2 AND W-COP NOT = W-COP-PR)
           OR (TYP-MBDI NOT = 1 AND NOT = 3)
                MODIFY Screen3-DaRb-ADF0, ENABLED FALSE
                MODIFY Screen3-DaRb-ADF1, ENABLED FALSE
                MODIFY Screen3-Cm-TFA, ENABLED FALSE
                MODIFY Screen3-Cm-MFA, ENABLED FALSE
           ELSE MODIFY Screen3-DaRb-ADF0, ENABLED WENABLE
                MODIFY Screen3-DaRb-ADF1, ENABLED WENABLE
                IF AUTO-TFA = 2 
                     MODIFY Screen3-Cm-TFA, ENABLED FALSE
                ELSE MODIFY Screen3-Cm-TFA, ENABLED WENABLE
                END-IF
                MODIFY Screen3-Cm-MFA, ENABLED WENABLE
           END-IF
        
           IF IFF-MCLD = 0 OR TFA-MBDI NOT = 1
           OR (TYC-MBDI NOT = 2 AND PFF-MPAD = 1)
                MOVE TOT-FFA TO Screen3-DaEf-FFA-BUF 
                MODIFY Screen3-DaEf-FFA, ENABLED FALSE, 
                       VALUE Screen3-DaEf-FFA-BUF

           ELSE
                MODIFY Screen3-DaEf-FFA, ENABLED WENABLE
           END-IF             

           MODIFY Screen3-DaCb-Ili, ENABLED WENABLE

           IF AUTO-ACO = 2
              MODIFY Screen3-DaEf-ACO, ENABLED 0
           ELSE
      *        MODIFY Screen3-DaEf-ACO, ENABLED WENABLE  
              PERFORM Screen3-Enable-Aco
           END-IF
           IF TYP-MBDI = 8 
              MODIFY Screen3-Ef-DEL, ENABLED WENABLE
              MODIFY Screen3-Ef-VAO, ENABLED WENABLE
           END-IF
           IF (TYC-MBDI = 2 AND W-COP NOT = W-COP-PR AND NTP-MAGD = 4)
                MODIFY Screen3-DaCb-TTR, ENABLED FALSE
           ELSE MODIFY Screen3-DaCb-TTR, ENABLED WENABLE
           END-IF
           MODIFY Screen3-Cb-IRM4, ENABLED WENABLE

           IF WENABLE = 1 AND IDV-MCLI = 1
           AND TYP-MBDI NOT = 8
                MODIFY Screen3-DaEf-DOM, ENABLED WENABLE
                MODIFY Screen3-DaEf-ADB, ENABLED WENABLE
                MODIFY Screen3-DaEf-RIB, ENABLED WENABLE
           ELSE MODIFY Screen3-DaEf-DOM, ENABLED FALSE
                MODIFY Screen3-DaEf-ADB, ENABLED FALSE
                MODIFY Screen3-DaEf-RIB, ENABLED FALSE
           END-IF.
           IF REL-MCLI = 0 OR WENABLE = 0 
           OR (AUTO-PAI = 2
261011         AND IDV-MCLI = 0)
                MODIFY Screen3-DaCb-MPA, ENABLED FALSE
           ELSE MODIFY Screen3-DaCb-MPA, ENABLED WENABLE
           END-IF.
           IF (MPA-MBDI = 4 AND REL-MCLI > 0) OR WENABLE = 0
           OR (AUTO-PAI = 2
261011         AND IDV-MCLI = 0)
                MODIFY Screen3-DaGd-2, ENABLED FALSE
                MODIFY Screen3-DaEf-NPA, ENABLED FALSE
           ELSE MODIFY Screen3-DaGd-2, ENABLED WENABLE
                MODIFY Screen3-DaEf-NPA, ENABLED WENABLE
           END-IF.
           IF TYP-MBDI NOT = 1 AND NOT = 3              
                MOVE 0 TO IFA-MBDI
           END-IF
           IF WENABLE = 1 
                PERFORM Mep-Enable-IFA
           END-IF.
           PERFORM Mep-Visible-Pb-Facaco.

       Screen3-Enable-Cop.
           IF TYP-MBDI = 1 OR 3
                MODIFY Screen3-DaRb-IFA0, ENABLED WENABLE-3
                MODIFY Screen3-DaRb-IFA1, ENABLED WENABLE-3
                MODIFY Screen3-Cm-MFA, ENABLED WENABLE-3
                MODIFY Screen3-DaRb-ADF0, ENABLED WENABLE-3
                MODIFY Screen3-DaRb-ADF1, ENABLED WENABLE-3
                IF AUTO-TFA = 2 
                     MODIFY Screen3-Cm-TFA, ENABLED FALSE
                ELSE MODIFY Screen3-Cm-TFA, ENABLED WENABLE-3
                END-IF
           ELSE MODIFY Screen3-DaRb-IFA0, ENABLED FALSE
                MODIFY Screen3-DaRb-IFA1, ENABLED FALSE
                MODIFY Screen3-Cm-MFA, ENABLED FALSE
                MODIFY Screen3-DaRb-ADF0, ENABLED FALSE
                MODIFY Screen3-DaRb-ADF1, ENABLED FALSE
                MODIFY Screen3-Cm-TFA, ENABLED FALSE.

      *****************************************
      *    GESTION DE LA GRILLE PAIEMENTS     *
      *****************************************
       Remp-Grille-Pai.
           MODIFY Screen3-DaGd-2, RESET-GRID = 1 
           PERFORM Acu-Screen3-DaGd-2-Content
           MOVE 0 TO Screen3-DaGd-2-Cursor-X-Old
                     Screen3-DaGd-2-Cursor-Y-Old W-NPA
           PERFORM VARYING INDICE-PAI FROM 1 BY 1 UNTIL INDICE-PAI > 5
                PERFORM Remp-Une-Ligne-Pai
           END-PERFORM.
           MODIFY Screen3-DaGd-2, NUM-ROWS (W-NPA + 1).

       Remp-Une-Ligne-Pai.
           MOVE SPACE TO LIGNE-AF-PAI        
           IF IT-PAI(INDICE-PAI)= ZERO
           AND (INDICE-PAI > 1 OR LPA-MBDI = SPACE)
              EXIT PARAGRAPH
           END-IF.

           MOVE IT-PAI(INDICE-PAI) TO DaGD-2-Col-PAI
           IF IT-PAI(INDICE-PAI) = ZERO OR > 9
                MOVE LPA-MBDI TO DaGD-2-Col-LIBPAI
           ELSE MOVE IT-PAI(INDICE-PAI) TO COD-TPA
                move lib-paiement(COD-TPA) tO DaGD-2-Col-LIBPAI
           END-IF.

           PERFORM Mep-Ech-et-Ter

           MOVE IT-POU(INDICE-PAI) TO DaGD-2-Col-Pou

           IF IT-MON(INDICE-PAI) = 0 
              COMPUTE IT-MON(INDICE-PAI) ROUNDED = TOT-NET 
                        * IT-POU(INDICE-PAI) / 100
           END-IF
           
           MOVE IT-MON(INDICE-PAI) TO DaGD-2-Col-Mon

           MODIFY Screen3-DaGd-2, RECORD-TO-ADD = Ligne-Af-Pai.
           ADD 1 TO W-NPA.

       Mep-Ech-et-Ter.
           MOVE IT-ECH(INDICE-PAI) TO DaGD-2-Col-ECH
           ADD 1 IT-ECH(INDICE-PAI) GIVING W-ECH
           IF IT-ECH(INDICE-PAI) = 9
                MOVE IT-ECH(INDICE-PAI) TO DaGD-2-Col-NJE
                MOVE ELT-LNJE-ECH(W-ECH) TO DaGD-2-Col-LNJE
           ELSE
                MOVE ELT-NJE-ECH(W-ECH) TO DaGD-2-Col-NJE
                MOVE ELT-LNJE-ECH(W-ECH) TO DaGD-2-Col-LNJE
           END-IF.

           MOVE IT-TER(INDICE-PAI) TO DaGD-2-Col-TER
           ADD 1 IT-TER(INDICE-PAI) GIVING W-TER
           MOVE ELT-TER(W-TER) TO DaGD-2-Col-LIBTER

           MOVE IT-ECH(INDICE-PAI) TO W-ECH
           MOVE IT-TER(INDICE-PAI) TO W-TER
           MOVE DAT-MBDI TO W-D-ECH
           PERFORM D-CAL-ECHEA THRU F-CAL-ECHEA
           MOVE W-D-ECH TO D-SAMJ
           PERFORM CONVDAT-SAMJ-JMSA
           MOVE D-JMSA TO DaGD-2-Col-DAE.

       Show-Bitmap.
           
       Screen3-DaGd-2-Ev-Msg-Bitmap-Clicked.

       Screen3-DaGd-2-Ev-Msg-Goto-Cell.
           IF Event-Data-1 = Screen3-DaGd-2-Cursor-X-Old
           AND Event-Data-2 = Screen3-DaGd-2-Cursor-Y-Old
               EXIT PARAGRAPH.

           MOVE Event-Data-1 TO Screen3-DaGd-2-Cursor-X-Old WCOL
           MOVE Event-Data-2 TO Screen3-DaGd-2-Cursor-Y-Old WLIG.
           ADD -1 Event-Data-2 GIVING INDICE-PAI

              | Saisie sur ligne seulement si ligne au-dessus remplie
           IF (Event-Data-2 > 2 AND IT-PAI(INDICE-PAI - 1) = 0)     
              | Colonnes échéance, terme, montant si paiement renseigné
           OR (Event-Data-1 > 2 AND 
               ((INDICE-PAI > 1 AND IT-PAI(INDICE-PAI) = 0)
                OR (INDICE-PAI = 1 AND IT-PAI(INDICE-PAI) = 0
                    AND W-LPA = SPACE)))
           OR (INDICE-PAI > W-NPA) 
              PERFORM Mistral-TransferFocusBack
              EXIT PARAGRAPH.

            | Saisie sur ligne seulement si ligne au-dessus remplie
           IF (Event-Data-1 = 5 OR 7 OR 8)| OR 10)
           OR (Event-Data-1 = 10 AND TFA-MBDI NOT = 1)
           OR (Event-Data-1 = 2 AND IT-PAI(1) NOT = ZERO)
           | Colonne nombre de jours seulement si ECH-MBDI = 9
           OR (Event-Data-1 = 4 AND IT-ECH(INDICE-PAI) NOT = 9)
              | Colonne libellé de paiement seulement sur ligne 2
              | et si mode de paiement = 00
           OR (Event-Data-1 = 2 AND Event-Data-2 NOT = 2)      
              PERFORM Mistral-TransferFocus
              EXIT PARAGRAPH.

           IF INDICE-PAI = W-NPA AND Event-Data-1 = 9
              PERFORM Recal-Echeances
              EXIT PARAGRAPH
           END-IF

           PERFORM Show-Bitmap.

       Recal-Echeances.
           MOVE 0 TO W-MON W-MOB
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > (W-NPA - 1)
               ADD IT-POU(I) TO W-MON 
               IF IT-MON(I) = 0
                  COMPUTE IT-MON(I) ROUNDED = TOT-NET * IT-POU(I) / 100
                  MOVE IT-MON(I) TO DaGd-2-Col-MON
                  MODIFY Screen3-DaGd-2(I + 1, 10), 
                      CELL-DATA DaGd-2-Col-MON
               END-IF
               ADD IT-MON(I) TO W-MOB
           END-PERFORM
           IF W-MON > 100 OR W-NPA < 1 OR > 5 EXIT PARAGRAPH
           END-IF
           COMPUTE IT-POU(W-NPA) = 100 - W-MON
           MOVE IT-POU(W-NPA) TO DaGd-2-Col-POU
           MODIFY Screen3-DaGd-2(W-NPA + 1, 9), 
                  CELL-DATA DaGd-2-Col-POU
           COMPUTE IT-MON(W-NPA) = TOT-NET - W-MOB
           MOVE IT-MON(W-NPA) TO DaGd-2-Col-MON
           MODIFY Screen3-DaGd-2(W-NPA + 1, 10), 
                      CELL-DATA DaGd-2-Col-MON.

       Screen3-DaGd-2-Ev-Msg-Finish-Entry.
           ADD -1 Event-Data-2 GIVING INDICE-PAI

           IF WCOL = 1
               INQUIRE Screen3-DaGd-2(WLIG WCOL), CELL-DATA IN COD-TPA
               if cod-tpa > 0 and < 10
                   move lib-paiement(COD-TPA) tO DaGD-2-Col-LIBPAI
                   MOVE COD-TPA TO IT-PAI(INDICE-PAI)
                   MODIFY Screen3-DaGd-2 (WLIG, 1), CELL-DATA COD-TPA
                   MODIFY Screen3-DaGd-2 (WLIG, 2), 
                      CELL-DATA DaGD-2-Col-LIBPAI
               else
                  MODIFY Screen3-DaGd-2 (WLIG, 1), CELL-DATA space
                   MODIFY Screen3-DaGd-2 (WLIG, 2), 
                      CELL-DATA space
               end-if
               EXIT PARAGRAPH.

           IF WCOL = 2 AND WLIG = 2
               INQUIRE Screen3-DaGd-2(WLIG WCOL), CELL-DATA IN W-LPA
               EXIT PARAGRAPH.

           IF WCOL = 3
               INQUIRE Screen3-DaGd-2(WLIG WCOL), CELL-DATA IN W-ECH   
               MOVE W-ECH TO IT-ECH(INDICE-PAI)
               PERFORM Mep-Ech-et-Ter
               MODIFY Screen3-DaGd-2 (WLIG, 4)
                      CELL-DATA DaGD-2-Col-NJE
               MODIFY Screen3-DaGd-2 (WLIG, 5)
                      CELL-DATA DaGD-2-Col-LNJE
               MODIFY Screen3-DaGd-2 (WLIG, 8)
                      CELL-DATA DaGD-2-Col-DAE
               IF W-ECH = 9
                  MODIFY Screen3-DaGd-2,
                         CURSOR-X = 4, CURSOR-Y = WLIG
                  MOVE WLIG TO Screen3-DaGd-2-Cursor-Y-Old
               END-IF
               EXIT PARAGRAPH.

           IF WCOL = 4
               INQUIRE Screen3-DaGd-2(WLIG WCOL), CELL-DATA IN W-NJE-ECH
               IF W-NJE-ECH <= 60
                  MOVE W-NJE-ECH TO IT-NJE(INDICE-PAI)
                  PERFORM Mep-Ech-et-Ter
                  MODIFY Screen3-DaGd-2 (WLIG, 8),
                         CELL-DATA DaGD-2-Col-DAE
               ELSE
                  MODIFY Screen3-DaGd-2,
                         CURSOR-X = WCOL, CURSOR-Y = WLIG
                  MOVE WLIG TO Screen3-DaGd-2-Cursor-Y-Old
               END-IF
               EXIT PARAGRAPH.

           IF WCOL = 6
               INQUIRE Screen3-DaGd-2(WLIG WCOL), CELL-DATA IN W-TER
               IF W-TER > 6
                  MODIFY Screen3-DaGd-2,
                         CURSOR-X = WCOL, CURSOR-Y = WLIG
               ELSE
                  MOVE W-TER TO IT-TER(INDICE-PAI)
                  PERFORM Mep-Ech-et-Ter
                  MODIFY Screen3-DaGd-2 (WLIG, 7),
                      CELL-DATA DaGD-2-Col-LIBTER
                  MODIFY Screen3-DaGd-2 (WLIG, 8),
                      CELL-DATA DaGD-2-Col-DAE
               END-IF
               EXIT PARAGRAPH.

           IF WCOL = 9
      *         INQUIRE Screen3-DaGd-2(WLIG WCOL), CELL-DATA IN W-MON
               INQUIRE Screen3-DaGd-2(WLIG WCOL), CELL-DATA ZC-NUM-ENT
               COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                    REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                              ==CPYNUM-FIC==  BY ==W-MON==.
               IF W-MON > 100 MOVE 0 TO W-MON
               END-IF
               MOVE W-MON TO IT-POU(INDICE-PAI) DaGd-2-Col-POU
               MODIFY Screen3-DaGd-2(WLIG WCOL), 
                      CELL-DATA DaGd-2-Col-POU
               COMPUTE IT-MON(INDICE-PAI) ROUNDED = TOT-NET 
                        * IT-POU(INDICE-PAI) / 100
               MOVE IT-MON(INDICE-PAI) TO DaGd-2-Col-MON
               MODIFY Screen3-DaGd-2(WLIG 10), 
                      CELL-DATA DaGd-2-Col-MON
               EXIT PARAGRAPH.

           IF WCOL = 10 
      *         INQUIRE Screen3-DaGd-2(WLIG WCOL), CELL-DATA IN W-MON
               INQUIRE Screen3-DaGd-2(WLIG WCOL), CELL-DATA ZC-NUM-ENT
               COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                    REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                              ==CPYNUM-FIC==  BY ==W-MON==.
               IF W-MON > TOT-NET MOVE 0 TO W-MON
               END-IF
               IF W-MON = IT-MON(INDICE-PAI)
                  EXIT PARAGRAPH
               END-IF
               MOVE W-MON TO IT-MON(INDICE-PAI) DaGd-2-Col-MON
               MODIFY Screen3-DaGd-2(WLIG WCOL), 
                      CELL-DATA DaGd-2-Col-MON
               COMPUTE IT-POU(INDICE-PAI) ROUNDED =  
                       IT-MON(INDICE-PAI) / TOT-NET * 100
               MOVE IT-POU(INDICE-PAI) TO DaGd-2-Col-POU
               MODIFY Screen3-DaGd-2(WLIG 9), 
                      CELL-DATA DaGd-2-Col-POU
               EXIT PARAGRAPH.

       Screen3-DaGd-2-Ev-Msg-Begin-Entry.
           IF Event-Data-2 < 2
              SET EVENT-ACTION TO EVENT-ACTION-FAIL
              EXIT PARAGRAPH.

           ADD -1 Event-Data-2 GIVING INDICE-PAI

      *    Saisie sur ligne seulement si ligne au-dessus remplie
           IF (Event-Data-2 > 2 AND IT-PAI(INDICE-PAI - 1) = 0)
      *    Colonne libellé de paiement seulement sur ligne 2
      *    et si mode de paiement = 00
           OR (Event-Data-1 = 2 AND Event-Data-1 NOT = 2)
           OR (Event-Data-1 = 2 AND IT-PAI(1) NOT = ZERO)
      *    Colonne nombre de jours seulement si ECH-MBDI = 9
           OR (Event-Data-1 = 4 AND IT-ECH(INDICE-PAI) NOT = 9)
020507*     OR (Event-Data-1 = 10) 
           OR (Event-Data-1 = 10 AND TFA-MBDI NOT = 1)
           OR (INDICE-PAI = W-NPA AND Event-Data-1 = 9)
              SET EVENT-ACTION TO EVENT-ACTION-FAIL
              EXIT PARAGRAPH.

       Screen3-DaGd-2-Aft-Procedure.
           PERFORM Recal-Echeances
           IF W-MON > 100
              MOVE "Total des pourcentages > 100 " TO ACU-MSG-1
              PERFORM MSG-ERREUR
              MOVE EVENT-ACTION-TERMINATE TO EVENT-ACTION
              MOVE 4 TO ACCEPT-CONTROL
              MOVE 62 TO CONTROL-ID
              EXIT PARAGRAPH
           END-IF.

      *****************************************
      *    GESTION DES BOUTONS DE L'ECRAN 3   *
      *****************************************
       Screen3-Pb-Modifier-LinkTo.
      *     inquire Screen3-Pb-Modifier, visible in W-vs-pb
      *     if w-vs-pb = 0 exit paragraph
      *     end-if

           MOVE CHOIX-M TO CDF-FONCTION
           PERFORM Test-Auto-Fonction
           IF OK-Fonction = 0 EXIT PARAGRAPH
           END-IF
           PERFORM Lock-Entete
           IF W-IND = 1 
              EXIT PARAGRAPH
           END-IF

060411
           IF BML-MAGD = 1 
191118* supprimé dans le cadre de la restandardisation de Topaz
      *     OR MODU-M3 = 1
              PERFORM Controle-Marge-Une
           END-IF
           PERFORM Controle-Marge                 
           IF ATTENTE-MARGE = 1 MOVE 1 TO ATTENTE
           END-IF
060411
           MOVE CHOIX-M TO CDF
           MOVE 1 TO WENABLE
           MOVE ENR-MBDI TO SV-ENR-MBDI
           PERFORM Screen3-Enable
           MODIFY Screen3-Pb-Sauvegarder, ENABLED TRUE
           MODIFY Screen3-Pb-Modifier, ENABLED FALSE
           MODIFY Screen3-Pb-Imprimer, ENABLED FALSE
           PERFORM Change-Color-Grid.
                
       Screen3-Pb-Sauvegarder-Link.
      *     inquire Screen3-Pb-Sauvegarder, visible in W-vs-pb
      *     if w-vs-pb = 0 exit paragraph
      *     end-if
           PERFORM MAJ-PIED
           IF W-IND NOT = 0 EXIT PARAGRAPH
           END-IF

           PERFORM Controle-Workflow
           UNLOCK MXLDIS
           MOVE 0 TO WENABLE
           PERFORM Screen3-Enable
           MOVE CHOIX-I TO CDF
           MODIFY Screen3-Pb-Modifier, ENABLED TRUE           
           MODIFY Screen3-Pb-Sauvegarder, ENABLED FALSE
           MODIFY Screen3-Pb-Imprimer, ENABLED TRUE.

       Screen3-DaRb-IFA1-Ev-Cmd-Clicked.
           IF IFA-MBDI = 0 
              MOVE TFA-MCLD TO TFA-MBDI
              IF W-MM = MOI-MPAR 
              AND W-AA = ANN-MPAR
                   MOVE PER-C TO PER-MBDI
              ELSE MOVE PER-1 TO PER-MBDI
              END-IF
           END-IF
           PERFORM Mep-Cm-MFA
           PERFORM Mep-Cm-TFA
           MOVE 1 TO IFA-MBDI
           PERFORM Mep-Enable-IFA.

       Screen3-DaRb-IFA0-Ev-Cmd-Clicked.
           MOVE 0 TO IFA-MBDI PER-MBDI TFA-MBDI
           PERFORM Mep-Cm-MFA
           PERFORM Mep-Cm-TFA
           PERFORM Mep-Enable-IFA.

       Mep-Enable-IFA.
           IF AUTO-TFA = 2 
                MODIFY Screen3-Cm-TFA, ENABLED FALSE
           ELSE MODIFY Screen3-Cm-TFA, ENABLED IFA-MBDI
           END-IF
      *     MODIFY Screen3-Cm-Tfa, ENABLED IFA-MBDI
           MODIFY Screen3-Cm-Mfa, ENABLED IFA-MBDI
           MODIFY Screen3-DaRb-ADF0, ENABLED IFA-MBDI
           MODIFY Screen3-DaRb-ADF1, ENABLED IFA-MBDI.

       Screen3-DaCb-MPA-Click.
           INQUIRE Screen3-DaCb-MPA, VALUE IN Screen3-DaCb-MPA-BUF
            IF Screen3-DaCb-MPA-BUF = 1
              MOVE 4 TO MPA-MBDI
              MODIFY Screen3-DaEf-NPA, ENABLED 0, VALUE 1
              MOVE 1 TO W-NPA
              PERFORM RAZ-PAI VARYING I FROM 1 BY 1 UNTIL I > 5
              MODIFY Screen3-DaGd-2, ENABLED 0
              MOVE PAI-MCLI TO IT-PAI(1)
              MOVE ECH-MCLI TO IT-ECH(1)
              MOVE TER-MCLI TO IT-TER(1)
              PERFORM Remp-Grille-Pai
           ELSE
              MOVE 2 TO MPA-MBDI
              MODIFY Screen3-DaEf-NPA, ENABLED 1, VALUE 1
              MODIFY Screen3-DaGd-2, ENABLED 1
              MOVE 1 TO W-NPA
              MOVE PAI-MCLD TO IT-PAI(1)
              MOVE ECH-MCLD TO IT-ECH(1)
              MOVE TER-MCLD TO IT-TER(1)
              PERFORM Remp-Grille-Pai
           END-IF.

       Screen3-DaEf-NPA-Ev-Ntf-Changed.
           INQUIRE Screen3-DaEf-NPA, VALUE IN W-NPA
           IF W-NPA < 1 OR > 5 
               EXIT PARAGRAPH
           END-IF
           ADD 1 TO W-NPA
           PERFORM RAZ-PAI VARYING I FROM W-NPA BY 1 UNTIL I > 5
           ADD -1 TO W-NPA. 
           MODIFY Screen3-DaGd-2, NUM-ROWS (W-NPA + 1).
             
       Screen3-Cm-TFA-Aft-Procedure.
           INQUIRE Screen3-Cm-Tfa, VALUE IN Cm-TFA-Items(1)
           MOVE Cm-TFA-COD(1) TO TFA-MBDI 
           IF IFF-MCLD = 0 OR TFA-MBDI NOT = 1
           OR (TYC-MBDI NOT = 2 AND PFF-MPAD = 1)
                PERFORM Cal-Totaux
                MOVE TOT-FFA TO Screen3-DaEf-FFA-BUF 
                MODIFY Screen3-DaEf-FFA, ENABLED FALSE, 
                       VALUE Screen3-DaEf-FFA-BUF
           ELSE
                MODIFY Screen3-DaEf-FFA, ENABLED TRUE
           END-IF.
      *
       Screen3-Cm-TFA-Ev-Ntf-Selchange.
           IF IFF-MCLD = 0 OR Event-data-1 NOT = 1
           OR (TYC-MBDI NOT = 2 AND PFF-MPAD = 1)
                MODIFY Screen3-DaEf-FFA, ENABLED FALSE
           ELSE
                MODIFY Screen3-DaEf-FFA, ENABLED TRUE
           END-IF.

       Screen3-DaEf-ACO-Aft-Procedure.
171014
           INQUIRE Screen3-DaEf-ACO, VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==EF-MON==.
           MODIFY Screen3-DaEf-ACO, VALUE EF-MON
171014
           MOVE EF-MON TO ACO-MBDI
           PERFORM Cal-Totaux.
           PERFORM Recal-Echeances.
           PERFORM Mep-Visible-Pb-Facaco.

       Screen3-DaEf-FFA-Aft-Procedure.
171014
           INQUIRE Screen3-DaEf-FFA, VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==EF-MON==.
           MODIFY Screen3-DaEf-FFA, VALUE EF-MON
171014
           MOVE EF-MON TO FFA-MBDI
           PERFORM Cal-Totaux.
           PERFORM Recal-Echeances.

       Raz-PAI.
           MOVE 0 TO IT-PAI(I) IT-NJE(I) IT-PAI(I) IT-ECH(I)
                     IT-TER(I) IT-POU(I) IT-MON(I).
           ADD 1 I GIVING J       
           MODIFY Screen3-DaGd-2, RECORD-TO-DELETE = J.

       ERREUR.
           MOVE "ERREUR:" TO ACU-MSG-1
           PERFORM MSG-ERREUR
           PERFORM CLOSE-FILE-RTN

           PERFORM RESTORE-PALETTE
           GO ACU-EXIT-RTN.
      
       Screen2-DaEf-Ags-Ev-Msg-Validate.
           INQUIRE Screen2-DaEf-Ags, value in LK-LISTE-COD(1)
           IF LK-LISTE-COD(1) = AGS-MLDI EXIT PARAGRAPH
           END-IF
           PERFORM Apres-AGS.

       Screen2-Pb-Ags-Link.

       Apres-AGS.
           PERFORM Ligne-Modifiee
           IF LK-LISTE-COD(1) = SPACE MOVE W-AGE TO LK-LISTE-COD(1)
           END-IF
           MOVE LK-LISTE-COD(1) TO AGE-MASA COD-MAGC2
           MOVE ART-MLDI TO COD-MASA
           PERFORM Lect-Agence2
           IF STC-MAGC <> STC-MAGC2 AND LCO-MPAR = 1 
           AND GVIA-MPAD <> 1
                MOVE SPACE TO AGS-MLDI ENR-MAGC2
                MOVE SPACE TO LK-LISTE-COD(1)
                MODIFY Screen2-DaEf-Ags, value space
           END-IF
           IF COD-MASA = SPACE
                MOVE LK-LISTE-COD(1) TO AGS-MLDI                 
                MODIFY Screen2-DaEf-Ags, value ABR-MAGC2
                EXIT PARAGRAPH
           END-IF
           PERFORM TEST-ARTSA
           IF W-OK-ASA = 0 
                MOVE SPACE TO AGS-MLDI
                MODIFY Screen2-DaEf-Ags, value space
           ELSE MOVE LK-LISTE-COD(1) TO AGS-MLDI  
                MODIFY Screen2-DaEf-Ags, value ABR-MAGC2
           END-IF.
           PERFORM Affich-Sto.

       TEST-ARTSA.
           MOVE 1 TO W-OK-ASA
           MOVE AGE-MASA TO W-AGEASA
           MOVE COD-MASA TO W-CODASA
           READ MXARTSA INVALID 
                IF MOB-PALM = 0
                  PERFORM MESSAGE-CRE-ARTSA
                  IF ACU-RETURN-VALUE = 2 MOVE 0 TO W-OK-ASA
                  ELSE                    PERFORM CRE-ARTSA
                  END-IF
                END-IF
           END-READ
           PERFORM STAT.

       MESSAGE-CRE-ARTSA.
           move space to acu-msg-1
           string "Article" " " W-CODASA delimited by size 
                  into acu-msg-1
           move "non créé dans le stock" to acu-msg-2
           MOVE "A créer? " to acu-msg-3
           PERFORM msg-ON.

       CRE-ARTSA.
           INITIALIZE ENR-MASA
           MOVE W-AGEASA TO AGE-MASA
           MOVE W-CODASA TO COD-MASA
210806     MOVE 1        TO STO-MASA
160109     ACCEPT DME-MASA FROM CENTURY-DATE
           WRITE ENR-MASA 
           PERFORM STAT.
       
       TEST-STOAN.

      ******************************************************************
      *                   TRAITEMENT PROMOTIONS                        *
      ******************************************************************
       Trait-Promo-Bdi.

       Lect-Promo-Bdi.

      ******************************************************************
       Cal-Prix-Fonction-Quantite.
           IF INP-MLDI NOT = PRODUIT-A 
           OR ((INO-MART = 1 OR 2) AND MOP-MART NOT = 1)
                MODIFY Screen2-La-Promo, Visible 0
                PERFORM Calcul-Et-Affiche-Prix
                EXIT PARAGRAPH
           END-IF

           IF W-ART(1:4) NUMERIC 
                MOVE CRC-MFAM TO CRC-MART
                PERFORM CAL-PV-ART-D-CASCADE
                MOVE W-REM TO REM-MLDI
                MOVE 0 TO IPNS-MLDI
                PERFORM Calcul-Et-Affiche-Prix
             EXIT PARAGRAPH
           END-IF.

           IF (PRO-MLDI = ZERO AND (ITC-MART = 1 OR 2) 
              )
                IF REM-MCLD = 0
                OR (BFC-MCLD = 6 AND TAG-MFAM = 0)
                OR (BFC-MCLD = 8 AND (TAG-MFAM = 0 OR GMR-MPAR = 1))
                   PERFORM CAL-PV-ART-D-CASCADE
                   MOVE W-REM TO REM-MLDI
                   MOVE 0 TO IPNS-MLDI
                END-IF
           END-IF.

           IF PRO-MLDI = ZERO AND (ITC-MART = 1 OR 2) 
           AND BFC-MCLD < 2    
                PERFORM LECT-TARCOL THRU F-LECT-TARCOL.
           MOVE 0 TO WVISIBLE-PRO

           IF PRO-MLDI <> 0 
              MOVE 0 TO IPNS-MLDI
           END-IF

           MODIFY Screen2-La-Promo, Visible Wvisible-Pro
           PERFORM Calcul-Et-Affiche-Prix.
           
       LECT-TARCOL.
           MOVE QTE-MLDI TO WQTE-MTSE
           PERFORM LECT-WTARCOL THRU F-LECT-WTARCOL.
      *    POur Hydraparts pour voir la remise quantitaive
      *     MOVE WPRI-MTSE TO PUB-MLDI.
           IF ITC-MART = 2 
                MOVE PVN-MART(WT) TO PUB-MLDI
                MOVE 0 TO IPNS-MLDI
           ELSE IF WT <> 0
050907*    Pour Hydraparts pour ne pas prendre la remise du tarif à 
050907*    colonnes si elle n'est pas supérieure à celle de la grille
050907               IF (PVT-MART = PUB-MLDI 
050907                   AND RTG-MART(WT) > REM-MLDI)
050907               OR (PVT-MART NOT = PUB-MLDI)
                          MOVE PVT-MART TO PUB-MLDI
                          MOVE RTG-MART(WT) TO REM-MLDI
050907               END-IF
                ELSE MOVE WPRI-MTSE TO PUB-MLDI
                END-IF
                MOVE 0 TO IPNS-MLDI
           END-IF.
       F-LECT-TARCOL.
           EXIT.

      ******************************************************************
      *                       RUPTURE DE STOCK                         *
      ******************************************************************
       Controle-Stock.
           MOVE ART-MLDI TO W-ART-RUP
           MOVE DES-MART TO W-DES-RUP

           MOVE 0 TO W-STO W-STC

           IF (TYP-MBDI = 3 OR 8)
           OR (TYP-MBDI = 0 AND MODU-M3 = 0)
           OR (INP-MLDI NOT = PRODUIT-A)
           OR (TLI-MLDI NOT = 1 AND MODU-M3 = 0)
           |pour M3: pas de sortie du stock central si pas de stock
           OR (TLI-MLDI NOT = 1 AND NOT = 3 AND MODU-M3 = 1)
           OR (TLI-MLDI = 3 AND TBP-MLDI NOT = 1 AND MODU-M3 = 1)
           OR (PZE-MLDI = 4)
           OR (ART-MLDI(1:4) NUMERIC)
           OR (STO-MASA = 2)
           OR (QTE-MLDI < 0 AND IRPM-MLDI = 1) | reprise
141014     OR (MODU-DECO = 1 AND NAT-MART = 2) | déconstruction
                EXIT PARAGRAPH
           END-IF

           PERFORM Cal-Sto

           IF W-STO NOT < ZERO 
              EXIT PARAGRAPH
           END-IF      

           IF W-Affiche = 1 
              PERFORM Acu-ScreenRup-Routine
              IF W-SST = 3 MOVE 0 TO W-STO
              END-IF
           END-IF
           IF (TLI-MLDI = 3 AND MODU-M3 = 0)
           OR (TLI-MLDI = 3 AND TBP-MLDI NOT = 1 AND MODU-M3 = 1)
           OR PZE-MLDI = 4 
              MOVE 0 TO W-STO
           END-IF.
           IF TLI-MLDI = 3  
              PERFORM Cal-Delai
           END-IF.

       ScreenRUP-Bef-Create.
           MOVE 0 TO W-SST.


       ScreenRUP-Aft-Initdata.
261219     MOVE ScreenRUP-Handle TO MCF-HANDLE-FS
261219     PERFORM MisCentreFenetre
           IF SV-STO > 0
           AND TEST-TOUT = 0
           AND INO-MART = 0
           AND AUTO-LP = 1
           AND TYP-MBDI = 1
                MODIFY ScreenRUP-Pb-LivPart, VISIBLE 1
           END-IF
      
           IF STN-MPAR = 1 
                MODIFY ScreenRUP-Pb-Sortie, ENABLED FALSE
           ELSE MOVE 4 TO ACCEPT-CONTROL
                MOVE 2 TO CONTROL-ID
           END-IF
           IF W-LIE = 1 AND LCF-MLDI = 0
              MODIFY ScreenRUP-Pb-Cde, ENABLED FALSE
              MODIFY ScreenRUP-Pb-LivPart, VISIBLE 0
           END-IF

           IF TYP-MBDI NOT = 1
              modify ScreenRUP-Pb-Vmanque, visible 0
           end-if

           IF IND-AUTO-ANNUL = 1
              MODIFY ScreenRUP-Pb-LivPart, VISIBLE 0
              MODIFY ScreenRUP-Pb-Annuler, VISIBLE 0
           END-IF
           IF IND-AUTO-ANNUL = 2
              MODIFY ScreenRUP-Pb-LivPart, VISIBLE 0
           END-IF

           move space to w-str
           IF UAC-MART > 1
              move uac-mart to A4
              string "Commande" w-newline "fournisseur"
              w-newline "par" A4 
              delimited by "      "
              into w-str
           end-if
           modify ScreenRUP-La-UAC, TITLE w-str
271016
           move space to w-str
           IF NUU-MART > 0 AND <> 1
           AND W-AR1 NOT NUMERIC
              move nuu-mart to D44
              if d44(5:5) = ",0000" move space to d44(5:5)
              end-if
              if d44(7:3) = "000" move space to d44(7:3) 
              end-if
              if d44(8:2) = "00" move space to d44(8:2) 
              end-if
              if d44(9:1) = "0" move space to d44(9:1) 
              end-if
              string 
              "Nb UV//UA" w-newline 
              D44 
              delimited by "      "
              into w-str
           end-if
           modify ScreenRUP-La-NUU, TITLE w-str
           .   
        
       ScreenRUP-Pb-Annuler-Link.
           MOVE 2 TO W-SST.
           PERFORM Acu-ScreenRup-Exit.
      
       ScreenRUP-Pb-Vmanque-Link.
           MOVE 4 TO PZE-MLDI
           MOVE 1 TO CVM-MLDI
           PERFORM Acu-ScreenRup-Exit.
      
      *
       ScreenRUP-Pb-LivPart-Link.
           move sv-sto to sst-qtl
           compute sst-qtc = qte-mldi - sst-qtl

           modify ScreenRUP-Ef-QTL, VISIBLE 1, VALUE SST-QTL
           modify ScreenRUP-La-QTL, VISIBLE 1
           modify ScreenRUP-Ef-QTC, VISIBLE 1, VALUE SST-QTC
           modify ScreenRUP-La-QTC, VISIBLE 1
           modify ScreenRUP-Pb-Vmanque, VISIBLE 0
           modify ScreenRUP-Pb-Annuler, VISIBLE 0
           modify ScreenRUP-Pb-ValidLP, VISIBLE 1
           modify ScreenRUP-Pb-AnnulLP, VISIBLE 1
           MOVE 0 TO INDIC-BT
           PERFORM Mistral-TransferFocus
           .

       ScreenRUP-Pb-AnnulLP-Link.
           IF INDIC-BT = 1
              modify ScreenRUP-La-QTL,    visible 0
              modify ScreenRUP-Pb-Cde,    visible 1
              MOVE 0 TO INDIC-BT
           END-IF
           if typ-mbdi = 1
              modify ScreenRUP-Pb-Vmanque, VISIBLE 1
           end-if
           modify ScreenRUP-Pb-Annuler, VISIBLE 1
           modify ScreenRUP-Pb-ValidLP, VISIBLE 0
           modify ScreenRUP-Pb-AnnulLP, VISIBLE 0.

       ScreenRUP-Pb-ValidLP-Link.
           IF INDIC-BT = 1 
              MOVE ScreenRUP-Rb-TBP-Value TO TBP-MLDI
310817*        IF ((TBP-MLDI < 2 OR > 3) AND NEWTOP-MPAR <> 1)
310817*        OR ((TBP-MLDI < 2 OR > 4) AND NEWTOP-MPAR = 1)
              IF (TBP-MLDI < 2 OR > 4)
                 EXIT PARAGRAPH
              END-IF
              IF (IND-AUTO-ANNUL = 1 OR 2) AND IND-ADRD = 0
                 PERFORM Lect-TYPCDC 
                 PERFORM Recherche-TCF
              END-IF
              PERFORM Acu-ScreenRup-Exit
              EXIT PARAGRAPH
           END-IF
           inquire ScreenRUP-Ef-QTL, VALUE SST-QTL
           inquire ScreenRUP-Ef-QTC, VALUE SST-QTC
           MOVE 1 TO TLI-MLDI
           MOVE 3 TO W-SST.
           PERFORM Acu-ScreenRup-Exit.

       ScreenRUP-Pb-Cde-Link.
           IF TLI-MLDI NOT = 3 OR DCO-MLDI = 0
              MOVE W-DAT TO DCO-MLDI
           END-IF
           MOVE 3 TO TLI-MLDI
           MOVE TCC-MBDI TO TCC-MLDI

           IF TBP-MBDI = 0 
              MOVE TBP-MBDI TO TBP-MLDI             
           END-IF
           IF MODU-M3 = 1
              IF TBP-MLDI = 1 MOVE 3 TO TBP-MLDI
              END-IF
              evaluate Key-Status 
              when 6703 MOVE TCC-Urgent  TO TCC-MLDI
              when 6773 MOVE TCC-Stock   TO TCC-MLDI
              when other MOVE TCC-Normal TO TCC-MLDI
              END-EVALUATE
           END-IF
           IF PZE-MLDI = 4 MOVE 0 TO PZE-MLDI
           END-IF

           PERFORM Acu-ScreenRup-Exit.
 
       ScreenRUP-Pb-Sortie-Link.
           MOVE 1 TO W-SST
           PERFORM Acu-ScreenRup-Exit.
      
       Screen1-Ev-Cmd-Close.
           PERFORM Mistral-Windowclosing
           .

       MOVE-PERMIS-SBD.
      
      ******************************************************************
      *               GESTION DES COMPOSITIONS ARTICLES                *
      ******************************************************************
      *----------------- annulation lignes nomenclature ---------------*
       DEL-NOMLDIS.
       F-DEL-NOMLDIS.
           MOVE 0 TO INO-MLDI.
      *----------------- création nomenclature ------------------------*
       CRE-NOMLDIS.
       F-CRE-NOMLDIS.

      *
      *    Avant un call: créer la ligne si on n'est en création
      *
       Avant-Call.
           IF CDF = CHOIX-I 
              EXIT PARAGRAPH
           END-IF
           PERFORM Valid-Ligne
           MOVE 0 TO W-ICALL
           IF CDFL = CHOIX-C
              INQUIRE Screen2-DaGd-1, LAST-ROW IN WLAST-Row
              MOVE WLAST-Row TO Screen2-DaGd-1-Cursor-Y
              MODIFY Screen2-DaGd-1, Y = Screen2-DaGd-1-Cursor-Y,
                     ROW-COLOR = Screen2-DaGd-1-Row-Highlight-Color
              MOVE Screen2-DaGd-1-Cursor-Y 
                   TO Screen2-DaGd-1-Cursor-Y-Old
              MOVE "Z" TO CDFL
           END-IF.
      *
       TRAIT-NOMLDIS.

      ******************************************************************
      *              GESTION DES NUMEROS DE SERIE ARTICLES             *
      ******************************************************************
       TRAIT-MSPMAT.
       AVANT-MSPMAT.    
       CALL-MSPMAT.    
       Maj-Csorpm-Ldis.
       APRES-MSPMAT.
       DEL-MSPMAT.
       F-DEL-MSPMAT.

      * calcul nombre de n° série saisis 
       CAL-MSPMAT.
       F-CAL-MSPMAT.

      * reprise de petit matériel: contrôle de l'unicité du prix
       CONTROLE-VRH-MSPMAT.
       F-CONTROLE-VRH-MSPMAT.                                            

       Creat-Ligne-Reprise.

       Duplic-Mspmat-Reprise.
       F-Duplic-Mspmat-Reprise.
       
      ******************************************************************
      *               TEST POSSIBILITE FACTURE COMPTOIR                *
      ******************************************************************
       TEST8.
           IF W-AGSC <> SPACE AND AAS-MPAR NOT = 1
              MOVE 1 TO IND-AFF-STSC
           ELSE
              MOVE 0 TO IND-AFF-STSC
           END-IF
           MOVE 0 TO WVISIBLE-TYC8.
       F-TEST8.
      
      ******************************************************************
      *             TRANSFORMATION DEVIS --> COMMANDE --> B/L          *
      ******************************************************************
       ScreenLIV-Pb-Abandon-Link.
           MOVE 0 TO W-IND
           PERFORM ScreenLIV-Maj-Globale
           PERFORM Acu-ScreenLIV-Exit.

       ScreenLIV-Pb-Valider-Link.
           IF W-TYP = 0 
                MOVE "Confirmez-vous la mise en commande ?" TO Acu-Msg-1
           ELSE MOVE "Confirmez-vous la livraison ?" TO Acu-Msg-1
           END-IF
           PERFORM Msg-ONA
           IF Acu-Return-Value = 3 
              EXIT PARAGRAPH
           END-IF
           IF Acu-Return-Value = 2 
              PERFORM Acu-ScreenLIV-Exit
              EXIT PARAGRAPH
           END-IF
           PERFORM TRANSFERT-CD THRU F-TRANSFERT-CD
           PERFORM Acu-ScreenLIV-Exit.

       Init-Pour-Liv.
           MODIFY ScreenLIV-Gd-1, RESET-GRID = 1
           PERFORM Acu-ScreenLIV-Gd-1-Content
           IF W-TYP = 0
              MODIFY ScreenLIV-Gd-1(1 , 6), CELL-DATA = SPACE
           END-IF
           IF TYP-MBDI2 = 0
              MODIFY ScreenLIV-Gd-1(1 , 4), CELL-DATA = "PU Net HT"
           END-IF
           MOVE AGE-MBDI2 TO AGE-MLDI
           MOVE BON-MBDI2 TO BON-MLDI
           MOVE ZERO TO RAN-MLDI W-EOF 
           MOVE 1 TO D-INDICE
           START MXLDIS KEY NOT < CLE4-MLDI INVALID MOVE 1 TO W-EOF.
           IF W-EOF = 0
              READ MXLDIS NEXT END MOVE 1 TO W-EOF
              END-READ
              PERFORM STAT.
           PERFORM UNTIL W-EOF = 1 OR AGE-MLDI NOT = AGE-MBDI2
              OR BON-MLDI NOT = BON-MBDI2
              IF TYP-MBDI = 1 
                 MOVE W-AGS TO AGS-MLDI
                 MOVE W-DPS TO DEP-MLDI
              END-IF        
              PERFORM Lect-Art-Ou-Pre
              IF ART-MLDI(1:4) NOT NUMERIC 
270213        AND INP-MLDI = "A"
                 PERFORM Test-Societe-Agence
              END-IF
              PERFORM Maj-GrilleLiv
              MODIFY ScreenLiv-Gd-1, 
                     RECORD-TO-ADD = ScreenLIV-Gd-1-Record
              ADD 1 TO D-INDICE
              MODIFY ScreenLiv-Gd-1(D-INDICE, WCol-Bitmap),
                    BITMAP = COLISXX16-BMP
              IF INP-MLDI NOT = PRODUIT-C 
                 MODIFY ScreenLiv-Gd-1(D-INDICE, WCol-Rel),
                    BITMAP = RELIQOK16-BMP
                 MODIFY ScreenLiv-Gd-1(D-INDICE, WCol-IndRel),
                    CELL-DATA = 1
              END-IF
              READ MXLDIS NEXT END MOVE 1 TO W-EOF
              END-READ
              PERFORM STAT
           END-PERFORM.
       F-Init-Pour-Liv.

       Maj-GrilleLiv.
           MOVE SPACE TO ScreenLIV-Gd-1-Record
           IF INP-MLDI = PRODUIT-A
              MOVE PRODUIT-A TO GD-Liv-Col-Inp

              MOVE ART-MLDI TO COD-MART
              PERFORM Mep-Des-Art
              IF CLI-PALM = 850225 
              AND CO1-MART NOT NUMERIC
              AND RFI-MART NOT = SPACE
                   STRING RFI-MART " - " W-DES DELIMITED By "   "  
                   INTO GD-Liv-Col-Des
              ELSE MOVE W-DES TO GD-Liv-Col-Des
              END-IF
              IF (NAT-MGFA = 9 OR NAT-MART = 2)
              AND ART-MLDI(1:4) NOT NUMERIC
                 MOVE 1 TO Gd-Liv-Col-Pm.
           IF INP-MLDI = PRODUIT-P
              MOVE PRODUIT-P TO GD-Liv-Col-Inp
              MOVE PRE-MLDI TO COD-MPGE
              IF INL-MPGE NOT = 1
                   MOVE LIB-MPGE TO GD-Liv-Col-Des
              ELSE MOVE COM1-MLDI TO GD-Liv-Col-Des.
           IF INP-MLDI = PRODUIT-C
              MOVE "C" TO GD-Liv-Col-Inp
              MOVE DES-MLDI TO GD-Liv-Col-Des.
           STRING AR1-MLDI DELIMITED BY SIZE
                  " " DELIMITED BY SIZE
                  AR2-MLDI DELIMITED BY SIZE INTO GD-Liv-Col-Art
           MOVE QTE-MLDI TO D6 D62 W-QTE
           IF TYP-MBDI2 = 8 
                IF W-QTE2 = 0 MOVE D6 TO GD-Liv-Col-Qtd
                         ELSE MOVE D62 TO GD-Liv-Col-Qtd
                END-IF
           ELSE IF W-QTE2 = 0 MOVE D6 TO GD-Liv-Col-Qtc
                         ELSE MOVE D62 TO GD-Liv-Col-Qtc
                END-IF
           END-IF   
           MOVE ART-MLDI TO SV-ART-MLDI
           MOVE AGS-MLDI TO SV-AGS-MLDI
           MOVE DEP-MLDI TO SV-DEP-MLDI
           MOVE 0 TO SV-TLI-MLDI SV-QTE-MLDI SV-PZE-MLDI SV-TBP-MLDI
           PERFORM Cal-Sto
           IF INP-MLDI = PRODUIT-A 
                MOVE W-STO TO D6 D62 W-QTE
                IF W-QTE2 = 0 MOVE D6 TO GD-Liv-Col-Sto
                         ELSE MOVE D62 TO GD-Liv-Col-Sto
                END-IF
                IF W-STO = 0 MOVE "0" TO GD-Liv-Col-Sto
                END-IF

           END-IF
171110* DPM
           IF TYP-MBDI2 = 0 
              PERFORM CAL-PU
              MOVE PUN-MLDI TO D62 
              MOVE D62 TO GD-Liv-Col-Qtd
           END-IF
171110
           MOVE LIG-MLDI TO GD-Liv-Col-Lig
           MOVE 0 TO GD-Liv-Col-Ind

           IF INP-MLDI NOT = PRODUIT-C 
                MOVE 1 TO GD-Liv-Col-IndRel.
      *
       ScreenLIV-Aft-Initdata. 
261219     MOVE ScreenLIV-Handle TO MCF-HANDLE-FS
261219     PERFORM MisCentreFenetre
           MOVE 0 TO Screen2-DaGd-1-Cursor-Y-Old Screen2-DaGd-1-Cursor-Y
                     Screen2-DaGd-1-Cursor-X-Old Screen2-DaGd-1-Cursor-X
           PERFORM Init-Pour-Liv THRU F-Init-Pour-Liv.
           IF D-INDICE = 1 
              MOVE "Aucune ligne à traiter" TO Acu-Msg-1
              PERFORM Msg-Info
              PERFORM Acu-ScreenLIV-Exit
           END-IF.
           MOVE 2 TO Event-Data-2 
           MOVE 1 TO Event-Data-1
           PERFORM ScreenLIV-Gd-1-Ev-Msg-Goto-Cell.
           MOVE 4 TO ACCEPT-CONTROL
           MOVE 1 TO CONTROL-ID.
      *
       ScreenLIV-Bef-Create.
           MOVE SPACE TO ScreenLIV-Tit
           MOVE AGE-MBDI2 TO COD-MAGC2
           PERFORM Lect-Agence2
           IF TYP-MBDI2 = 8 AND W-TYP = 0
                STRING "MISE EN COMMANDE DEVIS N°" " " 
                       ABR-MAGC2 BON-MBDI2
                DELIMITED BY SIZE INTO ScreenLIV-Tit
           ELSE IF TYP-MBDI2 = 8 AND W-TYP = 1
                     STRING "LIVRAISON DEVIS N°" " " ABR-MAGC2 BON-MBDI2
                     DELIMITED BY SIZE INTO ScreenLIV-Tit
                ELSE STRING "LIVRAISON COMMANDE N°" " "
                     ABR-MAGC2 BON-MBDI2
                     DELIMITED BY SIZE INTO ScreenLIV-Tit
                END-IF
           END-IF.
           IF TYP-MBDI2 = 0 
                MOVE 5 TO WCol-Qtbase
           ELSE MOVE 4 TO WCol-Qtbase
           END-IF.
           IF W-TYP = 0 
              MOVE "Tout commander" TO ScreenLIV-Pb-Livrer-Tit
              MOVE "Annulation commande" TO ScreenLIV-Pb-Annuler-Tit
           ELSE  
              MOVE "Tout livrer" TO ScreenLIV-Pb-Livrer-Tit
              MOVE "Annulation livraison" TO ScreenLIV-Pb-Annuler-Tit
           END-IF.

       Lect-Agence2.
           OPEN INPUT MXAGENCE2 
           PERFORM STAT
           READ MXAGENCE2 INVALID MOVE COD-MAGC2 TO ABR-MAGC2
                                  MOVE SPACE TO COD-MAGC2
           END-READ
           PERFORM STAT
           CLOSE MXAGENCE2.

       Lect-Depot.
      *
       ScreenLIV-Gd-1-Ev-Msg-Goto-Cell.
      * La ligne de titre est à ignorer...
           IF Event-Data-2 < 2
               MOVE 2 TO Event-Data-2
           END-IF

      * Pour voir si on a changé de ligne
           IF Event-Data-2 = Screen2-DaGd-1-Cursor-Y-Old THEN
               MOVE Event-Data-1 TO Screen2-DaGd-1-Cursor-X-Old
           ELSE
               MOVE Screen2-DaGd-1-Cursor-Y-Old TO INDICE
               PERFORM ScreenLIV-Test-Ligne
               MODIFY ScreenLIV-Gd-1(Screen2-DaGd-1-Cursor-Y-Old),
                      ROW-COLOR = 0
               MODIFY ScreenLIV-Gd-1(Event-Data-2),
                      ROW-COLOR = Screen2-DaGd-1-Row-Highlight-Color
           END-IF

           MOVE Event-Data-1 TO Screen2-DaGd-1-Cursor-X
                                Screen2-DaGd-1-Cursor-X-Old
           MOVE Event-Data-2 TO Screen2-DaGd-1-Cursor-Y
                                Screen2-DaGd-1-Cursor-Y-Old.
      *
       ScreenLIV-Gd-1-Ev-Msg-Begin-Entry.
           IF (Event-Data-1 = 1 OR 2 OR 3 OR 4 OR 8)
           OR (Event-Data-1 = 5 AND TYP-MBDI2 = 0) 
           OR (Event-Data-1 = 6 AND W-TYP = 0) 
               SET EVENT-ACTION TO EVENT-ACTION-FAIL
               EXIT PARAGRAPH
           END-IF
           INQUIRE ScreenLIV-Gd-1(Screen2-DaGd-1-Cursor-Y, 1),
                   CELL-DATA W-INP
           | livraison totale de la ligne
           IF Event-Data-1 = WCol-Bitmap 
               INQUIRE ScreenLIV-Gd-1(Screen2-DaGd-1-Cursor-Y, WCol-Ind)
                       ,CELL-DATA W-IND
               IF W-IND = 1 
                    MOVE 0 TO W-IND
               ELSE MOVE 1 TO W-IND
               END-IF
               MOVE Screen2-DaGd-1-Cursor-Y TO INDICE
               PERFORM ScreenLIV-Maj-Ligne
               SET EVENT-ACTION TO EVENT-ACTION-FAIL
               EXIT PARAGRAPH
           END-IF.
           | reliquat
           IF Event-Data-1 = WCol-Rel
      * 31/03/10 on est obligé d'abandonner le reliquat sur un devis
      *         IF TYP-MBDI2 = 8 
      *            SET EVENT-ACTION TO EVENT-ACTION-FAIL
      *            EXIT PARAGRAPH
      *         END-IF
               INQUIRE ScreenLIV-Gd-1
               (Screen2-DaGd-1-Cursor-Y, WCol-IndRel),CELL-DATA W-IND
               IF W-IND NOT = 2 
                  MOVE Screen2-DaGd-1-Cursor-Y TO INDICE
                  IF W-IND = 1 
                     MOVE 0 TO W-IND
                       MODIFY ScreenLiv-Gd-1(INDICE, WCol-Rel),
                           BITMAP = RELIQNO16-BMP
                  ELSE MOVE 1 TO W-IND
                       MODIFY ScreenLiv-Gd-1(INDICE, WCol-Rel),
                           BITMAP = RELIQOK16-BMP
                  END-IF
                  MODIFY ScreenLiv-Gd-1(INDICE, WCol-IndRel),
                           CELL-DATA W-IND
               END-IF
               SET EVENT-ACTION TO EVENT-ACTION-FAIL
               EXIT PARAGRAPH
           END-IF.
      *
       ScreenLIV-Gd-1-Ev-Msg-Finish-Entry.
           IF (Event-Data-1 = 1 OR 2 OR 3 OR 4 OR 7 OR 8)
           OR (Event-Data-1 = 5 AND TYP-MBDI2 = 0) 
           OR (Event-Data-1 = 6 AND W-TYP = 0) 
               SET EVENT-ACTION TO EVENT-ACTION-FAIL
               EXIT PARAGRAPH
           END-IF
           INQUIRE ScreenLIV-Gd-1(Screen2-DaGd-1-Cursor-Y, 
                                  Screen2-DaGd-1-Cursor-X),
      *                 CELL-DATA W-QTE
                       CELL-DATA ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==W-QTE==.
           MOVE W-QTE TO D62 D6
           IF W-QTE2 = 0 
                MODIFY ScreenLIV-Gd-1(Screen2-DaGd-1-Cursor-Y, 
                       Screen2-DaGd-1-Cursor-X), CELL-DATA D6
           ELSE MODIFY ScreenLIV-Gd-1(Screen2-DaGd-1-Cursor-Y, 
                       Screen2-DaGd-1-Cursor-X), CELL-DATA D62.
           MOVE Screen2-DaGd-1-Cursor-Y TO INDICE
           PERFORM ScreenLIV-Test-Ligne.
      
       ScreenLIV-Gd-1-Ev-Msg-Bitmap-Clicked.

       ScreenLIV-Pb-Livrer-Link.
           MOVE 1 TO W-IND
           PERFORM ScreenLIV-Maj-Globale.
      
       ScreenLIV-Pb-Annuler-Link.
           MOVE 0 TO W-IND
           PERFORM ScreenLIV-Maj-Globale.

       ScreenLIV-Maj-Globale.
           PERFORM ScreenLIV-Maj-Ligne
              VARYING INDICE FROM 2 BY 1 UNTIL INDICE > D-INDICE.

       ScreenLIV-Maj-Ligne.
           MODIFY ScreenLIV-Gd-1(INDICE, WCol-Ind),
                  CELL-DATA W-IND
           IF W-IND = 2 
              MODIFY ScreenLIV-Gd-1(INDICE, WCol-Ind),
                  CELL-DATA 1
           END-IF
           INQUIRE ScreenLIV-Gd-1(INDICE, 1), 
                  CELL-DATA W-INP
           | récupération quantité commandée ou sur devis
           IF W-IND = 1
                INQUIRE ScreenLIV-Gd-1(INDICE, WCol-Qtbase),
                        CELL-DATA W-QTE
           ELSE IF W-IND NOT = 2
                   MOVE ZERO TO W-QTE
                END-IF
           END-IF


           MOVE W-QTE TO D62 D6
           IF W-TYP = 0 MOVE 5 TO WCOL
                   ELSE MOVE 6 TO WCOL
           END-IF
           | affichage quantité commandée ou livrée
           IF W-INP = PRODUIT-C
              IF W-IND = 0
                 MODIFY ScreenLIV-Gd-1(INDICE, WCOL), CELL-DATA " "
              ELSE
                 MODIFY ScreenLIV-Gd-1(INDICE, WCOL), CELL-DATA "Livré"
              END-IF
           ELSE
             IF W-QTE2 = 0 
                  MODIFY ScreenLIV-Gd-1(INDICE, WCOL), CELL-DATA D6
             ELSE MODIFY ScreenLIV-Gd-1(INDICE, WCOL), CELL-DATA D62
             END-IF
             IF W-TYP NOT = 0
                IF TYP-MBDI2 = 8
                   MODIFY ScreenLIV-Gd-1(INDICE, 5), CELL-DATA SPACE
                END-IF
             END-IF
           END-IF.
           IF W-INP NOT = PRODUIT-C
              IF W-IND = 1 OR 2
                   IF (W-IND = 2 AND W-QTE >= W-QTC)
                   OR (W-IND = 1)
                      MODIFY ScreenLiv-Gd-1(INDICE, WCol-Rel),
                            BITMAP = NULL
                      MODIFY ScreenLiv-Gd-1(INDICE, WCol-IndRel),
                            CELL-DATA 2
                   END-IF
                   INQUIRE ScreenLIV-Gd-1(INDICE, WCol-IndPM), 
                        CELL-DATA W-INDPM
                   IF W-INDPM = 1 AND W-TYP = 1
                      MODIFY ScreenLiv-Gd-1(INDICE, 6),
                           BITMAP = NOSERIE12-JPG
                   END-IF      
              ELSE MODIFY ScreenLiv-Gd-1(INDICE, WCol-IndRel),
                            CELL-DATA 1
                   MODIFY ScreenLiv-Gd-1(INDICE, WCol-Rel),
                            BITMAP = RELIQOK16-BMP
                   MODIFY ScreenLiv-Gd-1(INDICE, 6),
                            BITMAP = NULL
                   IF W-INDPM = 1 AND W-TYP = 1
                      MOVE AGE-MBDI2 TO AGE-MLDI
                      MOVE BON-MBDI2 TO BON-MLDI 
                      INQUIRE ScreenLIV-Gd-1(INDICE, WCOL-LigV), 
                         CELL-DATA LIG-MLDI
                      MOVE 1 TO W-NIV
                      PERFORM DEL-MSPMAT THRU F-DEL-MSPMAT
                   END-IF
              END-IF
           END-IF.
        
       ScreenLIV-Test-Ligne.
           IF INDICE = 0 EXIT PARAGRAPH
           END-IF
           INQUIRE ScreenLIV-Gd-1(INDICE, WCol-Qtbase), CELL-DATA W-QTC
           INQUIRE ScreenLIV-Gd-1(INDICE, 6), CELL-DATA W-QTL
           IF TYP-MBDI2 = 8 
                INQUIRE ScreenLIV-Gd-1(INDICE, 5), CELL-DATA W-QTE
           ELSE MOVE 0 TO W-QTE
           END-IF
           ADD W-QTE TO W-QTL
           | quantité livrée > quantité commandée: ligne en vert
           IF (W-TYP = 0 AND W-QTE > W-QTC)
           OR (W-TYP = 1 AND W-QTL > W-QTC)
                MODIFY ScreenLiv-Gd-1(INDICE, 5), CELL-COLOR = 11
                MODIFY ScreenLiv-Gd-1(INDICE, 6), CELL-COLOR = 11
           ELSE MODIFY ScreenLiv-Gd-1(INDICE, 5), CELL-COLOR = 2
                MODIFY ScreenLiv-Gd-1(INDICE, 6), CELL-COLOR = 2
           END-IF.

           IF (W-TYP = 0 AND W-QTE >= W-QTC)
           OR (W-TYP = 1 AND W-QTL >= W-QTC)
                MODIFY ScreenLiv-Gd-1(INDICE, WCol-Rel),
                           BITMAP = NULL
                MODIFY ScreenLiv-Gd-1(INDICE, WCol-IndRel),
                           CELL-DATA 2
                INQUIRE ScreenLIV-Gd-1(INDICE, WCol-IndPM), 
                        CELL-DATA W-INDPM
                IF W-INDPM = 1 AND W-TYP = 1
                   MODIFY ScreenLiv-Gd-1(INDICE, 6),
                           BITMAP = NOSERIE12-JPG
                END-IF
           ELSE 
                MODIFY ScreenLiv-Gd-1(INDICE, 6),
                           BITMAP = NULL
                INQUIRE ScreenLIV-Gd-1(INDICE, WCol-Indrel), 
                                    CELL-DATA W-IND
                IF W-IND = 1 OR 2
                    MODIFY ScreenLiv-Gd-1(INDICE, WCol-Rel),
                        BITMAP = RELIQOK16-BMP
                    MOVE 1 TO W-IND
                ELSE MODIFY ScreenLiv-Gd-1(INDICE, WCol-Rel),
                     BITMAP = RELIQNO16-BMP
                END-IF
                MODIFY ScreenLiv-Gd-1(INDICE, WCol-IndRel),
                           CELL-DATA W-IND
                IF W-INDPM = 1 AND W-TYP = 1
                   MOVE AGE-MBDI2 TO AGE-MLDI
                   MOVE BON-MBDI2 TO BON-MLDI 
                   INQUIRE ScreenLIV-Gd-1(INDICE, WCOL-LigV), 
                         CELL-DATA LIG-MLDI
                   MOVE 1 TO W-NIV
                   PERFORM DEL-MSPMAT THRU F-DEL-MSPMAT
                END-IF
           END-IF.
                  
           INQUIRE ScreenLIV-Gd-1(INDICE, 1), CELL-DATA W-INP
           INQUIRE ScreenLIV-Gd-1(INDICE, 2), CELL-DATA W-ART
           INQUIRE ScreenLIV-Gd-1(INDICE, 8), CELL-DATA W-STO
           | stock négatif en rouge
           IF W-TYP = 1 AND W-INP = PRODUIT-A AND W-ART(1:4) NOT NUMERIC
                SUBTRACT W-QTL FROM W-STO
                IF W-STO < 0 
                     MODIFY ScreenLiv-Gd-1(INDICE, 8), CELL-COLOR = 13
                ELSE MODIFY ScreenLiv-Gd-1(INDICE, 8), CELL-COLOR = 2
                END-IF
           END-IF.

      **** MISE A JOUR DES FICHIERS
       Transfert-Cd.
           IF CDF = CHOIX-C 
              MOVE ENR-MBDI2 TO ENR-MBDI
              MOVE DAT-MBDI TO DCO-MBDI
              MOVE IDE-PALM TO SAL-MBDI
              MOVE W-AGE TO AGE-MBDI

              MOVE W-BON TO BON-MBDI 
              MOVE W-DAT TO DAT-MBDI
              MOVE W-TYP TO TYP-MBDI                  
              IF TYP-MBDI2 = 0 MOVE BON-MBDI2 TO BCG-MBDI BCO-MBDI
                               MOVE DLP-MBDI2 TO DLO-MBDI
                               MOVE DAT-MBDI2 TO DCO-MBDI
                               MOVE 2 TO ORI-MBDI
              END-IF
              IF TYP-MBDI2 = 8 MOVE 0 TO EDI-MBDI
                               MOVE 1 TO ORI-MBDI
                               MOVE BON-MBDI2 TO NOF-MBDI 
              END-IF
              IF TYP-MBDI = 1 MOVE W-AGS TO AGS-MBDI
                              MOVE W-DPS TO DEP-MBDI
              END-IF    
              IF TYC-MBDI = 1 MOVE SPACE TO AGS-MBDI
              END-IF      
              IF GEN-MBDI = 1 MOVE 1 TO W-LIE
              END-IF
              MOVE 0 TO TAA-MBDI
              MOVE 0 TO GEN-MBDI    
              MOVE 1 TO IFA-MBDI
              IF ADD-MBDI = 1 MOVE 0 TO ACO-MBDI ADD-MBDI | acompte déjà déduit
              END-IF
      *        MOVE PER-C TO PER-MBDI
              IF MDAT-MBDI = MOI-MPAR 
              AND ADAT-MBDI = ANN-MPAR
                   MOVE PER-C TO PER-MBDI
              ELSE MOVE PER-1 TO PER-MBDI
              END-IF
161211* client avec mise en attente par défaut
              IF MAB-MCLD = 1 MOVE 0 TO IFA-MBDI PER-MBDI
              END-IF
260116* client avec réf obligatoire
              IF MAFR-MPAR = 1 AND TYP-MBDI = 1 AND RBO-MCLI = 1
              AND REF-MBDI(1) = SPACE
                 MOVE 0 TO IFA-MBDI PER-MBDI
              END-IF
              PERFORM Wri-MXBDIS
              MOVE "Z" TO CDF
              MOVE CLE1-MBDI2 TO A-CLEB
271015        MOVE BON-MBDI2 TO A-BON
              MOVE CLE1-MBDI TO N-CLEB
271015        MOVE BON-MBDI TO N-BON
              PERFORM Copie-Photos
              MOVE "E" TO W-INO
              PERFORM Transfert-Mxcomment
              PERFORM Transfert-Transpe
              move DLP-MBDI to sv-dlp
              move TCC-MBDI to sv-tcc
              move cli-mbdi to sv-cli
           END-IF
           
           | recherche dernier n° de ligne
           MOVE AGE-MBDI TO AGE-MLDI
           MOVE BON-MBDI TO BON-MLDI
           MOVE 9999 TO LIG-MLDI 
           MOVE 0 TO W-EOF D-LIG D-RAN
           START MXLDIS KEY NOT > CLE1-MLDI INVALID MOVE 1 TO W-EOF.
           IF W-EOF = 0 
                READ MXLDIS PREVIOUS END MOVE 1 TO W-EOF
                END-READ
                PERFORM STAT.
           IF W-EOF = 0 AND AGE-MLDI = AGE-MLDI AND BON-MLDI = BON-MBDI 
                MOVE LIG-MLDI TO D-LIG.
           | recherche dernier n° de rang
           MOVE AGE-MBDI TO AGE-MLDI
           MOVE BON-MBDI TO BON-MLDI
           MOVE 9999 TO RAN-MLDI 
           MOVE 0 TO W-EOF 
           START MXLDIS KEY NOT > CLE4-MLDI INVALID MOVE 1 TO W-EOF.
           IF W-EOF = 0 
                READ MXLDIS PREVIOUS END MOVE 1 TO W-EOF
                END-READ
                PERFORM STAT.
           IF W-EOF = 0 AND AGE-MLDI = AGE-MLDI AND BON-MLDI = BON-MBDI 
                MOVE RAN-MLDI TO D-RAN.
           | mise à jour lignes  
           MOVE D-LIG TO SV-D-LIG
           MOVE D-RAN TO SV-D-RAN
           MOVE 0 TO W-ABANDON
           PERFORM Transfert-Un-Cd
              VARYING INDICE FROM 2 BY 1 UNTIL INDICE > D-INDICE.
           
           PERFORM Verif-Reste.
           IF WY = 0
           OR (TYP-MBDI2 = 8 AND WYD = 0)
              IF TYP-MBDI2 = 8 
                MOVE 1 TO TRA-MBDI2
                MOVE "G" TO STA-MBDI2
                REWRITE ENR-MBDI2
                PERFORM STAT
              ELSE
                DELETE MXBDIS2
                PERFORM STAT
                MOVE 1 TO W-FIC2
                PERFORM Maj-Delvte-Bdis
              END-IF     
           ELSE

              IF BCO-MBDI2 = 0 
              AND TYP-MBDI2 NOT = 8
                MOVE BON-MBDI2 TO BCO-MBDI2
                MOVE DAT-MBDI2 TO DCO-MBDI2
                MOVE DLP-MBDI2 TO DLO-MBDI2
                REWRITE ENR-MBDI2
                PERFORM STAT
              END-IF
              IF ACO-MBDI2 NOT = 0 

              AND TYP-MBDI2 = 0
                MOVE 1 TO ADD-MBDI2
                REWRITE ENR-MBDI2
                PERFORM STAT
              END-IF
      * DSC pour conserver les devis
              IF TYP-MBDI2 = 8 
                MOVE 1 TO TRA-MBDI2
                IF W-ABANDON = 1 MOVE "A" TO STA-MBDI2
                            ELSE MOVE "G" TO STA-MBDI2
                END-IF
                REWRITE ENR-MBDI2

                PERFORM STAT
120510* on génère un nouveau devis avec le reliquat
                MOVE CLE1-MBDI2 TO A-CLEB
                MOVE BON-MBDI2 TO A-BON
                PERFORM Genere-Reliquat-Devis
              END-IF
      
           END-IF.

      * retour de pièces: on transforme en avoir
           IF TYP-MBDI2 = 0 AND IRP-MBDI2 = 1 
              PERFORM Inverse-Qte
              MOVE 3 TO TYP-MBDI
              REWRITE ENR-MBDI
              PERFORM STAT
              MOVE TYP-MBDI TO W-TYP
              PERFORM Affich-Typ
              PERFORM Aff-Selon-Typ
           END-IF.
       F-Transfert-Cd.

       Inverse-Qte.
           MOVE AGE-MBDI TO AGE-MLDI
           MOVE BON-MBDI TO BON-MLDI
           MOVE ZERO TO RAN-MLDI W-EOF 
           START MXLDIS KEY NOT < CLE4-MLDI INVALID MOVE 1 TO W-EOF.
           IF W-EOF = 0
              READ MXLDIS NEXT END MOVE 1 TO W-EOF
              END-READ
              PERFORM STAT.
           PERFORM UNTIL W-EOF = 1 
                      OR AGE-MLDI NOT = AGE-MBDI
                      OR BON-MLDI NOT = BON-MBDI 
              MULTIPLY -1 BY QTE-MLDI
              MULTIPLY -1 BY QTC-MLDI
              REWRITE ENR-MLDI
              PERFORM STAT
              READ MXLDIS NEXT END MOVE 1 TO W-EOF
              END-READ
              PERFORM STAT
           END-PERFORM.

       Transfert-Un-Cd.     
           INQUIRE ScreenLIV-Gd-1(INDICE, 6), CELL-DATA W-QTL
           INQUIRE ScreenLIV-Gd-1(INDICE, 5), CELL-DATA W-QTE
           INQUIRE ScreenLIV-Gd-1(INDICE, WCol-Indrel), CELL-DATA W-IND
           MOVE AGE-MBDI2 TO AGE-MLDI
           MOVE BON-MBDI2 TO BON-MLDI A-BON
           INQUIRE ScreenLIV-Gd-1(INDICE, WCOL-LigV), CELL-DATA LIG-MLDI
           MOVE LIG-MLDI TO A-LIG
           READ MXLDIS LOCK INVALID EXIT PARAGRAPH
           END-READ
           PERFORM STAT
           IF IND-STAT = 1 GO Transfert-Un-Cd
           END-IF       
           MOVE CLE1-MLDI TO A-CLEL
           MOVE ENR-MLDI TO ENR-MLDI2
          
           IF INP-MLDI = PRODUIT-C 
              IF TYP-MBDI = 0
                 INQUIRE ScreenLIV-Gd-1(INDICE, 5), CELL-DATA WLIBLIV
              ELSE
                 INQUIRE ScreenLIV-Gd-1(INDICE, 6), CELL-DATA WLIBLIV
              END-IF
              IF WLIBLIV = SPACE MOVE 0 TO W-QTE W-QTL
                                 MOVE 1 TO W-IND
                            ELSE MOVE 1 TO W-QTE W-QTL 
                                 MOVE 0 TO W-IND
              END-IF
           END-IF      
           | origine devis: pas de mise en commande ni de livraison
           IF (TYP-MBDI2 = 8 AND W-TYP = 0 AND W-QTE = 0)
           OR (TYP-MBDI2 = 8 AND W-TYP = 1 AND W-QTE = 0 AND W-QTL = 0)
                IF W-IND = 0 
                   PERFORM Abandon-Ligne-Devis
                END-IF
                EXIT PARAGRAPH
           END-IF
           | origine commande: pas de livraison
           IF (TYP-MBDI2 = 0 AND W-QTL = 0)
                IF W-IND = 0 PERFORM Abandon-Ligne-Commande
                END-IF
                EXIT PARAGRAPH
           END-IF

           MOVE 0 TO W-Affiche
           IF INP-MLDI = PRODUIT-A
                PERFORM Controle-Art thru F-Controle-Art
                if w-ok not = 1 exit paragraph
                end-if
           end-if
           IF INP-MLDI = PRODUIT-P
                PERFORM Controle-Pre thru F-Controle-Pre
                if w-ok not = 1 exit paragraph
                end-if
           end-if
           IF INP-MLDI = PRODUIT-C
                if DES-MLDI = space exit paragraph
                end-if
           end-if
           MOVE ENR-MLDI TO SV-ENR-MLDI
           IF TYP-MBDI = 1
           AND TYC-MBDI NOT = 1
              MOVE W-AGS TO AGS-MLDI2 AGS-MLDI
              MOVE W-DPS TO DEP-MLDI2 DEP-MLDI
           END-IF
060412     IF ART-MLDI(1:4) NOT NUMERIC
270213     AND INP-MLDI = "A"
              PERFORM Test-Societe-Agence
060412     END-IF 
           | contrôle du stock sur le bon de livraison 
           IF W-TYP = 1 AND INP-MLDI = PRODUIT-A
           AND ART-MLDI(1:4) NOT NUMERIC
           AND STN-MPAR = 1 AND W-QTL > 0 
                MOVE W-QTL TO QTE-MLDI 
                MOVE ART-MLDI TO SV-ART-MLDI
                MOVE AGS-MLDI TO SV-AGS-MLDI
                MOVE DEP-MLDI TO SV-DEP-MLDI
                MOVE 0 TO SV-QTE-MLDI SV-TLI-MLDI SV-PZE-MLDI 
                          SV-TBP-MLDI
      
                IF TYP-MBDI2 = 0 AND (CST-MPAR = 1 OR 2 OR 3) 
                AND MODU-M3 = 0
                   MOVE TLI-MLDI TO SV-TLI-MLDI
                   MOVE QTE-MLDI TO SV-QTE-MLDI
                END-IF
      
                MOVE 1 TO TLI-MLDI
                MOVE 0 TO AUTO-LP                  
                PERFORM Controle-Stock
                IF W-STO < ZERO AND STN-MPAR = 1
                     STRING "Article" " " COD-MART 
                            DELIMITED BY SIZE INTO Acu-Msg-1
                     MOVE "Stock négatif non autorisé" to acu-msg-2
                     MOVE "Mise en commande automatique" to acu-msg-3
                     PERFORM Msg-Info
                     ADD W-QTL TO W-QTE
                     MOVE 0 TO W-QTL
                END-IF
           END-IF.
           | contrôle du stock lors de la mise en commande chez M3
           IF W-TYP = 0 AND INP-MLDI = PRODUIT-A
           AND ART-MLDI(1:4) NOT NUMERIC
050219*     AND STN-MPAR = 1   |mail SB
           AND W-QTE > 0 
           AND TYP-MBDI2 = 8
           AND MODU-M3 = 1
                MOVE W-QTE TO QTE-MLDI 
                MOVE ART-MLDI TO SV-ART-MLDI
                MOVE AGS-MLDI TO SV-AGS-MLDI
                MOVE DEP-MLDI TO SV-DEP-MLDI
                MOVE 0 TO SV-QTE-MLDI SV-TLI-MLDI SV-PZE-MLDI 
                          SV-TBP-MLDI 
                MOVE 3 TO TLI-MLDI
                MOVE 0 TO AUTO-LP     
                MOVE 1 TO W-AFFICHE IND-AUTO-ANNUL
                MOVE 1 TO TBP-MLDI
                PERFORM Controle-Stock
                MOVE 0 TO W-AFFICHE IND-AUTO-ANNUL
           END-IF.

           | génération quantité commandée si origine devis
           IF W-QTE NOT = 0 AND TYP-MBDI2 = 8 
           AND (INP-MLDI NOT = PRODUIT-C 
                 OR (INP-MLDI = PRODUIT-C AND W-TYP = 0))
                MOVE W-QTE TO QTE-MLDI
                PERFORM Ecrit-Ligne-Commande
           END-IF.
           | génération quantité livrée si B/L
           IF W-TYP = 1 AND W-QTL NOT = 0
                MOVE W-QTL TO QTE-MLDI
                PERFORM CAL-PR
                PERFORM Ecrit-Ligne-Livraison
           END-IF.
           | mise à jour devis transformé
           IF ((W-QTE NOT = 0) OR (W-TYP = 1 AND W-QTL NOT = 0))
           AND TYP-MBDI2 = 8
                PERFORM Delete-Devis
                MOVE SV-ENR-MLDI TO ENR-MLDI
                PERFORM Gagne-HISDVD
           END-IF.
           | mise à jour commande livrée
           IF TYP-MBDI2 = 0 AND W-TYP = 1 AND W-QTL NOT = 0
                MOVE SV-ENR-MLDI TO ENR-MLDI
                READ MXLDIS LOCK
                PERFORM STAT

                PERFORM Gagne-HISCDD
                IF INP-MLDI = PRODUIT-A AND ART-MLDI(1:4) NOT NUMERIC
                     PERFORM Maj-Qte-Commande-Artsa
                END-IF
                IF W-QTL >= QTE-MLDI OR W-IND = 0
                     PERFORM Delete-Commande
                     MOVE 2 TO W-OTE
                     PERFORM Maj-Reserv THRU F-Maj-Reserv
                ELSE SUBTRACT W-QTL FROM QTE-MLDI
                     MOVE HCD-MLDI TO SV-HCD-MLDI
061112               MOVE 0 TO HCD-MLDI
061112               PERFORM Maj-Hiscdd THRU F-Maj-Hiscdd
                     PERFORM Rew-MXLDIS
                     MOVE 0 TO W-OTE
                     PERFORM Maj-Reserv THRU F-Maj-Reserv
                END-IF
           END-IF.

       Ecrit-Ligne-Commande.
           ADD 1 TO D-RAN 
           ADD 1 TO D-LIG
           MOVE AGE-MBDI TO AGE-MLDI
           MOVE BON-MBDI TO BON-MLDI N-BON
           MOVE D-LIG TO LIG-MLDI N-LIG
060411* on ne recalcule pas le rang sinon en cas de liv partielle tout est décalé
      *     MOVE D-RAN TO RAN-MLDI
080612* on calcule le rang si c'est un ajout sinon tout est mélangé
           IF SV-D-RAN > 0 MOVE D-RAN TO RAN-MLDI
           END-IF
           MOVE 3 TO TLI-MLDI
      * chez M3 on a déjà saisi le type dans l'écran de rupture
           IF MODU-M3 = 0 
              MOVE TCC-MBDI TO TCC-MLDI 
              MOVE TBP-MBDI TO TBP-MLDI
           END-IF
           MOVE DLP-MBDI TO DLP-MLDI
           MOVE DAT-MBDI TO DCO-MLDI
           PERFORM Wri-MXLDIS
           MOVE CLE1-MLDI TO N-CLEL
           IF INP-MLDI = PRODUIT-C 
              MOVE SPACE TO W-INO
              MOVE N-CLEL TO N-CLEB
              MOVE A-CLEL TO A-CLEB
              MOVE 3 TO W-TYPTRS
              PERFORM Transfert-Mxcomment
           END-IF
           MOVE 0 TO W-OTE
           PERFORM Maj-Ligne
           PERFORM Rew-MXLDIS. 


       Ecrit-Ligne-Livraison.
           ADD 1 TO D-RAN 
           ADD 1 TO D-LIG
           MOVE AGE-MBDI TO AGE-MLDI
           MOVE BON-MBDI TO BON-MLDI N-BON
           MOVE D-LIG TO LIG-MLDI N-LIG
060411* on ne recalcule pas le rang sinon en cas de liv partielle tout est décalé
      *     MOVE D-RAN TO RAN-MLDI
210612* on calcule le rang si c'est un ajout sinon tout est mélangé
           IF SV-D-RAN > 0 MOVE D-RAN TO RAN-MLDI
           END-IF
           MOVE 1 TO TLI-MLDI
           MOVE TCC-MBDI TO TCC-MLDI
           MOVE TBP-MBDI TO TBP-MLDI
           MOVE DLP-MBDI TO DLP-MLDI
           MOVE 1 TO ILC-MLDI
           IF DCO-MLDI = 0 MOVE DCO-MBDI TO DCO-MLDI 
           END-IF
           MOVE W-DAT TO DSP-MLDI
           MOVE 0 TO REV-MLDI 
           PERFORM Wri-MXLDIS
           MOVE CLE1-MLDI TO N-CLEL
           IF INP-MLDI = PRODUIT-A
              MOVE 1 TO W-NIV
              MOVE 4 TO W-TYPTRS
              PERFORM Transfert-Mspmat THRU F-Transfert-Mspmat
           END-IF

           IF INP-MLDI = PRODUIT-C 
              MOVE SPACE TO W-INO
              MOVE N-CLEL TO N-CLEB
              MOVE A-CLEL TO A-CLEB
              MOVE 4 TO W-TYPTRS
              PERFORM Transfert-Mxcomment
           END-IF
           MOVE 0 TO W-OTE
           PERFORM Maj-Ligne
           PERFORM Rew-MXLDIS.  
      * Transfert contre-marques besoins agences
           IF TYC-MBDI = 1 AND CBLF-MBDI <> 0
              PERFORM Transfert-Cmque
           END-IF.

       Transfert-Cmque.

       Genere-Reliquat-Devis.
           MOVE W-AGE TO COD-MAGD
           READ MXAGEDIS LOCK INVALID
              MOVE "Lecture AGEDIS" TO Acu-Msg-2
              MOVE CLE1-MAGD TO Acu-Msg-3 
              GO ERREUR.
           PERFORM STAT
           MOVE "AGENCE" TO ScreenOccupe-Fic
           MOVE CLE1-MAGD TO ScreenOccupe-Cle

           PERFORM Mis-EnregOccupe
           IF IND-STAT = 1 GO Genere-Reliquat-Devis
           END-IF.
           ADD 1 TO BON-MAGD 
           REWRITE ENR-MAGD INVALID
              MOVE "Réécriture AGEDIS" TO Acu-Msg-2
              MOVE CLE1-MAGD TO Acu-Msg-3 GO ERREUR.
           PERFORM STAT   
           MOVE 1 TO W-IND
           PERFORM Test-Hisvte THRU F-Test-Hisvte
           IF W-IND = 0 GO Genere-Reliquat-Devis
           END-IF
150216
      *     MOVE BON-MAGD TO BON-MBDI2 N-BON 
           MOVE MOB-PALM TO MOB-MBDI2
           MOVE BON-MAGD TO BON2-MBDI2
           MOVE BON-MBDI2 TO N-BON
150216
           MOVE 0 TO TRA-MBDI2
           MOVE SPACE TO STA-MBDI2
           MOVE A-BON TO NOF-MBDI2
           WRITE ENR-MBDI2 INVALID GO Genere-Reliquat-Devis
           END-WRITE
           PERFORM STAT.
           MOVE CLE1-MBDI2 TO N-CLEB
           PERFORM Copie-Photos.
           MOVE "E" TO W-INO
           PERFORM Transfert-Mxcomment
           
           MOVE 1 TO IND-RELIQUAT-DEVIS
           MOVE 9 TO W-TYPTRS
           PERFORM DUPLIC-LIGNES THRU F-DUPLIC-LIGNES
           MOVE 0 TO IND-RELIQUAT-DEVIS.
           STRING "Le reliquat du devis est conservé sous le n°" " "
                  N-BON DELIMITED BY "  " INTO ACU-MSG-1
           PERFORM MSG-INFO.

      *--- MàJ quantité en commande en cas de livraison sur commande
       Maj-Qte-Commande-Artsa.
           MOVE ART-MLDI TO W-ART-MAJ
           PERFORM Lect-Lock-Artsa
           IF W-QTL >= QTE-MLDI OR W-IND = 0 
              COMPUTE QCC-MASA ROUNDED = QCC-MASA - QTE-MLDI
           ELSE
              COMPUTE QCC-MASA ROUNDED = QCC-MASA - W-QTL
           END-IF
           ACCEPT DME-MASA FROM CENTURY-DATE              
           REWRITE ENR-MASA INVALID MOVE "Réécriture ARTSA" TO Acu-Msg-2
                                    MOVE CLE1-MASA TO Acu-Msg-3
                                    GO ERREUR.
           PERFORM STAT.
           IF TYC-MBDI = 1 
              MOVE 1 TO W-NIV
              PERFORM Maj-Qte-Cde-Ach
           END-IF.

      *---- Maj qté en commande fournisseur sur stock d'arrivée ----*
       Maj-Qte-Cde-Ach.
           INITIALIZE ENR-MASA2
           MOVE AGL-MCLI TO AGE-MASA2 
           MOVE COD-MASA TO COD-MASA2
           READ MXARTSA2 LOCK INVALID MOVE 1 TO STO-MASA2
                                      ACCEPT DME-MASA2 FROM CENTURY-DATE
                                      WRITE ENR-MASA2
                                      END-WRITE

           END-READ
           PERFORM STAT
           IF IND-STAT = 1 GO Maj-Qte-Cde-Ach.
           IF W-NIV = 1
              IF W-QTL >= QTE-MLDI OR W-IND = 0 
                 COMPUTE QCF-MASA2 ROUNDED = QCF-MASA2 - QTE-MLDI
              ELSE
                 COMPUTE QCF-MASA2 ROUNDED = QCF-MASA2 - W-QTL
              END-IF
           END-IF.
           ACCEPT DME-MASA2 FROM CENTURY-DATE
           REWRITE ENR-MASA2 INVALID 
                 MOVE "Réécriture ARTSA2" TO Acu-Msg-2
                 MOVE CLE1-MASA2 TO Acu-Msg-3 GO ERREUR
           END-REWRITE
           PERFORM STAT.

      *--- Abandon d'une ligne de devis (sans reliquat)
       Abandon-Ligne-Devis.
      * on garde les lignes du devis 
      *     PERFORM Del-MXLDIS.
      *     PERFORM Maj-Delvte-Ldis. 
120510     MOVE 1 TO IAD-MLDI
120510     PERFORM Rew-MXLDIS
           PERFORM Abandon-HISDVD.

       Abandon-HISDVD.
      *--- Suppression de la ligne de devis d'origine
       Delete-Devis.
           MOVE SV-ENR-MLDI TO ENR-MLDI
           READ MXLDIS LOCK INVALID EXIT PARAGRAPH
           END-READ
           PERFORM STAT
           IF IND-STAT = 1 GO Delete-Devis
           END-IF
120510     MOVE 2 TO IAD-MLDI
120510     PERFORM Rew-MXLDIS.

      *--- Suppression de la ligne commande d'origine
       Delete-Commande.
           MOVE SV-ENR-MLDI TO ENR-MLDI
           READ MXLDIS LOCK INVALID EXIT PARAGRAPH
           END-READ
           PERFORM STAT
           IF IND-STAT = 1 GO Delete-Commande
           END-IF
           PERFORM Del-MXLDIS.

      *--- MàJ Historique devis si transformé en commande ou B/L
       Gagne-HISDVD.

      *--- MàJ Historique devis si commande transformée en B/L
       Livre-HISDVD.

      *--- MàJ Historique commande si transformée en B/L
       Gagne-HISCDD.

      *--- Abandon d'une ligne de commande (sans reliquat)
       Abandon-Ligne-Commande.
           MOVE 2 TO W-OTE
           PERFORM Maj-Ligne.
           PERFORM Del-MXLDIS.
           PERFORM Maj-Delvte-Ldis.
         
      *--- Transfert des n° de série (saisis dans ScreenLIV)
       Transfert-Mspmat.
       F-Transfert-Mspmat.

      *--- Verif s'il reste des lignes sur le devis ou la commande
       Verif-Reste.
           MOVE AGE-MBDI2 TO AGE-MLDI2
           MOVE BON-MBDI2 TO BON-MLDI2
           MOVE ZERO TO RAN-MLDI2 W-EOF 
           MOVE 0 TO WY WYD
           START MXLDIS2 KEY NOT < CLE4-MLDI2 INVALID MOVE 1 TO W-EOF.
           IF W-EOF = 0
              READ MXLDIS2 NEXT END MOVE 1 TO W-EOF
              END-READ
              PERFORM STAT.
           PERFORM UNTIL W-EOF = 1 
              OR AGE-MLDI2 NOT = AGE-MBDI2
              OR BON-MLDI2 NOT = BON-MBDI2 
              OR (WY > 0 AND WYD > 0)
              ADD 1 TO WY
              IF IAD-MLDI2 = 0 ADD 1 TO WYD
              END-IF                 
              READ MXLDIS2 NEXT END MOVE 1 TO W-EOF
              END-READ
              PERFORM STAT
           END-PERFORM.

       Del-MXCOPROBL.

      ******************************************************************
      *           Gestion des remises complémentaires                  *
      ******************************************************************
       Test-RC.
           MOVE 0 TO W-INDRC
           IF MNR-MPAD = 0 AND MXR2-MPAD = 0 AND MXR-MPAD = 0
               EXIT PARAGRAPH
           END-IF
           IF IFO-MBDI = 1 
           OR ORI-MBDI NOT = 0 
           OR TYP-MBDI = 3
           OR GRI-MCLD = SPACE
               EXIT PARAGRAPH
           END-IF
           MOVE "            CALCUL REMISE COMPLÉMENTAIRE?" TO ACU-MSG-1
           MOVE "NON pour ne pas recalculer les remises déjà calculées" 
           TO ACU-MSG-2
           MOVE "ANNULER pour supprimer les remises déjà calculées" 
           TO ACU-MSG-3
           PERFORM Msg-ONA
           IF Acu-Return-Value = 1 MOVE 1 TO W-INDRC.
           IF Acu-Return-Value = 2 MOVE 0 TO W-INDRC.
           IF Acu-Return-Value = 3 MOVE 2 TO W-INDRC.
      
      ******************************************************************
      *           Mises à jour en fin de bon                           *
      *           Calcul totaux, marge, remises complémentaires        *
      ******************************************************************   
       Maj-Fin-Bon.
           PERFORM Curseur-Sablier
           MODIFY Screen2-Handle, ENABLED FALSE
           MOVE AGE-MBDI TO AGE-MLDI
           MOVE BON-MBDI TO BON-MLDI
           MOVE ZERO TO RAN-MLDI W-EOF MBP-MBDI MMI-MBDI MMX-MBDI 
                        TPR-MBDI ATTENTE W-IND TOT-RPM
                        TOT-HT TOT-TTC TOT-POI TOT-HPI TOT-HPR 
                        TOT-TVA TOT-LIG TOT-HTT W-MODREM TOT-MG
                        UNE-MARGE-BAD TOT-VOL
           INITIALIZE TABLE-C-MON
           MOVE 9 TO C-TVA(1) C-TVA(2) C-TVA(3) C-TVA(4)
                     C-TVA(5) C-TVA(6) C-TVA(7) C-TVA(8) 
           PERFORM Test-RC    
           START MXLDIS KEY NOT < CLE4-MLDI INVALID MOVE 1 TO W-EOF.
           IF W-EOF = 0
              READ MXLDIS NEXT END MOVE 1 TO W-EOF
              END-READ
              PERFORM STAT.
           PERFORM UNTIL W-EOF = 1 OR AGE-MLDI NOT = AGE-MBDI
              OR BON-MLDI NOT = BON-MBDI

                 PERFORM Lect-Art-Ou-Pre

                 IF INP-MLDI = PRODUIT-A AND IFO-MBDI NOT = 1 
                 AND PZE-MLDI = 0 AND ISQ-MLDI = 0
                 AND PRO-MLDI = 0 AND REC-MLDI(1) = 0
                 AND ORI-MBDI = 0 AND TYP-MBDI NOT = 3
                 AND (W-INDRC = 1 OR 2)
                    PERFORM Trait-Comp-Remise 
                 END-IF
                 IF (PZE-MLDI = 0 OR 1) AND ISQ-MLDI = 0 
                 AND INP-MLDI NOT = PRODUIT-C
                    PERFORM Trait-Marge
                 END-IF
                 PERFORM Cal-Mon
                 PERFORM CAL-POI
020813           MOVE 1 TO CAL-COMP-REMISE
                 PERFORM Add-Mon
020813           MOVE 0 TO CAL-COMP-REMISE
                 IF PZE-MLDI = 3 MOVE 1 TO ATTENTE
                 END-IF        
                 READ MXLDIS NEXT END MOVE 1 TO W-EOF
                 END-READ
                 PERFORM Stat
           END-PERFORM.

           IF W-MODREM = 1 
              IF W-AFF-MB = 1 PERFORM Screen2-Pb-Marge-Link
              END-IF
              PERFORM Remp-Grille-Ldis
              inquire Screen2-DaGd-1, last-row in WLAST-Row
              IF WLAST-Row NOT = 1
      *        IF D-INDICE NOT = 0 
                 MOVE 2 TO Event-Data-2               
                 MOVE 0 TO Screen2-DaGd-1-Cursor-Y-Old 
                 PERFORM Screen2-DaGd-1-Ev-Msg-Goto-Cell
              END-IF
              MOVE " Les remises ont été recalculées " TO ACU-MSG-1
              PERFORM MSG-INFO

              MOVE 0 TO W-MODREM
           END-IF

           MOVE TOT-HT  TO TAT-MBDI
           MOVE TOT-TTC TO TAC-MBDI
           IF (TOT-HT < 0 OR TYP-MBDI = 3) AND AUTO-AVO = 2
                MOVE 1 TO ATTENTE
           END-IF
           IF ATTENTE = 1
                MOVE 0 TO IFA-MBDI PER-MBDI
           END-IF 
           PERFORM Rew-MXBDIS
           PERFORM Controle-Marge.
           PERFORM Curseur-Fleche
           MODIFY Screen2-Handle, ENABLED TRUE.


       Controle-Marge-Une.
           MOVE AGE-MBDI TO AGE-MLDI
           MOVE BON-MBDI TO BON-MLDI
           MOVE ZERO TO RAN-MLDI W-EOF 
                        UNE-MARGE-BAD
                        MBP-MBDI MMI-MBDI MMX-MBDI TPR-MBDI
           START MXLDIS KEY NOT < CLE4-MLDI INVALID MOVE 1 TO W-EOF.
           IF W-EOF = 0
              READ MXLDIS NEXT END MOVE 1 TO W-EOF
              END-READ
              PERFORM STAT.
           PERFORM UNTIL W-EOF = 1 OR AGE-MLDI NOT = AGE-MBDI
              OR BON-MLDI NOT = BON-MBDI
                 PERFORM Lect-Art-Ou-Pre
                 IF (PZE-MLDI = 0 OR 1) AND ISQ-MLDI = 0 
                 AND INP-MLDI NOT = PRODUIT-C
                    PERFORM Trait-Marge
                 END-IF
                 READ MXLDIS NEXT END MOVE 1 TO W-EOF
                 END-READ
                 PERFORM Stat
           END-PERFORM.

       Controle-Marge.
           MOVE 0 TO ATTENTE-MARGE
           IF (BML-MAGD = 1 AND UNE-MARGE-BAD = 1)
191118* supprimé dans le cadre de la restandardisation de Topaz
      *     OR (MODU-M3 = 1 AND UNE-MARGE-BAD = 2)
              MOVE 1 TO ATTENTE-MARGE
           ELSE
              COMPUTE M-PLA ROUNDED 
                    = MBP-MBDI / (TAT-MBDI - TOT-RPM) * 100
              COMPUTE M-MIN ROUNDED 
                    = MMI-MBDI / (TAT-MBDI - TOT-RPM) * 100
              COMPUTE M-MAX ROUNDED 
                    = MMX-MBDI / (TAT-MBDI - TOT-RPM) * 100
              IF TAT-MBDI = 0 MOVE 0 TO M-PLA M-MIN M-MAX
              END-IF
              COMPUTE T-MARGE ROUNDED 
                  = (TAT-MBDI - TPR-MBDI) / TAT-MBDI * 100
              IF TAT-MBDI = 0 MOVE 0 TO T-MARGE
              END-IF
              IF T-MARGE NOT < M-PLA EXIT PARAGRAPH
              END-IF
           END-IF

           IF CBP-MAGD = 0 
           OR ((TYP-MBDI = 0 OR 8) | JB Romet: on ne bloque par les devis ni les commandes  
160414          AND CBD-MAGD NOT = 1)
              EXIT PARAGRAPH
           END-IF
           IF CDF = CHOIX-I 
              IF (IFA-MBDI = 0 AND TYP-MBDI = 1)
160414        OR ((TYP-MBDI = 0 OR 8) AND CBD-MAGD = 1)
                 MOVE 1 TO ATTENTE-MARGE
              END-IF
              EXIT PARAGRAPH
           END-IF
      *--- saisie autorisation si inferieur à marge mini
           PERFORM Acu-Screenmarge-Routine.
      

       ScreenMarge-Pb-Annuler-Link.
           MOVE 1 TO ATTENTE ATTENTE-MARGE
           MOVE 0 TO IFA-MBDI PER-MBDI
           PERFORM Rew-MXBDIS
           PERFORM Acu-ScreenMarge-Exit.

       ScreenMarge-Ef-Aut-Ev-Msg-Validate.
           INQUIRE ScreenMarge-Ef-Aut, VALUE IN M-AUT
           IF M-AUT = MDP-MAGD 
               PERFORM Mistral-CloseCurrentWindow
           ELSE
               MOVE "Autorisation incorrecte" TO ACU-MSG-1
               PERFORM MSG-ERREUR
           END-IF.

       ScreenMarge-Pb-Valider-Link.
           INQUIRE ScreenMarge-Ef-Aut, VALUE IN M-AUT
           IF M-AUT = MDP-MAGD 
               PERFORM Acu-ScreenMarge-Exit  
           ELSE
               MOVE "Autorisation incorrecte" TO ACU-MSG-1
               PERFORM MSG-ERREUR
           END-IF.
      *----------------- calcul complément remise ---------------------*
       Trait-Comp-Remise.
           MOVE REMC-MLDI TO SV-REMC
           MOVE REM-MLDI TO SV-REM
           IF W-INDRC = 2 
                MOVE ZERO TO REMC-MLDI
           END-IF
           IF REMC-MLDI NOT = SV-REMC
                SUBTRACT SV-REMC FROM REM-MLDI
                ADD REMC-MLDI TO REM-MLDI
                IF REM-MLDI < 0 MOVE 0 TO REM-MLDI
                END-IF
                PERFORM REW-MXLDIS
           END-IF        
           IF REM-MLDI NOT = SV-REM MOVE 1 TO W-MODREM
           END-IF.

      *----------------- calcul marge ligne ---------------------------*
       TRAIT-MARGE.
           PERFORM CAL-MON
           PERFORM CAL-PAC
           IF PZE-MLDI = 0 OR 1
                COMPUTE W-PM ROUNDED = (W-MON - W-PAC) / W-MON * 100
                IF W-MON = 0 MOVE 0 TO W-PM
                END-IF
           ELSE MOVE 0 TO W-PM
           END-IF.
           PERFORM TEST-MARGE

           IF IRPM-MLDI <> 1
              COMPUTE T-MG ROUNDED = W-MON * MMP-MGFD / 100
              ADD T-MG TO MBP-MBDI
              COMPUTE T-MG ROUNDED = W-MON * MMI-MGFD / 100
              ADD T-MG TO MMI-MBDI
              COMPUTE T-MG ROUNDED = W-MON * MMX-MGFD / 100
              ADD T-MG TO MMX-MBDI           
              ADD W-PAC TO TPR-MBDI
           END-IF.
           
      ******************************************************************
      *    Si forfait: mise à jour du prix au niveau de chaque ligne   *
      ******************************************************************
       Applic-Forfait.
           PERFORM Screen2-Ef-MFO-Aft-Procedure
           MOVE AGE-MBDI TO AGE-MLDI
           MOVE BON-MBDI TO BON-MLDI
           MOVE ZERO TO RAN-MLDI W-EOF NO-LF NO-LF1 TOT-HT  
           START MXLDIS KEY NOT < CLE4-MLDI INVALID MOVE 1 TO W-EOF.
           IF W-EOF = 0
              READ MXLDIS NEXT END MOVE 1 TO W-EOF
              END-READ
              PERFORM STAT.
           PERFORM UNTIL W-EOF = 1 OR AGE-MLDI NOT = AGE-MBDI
              OR BON-MLDI NOT = BON-MBDI
              IF PZE-MLDI = 0 AND INP-MLDI NOT = PRODUIT-C
                 PERFORM Maj-Lig-Forfait
              END-IF
              READ MXLDIS NEXT END MOVE 1 TO W-EOF
              END-READ
              PERFORM Stat
           END-PERFORM.
           IF TOT-HT NOT = MFO-MBDI
               PERFORM Maj-Dl-Forfait
           END-IF
           PERFORM Remp-Grille-Ldis.
           inquire Screen2-DaGd-1, last-row in WLAST-Row
           IF WLAST-Row NOT = 1
      *     IF D-INDICE NOT = 0 
               MOVE 2 TO Event-Data-2               
               MOVE 0 TO Screen2-DaGd-1-Cursor-Y-Old 
               PERFORM Screen2-DaGd-1-Ev-Msg-Goto-Cell
           END-IF.

       Maj-Lig-Forfait.
           MOVE ART-MLDI TO W-ART
           MOVE ZERO TO UPR-MART
           PERFORM CALF-MON
           IF INP-MLDI = PRODUIT-A AND AR1-MLDI NOT NUMERIC
           AND TLI-MLDI = 1 AND TYP-MBDI NOT = 8
               MOVE 1 TO W-OTE
               PERFORM Maj-Artsa
           END-IF

           IF IRPM-MLDI <> 1
              COMPUTE W-MON ROUNDED =
                (W-MON - (W-MON * W-PCTF / 100))
              IF INP-MLDI = PRODUIT-P AND NBT-MPGEV = 1
                   MOVE QTE-MLDI TO W-HEU
                   COMPUTE PUN-MLDI ROUNDED = (W-MON /
                             (W-HEU1 + (W-HEU2 / 60)))
              ELSE IF ISQ-MLDI = 0
                     IF UPR-MART = 0 OR INP-MLDI NOT = PRODUIT-A
                          COMPUTE PUN-MLDI ROUNDED = W-MON / QTE-MLDI
                     ELSE COMPUTE PUN-MLDI ROUNDED = W-MON / QTE-MLDI
                                                   * UPR-MART
                     END-IF
                   ELSE MOVE W-MON TO PUN-MLDI
                   END-IF
              END-IF
           END-IF.

           MOVE 0 TO REC-MLDI(1) REC-MLDI(2)
                     REC-MLDI(3) REC-MLDI(4)
                     REC-MLDI(5) REC-MLDI(6) REMC-MLDI
           COMPUTE PUB-MLDI ROUNDED = PUN-MLDI / (100 - REM-MLDI) * 100
           PERFORM CALF-MON
           ADD W-MON TO TOT-HT
           IF INP-MLDI = PRODUIT-A AND AR1-MLDI NOT NUMERIC
           AND TLI-MLDI = 1 AND TYP-MBDI NOT = 8
               MOVE 0 TO W-OTE
               PERFORM Maj-Artsa
           END-IF

           PERFORM Rew-Mxldis.

           PERFORM Maj-Hcd-Prix THRU F-Maj-Hcd-Prix
           PERFORM Maj-Hiv-Prix THRU F-Maj-Hiv-Prix
           MOVE LIG-MLDI TO NO-LF
           IF QTE-MLDI = 1 AND ISQ-MLDI = 0 MOVE LIG-MLDI TO NO-LF1
           END-IF.

      ******************************************************************
      *    Si total HT non égal au montant du forfait, régul sur la    *
      *    dernière ligne                                              *
      *    (si une ligne avec quantité = 1: régul sur cette ligne)     *
      ******************************************************************
       Maj-Dl-Forfait.
           IF NO-LF = 0 AND NO-LF1 = 0 
              EXIT PARAGRAPH
           END-IF
           MOVE AGE-MBDI TO AGE-MLDI
           MOVE BON-MBDI TO BON-MLDI
           IF NO-LF1 = ZERO MOVE NO-LF  TO LIG-MLDI
           ELSE             MOVE NO-LF1 TO LIG-MLDI.

           READ MXLDIS LOCK INVALID
               MOVE "Lecture LDIS/DL FORF." TO ACU-MSG-2
               MOVE CLE1-MLDI TO ACU-MSG-3 
               GO ERREUR.
           PERFORM STAT
           IF IND-STAT = 1 GO MAJ-DL-FORFAIT.
           PERFORM CALF-MON
           COMPUTE W-MOB ROUNDED = MFO-MBDI - TOT-HT
           COMPUTE W-MON ROUNDED = W-MOB / (100 - REM-MLDI) * 100
           MOVE 0 TO IPNS-MLDI

      *----- Si aucune ligne avec Quantité = 1
           IF NO-LF1 = ZERO
              IF INP-MLDI = PRODUIT-P AND NBT-MPGEV = 1
                   MOVE QTE-MLDI TO W-HEU                      
                   COMPUTE PUB-MLDI ROUNDED = PUB-MLDI + (W-MON /
                             (W-HEU1 + (W-HEU2 / 60)))
                   COMPUTE PUN-MLDI ROUNDED = PUN-MLDI + (W-MOB /
                             (W-HEU1 + (W-HEU2 / 60)))
              ELSE IF ISQ-MLDI = 0
                       IF UPR-MART = 0 OR INP-MLDI NOT = PRODUIT-A 
                            COMPUTE PUB-MLDI ROUNDED =
                               PUB-MLDI + (W-MON / QTE-MLDI)
                            COMPUTE PUN-MLDI ROUNDED =
                               PUN-MLDI + (W-MOB / QTE-MLDI)   
                       ELSE COMPUTE PUB-MLDI ROUNDED =
                               PUB-MLDI + (W-MON / QTE-MLDI * UPR-MART) 
                            COMPUTE PUN-MLDI ROUNDED =
                               PUN-MLDI + (W-MOB / QTE-MLDI * UPR-MART)  
                   ELSE ADD W-MON TO PUB-MLDI
                        ADD W-MOB TO PUN-MLDI. 
      *----- Si une ligne avec Quantité = 1
           IF NO-LF1 NOT = ZERO
                ADD W-MON TO PUB-MLDI
                ADD W-MOB TO PUN-MLDI. 
           
           PERFORM Rew-Mxldis.
           PERFORM Maj-Hcd-Prix THRU F-Maj-Hcd-Prix
           PERFORM Maj-Hiv-Prix THRU F-Maj-Hiv-Prix.

       CALF-MON.
           PERFORM Lect-Art-Ou-Pre
           PERFORM CAL-MON
           IF INP-MLDI = PRODUIT-A PERFORM RECH-CT
           END-IF
           IF INP-MLDI = PRODUIT-P PERFORM RECH-CTP
           END-IF
           IF W-CT = 0 OR (W-CT NOT = 0 AND RCT-MPAR(W-CT) = 1)
                MOVE ZERO TO W-TVA
           ELSE COMPUTE W-TVA ROUNDED = W-MON * TVA-MPAR(W-CT) / 100
           END-IF.
      
       Screen2-Ef-MFO-Aft-Procedure.
           INQUIRE Screen2-Ef-MFO, 
      *        VALUE IN MFO-MBDI
              VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==MFO-MBDI==.
           MODIFY Screen2-Ef-MFO, VALUE MFO-MBDI
           COMPUTE S-PCT ROUNDED = 
              (TOT-HT - TOT-RPM - MFO-MBDI) / TOT-HT * 100
           MULTIPLY -1 BY S-PCT
           COMPUTE W-PCTF ROUNDED = 
              (TOT-HT -TOT-RPM - MFO-MBDI) / TOT-HT * 100.
           MOVE S-PCT TO L-PCT
           MODIFY Screen2-La-PCT, TITLE L-PCT.
           MODIFY Screen2-La-LPCT, TITLE "%".

       Test-Forfait.
           MOVE 1 TO W-OK
           IF IFO-MBDI NOT = 1 OR TOT-HT = MFO-MBDI OR CDF = CHOIX-I 
              EXIT PARAGRAPH
           END-IF
           IF MFO-MBDI = 0
              MOVE "Vous n'avez pas renseigné le montant du forfait"
              TO ACU-MSG-1
              PERFORM MSG-INFO
              MOVE 0 TO W-OK
              EXIT PARAGRAPH
           END-IF
           MOVE "Souhaitez-vous appliquer le forfait de " TO ACU-MSG-1
           MOVE MFO-MBDI TO D72
           STRING D72 " " ABRD-MPAR " ? " DELIMITED BY SIZE 
                  INTO ACU-MSG-2
           PERFORM MSG-ONA
           IF ACU-RETURN-VALUE = 1
              PERFORM Applic-Forfait
              MOVE 0 TO W-OK
              EXIT PARAGRAPH
           END-IF
           IF ACU-RETURN-VALUE = 2
              MOVE TOT-HT TO MFO-MBDI
              EXIT PARAGRAPH
           END-IF
           MOVE 0 TO W-OK.

       Test-Risque-Screen2.
           IF not BRIC-MPAR = 1
              exit paragraph
           end-if
           if typ-mbdi > 1 
           or idv-mcli = 1
           or mob-palm > 0
              exit paragraph
           end-if
           MOVE 1 TO W-NIV
           PERFORM VERIF-RISQUE.

      ******************************************************************
      *    Intégration des lignes en commandes dans le B/L si modif    *
      ******************************************************************
       Integration-Commande.
           IF BCG-MBDI = ZERO OR TYP-MBDI NOT = 1 OR CDF = CHOIX-I 
           OR W-LIE = 1
              EXIT PARAGRAPH
           END-IF
           
           MOVE BCG-MBDI TO A-BON 
           MOVE BON-MBDI TO N-BON 

           MOVE W-AGE TO AGE-MBDI2
           MOVE A-BON TO BON-MBDI2
           READ MXBDIS2 LOCK INVALID exit paragraph
           END-READ
           PERFORM STAT
           MOVE "BON DE COMMANDE" TO ScreenOccupe-Fic
           MOVE CLE1-MBDI2 TO ScreenOccupe-Cle
           PERFORM Mis-EnregOccupe
           IF IND-STAT = 1 GO Integration-Commande
           END-IF.
           MOVE 1 TO W-TYPTRS
           PERFORM Transfert-Lignes THRU F-Transfert-Lignes.

      ******************************************************************
      *          Création de la commande à la fin de la saisie         *
      ******************************************************************
       Creation-Commande.
           MOVE 0 TO W-NewCde
           MOVE BCG-MBDI TO N-BON 
           MOVE BON-MBDI TO A-BON 
           IF N-BON NOT = ZERO 
              MOVE W-AGE TO AGE-MBDI2
              MOVE N-BON TO BON-MBDI2
              READ MXBDIS2 LOCK INVALID MOVE 0 TO N-BON
              END-READ
              PERFORM STAT
           END-IF
           IF N-BON NOT = 0 AND TYP-MBDI2 NOT = 0 
              MOVE 0 TO N-BON
           END-IF
           IF N-BON NOT = 0                     
              MOVE "BON DE COMMANDE" TO ScreenOccupe-Fic
              MOVE CLE1-MBDI2 TO ScreenOccupe-Cle
              PERFORM Mis-EnregOccupe
              IF IND-STAT = 1 GO Creation-Commande
              END-IF
           END-IF
           PERFORM Curseur-Sablier
           MODIFY Screen2-Handle, ENABLED FALSE
           MOVE 2 TO W-TYPTRS
           PERFORM Transfert-Lignes THRU F-Transfert-Lignes
           MODIFY Screen2-Handle, ENABLED TRUE
           PERFORM Curseur-Fleche
           IF W-NewCde NOT = 0 
              MOVE W-NewCde to D8
              STRING "La commande" " " D8 " a été générée" 
                     DELIMITED BY SIZE INTO ACU-MSG-1
              PERFORM Msg-Info
240611     
           ELSE
              IF NB-LIG-CDE = 0 AND N-BON <> 0 AND <> A-BON
                 PERFORM Del-Commande
              END-IF
240611
           END-IF.

      *--------------- lecture et transfert lignes --------------------*   
      *    W-TYPTRS = 1 : intégration commande dans B/L en modif
      *               2 : génération commande à la fin du B/L
      *               3 : création commande sur devis 
      *               9 : duplication devis ou création avoir
       Transfert-Lignes.
           MOVE W-AGE TO AGE-MLDI
           MOVE A-BON TO BON-MLDI
           MOVE ZERO  TO LIG-MLDI
171210     MOVE W-TYPTRS TO W-TYPTRSLIG
240611     MOVE ZERO TO NB-LIG-CDE
           START MXLDIS KEY NOT < CLE1-MLDI INVALID 
               GO F-Transfert-Lignes.
       Lec-Transfert-Lignes.
           READ MXLDIS NEXT END GO F-Transfert-Lignes.
           PERFORM STAT
           IF W-AGE NOT = AGE-MLDI 
           OR A-BON NOT = BON-MLDI 
               GO F-Transfert-Lignes.       
           IF (ART-MLDI = SPACES AND INP-MLDI NOT = PRODUIT-C) 
           OR (PZE-MLDI = 9)
           OR (TLI-MLDI NOT = 3 AND INP-MLDI NOT = PRODUIT-C)
           OR (TLI-MLDI NOT = 3 
               AND INP-MLDI = PRODUIT-C AND W-TYPTRS = 2)
               GO Lec-Transfert-Lignes.
240611     ADD 1 TO NB-LIG-CDE.

       Relec-Transfert-Lignes.
           READ MXLDIS LOCK 
           PERFORM STAT
           MOVE "LIGNE DE BON" TO ScreenOccupe-Fic
           MOVE CLE1-MLDI TO ScreenOccupe-Cle
           PERFORM Mis-EnregOccupe
           IF IND-STAT = 1 GO Relec-Transfert-Lignes
           END-IF.

           MOVE LIG-MLDI TO A-LIG
           MOVE CLE1-MLDI TO A-CLE
           DELETE MXLDIS INVALID MOVE "Delete LDIS" TO Acu-Msg-2
                                 MOVE CLE1-MLDI TO Acu-Msg-3
                                 GO ERREUR.
           PERFORM STAT.

           | création de l'entête 
           IF N-BON = 0 PERFORM Creat-Entete-Commande
           END-IF.

           | écriture de la ligne
       Ecr-Lig-Transfert-Lignes.
           MOVE N-BON TO BON-MLDI
           WRITE ENR-MLDI INVALID ADD 1 TO LIG-MLDI 
                                  GO Ecr-Lig-Transfert-Lignes.
           PERFORM STAT.
           MOVE LIG-MLDI TO N-LIG
           MOVE CLE1-MLDI TO N-CLE  
           MOVE SPACE TO W-INO
           IF INP-MLDI = PRODUIT-C               
              MOVE N-CLE TO N-CLEB
              MOVE A-CLE TO A-CLEB
              MOVE 0 TO W-TYPTRS
              PERFORM Transfert-Mxcomment
171210        MOVE W-TYPTRSLIG TO W-TYPTRS
           END-IF
           PERFORM Maj-Rev-Commande  THRU F-Maj-Rev-Commande
100613     IF W-TYPTRS NOT = 1          | Sinon on perd le n° de commande pour PRIM
              PERFORM Maj-Hcd-Commande  THRU F-Maj-Hcd-Commande 
           END-IF
           PERFORM Maj-Contremarque  THRU F-Maj-Contremarque
           | à faire en dernier car change N-CLE et A-CLE
           PERFORM Transfert-Nomldis THRU F-Transfert-Nomldis
       
           GO Transfert-Lignes.
       F-Transfert-Lignes.

      *------------- création de l'entête de la commande --------------*
       Creat-Entete-Commande.
           MOVE W-AGE TO COD-MAGD
           READ MXAGEDIS LOCK INVALID
              MOVE "Lecture AGEDIS" TO Acu-Msg-2
              MOVE CLE1-MAGD TO Acu-Msg-3 GO ERREUR.
           PERFORM STAT
           MOVE "AGENCE" TO ScreenOccupe-Fic
           MOVE CLE1-MAGD TO ScreenOccupe-Cle
           PERFORM Mis-EnregOccupe
           IF IND-STAT = 1 GO Creat-Entete-Commande
           END-IF.
           ADD 1 TO BON-MAGD
           REWRITE ENR-MAGD INVALID
              MOVE "Réécriture AGEDIS" TO Acu-Msg-2
              MOVE CLE1-MAGD TO Acu-Msg-3 GO ERREUR.
           PERFORM STAT     
           MOVE ENR-MBDI TO ENR-MBDI2
           MOVE W-AGE    TO AGE-MBDI2
           MOVE BON-MAGD TO BON-MBDI2
           READ MXBDIS2 NOT INVALID GO Creat-Entete-Commande
           END-READ
           PERFORM STAT
           MOVE 1 TO W-IND
           PERFORM Test-Hisvte THRU F-Test-Hisvte
           IF W-IND = 0 GO Creat-Entete-Commande
           END-IF
           MOVE W-DAT TO DAT-MBDI2
           MOVE ZERO TO TYP-MBDI2 IFA-MBDI2 TRA-MBDI2 BCG-MBDI2
                        ACO-MBDI2 EDI-MBDI2 ADD-MBDI2
           MOVE 0 TO TAA-MBDI2
010910     MOVE 0 TO MPF-MBDI2
      * Landa
           IF BCO-MBDI = 0 
230309     AND TYP-MBDI NOT = 8 
                MOVE BON-MBDI TO BCO-MBDI2
                MOVE DAT-MBDI TO DCO-MBDI2
                MOVE DLP-MBDI TO DLO-MBDI2
           END-IF.
      *
           IF MOB-PALM > 0 MOVE 1 TO IES-MBDI.
           MOVE BON-MBDI2 TO BCG-MBDI N-BON W-NewCde 
           WRITE ENR-MBDI2 INVALID GO Creat-Entete-Commande
           END-WRITE
           PERFORM STAT.
           MOVE CLE1-MBDI TO A-CLEB
           MOVE CLE1-MBDI2 TO N-CLEB
           MOVE "E" TO W-INO
           PERFORM Transfert-Mxcomment.


      *--------- changement n° bon et n° ligne dans réservation -------*
       Maj-Rev-Commande.
       F-Maj-Rev-Commande.
      *--------- changement n° bon et n° ligne dans histo cdes -------*
       Maj-Hcd-Commande.
       F-Maj-Hcd-Commande.
      *
      *--------------- changement prix dans histo cdes ----------------*
       Maj-Hcd-Prix.
       F-Maj-Hcd-Prix.

      *--------------- changement prix dans histo vtes ----------------*
       Maj-Hiv-Prix.
           IF HIV-MLDI = 0
              GO F-Maj-Hiv-Prix
           END-IF
           MOVE HIV-MLDI TO NUM-MHIV
           READ MXHISVTE LOCK INVALID GO F-Maj-Hiv-Prix
           END-READ
           PERFORM STAT
           IF IND-STAT = 1 GO Maj-Hiv-Prix
           END-IF
           MOVE PUN-MLDI TO PUB-MHIV
           MOVE REM-MLDI TO REM-MHIV
           COMPUTE MCU-MHIV ROUNDED = PUN-MLDI - PRU-MLDI
160109     ACCEPT DME-MHIV FROM CENTURY-DATE
           REWRITE ENR-MHIV 
           PERFORM STAT
           .
       F-Maj-Hiv-Prix.
      *------------ transfert lignes nomenclature/bon commande --------*
       Transfert-Nomldis.
       F-Transfert-Nomldis.

      *------ changement n° commande et n° ligne dans contremarque ----*
       Maj-Contremarque.
       F-Maj-Contremarque.

      *---------- transfert commentaire entre commande et BL ----------*
       Transfert-Mxcomment.
           MOVE SPACE  TO ENR-MCMO
           MOVE "D"    TO ORI-MCMO
           MOVE A-CLEB TO CLE-MCMO
           MOVE W-INO  TO INO-MCMO
           READ MXCOMMENT LOCK INVALID EXIT PARAGRAPH
           END-READ
           PERFORM STAT
           IF IND-STAT = 1 GO Transfert-MXCOMMENT.
           IF W-TYPTRS NOT = 9
           AND ((W-INO NOT = "C" AND NOT = "E")
                OR (W-INO = "C" AND W-TYPTRS NOT = 3)) 
              DELETE MXCOMMENT 
              PERFORM STAT.
           MOVE N-CLEB TO CLE-MCMO
           WRITE ENR-MCMO
           PERFORM STAT.

      ******************************************************************
      *  Recherche 1er type de commande normal pour mettre par défaut  *
      ******************************************************************
       Rech-TCC-Default.
           move "1" to TCC-Normal TCC-Default
           move "2" to TCC-Urgent
           move "3" to TCC-Stock.

      ******************************************************************
      *       DEBUT DRAG & DROP
      ******************************************************************
       Screen2-DaGd-1-Ev-Msg-Begin-Drag.
           PERFORM Screen2-DaGd-1-Ev-Msg-Goto-Cell
           IF CDF = CHOIX-I OR EVENT-DATA-2 < 2
              MOVE EVENT-ACTION-FAIL TO EVENT-ACTION
              EXIT PARAGRAPH
           END-IF

           MODIFY Screen2-DaGd-1, CURSOR-COLOR = 160.
           MOVE Screen2-DaGd-1-Cursor-Y-Old TO SV-Y-OLD.      | Spécifique pour MobiVip car Drag and drop ne fonctionne pas sinon

      ****************************************************************** 
      *       FIN DRAG & DROP
      ******************************************************************
       Screen2-DaGd-1-Ev-Msg-End-Drag.
           IF CDF = CHOIX-I 
              MOVE EVENT-ACTION-FAIL TO EVENT-ACTION
              EXIT PARAGRAPH
           END-IF
141008     MOVE SV-Y-OLD TO  Screen2-DaGd-1-Cursor-Y-Old 
      *     INQUIRE Screen2-DaGd-1(Screen2-DaGd-1-Cursor-Y-Old, WCOL-TLI)
      *             CELL-DATA IN W-TLI
      *     IF W-TLI = 3 AND TYP-MBDI NOT = 0 
      *        MOVE EVENT-ACTION-FAIL TO EVENT-ACTION
      *        EXIT PARAGRAPH
      *     END-IF
           | si on n'a pas changé de ligne
           if event-data-2 = Screen2-DaGd-1-Cursor-Y-Old 
              perform Screen2-DaGd-1-Ev-Msg-Goto-Cell
           end-if

           | La ligne de titre est à ignorer...
           if Event-Data-2 < 2
             move 2 TO Event-Data-2
           end-if

           move event-data-2 to Screen2-DaGd-1-Cursor-Y

           inquire Screen2-DaGd-1(Screen2-DaGd-1-Cursor-Y-Old),
                   record-data = Ligne-Af

           | on mémorise la dernière ligne avant le delete
           INQUIRE Screen2-DaGd-1, LAST-ROW IN WLAST-Row
141008     MODIFY Screen2-DaGd-1(Event-Data-2), ROW-COLOR = 0
           modify Screen2-DaGd-1(Screen2-DaGd-1-Cursor-Y-Old),
                      row-color = 0, 
                      record-to-delete = Screen2-DaGd-1-Cursor-Y-Old
           
           INQUIRE Screen2-DaGd-1, LAST-ROW IN WLAST-Row
           | insertion dans la grille
      *     if Screen2-DaGd-1-Cursor-Y not < WLAST-Row 
           if Screen2-DaGd-1-Cursor-Y > WLAST-Row
                modify Screen2-DaGd-1, Y = WLAST-Row + 1,
                      record-data = Ligne-Af,
                COMPUTE WY = WLAST-Row + 1
                IF MOB-PALM = 0                                     | (cf commentaire ci-dessous)
                    PERFORM Sauv-Grid-Cle                         
                END-IF
           else modify Screen2-DaGd-1, 
                      INSERTION-INDEX = Screen2-DaGd-1-Cursor-Y,
                      record-to-add = Ligne-Af,
                      y = Screen2-DaGd-1-Cursor-Y
                move Screen2-DaGd-1-Cursor-Y to WY
                IF MOB-PALM  = 0                                    | car dans MobiVip : LIG-MLDI = ligne "d'arrivée" 
                    PERFORM Sauv-Grid-Cle                           | Sur le système central c'est la ligne déplacée !!
                END-IF
           end-if.

           modify Screen2-DaGd-1(Screen2-DaGd-1-Cursor-Y),
                      cursor-color = 0
                      row-color = Screen2-DaGd-1-Row-Highlight-Color

           move event-data-1 to Screen2-DaGd-1-Cursor-X
                                Screen2-DaGd-1-Cursor-X-Old
           move event-data-2 to Screen2-DaGd-1-Cursor-Y
                                Screen2-DaGd-1-Cursor-Y-Old.

           PERFORM RECAL-RANG THRU F-RECAL-RANG.
           if event-data-2 > WLAST-Row
              move WLAST-Row to event-data-2 Screen2-DaGd-1-Cursor-Y
                                Screen2-DaGd-1-Cursor-Y-Old
           end-if

           perform Screen2-DaGd-1-Ev-Msg-Goto-Cell.

       RECAL-RANG.
           modify Screen2-Handle, enabled 0

           perform curseur-sablier
           inquire Screen2-DaGd-1, LAST-ROW in WLAST-Row
           MOVE 0 to d-ran 
           perform varying tmp-9-3 from 2 by 1 until tmp-9-3 > WLAST-Row
              INQUIRE Screen2-DaGd-1(TMP-9-3, WCol-Lig),
                   CELL-DATA IN LIG-MLDI
              INQUIRE Screen2-DaGd-1(TMP-9-3, WCol-Bon),
                   CELL-DATA IN BON-MLDI
              IF LIG-MLDI NOT = 0 
                   ADD 1 TO D-RAN
                   MOVE W-AGE TO AGE-MLDI
                   READ MXLDIS INVALID 
                          MOVE "Lecture LDIS/RECAL RANG" TO Acu-Msg-2
                          MOVE CLE1-MLDI TO Acu-Msg-3 GO ERREUR
                   END-READ
                   PERFORM STAT
                   MOVE D-RAN TO RAN-MLDI
                   PERFORM Rew-MXLDIS
              END-IF
           END-PERFORM
           modify Screen2-Handle, enabled 1
           perform curseur-fleche.
       F-RECAL-RANG.

      *
      *    Repositionnement des écrans après un call
      *
       Repositionne-Screen2.
      *     INQUIRE Screen1-Handle, COLUMN IN W-COLUMN, LINE IN W-LINE
      *     ADD 1 TO W-LINE
      *     ADD -0,5 TO W-COLUMN
      *     MODIFY Screen2-Handle, COLUMN W-COLUMN, LINE W-LINE.
      *
       Repositionne-Screen3.
261239**    corrige pb placement sur double écran       
      *     INQUIRE Screen1-Handle,
      *        SCREEN COLUMN IN w-column
      *        SCREEN LINE   IN w-line
      *     MODIFY Screen3-Handle,
      *        SCREEN COLUMN w-column
      *        SCREEN LINE   w-line
261219*
      *     INQUIRE Screen1-Handle, COLUMN IN W-COLUMN, LINE IN W-LINE
      *     ADD -0,35 TO W-LINE
      *     ADD -1 TO W-COLUMN
      *     MODIFY Screen3-Handle, COLUMN W-COLUMN, LINE W-LINE.

      *
      *    Gestion du transport
      *
       Screen3-DaCb-TTR-Ev-Cmd-Clicked.
           INQUIRE Screen3-DaCb-TTR, value in Screen3-DaCb-TTR-BUF
           if ntp-magd not = 4 
              perform Aff-Transport
              exit paragraph
           end-if
           if tyc-mbdi = 2 and w-cop not = w-cop-pr
              exit paragraph
           end-if
           IF Screen3-DaCb-TTR-BUF = 0 
              if ind-ann = 1 
                 modify Screen3-DaCb-TTR, value 1
                 move 1 to Screen3-DaCb-TTR-BUF 
              else
                 move 0 to ttr-mbdi mpf-mbdi Screen3-DaCb-TTR-BUF
                 perform Aff-Transport
090910           PERFORM Cal-Totaux
                 exit paragraph
              end-if    
           end-if.
      *     PERFORM Screen3-Pb-Trs-Link.

      *
       Aff-Transport.
           if Screen3-DaCb-TTR-BUF = 0 OR NTP-MAGD = 0
           OR (NTP-MAGD = 4 AND TYP-MBDI NOT = 1
271015                      AND NOT = 0 AND NOT = 8)
              modify Screen3-DaCb-TTR, value 0
              MODIFY Screen3-la-Trp, visible 0
              MODIFY Screen3-ef-mpf, visible 0
              exit paragraph
           end-if
           modify Screen3-DaCb-TTR, value 1
           IF NTP-MAGD NOT = 4 
                MODIFY Screen3-la-Trp, title LIP-MAGD, visible 1 
           ELSE MODIFY Screen3-la-Trp, title RAI-MFOU, visible 1
                MOVE MPF-MBDI TO D62
                exit paragraph
           END-IF
           IF NTP-MAGD = 1 OR 3 
                MOVE FOP-MAGD TO Ef-Trp1
                MOVE "%" to Ef-Trp2
                MODIFY Screen3-ef-mpf, value Ef-Trp, visible 1
           ELSE IF NTP-MAGD NOT = 4
                    MOVE FOP-MAGD TO D62
                    MODIFY Screen3-ef-mpf, value D62, visible 1
                END-IF
           END-IF.
      *
       Screen3-Pb-Trs-Link.

       TEST-COMPL.
           MOVE 0 TO W-COMPL.

       TEST-EQUIV.
           MOVE 0 TO W-EQUIV.

       Gener-Compl.

       Mis-EnregOccupe.
       COPY "W:/mistral/copy/Mis-EnregOccupe.cbl"..
      *
       Affiche-Saisies-SAV.
      *
       Screen1-DaRb-IRE0-Ev-Cmd-Clicked.
           perform affiche-tsp.
      *
       Screen1-DaRb-IRE1-Ev-Cmd-Clicked.
           perform efface-tsp
           .
      *
       Screen1-DaRb-IRE2-Ev-Cmd-Clicked.
           perform efface-tsp.
      *
       Screen1-DaRb-IRE9-Ev-Cmd-Clicked.
           perform affiche-tsp.

       Screen1-Ef-MRU-Aft-Procedure.
           INQUIRE Screen1-Ef-MRU, VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==MRU-MBDI==.
           MODIFY Screen1-Ef-MRU, VALUE MRU-MBDI
           .
      *
       LECT-GROUTL.
           .

       Screen2-Pb-FicheArt-Link.
           MOVE SPACE TO LK-ART-C  
           MOVE 1 TO LK-ART-C-CALL
           IF AR2-MLDI = SPACE 
           OR INP-MLDI <> PRODUIT-A
           OR AR1-MLDI NUMERIC
              IF MOB-PALM > 0 EXIT PARAGRAPH
              ELSE MOVE CHOIX-C TO LK-ART-C-CHO
              END-IF
           ELSE MOVE CHOIX-M TO LK-ART-C-CHO
                MOVE ART-MLDI TO LK-ART-C-COD  
                MOVE FCO-MCLI TO LK-ART-C-FCO  

           END-IF
           CALL "art-c.acu" USING ZONE-PALM LK-ART-C
           CANCEL "art-c.acu"
           IF CDFL = CHOIX-C
              MOVE LK-ART-C-COD TO W-ART
              MODIFY Screen2-Ef-Ar1, VALUE W-AR1
              MODIFY Screen2-Ef-Ar2, VALUE W-AR2 
              PERFORM Screen2-Ef-Ar2-AfterProcedure
           END-IF
           .

       Test-Exi-Art.
           MOVE AGE-MBDI TO AGE-MLDI2
           MOVE BON-MBDI TO BON-MLDI2

           MOVE ZERO  TO LIG-MLDI2
           START MXLDIS2 KEY NOT < CLE1-MLDI2 INVALID 
               GO F-Test-Exi-Art.
       Lec-Test-Exi-Art.
           READ MXLDIS2 NEXT END GO F-Test-Exi-Art.
           PERFORM STAT
           IF AGE-MBDI NOT = AGE-MLDI2 
           OR BON-MBDI NOT = BON-MLDI2 
               GO F-Test-Exi-Art.       
           IF ART-MLDI2 NOT = W-ART 
           OR INP-MLDI2 NOT = PRODUIT-A 
               GO Lec-Test-Exi-Art.
           MOVE "Article déjà présent sur ce bon" to acu-msg-1
           move"Confirmez-vous ?" to acu-msg-2
           perform msg-on.
           IF ACU-RETURN-VALUE <> 1
              MOVE 0 TO W-OK.
       F-Test-Exi-Art.

       Change-Date-Bon.
           if w-dat = dat-mbdi 
              MODIFY Screen1-Ef-DAT, enabled 0 
              exit paragraph
           end-if
           MOVE "Attention! " to acu-msg-1
           move "Voulez-vous vraiment changer la date de ce bon???"
           to acu-msg-2
           perform msg-on
           if acu-return-value not = 1 
              move dat-mbdi to d-samj 
              perform convdat-samj-jmsa
              MODIFY Screen1-Ef-DAT, VALUE l-dat8, enabled 0 
              exit paragraph
           end-if
           move dat-mbdi to d-samj
           perform convdat-samj-jmsa
           MOVE "Confirmez-vous le changement de date SVP." 
           to acu-msg-1
           string "Date actuelle :" " " l-dat8 into acu-msg-2
           move w-dat to d-samj
           perform convdat-samj-jmsa
           string "Nouvelle date :" " " l-dat8 into acu-msg-3
           perform msg-on
           if acu-return-value not = 1 
              move dat-mbdi to d-samj 
              perform convdat-samj-jmsa
              MODIFY Screen1-Ef-DAT, VALUE l-dat8, enabled 0  
              exit paragraph

           end-if   
111012     move w-dat to sv-dat-bon
           MOVE W-AGE TO AGE-MLDI
           MOVE W-BON TO BON-MLDI
           MOVE ZERO TO RAN-MLDI W-EOF 
           START MXLDIS KEY NOT < CLE4-MLDI INVALID MOVE 1 TO W-EOF.
           IF W-EOF = 0
               READ MXLDIS NEXT END MOVE 1 TO W-EOF
               END-READ
               PERFORM STAT.
           PERFORM UNTIL W-EOF = 1
                   OR BON-MLDI NOT = W-BON 
                   OR AGE-MLDI NOT = W-AGE
                MOVE 1 TO W-OTE
111012          move dsp-mldi to w-dat 
                PERFORM Maj-Ligne
111012          move sv-dat-bon to w-dat 
                MOVE W-DAT TO DSP-MLDI
                MOVE 0 TO W-OTE
                PERFORM Maj-Ligne   
                PERFORM Rew-MXLDIS
                READ MXLDIS NEXT END MOVE 1 TO W-EOF
                END-READ
                PERFORM STAT
           END-PERFORM
           MOVE W-DAT TO DAT-MBDI
           PERFORM Rew-MXBDIS  
           MOVE "Modification effectuée" 
           to acu-msg-1
           perform msg-info
           MODIFY Screen1-Ef-DAT, enabled 0 
           .

       Mod-Prix-Cli.
           PERFORM LECT-TSPENT
           MOVE W-AGE TO AGE-MLDI
           MOVE W-BON TO BON-MLDI
           MOVE ZERO TO RAN-MLDI W-EOF 
           START MXLDIS KEY NOT < CLE4-MLDI INVALID MOVE 1 TO W-EOF.
           IF W-EOF = 0
               READ MXLDIS NEXT END MOVE 1 TO W-EOF
               END-READ
               PERFORM STAT.
           PERFORM UNTIL W-EOF = 1
                   OR BON-MLDI NOT = W-BON 
                   OR AGE-MLDI NOT = W-AGE
                IF INP-MLDI = PRODUIT-A
                AND AR1-MLDI NOT NUMERIC
                AND PZE-MLDI NOT = 1
                   PERFORM Mep-Age-Masa
                   MOVE ART-MLDI TO COD-MART COD-MASA
                   READ MXART
                   PERFORM STAT
                   READ MXARTSA
                   PERFORM STAT
                   MOVE SPACE TO ENR-MFAM ENR-MGFA
                   MOVE GRA-MART TO GRA-MFAM GRA-MGFA
                   MOVE FAM-MART TO FAM-MFAM FAM-MGFA
                   READ MXFAMART

                   PERFORM STAT
                   READ MXGRAFAM
                   PERFORM STAT
                   PERFORM Maj-Pri-Art
                   PERFORM Rew-MXLDIS
                END-IF
                IF INP-MLDI = PRODUIT-P AND PZE-MLDI NOT = 1
                   MOVE PRE-MLDI TO COD-MPGE COD-MPGEV
                   READ MXPREGEN INVALID EXIT PERFORM CYCLE
                   END-READ
                   PERFORM STAT
                   READ MXPREGENV INVALID EXIT PERFORM CYCLE
                   END-READ
                   PERFORM STAT
                   PERFORM LECT-TSPMOP
                   PERFORM Maj-Pri-Pre
                   PERFORM Rew-MXLDIS
                END-IF
                READ MXLDIS NEXT END MOVE 1 TO W-EOF

                END-READ
                PERFORM STAT
           END-PERFORM
           MOVE "Modification effectuée" to acu-msg-1
           perform msg-info.

       Mod-Dli.
           MOVE W-AGE TO AGE-MLDI
           MOVE W-BON TO BON-MLDI
           MOVE ZERO TO RAN-MLDI W-EOF 
           START MXLDIS KEY NOT < CLE4-MLDI INVALID MOVE 1 TO W-EOF.
           IF W-EOF = 0
               READ MXLDIS NEXT END MOVE 1 TO W-EOF
               END-READ
               PERFORM STAT.
           PERFORM UNTIL W-EOF = 1
                   OR BON-MLDI NOT = W-BON 
                   OR AGE-MLDI NOT = W-AGE
                IF INP-MLDI = "A"
                AND AR1-MLDI NOT NUMERIC
                   MOVE ART-MLDI TO COD-MART 
                   READ MXART
                   PERFORM STAT
                END-IF
     
                IF TLI-MLDI = 3 
                   MOVE DLP-MBDI TO DLP-MLDI
                   MOVE TCC-MBDI TO TCC-MLDI
                   PERFORM Mep-TCF-MLDI
                   MOVE 0 TO W-OTE
                   PERFORM Maj-Reserv THRU F-Maj-Reserv 
                   PERFORM Rew-MXLDIS
                   PERFORM MOD-DLI-NOMLDIS THRU F-MOD-DLI-NOMLDIS
                END-IF
                IF TYP-MBDI = 8
                   MOVE DLP-MBDI TO DLP-MLDI
                   MOVE TCC-MBDI TO TCC-MLDI                      
                   PERFORM Mep-TCF-MLDI
                   PERFORM Rew-MXLDIS
                END-IF
                READ MXLDIS NEXT END MOVE 1 TO W-EOF
                END-READ
                PERFORM STAT
           END-PERFORM
           MOVE "Modification effectuée" to acu-msg-1
           perform msg-info.

       Mep-TCF-MLDI.

      *
       ScreenRUP-Ef-QTL-Ev-Msg-Validate.
           inquire ScreenRUP-Ef-QTL, 
              VALUE ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==SV-MON==.
           if sv-mon not = sst-qtl
              compute sst-qtc = sst-qtl - sv-mon + sst-qtc
              modify ScreenRUP-Ef-QTC, VALUE SST-QTC
           end-if
           move sv-mon to sst-qtl
           modify ScreenRUP-Ef-QTL, VALUE SST-QTL
           .
      *
       ScreenRUP-Ef-QTC-Ev-Msg-Validate.
           inquire ScreenRUP-Ef-QTC, 
              VALUE ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==SST-QTC==.
           modify ScreenRUP-Ef-QTC, VALUE SST-QTC
           .
      *
       Screen2-Pb-Recherche-Link.
      *-------------------------*
           INQUIRE Screen2-Pb-Recherche,
              VISIBLE IN W-VS-PB
           IF W-VS-PB = 1 THEN
              PERFORM ACU-ScreenRech-Routine
              IF I <> 0 THEN
      *          Recherche fructueuse
                 INQUIRE Screen2-DaGd-1, 
                    CURSOR-Y IN Event-Data-2
              ELSE
                 MOVE Screen2-DaGd-1-Cursor-Y-Old TO Event-Data-2
                 MOVE 0 TO Screen2-DaGd-1-Cursor-Y-Old
              END-IF
              PERFORM Screen2-DaGd-1-Ev-Msg-Goto-Cell
           END-IF
           .

      ******************************************************************
      *                      SCREENRECH  RECHERCHE LIGNE
      ******************************************************************
      *
       ScreenRech-Bef-Create.
           MOVE SPACE TO W-ARTR
           MOVE 0 TO I
           .


       ScreenRech-Ef-AR2-Aft-Procedure.
           IF W-ARTR1 NOT NUMERIC THEN   
              INITIALIZE      LK-SCODART-L
              MOVE W-ARTR2 TO LK-SCODART-L-REF
              MOVE 1       TO LK-SCODART-L-VTE
      *       Recherche article sur code article sans idf ou référence
              CALL   "scodart-l.acu" 
                 USING ZONE-PALM 
                       LK-SCODART-L
              CANCEL "scodart-l.acu"
              IF LK-SCODART-L-ART = SPACE THEN
                 MOVE SPACE TO W-ARTR3
              ELSE
                 MOVE LK-SCODART-L-ART TO W-ARTR3
              END-IF
              PERFORM Fin-ArtR
           ELSE
              MOVE W-ARTR TO W-ARTR3
           END-IF
           .
      *
       ScreenRech-Pb-Liste-Link.
           INITIALIZE LK-MART-L
           CALL   "mart-l.acu" 
              USING ZONE-PALM 
                    LK-MART-L
           CANCEL "mart-l.acu"
           IF LK-MART-L-COD = SPACE
              EXIT PARAGRAPH
           END-IF     
           MOVE LK-MART-L-COD TO W-ARTR3
           PERFORM Fin-ArtR
           .

       Fin-ArtR.
           INITIALIZE ENR-MART
           IF  W-ARTR3 <> SPACE 
           AND W-ARTR31 NOT NUMERIC THEN
              MOVE W-ARTR3 TO COD-MART
              READ MXART
              INVALID
                 INITIALIZE ENR-MART
              END-READ     
              PERFORM STAT
           END-IF             
           MOVE W-ARTR3 TO W-ARTR
           MODIFY ScreenRech-Ef-AR1,
              VALUE W-ARTR1
           MODIFY ScreenRech-Ef-AR2,
              VALUE W-ARTR2
           .

       ScreenRech-Pb-Valider-Link.
           IF W-ARTR = SPACE THEN
              EXIT PARAGRAPH
           END-IF
           MOVE W-ARTR31 TO W-ARTRGD1
           MOVE W-ARTR32 TO W-ARTRGD2

           INITIALIZE GRID-SEARCH-OPTIONS
      *    A partir du curseur
           MOVE 1 TO GRID-SEARCH-WRAP-FLAG
      *    GRID-SEARCH-MATCH-ALL : colonne entière        
           MOVE 2 TO GRID-SEARCH-MATCH-FLAG
      *    Colonne de recherche
           MOVE 2 TO GRID-SEARCH-COLUMN
           MODIFY Screen2-DaGd-1,   
              SEARCH-OPTIONS GRID-SEARCH-OPTIONS   
           MODIFY Screen2-DaGd-1 (Screen2-DaGd-1-Cursor-Y, 2),    
              SEARCH-TEXT W-ARTRGD GIVING I
           IF I = 0 THEN
              MOVE "Article non trouvé. Recherche à partir du début ?"
                TO ACU-Msg-1
              PERFORM Msg-ON
              IF ACU-Return-Value = 0 THEN
                 EXIT PARAGRAPH
              END-IF
              INITIALIZE GRID-SEARCH-OPTIONS
              MOVE 0 TO GRID-SEARCH-WRAP-FLAG
      *       GRID-SEARCH-MATCH-ALL : colonne entière        
              MOVE 2 TO GRID-SEARCH-MATCH-FLAG
      *       Colonne de recherche
              MOVE 2 TO GRID-SEARCH-COLUMN
              MODIFY Screen2-DaGd-1,   
                 SEARCH-OPTIONS GRID-SEARCH-OPTIONS   
              MODIFY Screen2-DaGd-1 (2, 2),    
                 SEARCH-TEXT W-ARTRGD GIVING I
              IF I = 0 THEN
                 MOVE "Article non trouvé." TO ACU-Msg-1
                 PERFORM Msg-Info
                 EXIT PARAGRAPH
              END-IF
           END-IF
           PERFORM ACU-ScreenRech-Exit
           .
      *
       ScreenRech-Pb-Annuler-Link.
           PERFORM ACU-ScreenRech-Exit
           .
      *
        
      * Saisie ou affichage des montants en TTC
       Screen2-Pb-TTC-Link.
           if ifd-mbdi = 1 and crs-mbdi <> 0
              perform Screen2-Pb-TTC-DEV
              exit paragraph
           end-if
           IF CDF = "I" 
           OR PZE-MLDI <> 0
           or (inp-mldi <> PRODUIT-A
190419              and <> PRODUIT-P)
           or (inp-mldi = PRODUIT-A and
               (ino-mart > 0 and < 3) and ar1-mldi not numeric)
              EXIT PARAGRAPH
           END-IF
           IF INP-MLDI = PRODUIT-A PERFORM RECH-CT.
           IF INP-MLDI = PRODUIT-P PERFORM RECH-CTP.
           IF W-CT = 9 OR 0
              EXIT PARAGRAPH
           END-IF
           IF RCT-MPAR(W-CT) = 1
              EXIT PARAGRAPH
           END-IF

           MOVE 0 TO WENABLE
           PERFORM Screen2-Enable

           IF INP-MLDI = PRODUIT-A PERFORM RECH-CT.
           IF INP-MLDI = PRODUIT-P PERFORM RECH-CTP.
           PERFORM CAL-MON
           
           MOVE W-MON TO SV-MON
           COMPUTE W-TVA ROUNDED = W-MON
                           * TVA-MPAR(W-CT) / 100
           ADD W-TVA TO SV-MON
           
           MODIFY Screen2-DaEf-Mon, ENABLED 1, VALUE SV-MON
           modify Screen2-La-MHT, TITLE "Montant TTC", color 13
           move 4 to accept-control
           move 111 to control-id
           .
      * Saisie ou affichage des montants en devise
       Screen2-Pb-TTC-DEV.
           IF CDF = "I" 
           OR PZE-MLDI <> 0
           or (inp-mldi <> "A" and <> "P")
              EXIT PARAGRAPH
           END-IF
           
           MOVE 0 TO WENABLE
           PERFORM Screen2-Enable

           PERFORM CAL-MON
           COMPUTE SV-MON ROUNDED = W-MON * CRS-MBDI
           
           move space to W-TIT
           MODIFY Screen2-DaEf-Mon, ENABLED 1, VALUE SV-MON
           string "Montant" " " dev-mcli delimited by "  " into w-tit
           modify Screen2-La-MHT, TITLE w-tit, color 13
           move 4 to accept-control
           move 111 to control-id
           .
      *
       Screen2-DaEf-Mon-Ev-Msg-Validate.             
      *     inquire Screen2-DaEf-Mon, value W-MAJMON
           INQUIRE Screen2-DaEf-Mon, VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==W-MAJMON==.
           MODIFY Screen2-DaEf-Mon, VALUE W-MAJMON
           MOVE 1 TO WENABLE
           PERFORM Screen2-Enable
           MODIFY Screen2-DaEf-Mon, ENABLED 0
           modify Screen2-La-MHT, TITLE "Montant HT", color 2

           IF W-MAJMON = SV-MON
              perform Affiche-Prix
              exit paragraph
           end-if
           
           if ifd-mbdi = 1 and crs-mbdi <> 0
              COMPUTE W-MON ROUNDED = W-MAJMON / CRS-MBDI
           else
              COMPUTE W-MON ROUNDED = W-MAJMON / 
                           (100 + TVA-MPAR(W-CT)) * 100
           end-if
           COMPUTE PUN-MLDI ROUNDED = W-MON / QTE-MLDI
           IF PUB-MLDI = 0 
              MOVE PUN-MLDI TO PUB-MLDI
           END-IF
           COMPUTE REM-MLDI ROUNDED 
                 = (PUB-MLDI - PUN-MLDI) / PUB-MLDI * 100
           MOVE 0 TO REC-MLDI(1) REC-MLDI(2) REC-MLDI(3)
                     REC-MLDI(4) REC-MLDI(5) REC-MLDI(6)
           move 1 to ipns-mldi
           PERFORM Controle-Pac
           PERFORM Calcul-Et-Affiche-Prix
           PERFORM Ligne-Modifiee
           .

       Screen3-Enable-Aco.
           IF FACO-MBDI = 0
           OR TYP-MBDI <> 0
                MODIFY Screen3-DaEf-ACO, ENABLED WENABLE
           ELSE MODIFY Screen3-DaEf-ACO, ENABLED 0
           END-IF.
      *
       Screen3-DaCb-ILI-Ev-Cmd-Clicked.
           inquire Screen3-DaCb-ILI, value ili-mbdi
           .

      *----------------------------------------------------------------*
       Screen3-Pb-TRSNous-Link.
           .
      *----------------------------------------------------------------*

       Screen3-Ef-MPF-Aft-Procedure.
           INQUIRE Screen3-Ef-MPF, VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==EF-MON==.
           MODIFY Screen3-Ef-MPF, VALUE EF-MON
           .
      *
      *
261219 ScreenMarge-Aft-Initdata.
           MOVE Screen4-Handle TO MCF-HANDLE-FS
           PERFORM MisCentreFenetre
           .
      *
261219 ScreenRech-Aft-Initdata.
           MOVE ScreenRech-Handle TO MCF-HANDLE-FS
           PERFORM MisCentreFenetre
           .
      *
       CAL-PV-ART-D-CASCADE.
           move 0 to w-rem.

       LECT-WTARCOL.
           PERFORM WRECH-WTA THRU F-WRECH-WTA.
           IF ITC-MART = 2 MOVE PVN-MART(WT) TO WPRI-MTSE
                      ELSE PERFORM CAL-WTARCOL.
       F-LECT-WTARCOL.
           EXIT.
       WRECH-WTA.
           MOVE 0 TO WT.
       BCL-WRECH-WTA.
           ADD 1 TO WT
           IF WT > 6 MOVE 6 TO WT GO F-WRECH-WTA.
           IF BSU-MART(WT) = ZERO ADD -1 TO WT GO F-WRECH-WTA.
           IF WQTE-MTSE NOT > BSU-MART(WT) GO F-WRECH-WTA.
           GO BCL-WRECH-WTA.
       F-WRECH-WTA.
           IF WT = 0 MOVE 1 TO WT.
       CAL-WTARCOL.
           COMPUTE WPRI-MTSE ROUNDED = PVT-MART * RTG-MART(WT) / 100
           COMPUTE WPRI-MTSE ROUNDED = PVT-MART - WPRI-MTSE.
      *
       Screen1-Mn-1-MI-SaisiepiecessurOR-Link.
           display message "Sorties de pièces sur OR"
           .
      *
       Screen1-Mn-1-MI-RetoursdepiecessurOR-Link.
           display message "Retours de pièces sur OR"
           .
      *
       Screen1-Mn-1-MI-PrestationssurOR-Link.
           display message "Prestations sur OR"
           .
      *
       Screen1-Mn-1-MI-BLpiecessousgarantie-Link.
           display message "B/L pièces sous garantie"
           .
      *
       Screen1-Mn-1-MI-ImportdevisSAV-Link.
           display message "Import devis SAV"
           .
      *
       Screen1-Mn-1-MI-Encaissementdecaissement-Link.
           display message "Encaissement / décaissement"
           .
      *
       Screen1-Pb-AutresBoutons-Link.
           call "w$menu" using wmenu-popup Screen1-Mn-Boutons-Handle
           .
      *
       Screen1-Pb-Fonctions-Link.
           call "w$menu" using wmenu-popup Screen1-Mn-Fonctions-Handle
           .

       

      *{Bench}end
       REPORT-COMPOSER SECTION.
