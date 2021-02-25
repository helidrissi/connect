      *{Bench}prg-comment
      * mtf-credirect.cbl
      * mtf-credirect.cbl is generated from W:\mx\spro\mtf-credirect.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. mtf-credirect.
       AUTHOR. kobalt.
       DATE-WRITTEN. mardi 8 septembre 2020 11:32:30.
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
       COPY "MXDESTAR.sl".
       COPY "MXCATFOU.sl".
       COPY "MXFOU.sl".
       COPY "MXGRAFAM.sl".
       COPY "MXART.sl".
       COPY "MXFAMART.sl".
       COPY "XMLOut-File.sl".
       COPY "MXMARQUE.sl".
       COPY "MXART3.sl".
      *{Bench}end
       COPY "W:/mx/fdt/SL-MTF.cpy".
           SELECT TARIF   ASSIGN TO ASSIGN-SEQ
                          ORGANIZATION LINE SEQUENTIAL
                          ACCESS MODE  IS SEQUENTIAL
                          FILE STATUS IS FILE-STATUS.
           SELECT FICERR  ASSIGN TO ASSIGN-FICERR
                          ORGANIZATION LINE SEQUENTIAL
                          ACCESS MODE  IS SEQUENTIAL
                          FILE STATUS IS FILE-STATUS.
       DATA                        DIVISION.
       FILE                        SECTION.
      *{Bench}file
       COPY "COBCAP.fd".
       COPY "MXPARAM.fd".
       COPY "MXDESTAR.fd".
       COPY "MXCATFOU.fd".
       COPY "MXFOU.fd".
       COPY "MXGRAFAM.fd".
       COPY "MXART.fd".
       COPY "MXFAMART.fd".
       COPY "XMLOut-File.fd".
       COPY "MXMARQUE.fd".
       COPY "MXART3.fd".
      *{Bench}end
       COPY "W:/mx/fdt/FD-MTF.cpy".
       FD  TARIF LABEL RECORD STANDARD.
       01  ENR-TAR             PIC X(1500).
       FD  FICERR LABEL RECORD STANDARD.
       01  ENR-ERR      PIC X(200).
       WORKING-STORAGE             SECTION.
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
           COPY  "LK-MGFA-T.wrk".
           COPY  "LK-MFOU-L.wrk".
           COPY  "Ef-Date.wrk".
           COPY  "arrondi.wrk".
           COPY  "Mis-ProgressBar.wrk".
           COPY  "Mis-Patienter.wrk".
           COPY  "LK-LSTDIR-L.wrk".
       77 Screen1-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 ZOOMxxx12-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ENGRSIM24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-MXPARAM        PIC  99.
       77 Screen1-St-1-Handle
                  USAGE IS HANDLE OF STATUS-BAR VALUE NULL.
       01 Screen1-Gd-1-Record.
           05 Gd-1-Col-REF     PIC  X(20).
           05 Gd-1-Col-DES     PIC  X(30).
           05 Gd-1-Col-PRI     PIC  ZZZBZZ9,99.
           05 Gd-1-Col-REM     PIC  X(7).
           05 Gd-1-Col-UAC     PIC  X(10).
           05 Gd-1-Col-POI     PIC  X(20).
       01 TAB-TARIF
                  OCCURS 200 TIMES.
           02 T-TAR            PIC  X(20).
           02 T-LOG            PIC  9(4).
           02 T-MOD            PIC  99.
       77 W-LOG-PALM       PIC  9(3)
                  VALUE IS 25.
       77 W-NPR-PALM       PIC  9(4)
                  VALUE IS 428.
       01 LK-ZONE-PALM     PIC  X(500).
       77 W-LIB            PIC  X(60).
       77 W-LIB2           PIC  X(30).
       77 SV-LIB           PIC  X(20).
       77 W-OLD-Y          PIC  9(4)
                  VALUE IS 0.
       77 W-OLD-X          PIC  9(4)
                  VALUE IS 0.
       77 W-LON            PIC  99.
       77 I    PIC  999.
       77 Z    PIC  999.
       77 ZZ   PIC  999.
       77 J    PIC  999.
       77 YY   PIC  9(3).
       77 W-OK PIC  9.
       77 W-color-row      PIC  9(6).
       77 W-color-cell     PIC  9(6).
       77 X-dat            PIC  X(10).
       77 LANGUE-FILE-STATUS           PIC  X(2).
           88 Valid-LANGUE VALUE IS "00" THRU "09". 
       77 Small-Font
                  USAGE IS HANDLE OF FONT SMALL-FONT.
       77 MODU-CENTRALE    PIC  9
                  VALUE IS 0.
       77 MODU-CAT         PIC  9
                  VALUE IS 0.
       77 W-INV            PIC  9.
       77 W-TRA            PIC  9
                  VALUE IS 0.
       77 W-FOU            PIC  9(6).
       77 W-DELETE         PIC  9
                  VALUE IS 0.
       77 W-MAJ-FAM        PIC  9
                  VALUE IS 0.
       77 I-TAR            PIC  999.
       77 W-SPE            PIC  X(20).
       77 W-SPE2           PIC  X(20).
       77 WP-SPE           PIC  X.
       77 W-GRA            PIC  99.
       77 W-FAM            PIC  99.
       77 W-LAN            PIC  XX.
       77 W-COL            PIC  9.
       77 NB-TAR           PIC  9(3).
       77 F-GRA            PIC  99.
       77 F-GRA2           PIC  X(8).
       77 F-FAM            PIC  99.
       77 MAJ-SPE-INT      PIC  9.
       77 MAJ-SPE          PIC  9.
       77 I-REF            PIC  99.
       77 PD-REF           PIC  9(4).
       77 W-POS            PIC  9(4).
       77 W-POS2           PIC  9(4).
       77 W-POS3           PIC  9(4).
       77 W-NBR            PIC  9(6).
       77 W-NBR2           PIC  9(6).
       77 W-NBR-RFC        PIC  9(6).
       77 W-REM            PIC  X(7).
       77 W-UAC            PIC  9(5).
       77 W-DES            PIC  X(60).
       77 W-DES2           PIC  X(40).
       77 W-NBRL           PIC  9(6).
       77 A-NBR            PIC  ZZZ.ZZ9.
       77 W-SPE-INT        PIC  X(40).
       77 W-RER            PIC  X(20).
       77 W-OBS            PIC  X(30).
       77 SV-OBS           PIC  X(30).
       77 SV-ENR-MART      PIC  X(700).
       77 SV-PTF           PIC  9(8)V99.
       77 SV-PVT           PIC  9(8)V99.
       77 SV-PAC           PIC  9(8)V99.
       77 SV-TTC           PIC  9(8)V99.
       77 SV-CRF           PIC  99.
       77 W-ZCAR           PIC  X(30).
       77 W-REN            PIC  X(20).
       77 W-MIN            PIC  99.
       77 W-FWK            PIC  X(20).
       77 A-MON            PIC  ZZZ.ZZ9,99.
       77 W-CAL            PIC  S9(8)V99.
       77 M-REM            PIC  S9(8)V99.
       77 IND-PVT          PIC  S9(8)V99.
       77 NB-DEC           PIC  99.
       77 W-DEC            PIC  9.
       77 L-PRID           PIC  99.
       77 AF-POI           PIC  ZZZBZZ9,99
                  BLANK WHEN ZERO.
       77 IND-GRI          PIC  9.
       77 IND-MAJ-PRIX     PIC  9.
       77 T-REF            PIC  X(21).
       01 W-REF            PIC  X(21).
       01 R-W-REF REDEFINES W-REF.
           02 W-R  PIC  X
                      OCCURS 21 TIMES.
       01 K-REF            PIC  X(21).
       01 R-K-REF REDEFINES K-REF.
           02 K-R  PIC  X
                      OCCURS 21 TIMES.
       01 K-REF2           PIC  X(21).
       01 R-K-REF2 REDEFINES K-REF2.
           02 K-R2 PIC  X
                      OCCURS 21 TIMES.
       77 X-PRI            PIC  X(12).
       01 N-MEP            PIC  9(9)V999.
       01 R-N-MEP REDEFINES N-MEP.
           04 N-MEPE           PIC  9(9).
           04 N-MEPD3          PIC  999.
           04 R-N-MEPD3 REDEFINES N-MEPD3.
               06 N-MEPD2          PIC  99.
               06 FILLER           PIC  9.
           04 R2-N-MEPD3 REDEFINES N-MEPD3.
               06 N-MEPD1          PIC  9.
               06 FILLER           PIC  99.
       01 W-PRI            PIC  9(9)V999.
       01 R-W-PRI REDEFINES W-PRI.
           04 W-PRIE           PIC  9(9).
           04 W-PRID3          PIC  999.
           04 R-W-PRID3 REDEFINES W-PRID3.
               06 W-PRID2          PIC  99.
               06 FILLER           PIC  9.
           04 R2-W-PRID3 REDEFINES W-PRID3.
               06 W-PRID1          PIC  9.
               06 FILLER           PIC  99.
       01 W2-PRI           PIC  9(9)V999.
       01 R-W2-PRI REDEFINES W2-PRI.
           04 W2-PRIE          PIC  9(9).
           04 W2-PRID3         PIC  999.
           04 R-W2-PRID3 REDEFINES W2-PRID3.
               06 W2-PRID2         PIC  99.
               06 FILLER           PIC  9.
           04 R2-W2-PRID3 REDEFINES W2-PRID3.
               06 W2-PRID1         PIC  9.
               06 FILLER           PIC  99.
       01 W3-PRI           PIC  9(9)V999.
       01 R-W3-PRI REDEFINES W3-PRI.
           04 W3-PRIE          PIC  9(9).
           04 W3-PRID3         PIC  999.
           04 R-W3-PRID3 REDEFINES W3-PRID3.
               06 W3-PRID2         PIC  99.
               06 FILLER           PIC  9.
           04 R2-W3-PRID3 REDEFINES W3-PRID3.
               06 W3-PRID1         PIC  9.
               06 FILLER           PIC  99.
       01 W-COE            PIC  99V999.
       01 R-W-COE REDEFINES W-COE.
           04 W-COEE           PIC  99.
           04 W-COED3          PIC  999.
           04 R-W-COED3 REDEFINES W-COED3.
               06 W-COED2          PIC  99.
               06 FILLER           PIC  9.
           04 R2-W-COED3 REDEFINES W-COED3.
               06 W-COED1          PIC  9.
               06 FILLER           PIC  99.
       77 WT-PRI           PIC  9(9)V99.
       77 W3-TTC           PIC  9(9)V99.
       77 WA-PRI           PIC  9(9)V99.
       77 AF-PRI           PIC  Z(6)9,99.
       01 W-POI            PIC  9(9)V999.
       01 R-W-POI REDEFINES W-POI.
           04 W-POIE           PIC  9(9).
           04 W-POID3          PIC  999.
           04 R-W-POID3 REDEFINES W-POID3.
               06 W-POID2          PIC  99.
               06 FILLER           PIC  9.
           04 R2-W-POID3 REDEFINES W-POID3.
               06 W-POID1          PIC  9.
               06 FILLER           PIC  99.
       01 W-NUM            PIC  X(12).
       01 R-W-NUM REDEFINES W-NUM.
           02 W-N  PIC  9
                      OCCURS 12 TIMES.
       01 R2-W-NUM REDEFINES W-NUM.
           02 X-NUM            PIC  X(12).
       01 W-NUM15          PIC  9(15).
       01 R-W-NUM15 REDEFINES W-NUM15.
           02 W-N15            PIC  9
                      OCCURS 15 TIMES.
       77 WT-POS           PIC  999.
       77 WT-LON           PIC  999.
       77 WT-I PIC  999.
       77 WT-J PIC  999.
       77 WT-Z PIC  999.
       77 WT-DEL           PIC  X.
       77 WT-NB-DEC        PIC  9.
       77 WT-NB-CAR        PIC  99.
       77 WT-NB-ZON        PIC  999.
       77 WT-NB-TAB        PIC  999.
       77 WT-ZONT          PIC  X(40).
       77 WT-TEST          PIC  X(30).
       77 SV-ZONT          PIC  X(30).
       77 WA-ZON           PIC  X(16).
       77 WT-REM2          PIC  X(7).
       77 WT-REM3          PIC  X(7).
       77 WT-REF2          PIC  X(21).
       77 WT-REF3          PIC  X(21).
       77 WT-SEP           PIC  XX.
       77 WT-SEP2          PIC  XXX.
       77 WT-NBR           PIC  9(7).
       77 WT-ENR           PIC  X(1500).
       77 WT-IND-DELIMIT   PIC  9.
       77 WT-VIRG1         PIC  X.
       77 WT-VIRG2         PIC  X.
       77 K-SPE            PIC  X(20).
       01 WT-ZONE.
           02 WT-ZON1          PIC  X(40).
           02 WT-ZON2          PIC  X(40).
           02 WT-ZON3          PIC  X(40).
           02 WT-ZON4          PIC  X(40).
           02 WT-ZON5          PIC  X(40).
           02 WT-ZON6          PIC  X(40).
           02 WT-ZON7          PIC  X(40).
           02 WT-ZON8          PIC  X(40).
           02 WT-ZON9          PIC  X(40).
           02 WT-ZON10         PIC  X(40).
           02 WT-ZON11         PIC  X(40).
           02 WT-ZON12         PIC  X(40).
           02 WT-ZON13         PIC  X(40).
           02 WT-ZON14         PIC  X(40).
           02 WT-ZON15         PIC  X(40).
           02 WT-ZON16         PIC  X(40).
           02 WT-ZON17         PIC  X(40).
           02 WT-ZON18         PIC  X(40).
           02 WT-ZON19         PIC  X(40).
           02 WT-ZON20         PIC  X(40).
           02 WT-ZON21         PIC  X(40).
           02 WT-ZON22         PIC  X(40).
           02 WT-ZON23         PIC  X(40).
           02 WT-ZON24         PIC  X(40).
           02 WT-ZON25         PIC  X(40).
           02 WT-ZON26         PIC  X(40).
           02 WT-ZON27         PIC  X(40).
           02 WT-ZON28         PIC  X(40).
           02 WT-ZON29         PIC  X(40).
           02 WT-ZON30         PIC  X(40).
           02 WT-ZON31         PIC  X(40).
           02 WT-ZON32         PIC  X(40).
           02 WT-ZON33         PIC  X(40).
           02 WT-ZON34         PIC  X(40).
           02 WT-ZON35         PIC  X(40).
           02 WT-ZON36         PIC  X(40).
           02 WT-ZON37         PIC  X(40).
           02 WT-ZON38         PIC  X(40).
           02 WT-ZON39         PIC  X(40).
           02 WT-ZON40         PIC  X(40).
       01 WT-NUM           PIC  9(16).
       01 R-WT-NUM REDEFINES WT-NUM.
           02 WT-N PIC  9
                      OCCURS 16 TIMES.
       01 WN-NUM           PIC  9(10)V999.
       01 R-WN-NUM REDEFINES WN-NUM.
           02 WN-ENT           PIC  9(10).
           02 WN-DEC           PIC  999.
       01 WT-SPE           PIC  X(40)
                  OCCURS 5 TIMES.
       01 ASSIGN-SEQ       PIC  X(80).
       01 ASSIGN-TRI       PIC  X(80).
       01 WASS-TRI         PIC  X(20).
       01 WASS-TRIREM      PIC  X(20).
       77 Medium-Font
                  USAGE IS HANDLE OF FONT MEDIUM-FONT.
       77 IsModifying      PIC  9
                  VALUE IS 1.
       77 W-VISU-REF       PIC  X(20).
       77 W-NBREF          PIC  9
                  VALUE IS 0.
       77 Screen1-Ta-1-Value           PIC  S9(1)
                  VALUE IS 1.
       77 Screen1-Pg-1-Visible         PIC  9
                  VALUE IS 0.
       77 Screen1-Pg-2-Visible         PIC  9
                  VALUE IS 0.
       77 Large-Font
                  USAGE IS HANDLE OF FONT LARGE-FONT.
       77 W-MAJ-CRC        PIC  9
                  VALUE IS 0.
       77 W-EDI-NACT       PIC  9
                  VALUE IS 1.
       77 W-EDI-HAU        PIC  9
                  VALUE IS 0.
       77 W-EDI-BAI        PIC  9
                  VALUE IS 0.
       77 W-EDI-STO        PIC  9(1)
                  VALUE IS 0.
       77 W-REEL           PIC  9(1)
                  VALUE IS 0.
       77 W-IDEM-PVT       PIC  9
                  VALUE IS 0.
       77 W-MAJ-RFC        PIC  9
                  VALUE IS 0.
       77 W-MUL            PIC  9.
       77 af-dat           PIC  99/99/9999.
       77 EnableMaj        PIC  9
                  VALUE IS 1.
       77 EnableEdi        PIC  9
                  VALUE IS 1.
       77 VisibleHau       PIC  9
                  VALUE IS 0.
       77 VisibleBai       PIC  9
                  VALUE IS 0.
       77 VisibleMajRFC    PIC  9
                  VALUE IS 0.
       77 VisibleMajCRC    PIC  9
                  VALUE IS 0.
       77 SV-VisibleMajCRC PIC  9
                  VALUE IS 0.
       77 W-HAU            PIC  99.
       77 W-BAI            PIC  99.
       77 A-HAU            PIC  Z9.
       77 A-BAI            PIC  Z9.
       01 W-DAT-MAJ        PIC  9(8).
       01 R1-W-DAT-MAJ REDEFINES W-DAT-MAJ.
           02 W-SAM-MAJ        PIC  9(6).
           02 FILLER           PIC  99.
       01 W-DAT-VAL        PIC  9(8).
       01 R1-W-DAT-VAL REDEFINES W-DAT-VAL.
           02 W-SAM-VAL        PIC  9(6).
           02 FILLER           PIC  99.
       77 MAJ-SPE2         PIC  9.
       77 MAJ-SPE3         PIC  9.
       77 MAJ-SPE4         PIC  9.
       77 IMAJ-SPE         PIC  9.
       77 IMAJ-SPE2        PIC  9.
       77 IMAJ-SPE3        PIC  9.
       77 IMAJ-SPE4        PIC  9.
       77 I-SPE            PIC  9.
       77 II-SPE           PIC  9.
       77 W-CRF            PIC  9(3).
       77 W-MON            PIC  S9(8)V9999.
       77 R-MON            PIC  S9(8)V99.
       77 T-REM            PIC  S999V99.
       77 W-FAV            PIC  9(6)V99.
       77 W-PR PIC  S9(8)V99.
       77 INV-MXREMFOU     PIC  9.
       77 INV-MXZSPSOC     PIC  9.
       77 W-MXTABARR       PIC  9(9).
       77 Screen1-Pg-3-Visible         PIC  9
                  VALUE IS 1.
       77 VisibleRef       PIC  9
                  VALUE IS 0.
       77 VisiblePrevisu   PIC  9
                  VALUE IS 1.
       77 WE-ART           PIC  X(20).
       77 WE-REF           PIC  X(21).
       77 WE-DES           PIC  X(40).
       77 WE-OBS           PIC  X(40).
       77 WE-APTF          PIC  ZZZZBZZ9,99
                  BLANK WHEN ZERO.
       77 WE-NPTF          PIC  ZZZZBZZ9,99
                  BLANK WHEN ZERO.
       77 WE-APVT          PIC  ZZZZBZZ9,99
                  BLANK WHEN ZERO.
       77 WE-NPVT          PIC  ZZZZBZZ9,99
                  BLANK WHEN ZERO.
       77 WE-ACRF          PIC  99.
       77 WE-NCRF          PIC  99.
       77 WE-HAU           PIC  X(5).
       77 WE-BAI           PIC  X(5).
       77 WE-STO           PIC  ZZZBZZ9,99-
                  BLANK WHEN ZERO.
       77 WE-INC           PIC  ZZZZBZZ9,99-
                  BLANK WHEN ZERO.
       77 WE-LIB           PIC  X(50).
       77 A-PCT            PIC  ZZZ.
       77 W-STO            PIC  S9(7)V99.
       77 W-PCT            PIC  S9(3).
       77 W-PPCT           PIC  9(3).
       77 W-INC            PIC  S9(7)V99.
       77 W-ENT-NACT       PIC  9.
       77 W-ENT-HB         PIC  9.
       77 TOT-INC-AUT      PIC  S9(8)V99.
       77 TOT-INC          PIC  S9(8)V99.
       77 PMELICEN-FILE-STATUS         PIC  X(2).
           88 Valid-PMELICEN VALUE IS "00" THRU "09". 
      *
      *
       77 WASS-LISFICIMP   PIC  X(20)
                  VALUE IS "LISFICIMP".
       77 ASSIGN-LISFICIMP PIC  X(60).
       77 ECR-INT          PIC  9.
       77 LK-INT           PIC  9.
       77 THREAD-EDIT
                  USAGE IS HANDLE OF THREAD VALUE NULL.
      *
      *
       77 W-COMMAND        PIC  X(100).
       77 ASSIGN-FICERR    PIC  X(80).
       77 W-PRGMX          PIC  X(40).
       77 STATUS-CODE      PIC  9.
       77 W-SIZE           PIC  9(6).
       01 FILE-INFO.
           02 FILE-SIZE        PIC  X(8)
                      USAGE IS COMP-X.
           02 FILE-DATE        PIC  9(8)
                      USAGE IS COMP-X.
           02 FILE-TIME        PIC  9(8)
                      USAGE IS COMP-X.
       77 W-REF-IDEM       PIC  9
                  VALUE IS 0.
       77 VisibleRefIdem   PIC  9
                  VALUE IS 0.
       77 W-MAJ-GCOD       PIC  9
                  VALUE IS 0.
       77 VisibleMajGcod   PIC  9
                  VALUE IS 0.
       77 W-GCOD           PIC  9(13).
       77 W-ED-AMA         PIC  9.
       77 W-MAJ-ICO        PIC  9
                  VALUE IS 0.
       77 W-MAJ-ICO0       PIC  9
                  VALUE IS 1.
       77 W-MAJ-ICO1       PIC  9
                  VALUE IS 1.
       77 W-MAJ-ICO2       PIC  9
                  VALUE IS 1.
       77 VisibleMajFSA    PIC  9
                  VALUE IS 0.
       77 W-MAJ-FSA        PIC  9
                  VALUE IS 0.
       77 W-COL-MAJ        PIC  S9(4)V9(2)
                  VALUE IS 44,21.
       77 W-GRICOE         PIC  9(3).
       77 W-MXTABCOE       PIC  9(9).
       77 WC-PRI           PIC  9(8)V99.
       77 W-MAJ-MAR        PIC  9
                  VALUE IS 0.
       77 VisibleMajMar    PIC  9
                  VALUE IS 0.
       77 W-MAJ-TVA        PIC  9
                  VALUE IS 0.
       77 VisibleMajTva    PIC  9
                  VALUE IS 0.
       77 W-MAR            PIC  X(4).
       77 W-TVA            PIC  X(10).
       77 W-PAY            PIC  X(3).
       77 IND-MAJ-CTF      PIC  9.
       77 COMMANDE         PIC  X(500).
       77 W-DIRCOBOL       PIC  X(60).
       77 W-REPCOBOL       PIC  X(60).
       77 I-P  PIC  9(3).
       01 TAB-PAY
                  OCCURS 600 TIMES.
           02 TP-COD           PIC  XXX.
           02 TP-ISO           PIC  XXX.
       77 W-PX0            PIC  9
                  VALUE IS 0.
       77 W-VERIF-TAR      PIC  9.
       77 W-VERIF-TAR2     PIC  9
                  VALUE IS 0.
       77 W-RFI            PIC  X(8).
       77 W-TIT-MAJRFC     PIC  X(40)
                  VALUE IS "Avec Maj Référencement RENAULT / PEUGEOT".
       77 W-SANS-MAJ-TAR   PIC  9
                  VALUE IS 0.
       77 EnableSim        PIC  9
                  VALUE IS 1.
       77 EnableMajPv      PIC  9
                  VALUE IS 1.
       77 EnableEdiArt     PIC  9
                  VALUE IS 1.
       77 IsModifyingEdi   PIC  9
                  VALUE IS 1.
       77 W-NOMTAR         PIC  X(30).
       77 M-PAY            PIC  X(3).
       77 CATARTX24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-LibSPE3        PIC  X(25).
       77 W-LibSPE4        PIC  X(25).
       77 VisibleMajZSPG2  PIC  9
                  VALUE IS 0.
       77 VisibleMajZSPG1  PIC  9
                  VALUE IS 0.
       77 SV-VisibleMajZSPG1           PIC  9
                  VALUE IS 0.
       77 SV-VisibleMajZSPG2           PIC  9
                  VALUE IS 0.
       77 W-MAJ-ZSPG1      PIC  9
                  VALUE IS 0.
       77 W-MAJ-ZSPG2      PIC  9
                  VALUE IS 0.
       77 W-LibZSPG1       PIC  X(40).
       77 W-LibZSPG2       PIC  X(40).
       77 MODU-TARPER      PIC  9
                  VALUE IS 0.
       77 TARCEXX24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Screen1-Cm-1-Value           PIC  X(30).
       77 W-DESTAR         PIC  9
                  VALUE IS 0.
       77 W-CODTAR         PIC  X(20).
       77 W-NOMFIC         PIC  X(50).
       77 W    PIC  9
                  VALUE IS 0.
       77 W-MAJTAR         PIC  9
                  VALUE IS 1.
       77 W-MAJCAT         PIC  9
                  VALUE IS 1.
       77 EnableTar        PIC  9
                  VALUE IS 1.
       77 EnableImp        PIC  9
                  VALUE IS 1.
       77 W-MAJ-ANO        PIC  9
                  VALUE IS 0.
       77 Screen2-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 VisibleMajAno    PIC  9
                  VALUE IS 0.
       77 W-ANO            PIC  X.
       77 T-CHO            PIC  X.
       77 A62  PIC  ZZZBZZ9,99.
       77 A-UAC            PIC  ZZZBZZZ.
       77 W-ZON1           PIC  X(20).
       77 W-ZON2           PIC  X(20).
       77 W-ZON3           PIC  X(20).
       77 Screen2-Ef-1-Value           PIC  X(30).
       77 PATIENTER-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 PATIENTEG-jpg    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-CXSOC          PIC  9(9).
       77 W-PTTC           PIC  9
                  VALUE IS 0.
       77 FILE-STATUS      PIC  X(2).
           88 Valid-COBCAP VALUE IS "00" THRU "09". 
       77 XMLOut-Assign    PIC  X(32).
       77 ENGRSIM24-JP     PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TARCEXX24-JP     PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Default-Font
                  USAGE IS HANDLE OF FONT DEFAULT-FONT.
       77 ZOOMxxx12-JP     PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ZOOMxxx12-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ENGRENAGE32-BMP  PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ENGRENAGE24-BMP  PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Calibri9
                  USAGE IS HANDLE OF FONT VALUE NULL.
       77 Calibri9B
                  USAGE IS HANDLE OF FONT VALUE NULL.
       77 Calibri8
                  USAGE IS HANDLE OF FONT VALUE NULL.
       77 Calibri16B
                  USAGE IS HANDLE OF FONT VALUE NULL.
       77 Calibri12
                  USAGE IS HANDLE OF FONT VALUE NULL.
       77 Calibri16
                  USAGE IS HANDLE OF FONT VALUE NULL.
       01 Screen1-Gd-2-Record.
           05 Gd-1-Col-1       PIC  X(08).
           05 Gd-1-Col-2       PIC  X(08).
           05 Gd-1-Col-3       PIC  X(08).
           05 Gd-1-Col-4       PIC  X(08).
           05 Gd-1-Col-5       PIC  X(08).
           COPY  "envmis.wrk".

      *{Bench}end
       LINKAGE                     SECTION.
      *{Bench}linkage
      *{Bench}end
       SCREEN                      SECTION.
       COPY "W:\mistral/copy/Mis-ProgressBar-screen.cpy".
       COPY "W:\mistral/copy/Mis-Patienter-screen.cpy".
      *{Bench}copy-screen
       01 Screen1, HELP-ID 250428.
           03 Screen1-Ta-1, Tab-Control, 
              COL 16,57, LINE 19,92, LINES 36,38 CELLS, 
              SIZE 100,29 CELLS, 
              ID IS 23, VISIBLE 0.
           03 Screen1-Pg-3, VISIBLE Screen1-Pg-3-Visible.
              05 Screen1-Fr-1a, Frame, 
                 COL 17,29, LINE 21,62, LINES 7,31 CELLS, 
                 SIZE 98,43 CELLS, 
                 ENGRAVED, FILL-COLOR 16, FILL-PERCENT 100, ID IS 57, 
                 BACKGROUND-LOW, ATW-CSS-CLASS "card".
              05 Screen1-Rb-NBREF1, Radio-Button, 
                 COL 29,14, LINE 25,54, LINES 1,31 CELLS, 
                 SIZE 33,57 CELLS, 
                 COLOR IS 1, ENABLED Ismodifying, EXCEPTION-VALUE 1031, 
                 FONT IS Calibri9, GROUP 2, GROUP-VALUE 1, ID IS 59, 
                 TITLE "Des 300 premières Références", VALUE W-NBREF, 
                 VISIBLE VisiblePrevisu.
              05 Screen1-Rb-NBREF2, Radio-Button, 
                 COL 66,57, LINE 25,54, LINES 1,31 CELLS, 
                 SIZE 21,29 CELLS, 
                 COLOR IS 1, ENABLED IsModifying, EXCEPTION-VALUE 1030, 
                 FONT IS Calibri9, GROUP 2, GROUP-VALUE 2, ID IS 60, 
                 TITLE "D'une référence", VALUE W-NBREF, 
                 VISIBLE VisiblePrevisu.
              05 Screen1-Ef-REF, Entry-Field, 
                 COL 87,71, LINE 24,92, LINES 2,46 CELLS, 
                 SIZE 16,86 CELLS, 
                 3-D, COLOR IS 1, ENABLED IsModifying, 
                 FONT IS Calibri9B, ID IS 61, MAX-TEXT 20, 
                 VALUE W-VISU-REF, VISIBLE VisibleRef, 
                 EVENT PROCEDURE Screen1-Ef-FOU-Event-Proc.
              05 Screen1-La-3, Label, 
                 COL 19,57, LINE 23,23, LINES 1,38 CELLS, 
                 SIZE 55,29 CELLS, 
                 COLOR IS 1, FONT IS Calibri9, ID IS 11, 
                 LABEL-OFFSET 0, 
                 TITLE "Prévisualisation du tarif reçu pour contrôle", 
                 TRANSPARENT, VISIBLE VisiblePrevisu.
              05 Screen1-Gd-1, Grid, 
                 COL 17,43, LINE 29,92, LINES 25,08 CELLS, 
                 SIZE 98,43 CELLS, 
                 ADJUSTABLE-COLUMNS, BOXED, CENTERED-HEADINGS, 
                 COLOR IS 1, COLUMN-HEADINGS, 
                 DATA-COLUMNS (1, 21, 51, 61, 68, 78), 
                 DISPLAY-COLUMNS (1, 21, 51, 64, 75, 85), 
                 ALIGNMENT ("U", "L", "C", "C", "C", "C"), 
                 DATA-TYPES ("X", "X", "ZZZ.ZZ9,99", "X", "X", "X"), 
                 SEPARATION (5, 5, 5, 5, 5, 5), 
                 CURSOR-FRAME-WIDTH 1, DIVIDER-COLOR w-divider-color, 
                 DRAG-COLOR 1, END-COLOR w-end-color, 
                 HEADING-COLOR 257, 
                 HEADING-DIVIDER-COLOR w-heading-divider-color, 
                 HEADING-FONT IS Calibri9, ID IS 1, NUM-COL-HEADINGS 1, 
                 NUM-ROWS W-NUM-ROWS, RECORD-DATA Screen1-Gd-1-Record, 
                 TILED-HEADINGS, USE-TAB, VPADDING 50, 
                 VISIBLE Screen1-Pg-3-Visible, ATW-CSS-CLASS "table", 
                 EVENT PROCEDURE Screen1-Gd-1-Event-Proc, 
                 EXCEPTION PROCEDURE Screen1-Gd-1-Exception-Proc.
           03 Screen1-Pg-2, VISIBLE Screen1-Pg-2-Visible.
              05 Screen1-Fr-MajTar, Frame, 
                 COL 17,29, LINE 28,69, LINES 27,00 CELLS, 
                 SIZE 98,43 CELLS, 
                 ENGRAVED, FILL-COLOR 16, FILL-PERCENT 100, ID IS 14, 
                 BACKGROUND-LOW, ATW-CSS-CLASS "card".
              05 Screen1-Cb-MajRFC, Check-Box, 
                 COL 74,29, LINE 38,54, LINES 1,23 CELLS, 
                 SIZE 38,29 CELLS, 
                 COLOR IS 513, ENABLED EnableMaj, FONT IS Small-Font, 
                 ID IS 54, LEFT-TEXT, TITLE W-TIT-MAJRFC, 
                 VALUE W-MAJ-RFC, VISIBLE VisibleMajRFC.
              05 Screen1-Cb-MajFSA, Check-Box, 
                 COL 20,86, LINE 37,38, LINES 1,23 CELLS, 
                 SIZE 38,29 CELLS, 
                 COLOR IS 513, ENABLED EnableMaj, EXCEPTION-VALUE 1092, 
                 FONT IS Small-Font, ID IS 69, LEFT-TEXT, 
                 TITLE 
                 "Avec mise à jour  code famille et sous-famille Article
      -          "", VALUE W-MAJ-FSA, VISIBLE VisibleMajFSA.
              05 Screen1-La-2, Label, 
                 COL 19,14, LINE 30,46, LINES 1,00 CELLS, 
                 SIZE 8,71 CELLS, 
                 COLOR IS 513, FONT IS Small-Font, ID IS 18, 
                 LABEL-OFFSET 0, 
                 TITLE "Traitement", TRANSPARENT.
              05 Screen1-Rb-REEL1, Radio-Button, 
                 COL 28,57, LINE 30,46, LINES 1,00 CELLS, 
                 SIZE 8,86 CELLS, 
                 COLOR IS 513, ENABLED EnableSim, FONT IS Small-Font, 
                 GROUP 3, GROUP-VALUE 1, ID IS 19, 
                 TERMINATION-VALUE 1055, 
                 TITLE "Réel", VALUE W-REEL.
              05 Screen1-Rb-REEL2, Radio-Button, 
                 COL 38,14, LINE 30,46, LINES 1,00 CELLS, 
                 SIZE 9,86 CELLS, 
                 COLOR IS 513, ENABLED EnableSim, EXCEPTION-VALUE 1004, 
                 FONT IS Small-Font, GROUP 3, GROUP-VALUE 2, ID IS 20, 
                 TERMINATION-VALUE 1056, 
                 TITLE "Simulation", VALUE W-REEL.
              05 Screen1-La-2b, Label, 
                 COL 53,43, LINE 30,46, LINES 1,69 CELLS, 
                 SIZE 12,14 CELLS, 
                 COLOR IS 513, FONT IS Small-Font, ID IS 29, 
                 LABEL-OFFSET 0, 
                 TITLE "Date Tarif", TRANSPARENT.
              05 Screen1-Ef-DAT, Entry-Field, 
                 COL 65,00, LINE 30,08, LINES 2,46 CELLS, 
                 SIZE 15,00 CELLS, 
                 3-D, COLOR IS 513, ENABLED EnableMaj, ID IS 30, 
                 MAX-TEXT 10, NO-AUTOSEL, 
                 EVENT PROCEDURE Screen1-Ef-DAT-Event-Proc.
              05 Screen1-Cb-MAJ-CRC, Check-Box, 
                 COL 20,86, LINE 32,77, LINES 1,23 CELLS, 
                 SIZE 38,29 CELLS, 
                 COLOR IS 513, ENABLED EnableMaj, FONT IS Small-Font, 
                 ID IS 17, LEFT-TEXT, TERMINATION-VALUE 1057, 
                 TITLE "Avec mise à jour du code remise client", 
                 VALUE W-MAJ-CRC, VISIBLE VisibleMajCRC.
              05 Screen1-Cb-IdemPvt, Check-Box, 
                 COL 74,29, LINE 35,46, LINES 1,23 CELLS, 
                 SIZE 38,29 CELLS, 
                 COLOR IS 513, ENABLED EnableMajPv, 
                 EXCEPTION-VALUE 1003, FONT IS Small-Font, ID IS 53, 
                 LEFT-TEXT, 
                 TITLE 
                 "Maj avec maintien du prix de vente (Recalcul Coéf.)", 
                 VALUE W-IDEM-PVT.
              05 Screen1-Cb-RefIdem, Check-Box, 
                 COL 74,29, LINE 37,00, LINES 1,23 CELLS, 
                 SIZE 38,29 CELLS, 
                 COLOR IS 513, ENABLED EnableTar, FONT IS Small-Font, 
                 ID IS 58, LEFT-TEXT, TERMINATION-VALUE 1058, 
                 TITLE 
                 "Exclure les références non strictement identiques", 
                 VALUE W-REF-IDEM, VISIBLE VisibleRefIdem.
              05 Screen1-Cb-MajGCOD, Check-Box, 
                 COL 20,86, LINE 34,31, LINES 1,23 CELLS, 
                 SIZE 38,29 CELLS, 
                 COLOR IS 513, ENABLED EnableMaj, FONT IS Small-Font, 
                 ID IS 63, LEFT-TEXT, 
                 TITLE "Avec mise à jour du Gencod", VALUE W-MAJ-GCOD, 
                 VISIBLE VisibleMajGcod.
              05 Screen1-Cb-MajICO, Check-Box, 
                 COL 74,29, LINE 41,62, LINES 1,23 CELLS, 
                 SIZE 38,29 CELLS, 
                 COLOR IS 513, ENABLED EnableTar, FONT IS Small-Font, 
                 ID IS 64, LEFT-TEXT, TERMINATION-VALUE 1059, 
                 TITLE 
                 "Mise à jour des articles selon politique de vente", 
                 VALUE W-MAJ-ICO.
              05 Screen1-Cb-ICO0, Check-Box, 
                 COL 74,86, LINE 43,15, LINES 1,15 CELLS, 
                 SIZE 10,14 CELLS, 
                 COLOR IS 513, ENABLED EnableTar, FONT IS Small-Font, 
                 ID IS 65, 
                 TITLE "Normale", VALUE W-MAJ-ICO0, VISIBLE W-MAJ-ICO.
              05 Screen1-Cb-ICO1, Check-Box, 
                 COL 85,57, LINE 43,15, LINES 1,15 CELLS, 
                 SIZE 11,29 CELLS, 
                 COLOR IS 513, ENABLED EnableTar, FONT IS Small-Font, 
                 ID IS 66, 
                 TITLE "Concurrencé", VALUE W-MAJ-ICO1, 
                 VISIBLE W-MAJ-ICO.
              05 Screen1-Cb-ICO2, Check-Box, 
                 COL 98,14, LINE 43,15, LINES 1,15 CELLS, 
                 SIZE 14,57 CELLS, 
                 COLOR IS 513, ENABLED EnableTar, FONT IS Small-Font, 
                 ID IS 67, 
                 TITLE "Non Concurrencé", VALUE W-MAJ-ICO2, 
                 VISIBLE W-MAJ-ICO.
              05 Screen1-Cb-MajMAR, Check-Box, 
                 COL 20,86, LINE 35,85, LINES 1,23 CELLS, 
                 SIZE 38,29 CELLS, 
                 COLOR IS 513, ENABLED EnableMaj, EXCEPTION-VALUE 1092, 
                 FONT IS Small-Font, ID IS 70, LEFT-TEXT, 
                 TITLE "Avec mise à jour du code marque ", 
                 VALUE W-MAJ-MAR, VISIBLE VisibleMajMar.
              05 Screen1-Cb-MajCEE, Check-Box, 
                 COL 20,86, LINE 38,92, LINES 1,23 CELLS, 
                 SIZE 38,29 CELLS, 
                 COLOR IS 513, ENABLED EnableMaj, FONT IS Small-Font, 
                 ID IS 71, LEFT-TEXT, 
                 TITLE "Avec mise à jour du Numéro CEE", 
                 VALUE W-MAJ-TVA, VISIBLE VisibleMajTva.
              05 Screen1-Cb-SansMajTar, Check-Box, 
                 COL 74,29, LINE 33,92, LINES 1,23 CELLS, 
                 SIZE 38,29 CELLS, 
                 COLOR IS 513, ENABLED EnableMaj, EXCEPTION-VALUE 1070, 
                 FONT IS Small-Font, ID IS 73, LEFT-TEXT, 
                 TITLE "Sans mise à jour du tarif", 
                 VALUE W-SANS-MAJ-TAR.
              05 Screen1-Cb-MajZSPG1, Check-Box, 
                 COL 20,86, LINE 40,46, LINES 1,23 CELLS, 
                 SIZE 38,29 CELLS, 
                 COLOR IS 513, ENABLED EnableMaj, EXCEPTION-VALUE 2020, 
                 FONT IS Small-Font, ID IS 75, LEFT-TEXT, 
                 TITLE W-LibZSPG1, VALUE W-MAJ-ZSPG1, 
                 VISIBLE VisibleMajZSPG1.
              05 Screen1-Cb-MajZSPG2, Check-Box, 
                 COL 20,86, LINE 42,00, LINES 1,23 CELLS, 
                 SIZE 38,29 CELLS, 
                 COLOR IS 513, ENABLED EnableMaj, EXCEPTION-VALUE 2021, 
                 FONT IS Small-Font, ID IS 76, LEFT-TEXT, 
                 TITLE W-LibZSPG2, VALUE W-MAJ-ZSPG2, 
                 VISIBLE VisibleMajZSPG2.
              05 Screen1-Cb-EDI-NACT, Check-Box, 
                 COL 19,14, LINE 48,23, LINES 1,23 CELLS, 
                 SIZE 30,00 CELLS, 
                 COLOR IS 513, ENABLED EnableImp, FONT IS Small-Font, 
                 ID IS 28, LEFT-TEXT, 
                 TITLE "Edition des références non actualisées", 
                 VALUE W-EDI-NACT.
              05 Screen1-Cb-EDI-HAU, Check-Box, 
                 COL 19,14, LINE 50,00, LINES 1,23 CELLS, 
                 SIZE 30,00 CELLS, 
                 COLOR IS 513, ENABLED EnableEdi, FONT IS Small-Font, 
                 ID IS 37, LEFT-TEXT, TERMINATION-VALUE 1060, 
                 TITLE "Edition des pièces dont le prix augmente ", 
                 VALUE W-EDI-HAU.
              05 Screen1-La-2c, Label, 
                 COL 50,57, LINE 50,00, LINES 1,23 CELLS, 
                 SIZE 7,71 CELLS, 
                 COLOR IS 513, FONT IS Small-Font, ID IS 38, 
                 LABEL-OFFSET 0, 
                 TITLE "de plus de ", TRANSPARENT, VISIBLE VisibleHau.
              05 Screen1-Ef-HAU, Entry-Field, 
                 COL 58,71, LINE 50,00, LINES 1,23 CELLS, 
                 SIZE 4,29 CELLS, 
                 3-D, COLOR IS 513, ENABLED EnableEdi, ID IS 43, RIGHT, 
                 MAX-TEXT 2, VALUE A-HAU, VISIBLE VisibleHau, 
                 EVENT PROCEDURE Screen1-Ef-HAU-Event-Proc.
              05 Screen1-Cb-EDI-BAI, Check-Box, 
                 COL 19,14, LINE 51,92, LINES 1,23 CELLS, 
                 SIZE 30,00 CELLS, 
                 COLOR IS 513, ENABLED EnableEdi, FONT IS Small-Font, 
                 ID IS 44, LEFT-TEXT, TERMINATION-VALUE 1061, 
                 TITLE "Edition des pièces dont le prix baisse ", 
                 VALUE W-EDI-BAI.
              05 Screen1-La-2ca, Label, 
                 COL 50,57, LINE 51,92, LINES 1,23 CELLS, 
                 SIZE 7,71 CELLS, 
                 COLOR IS 513, FONT IS Small-Font, ID IS 45, 
                 LABEL-OFFSET 0, 
                 TITLE "de plus de ", TRANSPARENT, VISIBLE VisibleBai.
              05 Screen1-Ef-BAI, Entry-Field, 
                 COL 58,71, LINE 51,92, LINES 1,23 CELLS, 
                 SIZE 4,29 CELLS, 
                 3-D, COLOR IS 513, ENABLED EnableEdi, ID IS 46, RIGHT, 
                 MAX-TEXT 2, VALUE A-BAI, VISIBLE VisibleBai, 
                 EVENT PROCEDURE Screen1-Ef-BAI-Event-Proc.
              05 Screen1-La-2d, Label, 
                 COL 64,00, LINE 50,00, LINES 1,23 CELLS, 
                 SIZE 1,43 CELLS, 
                 COLOR IS 514, FONT IS Small-Font, ID IS 47, 
                 LABEL-OFFSET 0, 
                 TITLE "%", TRANSPARENT, VISIBLE VisibleHau.
              05 Screen1-La-2da, Label, 
                 COL 64,29, LINE 52,00, LINES 1,23 CELLS, 
                 SIZE 1,43 CELLS, 
                 COLOR IS 514, FONT IS Small-Font, ID IS 48, 
                 LABEL-OFFSET 0, 
                 TITLE "%", TRANSPARENT, VISIBLE VisibleBai.
              05 Screen1-La-2e, Label, 
                 COL 19,43, LINE 53,85, LINES 1,00 CELLS, 
                 SIZE 8,71 CELLS, 
                 COLOR IS 513, ENABLED EnableEdiArt, 
                 FONT IS Small-Font, ID IS 49, LEFT, LABEL-OFFSET 0, 
                 TITLE "Edition Pour ", TRANSPARENT.
              05 Screen1-Rb-EDI-STO1, Radio-Button, 
                 COL 34,00, LINE 53,85, LINES 1,00 CELLS, 
                 SIZE 31,71 CELLS, 
                 COLOR IS 513, ENABLED EnableEdiArt, 
                 FONT IS Small-Font, GROUP 4, GROUP-VALUE 1, ID IS 50, 
                 TITLE "Les articles avec un stock", VALUE W-EDI-STO.
              05 Screen1-Rb-EDI-STO2, Radio-Button, 
                 COL 67,29, LINE 53,85, LINES 1,00 CELLS, 
                 SIZE 25,00 CELLS, 
                 COLOR IS 513, ENABLED EnableEdiArt, 
                 FONT IS Small-Font, GROUP 4, GROUP-VALUE 2, ID IS 51, 
                 TITLE "Tous les articles", VALUE W-EDI-STO.
              05 Screen1-Br-1, Bar, 
                 COL 33,00, LINE 46,62, SIZE 82,43 CELLS, 
                 ID IS 52, WIDTH 1.
              05 Screen1-La-1, Label, 
                 COL 19,29, LINE 45,85, LINES 1,69 CELLS, 
                 SIZE 14,29 CELLS, 
                 COLOR IS 1, FONT IS Medium-Font, ID IS 72, 
                 LABEL-OFFSET 0, 
                 TITLE "Impression", TRANSPARENT.
              05 Screen1-Br-2, Bar, 
                 COL 17,29, LINE 46,62, SIZE 1,14 CELLS, 
                 ID IS 97, WIDTH 1.
              05 Screen1-Cb-MAJTAR, Check-Box, 
                 COL 22,14, LINE 28,77, LINES 1,08 CELLS, 
                 SIZE 34,29 CELLS, 
                 COLOR IS 517, EXCEPTION-VALUE 2101, 
                 FONT IS Medium-Font, ID IS 84, 
                 TITLE "Mise à jour du tarif articles", VALUE W-MAJTAR.
              05 Screen1-Cb-MajAno, Check-Box, 
                 COL 20,86, LINE 43,54, LINES 1,23 CELLS, 
                 SIZE 38,29 CELLS, 
                 COLOR IS 513, ENABLED EnableMajPv, FONT IS Small-Font, 
                 ID IS 8, LEFT-TEXT, TERMINATION-VALUE 1059, 
                 TITLE 
                 "Avec maj de la liste de contrôle des anomalies", 
                 VALUE W-MAJ-ANO, VISIBLE VisibleMajAno.
              05 Screen1-Cb-PTTC, Check-Box, 
                 COL 74,29, LINE 40,08, LINES 1,23 CELLS, 
                 SIZE 38,29 CELLS, 
                 COLOR IS 513, ENABLED EnableTar, FONT IS Small-Font, 
                 ID IS 27, LEFT-TEXT, TERMINATION-VALUE 3010, 
                 TITLE "Prix communiqués en TTC", VALUE W-PTTC.
              05 Screen1-La-2ba, Label, 
                 COL 82,57, LINE 30,46, LINES 1,69 CELLS, 
                 SIZE 16,14 CELLS, 
                 COLOR IS 513, FONT IS Small-Font, ID IS 55, 
                 LABEL-OFFSET 0, 
                 TITLE "Date Validité", TRANSPARENT.
              05 Screen1-Ef-DVA, Entry-Field, 
                 COL 97,57, LINE 30,08, LINES 2,46 CELLS, 
                 SIZE 15,00 CELLS, 
                 3-D, COLOR IS 513, ENABLED EnableMaj, ID IS 56, 
                 MAX-TEXT 10, NO-AUTOSEL, 
                 EVENT PROCEDURE Screen1-Ef-DAT-Event-Proc.
              05 Screen1-Fr-MajCat, Frame, 
                 COL 17,29, LINE 21,85, LINES 6,38 CELLS, 
                 SIZE 98,43 CELLS, 
                 ENGRAVED, FILL-COLOR 16, FILL-PERCENT 100, ID IS 62, 
                 BACKGROUND-LOW, ATW-CSS-CLASS "card".
              05 Screen1-Cb-PX0, Check-Box, 
                 COL 72,71, LINE 23,69, LINES 1,38 CELLS, 
                 SIZE 39,71 CELLS, 
                 COLOR IS 513, ENABLED W-MajCat, FONT IS Small-Font, 
                 ID IS 82, LEFT-TEXT, TERMINATION-VALUE 1023, 
                 TITLE 
                 "Sans mise à jour si le nouveau prix est à zéro", 
                 VALUE W-PX0.
              05 Screen1-Cb-SupCat, Check-Box, 
                 COL 19,57, LINE 23,77, LINES 1,38 CELLS, 
                 SIZE 39,71 CELLS, 
                 COLOR IS 513, ENABLED W-MajCat, FONT IS Small-Font, 
                 ID IS 83, LEFT-TEXT, TERMINATION-VALUE 1024, 
                 TITLE "Suppression Catalogue Précédent", 
                 VALUE W-DELETE.
              05 Screen1-Cb-FAM, Check-Box, 
                 COL 19,57, LINE 25,69, LINES 1,54 CELLS, 
                 SIZE 39,71 CELLS, 
                 COLOR IS 513, ENABLED W-MajCat, FONT IS Small-Font, 
                 ID IS 31, LEFT-TEXT, TERMINATION-VALUE 1022, 
                 TITLE 
                 "Avec Affectation Code Famille/Sous-famille Article", 
                 VALUE W-MAJ-FAM, VISIBLE 0.
              05 Screen1-Pb-LFAM, Push-Button, 
                 COL 60,71, LINE 25,77, LINES 12, SIZE 12, 
                 BITMAP-HANDLE ZOOMxxx12-BMP, BITMAP-NUMBER 1, 
                 UNFRAMED, SQUARE, 
                 ENABLED W-MajCat, ID IS 42, TERMINATION-VALUE 1021, 
                 TITLE "Liste des Tarifs", VISIBLE 0, 
                 EVENT PROCEDURE Screen1-Pb-LFAM-Event-Proc.
              05 Screen1-La-LFAM, Label, 
                 COL 60,14, LINE 25,85, LINES 1,46 CELLS, 
                 SIZE 37,57 CELLS, 
                 COLOR IS 2, FONT IS Small-Font, ID IS 36, 
                 LABEL-OFFSET 0, TRANSPARENT, VISIBLE MODU-CENTRALE.
              05 Screen1-Cb-MAJCAT, Check-Box, 
                 COL 22,14, LINE 21,92, LINES 1,08 CELLS, 
                 SIZE 31,00 CELLS, 
                 COLOR IS 517, EXCEPTION-VALUE 2100, 
                 FONT IS Medium-Font, ID IS 4, 
                 TITLE "Mise à jour du catalogue", VALUE W-MAJCAT.
           03 Screen1-Fr-2, Frame, 
              COL 17,29, LINE 4,92, LINES 3,38 CELLS, SIZE 98,43 CELLS, 
              ENGRAVED, COLOR IS 2, FILL-COLOR 16, FILL-PERCENT 100, 
              ID IS 39, BACKGROUND-LOW, ATW-CSS-CLASS "card-top".
           03 Screen1-Rb-TRA2, Radio-Button, 
              COL 55,00, LINE 6,08, LINES 1,38 CELLS, SIZE 33,43 CELLS, 
              COLOR IS 513, ENABLED IsModifying, FONT IS Calibri9, 
              GROUP 1, GROUP-VALUE 2, ID IS 10, TERMINATION-VALUE 1051, 
              TITLE "Maj  tarif Articles && catalogue", VALUE W-TRA.
           03 Screen1-Rb-TRA3, Radio-Button, 
              COL 34,14, LINE 6,08, LINES 1,23 CELLS, SIZE 19,71 CELLS, 
              COLOR IS 513, ENABLED IsModifying, FONT IS Calibri9, 
              GROUP 1, GROUP-VALUE 3, ID IS 6, TERMINATION-VALUE 1051, 
              TITLE "Prévisualisation", VALUE W-TRA.
           03 Screen1-Cm-LAN, Combo-Box, 
              COL 87,29, LINE 8,46, LINES 7,77 CELLS, SIZE 19,00 CELLS, 
              3-D, COLOR IS 2, ENABLED IsModifying, ID IS 22, 
              MASS-UPDATE 0, NOTIFY-SELCHANGE, DROP-LIST, UNSORTED, 
              VISIBLE 0, 
              EVENT PROCEDURE Screen1-Cm-TAR-Event-Proc.
           03 Screen1-Fr-3, Frame, 
              COL 17,29, LINE 7,62, LINES 13,31 CELLS, 
              SIZE 98,43 CELLS, 
              ENGRAVED, FILL-COLOR 16, FILL-PERCENT 100, ID IS 40, 
              BACKGROUND-LOW, ATW-CSS-CLASS "card-bottom".
           03 Screen1-Pb-TRF, Push-Button, 
              COL 74,43, LINE 12,54, LINES 2,38 CELLS, 
              SIZE 31,43 CELLS, 
              FONT IS Small-Font, ID IS 32, TERMINATION-VALUE 1090, 
              TITLE "Correspondance Remises", VISIBLE 0.
           03 Screen1-Pb-FSA, Push-Button, 
              COL 74,43, LINE 16,08, LINES 2,38 CELLS, 
              SIZE 31,43 CELLS, 
              FONT IS Small-Font, ID IS 68, NO-TAB, 
              TERMINATION-VALUE 1091, 
              TITLE "Correspondance Familles", VISIBLE 0.
           03 Screen1-La-1ea, Label, 
              COL 19,14, LINE 16,62, LINES 1,15 CELLS, 
              SIZE 13,14 CELLS, 
              COLOR IS 1, FONT IS Calibri9, ID IS 80, RIGHT, 
              LABEL-OFFSET 0, 
              TITLE "Fichier à traiter", TRANSPARENT.
           03 Screen1-Pb-LFIC, Push-Button, 
              COL 67,86, LINE 16,00, LINES 2,38 CELLS, SIZE 4,57 CELLS, 
              ENABLED IsModifying, EXCEPTION-VALUE 1050, ID IS 81, 
              ATW-CSS-CLASS "btn-primary fa fa-search fa-2x".
           03 Screen1-Ef-NOMFIC, Entry-Field, 
              COL 34,00, LINE 16,00, LINES 2,46 CELLS, 
              SIZE 32,86 CELLS, 
              3-D, COLOR IS 1, FONT IS Calibri9B, ID IS 79, 
              MAX-TEXT 20, 
              EVENT PROCEDURE Screen1-Ef-NOMFIC-Event-Proc.
           03 Screen1-Cm-DESTAR, Combo-Box, 
              COL 18,57, LINE 9,23, LINES 4,54 CELLS, SIZE 15,43 CELLS, 
              3-D, COLOR IS 1, FONT IS Calibri9, ID IS 85, 
              MASS-UPDATE 0, NOTIFY-SELCHANGE, DROP-LIST, UNSORTED, 
              VALUE Screen1-Cm-1-Value, VISIBLE 0, 
              EVENT PROCEDURE Screen1-Cm-DESTAR-Event-Proc.
           03 Screen1-Cm-TAR, Combo-Box, 
              COL 34,14, LINE 9,15, LINES 11,92 CELLS, 
              SIZE 32,86 CELLS, 
              3-D, COLOR IS 1, ENABLED IsModifying, FONT IS Calibri9, 
              ID IS 12, MASS-UPDATE 0, NOTIFY-SELCHANGE, DROP-LIST, 
              BEFORE PROCEDURE Screen1-Cm-TAR-Bef-Procedure, 
              EVENT PROCEDURE Screen1-Cm-TAR-Event-Proc.
           03 Screen1-Ef-Company, Entry-Field, 
              COL 17,14, LINE 1,92, LINES 2,46 CELLS, SIZE 42,86 CELLS, 
              3-D, COLOR IS W-COLOR-PROTO, ENABLED 0, 
              FONT IS Calibri9B, ID IS 3, CENTER, MAX-TEXT 25, 
              NO-AUTOSEL, NO-TAB, READ-ONLY, VALUE RAI-MPAR.
           03 Screen1-Ef-User, Entry-Field, 
              COL 60,14, LINE 1,92, LINES 2,46 CELLS, SIZE 5,57 CELLS, 
              3-D, COLOR IS 1, ENABLED 0, FONT IS Calibri9, ID IS 5, 
              CENTER, MAX-TEXT 30, NO-AUTOSEL, NO-TAB, READ-ONLY, 
              VALUE IDE-PALM.
           03 Screen1-Pb-LFOU, Push-Button, 
              COL 67,86, LINE 12,54, LINES 2,38 CELLS, SIZE 4,57 CELLS, 
              ENABLED IsModifying, ID IS 15, TERMINATION-VALUE 1020, 
              ATW-CSS-CLASS "btn-primary fa fa-search fa-2x".
           03 Screen1-Ef-FOU, Entry-Field, 
              COL 34,00, LINE 12,54, LINES 2,46 CELLS, 
              SIZE 32,86 CELLS, 
              3-D, COLOR IS 1, ENABLED IsModifying, FONT IS Calibri9B, 
              ID IS 16, MAX-TEXT 6, NUMERIC, 
              EVENT PROCEDURE Screen1-Ef-FOU-Event-Proc.
           03 Screen1-La-LFOU, Label, 
              COL 68,00, LINE 9,15, LINES 1,31 CELLS, SIZE 25,00 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 7, LABEL-OFFSET 0, 
              TRANSPARENT.
           03 Screen1-Pb-MAJ, Push-Button, 
              COL 110,71, LINE 1,85, LINES 2,38 CELLS, SIZE 4,57 CELLS, 
              ENABLED IsModifying, ID IS 13, TERMINATION-VALUE 1001, 
              ATW-CSS-CLASS "btn-primary fa fa-cogs fa-2x".
           03 Screen1-La-LAN, Label, 
              COL 80,57, LINE 8,54, LINES 1,00 CELLS, SIZE 6,14 CELLS, 
              COLOR IS 1, FONT IS Calibri9, ID IS 21, LABEL-OFFSET 0, 
              TITLE "Langue", TRANSPARENT, VISIBLE 0.
           03 Screen1-La-Col, Label, 
              COL 66,71, LINE 9,08, LINES 1,31 CELLS, SIZE 9,71 CELLS, 
              COLOR IS 1, FONT IS Calibri9, ID IS 24, RIGHT, 
              LABEL-OFFSET 0, 
              TITLE "Colonne Tarif", TRANSPARENT, VISIBLE 0.
           03 Screen1-Cm-Col, Combo-Box, 
              COL 78,71, LINE 8,85, LINES 4,08 CELLS, SIZE 13,00 CELLS, 
              3-D, COLOR IS 1, ENABLED IsModifying, FONT IS Calibri9, 
              ID IS 25, MASS-UPDATE 0, NOTIFY-SELCHANGE, DROP-LIST, 
              UNSORTED, VISIBLE 0, 
              EVENT PROCEDURE Screen1-Cm-TAR-Event-Proc.
           03 Screen1-La-Tar, Label, 
              COL 18,86, LINE 9,77, LINES 1,31 CELLS, SIZE 13,14 CELLS, 
              COLOR IS 1, FONT IS Calibri9, ID IS 33, RIGHT, 
              LABEL-OFFSET 0, 
              TITLE "Tarif", TRANSPARENT.
           03 Screen1-La-2a, Label, 
              COL 18,86, LINE 13,08, LINES 1,31 CELLS, 
              SIZE 13,14 CELLS, 
              COLOR IS 1, FONT IS Calibri9, ID IS 34, RIGHT, 
              LABEL-OFFSET 0, 
              TITLE "Fournisseur", TRANSPARENT.
           03 Screen1-La-1a, Label, 
              COL 18,71, LINE 6,00, LINES 1,23 CELLS, SIZE 13,29 CELLS, 
              COLOR IS W-COLOR-PROTO, FONT IS Calibri9B, ID IS 41, 
              RIGHT, LABEL-OFFSET 0, 
              TITLE "Traitement", TRANSPARENT.
           03 Screen1-Pb-Telecharg, Push-Button, 
              COL 88,14, LINE 8,77, LINES 1,46 CELLS, SIZE 18,29 CELLS, 
              FONT IS Small-Font, ID IS 35, TERMINATION-VALUE 1080, 
              TITLE "Téléchargement du tarif", VISIBLE 0.
           03 Screen1-Pb-CRE-CATFOUK, Push-Button, 
              COL 101,00, LINE 1,85, LINES 24, SIZE 24, 
              BITMAP-HANDLE CATARTX24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 9862, ID IS 74, 
              TITLE "Mise à jour catalogue pour recherche segmentée", 
              VISIBLE 0.
           03 Screen1-Pb-TARPER, Push-Button, 
              COL 105,86, LINE 1,85, LINES 24, SIZE 24, 
              BITMAP-HANDLE TARCEXX24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 2010, ID IS 77, 
              TITLE "Tarifs personnalisés", VISIBLE MODU-TARPER.
       01 Screen2.
           03 Screen2-Fr-1, Frame, 
              COL 1,00, LINE 1,00, LINES 36,54 CELLS, SIZE 59,29 CELLS, 
              ENGRAVED, FILL-COLOR 16, FILL-PERCENT 100, FULL-HEIGHT, 
              ID IS 3, BACKGROUND-LOW.
           03 Screen2-La-WAIT, Label, 
              COL 8,29, LINE 11,08, LINES 2,08 CELLS, SIZE 43,29 CELLS, 
              COLOR IS 525, FONT IS Medium-Font, ID IS 26, CENTER, 
              LABEL-OFFSET 0, 
              TITLE "Traitement en cours - Veuillez Patienter".
           03 Screen2-La-NbrCat, Label, 
              COL 3,14, LINE 24,85, LINES 1,54 CELLS, SIZE 42,29 CELLS, 
              COLOR IS 482, FONT IS Medium-Font, ID IS 27, CENTER, 
              LABEL-OFFSET 0, 
              TITLE "Nombre de références mises à jour", VISIBLE 0.
           03 Screen2-Ef-NbrCat, Entry-Field, 
              COL 45,71, LINE 24,85, LINES 1,54 CELLS, SIZE 9,00 CELLS, 
              3-D, COLOR IS 482, ID IS 57, RIGHT, NO-AUTOSEL, 
              READ-ONLY, VISIBLE 0.
           03 Screen2-La-NbrExt, Label, 
              COL 3,14, LINE 29,54, LINES 1,54 CELLS, SIZE 42,29 CELLS, 
              COLOR IS 482, FONT IS Medium-Font, ID IS 58, CENTER, 
              LABEL-OFFSET 0, VISIBLE 0.
           03 Screen2-Ef-NbrExt, Entry-Field, 
              COL 45,71, LINE 29,54, LINES 1,54 CELLS, SIZE 9,00 CELLS, 
              3-D, COLOR IS 482, ID IS 59, RIGHT, NO-AUTOSEL, 
              READ-ONLY, VISIBLE 0.
           03 Screen2-Br-1, Bar, 
              COL 3,29, LINE 23,69, SIZE 11,86 CELLS, 
              ID IS 60, VISIBLE 0, WIDTH 1.
           03 Screen2-La-MAJCAT, Label, 
              COL 15,29, LINE 23,23, LINES 0,92 CELLS, 
              SIZE 15,43 CELLS, 
              COLOR IS 2, FONT IS Medium-Font, ID IS 61, 
              LABEL-OFFSET 0, 
              TITLE "MAJ CATALOGUE", TRANSPARENT, VISIBLE 0.
           03 Screen2-Br-2, Bar, 
              COL 3,71, LINE 28,38, SIZE 11,86 CELLS, 
              ID IS 62, VISIBLE 0, WIDTH 1.
           03 Screen2-La-MajTar, Label, 
              COL 15,71, LINE 27,92, LINES 0,92 CELLS, 
              SIZE 19,00 CELLS, 
              COLOR IS 2, FONT IS Medium-Font, ID IS 63, 
              LABEL-OFFSET 0, 
              TITLE "MAJ TARIF ARTICLES", TRANSPARENT, VISIBLE 0.
           03 Screen2-La-NbrArt, Label, 
              COL 3,14, LINE 31,92, LINES 1,54 CELLS, SIZE 42,29 CELLS, 
              COLOR IS 482, FONT IS Medium-Font, ID IS 64, CENTER, 
              LABEL-OFFSET 0, VISIBLE 0.
           03 Screen2-Ef-NbrArt, Entry-Field, 
              COL 45,71, LINE 31,92, LINES 1,54 CELLS, SIZE 9,00 CELLS, 
              3-D, COLOR IS 482, ID IS 65, RIGHT, NO-AUTOSEL, 
              READ-ONLY, VISIBLE 0.
           03 Screen2-La-NbrAma, Label, 
              COL 3,14, LINE 34,31, LINES 1,54 CELLS, SIZE 42,29 CELLS, 
              COLOR IS 482, FONT IS Medium-Font, ID IS 55, CENTER, 
              LABEL-OFFSET 0, VISIBLE 0.
           03 Screen2-Ef-NbrAma, Entry-Field, 
              COL 45,71, LINE 34,31, LINES 1,54 CELLS, SIZE 9,00 CELLS, 
              3-D, COLOR IS 482, ID IS 56, RIGHT, NO-AUTOSEL, 
              READ-ONLY, VISIBLE 0.
           03 Screen2-La-TRAIT, Label, 
              COL 8,29, LINE 9,00, LINES 1,31 CELLS, SIZE 43,29 CELLS, 
              COLOR IS 525, FONT IS Large-Font, ID IS 1, CENTER, 
              LABEL-OFFSET 0, 
              TITLE "MAJ Tarif: Traitement réel".
           03 Screen2-Bt-1, Bitmap, 
              COL 28,14, LINE 3,85, LINES 40, SIZE 35, 
              BITMAP-HANDLE PATIENTER-JPG, BITMAP-NUMBER 8, 
              BITMAP-START 1, BITMAP-End 8, BITMAP-TIMER 8, ID IS 2.

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
      * set font
           PERFORM Acu-Init-Font
      * load bitmap
           PERFORM Acu-Init-Bmp
      * open file
           PERFORM Acu-Open-Files
      *    After-Init
           .

       Acu-Init-Font.
      * font setting
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
           INITIALIZE WFONT-DATA Calibri9B
           MOVE 9 TO WFONT-SIZE
           MOVE "Calibri" TO WFONT-NAME
           SET WFCHARSET-DEFAULT TO TRUE
           SET WFONT-BOLD TO TRUE
           SET WFONT-ITALIC TO FALSE
           SET WFONT-UNDERLINE TO FALSE
           SET WFONT-STRIKEOUT TO FALSE
           SET WFFAMILY-DONT-CARE TO TRUE
           SET WFONT-FIXED-PITCH TO FALSE
           CALL "W$FONT" USING WFONT-GET-FONT, Calibri9B, WFONT-DATA
           .

       Acu-Init-Bmp.
      * bitmap loading
           COPY RESOURCE "ZOOMxxx12.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ZOOMxxx12.BMP", GIVING 
              ZOOMxxx12-BMP
           COPY RESOURCE "CATARTX24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "CATARTX24.JPG", GIVING 
              CATARTX24-JPG
           COPY RESOURCE "TARCEXX24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "TARCEXX24.JPG", GIVING 
              TARCEXX24-JPG
           COPY RESOURCE "PATIENTER.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "PATIENTER.JPG", GIVING 
              PATIENTER-JPG
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
           IF Calibri9 NOT = NULL
              DESTROY Calibri9
              SET Calibri9 TO NULL
           END-IF
           IF Calibri9B NOT = NULL
              DESTROY Calibri9B
              SET Calibri9B TO NULL
           END-IF
           .

       Acu-Exit-Bmp.
      * bitmap destroy
           IF ZOOMxxx12-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ZOOMxxx12-BMP
              MOVE 0 TO ZOOMxxx12-BMP
           END-IF
           IF CATARTX24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY CATARTX24-JPG
              MOVE 0 TO CATARTX24-JPG
           END-IF
           IF TARCEXX24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY TARCEXX24-JPG
              MOVE 0 TO TARCEXX24-JPG
           END-IF
           IF PATIENTER-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY PATIENTER-JPG
              MOVE 0 TO PATIENTER-JPG
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
           MOVE 1 TO Screen1-Pg-3-Visible
      * display screen
              DISPLAY Independent GRAPHICAL WINDOW
                 SCREEN LINE INIT-LINE, SCREEN COLUMN INIT-COLUMN, 
                 LINES 57,08, SIZE 132,29, CELL HEIGHT 13, 
                 CELL WIDTH 7, AUTO-MINIMIZE, COLOR IS 65793, 
                 LABEL-OFFSET 0, LINK TO THREAD, MODELESS, NO SCROLL, 
                 WITH SYSTEM MENU, TITLE PROLOG-PALM, TITLE-BAR, 
                 USER-GRAY, USER-WHITE, NO WRAP, 
                 ATW-CSS-CLASS "maximized", 
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
      *    Before-Create
      * display screen
              DISPLAY Floating GRAPHICAL WINDOW
                 LINES 36,54, SIZE 59,29, CELL HEIGHT 13, CELL WIDTH 7, 
                 COLOR IS 65793, LABEL-OFFSET 0, LINK TO THREAD, 
                 MODELESS, NO SCROLL, WITH SYSTEM MENU, 
                 TITLE "Mise à jour tarif et catalogue fournissur", 
                 TITLE-BAR, USER-GRAY, USER-WHITE, NO WRAP, 
                 EVENT PROCEDURE Screen2-Event-Proc, 
                 HANDLE IS Screen2-Handle
      * toolbar
           DISPLAY Screen2 UPON Screen2-Handle
      *    After-Create
           .

       Acu-Screen1-Init-Data.
      *    Before-Initdata
           MODIFY Screen1-Ta-1, TAB-TO-ADD = ("Prévisualisation", 
              "Tarif")
           MODIFY Screen1-Ta-1, VALUE = 1
           PERFORM Acu-Screen1-Gd-1-Content
           PERFORM Acu-Screen1-Cm-LAN-Content
           PERFORM Acu-Screen1-Cm-DESTAR-Content
           PERFORM Acu-Screen1-Cm-TAR-Content
           PERFORM Acu-Screen1-Cm-Col-Content
           PERFORM Screen1-AfterInitData
           .

       Acu-Screen2-Init-Data.
      *    Before-Initdata
           PERFORM Screen2-Aft-Initdata
           .
      * Screen1
       Acu-Screen1-Proc.
           PERFORM UNTIL Exit-Pushed
              ACCEPT Screen1  
                 ON EXCEPTION PERFORM Acu-Screen1-Evaluate-Func
              END-ACCEPT
              EVALUATE TRUE
      * Screen1-Rb-REEL1 Link To
              WHEN Key-Status = 1055
                 PERFORM Screen1-Rb-REEL-Link
      * Screen1-Cb-MAJ-CRC Link To
              WHEN Key-Status = 1057
                 PERFORM Screen1-Cb-MAJ-CRC-Link
      * Screen1-Cb-RefIdem Link To
              WHEN Key-Status = 1058
                 PERFORM Screen1-Cb-RefIdem-Link
      * Screen1-Cb-MajICO Link To
              WHEN Key-Status = 1059
                 PERFORM Screen1-Cb-MajICO-Link
      * Screen1-Cb-EDI-HAU Link To
              WHEN Key-Status = 1060
                 PERFORM Screen1-Cb-EDI-HAU-Link
      * Screen1-Cb-EDI-BAI Link To
              WHEN Key-Status = 1061
                 PERFORM Screen1-Cb-EDI-BAI-Link
      * Screen1-Cb-PTTC Link To
              WHEN Key-Status = 3010
                 PERFORM Screen1-Cb-PTTC-Link
      * Screen1-Cb-PX0 Link To
              WHEN Key-Status = 1023
                 PERFORM Screen1-Cb-PX0-Link
      * Screen1-Cb-SupCat Link To
              WHEN Key-Status = 1024
                 PERFORM Screen1-Cb-SupCat-Link
      * Screen1-Cb-FAM Link To
              WHEN Key-Status = 1022
                 PERFORM Screen1-Cb-FAM-Link
      * Screen1-Pb-LFAM Link To
              WHEN Key-Status = 1021
                 PERFORM Screen1-Pb-LFAM-Link
      * Screen1-Rb-TRA2 Link To
              WHEN Key-Status = 1051
                 PERFORM Screen1-Rb-TRA-Link
      * Screen1-Pb-TRF Link To
              WHEN Key-Status = 1090
                 PERFORM Screen1-Pb-TRF-Link
      * Screen1-Pb-FSA Link To
              WHEN Key-Status = 1091
                 PERFORM Screen1-Pb-FSA-Link
      * Screen1-Pb-LFOU Link To
              WHEN Key-Status = 1020
                 PERFORM Screen1-Pb-LFOU-Link
      * Screen1-Pb-MAJ Link To
              WHEN Key-Status = 1001
                 PERFORM Screen1-Pb-MAJ-Link
      * Screen1-Pb-Telecharg Link To
              WHEN Key-Status = 1080
                 PERFORM Screen1-Pb-Telecharg-Link
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
           MODIFY Screen1-Gd-1, X = 1, Y = 1, CELL-COLOR = 304, 
              CELL-FONT = Calibri9B, CELL-DATA = "Référence", 
           MODIFY Screen1-Gd-1, X = 2, Y = 1, CELL-COLOR = 304, 
              CELL-FONT = Calibri9B, CELL-DATA = "Désignation", 
           MODIFY Screen1-Gd-1, X = 3, Y = 1, CELL-COLOR = 304, 
              CELL-FONT = Calibri9B, CELL-DATA = "Prix Tarif", 
           MODIFY Screen1-Gd-1, X = 4, Y = 1, CELL-COLOR = 304, 
              CELL-FONT = Calibri9B, CELL-DATA = "Remise", 
           MODIFY Screen1-Gd-1, X = 5, Y = 1, CELL-COLOR = 304, 
              CELL-FONT = Calibri9B, CELL-DATA = "Condt", 
           MODIFY Screen1-Gd-1, X = 6, Y = 1, CELL-COLOR = 304, 
              CELL-FONT = Calibri9B, 
           .

      * Screen1-Cm-LAN
       Acu-Screen1-Cm-LAN-Content.
           .

      * Screen1-Cm-DESTAR
       Acu-Screen1-Cm-DESTAR-Content.
           MODIFY Screen1-Cm-DESTAR, RESET-LIST = 1
           MODIFY Screen1-Cm-DESTAR, ITEM-TO-ADD = (
              "Tarif personnalisé", "Tarif générique")
           .

      * Screen1-Cm-TAR
       Acu-Screen1-Cm-TAR-Content.
           .

      * Screen1-Cm-Col
       Acu-Screen1-Cm-Col-Content.
           MODIFY Screen1-Cm-Col, RESET-LIST = 1
           MODIFY Screen1-Cm-Col, ITEM-TO-ADD = ("Colonne 1", 
              "Colonne 2", "Colonne 3")
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
           IF Event-Control-Id = 23 AND Event-Type = Cmd-Tabchanged
              PERFORM Acu-Screen1-Ta-1-Cmd-Tabchanged
           END-IF
      * Screen1-Rb-NBREF1 Link To
              WHEN Key-Status = 1031
                 PERFORM Screen1-Rb-NBREF1-Link
      * Screen1-Rb-NBREF2 Link To
              WHEN Key-Status = 1030
                 PERFORM Screen1-Rb-NBREF2-Link
      * Screen1-Rb-REEL2 Link To
              WHEN Key-Status = 1004
                 PERFORM Screen1-Rb-REEL-Link
      * Screen1-Cb-IdemPvt Link To
              WHEN Key-Status = 1003
                 PERFORM Screen1-Cb-IdemPvt-Link
      * Screen1-Cb-SansMajTar Link To
              WHEN Key-Status = 1070
                 PERFORM Screen1-Cb-SansMajTar-Link
      * Screen1-Cb-MajZSPG1 Link To
              WHEN Key-Status = 2020
                 PERFORM Screen1-Cb-MajZSPG1-Link
      * Screen1-Cb-MajZSPG2 Link To
              WHEN Key-Status = 2021
                 PERFORM Screen1-Cb-MajZSPG2-Link
      * Screen1-Cb-MAJTAR Link To
              WHEN Key-Status = 2101
                 PERFORM Screen1-Cb-MAJTAR-Link
      * Screen1-Cb-MAJCAT Link To
              WHEN Key-Status = 2100
                 PERFORM Screen1-Cb-MAJCAT-Link
      * Screen1-Pb-LFIC Link To
              WHEN Key-Status = 1050
                 PERFORM Screen1-Pb-LFIC-Link
      * Screen1-Pb-CRE-CATFOUK Link To
              WHEN Key-Status = 9862
                 PERFORM Screen1-Pb-CRE-CATFOUK-Link
      * Screen1-Pb-TARPER Link To
              WHEN Key-Status = 2010
                 PERFORM Screen1-Pb-TARPER-Link
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

      * MXDESTAR

      * MXCATFOU

      * MXFOU

      * MXGRAFAM

      * MXART

      * MXFAMART

      * XMLout-File

      * MXMARQUE

      * MXART3

       Acu-Screen1-Exit.
           SET Exit-Pushed TO TRUE
           .

       Acu-Screen2-Exit.
           SET Exit-Pushed TO TRUE
           .


       Acu-Screen1-Ta-1-Cmd-Tabchanged.
           EVALUATE Event-Type
           WHEN Cmd-Tabchanged
              MOVE 0 TO Screen1-Pg-3-Visible, Screen1-Pg-2-Visible
              EVALUATE Event-Data-1
              WHEN 1
                 MOVE 1 TO Screen1-Pg-3-Visible
              WHEN 2
                 MOVE 1 TO Screen1-Pg-2-Visible
              END-EVALUATE
      *       Before-Tabchg-Display
              DISPLAY Screen1
      *       After-Tabchg-Display
           END-EVALUATE
           .

       Screen1-Event-Proc.
           .

       Screen1-Ef-FOU-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              EVALUATE Event-Control-Id
              WHEN 16
                 PERFORM Screen1-Ef-FOU-Ev-Msg-Validate
              END-EVALUATE
           END-EVALUATE
           .

       Screen1-Gd-1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Begin-Entry
              PERFORM Screen1-Gd-1-Ev-Msg-Begin-Entry
           WHEN Msg-Heading-Clicked
              PERFORM Screen1-Gd-1-Ev-Msg-Heading-Clicked
           END-EVALUATE
           .

       Screen1-Gd-1-Exception-Proc.
           .

       Screen1-Ef-DAT-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              EVALUATE Event-Control-Id
              WHEN 30
                 PERFORM Screen1-Ef-DAT-Ev-Msg-Validate
              WHEN 56
                 PERFORM Screen1-Ef-DVA-Ev-Msg-Validate
              END-EVALUATE
           END-EVALUATE
           .

       Screen1-Ef-HAU-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-Ef-HAU-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-Ef-BAI-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-Ef-BAI-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-Pb-LFAM-Event-Proc.
           .

       Screen1-Cm-TAR-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Ntf-Selchange
              EVALUATE Event-Control-Id
              WHEN 22
                 PERFORM Screen1-Cm-LAN-Ev-Ntf-Selchange
              WHEN 12
                 PERFORM Screen1-Cm-TAR-Ev-Ntf-Selchange
              WHEN 25
                 PERFORM Screen1-Cm-COL-Ev-Ntf-Selchange
              END-EVALUATE
           END-EVALUATE
           .

       Screen1-Ef-NOMFIC-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-Ef-NOMFIC-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-Cm-DESTAR-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Ntf-Selchange
              PERFORM Screen1-Cm-DESTAR-Ev-Ntf-Selchange
           END-EVALUATE
           .

       Screen2-Event-Proc.
           .
      ***   start event editor code   ***
      *  Sauvegarde des définitions des fichiers de travail au cas où !
      * FD  TARIF LABEL RECORD STANDARD.
      *    01  ENR-TAR             PIC X(1500).
      *
      *     SELECT TARIF   ASSIGN TO ASSIGN-SEQ
      *                    ORGANIZATION LINE SEQUENTIAL
      *                    ACCESS MODE  IS SEQUENTIAL
      *                    FILE STATUS IS FILE-STATUS.

      *----------------------------------------------------------------*
      * Principe de mise à jour des zones spécifiques:                 *
      *    Exemple avec John Derre                                     *
      *    Dans DESTAR                                                 *
      *          Designtaion          Spécifique Tarif                 *
      *       ZSP1 'Code retour'       Info spécif. 1                  *
      *       ZSP2 'Code Critique'                                     *
      *       ZSP3 'Commodity Code'    Info spécif. 2                  *
      *       ZSP4 'Prix Tarif Frn'    Maj Info Gén. 1                 *
      *                                                                *
      *    Dans FOU                                                    *
      *          Infos spécifique       Maj/Catalogue                  *
      *       Commodity Code               2                           *
      *       Code Retour                  1                           *
      *                                                                *
      *    Avec ce paramétrage, les infos spécifiques fournisseur se   *
      *    mettent à jour correctement                                 *
      *    Concernant les infos spécifiques générales, l'utilisateur   *
      *    doit confirmer la maj dans MTF                              *
      *      Attention si dans DESTAR l'info spécifique est paramétré  *
      *         avec "maj info gen 1", c'est systématiquement l'info   *
      *         spécifique N° 1 (de PGX) qui sera actualisée.          *
      *         Pas de choix de l'info à mettre à jour !               *
      *----------------------------------------------------------------*

       COPY "envmis-credirect.cbl".
       COPY "W:/mx/copy/inversmx.cbl".
       COPY "W:/mx/copy/arrondi.cbl".
      ** COPY "W:/mistral/copy/XMLOut.cbl".
      ** COPY "W:/mistral/copy/impmulti.cbl".
      ** COPY "W:/mx/copy/CRE-CATFOUK.cbl".
      ** COPY "W:/mx/copy/fictomaj-art.cbl"
      **          REPLACING TRAILING "FICMART" BY "MART".
      * COPY "W:/mx/copy/fictomaj-artma.cbl"
      *          REPLACING TRAILING "FICMAMA" BY "MAMA".
160819     COPY "W:/mistral/copy/MisCentrefenetre.cbl".
           
       OPEN-FILE-RTN.
           OPEN I-O MXDESTAR PERFORM STAT.
           OPEN I-O MXFOU    PERFORM STAT.
           OPEN I-O MXCATFOU PERFORM STAT.
           OPEN I-O MXGRAFAM PERFORM STAT.
           OPEN I-O MXFAMART PERFORM STAT.
           OPEN I-O MXART    PERFORM STAT.
           OPEN I-O MXMARQUE PERFORM STAT
           .

       CLOSE-FILE-RTN.
           CLOSE MXDESTAR MXFOU MXCATFOU
                 MXGRAFAM
                 MXFAMART MXART 
                 MXMARQUE
           .

       Screen1-BeforeCreate.
           PERFORM CONTROLE-PALME
      **     COPY "../../cx/copy/mep-couleur-soc.cbl".

           PERFORM Open-File-Rtn
           OPEN I-O MXPARAM
           PERFORM STAT
           MOVE 1 TO W-MXPARAM
           READ MXPARAM INVALID KEY 
                MOVE "Problème Lecture MXPARAM" TO Acu-Msg-1
                PERFORM ERREUR.
           PERFORM STAT
           CLOSE MXPARAM

           MOVE ZERO TO I-TAR
           MOVE 0 TO IND-MAJ-CTF.
      *     MOVE 2,5 TO W-COL-MAJ
           .
       
       Screen1-AfterInitData.
160819     MOVE Screen1-Handle TO HANDLE-PALM

      *    Rech des tarifs configurés
           Modify Screen1-St-1-Handle, 
           TITLE = "Recherche des tarifs - veuillez patientez ..."
           MOVE 0 TO IsModifying EnableSim EnableEdi
           DISPLAY SCREEN1
           MODIFY screen1-gd-1 enabled = 0
           PERFORM RECH-TARIF THRU F-RECH-TARIF.
           IF MODU-TARPER = 0 PERFORM MEP-TARGEN.
           MOVE 1 TO IsModifying EnableSim EnableEdi
           MOVE 3 TO W-TRA
           PERFORM AFF-SELON-ONGLET
           Modify Screen1-St-1-Handle, TITLE = Spaces
           MODIFY screen1-gd-1 enabled = 1
      *
           MOVE 2 TO W-DESTAR
           .
      ******************************************************************
       ERREUR.
           PERFORM MSG-ERREUR
           PERFORM CLOSE-FILE-RTN
           GO ACU-EXIT-RTN
           .
      ******************************************************************
       Screen1-Pb-Quit-LinkTo.
           PERFORM Acu-Screen1-Exit
           .

       Screen1-Ev-Cmd-Close.
           PERFORM Mistral-WindowClosing
           .
    

       INIT-GRID.
           MODIFY Screen1-Gd-1, RESET-GRID = 1
           Perform REMP-COL.
      *
       REMP-COL.
           IF P-REF-MDTA NOT = ZERO
           MODIFY Screen1-Gd-1, X = 1, Y = 1, 
              CELL-COLOR = 304, CELL-DATA = "Référence".
           IF P-DES-MDTA NOT = ZERO
               MODIFY Screen1-Gd-1, X = 2, Y = 1, 
              CELL-COLOR = 304, CELL-DATA = "Désignation".
           IF P-PRIE-MDTA NOT = ZERO
              MODIFY Screen1-Gd-1, X = 3, Y = 1, 
              CELL-COLOR = 304, CELL-DATA = "Prix Tarif".
           IF P-REM-MDTA NOT = ZERO
              MODIFY Screen1-Gd-1, X = 4, Y = 1, 
              CELL-COLOR = 304, CELL-DATA = "Remise".
           IF P-PRIE2-MDTA <> 0
              MODIFY Screen1-Gd-1, X = 5, Y = 1, 
              CELL-COLOR = 304, CELL-DATA = "P.A Tarif"
           ELSE
              IF P-UAC-MDTA NOT = ZERO
                 MODIFY Screen1-Gd-1, X = 5, Y = 1, 
                 CELL-COLOR = 304, CELL-DATA = "Condt"
              END-IF.
           IF P-POIE-MDTA NOT = ZERO
              MODIFY Screen1-Gd-1, X = 6, Y = 1, 
              CELL-COLOR = 304, CELL-DATA = "Poids"
           ELSE IF P-SPE-MDTA(1) NOT = ZERO
                MODIFY Screen1-Gd-1, X = 6, Y = 1, 
                CELL-COLOR = 304,
                CELL-DATA = "Observations". 
           .
      *  Remplissage grille
       REMP-GRID.
           MOVE SPACES TO Screen1-gd-1-Record
           MOVE W-REF  TO Gd-1-COl-REF
           MOVE W-DES  TO Gd-1-COl-DES
           IF W-PRI NOT = ZERO MOVE W-PRI TO Gd-1-COl-PRI.
           MOVE W-REM  TO Gd-1-COl-REM
250118     IF P-PRIE2-MDTA <> 0 
              IF W2-PRI <> 0
                 MOVE W2-PRI TO A62
                 MOVE A62 TO Gd-1-COl-UAC
              END-IF
           ELSE
              MOVE W-UAC TO A-UAC
              MOVE A-UAC TO Gd-1-COl-UAC
           END-IF
           IF P-POIE-MDTA NOT = ZERO MOVE W-POI TO AF-POI
                MOVE AF-POI TO Gd-1-COl-POI
           ELSE IF W-OBS NOT = SPACES MOVE W-OBS TO Gd-1-COl-POI
                END-IF
           END-IF
           MODIFY screen1-gd-1, record-to-add screen1-gd-1-record.
       F-REMP-GRID.
           EXIT.
           .
 
       Screen1-Aft-Routine.
           PERFORM Close-File-Rtn
           .
      *
       Screen1-Gd-1-Ev-Msg-Heading-Clicked.
           move EVENT-ACTION-FAIL to EVENT-ACTION
           .
      *
       Screen1-Gd-1-Ev-Msg-Goto-Cell-Mouse.
      *     Move 1 to w-mouse.
      *     perform Screen1-Gd-1-Ev-Msg-Goto-Cell
      *     move zero to w-mouse
      *     .
 

      *  Recherche des tarifs Génériques configurés
       RECH-TARIF.
           PERFORM CURSEUR-SABLIER
           MOVE ZERO TO MODU-CAT.

           MOVE ZERO TO I
           MOVE SPACES TO CLE1-MDTA
           START MXDESTAR KEY NOT < CLE1-MDTA INVALID GO F-RECH-TARIF.
       LN-MXDESTAR.
           READ MXDESTAR NEXT AT END GO F-RECH-TARIF.
           PERFORM STAT
           PERFORM CALL-EXIMOD
           GO LN-MXDESTAR.
       F-RECH-TARIF.
           MOVE I TO NB-TAR
           PERFORM CURSEUR-FLECHE.

       MEP-TARGEN.
           MODIFY Screen1-Cm-TAR, RESET-LIST = 1 VALUE SPACES
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > NB-TAR
              MODIFY Screen1-Cm-Tar Item-to-add T-TAR(I)
           END-PERFORM.

210917 MEP-TARPER.
           MODIFY Screen1-Cm-TAR, RESET-LIST = 1 VALUE SPACES.

       CALL-EXIMOD.
           IF I < 20
              ADD 1 TO I
              MOVE LOG-MDTA TO T-LOG(I)
              MOVE MOD-MDTA TO T-MOD(I)
              MOVE NOM-MDTA TO T-TAR(I)
           END-IF
           .
210917*--- Sélection catégorie de tarifs (personnalisés ou génériques).
       Screen1-Cm-DESTAR-Ev-Ntf-Selchange.
           MOVE Event-data-1 TO W-DESTAR.
           IF W-DESTAR = 1 PERFORM MEP-TARPER.
           IF W-DESTAR = 2 PERFORM MEP-TARGEN.

       Screen1-Cm-TAR-Bef-Procedure.
           IF MODU-TARPER = 1 AND W-DESTAR = 0 
              MOVE "Sélectionner une catégorie de tarifs" TO ACU-MSG-1
              PERFORM MSG-INFO 
              EXIT PARAGRAPH
           END-IF .
      * Sélection Tarif / Combo
       Screen1-Cm-TAR-Ev-Ntf-Selchange.
           MOVE Event-data-1 TO I-TAR
           INQUIRE Screen1-Cm-TAR, VALUE IN W-CODTAR.
           PERFORM READ-MXDESTAR.
      * --- Si Maj articles Interprètes
           IF MAJ-SPE-INT = 0 MOVE ZERO TO W-LAN.
      *--- Si Tarif KUHN GD sélection de la colonne tarif à prendre
           IF LOG-MDTA = 31 AND MOD-MDTA = 63
              MODIFY Screen1-Cm-Col visible = 1
              Modify Screen1-La-Col Visible = 1
           ELSE
              MODIFY Screen1-Cm-Col visible = 0
              Modify Screen1-La-Col Visible = 0
           END-IF
      *--- Si Tarif FENWICK Affichage bouton téléchargement
           MODIFY Screen1-Pb-Telecharg visible 0
           IF LOG-MDTA = 26 AND MOD-MDTA = 73
              MODIFY Screen1-Pb-Telecharg visible 1
           END-IF       
      *--- Si tarif paramétré avec possibilité de mettre à jour les zones 
      *    spécifiques générale de ART
           | Zone spécifique genérale 1
           MOVE ZERO TO W-MAJ-ZSPG1 SV-VisibleMajZSPG1 


           PERFORM AFF-PB-FSA
           IF W-TRA = 2 PERFORM Adapt-visible-Mtf.
           .

       Screen1-Cm-LAN-Refresh.

           .
       Screen1-Cm-LAN-Ev-Ntf-Selchange.

       Screen1-Cm-COL-Ev-Ntf-Selchange.
           MOVE Event-data-1 TO W-COL. 

      * Saisie Code Fournisseur
       Screen1-Ef-FOU-Ev-Msg-Validate.
           Inquire Screen1-Ef-Fou value = W-FOU
           IF W-FOU NOT = ZERO
              MOVE W-FOU TO COD-MFOU
              READ MXFOU INVALID move 1 TO CANN-MFOU
              END-READ
              IF CANN-MFOU = 1
                MOVE "Fournisseur Inexistant " TO ACU-MSG-1
                PERFORM MSG-INFO
                MOVE ZERO TO W-FOU
                MODIFY Screen1-Ef-Fou value W-FOU
                EXIT PARAGRAPH
              END-IF.
           PERFORM STAT.
           PERFORM AFF-FOU.
           PERFORM AFF-SELON-ONGLET.

       AFF-FOU. 
           IF W-FOU = ZERO MOVE SPACES TO RAI-MFOU.
           MODIFY Screen1-La-LFOU TITLE = RAI-MFOU.
           MODIFY Screen1-Ef-FOU VALUE = COD-MFOU
           IF CANN-MFOU = 1 OR W-FOU = 0
                MODIFY SCREEN1-PB-TRF Visible = 0
           ELSE MODIFY SCREEN1-PB-TRF Visible = 1
           END-IF
           PERFORM AFF-PB-FSA
           PERFORM LECT-MXREMFOU
           .
      *
       Screen1-Pb-LFOU-Link.
           INITIALIZE LK-MFOU-L
           PERFORM CURSEUR-SABLIER
           CALL "../../mx/o/mfou-l.acu" USING ZONE-PALM LK-MFOU-L
           CANCEL "../../mx/o/mfou-l.acu"
           PERFORM CURSEUR-FLECHE
           MOVE LK-MFOU-L-COD TO W-FOU COD-MFOU
           READ MXFOU INVALID KEY move 1 TO CANN-MFOU.
           IF CANN-MFOU = 1
                MOVE "Fournisseur Inexistant " TO ACU-MSG-1
                PERFORM MSG-INFO
                EXIT PARAGRAPH
           END-IF.
           PERFORM STAT
           MODIFY Screen1-Ef-FOU VALUE = COD-MFOU.
           PERFORM AFF-FOU
           PERFORM AFF-SELON-ONGLET
           .
210917*--- Saisie du fichier à traiter
       Screen1-Ef-NOMFIC-Ev-Msg-Validate.
           INQUIRE Screen1-Ef-NOMFIC VALUE IN W-NOMFIC
           IF W-NOMFIC <> SPACES 
              PERFORM TEST-EXIS-FIC.

210917*--- Sélection du fichier taif à traiter
       Screen1-Pb-LFIC-Link.
           STRING MX-DIR   DELIMITED BY "  "
                  "/fta"  DELIMITED BY SIZE
                  INTO LK-LSTDIR-L-REP         
           IF W-DESTAR = 1 MOVE "csv"  TO LK-LSTDIR-L-EXT
           ELSE            MOVE SPACES TO LK-LSTDIR-L-EXT. 
           CALL   "lstdir-l.acu" USING ZONE-PALM LK-LSTDIR-L   
           CANCEL "lstdir-l.acu"
           MOVE LK-LSTDIR-L-FIC TO W-NOMFIC
           IF LK-LSTDIR-L-FIC = SPACE THEN
              MOVE SPACES TO W-NOMFIC 
           ELSE
              PERFORM TEST-EXIS-FIC
           END-IF 
           .
       TEST-EXIS-FIC.
           MOVE SPACES TO ASSIGN-SEQ
           STRING MX-DIR   DELIMITED BY "  "
                  "/fta/"  DELIMITED BY SIZE
                  W-NOMFIC DELIMITED BY " "
                  INTO ASSIGN-SEQ.
           OPEN INPUT TARIF
           PERFORM TEST-STATUS THRU FIN-TEST-STATUS
           IF IND-STAT = 2 OR 3 
              MOVE ASSIGN-SEQ TO ACU-MSG-1
              MOVE "Fichier inexistant" TO ACU-MSG-2
              PERFORM MSG-INFO
              MOVE SPACES TO W-NOMFIC.
           CLOSE TARIF.
           MODIFY Screen1-Ef-NOMFIC VALUE W-NOMFIC.

       Screen1-Pb-TRF-Link.

           .

      *--- Si Tarif Avec correspondance / Famille article: Affichage du bouton correspondant
       AFF-PB-FSA.
           MODIFY Screen1-Pb-FSA visible 0
           IF W-FOU NOT = ZERO AND P-GRA-MDTA NOT = ZERO 
              AND T-GRA-MDTA = "T" 
              MODIFY Screen1-Pb-FSA visible 1
           END-IF.

       Screen1-Pb-FSA-Link.
      *     MOVE W-FOU TO LK-FOU-FSA-FOU
      *     CALL "../../mx/o/fou-fsa.acu" USING ZONE-PALM, LK-FOU-FSA
      *     CANCEL "../../mx/o/fou-fsa.acu"
           .

      *--- Téléchargement du tarif pièces FENWICK
       Screen1-Pb-Telecharg-Link.
           MOVE " Confirmez-vous le téléchargement du tarif pièces ?"
           TO ACU-MSG-1
           PERFORM MSG-ON
           IF ACU-RETURN-VALUE = 2 exit paragraph
           END-IF.
 
           Modify Screen1-St-1-Handle, TITLE IS
           "Veuillez patienter pendant le téléchargement du tarif ..."
           MOVE 0 TO ScreenPatienter-PB-Visible 
160819*     COPY "../../mistral/copy/Mis-Patienter-Debut.cbl".
160819     COPY "W:/mistral/copy/Mis-Patienter-Debut-Centre.cbl".

           ACCEPT W-PRGMX FROM ENVIRONMENT "DIRMX"
           STRING W-PRGMX "/p/RecupTarifPceFwk" DELIMITED BY " " 
                  INTO W-COMMAND 
           CALL "C$SYSTEM" USING W-COMMAND

           COPY "../../mistral/copy/Mis-Patienter-Fin.cbl".
      *--- Le fichier /acuf/mx0001/fta/ERREUR est créé par la commande /acu/mx/o/RecupTarifPceFwk
      *    S'il est de taille zéro le résultat est OK
      *    Sinon --> Problème
      *    
           STRING MX-DIR "/fta/ERREUR" DELIMITED BY " "
                  INTO ASSIGN-FICERR
           CALL "C$FILEINFO" USING ASSIGN-FICERR FILE-INFO
                GIVING STATUS-CODE 
           MOVE FILE-SIZE TO W-SIZE 
           IF W-SIZE NOT = 0 OR STATUS-CODE = 1
              MOVE
              "ATTENTION: Problème de téléchargement du fichier tarif"
              TO ACU-MSG-1
              IF W-SIZE NOT = 0
                 PERFORM LECT-FICERR
              ELSE
                 MOVE "Contacter Mistral Informatique"
                 TO ACU-MSG-2
              END-IF
              PERFORM ERREUR      
           ELSE
              MOVE "Téléchargement réalisé avec succès"
              TO ACU-MSG-1
              MOVE "Cliquer sur OK pour continuer"
              TO ACU-MSG-2
              PERFORM MSG-INFO
              MODIFY Screen1-Pb-Telecharg visible 0
           END-IF.
           Modify Screen1-St-1-Handle, TITLE IS SPACES
           .

       LECT-FICERR.
           OPEN INPUT FICERR PERFORM STAT
           READ FICERR NOT AT END
              MOVE ENR-ERR TO ACU-MSG-2
              READ FICERR NOT AT END
                   MOVE ENR-ERR TO ACU-MSG-3
              END-READ
           END-READ.
           PERFORM STAT.
           CLOSE FICERR.

      *--- Suppression du catalogue
       Screen1-Cb-SupCat-Link.
           IF W-DELETE = 1
              MOVE 0 TO W-PX0
              MODIFY Screen1-Cb-PX0, Enabled 0 VALUE W-PX0
           ELSE
              MODIFY Screen1-Cb-PX0, Enabled 1.
       Screen1-Cb-PX0-Link.
           IF W-PX0 = 1
              MOVE "Ne concerne que les références déjà présentes dans l
      -       "e catalogue fournisseur " TO ACU-MSG-1
              MOVE "Confirmez-vous ce choix ? " TO ACU-MSG-2
              PERFORM MSG-ON
              IF ACU-RETURN-VALUE = 2
                 MOVE 0 TO W-PX0
                 MODIFY Screen1-Cb-PX0, VALUE W-PX0.


      *  Clic / Affectation Famille Article
       Screen1-Cb-FAM-Link.
           perform adapt-visible-fam.
       adapt-visible-fam.
           IF W-MAJ-FAM = 1
              MODIFY Screen1-Pb-LFAM Visible = 1
              IF W-GRA = 0 
                 PERFORM Screen1-Pb-LFAM-Link
              END-IF
           ELSE MOVE ZERO TO W-GRA W-FAM
                MODIFY Screen1-La-LFAM Title = SPACES
                MODIFY Screen1-Pb-LFAM Visible = 0
           END-IF
           .

       Screen1-Pb-LFAM-Link.
           MOVE W-GRA TO LK-MGFA-T-GRA
           MOVE W-FAM TO LK-MGFA-T-FAM
           CALL "../../mx/o/mgfa-t.acu" USING ZONE-PALM, LK-MGFA-T
           CANCEL "../../mx/o/mgfa-t.acu"
           MOVE LK-MGFA-T-GRA TO W-GRA GRA-MGFA
           MOVE LK-MGFA-T-FAM TO W-FAM
           MOVE ZERO TO FAM-MGFA
           READ MXGRAFAM INVALID KEY MOVE SPACES TO LIB-MGFA.
           PERFORM STAT
           MOVE LIB-MGFA TO SV-LIB
           MOVE W-FAM TO FAM-MGFA
           READ MXGRAFAM INVALID KEY MOVE SPACES TO LIB-MGFA.
           PERFORM STAT                                                                
           MOVE SPACES TO W-LIB
           STRING SV-LIB DELIMITED BY "   "
                  " " DELIMITED BY SIZE
                  LIB-MGFA DELIMITED BY "  "
                  INTO W-LIB
           MODIFY Screen1-La-LFAM Title = W-LIB Visible = 1.
           .

      *
       Screen1-Rb-NBREF2-Link.
           IF VisibleRef NOT = 1
              MOVE 1 TO VisibleRef
              DISPLAY SCREEN1.
           .
       Screen1-Rb-NBREF1-Link.
           IF VisibleRef NOT = 0
              MOVE 0 TO VisibleRef
              DISPLAY SCREEN1
           .
      *
       Screen1-Gd-1-Ev-Msg-Begin-Entry.
           Move event-action-fail to event-action
           .
      *
       Screen1-Pb-MAJ-Link.
           IF W-TRA < 2 OR > 3
              MOVE " Vous devez sélectionner le type de traitement "
              TO ACU-MSG-1
              PERFORM MSG-INFO
              MOVE Event-Action-Fail to Event-Action
              Exit Paragraph
           END-IF
           IF (W-DESTAR = 2 AND (I-TAR < 1 OR > NB-TAR)) OR
              (W-DESTAR = 1 AND W-CODTAR= SPACES)
              MOVE " Vous devez sélectionner un tarif " TO ACU-MSG-1
              PERFORM MSG-INFO
              MOVE Event-Action-Fail to Event-Action
              Exit Paragraph
           END-IF
           Inquire Screen1-Ef-Fou value = W-FOU
           MOVE W-FOU TO COD-MFOU
           READ MXFOU INVALID MOVE ZERO TO W-FOU
           END-READ
           IF W-FOU = ZERO
                MOVE "Fournisseur Inexistant " TO ACU-MSG-1
                PERFORM MSG-INFO
                MOVE Event-Action-Fail to Event-Action
                EXIT PARAGRAPH
           END-IF.
           PERFORM STAT
           IF W-NOMFIC = SPACES
              MOVE " Vous devez sélectionner le fichier à traiter " 
              TO ACU-MSG-1
              PERFORM MSG-INFO
              MOVE Event-Action-Fail to Event-Action
              Exit Paragraph
           END-IF
           IF W-TRA = 2 AND W-MAJCAT = 0 AND W-MAJTAR = 0
              MOVE " Vous devez sélectionner au moins une mise à jour " 
              TO ACU-MSG-1
              MOVE " (catalogue et/ou tarif)" TO ACU-MSG-2
              PERFORM MSG-INFO
              MOVE Event-Action-Fail to Event-Action
              Exit Paragraph
           END-IF
           IF W-TRA = 2 AND W-MAJCAT = 1
              IF MODU-CENTRALE = 1 AND W-MAJ-FAM = 1
                 IF W-GRA = ZERO OR W-FAM = 00
                    MOVE "Renseigner la famille et sous-famille article"
                    TO ACU-MSG-1
                    PERFORM MSG-INFO
                    MOVE Event-Action-Fail to Event-Action
                    EXIT PARAGRAPH
                 END-IF
              END-IF
           END-IF
           IF LOG-MDTA = 31 AND MOD-MDTA = 63 AND W-COL = 0
              MOVE "Renseigner la colonne tarif à utiliser"
              TO ACU-MSG-1
              PERFORM MSG-INFO
              MOVE Event-Action-Fail to Event-Action
              EXIT PARAGRAPH
           END-IF
           IF W-TRA = 2 AND W-MAJTAR = 1
              IF W-REEL = 0
                 MOVE "Sélectionner traitement réél ou simulation "
                 TO ACU-MSG-1
                 PERFORM MSG-INFO
                 MOVE Event-Action-Fail to Event-Action
                 EXIT PARAGRAPH
              END-IF
              IF W-REEL = 1
                 PERFORM CTRL-DAT  
                 IF W-OK = 0 
                    MOVE Event-Action-Fail to Event-Action
                    EXIT PARAGRAPH
                 END-IF
                 PERFORM CTRL-DVA  
                 IF W-OK = 0 
                    MOVE Event-Action-Fail to Event-Action
                    EXIT PARAGRAPH
                 END-IF
              END-IF
              IF W-REEL = 2
                 IF W-EDI-NACT = 0 AND W-EDI-HAU = 0 AND W-EDI-BAI = 0
                    MOVE "Sélection incohérente - Veuillez compléter "
                    TO ACU-MSG-1
                    PERFORM MSG-INFO
                    MOVE Event-Action-Fail to Event-Action
                    EXIT PARAGRAPH
                 END-IF
              END-IF
           END-IF.
           IF W-TRA = 2
              MOVE "Confirmez-vous le traitement ? " TO ACU-MSG-1
              PERFORM MSG-ON
              IF ACU-RETURN-VALUE = 2 
                 MOVE Event-Action-Fail to Event-Action
                 EXIT PARAGRAPH
              END-IF
           END-IF
           MOVE 0 TO Ismodifying EnableSim EnableEdi

           IF W-TRA = 3                       | Prévisualisation
              PERFORM TRAITEMENT
           ELSE                               | Maj tarif & Catalogue  
              PERFORM ACU-SCREEN2-ROUTINE     
           END-IF.

           MOVE 1 TO IsModifying EnableSim EnableEdi
           MOVE SPACES TO SCREEN1-GD-1-RECORD
           .

       TRAITEMENT.
           PERFORM CURSEUR-Sablier
      *  Assignation du fichier Tarif Frn
           MOVE SPACES TO ASSIGN-SEQ
           PERFORM READ-MXDESTAR
           STRING MX-DIR   DELIMITED BY "  "
                  "/fta/"  DELIMITED BY SIZE
                  W-NOMFIC DELIMITED BY " "
                  INTO ASSIGN-SEQ.
100613*   Si tarif NEW HOLLAND ou CASE: Vérification du fichier:  suppresssion des caractères spéciaux
           IF (LOG-MDTA = 26 AND MOD-MDTA = 79 AND W-VERIF-TAR = 0) OR            | Tarif NEW HOLLAND
              (LOG-MDTA = 26 AND MOD-MDTA = 05 AND W-VERIF-TAR2 = 0)              | Tarif CASE
              PERFORM VERIF-TARIF-NEWHOL
              IF MOD-MDTA = 79 MOVE 1 TO W-VERIF-TAR END-IF
              IF MOD-MDTA = 05 MOVE 1 TO W-VERIF-TAR2 END-IF
           END-IF.
050716*     IF (LOG-MDTA = 26 AND MOD-MDTA = 15 AND W-VERIF-TAR = 0)              | Tarif MANITOU : Conversion UTF8 --> ISIO le 29/03/2016
      *        PERFORM CONVERT-UTF8                                               |                 Conversion supprimée le 05/07/2016 car la conversion supprime des caractères (ex: les caractères majuscules accentués)  
      *        MOVE 1 TO W-VERIF-TAR                                              |                            ==>   Il est préférérable de ne pas convertir
      *     END-IF.

      *     Prévisualisation du tarif
           IF W-TRA = 3
              OPEN INPUT TARIF
              PERFORM STAT
              PERFORM TRAIT-MAJ THRU F-TRAIT-MAJ
              CLOSE TARIF
              IF W-NBREF = 2 AND W-NBR = 0
                 MOVE "Référence non présente dans le tarif"
                 TO ACU-MSG-1
                 PERFORM MSG-INFO
              ELSE IF W-NBR = 0
                      MOVE "Fichier tarif vide " TO ACU-MSG-1
                      PERFORM MSG-INFO
                   END-IF
              END-IF
              MOVE 1 TO IsModifying EnableSim EnableEdi
              MOVE SPACES TO SCREEN1-GD-1-RECORD
              DISPLAY Screen1
              Modify Screen1-gd-1 enabled = 1
              PERFORM CURSEUR-Fleche
              MOVE EVENT-ACTION-FAIL TO EVENT-ACTION
              EXIT PARAGRAPH
           END-IF

      *  Si demande d'impression: Assignation du fichier LICFICIMP (ImpMulti)
      **     IF W-TRA = 2
      **        IF W-EDI-NACT = 1 OR W-EDI-HAU = 1 OR W-EDI-BAI = 1
      **           PERFORM OPEN-LISFICIMP
      **        END-IF
      **     END-IF

      *--- Mise à jour du catalogue:
      *    Suppression du catalogue Précédent
           IF W-MAJCAT = 1 
              MOVE "MAJ catalogue"  TO W-LIB2
              MODIFY SCREEN2-LA-TRAIT Title = W-LIB2 Visible = 1

              MOVE 1 TO W-TRA 
              OPEN INPUT TARIF
              PERFORM STAT
              PERFORM MEP-MAJ-SPE
              IF W-DELETE = 1
                 PERFORM DEL-MXCATFOU THRU F-DEL-MXCATFOU
              END-IF

              MOVE 
              "Mise à jour du Catalogue en cours - Veuillez patienter"
              TO W-LIB
              PERFORM TRAIT-MAJ THRU F-TRAIT-MAJ
              CLOSE TARIF
              IF IND-MAJ-CTF = 1 AND RACF-MPAR NOT = 1
      *           PERFORM CRE-CATFOUK
081216           MOVE 0 TO IND-MAJ-CTF | REGIS BTP retraité plusieurs fois si on restait dans le programme
              END-IF
           END-IF

      *--- Mise à jour du tarif
           IF W-MAJTAR = 1  
              IF W-REEL = 2 MOVE "MAJ tarif: Simulation"      TO W-LIB2
              ELSE          MOVE "MAJ tarif: Traitement réel" TO W-LIB2
              END-IF  
              MODIFY SCREEN2-LA-TRAIT Title = W-LIB2 Visible = 1

              MOVE 2 TO W-TRA
              OPEN INPUT TARIF
              PERFORM STAT
              PERFORM MEP-MAJ-SPE
              PERFORM TRAIT-MAJ THRU F-TRAIT-MAJ
              CLOSE TARIF
           END-IF.
           PERFORM CURSEUR-Fleche
           .
       F-TRAITEMENT.
              
       READ-MXDESTAR.
           IF W-DESTAR = 2                        | Tarifs génériques 'Mistral'
              MOVE T-LOG(I-TAR) TO LOG-MDTA
              MOVE T-MOD(I-TAR) TO MOD-MDTA
              READ MXDESTAR INVALID KEY 
                   MOVE "Problème Lecture MXDESTAR" TO ACU-MSG-1
                   MOVE CLE1-MDTA TO ACU-MSG-2
                   PERFORM ERREUR      
              END-READ
              PERFORM STAT.
           IF TYP-MDTA = 1 AND SEP-MDTA = "TB" 
              MOVE X"09" TO SEP-MDTA.
           IF TYP-MDTA = 0
              IF P-REF-MDTA = ZERO OR L-REF-MDTA = ZERO OR
                 P-PRIE-MDTA = ZERO OR L-PRIE-MDTA = ZERO
                 MOVE "Descripteur de Tarif Incomplet " TO ACU-MSG-1
                 PERFORM ERREUR      
              END-IF
           END-IF
           IF TYP-MDTA = 1
              IF P-REF-MDTA = ZERO OR P-PRIE-MDTA = ZERO
                 MOVE "Descripteur de Tarif Incomplet " TO ACU-MSG-1
                 PERFORM MSG-INFO
                 MOVE SPACES TO W-CODTAR
                 MODIFY Screen1-Cm-TAR, VALUE W-CODTAR
              END-IF
           END-IF

      *-- Si tarif KUHN GD et si colonne 1 ou 2 recalcul position du prix
      * (La colonne 3 est la première et est paramétrée par défaut dans DESTAR
      *  comme prix d'achat tarif)
           IF LOG-MDTA = 31 AND MOD-MDTA = 63
              IF W-COL = 1 ADD 22 TO P-PRIE2-MDTA
                           ADD 22 TO P-PRID2-MDTA
              END-IF
              IF W-COL = 2 ADD 11 TO P-PRIE2-MDTA
                           ADD 11 TO P-PRID2-MDTA
              END-IF
           END-IF.
           PERFORM MEP-MAJ-SPE.

      *  Test si Zones Spécif. et/ou Articles Interprètes à Mettre à jour 
       MEP-MAJ-SPE.  
           MOVE ZERO TO MAJ-SPE MAJ-SPE2 MAJ-SPE3 MAJ-SPE4 MAJ-SPE-INT
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5 OR
              N-SPE-MDTA(I) = SPACES
              IF W-TRA = 1 OR 3
                 IF C-SPE-MDTA(I) = "C" OR "B" OR "T" OR "1" OR "2" 
                    MOVE 1 TO MAJ-SPE
                 END-IF
                 IF C-SPE-MDTA(I) = "I" MOVE 1 TO MAJ-SPE-INT
                 END-IF
              ELSE 
                 IF T-SPE-MDTA(I) = "S" OR "1"  MOVE 1 TO MAJ-SPE
091116                                          MOVE I TO IMAJ-SPE 
                 END-IF   
              END-IF
              IF T-SPE-MDTA(I) = "2" MOVE 1 TO MAJ-SPE2
091116                               MOVE I TO IMAJ-SPE2
              END-IF
040515        IF T-SPE-MDTA(I) = "3" MOVE 1 TO MAJ-SPE3
091116                               MOVE I TO IMAJ-SPE3
                                     MOVE N-SPE-MDTA(I) TO W-LibSPE3
              END-IF
              IF T-SPE-MDTA(I) = "4" MOVE 1 TO MAJ-SPE4
091116                               MOVE I TO IMAJ-SPE4
                                     MOVE N-SPE-MDTA(I) TO W-LibSPE4 
040515        END-IF
              IF T-SPE-MDTA(I) = "T" MOVE 3 TO MAJ-SPE
              END-IF
              IF T-SPE-MDTA(I) = "I" MOVE 1 TO MAJ-SPE-INT
              END-IF
           END-PERFORM       
      
           .

      *------------------------------------------------------------*
      *  - Lecture Tarif + Maj Catalogue ou  Maj Tarif             *
      *------------------------------------------------------------*
       TRAIT-MAJ.
           IF W-TRA = 1
              MOVE ZERO TO VisibleMajFsa.

250118     IF (LOG-MDTA = 26 AND MOD-MDTA = 30 AND W-TRA <> 3) OR       | Spécifique VOLVO Belgique
210218        (LOG-MDTA = 26 AND MOD-MDTA = 28 AND W-TRA <> 3)          | Spécifique VOLVO Trappes 
              PERFORM MEP-TRIREM-VOLVO THRU F-MEP-TRIREM-VOLVO.     

           IF W-TRA = 2
              PERFORM EXTRACT-ART THRU F-EXTRACT-ART.
           IF W-TRA = 3 PERFORM INIT-GRID.
           MOVE ZERO   TO W-NBR W-NBR2
                          W-ENT-HB TOT-INC TOT-INC-AUT W-ED-AMA
                          W-FIN-IMPRIME W-PBThread-End.
       LECT-TARIF.
           MOVE SPACES TO ENR-TAR                         | Semble obligatoire si fichier en line séquential avec tab
           READ TARIF AT END GO TO F-TRAIT-MAJ.
           PERFORM STAT.
           MOVE 1 TO I-REF.
       BCL-REF.
           IF I-REF > NBR-MDTA GO LECT-TARIF.
           IF NBR-MDTA NOT = 1 COMPUTE PD-REF =
                              (P2R-MDTA - 1) * (I-REF - 1)
           ELSE MOVE ZERO TO PD-REF.
           MOVE SPACES TO W-REF W-REM  W-DES  X-PRI
           MOVE ZERO   TO W-PRI W2-PRI W3-PRI W-UAC W-POI W-MIN
                          W-GCOD W-COE
           MOVE SPACES TO W-OBS W-RER W-REN  W-SPE2
                          W-MAR W-TVA W-PAY

           IF TYP-MDTA = 0 PERFORM MEP-CHAMP-FIX THRU F-MEP-CHAMP-FIX
           ELSE            PERFORM MEP-CHAMP-VAR THRU F-MEP-CHAMP-VAR.
           IF W-TRA = 1
              IF C-REF-MDTA = "T" OR "B"
                 PERFORM COMPACT-REF THRU F-COMPACT-REF
              END-IF
              IF C-REF-MDTA = "0"
                 PERFORM SUP0-REF THRU F-SUP0-REF
              END-IF.
      *--- Spécifique NSK-RHP pour LANDA (Si la Réf. NSK est à blanc
      *--- on prend le Réf. RHP qui est définie en zone observation).
           IF LOG-MDTA = 33 AND MOD-MDTA = 11
              IF W-REF = SPACES MOVE W-OBS TO W-REF.
      *-- Prix = Prix 2 si Prix 2 not = 0
           IF T-PRI2-MDTA = "2"
              IF W2-PRI NOT = ZERO
                   MOVE W2-PRI TO W-PRI.

020113*--  Si prix = prix du conditionnement (on divise les prix communiqués par le condt)
           IF T-PRI-MDTA = "P" OR
150115                     "C"                      | Prix par Condt et .=virgule décimale (JCB)
              IF W-UAC > 1
                 IF W-PRI <> 0
                    COMPUTE WA-PRI ROUNDED = W-PRI / W-UAC
                    MOVE WA-PRI TO W-PRI
                 END-IF
                 IF W2-PRI <> 0
                    COMPUTE WA-PRI ROUNDED = W2-PRI / W-UAC
                    MOVE WA-PRI TO W2-PRI
                 END-IF
                 IF W3-PRI <> 0
                    COMPUTE WA-PRI ROUNDED = W3-PRI / W-UAC
                    MOVE WA-PRI TO W3-PRI
                 END-IF
              END-IF
           END-IF.

      *--- Spécifique Tarif GRIMME (Bernardi): Si Prix 2 = 0 et
      *--- W-REM = SPACES ==> W-REM = "R"
           IF LOG-MDTA = 33 AND MOD-MDTA = 72
              IF W2-PRI = ZERO AND W-REM = SPACES
                 MOVE "R" TO W-REM.

      *--- Spécifique KUHN: Si Art. à prix Net (N en Position 26)
      *    Le Code "N" est alors mis dans la zone code remise
           IF LOG-MDTA = 26 AND MOD-MDTA = 13
              IF ENR-TAR(26:1) = "N" MOVE "N" TO W-REM.

           IF W-REF = SPACES ADD 1 TO I-REF GO BCL-REF.

      *----Si Tarif NEW HOLLAND
           IF LOG-MDTA = 26 AND MOD-MDTA = 79
              IF P-REM-MDTA = 70
                 PERFORM SPECIFIC-NH THRU F-SPECIFIC-NH.

250118     IF (LOG-MDTA = 26 AND MOD-MDTA = 30 AND W-TRA <> 3) OR      | Spécifique VOLVO Belgique (pas si prévisu)
210218        (LOG-MDTA = 26 AND MOD-MDTA = 28 AND W-TRA <> 3)         | Spécifique VOLVO Trappes
              PERFORM SPECIAL-REM-VOLVO            
           END-IF

           IF W-TRA = 3                                                  |  Prévisualisation
              IF W-NBREF = 1 OR (W-NBREF = 2 AND W-VISU-REF = W-REF)
                 PERFORM REMP-GRID THRU F-REMP-GRID
                 ADD 1 TO W-NBR
                 IF W-NBREF = 2 OR W-NBR >= 300 GO F-TRAIT-MAJ
                 END-IF
              END-IF
           ELSE  IF W-TRA = 1 PERFORM MAJ-MXCATFOU THRU F-MAJ-MXCATFOU   | Mise à jour Catalogue
                 ELSE         PERFORM MAJ-MXART THRU F-MAJ-MXART         | Mise à jour Tarif
                 END-IF
           END-IF
           ADD 1 TO I-REF
           GO BCL-REF.
       F-TRAIT-MAJ.
           IF W-TRA = 1
              PERFORM AFF-NBR-CAT
           ELSE IF W-TRA = 2                   
                   PERFORM AFF-MAJ-NBR-ART
                   IF W-ENT-HB = 1 OR W-EDI-NACT = 1
                      MOVE 
                      "Préparation de l'impression en cours - Veuillez P
      -               "atienter" TO W-LIB
                      MODIFY SCREEN2-LA-WAIT Title = W-LIB Visible = 1
                   END-IF
      *             IF W-ENT-HB = 1
      *                PERFORM EDIT-FIN-HB
      *                PERFORM APERCU-HB
      *             END-IF
                   IF W-EDI-NACT = 1 OR W-MAJ-ANO = 1
                      PERFORM EDIT-NACT THRU F-EDIT-NACT
                      IF W-EDI-NACT = 1
                         PERFORM APERCU-NACT
                      END-IF
                   END-IF
                   CLOSE TRI
                   DELETE FILE TRI
                   IF W-REEL = 1
241019                PERFORM MAJ-FOU                      | MAJ Date de validité
                   END-IF
                END-IF
           END-IF
           IF LOG-MDTA = 26 AND (MOD-MDTA = 30 OR 28)       | Tarif VOLVO Belgique ou Trappes
              CLOSE TRIREM
              DELETE FILE TRIREM.
           .

       MAJ-MXCATFOU.
           MOVE SPACE  TO ENR-MCTF.
           MOVE W-FOU  TO FOU-MCTF
           MOVE W-REF  TO REF-MCTF
           MOVE 0 TO W-INV.
           READ MXCATFOU INVALID MOVE 9 TO W-INV.
           PERFORM STAT.

           MOVE W-FOU   TO FOU-MCTF
           MOVE W-REF   TO REF-MCTF
           IF W-DES NOT = SPACES MOVE W-DES TO DES-MCTF.
021211     IF NOT (W-PX0 = 1 AND W-PRI = 0) 
              MULTIPLY 1 BY W-PRI GIVING PRI-MCTF ROUNDED 
250118        IF LOG-MDTA = 26 AND (MOD-MDTA = 30 OR 28)            | Spécifique VOLVO Belgique ou Trappes
                 PERFORM SPECIAL-REM-VOLVO            
              END-IF
              MOVE W-REM  TO REM-MCTF.
           MOVE W-UAC   TO UAC-MCTF.
           IF T-POI-MDTA = 1
                COMPUTE POI-MCTF ROUNDED = (W-POI * 1000)
           ELSE IF T-POI-MDTA = 2
                     COMPUTE POI-MCTF ROUNDED = (W-POI * 1000000)
                ELSE IF T-POI-MDTA = 3 MOVE W-POI TO POI-MCTF.
           IF DEV-MFOU NOT = SPACES AND DEV-MFOU NOT = DEV-MPAR
                MOVE 1 TO DEV-MCTF
           ELSE MOVE 0 TO DEV-MCTF.
      *---Si tarif PRAT (33 - 25) La mention "REMPLACER PAR"
      *   est changé par "Remp.".
           IF LOG-MDTA = 33 AND MOD-MDTA = 25
              IF W-OBS(1:13) = "REMPLACER PAR"
                 MOVE W-OBS  TO SV-OBS
                 MOVE SPACES TO W-OBS
                 MOVE "R./"  TO W-OBS(1:3)
                 MOVE SV-OBS(14:17) TO W-OBS(4:17).
           MOVE W-OBS TO W-ZCAR

           MOVE W-OBS  TO OBS-MCTF.
           MOVE W-SPE2 TO SPE2-MCTF.

           IF P-PRIE2-MDTA NOT = ZERO
                MOVE W2-PRI TO PAT-MCTF
           ELSE MOVE ZERO   TO PAT-MCTF.
060510     MOVE W3-PRI TO PVT-MCTF

      *--- Si tarif LANDA (Spécifique: La zone observation doit contenir
      *    le P.V): Formatage de ce PV qui est contenu dans la zone Spé 1
           IF LOG-MDTA = 32 AND MOD-MDTA = 48
              MOVE W-OBS(1:9) TO WT-PRI(1:9)
              MOVE WT-PRI TO AF-PRI
              MOVE AF-PRI TO OBS-MCTF.

           IF MODU-CENTRALE = 1 AND W-MAJ-FAM = 1 
              MOVE W-GRA TO GRA-MCTF
              MOVE W-FAM TO FAM-MCTF
           ELSE
              IF VisibleMajFsa = 1                | Si existence table de correspondance / Famille article
                 CONTINUE
              ELSE
                 IF P-GRA-MDTA NOT = ZERO
                    MOVE F-GRA TO GRA-MCTF
                 END-IF
                 IF P-FAM-MDTA NOT = ZERO
                    MOVE F-FAM TO FAM-MCTF
                 END-IF.
080415     IF P-TVA-MDTA NOT = ZERO MOVE W-TVA TO TVA-MCTF.

130308     MOVE DTT-PALM TO DAT-MCTF
           IF W-INV = 9
              WRITE ENR-MCTF INVALID MOVE "Ecriture CATFOU No " 
                    TO ACU-MSG-1
                    MOVE CLE1-MCTF TO ACU-MSG-2 
                    PERFORM ERREUR      
              END-WRITE
              MOVE 1 TO IND-MAJ-CTF
           ELSE
              REWRITE ENR-MCTF INVALID MOVE "Réécriture CATFOU No "
                    TO ACU-MSG-1
                    MOVE CLE1-MCTF TO ACU-MSG-2 
                    PERFORM ERREUR      
              END-REWRITE
           PERFORM STAT.


      *----  MAJ Fichier Articles Interprètes


           ADD 1 TO W-NBR.
           IF W-NBR < 100 OR W-NBR(5:2) = "00"
              IF W-TRA = 1
                  PERFORM AFF-NBR-CAT
              END-IF.
       F-MAJ-MXCATFOU.
           EXIT.

       AFF-DEL-NBR.
           IF W-NBR < 2
              MODIFY Screen2-Br-1 Visible 1
              MODIFY Screen2-La-MajCat Visible 1
              MODIFY Screen2-La-NbrCat Visible 1 title 
              "Nombre de références supprimées: "  
              MODIFY Screen2-Ef-NbrCat Visible 1.
           MOVE W-NBR TO A-NBR
           MODIFY SCREEN2-Ef-NbrCat Value = A-NBR.

       AFF-NBR-CAT.
           IF W-NBR < 2
              MODIFY Screen2-Br-1 Visible 1
              MODIFY Screen2-La-MajCat Visible 1
              MODIFY Screen2-La-NbrCat Visible 1 title 
              "Nombre de références créées / mises à jour: "  
              MODIFY Screen2-Ef-NbrCat Visible 1.
           MOVE W-NBR TO A-NBR
           MODIFY SCREEN2-Ef-NbrCat Value = A-NBR.

       AFF-EXT-NBR.
           IF W-NBR < 2
              MODIFY Screen2-Br-2 Visible 1
              MODIFY Screen2-La-MajTar Visible 1
              MODIFY Screen2-La-NbrExt Visible 1 title 
              "Nombre de références extraites du fichier articles: "  
              MODIFY Screen2-Ef-NbrExt Visible 1.
           MOVE W-NBR TO A-NBR
           MODIFY SCREEN2-Ef-NbrExt Value = A-NBR.

       AFF-MAJ-NBR-ART.
           IF W-NBR < 2
              MODIFY Screen2-Br-2 Visible 1
              MODIFY Screen2-La-MajTar Visible 1
              MODIFY Screen2-La-NbrArt Visible 1 title 
              "Nombre de références actualisées/Frn d'origine: "  
              MODIFY Screen2-Ef-NbrArt Visible 1.
           MOVE W-NBR TO A-NBR
           MODIFY SCREEN2-Ef-NbrArt Value = A-NBR.

       AFF-MAJ-NBR-ARTMA.
           IF W-NBR2 < 2
              MODIFY Screen2-Br-2 Visible 1
              MODIFY Screen2-La-MajTar Visible 1
              MODIFY Screen2-La-NbrAma Visible 1 title 
              "Nombre de références actualisées/Frn secondaire:"  
              MODIFY Screen2-Ef-NbrAma Visible 1.
           MOVE W-NBR2 TO A-NBR
           MODIFY SCREEN2-Ef-NbrAma Value = A-NBR.

      *---------------------------------------------*
      *   Suppression du catalogue fournisseur      *
      *---------------------------------------------*
       DEL-MXCATFOU.           
           MOVE ZERO   TO W-NBR.
           MOVE W-FOU  TO FOU-MCTF
           MOVE SPACES TO REF-MCTF
           START MXCATFOU KEY NOT < CLE1-MCTF INVALID GO F-DEL-MXCATFOU.
       LD-MXCATFOU.
           READ MXCATFOU NEXT LOCK AT END GO TO F-DEL-MXCATFOU.
           PERFORM STAT.
           IF IND-STAT = 1 GO TO LD-MXCATFOU.
           IF FOU-MCTF NOT = W-FOU GO TO F-DEL-MXCATFOU.
           DELETE MXCATFOU INVALID MOVE "Problème Delete CATFOU " 
               TO ACU-MSG-1
               PERFORM ERREUR.
           PERFORM STAT.
           ADD 1 TO W-NBR
           IF W-NBR < 100 OR W-NBR(5:2) = "00"
              PERFORM AFF-DEL-NBR.
           GO TO LD-MXCATFOU.
       F-DEL-MXCATFOU.
           PERFORM AFF-DEL-NBR.

      *----------------------------------------------------------------*
      * Mise en place des zones si type enreg = Champ de longeur fixe  *
      *----------------------------------------------------------------*
       MEP-CHAMP-FIX.
      *-- Référence
           ADD PD-REF P-REF-MDTA GIVING W-POS
           MOVE ENR-TAR(W-POS:L-REF-MDTA) TO W-REF
      *       Si référence suite
           IF P-REF2-MDTA NOT = ZERO AND L-REF-MDTA < 21
              ADD 1 TO L-REF-MDTA GIVING W-POS2
              SUBTRACT L-REF-MDTA FROM 21 GIVING W-LON
              ADD PD-REF P-REF2-MDTA GIVING W-POS
              MOVE ENR-TAR(W-POS:L-REF2-MDTA) TO
              W-REF(W-POS2:W-LON).
      *-- Prix
      *---- Si Prix calé à gauche : Recalage + jutification avec des 0
      *     a gauche.
           IF T-PRI-MDTA = "G"
              ADD PD-REF P-PRIE-MDTA GIVING W-POS
              ADD L-PRIE-MDTA L-PRID-MDTA GIVING W-LON
              MOVE L-PRID-MDTA TO L-PRID
              PERFORM MEP-NUM-DEC THRU F-MEP-NUM-DEC
              MOVE N-MEP TO W-PRI
      *       Si Prix Cadré à Gauche avec décimales et sans "," ou "."
              IF NB-DEC = 0 AND L-PRID-MDTA NOT = ZERO
                 IF L-PRID-MDTA = 1
                    COMPUTE W-PRI ROUNDED = W-PRI / 10
                 END-IF
                 IF L-PRID-MDTA = 2
                    COMPUTE W-PRI ROUNDED = W-PRI / 100
                 END-IF
                 IF L-PRID-MDTA = 3
                    COMPUTE W-PRI ROUNDED = W-PRI / 1000
                 END-IF
                 IF L-PRID-MDTA = 4
                    COMPUTE W-PRI ROUNDED = W-PRI / 10000
                 END-IF
                 MOVE R-W-PRI(1:9) TO X-PRI
              END-IF
           ELSE
              IF P-PRIE-MDTA NOT = ZERO
                 ADD PD-REF P-PRIE-MDTA GIVING W-POS
                 MOVE ENR-TAR(W-POS:L-PRIE-MDTA) TO W-PRIE X-PRI
                 ADD PD-REF P-PRID-MDTA GIVING W-POS
                 IF L-PRID-MDTA = 1 MOVE ENR-TAR(W-POS:1) TO W-PRID1
                 END-IF
                 IF L-PRID-MDTA = 2 MOVE ENR-TAR(W-POS:2) TO W-PRID2
                 END-IF
                 IF L-PRID-MDTA > 2 MOVE ENR-TAR(W-POS:3) TO W-PRID3
                 END-IF
              END-IF.
      *---- Test si la partie entière du prix comporte des points(entre
      *     les milliers).
           MOVE ZERO TO W-NUM
           MOVE 12   TO Z.
           PERFORM VARYING W-LON FROM 12 BY -1 UNTIL W-LON < 1
              IF X-PRI(W-LON:1) NUMERIC
                 MOVE X-PRI(W-LON:1) TO W-N(Z)
                 ADD -1 TO Z
              END-IF
           END-PERFORM
           MOVE W-NUM TO W-PRIE
      *-- Prix 2
           IF P-PRIE2-MDTA NOT = ZERO
              IF T-PRI2-MDTA = "G"
                 ADD PD-REF P-PRIE2-MDTA GIVING W-POS
                 ADD L-PRIE2-MDTA L-PRID2-MDTA GIVING W-LON
                 MOVE L-PRID2-MDTA TO L-PRID
                 PERFORM MEP-NUM-DEC THRU F-MEP-NUM-DEC
                 MOVE N-MEP TO W2-PRI
      *          Si Prix Cadré à Gauche avec décimales et sans "," ou "."
                 IF NB-DEC = 0 AND L-PRID2-MDTA NOT = ZERO
                    IF L-PRID2-MDTA = 1
                       COMPUTE W2-PRI ROUNDED = W2-PRI / 10
                    END-IF
                    IF L-PRID2-MDTA = 2
                       COMPUTE W2-PRI ROUNDED = W2-PRI / 100
                    END-IF
                    IF L-PRID2-MDTA = 3
                       COMPUTE W2-PRI ROUNDED = W2-PRI / 1000
                    END-IF
                    IF L-PRID2-MDTA = 4
                       COMPUTE W2-PRI ROUNDED = W2-PRI / 10000
                    END-IF
                    MOVE R-W-PRI(1:9) TO X-PRI
                 END-IF
              ELSE
                 ADD PD-REF P-PRIE2-MDTA GIVING W-POS
                 MOVE ENR-TAR(W-POS:L-PRIE2-MDTA) TO W2-PRIE X-PRI
                 ADD PD-REF P-PRID2-MDTA GIVING W-POS
                 IF L-PRID2-MDTA = 1 MOVE ENR-TAR(W-POS:1) TO W2-PRID1
                 END-IF
                 IF L-PRID2-MDTA = 2 MOVE ENR-TAR(W-POS:2) TO W2-PRID2
                 END-IF
                 IF L-PRID2-MDTA > 2 MOVE ENR-TAR(W-POS:3) TO W2-PRID3
                 END-IF  
              END-IF
           END-IF.
      *---- Test si la partie entière du prix comporte des points(entre les milliers).
           MOVE ZERO TO W-NUM
           MOVE 12   TO Z.
           PERFORM VARYING W-LON FROM 12 BY -1 UNTIL W-LON < 1
              IF X-PRI(W-LON:1) NUMERIC
                 MOVE X-PRI(W-LON:1) TO W-N(Z)
                 ADD -1 TO Z
              END-IF
           END-PERFORM
           MOVE W-NUM TO W2-PRIE
      *-- Prix 3
           IF P-PRIE3-MDTA NOT = ZERO
              ADD PD-REF P-PRIE3-MDTA GIVING W-POS
              MOVE ENR-TAR(W-POS:L-PRIE3-MDTA) TO W3-PRIE
              ADD PD-REF P-PRID3-MDTA GIVING W-POS
              IF L-PRID3-MDTA = 1 MOVE ENR-TAR(W-POS:1) TO W3-PRID1
              END-IF
              IF L-PRID3-MDTA = 2 MOVE ENR-TAR(W-POS:2) TO W3-PRID2
              END-IF
              IF L-PRID3-MDTA > 2 MOVE ENR-TAR(W-POS:3) TO W3-PRID3
              END-IF
           END-IF.
      *-- Désignation
           IF P-DES-MDTA NOT = ZERO
              ADD PD-REF P-DES-MDTA GIVING W-POS
              MOVE ENR-TAR(W-POS:L-DES-MDTA) TO W-DES.
           IF LOG-MDTA = 26 AND MOD-MDTA = 15
              PERFORM MEP-DES-MANITOU.
      *-- Remise
           IF P-REM-MDTA NOT = ZERO
              ADD PD-REF P-REM-MDTA GIVING W-POS
              MOVE ENR-TAR(W-POS:L-REM-MDTA) TO W-REM
              IF P-REM2-MDTA NOT = ZERO AND L-REM-MDTA < 7
                  ADD 1 TO L-REM-MDTA GIVING W-POS2
                  SUBTRACT L-REM-MDTA FROM 7 GIVING W-LON
                  ADD PD-REF P-REM2-MDTA GIVING W-POS
                  MOVE ENR-TAR(W-POS:L-REM2-MDTA) TO
                  W-REM(W-POS2:W-LON).
      *-- Conditionnement Achat
      *---- Si calé à gauche : Recalage + jutification avec des 0
      *     a gauche.
           IF P-UAC-MDTA NOT = ZERO
              IF T-UAC-MDTA = "G"
                 ADD PD-REF P-UAC-MDTA GIVING W-POS
                 MOVE L-UAC-MDTA TO W-LON
                 MOVE ZERO      TO L-PRID
                 PERFORM MEP-NUM-DEC THRU F-MEP-NUM-DEC
                 MOVE N-MEP TO W-UAC
              ELSE
                 ADD PD-REF P-UAC-MDTA GIVING W-POS
                 MOVE L-UAC-MDTA TO W-LON
                 MOVE ZERO TO W-NUM
                 MOVE 12   TO Z
                 PERFORM MEP-NUM
                    VARYING W-LON FROM W-LON BY -1 UNTIL W-LON < 1
                 MOVE W-NUM TO W-UAC.
      *-- Poids
           IF P-POIE-MDTA NOT = ZERO
              ADD PD-REF P-POIE-MDTA GIVING W-POS
              IF ENR-TAR(W-POS:L-POIE-MDTA) NOT NUMERIC AND
                 P-POID-MDTA = ZERO
                 MOVE L-POIE-MDTA TO W-LON
                 MOVE L-POID-MDTA TO L-PRID
                 PERFORM MEP-NUM-DEC THRU F-MEP-NUM-DEC
                 MOVE N-MEP TO W-POI
              ELSE
                 MOVE ENR-TAR(W-POS:L-POIE-MDTA) TO W-POIE
                 ADD PD-REF P-POID-MDTA GIVING W-POS
                 IF L-POID-MDTA = 1 MOVE ENR-TAR(W-POS:1) TO W-POID1
                 END-IF
                 IF L-POID-MDTA = 2 MOVE ENR-TAR(W-POS:2) TO W-POID2
                 END-IF
                 IF L-POID-MDTA > 2 MOVE ENR-TAR(W-POS:3) TO W-POID3
                 END-IF.
      *-- Référence de Remplacement
           IF P-RER-MDTA NOT = ZERO
              ADD PD-REF P-RER-MDTA GIVING W-POS
              MOVE ENR-TAR(W-POS:L-RER-MDTA) TO W-RER.
           IF W-RER NOT = SPACES and C-RER-MDTA = "C"
              IF W-OBS = SPACES MOVE W-RER TO W-OBS
              ELSE STRING W-OBS DELIMITED BY "   "
                          " "   DELIMITED BY SIZE
                          W-RER DELIMITED BY "  " INTO W-OBS.
      *-- Référence Neuve et Minoration (Spécial FENWICK Concess.)
           IF P-REN-MDTA NOT = ZERO
              ADD PD-REF P-REN-MDTA GIVING W-POS
              MOVE ENR-TAR(W-POS:L-REN-MDTA) TO W-REN
           END-IF
           IF P-MIN-MDTA NOT = ZERO
              ADD PD-REF P-MIN-MDTA GIVING W-POS
              MOVE ENR-TAR(W-POS:L-MIN-MDTA) TO W-MIN
           END-IF
           IF C-REN-MDTA = "C"
              IF W-REN NOT = SPACES
                 PERFORM MEP-REN-MIN
                 IF W-OBS = SPACES MOVE W-FWK TO W-OBS
                 ELSE STRING W-OBS DELIMITED BY "   "
                             " "   DELIMITED BY SIZE
                             W-FWK DELIMITED BY "  " INTO W-OBS.
      *-- Famille et Sous-Fmaille Article (Spécial FENWICK Concess.)
           IF P-GRA-MDTA NOT = ZERO
              ADD PD-REF P-GRA-MDTA GIVING W-POS
              MOVE ENR-TAR(W-POS:L-GRA-MDTA) TO F-GRA F-GRA2
              IF P-FAM-MDTA NOT = ZERO
                 ADD PD-REF P-FAM-MDTA GIVING W-POS
                 MOVE ENR-TAR(W-POS:L-FAM-MDTA) TO F-FAM
              END-IF.
      *-- Gencod
           IF P-GCOD-MDTA NOT = ZERO
              ADD PD-REF P-GCOD-MDTA GIVING W-POS
              MOVE L-GCOD-MDTA TO W-LON
              MOVE ZERO TO W-NUM15
              MOVE 15   TO Z
              PERFORM MEP-NUM15
                 VARYING W-LON FROM W-LON BY -1 UNTIL W-LON < 1
              MOVE W-NUM15 TO W-GCOD.
160511*-- Marque
           IF P-MAR-MDTA NOT = ZERO
              ADD PD-REF P-MAR-MDTA GIVING W-POS
              MOVE ENR-TAR(W-POS:L-MAR-MDTA) TO W-MAR.
160511*-- N° TVA CEE
           IF P-TVA-MDTA NOT = ZERO
              ADD PD-REF P-TVA-MDTA GIVING W-POS
              MOVE ENR-TAR(W-POS:L-TVA-MDTA) TO W-TVA.
160511*-- Code pays d'origine
           IF P-PAY-MDTA NOT = ZERO
              ADD PD-REF P-PAY-MDTA GIVING W-POS
              MOVE ENR-TAR(W-POS:L-PAY-MDTA) TO W-PAY.
040614*-- Référence Interne 
           IF P-RFI-MDTA NOT = ZERO
              ADD PD-REF P-RFI-MDTA GIVING W-POS
              MOVE ENR-TAR(W-POS:L-RFI-MDTA) TO W-RFI.
120115*-- Coefficient multiplicateur 
           IF P-COEE-MDTA NOT = ZERO
              ADD PD-REF P-COEE-MDTA GIVING W-POS
              MOVE ENR-TAR(W-POS:L-PRIE3-MDTA) TO W-COEE
              ADD PD-REF P-COED-MDTA GIVING W-POS
              IF L-COED-MDTA = 1 MOVE ENR-TAR(W-POS:1) TO W-COED1
              END-IF
              IF L-COED-MDTA = 2 MOVE ENR-TAR(W-POS:2) TO W-COED2
              END-IF
              IF L-COED-MDTA > 2 MOVE ENR-TAR(W-POS:3) TO W-COED3
              END-IF
           END-IF.
      *-- Zones Spécifiques
           MOVE SPACES TO WT-SPE(1) WT-SPE(2) WT-SPE(3)
                          WT-SPE(4) WT-SPE(5)
           IF MAJ-SPE = 1  OR MAJ-SPE2 = 1 OR 
              MAJ-SPE3 = 1 OR MAJ-SPE4 = 1 
              PERFORM MEP-SPE VARYING I FROM 1 BY 1 UNTIL I > 5 OR
                 N-SPE-MDTA(I) = SPACES.
           IF MAJ-SPE-INT = 1
              PERFORM MEP-SPE-INT VARYING I FROM 1 BY 1 UNTIL I > 5 OR
                 N-SPE-MDTA(I) = SPACES.
       F-MEP-CHAMP-FIX.
           EXIT.

      *---------------------------------------------------*
      *  Suppresion des Blancs DEVANT la Référence Frn    *
      *---------------------------------------------------*
       COMPACT-REF.


           MOVE SPACES TO K-REF
           MOVE 1 TO I Z.
       BCL-COMPACT.
           IF I > 21 OR Z > 21 GO F-COMPACT-REF.
           IF C-REF-MDTA = "T"
              IF W-R(I) = SPACES AND K-REF = SPACES
                 ADD 1 TO I GO BCL-COMPACT.
           IF C-REF-MDTA = "B"
              IF W-R(I) = SPACES
                 ADD 1 TO I GO BCL-COMPACT.
290114     IF (CLI-PALM = 121377 OR 4) AND LOG-MDTA = 32 AND      | Spécial Pottinger pour Lacan
               MOD-MDTA = 65                                      
              IF W-R(I) = "+" OR "."
                 ADD 1 TO I GO BCL-COMPACT.  
           MOVE W-R(I) TO K-R(Z).
           ADD 1 TO I Z
           GO BCL-COMPACT.
       F-COMPACT-REF.
           MOVE K-REF TO W-REF.
      *------------------------------------------------------------*
      *    Suppression Zéro Non significatif (si Paramétré) de la  *
      *    référence du fichier tarif                              *
      *------------------------------------------------------------*
       SUP0-REF.
           MOVE 1 TO Z I
           MOVE SPACES TO K-REF.
       BCL0-NUM.
           IF I > 21 OR Z > 21 GO TO F-SUP0-REF.
           IF W-R(I) = "0" AND K-REF = SPACES
              ADD 1 TO I
              GO TO BCL0-NUM.
           MOVE W-R(I) TO K-R(Z)
           ADD 1 TO I.
           ADD 1 TO Z.
           GO TO BCL0-NUM.
       F-SUP0-REF.
           MOVE K-REF TO W-REF.
      *---------------------------------------------------------*
      * Mise en place zone numérique calée à gauche             *
      *---------------------------------------------------------*
       MEP-NUM-DEC.
           MOVE ZERO TO W-NUM N-MEP
           MOVE 12   TO Z
           MOVE ZERO TO NB-DEC
           MOVE 1    TO W-DEC
           PERFORM MEP-NUM
              VARYING W-LON FROM W-LON BY -1 UNTIL W-LON < 1
           IF W-DEC = 2 AND (NB-DEC > ZERO AND < 4)
                MOVE NB-DEC TO L-PRID
           END-IF
           IF W-DEC = 1 MOVE ZERO TO L-PRID NB-DEC.
           IF L-PRID = 0 MOVE ZERO        TO N-MEPD3
                         MOVE X-NUM(1:12) TO N-MEPE X-PRI.
           IF L-PRID = 1 MOVE X-NUM(12:1) TO N-MEPD1
                         MOVE X-NUM(1:11) TO N-MEPE X-PRI.
           IF L-PRID = 2 MOVE X-NUM(11:2) TO N-MEPD2
                         MOVE X-NUM(1:10) TO N-MEPE X-PRI.
           IF L-PRID = 3 MOVE X-NUM(10:3) TO N-MEPD3
                         MOVE X-NUM(1:9)  TO N-MEPE X-PRI
           ELSE IF NB-DEC > 3 COMPUTE W-POS = 12 - NB-DEC + 1
                         MOVE X-NUM(W-POS:3) TO N-MEPD3
                         COMPUTE W-POS = 12 - NB-DEC
                         MOVE X-NUM(1:W-POS)  TO N-MEPE X-PRI.
       F-MEP-NUM-DEC.
           EXIT.
      *-------------------------------------------------------*
      *  Si zone numérique test si donnée calée à droite et   *
      *  justifiée à gauche par des 0                         *
      *-------------------------------------------------------*
       MEP-NUM.
           COMPUTE W-POS2 = W-POS + W-LON - 1
           IF ENR-TAR(W-POS2:1) NUMERIC
              MOVE ENR-TAR(W-POS2:1) TO W-N(Z)
              ADD -1 TO Z
              IF W-DEC = 1 ADD 1 TO NB-DEC.
           IF W-DEC = 1 AND ENR-TAR(W-POS2:1) = "." OR ","
              MOVE 2 TO W-DEC.
      *------------------------------------------------------------------------------*
      *  Si zone numérique > 12 et sans décimales: test si donnée calée à droite et  *
      *  justifiée à gauche par des 0                                                *
      *------------------------------------------------------------------------------*
       MEP-NUM15.
           COMPUTE W-POS2 = W-POS + W-LON - 1
           IF ENR-TAR(W-POS2:1) NUMERIC
              MOVE ENR-TAR(W-POS2:1) TO W-N15(Z)
              ADD -1 TO Z.
 
      *------------------------------------------------------------*
      *  Mise en place correcte de la désignation  en cas de ref.  *
      *  remplacée.                                                *
      *------------------------------------------------------------*
       MEP-DES-MANITOU.
           IF W-DES(1:15) = "REMPLACE PAR   "
              MOVE SPACES TO W-DES2
              MOVE "R. / " TO W-DES2
              MOVE W-DES(16:25) TO W-DES2(6:25)
              MOVE W-DES2 TO W-DES.
      *---------------------------------------------*
      *    Spécifique Tarif FENWICK Concessionnaire *
      *    Si pièce en Echange Standard             *
      *---------------------------------------------*
       MEP-REN-MIN.
           MOVE SPACES TO W-FWK
           COMPUTE A-MON ROUNDED =
                   W-PRI - (W-PRI * W-MIN / 100)
           STRING "ES=" DELIMITED BY SIZE
                  A-MON   DELIMITED BY SIZE
                  " E"   DELIMITED BY SIZE
                  INTO W-FWK.
      *--------------------------------------------------*
      * Mise en Place des zones Spécifiques si Paramétré *
      *--------------------------------------------------*
       MEP-SPE.
           MOVE SPACES TO W-SPE
           IF ((C-SPE-MDTA(I) = "C" OR "B" OR "T")  AND W-TRA = 1) OR
              ((T-SPE-MDTA(I) = "1" OR "2" OR "3" OR "4" OR "T")  
                AND W-TRA = 2)
              IF P-SPE-MDTA(I) NOT = ZERO
                 ADD PD-REF P-SPE-MDTA(I) GIVING W-POS
                 MOVE ENR-TAR(W-POS:L-SPE-MDTA(I)) TO W-SPE WT-SPE(I)
                 IF W-TRA = 1 MOVE C-SPE-MDTA(I) TO WP-SPE
                 ELSE         MOVE T-SPE-MDTA(I) TO WP-SPE
                 END-IF
                 IF WP-SPE = "B" OR "T"
                    PERFORM COMPACT-SPE THRU F-COMPACT-SPE
                    MOVE K-SPE TO W-SPE WT-SPE(I).
           IF T-SPE-MDTA(I) = "2" MOVE W-SPE TO W-SPE2        
           END-IF
           IF W-SPE NOT = SPACES
              IF W-OBS = SPACES MOVE W-SPE TO W-OBS
              ELSE STRING W-OBS DELIMITED BY "   "
                          " "   DELIMITED BY SIZE
                          W-SPE DELIMITED BY "  " INTO W-OBS.
      *-----------------------------------------------------------*
      *  Récupération de la zone spécifique relative à la maj     *
      *  du fichier articles interpretes (Spécial SOMTP, Tarif    *
      *  LIEBHERR)                                                *
      *-----------------------------------------------------------*
       MEP-SPE-INT.
           MOVE SPACES TO W-SPE-INT
           IF C-SPE-MDTA(I) = "I" OR T-SPE-MDTA(I) = "I"
              IF P-SPE-MDTA(I) NOT = ZERO
                 ADD PD-REF P-SPE-MDTA(I) GIVING W-POS
                 MOVE ENR-TAR(W-POS:L-SPE-MDTA(I)) TO W-SPE-INT.


      *---------------------------------------------------------------*
      * Si fichier tarif Frn avec champ de longueur variable et       *
      * délimiteurs de zones : Reformatage des champs                 *
      *---------------------------------------------------------------*
       MEP-CHAMP-VAR.
           MOVE SPACES TO WT-ZONE
           IF SEP-MDTA(2:1) = SPACES
              PERFORM MEP-2-SEP THRU F-MEP-2-SEP
              MOVE SEP-MDTA TO WT-SEP
              UNSTRING ENR-TAR DELIMITED BY ALL WT-SEP(1:1) INTO
              WT-ZON1 WT-ZON2 WT-ZON3 WT-ZON4 WT-ZON5 WT-ZON6 WT-ZON7
              WT-ZON8 WT-ZON9 WT-ZON10 WT-ZON11 WT-ZON12 WT-ZON13
              WT-ZON14 WT-ZON15 WT-ZON16 WT-ZON17 WT-ZON18 WT-ZON19
              WT-ZON20 WT-ZON21 WT-ZON22 WT-ZON23 WT-ZON24 WT-ZON25
              WT-ZON26 WT-ZON27 WT-ZON28 WT-ZON29 WT-ZON30 WT-ZON31
              WT-ZON32 WT-ZON33 WT-ZON34 WT-ZON35 WT-ZON36 WT-ZON37
              WT-ZON38 WT-ZON39 WT-ZON40 
           ELSE
              UNSTRING ENR-TAR DELIMITED BY ALL SEP-MDTA INTO
              WT-ZON1 WT-ZON2 WT-ZON3 WT-ZON4 WT-ZON5 WT-ZON6 WT-ZON7
              WT-ZON8 WT-ZON9 WT-ZON10 WT-ZON11 WT-ZON12 WT-ZON13
              WT-ZON14 WT-ZON15 WT-ZON16 WT-ZON17 WT-ZON18 WT-ZON19
              WT-ZON20 WT-ZON21 WT-ZON22 WT-ZON23 WT-ZON24 WT-ZON25
              WT-ZON26 WT-ZON27 WT-ZON28 WT-ZON29 WT-ZON30 WT-ZON31
              WT-ZON32 WT-ZON33 WT-ZON34 WT-ZON35 WT-ZON36 WT-ZON37
              WT-ZON38 WT-ZON39 WT-ZON40.
      *  Référence
           MOVE P-REF-MDTA  TO WT-POS
           MOVE L-REF-MDTA  TO WT-LON
           MOVE D-REF-MDTA TO WT-DEL
           PERFORM RECLAS-ZONE THRU F-RECLAS-ZONE
           MOVE WT-ZONT TO W-REF
      *  Si le Champ suivant fait partie la Référence
           IF L-REF-MDTA = 2
              ADD 1 P-REF-MDTA GIVING WT-POS
              PERFORM RECLAS-ZONE THRU F-RECLAS-ZONE
              MOVE W-REF   TO SV-ZONT
              MOVE SPACES  TO W-REF
              STRING SV-ZONT DELIMITED BY "  "
                     WT-ZONT DELIMITED BY "  "
                     INTO W-REF.
      *  Si le Champ suivant fait partie la Référence
           IF L-REF-MDTA = 3
              ADD 2 P-REF-MDTA GIVING WT-POS
              PERFORM RECLAS-ZONE THRU F-RECLAS-ZONE
              MOVE W-REF   TO SV-ZONT
              MOVE SPACES  TO W-REF
              STRING SV-ZONT DELIMITED BY "  "
                     WT-ZONT DELIMITED BY "  "
                     INTO W-REF.
      *   Si Référence suite
           MOVE P-REF2-MDTA TO WT-POS
           MOVE L-REF2-MDTA TO WT-LON
           MOVE D-REF2-MDTA TO WT-DEL
           PERFORM RECLAS-ZONE THRU F-RECLAS-ZONE
           MOVE WT-ZONT TO WT-REF2
           IF WT-REF2 NOT = SPACES
              MOVE SPACES TO WT-REF3
              STRING W-REF DELIMITED BY "  "
                     WT-REF2 DELIMITED BY "  "
                     INTO WT-REF3
              MOVE WT-REF3 TO W-REF.
           
           MOVE P-DES-MDTA TO WT-POS
           MOVE L-DES-MDTA TO WT-LON
           MOVE D-DES-MDTA TO WT-DEL
           PERFORM RECLAS-ZONE THRU F-RECLAS-ZONE
           MOVE WT-ZONT TO W-DES

           MOVE P-PRIE-MDTA TO WT-POS
           MOVE L-PRIE-MDTA TO WT-LON
           MOVE D-PRI-MDTA TO WT-DEL
           PERFORM RECLAS-ZONE THRU F-RECLAS-ZONE
           MOVE WT-ZONT TO WA-ZON
           MOVE L-PRID-MDTA TO WT-NB-DEC
           MOVE SPACES TO WT-VIRG1 WT-VIRG2.
           IF T-PRI-MDTA = "," OR "."
              MOVE T-PRI-MDTA TO WT-VIRG1 WT-VIRG2.
150115     IF T-PRI-MDTA = "C"                          | Prix par Condt et .=virgule décimale (JCB)
150115        MOVE "." TO WT-VIRG1 WT-VIRG2.
           PERFORM MEP-ZON-NUM THRU F-MEP-ZON-NUM
           MOVE WN-NUM TO W-PRI
           MOVE SPACES TO WT-VIRG1 WT-VIRG2.

           MOVE P-PRIE2-MDTA TO WT-POS
           MOVE L-PRIE2-MDTA TO WT-LON
           MOVE D-PRI2-MDTA  TO WT-DEL
           PERFORM RECLAS-ZONE THRU F-RECLAS-ZONE
           MOVE WT-ZONT TO WA-ZON
           MOVE L-PRID2-MDTA TO WT-NB-DEC
090315     MOVE SPACES TO WT-VIRG1 WT-VIRG2.
           IF T-PRI-MDTA = "," OR "."
              MOVE T-PRI-MDTA TO WT-VIRG1 WT-VIRG2.
           IF T-PRI-MDTA = "C"                          | Prix par Condt et .=virgule décimale (JCB)
090315        MOVE "." TO WT-VIRG1 WT-VIRG2.
           PERFORM MEP-ZON-NUM THRU F-MEP-ZON-NUM
           MOVE WN-NUM TO W2-PRI

           MOVE P-REM-MDTA TO WT-POS
           MOVE L-REM-MDTA TO WT-LON
           MOVE D-REM-MDTA TO WT-DEL
           PERFORM RECLAS-ZONE THRU F-RECLAS-ZONE
           MOVE WT-ZONT TO W-REM

           MOVE P-UAC-MDTA TO WT-POS
           MOVE L-UAC-MDTA TO WT-LON
           MOVE D-UAC-MDTA TO WT-DEL
           PERFORM RECLAS-ZONE THRU F-RECLAS-ZONE
           MOVE WT-ZONT TO WA-ZON
           MOVE ZERO TO WT-NB-DEC
           PERFORM MEP-ZON-NUM THRU F-MEP-ZON-NUM
           MOVE WN-NUM TO W-UAC

           MOVE P-POIE-MDTA TO WT-POS
           MOVE L-POIE-MDTA TO WT-LON
           MOVE D-POI-MDTA TO WT-DEL
           PERFORM RECLAS-ZONE THRU F-RECLAS-ZONE
           MOVE WT-ZONT TO WA-ZON
           MOVE L-POID-MDTA TO WT-NB-DEC
           PERFORM MEP-ZON-NUM THRU F-MEP-ZON-NUM
           MOVE WN-NUM TO W-POI

           MOVE P-REM2-MDTA TO WT-POS
           MOVE L-REM2-MDTA TO WT-LON
           MOVE D-REM2-MDTA TO WT-DEL
           PERFORM RECLAS-ZONE THRU F-RECLAS-ZONE
           MOVE WT-ZONT TO WT-REM2
           IF WT-REM2 NOT = SPACES
              MOVE SPACES TO WT-REM3
              STRING W-REM DELIMITED BY " "
                     WT-REM2 DELIMITED BY " "
                     INTO WT-REM3
              MOVE WT-REM3 TO W-REM.
      *-- Prix 3
           MOVE P-PRIE3-MDTA TO WT-POS
           MOVE L-PRIE3-MDTA TO WT-LON
           MOVE D-PRI3-MDTA  TO WT-DEL
           PERFORM RECLAS-ZONE THRU F-RECLAS-ZONE
           MOVE WT-ZONT TO WA-ZON
           MOVE L-PRID3-MDTA TO WT-NB-DEC
090315     MOVE SPACES TO WT-VIRG1 WT-VIRG2.
           IF T-PRI-MDTA = "," OR "."
              MOVE T-PRI-MDTA TO WT-VIRG1 WT-VIRG2.
           IF T-PRI-MDTA = "C"                          
090315        MOVE "." TO WT-VIRG1 WT-VIRG2.
           PERFORM MEP-ZON-NUM THRU F-MEP-ZON-NUM
           MOVE WN-NUM TO W3-PRI

           MOVE P-GCOD-MDTA TO WT-POS
           MOVE L-GCOD-MDTA TO WT-LON
           MOVE D-GCOD-MDTA TO WT-DEL
           PERFORM RECLAS-ZONE THRU F-RECLAS-ZONE
           MOVE WT-ZONT TO WA-ZON
           MOVE ZERO TO WT-NB-DEC
           PERFORM MEP-ZON-NUM THRU F-MEP-ZON-NUM
           MOVE W-NUM15 TO W-GCOD

           MOVE P-GRA-MDTA TO WT-POS
           MOVE L-GRA-MDTA TO WT-LON
           MOVE D-GRA-MDTA TO WT-DEL
           PERFORM RECLAS-ZONE THRU F-RECLAS-ZONE
           MOVE WT-ZONT TO F-GRA F-GRA2 
          
           MOVE P-MAR-MDTA TO WT-POS
           MOVE L-MAR-MDTA TO WT-LON
           MOVE D-MAR-MDTA TO WT-DEL
           PERFORM RECLAS-ZONE THRU F-RECLAS-ZONE
           MOVE WT-ZONT TO W-MAR

           MOVE P-TVA-MDTA TO WT-POS
           MOVE L-TVA-MDTA TO WT-LON
           MOVE D-TVA-MDTA TO WT-DEL
           PERFORM RECLAS-ZONE THRU F-RECLAS-ZONE
           MOVE WT-ZONT TO W-TVA

           MOVE P-PAY-MDTA TO WT-POS
           MOVE L-PAY-MDTA TO WT-LON
           MOVE D-PAY-MDTA TO WT-DEL
           PERFORM RECLAS-ZONE THRU F-RECLAS-ZONE
           MOVE WT-ZONT TO W-PAY

           MOVE P-RFI-MDTA TO WT-POS
           MOVE L-RFI-MDTA TO WT-LON
           MOVE D-RFI-MDTA TO WT-DEL
           PERFORM RECLAS-ZONE THRU F-RECLAS-ZONE
           MOVE WT-ZONT TO W-RFI
120115*-- Coefficient Multiplicateur
           MOVE P-COEE-MDTA TO WT-POS
           MOVE L-COEE-MDTA TO WT-LON
           MOVE D-COE-MDTA  TO WT-DEL
           PERFORM RECLAS-ZONE THRU F-RECLAS-ZONE
           MOVE WT-ZONT TO WA-ZON
           MOVE L-COED-MDTA TO WT-NB-DEC
           PERFORM MEP-ZON-NUM THRU F-MEP-ZON-NUM
           MOVE WN-NUM TO W-COE

           MOVE SPACES TO WT-SPE(1) WT-SPE(2) WT-SPE(3)
                          WT-SPE(4) WT-SPE(5)
           IF N-SPE-MDTA(1) NOT = SPACES
              MOVE P-SPE-MDTA(1) TO WT-POS
              MOVE L-SPE-MDTA(1) TO WT-LON
              MOVE D-SPE-MDTA(1) TO WT-DEL
              PERFORM RECLAS-ZONE THRU F-RECLAS-ZONE
              MOVE WT-ZONT TO WT-SPE(1).

           IF N-SPE-MDTA(2) NOT = SPACES
              MOVE P-SPE-MDTA(2) TO WT-POS
              MOVE L-SPE-MDTA(2) TO WT-LON
              MOVE D-SPE-MDTA(2) TO WT-DEL
              PERFORM RECLAS-ZONE THRU F-RECLAS-ZONE
              MOVE WT-ZONT TO WT-SPE(2).

           IF N-SPE-MDTA(3) NOT = SPACES
              MOVE P-SPE-MDTA(3) TO WT-POS
              MOVE L-SPE-MDTA(3) TO WT-LON
              MOVE D-SPE-MDTA(3) TO WT-DEL
              PERFORM RECLAS-ZONE THRU F-RECLAS-ZONE
              MOVE WT-ZONT TO WT-SPE(3).

           IF N-SPE-MDTA(4) NOT = SPACES
              MOVE P-SPE-MDTA(4) TO WT-POS
              MOVE L-SPE-MDTA(4) TO WT-LON
              MOVE D-SPE-MDTA(4) TO WT-DEL
              PERFORM RECLAS-ZONE THRU F-RECLAS-ZONE
              MOVE WT-ZONT TO WT-SPE(4).

           IF N-SPE-MDTA(5) NOT = SPACES
              MOVE P-SPE-MDTA(5) TO WT-POS
              MOVE L-SPE-MDTA(5) TO WT-LON
              MOVE D-SPE-MDTA(5) TO WT-DEL
              PERFORM RECLAS-ZONE THRU F-RECLAS-ZONE
              MOVE WT-ZONT TO WT-SPE(5).
           IF MAJ-SPE = 1
              PERFORM MEP-OBS-VAR VARYING WT-I FROM 1 BY 1
              UNTIL WT-I > 5 OR WT-SPE(WT-I) = SPACES.

      *--- Si Code Spécial = "I" (mise à jour article interprète):
      *    Récupération de la zone spécifique relative à la maj
      *    du fichier articles Interprète.
           IF MAJ-SPE-INT = 1
              PERFORM VARYING WT-I FROM 1 BY 1 UNTIL WT-I > 5 OR
                 P-SPE-MDTA(WT-I) = ZERO
                 IF T-SPE-MDTA(WT-I) = "I" OR C-SPE-MDTA(WT-I) = "I"
                    MOVE WT-SPE(WT-I) TO W-SPE-INT
                    MOVE 6 TO WT-I
                 END-IF
              END-PERFORM.
      *  Référence Remplaçante
           MOVE P-RER-MDTA TO WT-POS
           MOVE L-RER-MDTA TO WT-LON
           MOVE D-RER-MDTA TO WT-DEL
           PERFORM RECLAS-ZONE THRU F-RECLAS-ZONE
           MOVE WT-ZONT TO W-RER
      *  Référence Neuve
           MOVE P-REN-MDTA TO WT-POS
           MOVE L-REN-MDTA TO WT-LON
           MOVE D-REN-MDTA TO WT-DEL
           PERFORM RECLAS-ZONE THRU F-RECLAS-ZONE
           MOVE WT-ZONT TO W-REN.
       F-MEP-CHAMP-VAR.
           EXIT.

       RECLAS-ZONE.
           MOVE SPACES TO WT-ZONT
           IF WT-POS = 0 GO F-RECLAS-ZONE.
           IF WT-POS = 1 MOVE WT-ZON1 TO WT-ZONT
           ELSE IF WT-POS = 2  MOVE WT-ZON2 TO WT-ZONT
           ELSE IF WT-POS = 3  MOVE WT-ZON3 TO WT-ZONT
           ELSE IF WT-POS = 4  MOVE WT-ZON4 TO WT-ZONT
           ELSE IF WT-POS = 5  MOVE WT-ZON5 TO WT-ZONT
           ELSE IF WT-POS = 6  MOVE WT-ZON6 TO WT-ZONT
           ELSE IF WT-POS = 7  MOVE WT-ZON7 TO WT-ZONT
           ELSE IF WT-POS = 8  MOVE WT-ZON8 TO WT-ZONT
           ELSE IF WT-POS = 9  MOVE WT-ZON9 TO WT-ZONT
           ELSE IF WT-POS = 10 MOVE WT-ZON10 TO WT-ZONT
           ELSE IF WT-POS = 11 MOVE WT-ZON11 TO WT-ZONT
           ELSE IF WT-POS = 12 MOVE WT-ZON12 TO WT-ZONT
           ELSE IF WT-POS = 13 MOVE WT-ZON13 TO WT-ZONT
           ELSE IF WT-POS = 14 MOVE WT-ZON14 TO WT-ZONT
           ELSE IF WT-POS = 15 MOVE WT-ZON15 TO WT-ZONT
           ELSE IF WT-POS = 16 MOVE WT-ZON16 TO WT-ZONT
           ELSE IF WT-POS = 17 MOVE WT-ZON17 TO WT-ZONT
           ELSE IF WT-POS = 18 MOVE WT-ZON18 TO WT-ZONT
           ELSE IF WT-POS = 19 MOVE WT-ZON19 TO WT-ZONT
           ELSE IF WT-POS = 20 MOVE WT-ZON20 TO WT-ZONT
           ELSE IF WT-POS = 21 MOVE WT-ZON21 TO WT-ZONT
           ELSE IF WT-POS = 22 MOVE WT-ZON22 TO WT-ZONT
           ELSE IF WT-POS = 23 MOVE WT-ZON23 TO WT-ZONT
           ELSE IF WT-POS = 24 MOVE WT-ZON24 TO WT-ZONT
           ELSE IF WT-POS = 25 MOVE WT-ZON25 TO WT-ZONT
           ELSE IF WT-POS = 26 MOVE WT-ZON26 TO WT-ZONT
           ELSE IF WT-POS = 27 MOVE WT-ZON27 TO WT-ZONT

           ELSE IF WT-POS = 28 MOVE WT-ZON28 TO WT-ZONT
           ELSE IF WT-POS = 29 MOVE WT-ZON29 TO WT-ZONT
           ELSE IF WT-POS = 30 MOVE WT-ZON30 TO WT-ZONT
           ELSE IF WT-POS = 31 MOVE WT-ZON31 TO WT-ZONT
           ELSE IF WT-POS = 32 MOVE WT-ZON32 TO WT-ZONT
           ELSE IF WT-POS = 33 MOVE WT-ZON33 TO WT-ZONT
           ELSE IF WT-POS = 34 MOVE WT-ZON34 TO WT-ZONT
           ELSE IF WT-POS = 35 MOVE WT-ZON35 TO WT-ZONT
           ELSE IF WT-POS = 36 MOVE WT-ZON36 TO WT-ZONT
           ELSE IF WT-POS = 37 MOVE WT-ZON37 TO WT-ZONT
           ELSE IF WT-POS = 38 MOVE WT-ZON38 TO WT-ZONT
           ELSE IF WT-POS = 39 MOVE WT-ZON39 TO WT-ZONT
           ELSE IF WT-POS = 40 MOVE WT-ZON40 TO WT-ZONT.
      *--- Si la zone est encadrée d'un caract. spécial du type: "xxx"
      *    ===>  suppression du délimiteur
           IF WT-DEL = 1
              MOVE WT-ZONT TO WT-TEST
              MOVE ZERO    TO WT-IND-DELIMIT
              IF WT-ZONT(1:1) = DEL-MDTA
                 MOVE WT-TEST(2:29) TO WT-ZONT
                 MOVE 1 TO WT-IND-DELIMIT
              END-IF
              IF WT-IND-DELIMIT = 1
                 MOVE WT-ZONT TO WT-TEST
                 PERFORM VARYING WT-Z FROM 30 BY -1 UNTIL WT-Z < 1
                    IF WT-TEST(WT-Z:1) = DEL-MDTA
                       SUBTRACT 1 FROM WT-Z
                       MOVE WT-TEST(1:WT-Z) TO WT-ZONT
                       MOVE 1 TO WT-Z
                    END-IF
                 END-PERFORM.
       F-RECLAS-ZONE.
           EXIT.
      *--------------------------------------------------------------*
      * Si 2 séparateurs consécutifs : Ajout d'un blanc entre les 2  *
      * (sinon unstring décale les zones) (Même avec acucorp)                           *
      *--------------------------------------------------------------*
       MEP-2-SEP.
           MOVE SEP-MDTA TO WT-SEP(1:1)
           MOVE SEP-MDTA TO WT-SEP(2:1).
       BCL-MEP2-SEP.
           MOVE SPACES TO WT-ENR
           MOVE ZERO TO WT-I
           INSPECT ENR-TAR TALLYING WT-I FOR ALL WT-SEP
           IF WT-I = ZERO GO F-MEP-2-SEP.
           MOVE ZERO TO WT-I
           INSPECT ENR-TAR TALLYING WT-I FOR CHARACTERS BEFORE INITIAL
           WT-SEP
           ADD 1 TO WT-I
           MOVE ENR-TAR(1:WT-I) TO WT-ENR
           ADD 1 TO WT-I
           ADD 1 WT-I GIVING WT-J
           COMPUTE WT-Z = (1500 - WT-I)
           MOVE ENR-TAR(WT-I:WT-Z) TO WT-ENR(WT-J:WT-Z).
           MOVE WT-ENR TO ENR-TAR
           GO BCL-MEP2-SEP.
       F-MEP-2-SEP.
           EXIT.
      *--------------------------------------------------*
      * Mise en place zone numérique: Cadarge à droite + *
      * calage décimale                                  *
      *--------------------------------------------------*
       MEP-ZON-NUM.
           MOVE ZERO TO WT-NUM WT-NB-CAR
           IF WT-VIRG1 = SPACES
              MOVE "," TO WT-VIRG1 MOVE "." TO WT-VIRG2.
           MOVE 17 TO WT-I WT-J.
       BCL-ZON-NUM.
           IF WT-I < 2 OR WT-J < 2 GO F-MEP-ZON-NUM.
           ADD -1 TO WT-I
           IF WA-ZON(WT-I:1) = SPACES GO BCL-ZON-NUM.
           IF WA-ZON(WT-I:1) = WT-VIRG1 OR WT-VIRG2
              MOVE WT-NB-CAR TO WT-NB-DEC
              GO BCL-ZON-NUM.
           IF WA-ZON(WT-I:1) NOT NUMERIC GO BCL-ZON-NUM.
           ADD -1 TO WT-J
           MOVE WA-ZON(WT-I:1) TO WT-N(WT-J).
           ADD 1 TO WT-NB-CAR
           GO BCL-ZON-NUM.
       F-MEP-ZON-NUM.
           IF WT-NB-DEC = ZERO MOVE WT-NUM TO WN-NUM W-NUM15
           ELSE COMPUTE WT-I = 16 - WT-NB-DEC + 1


                MOVE WT-NUM(WT-I:WT-NB-DEC) TO WN-DEC(1:3)
                ADD -1 TO WT-I
                MOVE WT-NUM(1:WT-I) TO WN-ENT.
      *
       MEP-OBS-VAR.
060715     IF (((C-SPE-MDTA(WT-I) = "C" OR "B" OR "T" OR "1" OR "2" )
                 AND W-TRA = 1) OR
060715         ((T-SPE-MDTA(WT-I) = "1" OR "2" OR "3" OR "4" OR "T" )
                 AND W-TRA = 2)) AND
              WT-SPE(WT-I) NOT = SPACES
              MOVE WT-SPE(WT-I) TO W-SPE
              MOVE WT-I TO I
              IF W-TRA = 1 MOVE C-SPE-MDTA(I) TO WP-SPE
              ELSE         MOVE T-SPE-MDTA(I) TO WP-SPE
              END-IF
              PERFORM COMPACT-SPE THRU F-COMPACT-SPE
              MOVE K-SPE TO WT-SPE(WT-I)
           ELSE MOVE WT-SPE(WT-I) TO K-SPE.
           IF T-SPE-MDTA(WT-I) = "2" MOVE W-SPE TO W-SPE2        
           END-IF
           IF C-SPE-MDTA(WT-I) = "1" MOVE W-SPE TO W-OBS        
           END-IF
           IF C-SPE-MDTA(WT-I) = "2" MOVE W-SPE TO W-SPE2        
           END-IF

           IF W-OBS = SPACES MOVE K-SPE TO W-OBS  
           ELSE IF 
              (W-TRA = 2 AND (T-SPE-MDTA(WT-I) NOT = "2" AND NOT = "1"))
              OR
              (W-TRA = 1 AND C-SPE-MDTA(WT-I) = "C" )
                STRING W-OBS DELIMITED BY "   "
                       " "   DELIMITED BY SIZE
                       K-SPE DELIMITED BY "   " INTO W-OBS.
      *---------------------------------------------------*
      *  Suppresion des Blancs sur la Zone Observation    *
      *---------------------------------------------------*
       COMPACT-SPE.
           MOVE SPACES TO K-SPE
           MOVE 1 TO Z YY.
       BCL-COMPACT-SPE.
           IF Z > 20 OR YY > 20 GO F-COMPACT-SPE.
           IF WP-SPE = "T"
              IF W-SPE(Z:1) = SPACES AND K-SPE = SPACES
                 ADD 1 TO Z GO BCL-COMPACT-SPE.
           IF WP-SPE = "B"
              IF W-SPE(Z:1) = SPACES
                 ADD 1 TO Z GO BCL-COMPACT-SPE.
           MOVE W-SPE(Z:1) TO K-SPE(YY:1).
           ADD 1 TO Z YY
           GO BCL-COMPACT-SPE.
       F-COMPACT-SPE.
           EXIT.
      *--------------------------------------------------------*
      *  Spécifique NEW HOLLAND:                               *
      * Si COMMODITY CODE = AO AS AP BB FG QB QC  changement   *
      * du code remise                                         *
      *--------------------------------------------------------*
       SPECIFIC-NH.
010106*     IF W-OBS(4:2) = "AO" OR "AS" OR "AP"
      *        IF W-REM = "5" MOVE "F" TO W-REM.
      *     IF W-OBS(4:2) = "BB" AND W-REM = "4" MOVE "C" TO W-REM.


      *     IF W-OBS(4:2) = "FG" AND W-REM = "5" MOVE "R" TO W-REM.
      *     IF W-OBS(4:2) = "QB" AND W-REM = "9" MOVE "S" TO W-REM.
010106*     IF W-OBS(4:2) = "QC" AND W-REM = "8" MOVE "T" TO W-REM.
       F-SPECIFIC-NH.
           EXIT.


       
      *----------------------------------------------*
      *  Extraction dans MXART des articles du Frn   *
      *----------------------------------------------*
       EXTRACT-ART.
           MOVE "TRI-MTF" TO WASS-TRI
           copy "../../mx/copy/assign-fictmp.cbl" replacing 
              ==FICTMP==   by ==TRI==
              =='FICTMP'== by ==TRI==.
           .   
           MOVE ZERO   TO W-NBR
           MOVE W-FOU  TO FOU-MART
           MOVE SPACES TO REF-MART
           START MXART KEY NOT < CLE3-MART INVALID KEY GO TO 
                 START-MXARTMA.
       LECT-MXART.
           READ MXART NEXT AT END GO TO START-MXARTMA.
           PERFORM STAT.
           IF CANN-MART = 1 GO LECT-MXART.
           IF FOU-MART NOT = W-FOU GO TO START-MXARTMA.
           INITIALIZE ENR-TRI
           MOVE 1        TO FIC-TRI
           MOVE COD-MART TO ART-TRI
           IF W-MAJ-ICO = 1
              IF W-MAJ-ICO0 = 0 AND ICO-MART = 0 GO LECT-MXART
              END-IF
              IF W-MAJ-ICO1 = 0 AND ICO-MART = 1 GO LECT-MXART
              END-IF
              IF W-MAJ-ICO2 = 0 AND (ICO-MART = 2 OR 9) GO LECT-MXART
              END-IF
           END-IF.
           MOVE REF-MART TO T-REF
           IF T-REF-MDTA = "="  OR W-REF-IDEM = 1         | Référence exploitée telle quel (sans suppression des caract Spéciaux) 
              MOVE REF-MART TO K-REF
           ELSE
              PERFORM MEP-REF THRU F-MEP-REF
           END-IF
           PERFORM WRIT-TRI
           ADD 1 TO W-NBR
           IF W-NBR < 100 OR W-NBR(5:2) = "00"
              PERFORM AFF-EXT-NBR
           END-IF
           GO TO LECT-MXART.
      *
       START-MXARTMA.

       F-EXTRACT-ART.
           MOVE ZERO TO W-NBR-RFC IND-GRI
           PERFORM AFF-EXT-NBR
           .

      *  Supression des caractères spéciaux / référence
       MEP-REF.
           MOVE 1 TO I J Z
           MOVE SPACES TO K-REF K-REF2.
       BCL-MEP-REF.
           IF I > 21 OR J > 21 GO TO F-MEP-REF.
           IF T-REF(I:1) = SPACES OR "-" OR "." OR "/"
                ADD 1 TO I
                GO TO BCL-MEP-REF.
290114     IF CLI-PALM = 121377 AND LOG-MDTA = 32 AND MOD-MDTA = 65     | Spécial Pottinger pour Lacan
              IF T-REF(I:1) = "+" 
                 ADD 1 TO I
                 GO TO BCL-MEP-REF.
           MOVE T-REF(I:1) TO K-R(J)
           ADD 1 TO J.
           IF T-REF(I:1) = "0" AND K-REF2 = SPACES
              ADD 1 TO I
              GO BCL-MEP-REF.
           MOVE T-REF(I:1) TO K-R2(Z)
           ADD 1 TO Z
           ADD 1 TO I.
           GO TO BCL-MEP-REF.
       F-MEP-REF.
           EXIT.

       WRIT-TRI.
           MOVE K-REF  TO REF-TRI.
           MOVE K-REF2 TO REF2-TRI.
           WRITE ENR-TRI INVALID
             IF FIC-TRI = 1
               MOVE "Problème Ecriture TRI No" TO ACU-MSG-1
               MOVE CLE1-TRI TO ACU-MSG-2 PERFORM ERREUR
             ELSE
               STRING "Référence" DELIMITED BY SIZE 
                      " " delimited by size
                      REF-TRI DELIMITED BY "  "
                      " présente 2 fois en multi-appro!" 
                INTO ACU-MSG-1
                PERFORM MSG-INFO
             END-IF
           END-WRITE
           PERFORM STAT.

       REW-TRI.
           REWRITE ENR-TRI INVALID
               MOVE "Problème Réécriture TRI No" TO ACU-MSG-1
               MOVE CLE1-TRI TO ACU-MSG-2 PERFORM ERREUR
           END-REWRITE
           PERFORM STAT.

      *-----------------------------------------------*
      *    Mise à jour du tarif Aricles               *
      *-----------------------------------------------*
       MAJ-MXART.            
           MOVE W-REF TO T-REF
           IF T-REF-MDTA = "=" OR W-REF-IDEM = 1      | Référence exploitée telle quel (sans suppression des caract Spéciaux) 
              MOVE W-REF TO K-REF
           ELSE
              PERFORM MEP-REF THRU F-MEP-REF
           END-IF
           MOVE K-REF TO REF-TRI.
           READ TRI KEY IS CLE2-TRI INVALID KEY
                IF T-REF-MDTA = "0"
      *----- Lecture sur la ref.de ART sans les zéros non significatifs
                   MOVE K-REF TO REF2-TRI
                   READ TRI KEY IS CLE3-TRI INVALID KEY
      *----- Lecture sur la ref.'Disquette' sans les zéros non significatifs
                      MOVE K-REF2 TO REF-TRI
                      READ TRI KEY IS CLE2-TRI INVALID KEY
      *----- Lecture sur la ref.'Disquette' sans les zéros et Ref de ART sans les 0 non significatif
                          MOVE K-REF2 TO REF2-TRI
                          READ TRI KEY IS CLE3-TRI INVALID KEY
                                GO TO F-MAJ-MXART
                          END-READ
                      END-READ
                   END-READ
                ELSE GO F-MAJ-MXART
                END-IF
           END-READ.
           PERFORM STAT.

           IF FIC-TRI  = 2 
              IF (POP-MFOU <> 6 AND W-PRI = ZERO) OR                | Si prix = Zéro pas de Maj du tarif 
130218           (POP-MFOU = 6  AND W2-PRI = ZERO AND W-PRI = ZERO)
                  MOVE 9 TO MAJ-TRI
                  PERFORM REW-TRI
                  GO F-MAJ-MXART
              END-IF
              GO F-MAJ-MXART.
       READ-MXART.
           MOVE ART-TRI TO COD-MART
           READ MXART LOCK INVALID 
               MOVE "Problème Lecture ART No " TO ACU-MSG-1
               MOVE COD-MART TO ACU-MSG-2 PERFORM ERREUR.
           PERFORM STAT.
           IF CANN-MART = 1 GO F-MAJ-MXART.
           IF IND-STAT = 1 GO READ-MXART.
           MOVE ENR-MART TO SV-ENR-MART

      *-- Si prix = Zéro pas de Maj du tarif
           IF W-PRI = ZERO AND W-SANS-MAJ-TAR = 0                                   
              IF W-REEL = 1
                 IF W-MAJ-FSA = 1 AND F-GRA2 NOT = SPACES
                    PERFORM MAJ-FICHIERS THRU F-MAJ-FICHIERS
                 END-IF
              END-IF
              MOVE 9 TO MAJ-TRI
              PERFORM REW-TRI
              GO F-MAJ-MXART.

           MOVE GRA-MART TO GRA-MFAM
           MOVE FAM-MART TO FAM-MFAM
           READ MXFAMART INVALID
              MOVE "Problème Lecture FAMART" TO ACU-MSG-1
              MOVE CLE1-MFAM TO ACU-MSG-2 PERFORM ERREUR.
           PERFORM STAT

           IF DEV-MFOU NOT = SPACES AND DEV-MFOU NOT = DEV-MPAR
                MOVE PDE-MART TO SV-PTF
           ELSE MOVE PTF-MART TO SV-PTF.
           MOVE PVT-MART TO SV-PVT
           MOVE TTC-MART TO SV-TTC
           MOVE CRF-MART TO SV-CRF
060614     IF W-SANS-MAJ-TAR = 0
              PERFORM MAJ-TARIF THRU F-MAJ-TARIF.
           IF W-IDEM-PVT = 1 AND IND-MAJ-PRIX = 0
              PERFORM REW-TRI
              GO F-MAJ-MXART.

      *-- Mise à jour désignation si Paramétré
           IF T-DES-MDTA = "D"
              MOVE W-DES(1:40)  TO DES-MART
              MOVE W-DES(41:20) TO DE2-MART.

           IF W-POI NOT = ZERO PERFORM MAJ-POID.
           IF W-UAC NOT = ZERO MOVE W-UAC TO UAC-MART.
           IF W-MAJ-CRC = 1 PERFORM MAJ-CRC.
           IF W-MAJ-GCOD = 1 AND REF-MFAM = 1
              IF W-GCOD NOT = ZERO MOVE W-GCOD TO GCOD-MART.
      
      *----  Mise à jour Code famille et sous-famille article si paramétré et demandé *

      *----  Mise à jour de la marque
           IF W-MAJ-MAR = 1 AND W-MAR NOT = MAR-MART AND 
              W-MAR <> MAR-MART
              MOVE W-MAR TO COD-MMAR
              READ MXMARQUE NOT INVALID
                  PERFORM STAT
                  MOVE W-MAR TO MAR-MART.
      *----  Mise à jour du N° TVA CEE
           IF W-MAJ-TVA = 1 
              IF W-TVA NOT = SPACES MOVE W-TVA TO TVA-MART.

      *----  Mise à jour de la référence interne
           IF W-MAJ-RFC = 1 AND P-RFI-MDTA NOT = ZERO  
              IF W-RFI NOT = SPACES MOVE W-RFI TO RFI-MART.

      *---- Maj Info Spécifiques Articles si paramétré dans MXDESTAR (T-SPE-DTA = "S" OR "1" OR "2")
           IF W-REEL = 1
              IF MAJ-SPE = 1 AND WT-SPE(IMAJ-SPE) NOT = SPACES
                 MOVE 1 TO I-SPE
091116           MOVE IMAJ-SPE TO II-SPE
      **           PERFORM MAJ-SPE-MART THRU F-MAJ-SPE-MART
              END-IF
              IF MAJ-SPE2 = 1 AND WT-SPE(IMAJ-SPE2) NOT = SPACES
                 MOVE 2 TO I-SPE
091116           MOVE IMAJ-SPE2 TO II-SPE
      **           PERFORM MAJ-SPE-MART THRU F-MAJ-SPE-MART
              END-IF
040515        IF MAJ-SPE3 = 1 AND WT-SPE(IMAJ-SPE3) NOT = SPACES AND
                 W-MAJ-ZSPG1 = 1
                 MOVE 3 TO I-SPE
091116           MOVE IMAJ-SPE3 TO II-SPE
      **           PERFORM MAJ-SPE-GEN-MART THRU F-MAJ-SPE-GEN-MART
              END-IF
              IF MAJ-SPE4 = 1 AND WT-SPE(IMAJ-SPE4) NOT = SPACES AND
                 W-MAJ-ZSPG2 = 1
                 MOVE 4 TO I-SPE
091116           MOVE IMAJ-SPE4 TO II-SPE
      **           PERFORM MAJ-SPE-GEN-MART THRU F-MAJ-SPE-GEN-MART
040515        END-IF
           END-IF.

      *--- Maj fichiers
           IF W-REEL = 1
              PERFORM MAJ-FICHIERS THRU F-MAJ-FICHIERS
           END-IF

      *---------------------------------------------------------------*
      *     Traitement Spécifique FENWICK Conces.: Maj Référencement  *
      *     RENAULT et PEUGEOT                                        *
      *     (T-SPE-DTA = "T")                                         *
      *---------------------------------------------------------------*
      **     IF W-REEL = 1 AND LOG-MDTA = 26 AND MOD-MDTA = 73
      **        IF W-MAJ-RFC = 1 AND WT-SPE(1) NOT = SPACES
      **           PERFORM MAJ-REF-REN THRU F-MAJ-REF-REN
      **        END-IF
      **        IF W-MAJ-RFC = 1 AND WT-SPE(2) NOT = SPACES
      **           PERFORM MAJ-REF-PEU THRU F-MAJ-REF-PEU
      **        END-IF.
      
      *---- Edition Prix en Hausse ou en Baisse si selectionné
           IF W-EDI-HAU = 1 OR W-EDI-BAI = 1
              PERFORM EDIT-HB THRU F-EDIT-HB.

           ADD 1 TO W-NBR
           PERFORM AFF-MAJ-NBR-ART

           IF W-EDI-NACT = 1 OR W-MAJ-ANO = 1
100108        MOVE 1 TO MAJ-TRI                | Maj tarif effectuée
              PERFORM REW-TRI
           END-IF.
       F-MAJ-MXART.
           EXIT.

      *-- Actualisation ART - OLDTAR - EVESVC - MXTRADUC
       MAJ-FICHIERS.
           IF SV-ENR-MART NOT = ENR-MART
              MOVE FUNCTION CURRENT-DATE TO DATHEU-SYS-M
              MOVE DAT-SYS-M TO DMOD-MART
              MOVE HEU-SYS-M TO HHMOD-MART
              MOVE MIN-SYS-M TO MMMOD-MART
              MOVE IDE-PALM  TO IMOD-MART
           END-IF
           REWRITE ENR-MART INVALID 
              MOVE "Problème Réécriture ART" TO ACU-MSG-1
              MOVE COD-MART TO ACU-MSG-2 PERFORM ERREUR
           NOT INVALID
              PERFORM STAT
           END-REWRITE

300518*     PERFORM Maj-Art-Autres-Soc    | déplacé pour plus de rapidité
231111*     PERFORM Maj-Artma-Autres-Soc

           .
       F-MAJ-FICHIERS.
           EXIT.


      *  Mise à jour des prix / MXART
       MAJ-TARIF.
           MOVE 1 TO IND-MAJ-PRIX
070619     IF W-PTTC = 1                   | Si prix communiqués en TTC
              IF TVA-MFAM <> 0
                COMPUTE WT-PRI = W-PRI / (1 + TVA-MPAR(TVA-MFAM) / 100)
                MOVE WT-PRI TO W-PRI
                COMPUTE WT-PRI = W2-PRI / (1 + TVA-MPAR(TVA-MFAM) / 100)
                MOVE WT-PRI TO W2-PRI
                COMPUTE WT-PRI = W3-PRI / (1 + TVA-MPAR(TVA-MFAM) / 100)
                MOVE WT-PRI TO W3-PRI
              END-IF
070619     END-IF.

           MOVE PAC-MART TO SV-PAC
           IF DEV-MFOU = SPACES OR DEV-MFOU = DEV-MPAR
                MOVE W-PRI   TO PTF-MART
                MOVE SPACES  TO DEV-MART
                MOVE ZERO    TO PDE-MART
           ELSE MOVE DEV-MFOU TO DEV-MART
                MOVE CRS-MFOU TO WCE-CRS
                MOVE W-PRI    TO WCE-MAC PDE-MART
                PERFORM INVERSMX-D-I
                MOVE WCE-MCO TO PTF-MART
           END-IF.
           IF POL-MART = 6
               IF W2-PRI NOT = ZERO MOVE W2-PRI TO PAT-MART.

           IF PTF-MART NOT = PVT-MART MOVE ZERO TO IND-PVT
           ELSE                       MOVE 1    TO IND-PVT.

120115     IF W-COE <> ZERO                   | Si Coef. renseigné dans le fichier tarif
120115        MOVE W-COE TO COE-MART
           END-IF               
      **        IF INV-MXREMFOU = ZERO          | Si Coef. renseigné en TRF : MAJ de COE-MRFO ---> COE-MART
      **           PERFORM RECH-COE VARYING
      **           I FROM 1 BY 1 UNTIL I > 200 OR
      **           (CRE-MRFO(I) = SPACES AND COE-MRFO(I) = ZERO).

           IF POL-MART = 1
              PERFORM CAL-REM
              COMPUTE PAC-MART ROUNDED = (PTF-MART - M-REM)
              PERFORM CAL-FUA
091007        IF W3-PRI NOT = ZERO AND W-IDEM-PVT = 0
091007           MOVE W3-PRI TO PVT-MART
091007        END-IF 

              IF W-IDEM-PVT = 1 OR W3-PRI NOT = ZERO 
                 COMPUTE COE-MART ROUNDED = 
                     (PVT-MART - W-FAV) / (PAC-MART / NUU-MART)
              END-IF
              COMPUTE PVT-MART ROUNDED =
                    ((PAC-MART / NUU-MART * COE-MART) + W-FAV)
              PERFORM ARRONDI-PVT.
               
           IF POL-MART = 2 OR 6
              PERFORM CAL-REM
              IF POL-MART = 6
                 IF DEV-MFOU NOT = SPACES AND DEV-MFOU NOT = DEV-MPAR
                    MOVE CRS-MFOU TO WCE-CRS
                    MOVE PAT-MART TO WCE-MAC
                    PERFORM INVERSMX-D-I
                    COMPUTE PAC-MART ROUNDED = (WCE-MCO - M-REM)
                 ELSE
                    COMPUTE PAC-MART ROUNDED = (PAT-MART - M-REM)
                 END-IF
              ELSE COMPUTE PAC-MART ROUNDED = (PTF-MART - M-REM)
              END-IF
              PERFORM CAL-FUA

091007        IF W3-PRI NOT = ZERO AND W-IDEM-PVT = 0
091007           MOVE W3-PRI TO PVT-MART
091007        END-IF
              IF W-IDEM-PVT = 1 OR W3-PRI NOT = ZERO
                 COMPUTE COE-MART ROUNDED = 
                     (PVT-MART - W-FAV) / (PTF-MART / NUU-MART)
              END-IF
              COMPUTE PVT-MART ROUNDED =
                      ((PTF-MART / NUU-MART * COE-MART) + W-FAV)
              PERFORM ARRONDI-PVT.

           IF POL-MART = 3 AND 
              (IND-PVT = ZERO OR W-IDEM-PVT = 1 OR W3-PRI NOT = ZERO)
              PERFORM CAL-REM
              COMPUTE PAC-MART ROUNDED = (PTF-MART - M-REM)
              PERFORM CAL-FUA 
091007        IF W3-PRI NOT = ZERO AND W-IDEM-PVT = 0
091007           MOVE W3-PRI TO PVT-MART
091007        END-IF
              IF W-IDEM-PVT = 0 AND W3-PRI = ZERO
                 COMPUTE PVT-MART ROUNDED = 
                        (PAC-MART / NUU-MART) * COE-MART
                 PERFORM ARRONDI-PVT
              END-IF
              IF PAC-MART NOT = ZERO
                 COMPUTE COE-MART ROUNDED = 
                         PVT-MART / (PAC-MART / NUU-MART).

           IF POL-MART = 3 AND IND-PVT = 1 AND W-IDEM-PVT = 0 AND
              W3-PRI = 0
              PERFORM CAL-REM
              MOVE PTF-MART TO PVT-MART
              COMPUTE PAC-MART ROUNDED = (PTF-MART - M-REM)
              PERFORM CAL-FUA
              COMPUTE COE-MART ROUNDED =
                      PVT-MART / (PAC-MART / NUU-MART)
              PERFORM ARRONDI-PVT
              IF PAC-MART NOT = ZERO
                 COMPUTE COE-MART ROUNDED =
                         PVT-MART / (PAC-MART / NUU-MART).

           IF POL-MART = 4
              MOVE PTF-MART  TO PAC-MART
              PERFORM CAL-FUA
091007        IF W3-PRI NOT = ZERO AND W-IDEM-PVT = 0
091007           MOVE W3-PRI TO PVT-MART
091007        END-IF
              IF W-IDEM-PVT = 0 AND W3-PRI = ZERO
                 COMPUTE PVT-MART ROUNDED = 
                       ((PAC-MART / NUU-MART) * COE-MART)
                 PERFORM ARRONDI-PVT
              END-IF
              IF PAC-MART NOT = ZERO
                 COMPUTE COE-MART ROUNDED =
                         PVT-MART / (PAC-MART / NUU-MART).

           IF POL-MART = 5 AND W-IDEM-PVT = 1 MOVE ZERO TO IND-MAJ-PRIX | pas de mise à si Pol. = 5 and Maintien PVT
              MOVE 3 TO MAJ-TRI
              GO F-MAJ-TARIF.
           IF POL-MART = 5
              PERFORM CAL-REM
              COMPUTE PAC-MART ROUNDED = (PTF-MART - M-REM)
              COMPUTE W-PR ROUNDED = (PAC-MART * CPR-MART)
              COMPUTE PVT-MART ROUNDED =
                 (W-PR / NUU-MART) / (1 - (TXM-MART / 100))
              PERFORM ARRONDI-PVT. 

           IF (ISPV-MART = 1 AND PVT-MART NOT = SV-PVT) OR
              (ISPV-MART = 2 AND TTC-MART NOT = SV-TTC)
              MOVE ZERO TO ISPV-MART
           END-IF

290319*--- Déplacé ici + test sur PA (au lieu de PTF)
290319     IF W-IDEM-PVT = 1        | Si Maintien Prix de vente et Nouveau Prix d'achat > au Prix de Vente --> Pas de mise à jour
                COMPUTE W-CAL ROUNDED = PAC-MART / NUU-MART
                IF W-CAL > PVT-MART MOVE 0 TO IND-MAJ-PRIX
                   MOVE 2 TO MAJ-TRI
                   GO F-MAJ-TARIF
                END-IF
290319     END-IF.

           MOVE W-DAT-MAJ TO DAT-MART
      *--- Si Spécifique LANDA
           IF LOG-MDTA = 32 AND MOD-MDTA = 48
              PERFORM SPECIFIC-LANDA THRU F-SPECIFIC-LANDA.
       F-MAJ-TARIF.
           EXIT.

       RECH-COE.
      **     IF W-REM = CRE-MRFO(I)
      **        IF COE-MRFO(I) NOT = ZERO
      **           MOVE COE-MRFO(I) TO COE-MART MOVE 201 TO I.

       CAL-REM.
      **     IF INV-MXREMFOU = ZERO
      **        IF IND-GRI = 1
      **           PERFORM RECH-REMFOU-ART VARYING
      **           I FROM 1 BY 1 UNTIL I > 200 OR
      **           (CRE-MRFO(I) = SPACES AND CRF-MRFO(I) = ZERO)
      **        ELSE
      **           PERFORM RECH-REMFOU-ART VARYING
      **           I FROM 1 BY 1 UNTIL I > 200 OR
      **           (CRE-MRFO(I) = SPACES AND REM-MRFO(I) = ZERO).
           IF IND-GRI = ZERO MOVE REM-MART TO T-REM
           ELSE PERFORM CAL-REM-GRI.
           IF POL-MART = 6
              IF DEV-MFOU NOT = SPACES AND DEV-MFOU NOT = DEV-MPAR
                 MOVE CRS-MFOU TO WCE-CRS
                 MOVE PAT-MART TO WCE-MAC
                 PERFORM INVERSMX-D-I
                 COMPUTE M-REM ROUNDED = (WCE-MCO * T-REM / 100)
              ELSE
                 COMPUTE M-REM ROUNDED = (PAT-MART * T-REM / 100)
              END-IF
           ELSE COMPUTE M-REM ROUNDED = (PTF-MART * T-REM / 100).

       CAL-REM-GRI.
      **     ADD 1 CRF-MART GIVING W-CRF
      **     IF IRC-MGRF = 0 MOVE REM-MGRF(W-CRF) TO T-REM
      **     ELSE COMPUTE W-MON ROUNDED = 100 - REM-MGRF(W-CRF)
      **          COMPUTE W-MON ROUNDED =
      **                  W-MON * (100 - REC-MGRF(W-CRF , 1)) / 100
      **          COMPUTE W-MON ROUNDED =
      **                  W-MON * (100 - REC-MGRF(W-CRF , 2)) / 100
      **          MULTIPLY 1 BY W-MON GIVING R-MON
      **          COMPUTE T-REM ROUNDED = 100 - R-MON.
       CAL-FUA.
           IF IFA-MART = 2 COMPUTE FUA-MART ROUNDED =
                           ((PAC-MART / NUU-MART) * PFA-MART / 100).
           COMPUTE W-FAV ROUNDED = (FUA-MART * CFU-MART).
       
       RECH-REMFOU-ART.

       RECH-REMFOU-ARTMA.


       ARRONDI-PVT.
           MOVE GRA-MART TO GRA-MGFA GRA-MFAM
           MOVE ZERO     TO FAM-MGFA
           MOVE FAM-MART TO FAM-MFAM
           READ MXGRAFAM INVALID MOVE ZERO TO ARR-MGFA.
           PERFORM STAT
           READ MXFAMART INVALID 
              MOVE "Problème Lecture MXFAMART" TO ACU-MSG-1
              STRING CLE1-MFAM "  " COD-MART DELIMITED BY SIZE
              INTO ACU-MSG-2 PERFORM ERREUR.
           PERFORM STAT
           MOVE ARR-MGFA TO INDARR
           IF INDARR = 1 OR 2
               MOVE PVT-MART TO PRIARR
               MOVE TVA-MFAM TO TVAARR
               PERFORM D-CALCUL-ARRONDI THRU F-CALCUL-ARRONDI
               MOVE PRIARR TO PVT-MART
               MOVE TTCARR TO TTC-MART
           ELSE
              MOVE PVT-MART TO TTC-MART
              IF TVA-MFAM NOT = ZERO
                 COMPUTE TTC-MART ROUNDED =
                 PVT-MART + ( PVT-MART * TVA-MPAR(TVA-MFAM) / 100).


      *======   Lecture Grille Fournisseur  ==========
       LECT-MXGRIFOU.
       F-LECT-MXGRIFOU.
           EXIT.

       LECT-MXREMFOU.
      **     MOVE W-FOU TO FOU-MRFO
           MOVE ZERO TO INV-MXREMFOU.
           IF SV-VisibleMajCRC = 0 MOVE ZERO TO W-MAJ-CRC.
       TEST-CRC-RFO.
      **     IF CRC-MRFO(I) NOT = ZERO MOVE 1 TO SV-VisibleMajCRC
      **        MOVE 201 TO I.
      

       MAJ-POID.
           IF IPO-MFAM = 1
              IF T-POI-MDTA = "1" MOVE W-POI TO POI-MART
              ELSE IF T-POI-MDTA = "2"
                      COMPUTE POI-MART ROUNDED = (W-POI * 1000)
              ELSE IF T-POI-MDTA = "3"
                      COMPUTE POI-MART ROUNDED = (W-POI / 1000).
           IF IPO-MFAM = 2
              IF T-POI-MDTA = "2" MOVE W-POI TO POI-MART
              ELSE IF T-POI-MDTA = "1"
                      COMPUTE POI-MART ROUNDED = (W-POI / 1000)
              ELSE IF T-POI-MDTA = "3"
                      COMPUTE POI-MART ROUNDED = (W-POI / 1000000).
      *------------------------------------*
      *  Mise à Jour code remise Client    *
      *------------------------------------*
       MAJ-CRC.
      **     PERFORM VARYING I FROM 1 BY 1 UNTIL I > 200 OR
      **       (CRE-MRFO(I) = SPACES AND CRF-MRFO(I) = ZERO)
      **       IF W-REM = CRE-MRFO(I)
      **         IF W-REM NOT = SPACES OR CRF-MRFO(I) NOT = ZERO
      **             MOVE CRC-MRFO(I) TO CRC-MART MOVE 201 TO I
      **         END-IF
      **       END-IF
      **     END-PERFORM.



      *-------------------------------------------------------------*
      * Spécial Tarif LIEBHERR : Déclaration article en mutiappro   *
      *    CODE USINE : = 03 Frn Allemagne en Frn Principal         *
      *                   06 Frn France    en Frn Principal         *
      *                   12 Frn France    en Frn Principal         *
      *-------------------------------------------------------------*
       MAJ-MXARTMA-LIEB.
      *     IF INO-MART NOT = ZERO GO F-MAJ-MXARTMA-LIEB.
      *     IF WT-SPE(2) = "06" OR "03" NEXT SENTENCE
      *     ELSE GO F-MAJ-MXARTMA-LIEB.
      *     MOVE COD-MART TO ART-MAMA
      *     MOVE 01       TO NPR-MAMA SV-NPR
      *     START MXARTMA KEY NOT < CLE1-MAMA INVALID GO FL-MXARTMA.
      * READ-MXARTMA.
      *     READ MXARTMA NEXT AT END GO FL-MXARTMA.
      *     PERFORM STAT.
      *     IF COD-MART NOT = ART-MAMA GO FL-MXARTMA.
      *     IF NPR-MAMA = 1 AND FOU-MAMA NOT = W-FOU2
      *        AND WT-SPE(2) = "03" GO F-MAJ-MXARTMA-LIEB.
      *     IF FOU-MAMA = W-FOU2
      *         IF (NPR-MAMA = 1 AND (WT-SPE(2) = "06")) OR
      *            (NPR-MAMA NOT = 1 AND WT-SPE(2) = "03")
      *             PERFORM DEL-MXARTMA
      *             PERFORM CREAT-XARTMA THRU F-CREAT-MXARTMA
      *         END-IF
      *         GO F-MAJ-MXARTMA-LIEB.
      *     MOVE NPR-MAMA TO SV-NPR
      *     GO READ-MXARTMA.
      * FL-MXARTMA.
      *     PERFORM CREAT-MXARTMA THRU F-CREAT-MXARTMA.
       F-MAJ-MXARTMA-LIEB.
           EXIT.
      * CREAT-MXARTMA.
      *     MOVE SPACES   TO ENR-MAMA.
      *     MOVE COD-ART  TO ART-MAMA
      *     IF WT-SPE(2) = "03" MOVE 1 TO NPR-MAMA

      *     ELSE ADD 1 SV-NPR TO NPR-MAMA.
      *     MOVE W-FOU2   TO FOU-MAMA.
      *     MOVE REF-MART  TO REF-MAMA
      *     MOVE PTF-MART TO PTF-MAMA
      *     MOVE DAT-MART TO DAT-MAMA
      *     IF DEV-MFOU NOT = SPACES AND NOT = DEV-MPAR
      *        MOVE DEV-MFOU TO DEV-MAMA.
      *     MOVE CRF-MART TO CRF-MAMA
      *     MOVE REM-MART TO REM-MAMA
      *     MOVE UAC-MART TO UAC-MAMA
      *     MOVE CUA-MART TO CUA-MAMA
      *     MOVE NUU-MART TO NUU-MAMA
      *     MOVE DES-MART TO DES-MAMA
      *     MOVE MAR-MART TO MAR-MAMA.
      *     WRITE ENR-MAMA INVALID MOVE "Ecriture MXARTMA No " 
      *           TO ACU-MSG-1
      *           MOVE CLE1-MAMA TO ACU-MSG-2 PERFORM ERREUR.
      *     PERFORM STAT.
      *     MOVE 1 TO MUL-MART.
      * F-CREAT-MXARTMA.
      *     EXIT.
      * DEL-MXARTMA.
      *     READ MXARTMA LOCK INVALID MOVE "Lecture ARTMA LOCK"
      *          TO ACU-MSG-1 MOVE CLE1-MAMA TO ACU-MSG-2 PERFORM ERREUR.
      *     PERFORM STAT.
      *     DELETE MXARTMA INVALID KEY MOVE "Delete MXARTMA " TO 
      *          ACU-MSG-1 
      *          MOVE CLE1-MAMA TO ACU-MSG-2 PERFORM ERREUR.
      *     PERFORM STAT.



      *--------------------------------------------------------------*
      * Spécifique LANDA:                                            *
      *  PVT-ART = Prix Communiqué (P.V Landa x 1,11)                *
      *  NB: Le P.V est stocké dans la zone Prix 2 (cf DESTAR)       *
      *  COE-ART est calculé, S'il est > à 2 --> COE-ART = 2 et la   *
      *          différence est imputée sur FUA-ART                  *
      *--------------------------------------------------------------*
       SPECIFIC-LANDA.
           MOVE W2-PRI TO PVT-MART
           PERFORM ARRONDI-PVT
           IF POL-MART = 1 OR 2 OR 6
              MOVE ZERO TO IFA-MART PFA-MART FUA-MART CFU-MART.
           IF POL-MART = 2 OR 6
              IF PTF-MART NOT = ZERO
               COMPUTE COE-MART ROUNDED =
                      (PVT-MART / (PTF-MART / NUU-MART))
              END-IF
           ELSE
              IF PAC-MART NOT = ZERO
                 COMPUTE COE-MART ROUNDED =
                        (PVT-MART / (PAC-MART / NUU-MART)).

           IF COE-MART > 2 AND (POL-MART = 1 OR 2 OR 6)
              MOVE 2 TO COE-MART
              COMPUTE FUA-MART ROUNDED =
                (PVT-MART - ((PAC-MART / NUU-MART) * COE-MART))
              IF FUA-MART > 0 MOVE 1 TO IFA-MART CFU-MART
              END-IF
           ELSE
              IF POL-MART = 2 OR 6
                 COMPUTE PVT-MART ROUNDED =
                         (PTF-MART / NUU-MART * COE-MART)
              ELSE
                 COMPUTE PVT-MART ROUNDED =
                         (PAC-MART / NUU-MART * COE-MART)
              END-IF
              PERFORM ARRONDI-PVT.
       F-SPECIFIC-LANDA.
           EXIT.


      *  Clic Type Traitement: Maj Catalogue ou Maj Tarif
       Screen1-Rb-TRA-Link.
           PERFORM AFF-SELON-ONGLET.

       AFF-SELON-ONGLET.  
           IF W-TRA = 2 
              MOVE 0 TO Screen1-Pg-1-Visible Screen1-Pg-3-Visible
              MOVE 1 TO Screen1-Pg-2-Visible
              MOVE ZERO TO VisiblePrevisu VisibleRef
              MOVE SV-VisibleMajCrc   TO VisibleMajCrc
              MOVE SV-VisibleMajZSPG1 TO VisibleMajZSPG1
              MOVE SV-VisibleMajZSPG2 TO VisibleMajZSPG2
              MOVE MODU-TARPER        TO VisibleMajAno
              PERFORM Adapt-visible-Mtf
              DISPLAY SCREEN1
           ELSE 
              MOVE 1 TO Screen1-Pg-3-Visible
              MOVE 0 TO Screen1-Pg-1-Visible Screen1-Pg-2-Visible
              MOVE ZERO TO VisibleHau VisibleBai VisibleMajCRC
              MOVE 1 TO VisiblePrevisu
              MOVE ZERO TO VisibleRef VisibleRefIdem
                           VisibleMajGcod VisibleMajFsa
                           VisibleMajMar VisibleMajTva
                           VisibleMajRFC
                           VisibleMajAno
                           VisibleMajZSPG1 VisibleMajZSPG2
              IF W-NBREF = 2 MOVE 1 TO VisibleRef
              END-IF
              DISPLAY SCREEN1
           END-IF

           IF W-TRA = 2
              MODIFY Screen1-Cb-FAM Visible = 0
              MODIFY Screen1-La-LFAM Visible = 0
              MODIFY Screen1-Pb-LFAM Visible = 0
              COPY "../../mistral/copy/Ef-Date10-Fic2Ecr.cbl"
              REPLACING ==CPYDAT-FIC== BY ==W-DAT-MAJ==
                        ==CPYDAT-ECR== BY ==Af-DAT==.
              MODIFY SCREEN1-EF-DAT VALUE AF-DAT
091116        IF I-TAR > 0 AND <= NB-TAR
                 MOVE I-TAR TO Event-data-1
                 PERFORM Screen1-Cm-TAR-Ev-Ntf-Selchange
              END-IF
           END-IF
           .
      *--- Case à cocher: Maj catalogue
       Screen1-Cb-MAJCAT-Link.
           Perform Adapt-Enable-MAJCAT.
           .

       Screen1-Cb-MAJTAR-Link.
           Perform Adapt-Enable-MAJTAR.

      *   Clic Réél ou Simulation
       Screen1-Rb-REEL-Link.
           PERFORM ADAPT-VISIBLE-MTF 
           .
      *   Clic / Maj Code Remise
       Screen1-Cb-MAJ-CRC-Link.
           IF W-MAJ-CRC = 1
           DISPLAY MESSAGE
           "ATTENTION: Le code remise Client de la fiche article va ",
           X"0A",
           "prendre la valeur indiquée dans la table de correspondance"
           X"0A"
           "des remises. Assurez-vous que cette table est correctement"
           X"0A"
           "renseignée."
           X"0A"
           "Confirmez-vous ce choix ?"
           TYPE IS MB-YES-NO
           ICON IS 4 
           TITLE IS Acu-Title
           RETURNING Acu-Return-Value
           END-IF
           if acu-return-value = 2
              MOVE ZERO TO W-MAJ-CRC
              DISPLAY SCREEN1
           END-IF
           .
      *   Clic / Exclure Réf non strictement identique
       Screen1-Cb-RefIdem-Link.
           IF W-REF-IDEM = 1
           DISPLAY MESSAGE
           "ATTENTION: Le tarif ne sera mis à jour que si la référence",
           X"0A",
           "contenue dans le fichier tarif transmis est strictemnt    "
           X"0A"
           "identique à celle du fichier article: les caractères   "
           X"0A"
           "spéciaux (les espaces, les tirets, les points, les slash) "
           X"0A"
           "sont pris en compte pour la comparaison des 2 références."
           X"0A"
           "Confirmez-vous ce choix ?"
           TYPE IS MB-YES-NO
           ICON IS 4 
           TITLE IS Acu-Title
           RETURNING Acu-Return-Value
           END-IF
           if acu-return-value = 2
              MOVE ZERO TO W-REF-IDEM
              DISPLAY SCREEN1
           END-IF
           .
      *   Clic / Sans Maj à jour du traif
       Screen1-Cb-SansMajTar-Link.
           IF W-SANS-MAJ-TAR = 1
           DISPLAY MESSAGE
           "ATTENTION: Cette fonction permet la mise à jour des informat
      -    "ions"
           X"0A",
           "autre que le tarif, c'est à dire: poids, condit achat, genco
      -    "d, marque,"
           X"0A"
           "etc  si ces données sont renseignées et paramétrées dans le 
      -    " tarif. "
           X"0A"
           "Le tarif (prix tarif, prix d'achat, remise, coéf, prix de ve
      -    "nte, date"
           X"0A"
           "tarif) n'est pas mis à jour."
           X"0A"
           "Confirmez-vous ce choix ?"
           TYPE IS MB-YES-NO
           ICON IS 4 
           TITLE IS Acu-Title
           RETURNING Acu-Return-Value
           END-IF.
           if acu-return-value = 2
              MOVE ZERO TO W-SANS-MAJ-TAR
              DISPLAY SCREEN1
           END-IF.
           PERFORM Adapt-Visible-SansMajTar
           .
       Screen1-Cb-MajICO-Link.
           DISPLAY Screen1-Cb-ICO0.
           DISPLAY Screen1-Cb-ICO1.
           DISPLAY Screen1-Cb-ICO2.
070619 Screen1-Cb-PTTC-Link.
           IF W-PTTC = 1
              MOVE "Etes-vous sûr(e) ?" TO ACU-MSG-1
              PERFORM MSG-ON
              IF ACU-RETURN-VALUE = 2
                 MOVE ZERO TO W-PTTC
                 DISPLAY Screen1-Cb-PTTC
              END-IF
           END-IF.

       Screen1-Cb-MajZSPG1-Link.
           IF W-MAJ-ZSPG1 = 1
              MOVE 
              "Confirmer la mise à jour de cette information spécifique"
              TO ACU-MSG-1
              STRING
                 "avec la donnée '" 
                 W-LibSPE3 
                 "' du tarif article ? " DELIMITED BY "   "
                 INTO ACU-MSG-2
              PERFORM MSG-ON
              IF ACU-RETURN-VALUE = 2
                 MOVE ZERO TO W-MAJ-ZSPG1
                 MODIFY Screen1-Cb-MajZSPG1 VALUE 0
              END-IF
           END-IF.
       Screen1-Cb-MajZSPG2-Link.
           IF W-MAJ-ZSPG2 = 1
              MOVE 
              "Confirmer la mise à jour de cette information spécifique"
              TO ACU-MSG-1
              STRING
                "avec la donnée '" 
                W-LibSPE4 
                "' du tarif article ? " DELIMITED BY "   "
                INTO ACU-MSG-2
              PERFORM MSG-ON
              IF ACU-RETURN-VALUE = 2
                 MOVE ZERO TO W-MAJ-ZSPG2
                 MODIFY Screen1-Cb-MajZSPG2 VALUE 0
              END-IF
           END-IF.
       Adapt-Enable-MAJCAT.
           DISPLAY Screen1-Cb-SupCat.
           DISPLAY Screen1-Cb-PX0
           DISPLAY Screen1-Cb-FAM
           DISPLAY Screen1-Pb-LFAM.

       Adapt-Enable-MAJTAR.
           IF W-MajTar = 0
              MOVE 0 TO EnableSim EnableMaj EnableMajPv
                        EnableEdiArt EnableTar
                        EnableImp EnableEdi EnableEdiArt
              Perform Display-MajTar
           Else
              MOVE 1 TO EnableSim EnableMaj EnableMajPv
                        EnableEdiArt EnableTar
                        EnableImp EnableEdi EnableEdiArt
              Perform ADAPT-VISIBLE-MTF
              Perform Adapt-Visible-SansMajTar.

       Display-MajTar.
           DISPLAY Screen1-Rb-REEL1
           DISPLAY Screen1-Rb-REEL2
           Display Screen1-Cb-IdemPvt 
           DISPLAY Screen1-Cb-SansMajTar
           DISPLAY Screen1-Cb-Maj-Crc
           DISPLAY Screen1-Cb-RefIdem
           DISPLAY Screen1-Cb-MajGCOD
           DISPLAY Screen1-Cb-MajICO
           DISPLAY Screen1-Cb-ICO0
           DISPLAY Screen1-Cb-ICO1
           DISPLAY Screen1-Cb-ICO2
           DISPLAY Screen1-Cb-PTTC
           DISPLAY Screen1-Cb-MajAno
           DISPLAY Screen1-Ef-DAT
           DISPLAY Screen1-Ef-DVA
           DISPLAY Screen1-Cb-MajMAR
           DISPLAY Screen1-Cb-MajCEE
           DISPLAY Screen1-Cb-MajZSPG1
           Display Screen1-Cb-MajZSPG2
           DISPLAY Screen1-Cb-MajFSA
           DISPLAY Screen1-Cb-MajRFC

           DISPLAY Screen1-Cb-EDI-NACT
           DISPLAY Screen1-Cb-EDI-HAU
           DISPLAY Screen1-Ef-HAU
           DISPLAY Screen1-Cb-EDI-BAI
           DISPLAY Screen1-Ef-BAI
           DISPLAY Screen1-Rb-EDI-STO1
           DISPLAY Screen1-Rb-EDI-STO2
           .
      *
       Adapt-Visible-MTF.
           IF W-REEL = 1 MOVE 1 TO EnableMaj EnableMajPv
           ELSE          MOVE 0 TO EnableMaj EnableMajPv
           END-IF
           IF W-EDI-HAU = 1 MOVE 1 TO VisibleHau
                            MOVE W-HAU TO A-HAU
           ELSE             MOVE 0 TO VisibleHau W-HAU A-HAU
           END-IF
           IF W-EDI-BAI = 1 MOVE 1 TO VisibleBAI
                            MOVE W-BAI TO A-BAI
           ELSE             MOVE 0 TO VisibleBAI W-BAI A-BAI
           END-IF
           IF W-EDI-HAU = 0 AND W-EDI-BAI = 0
                MOVE ZERO TO EnableEdiArt
           ELSE MOVE 1 TO EnableEdiArt
           END-IF 

      *---  Affichage du bouton "Exclure les réf. non strictemnt identique"
           IF W-TRA = 2 AND W-MAJTAR = 1
              MOVE 1 TO VisibleRefIdem
           ELSE
              MOVE 0 TO VisibleRefIdem W-REF-IDEM
           END-IF
      *--- Si tarif avec Gencod
           IF P-GCOD-MDTA NOT = ZERO
              MOVE 1 TO VisibleMajGcod
           ELSE
              MOVE 0 TO VisibleMajGcod W-MAJ-GCOD
           END-IF      

           IF W-TRA = 2 AND W-MAJTAR = 1
              IF LOG-MDTA = 26 AND MOD-MDTA = 73
                   MOVE 1 TO VisibleMajRFC
              ELSE IF P-RFI-MDTA NOT = ZERO AND RIA-MPAR = 1       | Si tarif avec Référence interne
                      MOVE 1 TO VisibleMajRFC
                      MOVE "Avec mise à jour de la référence interne" TO
                      W-TIT-MAJRFC
                   ELSE MOVE 0 TO VisibleMajRFC
                   END-IF
              END-IF
           END-IF.

           IF P-GRA-MDTA NOT = ZERO AND T-GRA-MDTA = "T"
              CONTINUE
           ELSE
              MOVE ZERO TO VisibleMajFsa W-MAJ-FSA
           END-IF
      *--- Si tarif avec Code Marque
           IF P-MAR-MDTA NOT = ZERO
              MOVE 1 TO VisibleMajMar
           ELSE
              MOVE 0 TO VisibleMajMar W-MAJ-MAR
           END-IF
      *--- Si tarif avec N° TVA CEE
           IF P-TVA-MDTA NOT = ZERO
              MOVE 1 TO VisibleMajTva
           ELSE      
              MOVE 0 TO VisibleMajTva W-MAJ-TVA
           END-IF

           IF W-EDI-STO = 0 MOVE 1 TO W-EDI-STO
           END-IF
      *     DISPLAY SCREEN1.
           Perform Display-MajTar.

      *--- Adaptation écran si Pas de mise à jour du tarif
       Adapt-Visible-SansMajTar.
           IF W-SANS-MAJ-TAR = 1 MOVE 0 TO EnableSim   EnableEdi
                                           EnableMajPv
                                           EnableEdiArt
           ELSE  MOVE 1 TO EnableSim   EnableEdi
                           EnableEdiArt
                 IF W-REEL = 1 MOVE 1 TO EnableMajPv
                 ELSE          MOVE 0 TO EnableMajPv
                 END-IF
           END-IF
      *--- Si tarif avec Gencod
           IF P-GCOD-MDTA NOT = ZERO
              MOVE 1 TO VisibleMajGcod
           ELSE
              MOVE 0 TO VisibleMajGcod W-MAJ-GCOD
           END-IF      

           IF LOG-MDTA = 26 AND MOD-MDTA = 73
                MOVE 1 TO VisibleMajRFC
           ELSE IF P-RFI-MDTA NOT = ZERO               | Si tarif avec Référence interne
                   MOVE 1 TO VisibleMajRFC
                   MOVE "Avec mise à jour de la référence interne" TO
                   W-TIT-MAJRFC
                ELSE MOVE 0 TO VisibleMajRFC
           END-IF
           IF P-GRA-MDTA NOT = ZERO AND T-GRA-MDTA = "T"
              CONTINUE
           ELSE
              MOVE ZERO TO VisibleMajFsa W-MAJ-FSA
           END-IF
      *--- Si tarif avec Code Marque
           IF P-MAR-MDTA NOT = ZERO
              MOVE 1 TO VisibleMajMar
           ELSE
              MOVE 0 TO VisibleMajMar W-MAJ-MAR
           END-IF
      *--- Si tarif avec N° TVA CEE
           IF P-TVA-MDTA NOT = ZERO
              MOVE 1 TO VisibleMajTva
           ELSE      
              MOVE 0 TO VisibleMajTva W-MAJ-TVA
           END-IF
           DISPLAY SCREEN1.
      *
       Screen1-Cb-EDI-HAU-Link.
           PERFORM ADapt-Visible-MTF
           .
      *
       Screen1-Cb-EDI-BAI-Link.
           PERFORM ADapt-Visible-MTF
           .
      *
       Screen1-Ef-HAU-Ev-Msg-Validate.
           Inquire Screen1-Ef-Hau VALUE = W-HAU
           PERFORM ADapt-Visible-MTF
           .
      *
       Screen1-Ef-BAI-Ev-Msg-Validate.
           Inquire Screen1-Ef-Bai VALUE = W-BAI
           PERFORM ADapt-Visible-MTF
           .
      *
       Screen1-Ef-DAT-Ev-Msg-Validate.
           INQUIRE Screen1-Ef-DAT, VALUE = X-DAT
           COPY "../../mistral/copy/Ef-Date10-Ecr2Fic.cbl"
                REPLACING ==CPYDAT-ECR== BY ==X-DAT==
                          ==CPYDAT-FIC== BY ==W-DAT-MAJ==.
           MODIFY Screen1-Ef-DAT, VALUE = X-DAT
           PERFORM CTRL-DAT
           .
       CTRL-DAT.
           MOVE 1 TO W-OK
           IF W-SAM-MAJ > PCOURS-MPAR
              MOVE
              "La date ne peut être postérieure à la période en cours"
              TO ACU-MSG-1
              PERFORM MSG-INFO
              MOVE ZERO TO W-OK
              EXIT PARAGRAPH
           END-IF
           IF W-SAM-MAJ NOT = PCOURS-MPAR
              MOVE "Confirmez-vous cette date ?" TO ACU-MSG-1
              PERFORM MSG-ON
              IF ACU-RETURN-VALUE = 2
                 MOVE ZERO TO W-OK
                 move 4 TO ACCEPT-CONTROL
                 MOVE 30 TO CONTROL-ID
              END-IF
           END-IF
           .

       Screen1-Ef-DVA-Ev-Msg-Validate.
           INQUIRE Screen1-Ef-DVA, VALUE = X-DAT
           COPY "../../mistral/copy/Ef-Date10-Ecr2Fic.cbl"
                REPLACING ==CPYDAT-ECR== BY ==X-DAT==
                          ==CPYDAT-FIC== BY ==W-DAT-VAL==.
           MODIFY Screen1-Ef-DVA, VALUE = X-DAT
           PERFORM CTRL-DVA.
           .
       CTRL-DVA.
           MOVE 1 TO W-OK
           IF W-DAT-VAL <> 0 AND W-DAT-VAL <= W-DAT-MAJ
              MOVE            
              "La date de validité doit être postérieure à la date de ta
      -       "rif"
              TO ACU-MSG-1
              PERFORM MSG-INFO
              MOVE ZERO TO W-OK
              EXIT PARAGRAPH
           END-IF
           .
       
      *
       Screen1-Cb-IdemPvt-Link.
           IF W-IDEM-PVT = 1
           DISPLAY MESSAGE
           "ATTENTION: ce choix entraine le recalcul systématique du  ",
           X"0A",
           "coefficient multiplicateur, donc une diminution des marges"
           X"0A"
           "pour tous les articles mis à jour!"
           X"0A"
           "Confirmez-vous ce choix ?."
           TYPE IS MB-YES-NO
           ICON IS 4 
           TITLE IS Acu-Title
           RETURNING Acu-Return-Value
           END-IF
           if acu-return-value = 2
              MOVE ZERO TO W-IDEM-PVT
              DISPLAY SCREEN1
           END-IF
           .
           

      *   Assignation/ouverture du fichier LISFICIMP (ImpMulti)
       OPEN-LISFICIMP.
      **     COPY "../../mx/copy/Assign-FICTMP.cbl"
      **          REPLACING ==FICTMP==   BY ==LISFICIMP==
      **                    =='FICTMP'== BY ==LISFICIMP==.
      **     CLOSE LISFICIMP
      **     INITIALIZE ENR-LIMP
      **     MOVE "ACI" TO XMLOut-Id
      **     MOVE MX-DIR TO XMLOut-Dir 
      **     PERFORM Xmlout-Assign-Tmp
      **     PERFORM XMLOut-Open.    
      *
      *======    Edition des References Non Actualisées 
       EDIT-NACT.            
      **     MOVE ZERO   TO FIC-TRI W-ENT-NACT
      **     MOVE SPACES TO ART-TRI
      **     START TRI KEY NOT < CLE1-TRI INVALID KEY GO TO F-EDIT-NACT.
      ** LECT-EDIT-NACT.
      **     READ TRI NEXT AT END GO TO F-EDIT-NACT.
      **     PERFORM STAT
100108**     IF MAJ-TRI = 1 GO LECT-EDIT-NACT.
      **     IF W-ENT-NACT = ZERO
      **        PERFORM ENTETE-NACT
      **        MOVE 1 TO W-ENT-NACT.
      **     MOVE ART-TRI TO COD-MART ART-MAMA.
      **     MOVE NPR-TRI TO NPR-MAMA
      **     IF FIC-TRI = 1
      **       READ MXART INVALID
      **          MOVE "Problème Lecture MXART No " TO ACU-MSG-1
      **          MOVE ART-TRI TO ACU-MSG-2 PERFORM ERREUR
      **       END-READ
      **     ELSE
      **       GO LECT-EDIT-NACT
      **     END-IF.
      **     PERFORM STAT. 
      **     MOVE SPACES TO WE-ART WE-OBS.
      **     IF FIC-TRI = 1 STRING CO1-MART " " CO2-MART 
      **                           DELIMITED BY SIZE INTO WE-ART
      **                    MOVE REF-MART TO WE-REF
      **                    MOVE DES-MART TO WE-DES
      **     ELSE           STRING ART-MAMA(1:4) " " ART-MAMA(5:16)
      **                           DELIMITED BY SIZE INTO WE-ART
      **                    MOVE REF-MAMA TO WE-REF
      **                    MOVE DES-MAMA TO WE-DES
      **                    MOVE "Multi Appro" TO WE-OBS.
      **     IF MAJ-TRI = 2 MOVE "Non Maj: PA > PVT" TO WE-OBS.
      **     IF MAJ-TRI = 3 MOVE "Non Maj: Pol. 5  " TO WE-OBS.
      **     IF MAJ-TRI = 9 MOVE "Prix à zéro " TO WE-OBS.
      **     IF TAR-MART = 2 
      **        IF WE-OBS = SPACES 
      **           MOVE "Interdit à la vente" TO WE-OBS
      **        ELSE
      **           STRING WE-OBS DELIMITED BY "   "
      **                  " - "  DELIMITED BY "   "
      **                  "Interdit à la vente" DELIMITED BY "  "
      **                  INTO WE-OBS
      **        END-IF
      **     END-IF.
      **     PERFORM EDIT-LIG-NACT
      **     GO TO LECT-EDIT-NACT.
       F-EDIT-NACT.
      **     IF W-ENT-NACT NOT = 0
      **        PERFORM EDIT-FIN-NACT.
      **
      ** ENTETE-NACT.
      **     MOVE "MTF" TO XMLOut-Id
      **     MOVE MX-DIR TO XMLOut-Dir
      **     PERFORM XMLOut-Assign-Tmp
      **     PERFORM XMLOut-Open
      **     MOVE RAI-MPAR TO XMLOut-NOMSOC
      **     IF LOG-MDTA = 32 AND MOD-MDTA = 42
      **        MOVE RAI-MFOU TO W-NOMTAR
      **     ELSE
      **        MOVE NOM-MDTA TO W-NOMTAR
      **     END-IF.
      **     STRING "LISTE DES REFERENCES" DELIMITED BY SIZE
      **            " " delimited by size
      **            W-NOMTAR DELIMITED BY "   "
      **            " non actualisées" DELIMITED BY SIZE
      **            INTO XMLOut-TITRE
      **
      **     MOVE "art"          TO XMLOut-NomTit(1)
      **     MOVE "Code Article" TO XMLOut-ZonTit(1)
      **     MOVE "ref"          TO XMLOut-NomTit(2)
      **     MOVE "Référence"    TO XMLOut-ZonTit(2)
      **     MOVE "des"          TO XMLOut-NomTit(3)
      **     MOVE "Désignation"  TO XMLOut-ZonTit(3)
      **     MOVE "obs"          TO XMLOut-NomTit(4)
      **     MOVE "Observations" TO XMLOut-ZonTit(4)
      **                               
      **     PERFORM XMLOut-EnteteListe THRU F-XMLOut-EnteteListe
      **     PERFORM XMLOut-PiedListe THRU F-XMLOut-PiedListe
      **
      **     MOVE "csv-nact" TO XMLOut-TagToAdd
      **     MOVE 1 TO XMLOut-DataToAdd
      **     PERFORM XMLOut-Append-TaggedData
      **     MOVE "csv-nchg" TO XMLOut-TagToAdd
      **     MOVE 0 TO XMLOut-DataToAdd
      **     PERFORM XMLOut-Append-TaggedData
      **     MOVE "tit-nact" TO XMLOut-TagToAdd
      **     STRING "LISTE DES REFERENCES" DELIMITED BY SIZE
      **            " "                    DELIMITED BY SIZE
      **            NOM-MDTA               DELIMITED BY "   "
      **            " non actualisées"     DELIMITED BY SIZE
      **     INTO XMLOut-DataToAdd
      **     PERFORM XMLOut-Append-TaggedData
      **     .
      **
      ** EDIT-LIG-NACT.
      **     MOVE "<nact>" TO XMLOut-ItemToAdd
      **     PERFORM XMLOut-Append-Tag
      **
      **     MOVE "cod" TO XMLOut-TagToAdd
      **     MOVE WE-ART TO XMLOut-DataToAdd
      **     PERFORM XMLOut-Append-TaggedData
      **     MOVE "Réf" TO XMLOut-TagToAdd
      **     MOVE WE-REF TO XMLOut-DataToAdd
      **     PERFORM XMLOut-Append-TaggedData
      **     MOVE "Des" TO XMLOut-TagToAdd
      **     MOVE WE-DES TO XMLOut-DataToAdd
      **     PERFORM XMLOut-Append-TaggedData
      **
      **     MOVE "Obs" TO XMLOut-TagToAdd
      **     MOVE WE-OBS TO XMLOut-DataToAdd
      **     PERFORM XMLOut-Append-TaggedData
      **     MOVE "</nact>" TO XMLOut-ItemToAdd
      **     PERFORM XMLOut-Append-Tag.
      **
      ** EDIT-FIN-NACT.
      **     PERFORM XMLOut-Close
      **     .
      **
       APERCU-NACT. 
      **     IF W-ENT-NACT NOT = 0
100909***        MOVE SPACES TO LK-IMPRIME         | ne pas RAZ LK-IMPRIME  Important !!
      **        MOVE "/mx/fop/mtf.fic.xsl" TO LK-IMPRIME-FIC
      **        MOVE "/mx/fop/mtf.xsl" TO LK-IMPRIME-XSL
      **        MOVE "P" TO LK-IMPRIME-PRVW
      **        MOVE 1   TO ECR-INT
      **        PERFORM LANCE-IMPRIME
      **     END-IF
      **     PERFORM DERNIER-IMPRIME 
      **     PERFORM UNTIL W-PBThread-End = 1
      **           CALL "C$SLEEP" USING 0,1
      **     END-PERFORM

           .
      *     MOVE XMLOut-Assign TO LK-IMPRIME-XML
      *     MOVE "pdf" TO LK-IMPRIME-FORMAT
      *     CALL "../../mistral/o/imprime.acu" 
      *          USING ZONE-PALM, LK-IMPRIME
      *     CANCEL "../../mistral/o/imprime.acu"
      *     PERFORM XMLOut-Delete
           .
      *--------------------------------------------------*
      *  Edition des réfrénces en hausse ou en baisse    *
      *--------------------------------------------------*
       EDIT-HB. 
      **     IF FIC-TRI = 2 MOVE PVT-MART TO SV-PVT
      **        IF POP-MFOU = 6 AND W2-PRI NOT = ZERO
      **            MOVE W2-PRI TO W-PRI.
      **     PERFORM CAL-STOCK THRU F-CAL-STOCK.
      **     IF W-EDI-STO = 1 AND W-STO <= 0 GO F-EDIT-HB.
      **     MOVE ZERO TO W-INC
      **     IF W-STO > ZERO
      **        IF UPR-MART NOT = ZERO MOVE 1 TO UPR-MART
      **        END-IF
      **        COMPUTE W-INC ROUNDED = W-STO *
      **                ((PVT-MART - SV-PVT) / UPR-MART)
      **     END-IF
      **     IF W-PRI = SV-PTF AND
120115**        (W-STO = ZERO OR SV-PVT = PVT-MART)     | Si coef change ==> PV change et Incidence sur stock à PV change aussi (Impression si: PTF change ou si PVT change avec stock <> 0)
      **        GO F-EDIT-HB.
      **
      **     COMPUTE W-PCT ROUNDED = ((W-PRI - SV-PTF) / SV-PTF) * 100
      **     MOVE W-PCT TO W-PPCT
      **     IF W-PCT >= ZERO AND W-EDI-HAU = 0
      **        ADD W-INC TO TOT-INC-AUT GO F-EDIT-HB.
      **     IF W-PCT < ZERO AND W-EDI-BAI = 0
      **        ADD W-INC TO TOT-INC-AUT GO F-EDIT-HB.
      **     IF W-PCT >= ZERO AND < W-HAU
      **        ADD W-INC TO TOT-INC-AUT  GO F-EDIT-HB.
      **     IF W-PCT < ZERO AND W-PPCT < W-BAI
      **        ADD W-INC TO TOT-INC-AUT GO F-EDIT-HB.
      **
      **     IF W-ENT-HB = ZERO
      **        PERFORM ENTETE-HB
      **        MOVE 1 TO W-ENT-HB.
      **     MOVE SPACES TO WE-ART
      **     IF FIC-TRI = 1
      **        STRING CO1-MART " " CO2-MART 
      **               DELIMITED BY SIZE INTO WE-ART
150318**        MOVE REF-MART TO WE-REF
      **     ELSE
      **        STRING REF-MAMA DELIMITED BY "  "
      **               "  (*)"  DELIMITED BY "    " INTO WE-ART
150318**        MOVE REF-MAMA TO WE-REF
      **         MOVE 1 TO W-ED-AMA. 
      **     MOVE SV-PTF   TO WE-APTF
      **     MOVE W-PRI    TO WE-NPTF
      **     MOVE SV-CRF   TO WE-ACRF
      **     IF FIC-TRI = 1
      **          MOVE CRF-MART TO WE-NCRF
      **     ELSE MOVE CRF-MAMA TO WE-NCRF
      **     END-IF   
      **     MOVE SV-PVT   TO WE-APVT
      **     MOVE PVT-MART TO WE-NPVT
      **     MOVE SPACES   TO WE-HAU WE-BAI
      **     MOVE ZERO     TO WE-STO WE-INC
      **     IF W-PCT > ZERO 
      **          MOVE W-PCT TO A-PCT
      **          STRING A-PCT " " "%" 
      **                 DELIMITED BY SIZE
      **                 INTO WE-HAU
      **     ELSE IF W-PCT < ZERO MOVE W-PCT TO A-PCT
      **             STRING A-PCT " " "%" 
      **                 DELIMITED BY SIZE
      **                 INTO WE-BAI.
      **     IF FIC-TRI = 1 
      **        MOVE W-STO TO WE-STO
      **        MOVE W-INC TO WE-INC
      **        ADD W-INC TO TOT-INC.
      **
      **     MOVE "<nchg>" TO XMLOut-ItemToAdd
      **     PERFORM XMLOut-Append-Tag
      **
      **     MOVE "COD"   TO XMLOut-TagToAdd
      **     MOVE WE-ART  TO XMLOut-DataToAdd
      **     PERFORM XMLOut-Append-TaggedData
      **     MOVE "DES"   TO XMLOut-TagToAdd
      **     MOVE DES-MART TO XMLOut-DataToAdd
      **     PERFORM XMLOut-Append-TaggedData
      **     MOVE "APTF"  TO XMLOut-TagToAdd
      **     MOVE WE-APTF TO XMLOut-DataToAdd
      **     PERFORM XMLOut-Append-TaggedData
      **     MOVE "NPTF"  TO XMLOut-TagToAdd
      **     MOVE WE-NPTF TO XMLOut-DataToAdd
      **     PERFORM XMLOut-Append-TaggedData
      **     MOVE "HAU"   TO XMLOut-TagToAdd
      **     MOVE WE-HAU  TO XMLOut-DataToAdd
      **     PERFORM XMLOut-Append-TaggedData
      **     MOVE "BAI"   TO XMLOut-TagToAdd
      **     MOVE WE-BAI  TO XMLOut-DataToAdd
      **     PERFORM XMLOut-Append-TaggedData
      **     MOVE "STO"   TO XMLOut-TagToAdd
      **     MOVE WE-STO  TO XMLOut-DataToAdd
      **     PERFORM XMLOut-Append-TaggedData
      **     MOVE "INC"   TO XMLOut-TagToAdd
      **     MOVE WE-INC  TO XMLOut-DataToAdd
      **     PERFORM XMLOut-Append-TaggedData
      **     MOVE "ACRF"  TO XMLOut-TagToAdd
      **     MOVE WE-ACRF TO XMLOut-DataToAdd
      **     PERFORM XMLOut-Append-TaggedData
      **     MOVE "NCRF"  TO XMLOut-TagToAdd
      **     MOVE WE-NCRF TO XMLOut-DataToAdd
      **     PERFORM XMLOut-Append-TaggedData
      **     MOVE "APVT"  TO XMLOut-TagToAdd
      **     MOVE WE-APVT TO XMLOut-DataToAdd
      **     PERFORM XMLOut-Append-TaggedData
      **     MOVE "NPVT"  TO XMLOut-TagToAdd
      **     MOVE WE-NPVT TO XMLOut-DataToAdd
      **     PERFORM XMLOut-Append-TaggedData
150318***    DACHARD
      **     MOVE "REF" TO XMLOut-TagToAdd
      **     MOVE WE-REF TO XMLOut-DataToAdd
      **     PERFORM XMLOut-Append-TaggedData
150318**
      **     MOVE "</nchg>" TO XMLOut-ItemToAdd
      **     PERFORM XMLOut-Append-Tag.
       F-EDIT-HB.
           EXIT .

      ** CAL-STOCK.
      **     MOVE ZERO TO W-STO
      **     MOVE COD-MART TO COD-MASA
      **     START MXARTSA KEY NOT < CLE3-MASA INVALID GO F-CAL-STOCK.
      ** LECT-MXARTSA.
      **     READ MXARTSA NEXT AT END GO TO F-CAL-STOCK.
      **     PERFORM STAT
      **     IF COD-MASA NOT = COD-MART GO F-CAL-STOCK.
      **     IF CLI-PALM = 940169 and AGE-MASA = 28 GO LECT-MXARTSA.   | Si Ammann, on ne prend pas le stock de l'agence 28 = Stock de Ammann Yanmar
      **     ADD QSTM-MASA(1) TO W-STO
      **     GO TO LECT-MXARTSA.
      ** F-CAL-STOCK.
      **     EXIT.

      ** EDIT-FIN-HB.
      **     MOVE "<Total>" TO XMLOut-ItemToAdd
      **     PERFORM XMLOut-Append-Tag
      **     IF W-ED-AMA = 1
      **        MOVE "renvoi" TO XMLOut-TagToAdd
      **        MOVE "(*)=Article multi-appro" TO XMLOut-DataToAdd
      **        PERFORM XMLOut-Append-TaggedData
      **     END-IF
      **     MOVE TOT-INC TO WE-INC
      **     STRING "Incidence/Valeur Stock des articles édités ="
      **           " " WE-INC DELIMITED BY SIZE
      **           INTO XMLOut-DataToAdd
      **     IF W-EDI-HAU = 1 AND W-HAU = 0 AND
      **        W-EDI-BAI = 1 AND W-BAI = 0
      **        MOVE SPACES TO XMLOut-DataToAdd
      **        STRING "Incidence/Valeur Stock  ="
      **           " " WE-INC DELIMITED BY SIZE
      **           INTO XMLOut-DataToAdd
      **     END-IF
      **     MOVE "Libelle" TO XMLOut-TagToAdd
      **     PERFORM XMLOut-Append-TaggedData
      **
      **     IF W-EDI-HAU = 1 AND W-HAU = 0 AND
      **        W-EDI-BAI = 1 AND W-BAI = 0 
      **          MOVE SPACES TO XMLOut-DataToAdd
      **     ELSE 
      **          MOVE TOT-INC-AUT TO WE-INC
      **          STRING
      **          "Incidence/Valeur Stock des articles non édités  ="
      **            " " WE-INC DELIMITED BY SIZE
      **            INTO XMLOut-DataToAdd
      **          MOVE "Libelle" TO XMLOut-TagToAdd
      **          PERFORM XMLOut-Append-TaggedData
      **
      **          ADD TOT-INC-AUT TOT-INC GIVING WE-INC
      **          STRING  " Total Incidence  ="
      **            " " WE-INC DELIMITED BY SIZE
      **            INTO XMLOut-DataToAdd
      **          MOVE "Libelle" TO XMLOut-TagToAdd
      **          PERFORM XMLOut-Append-TaggedData
      **     END-IF.
      **
      **     MOVE "</Total>" TO XMLOut-ItemToAdd
      **     PERFORM XMLOut-Append-Tag.
      **
      **     PERFORM XMLOut-Close
      **     .
      ***  Entête état des hausse et des baisse
      ** ENTETE-HB.
      **     MOVE "MTF2" TO XMLOut-Id
      **     MOVE MX-DIR TO XMLOut-Dir
      **     PERFORM XMLOut-Assign-Tmp
      **     PERFORM XMLOut-Open
      **     MOVE RAI-MPAR TO XMLOut-NOMSOC
      **     MOVE "LISTE DES CHANGEMENTS DE PRIX TARIF " 
      **            TO XMLOut-TITRE
      **     MOVE SPACES TO WE-LIB
      **     STRING "Hausse >" 
      **            " " A-HAU " %" DELIMITED BY SIZE
      **            INTO WE-LIB
      **     MOVE "Hausse" TO XMLOut-TagToAdd
      **     MOVE WE-LIB TO XMLOut-DataToAdd
      **     PERFORM XMLOut-Append-TaggedData.
      **     MOVE SPACES TO WE-LIB
      **     STRING " Baisse >" 
      **            " " A-BAI " %" DELIMITED BY SIZE
      **            INTO WE-LIB
      **     MOVE "Baisse" TO XMLOut-TagToAdd
      **     MOVE WE-LIB TO XMLOut-DataToAdd
      **     PERFORM XMLOut-Append-TaggedData.
      **     MOVE SPACES TO WE-LIB
      **     STRING "Fournisseur:" 
      **            " " W-FOU " " RAI-MFOU DELIMITED BY "   "
      **            INTO WE-LIB
      **     MOVE "Fournisseur" TO XMLOut-TagToAdd
      **     MOVE WE-LIB TO XMLOut-DataToAdd
      **     PERFORM XMLOut-Append-TaggedData.
      **
      **     MOVE "art"                    TO XMLOut-NomTit(1)
      **     MOVE "Code Article"           TO XMLOut-ZonTit(1)
      **     MOVE "des"                    TO XMLOut-NomTit(2)
      **     MOVE "Désignation"            TO XMLOut-ZonTit(2)
      **     MOVE "ata"                    TO XMLOut-NomTit(3)
      **     MOVE "Ancien Tarif"           TO XMLOut-ZonTit(3)
      **     MOVE "nta"                    TO XMLOut-NomTit(4)
      **     MOVE "Nouveau Tarif"          TO XMLOut-ZonTit(4)
      **     MOVE "sto"                    TO XMLOut-NomTit(5)
      **     MOVE "Stock"                  TO XMLOut-ZonTit(5)
      **     MOVE "ivs"                    TO XMLOut-NomTit(6)
      **     MOVE "Incid. Val. Stock à PV" TO XMLOut-ZonTit(6)
      **     MOVE "acrf"                   TO XMLOut-NomTit(7)
      **     MOVE "Ancien CRF"             TO XMLOut-ZonTit(7)
      **     MOVE "ncrf"                   TO XMLOut-NomTit(8)
      **     MOVE "Nouveau CRF"            TO XMLOut-ZonTit(8)
      **     MOVE "apvt"                   TO XMLOut-NomTit(9)
      **     MOVE "Ancien PV HT"           TO XMLOut-ZonTit(9)
      **     MOVE "npvt"                   TO XMLOut-NomTit(10)
      **     MOVE "Nouveau PV HT"          TO XMLOut-ZonTit(10)
150318**     MOVE "ref"                    TO XMLOut-NomTit(11) | DACHARD
150318**     MOVE "Référence"              TO XMLOut-ZonTit(11)
      **
      **     PERFORM XMLOut-EnteteListe THRU F-XMLOut-EnteteListe
      **     PERFORM XMLOut-PiedListe THRU F-XMLOut-PiedListe
      **
      **     MOVE "csv-nact" TO XMLOut-TagToAdd
      **     MOVE 0 TO XMLOut-DataToAdd
      **     PERFORM XMLOut-Append-TaggedData
      **     MOVE "csv-nchg" TO XMLOut-TagToAdd
      **     MOVE 1 TO XMLOut-DataToAdd
      **     PERFORM XMLOut-Append-TaggedData
      **     MOVE "tit-nchg" TO XMLOut-TagToAdd
      **     MOVE "LISTE DES CHANGEMENTS DE PRIX TARIF"
      **     TO XMLOut-DataToAdd
      **     PERFORM XMLOut-Append-TaggedData
      **     .
      **
      ** APERCU-HB.
100909***     MOVE SPACES TO LK-IMPRIME
      **     MOVE "/mx/fop/mtf.fic.xsl" TO LK-IMPRIME-FIC
      **     MOVE "/mx/fop/mtf2.xsl" TO LK-IMPRIME-XSL
      **     MOVE "P" TO LK-IMPRIME-PRVW
      **     MOVE 1   TO ECR-INT
      **     PERFORM LANCE-IMPRIME
      **     IF W-EDI-NACT = 0
      **        PERFORM DERNIER-IMPRIME
      **        PERFORM UNTIL W-PBThread-End = 1
      **                CALL "C$SLEEP" USING 0,1
      **        END-PERFORM
      **     END-IF
      **     .

100613*--- Vérification du tarif NEW HOLLAND (suppression d'un caractère spécial qui crée un décalage)
       VERIF-TARIF-NEWHOL.
           ACCEPT W-PRGMX FROM ENVIRONMENT "DIRMX"
           STRING W-PRGMX "/p/VERIF-NEWHOL" DELIMITED BY " "
                  " "        DELIMITED BY "  "
                  ASSIGN-SEQ DELIMITED BY " "
                  INTO W-COMMAND 
           CALL "C$SYSTEM" USING W-COMMAND.

290316*--- Conversion du tarif : UTF-8  --> ISO  
       CONVERT-UTF8.
           STRING "mv "             DELIMITED BY "  "
                  ASSIGN-SEQ        DELIMITED BY " "
                  " "               DELIMITED BY "  "
                  ASSIGN-SEQ ".ori" DELIMITED BY " " 
                  INTO W-COMMAND 
           CALL "C$SYSTEM" USING W-COMMAND.
           STRING "iconv -c -f UTF-8 -t ISO8859-1 " DELIMITED BY "   "      | Option -c permet d'ignorer les caractères non reconnus et évite d'avoir un fichier incomplet sous linux.
                  ASSIGN-SEQ ".ori" DELIMITED BY " "
                  " > "             DELIMITED BY "   "
                  ASSIGN-SEQ        DELIMITED BY " "
                  INTO W-COMMAND 
           CALL "C$SYSTEM" USING W-COMMAND.
      *
       Screen1-Pb-CRE-CATFOUK-Link.
      **     move "Création catalogue clés pour recherche ?" to acu-msg-1
      **     perform msg-on
      **     if acu-return-value = 1 
      **        MOVE 0 TO ScreenPatienter-PB-Visible 
160819***        COPY "../../mistral/copy/Mis-Patienter-Debut.cbl".
160819**        COPY "W:/mistral/copy/Mis-Patienter-Debut-Centre.cbl".
      **        PERFORM CRE-CATFOUK
      **        COPY "W:/mistral/copy/Mis-Patienter-Fin.cbl".
      **     end-if
           .
      *
      *
       Screen1-Pb-TARPER-Link.
      *     IF W-DESTAR = 1 AND W-CODTAR <> SPACES
      *        MOVE W-CODTAR TO LK-MTF-PAR-COD
      *     ELSE MOVE SPACES TO LK-MTF-PAR-COD.
      *     CALL "../../mx/o/mtf-par.acu" USING ZONE-PALM LK-MTF-PAR
      *     CANCEL "../../mx/o/mtf-par.acu"
           .
      ** Screen1-Pb-ANO-Link.
      **     MOVE W-FOU TO LK-MTF-ANO-FOU
      **     CALL "../../mx/o/mtf-ano.acu" USING ZONE-PALM LK-MTF-ANO
      **     CANCEL "../../mx/o/mtf-ano.acu"
           .

       Screen2-Pb-Quit-LinkTo.
           PERFORM Acu-Screen2-Exit
           .
      *
       Screen2-Aft-Initdata.
160819     MOVE Screen2-Handle TO MCF-HANDLE-FS
160819     PERFORM MisCentreFenetre
      **     MODIFY Screen2-Pb-Quit, visible 0    
160819*     COPY "W:/mistral/copy/Mis-ProgressBar.cbl"
120819     MOVE HANDLE-PALM TO MCF-HANDLE-FP
120819     COPY "W:/mistral/copy/Mis-ProgressBar-Centre.cbl" 
                  REPLACING ==PBTRAIT== BY ==TRAITEMENT==,
                            ==F-PBTRAIT== BY ==F-TRAITEMENT==,
                            ==PBSCREEN-Handle== BY ==SCREEN2-handle==.
         
      *     PERFORM TRAITEMENT THRU F-TRAITEMENT
           IF W-MAJCAT = 1 AND W-MAJTAR = 1
              MOVE "MAJ catalogue et tarif"  TO W-LIB2
              MODIFY SCREEN2-LA-TRAIT Title = W-LIB2 Visible = 1.
           MODIFY Screen2-La-WAIT visible 1 Title " Traitement Terminé"
      **     MODIFY Screen2-Pb-Quit, visible 1
           modify Screen2-Bt-1, visible 0
           .

           
250118*--- Spécifique VOLVO : 
      *    Les données "Code Maketing + Ligne Produit" donne un code Remise
      *    Ce code remise est obtenu à partir d'une table spéciale construite comme suit:
      *    "Code Maketing" ; "Ligne Produit" --> Code remise 
      *    Table: /acuf/mxg/fg/Table_Marketing_Codes_Volvo.csv
      *    C'est ce code remise qui est contenu dans la table de correspondance REMFOU
      *    Le "Code Maketing + Ligne Produit" ne peuvent pas être dans REMFOU car trop d'occurences (>200)
       MEP-TRIREM-VOLVO.
           STRING G-DIR       DELIMITED BY "  "
                  "/mxg/fg/"  DELIMITED BY SIZE
                  "Table_Code_Remise_Volvo.csv"    DELIMITED BY " "
                  INTO ASSIGN-TABREM.
           OPEN INPUT TABREM
           PERFORM STAT.
           MOVE "TRIREM-MTF" TO WASS-TRIREM
           copy "../../mx/copy/assign-fictmp.cbl" replacing 
              ==FICTMP==   by ==TRIREM==
              =='FICTMP'== by ==TRIREM==.
           .
       LECT-TABREM.
           MOVE SPACES TO ENR-TREM W-ZON1 W-ZON2 W-ZON3
           READ TABREM AT END GO F-MEP-TRIREM-VOLVO.
           PERFORM STAT
           UNSTRING ENR-TREM DELIMITED BY ";" 
               INTO W-ZON1 W-ZON2 W-ZON3
           IF W-ZON1 = SPACES AND W-ZON2 = SPACES GO LECT-TABREM.
           INITIALIZE ENR-TRIREM
           IF W-ZON2(2:) = SPACES AND  W-ZON2(1:1) NUMERIC    | La 'Ligne Produit' est sur 2 positions numériques
              MOVE W-ZON2(1:1) TO W-ZON2(2:1)
              MOVE "0"         TO W-ZON2(1:1)
           END-IF.
           STRING W-ZON1  DELIMITED BY " " 
                  W-ZON2  DELIMITED BY " "
                  INTO COD-TRIREM
           MOVE W-ZON3 TO CRE-TRIREM.
           WRITE ENR-TRIREM
           PERFORM STAT.
           GO LECT-TABREM.
       F-MEP-TRIREM-VOLVO.
           CLOSE TABREM.

       SPECIAL-REM-VOLVO.
           MOVE W-REM TO COD-TRIREM
           READ TRIREM INVALID MOVE SPACES TO W-REM.
           PERFORM STAT.
           MOVE CRE-TRIREM TO W-REM.

241019*--  Mise à jour date de validité du tarif
       MAJ-FOU.
           IF W-DAT-VAL = 0 EXIT PARAGRAPH.
           MOVE W-FOU TO COD-MFOU
           READ MXFOU LOCK INVALID EXIT PARAGRAPH
           END-READ
           PERFORM STAT.
           IF IND-STAT = 1 GO MAJ-FOU.
           MOVE W-DAT-VAL TO DVT-MFOU.
           REWRITE ENR-MFOU
           PERFORM STAT.


       

      *{Bench}end
       REPORT-COMPOSER SECTION.
