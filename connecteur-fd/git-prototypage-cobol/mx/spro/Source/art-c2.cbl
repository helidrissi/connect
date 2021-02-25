      *{Bench}prg-comment
      * art-c2.cbl
      * art-c2.cbl is generated from W:\mx\spro\art-c2.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. art-c2.
       AUTHOR. fatima-zahra.selouan.
       DATE-WRITTEN. jeudi 16 juillet 2020 15:15:25.
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
       COPY "MXMARQUE.sl".
       COPY "MXFOU.sl".
       COPY "MXGRAFAM.sl".
       COPY "MXFAMART.sl".
       COPY "MXARTSA.sl".
       COPY "MXART.sl".
       COPY "MXART2.sl".
       COPY "MXARTSA2.sl".
       COPY "MXCATFOU.sl".
       COPY "MXART3.sl".
       COPY "MXDOCTEC.sl".
       COPY "MXDOCTEC2.sl".
       COPY "ATTACH.sl".
       COPY "MXDOCTECEXT.sl".
       COPY "MXAGENCE.sl".
      *{Bench}end
       DATA                        DIVISION.
       FILE                        SECTION.
      *{Bench}file
       COPY "COBCAP.fd".
       COPY "MXPARAM.fd".
       COPY "MXMARQUE.fd".
       COPY "MXFOU.fd".
       COPY "MXGRAFAM.fd".
       COPY "MXFAMART.fd".
       COPY "MXARTSA.fd".
       COPY "MXART.fd".
       COPY "MXART2.fd".
       COPY "MXARTSA2.fd".
       COPY "MXCATFOU.fd".
       COPY "MXART3.fd".
       COPY "MXDOCTEC.fd".
       COPY "MXDOCTEC2.fd".
       COPY "ATTACH.fd".
       COPY "MXDOCTECEXT.fd".
       COPY "MXAGENCE.fd".
      *{Bench}end
       WORKING-STORAGE             SECTION.
      *{Bench}acu-def
       COPY "acugui.def".
       COPY "acucobol.def".
       COPY "crtvars.def".
       COPY "palette.def".
       COPY "showmsg.def".
      *{Bench}end
       COPY  "W:\mistral\copy\recherche-photo.wrk".

      *{Bench}copy-working
       77 Key-Status IS SPECIAL-NAMES CRT STATUS PIC 9(5) VALUE 0.
           88 Exit-Pushed VALUE 27.
           88 Event-Occurred VALUE 96.
      * property-defined variable

      * user-defined variable
           COPY  "Cm-MART-INO.wrk".
           COPY  "numval.wrk".
           COPY  "Mis-EnregOccupe.wrk".
           COPY  "gencod.wrk".
           COPY  "LK-ART-ASA.wrk".
           COPY  "LK-VCF-C.wrk".
           COPY  "LK-LISTE.wrk".
           COPY  "LK-MART-L.wrk".
           COPY  "LK-CDOCTEC.wrk".
           COPY  "arrondi.wrk".
           COPY  "Ef-Date.wrk".
           COPY  "Cm-MART-POL.wrk".
           COPY  "Cm-MTUN.wrk".
           COPY  "LK-MTYM-L.wrk".
           COPY  "LK-MGFA-T.wrk".
           COPY  "LK-MFOU-L.wrk".
           COPY  "LK-SCODART-L.wrk".
           COPY  "cobcap.wrk".
           COPY  "LK-CALPVART.wrk".
           COPY  "lk-att.wrk".
       77 Screen1-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
           COPY  "LK-ATT-AUTRES.WRK".
       77 Screen1-St-1-Handle
                  USAGE IS HANDLE OF STATUS-BAR VALUE NULL.
       77 Default-Font
                  USAGE IS HANDLE OF FONT DEFAULT-FONT.
       77 Small-Font
                  USAGE IS HANDLE OF FONT SMALL-FONT.
       77 USERxxx20-JPG    PIC  S9(9)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FLECHEG24-JPG    PIC  S9(9)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FLECHED24-JPG    PIC  S9(9)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 RAFRAIC24-JPG    PIC  S9(9)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 MODIFIE24-JPG    PIC  S9(9)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 SAUVEGA24-JPG    PIC  S9(9)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 CREERxx24-JPG    PIC  S9(9)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-ART            PIC  X(20).
       77 SUPPRIM24-JPG    PIC  S9(9)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ZOOMxxx12-JPG    PIC  S9(9)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 EXPANDxx7-JPG    PIC  S9(9)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 COLLAPSE7-JPG    PIC  S9(9)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 INFORMA12-JPG    PIC  S9(9)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TELEPHO24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 CDFB PIC  X.
       77 W-MXPARAM        PIC  9(9).
       77 W-MXTABUNI       PIC  9(9).
       77 DEVI-FILE-STATUS PIC  X(2).
           88 Valid-DEVI-FILE-STATUS VALUE IS "00" THRU "09". 
       77 W-MXTABARR       PIC  9(9).
       77 MODU-LANDA       PIC  9
                  VALUE IS 0.
       77 MODU-DECO        PIC  9
                  VALUE IS 0.
       77 Id-Fiche-Courante            PIC  X(20).
       77 Backup-Cle       PIC  9(3).
       77 isSearching      PIC  9
                  VALUE IS 1.
       77 isCreating       PIC  9
                  VALUE IS 0.
       77 isModifying      PIC  9
                  VALUE IS 1.
       77 isValid          PIC  9
                  VALUE IS 0.
       77 isPreviousVisible            PIC  9
                  VALUE IS 1.
       77 isNextVisible    PIC  9
                  VALUE IS 1.
       77 isRefreshVisible PIC  9
                  VALUE IS 1.
       77 isModifyVisible  PIC  9
                  VALUE IS 1.
       77 isValidVisible   PIC  9
                  VALUE IS 1.
       77 isAddVisible     PIC  9
                  VALUE IS 1.
       77 isDeleteVisible  PIC  9
                  VALUE IS 1.
       77 isTYPVisible     PIC  9
                  VALUE IS 1.
       77 isMoteurFrVisible            PIC  9
                  VALUE IS 0.
       77 isMoteurPbVisible            PIC  9
                  VALUE IS 1.
       77 isIMOVisible     PIC  9
                  VALUE IS 1.
       77 isTarifPbVisible PIC  9
                  VALUE IS 1.
       77 isLeftVisible    PIC  9
                  VALUE IS 1.
       77 isVOLVisible     PIC  9
                  VALUE IS 1.
       77 isPOIVisible     PIC  9
                  VALUE IS 1.
       77 isRightVisible   PIC  9
                  VALUE IS 1.
       77 isTarifFrVisible PIC  9
                  VALUE IS 0.
       77 isITCVisible     PIC  9
                  VALUE IS 0.
       77 isRTGDaGdVisible PIC  9
                  VALUE IS 0.
       77 isPVNDaGdVisible PIC  9
                  VALUE IS 0.
       77 isPxUniteVisible PIC  9
                  VALUE IS 1.
       77 isUPRVisible     PIC  9
                  VALUE IS 1.
       77 isNUUVisible     PIC  9
                  VALUE IS 1.
       77 isDOCVisible     PIC  9
                  VALUE IS 1.
       77 isPDEVisible     PIC  9
                  VALUE IS 1.
       77 isPACVisible     PIC  9
                  VALUE IS 1.
       77 isPTFVisible     PIC  9
                  VALUE IS 1.
       77 isRFIVisible     PIC  9
                  VALUE IS 1.
       77 isPrixRevientVisible         PIC  9
                  VALUE IS 1.
       77 isCRFVisible     PIC  9
                  VALUE IS 1.
       77 isREMVisible     PIC  9
                  VALUE IS 1.
       77 isCOEVisible     PIC  9
                  VALUE IS 1.
       77 isFUAVisible     PIC  9
                  VALUE IS 1.
       77 isPFAVisible     PIC  9
                  VALUE IS 1.
       77 isIFAVisible     PIC  9
                  VALUE IS 1.
       77 isCFUVisible     PIC  9
                  VALUE IS 1.
       77 isFraisApprocheVisible       PIC  9
                  VALUE IS 1.
       77 isILVVisible     PIC  9
                  VALUE IS 1.
       77 isPRMPVisible    PIC  9
                  VALUE IS 1.
       77 isCoursVisible   PIC  9
                  VALUE IS 1.
       77 isArrondiVisible PIC  9
                  VALUE IS 1.
       77 isPATVisible     PIC  9
                  VALUE IS 1.
       77 isCARTMAVisible  PIC  9
                  VALUE IS 1.
       77 isPrintVisible   PIC  9
                  VALUE IS 1.
       77 isZSP1Visible    PIC  9
                  VALUE IS 1.
       77 isZSP2Visible    PIC  9
                  VALUE IS 1.
       77 isZSP3Visible    PIC  9
                  VALUE IS 1.
       77 isZSP4Visible    PIC  9
                  VALUE IS 1.
       77 isZSC1Visible    PIC  9
                  VALUE IS 1.
       77 isZSC2Visible    PIC  9
                  VALUE IS 1.
       77 isZSC3Visible    PIC  9
                  VALUE IS 1.
       77 isZSC4Visible    PIC  9
                  VALUE IS 1.
       77 isZSN1Visible    PIC  9
                  VALUE IS 1.
       77 isZSN2Visible    PIC  9
                  VALUE IS 1.
       77 isZSN3Visible    PIC  9
                  VALUE IS 1.
       77 isZSN4Visible    PIC  9
                  VALUE IS 1.
       77 isZSA1Visible    PIC  9
                  VALUE IS 1.
       77 isZSA2Visible    PIC  9
                  VALUE IS 1.
       77 isZSA3Visible    PIC  9
                  VALUE IS 1.
       77 isZSA4Visible    PIC  9
                  VALUE IS 1.
       77 isINOVisible     PIC  9
                  VALUE IS 1.
       77 IsGCODVisible    PIC  9
                  VALUE IS 1.
       77 Tmp-9-2          PIC  9(2).
       77 Tmp-9-3          PIC  9(3).
       77 I    PIC  9(3).
       77 J    PIC  9(3).
       77 K    PIC  9(3).
       77 Z    PIC  9(3).
       77 W    PIC  9(3).
       77 W-LIB-GRA-MART   PIC  X(25).
       77 W-LIB-FAM-MART   PIC  X(25).
       77 W-LIB-Tarif      PIC  X(45)
                  VALUE IS "Composition du Prix de Vente TTC".
       77 W-NAT-MART       PIC  9(1)
                  VALUE IS 0.
       77 W-ICO-MART       PIC  9(1)
                  VALUE IS 0.
       77 W-ILV-MART       PIC  9(1)
                  VALUE IS 0.
       77 W-ITC-MART       PIC  9(1)
                  VALUE IS 0.
       77 W-TAR-MART       PIC  9(1)
                  VALUE IS 0.
       77 W-DAT-MART       PIC  X(10).
       77 W-LIB-MAR-MMAR   PIC  X(20).
       77 W-LIB-MARM-MMAR  PIC  X(20).
       77 W-IPO-POI-MART   PIC  X(3)
                  VALUE IS "Kg".
       77 W-LIB-DEV        PIC  X(20)
                  VALUE IS "EURO".
       77 W-LINE           PIC  S999V99.
       77 W-DELTA-COL-Ef   PIC  S999V9(4).
       77 W-DELTA-COL-Lib  PIC  S999V9(4).
       77 W-DELTA-COL-Bt   PIC  S999V9(4).
       77 W-DELTA-COL-Btt  PIC  S999V9(4).
       77 W-COL1           PIC  S999V9(4).
       77 W-COLM           PIC  S999V9(4).
       77 W-COL2           PIC  S999V9(4).
       77 W-PVT-L          PIC  S9(10)V99.
       77 W-DIF-L          PIC  S9(7)V99.
       77 W-MAR-L          PIC  S9(3)V99.
       77 W-PR PIC  S9(10)V99.
       77 W-MargeUnit      PIC  S9(10)V99.
       77 W-MargeBrute     PIC  S9(10)V99.
       77 W-MontantTVA     PIC  9(10)V99.
       77 W-PrixRevient    PIC  9(10)V99.
       77 W-MontantRemise  PIC  S9(7)V99.
       77 W-FraisApproche  PIC  9(9)V99.
       77 W-PTFSurUV       PIC  9(10)V99.
       77 W-TMP            PIC  S9(10)V99.
       01 W-TAB-NIA        PIC  X(36)
                  VALUE IS "  0,05  0,10  0,50  1,00 10,00100,00".
       01 W-TAB-NIA-R REDEFINES W-TAB-NIA.
           05 TAB-NIA          PIC  X(6)
                      OCCURS 6 TIMES.
       01 W-TAB-MOA        PIC  X(39)
                  VALUE IS " au + Proche  Inférieur    Supérieur   ".
       01 R-W-TAB-MOA REDEFINES W-TAB-MOA.
           02 TAB-MOA          PIC  X(13)
                      OCCURS 3 TIMES.
       01 W-Arrondi.
           05 W-Arrondi-NIA    PIC  X(6).
           05 FILLER           PIC  X.
           05 W-Arrondi-MOA    PIC  X.
       77 W-REM            PIC  S9(7)V99.
       77 T-CRF            PIC  9(3).
       77 W-PTF            PIC  S9(10)V99.
       77 W-MON            PIC  S9(10)V9999.
       77 W-PAC            PIC  S9(10)V99.
       77 W-TTC            PIC  9(10)V99.
       77 W-FUA            PIC  S9(9)V99.
       77 W-PDE-LIB        PIC  X(20)
                  VALUE IS "Tarif en Devise".
       77 W-PTF-LIB        PIC  X(25)
                  VALUE IS "Tarif Fournisseur".
       77 W-ENR-MART-Original          PIC  X(1024).
       77 Screen1-DaGd-RTG-RAN         PIC  9(1).
       77 Screen1-DaGd-RTG-BINF        PIC  9(5).
       77 Screen1-DaGd-RTG-BSU         PIC  9(5).
       77 Screen1-DaGd-RTG-RTG         PIC  9(2)V9(2).
       77 Screen1-DaGd-RTG-PVT         PIC  S9(7)V9(2).
       77 Screen1-DaGd-RTG-DIF         PIC  S9(7)V9(2).
       77 Screen1-DaGd-RTG-MAR         PIC  S9(3)V99.
       77 Screen1-DaGd-PVN-RAN         PIC  9(1).
       77 Screen1-DaGd-PVN-BINF        PIC  9(5).
       77 Screen1-DaGd-PVN-BSU         PIC  9(5).
       77 Screen1-DaGd-PVN-PVN         PIC  S9(10)V99.
       77 Screen1-DaGd-PVN-DIF         PIC  S9(10)V9(2).
       77 Screen1-DaGd-PVN-MAR         PIC  S9(3)V99.
       77 COD-MART-Color   PIC  9(6)
                  VALUE IS 112.
       77 FOU-MART-Color   PIC  9(6)
                  VALUE IS 2.
       77 GRA-FAM-MART-Color           PIC  9(6)
                  VALUE IS 2.
       77 REF-MART-Color   PIC  9(6)
                  VALUE IS 2.
       77 DES-MART-Color   PIC  9(6)
                  VALUE IS 2.
       77 POL-MART-Color   PIC  9(6)
                  VALUE IS 2.
       77 INO-MART-Color   PIC  9(6)
                  VALUE IS 2.
       77 UPR-MART-Color   PIC  9(6)
                  VALUE IS 2.
       77 NUU-MART-Color   PIC  9(6)
                  VALUE IS 2.
       77 PAC-MART-Color   PIC  9(6)
                  VALUE IS 2.
       77 MargeUnit-Color  PIC  9(6)
                  VALUE IS 2.
       77 PVT-MART-Color   PIC  9(6)
                  VALUE IS 2.
       77 Medium-Font
                  USAGE IS HANDLE OF FONT MEDIUM-FONT.
       77 COD-MART-Font
                  USAGE IS HANDLE OF FONT SMALL-FONT.
       77 GRA-FAM-MART-Font
                  USAGE IS HANDLE OF FONT SMALL-FONT.
       77 RFN-MART-Font
                  USAGE IS HANDLE OF FONT SMALL-FONT.
       77 RFI-MART-Font
                  USAGE IS HANDLE OF FONT SMALL-FONT.
       77 DES-MART-Font
                  USAGE IS HANDLE OF FONT SMALL-FONT.
       77 FOU-MART-Font
                  USAGE IS HANDLE OF FONT SMALL-FONT.
       77 REF-MART-Font
                  USAGE IS HANDLE OF FONT SMALL-FONT.
       01 Screen1-Cm-ModeRecherche-Preselect       PIC  9.
       01 Screen1-Cm-ModeRecherche-Container-Item.
           05 Screen1-Cm-ModeRecherche-LIB PIC  X(23).
       01 Screen1-Cm-ModeRecherche-NUM PIC  9.
       77 Screen1-Cm-ModeRecherche-Container       PIC  X(24)
                  OCCURS 1 TIMES.
       77 Screen1-Cm-ModeRecherche-Premiere-Ligne  PIC  X(24).
       77 isIDFEnabled     PIC  9
                  VALUE IS 1.
       77 isPVTEnabled     PIC  9
                  VALUE IS 1.
       77 isTTCEnabled     PIC  9
                  VALUE IS 1.
       77 isCOEEnabled     PIC  9
                  VALUE IS 1.
       77 isPACEnabled     PIC  9
                  VALUE IS 0.
       77 isPDEEnabled     PIC  9
                  VALUE IS 0.
       77 isPATEnabled     PIC  9
                  VALUE IS 1.
       77 isREMEnabled     PIC  9
                  VALUE IS 1.
       77 isGRAFAMEnabled  PIC  9
                  VALUE IS 1.
       77 isDESEnabled     PIC  9
                  VALUE IS 1.
       77 isDes2Enabled    PIC  9
                  VALUE IS 1.
       77 isCODEnabled     PIC  9
                  VALUE IS 1.
       77 isFOUEnabled     PIC  9
                  VALUE IS 1.
       77 isREFEnabled     PIC  9
                  VALUE IS 1.
       77 isRFNEnabled     PIC  9
                  VALUE IS 1.
       77 isRFIEnabled     PIC  9
                  VALUE IS 1.
       77 isCRFEnabled     PIC  9.
       77 isUPREnabled     PIC  9
                  VALUE IS 1.
       77 isNUUEnabled     PIC  9
                  VALUE IS 1.
       77 isPTFEnabled     PIC  9
                  VALUE IS 1.
       77 INV-MXPARZSP     PIC  9.
       77 INV-MXZSPSOC     PIC  9.
       77 W-ZSP-G1         PIC  9.
       77 W-ZSP-G2         PIC  9.
       77 W-ZSP-F1         PIC  9.
       77 W-ZSP-F2         PIC  9.
       77 W-TDZ1           PIC  9.
       77 W-TDZ2           PIC  9.
       77 W-TDZ3           PIC  9.
       77 W-TDZ4           PIC  9.
       77 W-NBC1           PIC  99.
       77 W-NBC2           PIC  99.
       77 W-NBC3           PIC  99.
       77 W-NBC4           PIC  99.
       77 W-ZSPC1          PIC  X(3).
       77 W-ZSPC2          PIC  X(3).
       77 W-ZSPC4          PIC  X(3).
       77 W-ZSPC3          PIC  X(3).
       77 W-ZSPN1          PIC  Z(10).
       77 W-ZSPN2          PIC  Z(10).
       77 W-ZSPN3          PIC  Z(10).
       77 W-ZSPN4          PIC  Z(10).
       77 W-ZSPA1          PIC  X(30).
       77 W-ZSPA2          PIC  X(30).
       77 W-ZSPA3          PIC  X(30).
       77 W-ZSPA4          PIC  X(30).
       77 W-LZSC1          PIC  X(30).
       77 W-LZSC2          PIC  X(30).
       77 W-LZSC3          PIC  X(30).
       77 W-LZSC4          PIC  X(30).
       77 W-LIB-ZSP1       PIC  X(20).
       77 W-LIB-ZSP2       PIC  X(20).
       77 W-LIB-ZSP3       PIC  X(20).
       77 W-LIB-ZSP4       PIC  X(20).
       01 Screen1-BUF.
           05 Screen1-DaEf-FOU-MART-BUF    PIC  Z(6).
           05 Screen1-DaEf-UPR-MART-BUF    PIC  Z(5).
           05 Screen1-DaEf-NUU-MART-BUF    PIC  ZZZ9,9999
                      BLANK WHEN ZERO.
           05 Screen1-Ef-PTF-MART-BUF      PIC  ZZZZZZZZZ9,99
                      BLANK WHEN ZERO.
           05 Screen1-Ef-PTFEUR-BUF        PIC  ZZZZZZZZZ9,99
                      BLANK WHEN ZERO.
           05 Screen1-DaEf-PTFSurUV-BUF    PIC  ZZZZZZZZZ9,99
                      BLANK WHEN ZERO.
           05 Screen1-Ef-CRF-MART-BUF      PIC  99.
           05 Screen1-Ef-REM-MART-BUF      PIC  -Z9,99
                      BLANK WHEN ZERO.
           05 Screen1-Ef-CRS-BUF           PIC  ZZ9,99999
                      BLANK WHEN ZERO.
           05 Screen1-DaEf-PAT-MART-BUF    PIC  ZZZZZZZZZ9,99
                      BLANK WHEN ZERO.
           05 Screen1-Ef-PAC-MART-BUF      PIC  ZZZZZZZZZ9,99
                      BLANK WHEN ZERO.
           05 Screen1-Ef-COE-MART-BUF      PIC  Z9,999
                      BLANK WHEN ZERO.
           05 Screen1-DaEf-PRI-MART-BUF    PIC  ZZZZZZZZZ9,99
                      BLANK WHEN ZERO.
           05 Screen1-DaEf-PrixRevient-BUF PIC  ZZZZZZZZZ9,99
                      BLANK WHEN ZERO.
           05 Screen1-DaEf-TXM-MART-BUF    PIC  Z9,99
                      BLANK WHEN ZERO.
           05 Screen1-DaEf-FUA-MART-BUF    PIC  ZZZZZZZ9,99
                      BLANK WHEN ZERO.
           05 Screen1-DaEf-PFA-MART-BUF    PIC  Z9,99
                      BLANK WHEN ZERO.
           05 Screen1-DaEf-CFU-MART-BUF    PIC  9,999
                      BLANK WHEN ZERO.
           05 Screen1-DaEf-FraisApproche-BUF           PIC  ZZZZZZZZ9,99
                      BLANK WHEN ZERO.
           05 Screen1-DaEf-PVT-MART-BUF    PIC  ZZZZZZZZZ9,99
                      BLANK WHEN ZERO.
           05 Screen1-DaEf-MontantTVA-BUF  PIC  ZZZZZZZZZ9,99
                      BLANK WHEN ZERO.
           05 Screen1-DaEf-TTC-MART-BUF    PIC  ZZZZZZZZZ9,99
                      BLANK WHEN ZERO.
           05 Screen1-DaEf-MargeUnit-BUF   PIC  -------9,99
                      BLANK WHEN ZERO.
           05 Screen1-DaEf-MargeBrute-BUF  PIC  -------9,99
                      BLANK WHEN ZERO.
           05 Screen1-DaEf-CRC-MART-BUF    PIC  Z(3).
           05 Screen1-DaEf-PRMP-MASA-BUF   PIC  ZZZZZZZZZ9,99
                      BLANK WHEN ZERO.
           05 Screen1-DaEf-UAC-MART-BUF    PIC  Z(5).
           05 Screen1-DaEf-UVE-MART-BUF    PIC  Z(5).
           05 Screen1-DaEf-VOL-MART-BUF    PIC  ZZZ9,99
                      BLANK WHEN ZERO.
           05 Screen1-DaEf-POI-MART-BUF    PIC  ZZZZ9,999
                      BLANK WHEN ZERO.
           05 Screen1-DaGd-RTG-BUF.
               06 Screen1-DaGd-RTG-BUF-1       PIC  9(1).
               06 Screen1-DaGd-RTG-BUF-2       PIC  Z(5).
               06 Screen1-DaGd-RTG-BUF-3       PIC  Z(5).
               06 Screen1-DaGd-RTG-BUF-4       PIC  Z9,99
                          BLANK WHEN ZERO.
               06 Screen1-DaGd-RTG-BUF-5       PIC  -------9,99
                          BLANK WHEN ZERO.
               06 Screen1-DaGd-RTG-BUF-6       PIC  -------9,99
                          BLANK WHEN ZERO.
               06 Screen1-DaGd-RTG-BUF-7       PIC  ---9,99
                          BLANK WHEN ZERO.
           05 Screen1-DaGd-PVN-BUF.
               06 Screen1-DaGd-PVN-BUF-1       PIC  9(1).
               06 Screen1-DaGd-PVN-BUF-2       PIC  Z(5).
               06 Screen1-DaGd-PVN-BUF-3       PIC  Z(5).
               06 Screen1-DaGd-PVN-BUF-4       PIC  ----------9,99
                          BLANK WHEN ZERO.
               06 Screen1-DaGd-PVN-BUF-5       PIC  ----------9,99
                          BLANK WHEN ZERO.
               06 Screen1-DaGd-PVN-BUF-6       PIC  ---9,99
                          BLANK WHEN ZERO.
           05 Screen1-DaEf-RFI-MART-BUF    PIC  X(8).
           05 Screen1-DaEf-RFIN-MART-BUF REDEFINES 
           Screen1-DaEf-RFI-MART-BUF  PIC  Z(8).
       77 W-NUM-KEY-MXART2 PIC  9(1).
       77 W-NPR-PALM       PIC  9(4)
                  VALUE IS 10.
       77 W-LOG-PALM       PIC  9(3)
                  VALUE IS 25.
       77 W-ENR-MART-BUF   PIC  X(1024).
       01 W-LIB-TVA.
           05 W-LIB-TVA-TXT    PIC  X(4)
                      VALUE IS "TVA".
           05 W-LIB-TVA-VAL    PIC  Z9,9
                      BLANK WHEN ZERO.
           05 W-LIB-TVA-PCT    PIC  X
                      VALUE IS "%".
           05 W-PR-3           PIC  S9(10)V99.
       01 W-Cm-IFA-MART
                  OCCURS 3 TIMES.
           02 FILLER           PIC  X(25).
           02 W-IFA-MART       PIC  9.
       77 W-LIB-COEF       PIC  X(10)
                  VALUE IS "Coef.".
       77 W-LIB-PTF        PIC  X(25).
       77 T-REM            PIC  S999V99.
       77 A-EOF            PIC  9.
       77 W-BORNE          PIC  9(5).
       77 SV-GRA           PIC  99.
       77 SV-FAM           PIC  99.
       77 SV-FOU           PIC  9(6).
       77 SV-MAR           PIC  X(4).
       77 SV2-GRA          PIC  99.
       77 SV2-FAM          PIC  99.
       77 SV2-FOU          PIC  9(6).
       77 SV2-CNUF         PIC  9(9).
       77 SV-NUU           PIC  9(4)V9999.
       77 SV-UPR           PIC  9(5).
       77 SV-IPO           PIC  9.
       77 SV-INO           PIC  9.
       77 SV-INO-MART      PIC  9.
       77 SV-CDFB          PIC  X.
       77 SV-REF           PIC  X(21).
       77 SVC-REF          PIC  X(21).
       77 W-OK PIC  9.
       77 W-CONFIRM        PIC  9.
       77 W-REF            PIC  X(21).
       77 C-REF            PIC  X(21).
       77 W-FOU            PIC  9(6).
       77 W-OBS            PIC  X(20).
       77 C-CRC            PIC  9.
       77 WC-PTF           PIC  9(10)V99.
       77 WC-PAC           PIC  9(10)V99.
       01 W-HEU            PIC  9(4)V99.
       01 R-W-HEU REDEFINES W-HEU.
           02 W-HEU1           PIC  9(4).
           02 W-HEU2           PIC  99.
       77 NUM-LINES        PIC  S9(4)V9(2)
                  VALUE IS 66,15.
       77 D72  PIC  ZZZZZZZZZ9,99.
       77 D72-2            PIC  ZZZZZZZZZ9,99.
       77 D72-3            PIC  ZZZZZZZZZ9,99.
       77 D72-4            PIC  ZZZZZZZZZ9,99.
       77 PERSON-FILE-STATUS           PIC  X(2).
           88 Valid-PERSON VALUE IS "00" THRU "09". 
       77 COMPOSI12-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ZOOMxxx10-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 DUPLIQU12-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-LINE-RTG       PIC  S9(4)V9(2)
                  VALUE IS 56,15.
       77 W-LINE-MOT1      PIC  S9(4)V9(2)
                  VALUE IS 60,69.
       77 W-LINE-MOT2      PIC  S9(4)V9(2)
                  VALUE IS 62,31.
       77 isPbVisible      PIC  9
                  VALUE IS 0.
       77 W-LIB            PIC  X(40).
       77 W-GRA            PIC  99.
       77 W-FAM            PIC  99.
       77 isPhotoVisible   PIC  9
                  VALUE IS 0.
       77 W-ACTIV          PIC  S9(1)
                  VALUE IS 1.
       77 isMODEnabled     PIC  9
                  VALUE IS 1.
       77 Large-Font
                  USAGE IS HANDLE OF FONT LARGE-FONT.
       77 MODIFIE12-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 MODIFIE16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 CREERxx16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 CREERxx12-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 IsMODVisible     PIC  9
                  VALUE IS 0.
       77 IsMODNVisible    PIC  9
                  VALUE IS 0.
       77 INFORMB12-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 INFORMB16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 IsCreatGCODVisible           PIC  9
                  VALUE IS 1.
       77 CODEBAR16-jpg    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 isLAF2Visible    PIC  9
                  VALUE IS 1.
       77 W-STOCK          PIC  S9(7)V99.
       77 STYLETX16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 DxSAISI16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 STYLETX16JPG     PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 w-status         PIC  S9(3).
       77 acu-version      PIC  X(64).
       77 W-ANREF          PIC  X(20).
       77 W-LIBZ           PIC  X(55).
       77 SV-COD           PIC  X(20).
       77 SV-ORD           PIC  9(7)
                  VALUE IS 0.
      *
      *
       77 W-NB-ANREF       PIC  99.
       77 W-TAB-ANREF      PIC  X(20)
                  OCCURS 50 TIMES.
       77 W-EOF-MAMA       PIC  9.
       77 W-EOF-MLCF       PIC  9.
       77 Copy-of-I        PIC  9(3).
       77 PARAMRG24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 EQUIVAL24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ANCREFE24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ECHASTD24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 COMPLEM24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 PARAMST24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ANCREF324-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TERMINX24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-NBR            PIC  9(3).
       77 W-IND            PIC  9.
       77 NB-ACCEPT        PIC  9(3).
       77 W-CRE            PIC  X(28)
                  VALUE IS "Créé le".
       77 W-MOD            PIC  X(36)
                  VALUE IS "Modifié le".
       77 W-COL-RTG        PIC  S9(4)V9(2)
                  VALUE IS 68,86.
       77 WARNING32-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ScreenInex-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 Screen1-Mn-1-Handle
                  USAGE IS HANDLE OF MENU VALUE NULL.
       77 ScreenDup-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 VALIDER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ANNULER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       01 W-DUP.
           05 W-DU1            PIC  X(4).
           05 W-DU2            PIC  X(16).
       77 W-MODE-DUP       PIC  9.
       77 W-RFI            PIC  9(8).
       77 ZOOMxxx16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 WARNINx16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 WARNING24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 WARNING32-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 WARNING24-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 1xxxxxx12-bmp    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-DUP-DOC        PIC  9
                  VALUE IS 0.
       77 W-DUP-MUL        PIC  9
                  VALUE IS 0.
       77 W-DUP-INO        PIC  9
                  VALUE IS 0.
       77 isDupDocVisible  PIC  9
                  VALUE IS 1.
       77 isDupMulVisible  PIC  9
                  VALUE IS 1.
       77 isDupInoVisible  PIC  9
                  VALUE IS 1.
       77 INDSPVT          PIC  9.
       77 isPbASAVisible   PIC  9
                  VALUE IS 1.
       77 SV-TVA           PIC  9.
       77 SV-SPVT          PIC  9.
       77 W-COE-REMFOU     PIC  9.
       77 W-COE-CTF        PIC  99V999.
       77 W-CRC-REMFOU     PIC  9.
       77 Screen1-Ef-PAC-NUU-BUF       PIC  ZZZZZZ9,99
                  BLANK WHEN ZERO.
       77 AUTO-MULTIAPPRO  PIC  9.
       77 AUTO-MARBLAN     PIC  9.
       77 AUTO-CREHC       PIC  9.
       77 AUTO-MODGCOD     PIC  9.
       77 AUTO-VISU-PFNA   PIC  9.
       77 isMULEnabled     PIC  9
                  VALUE IS 1.
       77 W-POI-MCTF       PIC  9(7).
       77 FILE-STATUS      PIC  X(2).
           88 Valid-MXEDITAR VALUE IS "00" THRU "09". 
       77 TROMBO324-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TROMBON24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-MXTABCOE       PIC  9(9).
       77 W-GRICOE         PIC  999.
       77 IsPlancheVisible PIC  9
                  VALUE IS 0.
       77 IsNATEnabled     PIC  9
                  VALUE IS 0.
       77 NEUF-INT         PIC  9
                  VALUE IS 1.
       77 OCCAS-INT        PIC  9
                  VALUE IS 1.
       77 MODU-WEBTOP      PIC  9
                  VALUE IS 0.
       77 isRight2Visible  PIC  9
                  VALUE IS 1.
       77 isICAREFVisible  PIC  9
                  VALUE IS 0.
       77 sv-cob           PIC  X(40).
       77 W-AGE-VCF        PIC  X(3).
       77 W-EOF-TTSO       PIC  9.
       77 AUTRSO224-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-MXPARAM2       PIC  9(9).
       01 Screen1-Gd-SOC-Record.
           05 Gd-1-Col-SOC     PIC  9(4).
           05 Gd-1-Col-NSOC    PIC  X(40).
           05 Gd-1-Col-COE     PIC  Z9,999.
           05 Gd-1-Col-PP      PIC  X(08).
           05 Gd-1-Col-PTF     PIC  ZZZBZZ9,99.
           05 Gd-1-Col-REM     PIC  ZZ9,99
                      BLANK WHEN ZERO.
           05 Gd-1-Col-PA      PIC  ZZZBZZ9,99.
           05 Gd-1-Col-PV      PIC  ZZZBZZ9,99.
       77 ASSIGN-MXPARAM5  PIC  X(32).
       77 W-MXPARAM5       PIC  9(9).
       77 ASSIGN-MXPARAM4  PIC  X(32).
       77 W-MXPARAM4       PIC  9(9).
       77 W-NOMSOC-MART    PIC  X(20).
       77 gd-soc-cursor-y  PIC  9(3).
       77 W-SOC            PIC  9(4).
       77 W-TYP-ACP        PIC  X.
       77 W-EXI-ACP        PIC  9.
       77 W-SOC1           PIC  9(4)
                  VALUE IS 1.
       77 SV-MXART-COB     PIC  X(40).
       77 RAFRAIC16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 RAFRAIC12-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 IsSocVisible     PIC  9
                  VALUE IS 1.
       77 W-texte-St       PIC  X(200).
       77 isModifying2     PIC  9
                  VALUE IS 1.
       77 IsPvtVisible     PIC  9
                  VALUE IS 1.
       77 W-COLOR-SOC      PIC  9(6)
                  VALUE IS 482.
       77 IsSOCARTVisible  PIC  9
                  VALUE IS 1.
       77 W-TIT-SOCART     PIC  X(50)
                  VALUE IS "Société appartenance".
       77 W-CXSOC          PIC  9(9).
       77 Cpte-Supprime    PIC  9
                  VALUE IS 0.
       77 PICX50           PIC  X(50).
       77 isPDEEnable      PIC  9
                  VALUE IS 0.
       77 SOC-MART-Color   PIC  9(6)
                  VALUE IS 2.
       77 isSOCEnabled     PIC  9
                  VALUE IS 1.
       77 W-UNI-VOL-MART   PIC  X(3)
                  VALUE IS "m3".
       77 CENTER316-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 IsTRAVisible     PIC  9
                  VALUE IS 0.
       77 W-COE-SAI        PIC  9.
       77 SV-PAC           PIC  9(10)99.
       77 IsNAT3Enabled    PIC  9
                  VALUE IS 0.
       77 W-CLIGNOTE       PIC  9.
       77 W-COL-CLIGNOTE   PIC  9(3).
       77 W-ENA-CLIGNOTE   PIC  9.
       77 CLIGNOTE-Handle
                  USAGE IS HANDLE OF THREAD VALUE NULL.
       77 EQUIVA324-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ECHAST324-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 COMPLE324-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 SV-GFA           PIC  X(4).
       77 SV-NAT           PIC  9.
       77 La-POI-MART      PIC  X(15)
                  VALUE IS "Poids/Cond Ach.".
       77 RECHERC24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ScreenPres-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       01 ScreenPres-Gd-1-Record.
           05 ScreenPres-Gd-1-ORI          PIC  X.
           05 ScreenPres-Gd-1-ART          PIC  X(20).
           05 ScreenPres-Gd-1-DES          PIC  X(40).
           05 ScreenPres-Gd-1-QTE          PIC  X(9).
       77 ScreenPres-Gd-1-Cursor-Y     PIC  9(3).
       77 SV-LK-ART-C      PIC  X(200).
       01 W-QTE            PIC  9(6)V99.
       01 W-QTE-R REDEFINES W-QTE.
           05 W-QTE1           PIC  9(6).
           05 W-QTE2           PIC  9(2).
       77 W-PICZ6          PIC  Z(6).
       77 W-PICZ6V2        PIC  Z(5)9,99
                  BLANK WHEN ZERO.
       77 COMPOKI12-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 EQUIVAL12-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 COMPLEM12-jpg    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ECHASTD12-jpg    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 w-eof-ota        PIC  9.
       77 ScreenPres-Mn-1-Handle
                  USAGE IS HANDLE OF MENU VALUE NULL.
       77 ScreenOTA-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       01 ScreenOTA-Gd-1-Record.
           05 Gd-OTA-Col-DAT   PIC  X(10).
           05 Gd-OTA-Col-PTF   PIC  X(15).
           05 Gd-OTA-Col-PVT   PIC  X(15).
           05 Gd-OTA-Col-QUI   PIC  X(4).
           05 Gd-OTA-Col-PRG   PIC  X(4).
       77 SV-NSO-PALM      PIC  9(4).
       77 EUROBXX12-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-STGRA-LANDA    PIC  9
                  VALUE IS 0.
       77 W-STITA-LANDA    PIC  9
                  VALUE IS 0.
       77 CRE-AVEC-CTF     PIC  9.
       77 IND-REINTEGR     PIC  9.
       77 W-NB PIC  9.
       77 W-NUMA           PIC  9(4).
       77 W-DATZ           PIC  X(10).
       77 W-TSPFOU         PIC  9.
       77 W-TSPFOU-TCF     PIC  X.
       77 W-EOF-MTSF       PIC  9.
       77 ScreenDateNew-Handle
                  USAGE IS HANDLE OF WINDOW VALUE NULL.
       77 VALIDER16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ANNULER16-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 MONTAGE24-bmp    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 W-GCOD-MCTFE     PIC  9(13).
       77 IsModifyingGCOD  PIC  9
                  VALUE IS 1.
       77 W-ACTU-DT        PIC  9.
       77 RECHER324-jpg    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Screen1-Visible  PIC  9
                  VALUE IS 0.
       77 W-VISU-PFNA      PIC  9.
       77 IsMarVisible     PIC  9
                  VALUE IS 1.
       77 IsDatVisible     PIC  9
                  VALUE IS 1.
       77 Screen1-La-PAC-MART-Title    PIC  X(15)
                  VALUE IS "P.A. Net".
       77 IsPOLVisible     PIC  9
                  VALUE IS 1.
       77 isPrixRevientVisible2        PIC  9
                  VALUE IS 1.
       77 Screen1-La-PrixRevient-Title PIC  X(30)
                  VALUE IS "P. Revient".
       77 ZOOMxxx12-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 DUPLIQU12-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 TROMBON24-JPG1   PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 PARAMST24-JPG1   PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 RECHERC24-JP     PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       01 ENR-MTAP.
           02 TAB-MTAP.
               04 ELT-MTAP
                          OCCURS 12 TIMES.
                   06 TRC-MTAP         PIC  9(8)V99.
                   06 NIA-MTAP         PIC  9.
                   06 MOA-MTAP         PIC  9.
           02 FILLER           PIC  X(36).
       77 isLAFVisible     PIC  9
                  VALUE IS 1.
       77 VALIDER16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 ANNULER16-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 PREVISU32-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
           COPY  "positions.wrk".
       77 QUITTER24-JPG    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 FLECHEB24-BMP    PIC  S9(6)
                  USAGE IS COMP-4
                  VALUE IS 0.
       77 Activ-Lib        PIC  X(8).
       77 Fixed-Font
                  USAGE IS HANDLE OF FONT FIXED-FONT.
       77 w-screen1-lines  PIC  S9(4)V9(2)
                  VALUE IS 56,16.

      *{Bench}end
       LINKAGE                     SECTION.
      *{Bench}linkage
       77 LK-ZONE-PALM     PIC  X(500).
           COPY  "LK-ART-C.wrk".
      *{Bench}end
       SCREEN                      SECTION.
       COPY "W:/mistral/copy/MIs-EnregOccupe-Screen.cpy".
      *{Bench}copy-screen
       01 Screen1, HELP-ID 250010.
           03 Screen1-Fr-1, Frame, 
              COL 1,71, LINE 38,08, LINES 17,31 CELLS, 
              SIZE 207,00 CELLS, 
              LOWERED, ID IS 6, BACKGROUND-LOW, 
              ATW-CSS-CLASS "card-bottom".
           03 Screen1-La-3, Label, 
              COL 3,57, LINE 39,08, LINES 2,23 CELLS, SIZE 46,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 7, LABEL-OFFSET 0, 
              TITLE "Informations complémentaires", TRANSPARENT, 
              ATW-CSS-CLASS "h3".
           03 Screen1-Fr-4, Frame, 
              COL 1,86, LINE 10,15, LINES 13,77 CELLS, 
              SIZE 206,86 CELLS, 
              LOWERED, COLOR IS 2, FULL-HEIGHT, ID IS 216, 
              BACKGROUND-LOW, ATW-CSS-CLASS "card-bottom".
           03 Screen1-La-1, Label, 
              COL 3,71, LINE 10,77, LINES 3,23 CELLS, SIZE 14,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 75, LABEL-OFFSET 0, 
              TITLE "Article", TRANSPARENT, ATW-CSS-CLASS "h3".
           03 Screen1-Fr-3, Frame, 
              COL 174,57, LINE 13,38, LINES 6,00 CELLS, 
              SIZE 32,00 CELLS, 
              ENGRAVED, ID IS 9, BACKGROUND-LOW, 
              ATW-CSS-CLASS "card-bottom".
           03 Screen1-Fr-2a, Frame, 
              COL 1,86, LINE 4,85, LINES 4,62 CELLS, SIZE 206,86 CELLS, 
              LOWERED, COLOR IS 2, FILL-COLOR 16, FILL-PERCENT 100, 
              FONT IS Small-Font, ID IS 26, BACKGROUND-LOW, 
              ATW-CSS-CLASS "card".
           03 Screen1-Rb-Act1, Radio-Button, 
              COL 65,29, LINE 6,69, LINES 1,00 CELLS, SIZE 8,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 326, GROUP-VALUE 1, 
              ID IS 214, 
              TITLE "Vente", VALUE W-ACTIV, VISIBLE 0, 
              EVENT PROCEDURE Screen1-Rb-Act1-Event-Proc.
           03 Screen1-Rb-Act2, Radio-Button, 
              COL 77,71, LINE 6,69, LINES 1,00 CELLS, SIZE 11,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, GROUP 326, GROUP-VALUE 2, 
              ID IS 215, 
              TITLE "Location", VALUE W-ACTIV, VISIBLE 0, 
              EVENT PROCEDURE Screen1-Rb-Act2-Event-Proc.
           03 Screen1-Cb-Supprime, Check-Box, 
              COL 97,29, LINE 6,69, LINES 1,23 CELLS, SIZE 27,00 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 248, 
              TITLE "Voir les articles supprimés", VALUE Cpte-Supprime.
           03 Screen1-Cb-Neuf, Check-Box, 
              COL 130,86, LINE 6,69, LINES 1,23 CELLS, SIZE 7,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 238, 
              TITLE "Neuf", VALUE NEUF-INT, VISIBLE GPMO-MPAR.
           03 Screen1-Cb-OCCAS, Check-Box, 
              COL 139,43, LINE 6,69, LINES 1,23 CELLS, 
              SIZE 17,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 239, 
              TITLE "Occasion", VALUE OCCAS-INT, VISIBLE GPMO-MPAR.
           03 Screen1-Ef-Company, Entry-Field, 
              COL 21,86, LINE 6,38, LINES 1,92 CELLS, SIZE 37,14 CELLS, 
              3-D, COLOR IS W-COLOR-PROTO, ENABLED 0, ID IS 13, CENTER, 
              MAX-TEXT 25, NO-AUTOSEL, NO-TAB, READ-ONLY, 
              VALUE RAI-MPAR.
           03 Screen1-Ef-User, Entry-Field, 
              COL 9,00, LINE 6,38, LINES 1,92 CELLS, SIZE 11,86 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 15, CENTER, 
              MAX-TEXT 30, NO-AUTOSEL, NO-TAB, READ-ONLY, 
              VALUE IDE-PALM.
           03 Screen1-Cm-1, Combo-Box, 
              COL 67,00, LINE 6,38, LINES 4,46 CELLS, SIZE 23,71 CELLS, 
              3-D, COLOR IS 2, EXCEPTION-VALUE 2222, 
              FONT IS Default-Font, ID IS 74, MASS-UPDATE 0, 
              NOTIFY-SELCHANGE, DROP-LIST, UNSORTED, 
              VALUE Activ-Lib, 
              EVENT PROCEDURE Screen1-Cm-1-Link-Proc, 
              EXCEPTION PROCEDURE Screen1-Cm-1-Exception-Proc.
           03 Screen1-Pb-Refresh, Push-Button, 
              COL 98,57, LINE 1,92, LINES 24, SIZE 118, 
              BITMAP-HANDLE RAFRAIC24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 9855, ID IS 12, 
              TITLE "Push Button", ATW-CSS-CLASS "button-rafraichir".
           03 Screen1-Pb-Mod, Push-Button, 
              COL 58,43, LINE 21,15, LINES 24, SIZE 24, 
              BITMAP-HANDLE MODIFIE12-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1023, ID IS 224, 
              TITLE "Rendre la désignation non modifiable", 
              VISIBLE IsMODVisible, 
              ATW-CSS-CLASS "button-icon fas fa-edit".
           03 Screen1-Pb-Stocks, Push-Button, 
              COL 60,00, LINE 62,62, LINES 24, SIZE 24, 
              BITMAP-HANDLE PARAMST24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1019, FONT IS Small-Font, ID IS 188, 
              NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Paramètres gestion de stock".
           03 Screen1-Gd-SOC, Grid, 
              COL 100,00, LINE 57,23, LINES 6,23 CELLS, 
              SIZE 110,43 CELLS, 
              3-D, CENTERED-HEADINGS, COLOR IS 9, COLUMN-HEADINGS, 
              DATA-COLUMNS (1, 5, 45, 51, 59, 69, 75, 85), 
              DISPLAY-COLUMNS (1, 7, 37, 45, 56, 71, 79, 94), 
              ALIGNMENT ("C", "U", "R", "C", "R", "R", "R", "R"), 
              SEPARATION (5, 5, 5, 5, 5, 5, 5, 5), 
              CURSOR-FRAME-WIDTH 0, DIVIDER-COLOR w-divider-color, 
              DRAG-COLOR 1, END-COLOR w-end-color, 
              FONT IS Default-Font, HEADING-COLOR w-heading-color, 
              HEADING-DIVIDER-COLOR w-heading-divider-color, 
              HEADING-FONT IS Small-Font, ID IS 242, 
              NUM-COL-HEADINGS 1, NUM-ROWS W-NUM-ROWS, 
              RECORD-DATA Screen1-Gd-SOC-Record, TILED-HEADINGS, 
              VPADDING 50, VISIBLE isICAREFVisible, VSCROLL, 
              EVENT PROCEDURE Screen1-Gd-1-Event-Proc.
           03 Screen1-Fr-2, Frame, 
              COL 1,71, LINE 24,23, LINES 13,54 CELLS, 
              SIZE 207,00 CELLS, 
              LOWERED, COLOR IS 2, FONT IS Small-Font, ID IS 2, 
              BACKGROUND-LOW, ATW-CSS-CLASS "card-bottom".
           03 Screen1-La-2, Label, 
              COL 3,57, LINE 25,23, LINES 2,38 CELLS, SIZE 13,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 1, LABEL-OFFSET 0, 
              TITLE "Tarifs", TRANSPARENT, ATW-CSS-CLASS "h3".
           03 Screen1-Cm-IFA-MART, Combo-Box, 
              COL 117,43, LINE 30,31, LINES 5,77 CELLS, 
              SIZE 14,14 CELLS, 
              3-D, COLOR IS 2, ENABLED isModifying, FONT IS Small-Font, 
              ID IS 27, MASS-UPDATE 0, NOTIFY-SELCHANGE, DROP-LIST, 
              UNSORTED, VISIBLE isIFAVisible, 
              EVENT PROCEDURE Screen1-Cm-IFA-MART-Event-Proc.
           03 Screen1-Pb-ModN, Push-Button, 
              COL 58,43, LINE 21,15, LINES 24, SIZE 24, 
              BITMAP-HANDLE CREERxx12-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1022, ID IS 223, 
              TITLE "Rendre la désignation modifiable", 
              VISIBLE IsMODNVisible, 
              ATW-CSS-CLASS "button-icon fas fa-plus".
           03 Screen1-Cm-ModeRecherche, Combo-Box, 
              COL 173,86, LINE 6,46, LINES 1,62 CELLS, 
              SIZE 26,71 CELLS, 
              3-D, COLOR IS 2, ENABLED isSearching, FONT IS Small-Font, 
              ID IS 17, MASS-UPDATE 0, NOTIFY-SELCHANGE, DROP-LIST, 
              UNSORTED, 
              EXCEPTION PROCEDURE 
              Screen1-Cm-ModeRecherche-Exception-Proc.
           03 Screen1-La-RFN-MART, Label, 
              COL 129,14, LINE 17,08, LINES 1,92 CELLS, 
              SIZE 12,14 CELLS, 
              COLOR IS 2, FONT IS RFN-MART-Font, ID IS 49, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Normalisée".
           03 Screen1-DaGd-PVN, Grid, 
              COL W-COL-RTG, LINE W-LINE-RTG, LINES 6,23 CELLS, 
              SIZE 53,86 CELLS, 
              3-D, CENTERED-HEADINGS, COLUMN-HEADINGS, 
              DATA-COLUMNS (1, 2, 7, 12, 26, 40), 
              DISPLAY-COLUMNS (1, 5, 13, 21, 32, 43), 
              ALIGNMENT ("C", "R", "R", "R", "R", "R"), 
              DATA-TYPES ("9", "99999", "99999", "X", "X", "S999V99"), 
              SEPARATION (5, 5, 5, 5, 5, 5), 
              CURSOR-FRAME-WIDTH 1, DIVIDER-COLOR 8, END-COLOR 16, 
              HEADING-COLOR 112, HEADING-FONT IS Small-Font, ID IS 212, 
              NUM-COL-HEADINGS 1, NUM-ROWS 7, ROW-HEADINGS, 
              TILED-HEADINGS, USE-TAB, VPADDING 50, 
              VISIBLE isPVNDaGdVisible, VSCROLL, 
              EVENT PROCEDURE Screen1-DaGd-PVN-Event-Proc.
           03 Screen1-La-PxUnite, Label, 
              COL 136,14, LINE 25,85, LINES 1,69 CELLS, 
              SIZE 12,14 CELLS, 
              COLOR IS UPR-MART-Color, FONT IS Small-Font, ID IS 4, 
              LEFT, LABEL-OFFSET 0, 
              TITLE "Prix à l'unité", TRANSPARENT, 
              VISIBLE isPxUniteVisible.
           03 Screen1-La-UPR-MART, Label, 
              COL 136,14, LINE 25,85, LINES 1,00 CELLS, 
              SIZE 12,14 CELLS, 
              COLOR IS UPR-MART-Color, FONT IS Small-Font, ID IS 5, 
              LEFT, LABEL-OFFSET 0, 
              TITLE "Prix au", TRANSPARENT, VISIBLE isUPRVisible.
           03 Screen1-Pb-Previous, Push-Button, 
              COL 1,86, LINE 1,92, LINES 24, SIZE 118, 
              BITMAP-HANDLE FLECHEG24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 9862, ID IS 18, NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Précédent", VISIBLE isPreviousVisible, 
              ATW-CSS-CLASS "button-precedent".
           03 Screen1-Pb-Next, Push-Button, 
              COL 20,43, LINE 1,92, LINES 24, SIZE 118, 
              BITMAP-HANDLE FLECHED24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 9861, ID IS 19, NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Suivant", VISIBLE isNextVisible, 
              ATW-CSS-CLASS "button-suivant btn-icon-right".
           03 Screen1-Pb-Modify, Push-Button, 
              COL 117,00, LINE 1,92, LINES 24, SIZE 118, 
              BITMAP-HANDLE MODIFIE24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 9854, FONT IS Default-Font, ID IS 21, 
              NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Modifier", VISIBLE isModifyVisible, 
              ATW-CSS-CLASS "button-modifier".
           03 Screen1-Pb-Valid, Push-Button, 
              COL 153,86, LINE 1,92, LINES 24, SIZE 118, 
              BITMAP-HANDLE SAUVEGA24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 9819, ID IS 22, NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Valider", VISIBLE isValidVisible, 
              ATW-CSS-CLASS "button-sauvegarder".
           03 Screen1-Pb-Add, Push-Button, 
              COL 135,43, LINE 1,92, LINES 24, SIZE 118, 
              BITMAP-HANDLE CREERxx24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 9853, FONT IS Default-Font, ID IS 23, 
              NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Ajouter", VISIBLE isAddVisible, 
              ATW-CSS-CLASS "button-creer button-success".
           03 Screen1-Pb-Delete, Push-Button, 
              COL 172,29, LINE 1,92, LINES 24, SIZE 118, 
              BITMAP-HANDLE SUPPRIM24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 9856, ID IS 24, NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Supprimer", VISIBLE isDeleteVisible, 
              ATW-CSS-CLASS "button-supprimer".
           03 Screen1-La-DES-MART, Label, 
              COL 4,14, LINE 19,38, LINES 1,92 CELLS, SIZE 13,14 CELLS, 
              COLOR IS DES-MART-Color, FONT IS DES-MART-Font, ID IS 44, 
              LEFT, LABEL-OFFSET 0, 
              TITLE "Désignation".
           03 Screen1-La-GRA-MART, Label, 
              COL 66,00, LINE 14,77, LINES 1,92 CELLS, 
              SIZE 13,14 CELLS, 
              COLOR IS GRA-FAM-MART-Color, FONT IS GRA-FAM-MART-Font, 
              ID IS 28, LEFT, LABEL-OFFSET 0, 
              TITLE "Famille".
           03 Screen1-La-FAM-MART, Label, 
              COL 66,00, LINE 17,08, LINES 1,92 CELLS, 
              SIZE 13,14 CELLS, 
              COLOR IS GRA-FAM-MART-Color, FONT IS GRA-FAM-MART-Font, 
              ID IS 31, LEFT, LABEL-OFFSET 0, 
              TITLE "Sous-Famille".
           03 Screen1-La-FOU-MART, Label, 
              COL 4,14, LINE 14,77, LINES 1,92 CELLS, SIZE 13,14 CELLS, 
              COLOR IS FOU-MART-Color, FONT IS FOU-MART-Font, ID IS 33, 
              LEFT, LABEL-OFFSET 0, 
              TITLE "Fournisseur".
           03 Screen1-Pb-ListeFournisseurs, Push-Button, 
              COL 58,43, LINE 14,23, LINES 24, SIZE 24, 
              BITMAP-HANDLE ZOOMxxx12-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              ENABLED isFOUEnabled, EXCEPTION-VALUE 1010, 
              FONT IS Default-Font, ID IS 35, NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Liste des Fournisseurs", 
              ATW-CSS-CLASS "button-icon fas fa-search", 
              BEFORE PROCEDURE Screen1-DaEf-FOU-MART-Bef-Procedure.
           03 Screen1-Ef-IDF-MART, Entry-Field, 
              COL 17,71, LINE 16,54, LINES 1,92 CELLS, SIZE 9,14 CELLS, 
              3-D, COLOR IS 2, ENABLED isIDFEnabled, ID IS 38, CENTER, 
              MAX-TEXT 4, VALUE CO1-MART, 
              EVENT PROCEDURE Screen1-Ef-IDF-MART-Event-Proc.
           03 Screen1-Ef-REF-MART, Entry-Field, 
              COL 27,29, LINE 16,54, LINES 1,92 CELLS, 
              SIZE 30,29 CELLS, 
              3-D, COLOR IS 2, ENABLED isREFEnabled, ID IS 39, 
              MAX-TEXT 21, VALUE REF-MART, 
              BEFORE PROCEDURE Screen1-Ef-REF-MART-Bef-Procedure, 
              EVENT PROCEDURE Screen1-Ef-REF-MART-Event-Proc.
           03 Screen1-Ef-CO1-MART, Entry-Field, 
              COL 176,57, LINE 16,54, LINES 1,92 CELLS, 
              SIZE 8,43 CELLS, 
              3-D, COLOR IS 2, ENABLED isCODEnabled, ID IS 184, CENTER, 
              MAX-TEXT 4, VALUE CO1-MART, 
              EVENT PROCEDURE Screen1-Ef-CO1-MART-Event-Proc.
           03 Screen1-Ef-CO2-MART, Entry-Field, 
              COL 186,29, LINE 16,54, LINES 1,92 CELLS, 
              SIZE 19,00 CELLS, 
              3-D, COLOR IS 2, ENABLED isCODEnabled, ID IS 185, 
              MAX-TEXT 16, VALUE CO2-MART, 
              EVENT PROCEDURE Screen1-Ef-CO2-MART-Event-Proc.
           03 Screen1-Ef-DES-MART, Entry-Field, 
              COL 17,71, LINE 18,85, LINES 1,92 CELLS, 
              SIZE 45,43 CELLS, 
              3-D, COLOR IS 2, ENABLED isDESEnabled, 
              FONT IS Default-Font, ID IS 45, MAX-TEXT 40, 
              VALUE DES-MART, 
              EVENT PROCEDURE Screen1-Ef-DES-MART-Event-Proc.
           03 Screen1-Ef-DE2-MART, Entry-Field, 
              COL 17,71, LINE 21,15, LINES 1,92 CELLS, 
              SIZE 39,86 CELLS, 
              3-D, COLOR IS 2, ENABLED isDes2Enabled, ID IS 6547, 
              MAX-TEXT 20, VALUE DE2-MART, 
              EVENT PROCEDURE Screen1-Ef-DE2-MART-Event-Proc.
           03 Screen1-Ef-GRA-MART, Entry-Field, 
              COL 79,86, LINE 14,23, LINES 1,92 CELLS, SIZE 7,29 CELLS, 
              3-D, COLOR IS 2, ENABLED isGRAFAMEnabled, ID IS 218, 
              CENTER, MAX-TEXT 2, NUMERIC, VALUE GRA-MART, 
              BEFORE PROCEDURE Screen1-Pb-ArbreFamilles-Bef-Procedure, 
              EVENT PROCEDURE Screen1-Ef-GRA-MART-Event-Proc.
           03 Screen1-Pb-ArbreFamilles, Push-Button, 
              COL 122,14, LINE 14,23, LINES 24, SIZE 24, 
              BITMAP-HANDLE ZOOMxxx12-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              ENABLED isGRAFAMEnabled, EXCEPTION-VALUE 1011, 
              FONT IS Default-Font, ID IS 30, NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Hiérarchie des Familles / Sous-Familles", 
              ATW-CSS-CLASS "button-icon fas fa-search", 
              BEFORE PROCEDURE Screen1-Pb-ArbreFamilles-Bef-Procedure.
           03 Screen1-Ef-LIB-GRA-MART, Entry-Field, 
              COL 87,57, LINE 14,23, LINES 1,92 CELLS, 
              SIZE 33,71 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 29, MAX-TEXT 25, 
              NO-TAB, READ-ONLY, VALUE W-LIB-GRA-MART.
           03 Screen1-La-REF-MART, Label, 
              COL 4,14, LINE 17,08, LINES 1,92 CELLS, SIZE 13,14 CELLS, 
              COLOR IS REF-MART-Color, FONT IS REF-MART-Font, ID IS 37, 
              LEFT, LABEL-OFFSET 0, 
              TITLE "Référence".
           03 Screen1-Ef-FAM-MART, Entry-Field, 
              COL 79,86, LINE 16,54, LINES 1,92 CELLS, SIZE 7,29 CELLS, 
              3-D, COLOR IS 2, ENABLED isGRAFAMEnabled, ID IS 219, 
              CENTER, MAX-TEXT 2, NUMERIC, VALUE FAM-MART, 
              BEFORE PROCEDURE Screen1-Pb-ArbreFamilles-Bef-Procedure, 
              EVENT PROCEDURE Screen1-Ef-FAM-MART-Event-Proc.
           03 Screen1-La-MAR-MART, Label, 
              COL 66,00, LINE 19,38, LINES 2,69 CELLS, 
              SIZE 10,00 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 40, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Marque", TRANSPARENT.
           03 Screen1-Ef-LIB-FAM-MART, Entry-Field, 
              COL 87,57, LINE 16,54, LINES 1,92 CELLS, 
              SIZE 33,71 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 32, MAX-TEXT 25, 
              NO-TAB, READ-ONLY, VALUE W-LIB-FAM-MART.
           03 Screen1-Ef-MAR-MART, Entry-Field, 
              COL 79,86, LINE 18,85, LINES 1,92 CELLS, SIZE 7,29 CELLS, 
              3-D, COLOR IS 2, ENABLED isModifying, ID IS 41, CENTER, 
              MAX-TEXT 4, VALUE MAR-MART, 
              EVENT PROCEDURE Screen1-Ef-MAR-MART-Event-Proc.
           03 Screen1-Pb-ListeMarques, Push-Button, 
              COL 122,14, LINE 18,85, LINES 24, SIZE 24, 
              BITMAP-HANDLE ZOOMxxx12-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              ENABLED isModifying, EXCEPTION-VALUE 1012, 
              FONT IS Default-Font, ID IS 42, NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Liste des Marques", 
              ATW-CSS-CLASS "button-icon fas fa-search".
           03 Screen1-Ef-LIB-MAR-MMAR, Entry-Field, 
              COL 87,57, LINE 18,85, LINES 1,92 CELLS, 
              SIZE 16,43 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 43, MAX-TEXT 20, 
              NO-TAB, VALUE W-LIB-MAR-MMAR.
           03 Screen1-Ef-TYP-MART, Entry-Field, 
              COL 104,43, LINE 18,85, LINES 1,92 CELLS, 
              SIZE 16,86 CELLS, 
              3-D, COLOR IS 2, ENABLED isModifying, ID IS 56, 
              MAX-TEXT 16, NO-TAB, VALUE TYP-MART, 
              VISIBLE isTYPVisible, 
              EVENT PROCEDURE Screen1-Ef-TYP-MART-Event-Proc.
           03 Screen1-Pb-ListeTypes, Push-Button, 
              COL 122,14, LINE 18,85, LINES 24, SIZE 24, 
              BITMAP-HANDLE ZOOMxxx12-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              ENABLED isModifying, EXCEPTION-VALUE 1016, 
              FONT IS Default-Font, ID IS 57, NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Liste des Types", VISIBLE isTYPVisible, 
              ATW-CSS-CLASS "button-icon fas fa-search".
           03 Screen1-Cm-INO-MART, Combo-Box, 
              COL 79,86, LINE 21,15, LINES 10,15 CELLS, 
              SIZE 14,86 CELLS, 
              3-D, UPPER, COLOR IS 2, ENABLED isModifying2, 
              FONT IS Small-Font, ID IS 3, MASS-UPDATE 0, 
              NOTIFY-SELCHANGE, DROP-LIST, 
              AFTER PROCEDURE Screen1-Cm-INO-MART-Aft-Procedure, 
              EXCEPTION PROCEDURE Screen1-Cm-INO-MART-Exception-Proc.
           03 Screen1-Ef-GCOD-MART, Entry-Field, 
              COL 145,29, LINE 21,08, LINES 1,92 CELLS, 
              SIZE 18,86 CELLS, 
              3-D, COLOR IS 2, ENABLED IsModifyingGCOD, ID IS 210, 
              VALUE GCOD-MART, VISIBLE IsGCODVisible, 
              BEFORE PROCEDURE Screen1-Ef-GCOD-MART-Bef-Procedure, 
              EVENT PROCEDURE Screen1-Ef-GCOD-MART-Event-Proc.
           03 Screen1-Ef-RFI-MART, Entry-Field, 
              COL 145,29, LINE 14,23, LINES 1,92 CELLS, 
              SIZE 24,29 CELLS, 
              3-D, COLOR IS 2, ENABLED isRFIEnabled, ID IS 52, 
              MAX-TEXT 8, VALUE Screen1-DaEf-RFI-MART-BUF, 
              VISIBLE isRFIVisible, 
              AFTER PROCEDURE Screen1-Ef-RFI-MART-Ev-Msg-Validate, 
              EVENT PROCEDURE Screen1-Ef-RFI-MART-Event-Proc.
           03 Screen1-Ef-RFN-MART, Entry-Field, 
              COL 145,29, LINE 16,54, LINES 1,92 CELLS, 
              SIZE 18,86 CELLS, 
              3-D, COLOR IS 2, ENABLED isRFNEnabled, ID IS 50, 
              MAX-TEXT 16, VALUE RFN-MART, 
              AFTER PROCEDURE Screen1-Ef-RFN-MART-Ev-Msg-Validate, 
              EVENT PROCEDURE Screen1-Ef-RFN-MART-Event-Proc.
           03 Screen1-Ef-TVA-MART, Entry-Field, 
              COL 145,29, LINE 18,85, LINES 1,92 CELLS, 
              SIZE 18,86 CELLS, 
              3-D, COLOR IS 2, ENABLED isModifying2, ID IS 54, 
              MAX-TEXT 10, VALUE TVA-MART, 
              AFTER PROCEDURE Screen1-Ef-TVA-MART-Aft-Procedure, 
              BEFORE PROCEDURE Screen1-Ef-TVA-MART-Bef-Procedure, 
              EVENT PROCEDURE Screen1-Ef-TVA-MART-Event-Proc.
           03 Screen1-Ef-PAY-MART, Entry-Field, 
              COL 165,00, LINE 18,85, LINES 1,92 CELLS, 
              SIZE 4,43 CELLS, 
              3-D, COLOR IS 2, ENABLED isModifying2, ID IS 235, 
              MAX-TEXT 10, VALUE PAY-MART, 
              AFTER PROCEDURE Screen1-Ef-PAY-MART-Aft-Procedure, 
              BEFORE PROCEDURE Screen1-Ef-PAY-MART-Bef-Procedure, 
              EVENT PROCEDURE Screen1-Ef-TVA-MART-Event-Proc.
           03 Screen1-Pb-ListePays, Push-Button, 
              COL 169,86, LINE 18,85, LINES 24, SIZE 24, 
              BITMAP-HANDLE ZOOMxxx12-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              ENABLED isModifying2, EXCEPTION-VALUE 1051, 
              FONT IS Default-Font, ID IS 236, NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Liste des Types", VISIBLE 0, 
              ATW-CSS-CLASS "button-icon fas fa-search".
           03 Screen1-La-RFI-MART, Label, 
              COL 129,14, LINE 14,77, LINES 1,92 CELLS, 
              SIZE 20,57 CELLS, 
              COLOR IS 2, FONT IS RFI-MART-Font, ID IS 51, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Référence Interne", VISIBLE isRFIVisible.
           03 Screen1-La-1d, Label, 
              COL 129,29, LINE 19,38, LINES 1,92 CELLS, 
              SIZE 12,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 53, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Numéro CEE", TRANSPARENT.
           03 Screen1-La-TYP-MART, Label, 
              COL 73,00, LINE 19,38, LINES 2,69 CELLS, 
              SIZE 10,00 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 55, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Type", TRANSPARENT, VISIBLE isTYPVisible.
           03 Screen1-La-INO-MART, Label, 
              COL 66,00, LINE 21,69, LINES 1,92 CELLS, 
              SIZE 12,14 CELLS, 
              COLOR IS INO-MART-Color, FONT IS Small-Font, ID IS 58, 
              LEFT, LABEL-OFFSET 0, 
              TITLE "Composition", TRANSPARENT.
           03 Screen1-La-POL-MART, Label, 
              COL 22,86, LINE 25,85, LINES 1,69 CELLS, 
              SIZE 13,14 CELLS, 
              COLOR IS POL-MART-Color, FONT IS Small-Font, ID IS 60, 
              LEFT, LABEL-OFFSET 0, 
              TITLE "Politique Prix", TRANSPARENT, 
              VISIBLE IsPOLVisible.
           03 Screen1-Cm-POL-MART, Combo-Box, 
              COL 36,43, LINE 25,46, LINES 10,15 CELLS, 
              SIZE 20,29 CELLS, 
              3-D, UPPER, COLOR IS 2, ENABLED isModifying, 
              FONT IS Small-Font, ID IS 61, MASS-UPDATE 0, 
              NOTIFY-SELCHANGE, DROP-LIST, UNSORTED, 
              VISIBLE IsPOLVisible, 
              EXCEPTION PROCEDURE Screen1-Cm-POL-MART-Exception-Proc.
           03 Screen1-La-1fab, Label, 
              COL 61,29, LINE 25,85, LINES 1,69 CELLS, 
              SIZE 13,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 62, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Unité Achat", TRANSPARENT, VISIBLE IsPvtVisible.
           03 Screen1-Cm-CUA-MART, Combo-Box, 
              COL 73,86, LINE 25,31, LINES 10,15 CELLS, 
              SIZE 20,29 CELLS, 
              3-D, UPPER, COLOR IS 2, ENABLED isModifying, 
              FONT IS Small-Font, ID IS 63, MASS-UPDATE 0, 
              NOTIFY-SELCHANGE, DROP-LIST, VISIBLE IsPvtVisible, 
              EXCEPTION PROCEDURE Screen1-Cm-CUA-MART-Exception-Proc.
           03 Screen1-La-1faba, Label, 
              COL 98,71, LINE 25,85, LINES 1,69 CELLS, 
              SIZE 12,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 64, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Unité Vente", TRANSPARENT, VISIBLE IsPvtVisible.
           03 Screen1-Cm-CUV-MART, Combo-Box, 
              COL 111,29, LINE 25,46, LINES 7,00 CELLS, 
              SIZE 20,29 CELLS, 
              3-D, UPPER, COLOR IS 2, ENABLED isModifying, 
              FONT IS Small-Font, ID IS 65, MASS-UPDATE 0, 
              NOTIFY-SELCHANGE, DROP-LIST, VISIBLE IsPvtVisible, 
              EXCEPTION PROCEDURE Screen1-Cm-CUV-MART-Exception-Proc.
           03 Screen1-DaEf-UPR-MART, Entry-Field, 
              COL 148,71, LINE 25,31, LINES 1,92 CELLS, 
              SIZE 20,29 CELLS, 
              3-D, COLOR IS 2, ENABLED isUPREnabled, ID IS 66, RIGHT, 
              MAX-TEXT 5, NUMERIC, VALUE Screen1-DaEf-UPR-MART-BUF, 
              VISIBLE isUPRVisible, 
              EVENT PROCEDURE Screen1-DaEf-UPR-MART-Event-Proc.
           03 Screen1-La-NUU-MART, Label, 
              COL 173,57, LINE 25,85, LINES 1,69 CELLS, 
              SIZE 12,14 CELLS, 
              COLOR IS NUU-MART-Color, FONT IS Small-Font, ID IS 67, 
              LEFT, LABEL-OFFSET 0, 
              TITLE "Nb UV/UA", TRANSPARENT, VISIBLE isNUUVisible.
           03 Screen1-DaEf-NUU-MART, Entry-Field, 
              COL 186,14, LINE 25,31, LINES 1,92 CELLS, 
              SIZE 20,29 CELLS, 
              3-D, COLOR IS NUU-MART-Color, ENABLED isNUUEnabled, 
              ID IS 68, RIGHT, MAX-TEXT 9, NUMERIC, 
              VISIBLE isNUUVisible, 
              EVENT PROCEDURE Screen1-DaEf-NUU-MART-Event-Proc.
           03 Screen1-La-PTF-MART, Label, 
              COL 3,71, LINE 28,54, LINES 1,00 CELLS, SIZE 20,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 70, LEFT, 
              LABEL-OFFSET 0, TITLE W-PTF-LIB, TRANSPARENT, 
              VISIBLE isPTFVisible.
           03 Screen1-Ef-PTF-MART, Entry-Field, 
              COL 3,71, LINE 30,31, LINES 1,92 CELLS, SIZE 14,14 CELLS, 
              3-D, COLOR IS 2, ENABLED isPTFEnabled, ID IS 71, RIGHT, 
              MAX-TEXT 11, NUMERIC, VISIBLE isPTFVisible, 
              EVENT PROCEDURE Screen1-DaEf-PTF-MART-Event-Proc.
           03 Screen1-La-PDE-MART, Label, 
              COL 42,57, LINE 28,54, LINES 1,00 CELLS, 
              SIZE 20,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 72, LEFT, 
              LABEL-OFFSET 0, TITLE W-PDE-LIB, TRANSPARENT, 
              VISIBLE isPDEVisible.
           03 Screen1-Ef-PTFEUR, Entry-Field, 
              COL 42,57, LINE 30,31, LINES 1,92 CELLS, 
              SIZE 14,14 CELLS, 
              3-D, COLOR IS 2, ENABLED isPDEEnabled, ID IS 73, RIGHT, 
              MAX-TEXT 12, NUMERIC, VISIBLE isPDEVisible, 
              EVENT PROCEDURE Screen1-Ef-PTFEUR-Event-Proc.
           03 Screen1-La-REM-MART, Label, 
              COL 22,00, LINE 28,54, LINES 1,00 CELLS, 
              SIZE 20,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 77, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "% Remise", TRANSPARENT, VISIBLE isREMVisible.
           03 Screen1-Ef-CRF-MART, Entry-Field, 
              COL 37,00, LINE 30,31, LINES 1,92 CELLS, SIZE 4,71 CELLS, 
              3-D, COLOR IS 2, ENABLED isCRFEnabled, ID IS 78, RIGHT, 
              MAX-TEXT 2, NUMERIC, VALUE Screen1-Ef-CRF-MART-BUF, 
              VISIBLE isCRFVisible, 
              EVENT PROCEDURE Screen1-DaEf-CRF-MART-Event-Proc.
           03 Screen1-DaEf-REM-MART, Entry-Field, 
              COL 22,00, LINE 30,31, LINES 1,92 CELLS, 
              SIZE 14,14 CELLS, 
              3-D, COLOR IS 2, ENABLED isREMEnabled, ID IS 79, RIGHT, 
              MAX-TEXT 6, NUMERIC, VISIBLE isREMVisible, 
              EVENT PROCEDURE Screen1-DaEf-REM-MART-Event-Proc.
           03 Screen1-La-Cours, Label, 
              COL 42,57, LINE 33,15, LINES 1,69 CELLS, 
              SIZE 20,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 81, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Cours", TRANSPARENT, VISIBLE isCoursVisible.
           03 Screen1-Ef-CRS, Entry-Field, 
              COL 42,57, LINE 34,92, LINES 1,92 CELLS, 
              SIZE 14,14 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 82, RIGHT, MAX-TEXT 30, 
              NO-TAB, NUMERIC, VALUE Screen1-Ef-CRS-BUF, 
              VISIBLE isCoursVisible.
           03 Screen1-La-PAT-MART, Label, 
              COL 3,71, LINE 33,15, LINES 1,69 CELLS, SIZE 20,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 83, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Prix Achat Tarif", TRANSPARENT, 
              VISIBLE isPATVisible.
           03 Screen1-DaEf-PAT-MART, Entry-Field, 
              COL 3,71, LINE 34,92, LINES 1,92 CELLS, SIZE 14,14 CELLS, 
              3-D, COLOR IS 2, ENABLED isPATEnabled, ID IS 84, RIGHT, 
              MAX-TEXT 11, NUMERIC, VISIBLE isPATVisible, 
              EVENT PROCEDURE Screen1-DaEf-PAT-MART-Event-Proc.
           03 Screen1-La-PAC-MART, Label, 
              COL 61,29, LINE 28,54, LINES 1,00 CELLS, 
              SIZE 20,43 CELLS, 
              COLOR IS PAC-MART-Color, FONT IS Small-Font, ID IS 85, 
              LEFT, LABEL-OFFSET 0, TITLE Screen1-La-PAC-MART-Title, 
              TRANSPARENT, VISIBLE isPACVisible.
           03 Screen1-Ef-PAC-MART, Entry-Field, 
              COL 61,29, LINE 30,31, LINES 1,92 CELLS, 
              SIZE 14,14 CELLS, 
              3-D, COLOR IS 2, ENABLED isPACEnabled, ID IS 86, RIGHT, 
              MAX-TEXT 11, NUMERIC, VISIBLE isPACVisible, 
              EVENT PROCEDURE Screen1-DaEf-PAC-MART-Event-Proc.
           03 Screen1-La-COE-MART, Label, 
              COL 80,00, LINE 28,54, LINES 1,00 CELLS, 
              SIZE 20,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 87, LEFT, 
              LABEL-OFFSET 0, TITLE W-LIB-COEF, TRANSPARENT, 
              VISIBLE isCOEVisible.
           03 Screen1-Ef-COE-MART, Entry-Field, 
              COL 80,00, LINE 30,31, LINES 1,92 CELLS, 
              SIZE 14,14 CELLS, 
              3-D, COLOR IS 2, ENABLED isCOEEnabled, ID IS 88, RIGHT, 
              MAX-TEXT 6, NUMERIC, VISIBLE isCOEVisible, 
              EVENT PROCEDURE Screen1-DaEf-COE-MART-Event-Proc.
           03 Screen1-La-PrixRevient, Label, 
              COL 98,71, LINE 28,54, LINES 1,00 CELLS, 
              SIZE 20,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 91, LEFT, 
              LABEL-OFFSET 0, TITLE Screen1-La-PrixRevient-Title, 
              TRANSPARENT, VISIBLE isPrixRevientVisible2.
           03 Screen1-DaEf-PrixRevient, Entry-Field, 
              COL 98,71, LINE 30,31, LINES 1,92 CELLS, 
              SIZE 14,14 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 92, RIGHT, MAX-TEXT 30, 
              NO-TAB, NUMERIC, VALUE Screen1-DaEf-PrixRevient-BUF, 
              VISIBLE isPrixRevientVisible2.
           03 Screen1-La-FUA-MARTaa, Label, 
              COL 80,00, LINE 33,15, LINES 1,69 CELLS, 
              SIZE 20,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 93, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Taux Marque", TRANSPARENT, 
              VISIBLE isPrixRevientVisible.
           03 Screen1-DaEf-TXM-MART, Entry-Field, 
              COL 80,00, LINE 34,92, LINES 1,92 CELLS, 
              SIZE 14,14 CELLS, 
              3-D, COLOR IS 2, ENABLED isModifying, ID IS 94, RIGHT, 
              MAX-TEXT 5, NUMERIC, VISIBLE isPrixRevientVisible, 
              EVENT PROCEDURE Screen1-DaEf-TXM-MART-Event-Proc.
           03 Screen1-La-IFA-MART, Label, 
              COL 117,43, LINE 28,54, LINES 1,00 CELLS, 
              SIZE 20,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 97, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Frais d'approche", TRANSPARENT, 
              VISIBLE isIFAVisible.
           03 Screen1-La-FUA-MART, Label, 
              COL 117,43, LINE 33,15, LINES 1,69 CELLS, 
              SIZE 20,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 101, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Montant", TRANSPARENT, VISIBLE isFUAVisible.
           03 Screen1-La-PFA-MART, Label, 
              COL 117,43, LINE 33,15, LINES 1,00 CELLS, 
              SIZE 2,86 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 102, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "%", TRANSPARENT, VISIBLE isPFAVisible.
           03 Screen1-DaEf-FUA-MART, Entry-Field, 
              COL 117,43, LINE 34,92, LINES 1,92 CELLS, 
              SIZE 12,14 CELLS, 
              3-D, COLOR IS 2, ENABLED isModifying, ID IS 103, RIGHT, 
              MAX-TEXT 9, NUMERIC, VALUE Screen1-DaEf-FUA-MART-BUF, 
              VISIBLE isFUAVisible, 
              EVENT PROCEDURE Screen1-DaEf-FUA-MART-Event-Proc.
           03 Screen1-DaEf-PFA-MART, Entry-Field, 
              COL 117,43, LINE 34,92, LINES 1,92 CELLS, 
              SIZE 14,14 CELLS, 
              3-D, COLOR IS 2, ENABLED isModifying, ID IS 104, RIGHT, 
              MAX-TEXT 5, NUMERIC, VISIBLE isPFAVisible, 
              EVENT PROCEDURE Screen1-DaEf-PFA-MART-Event-Proc.
           03 Screen1-La-CFU-MART, Label, 
              COL 136,14, LINE 33,15, LINES 1,69 CELLS, 
              SIZE 20,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 105, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Coef. ", TRANSPARENT, VISIBLE isCFUVisible.
           03 Screen1-La-FraisApproche, Label, 
              COL 136,14, LINE 28,54, LINES 1,00 CELLS, 
              SIZE 20,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 106, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "F.A.V.", TRANSPARENT, 
              VISIBLE isFraisApprocheVisible.
           03 Screen1-DaEf-CFU-MART, Entry-Field, 
              COL 136,14, LINE 34,92, LINES 1,92 CELLS, 
              SIZE 14,14 CELLS, 
              3-D, COLOR IS 2, ENABLED isModifying, ID IS 107, RIGHT, 
              MAX-TEXT 5, NUMERIC, VISIBLE isCFUVisible, 
              EVENT PROCEDURE Screen1-DaEf-CFU-MART-Event-Proc.
           03 Screen1-DaEf-FraisApproche, Entry-Field, 
              COL 136,14, LINE 30,31, LINES 1,92 CELLS, 
              SIZE 14,14 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 108, RIGHT, 
              MAX-TEXT 30, NUMERIC, READ-ONLY, 
              VALUE Screen1-DaEf-FraisApproche-BUF, 
              VISIBLE isFraisApprocheVisible.
           03 Screen1-La-PVT-MART, Label, 
              COL 154,86, LINE 28,54, LINES 1,00 CELLS, 
              SIZE 20,43 CELLS, 
              COLOR IS PVT-MART-Color, FONT IS Small-Font, ID IS 109, 
              LEFT, LABEL-OFFSET 0, 
              TITLE "P.V. H.T.", TRANSPARENT, VISIBLE IsPvtVisible.
           03 Screen1-DaEf-PVT-MART, Entry-Field, 
              COL 154,86, LINE 30,31, LINES 1,92 CELLS, 
              SIZE 14,14 CELLS, 
              3-D, COLOR IS 2, ENABLED isPVTEnabled, ID IS 110, RIGHT, 
              MAX-TEXT 11, NUMERIC, VISIBLE IsPvtVisible, 
              EVENT PROCEDURE Screen1-DaEf-PVT-MART-Event-Proc.
           03 Screen1-La-MontantTVA, Label, 
              COL 173,57, LINE 28,54, LINES 1,69 CELLS, 
              SIZE 20,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 111, LEFT, 
              LABEL-OFFSET 0, TITLE W-LIB-TVA, TRANSPARENT, 
              VISIBLE IsPvtVisible.
           03 Screen1-DaEf-MontantTVA, Entry-Field, 
              COL 173,57, LINE 30,31, LINES 1,92 CELLS, 
              SIZE 14,14 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 112, RIGHT, 
              MAX-TEXT 30, NO-TAB, NUMERIC, READ-ONLY, 
              VALUE Screen1-DaEf-MontantTVA-BUF, VISIBLE IsPvtVisible.
           03 Screen1-La-TTC-MART, Label, 
              COL 192,29, LINE 28,54, LINES 1,00 CELLS, 
              SIZE 17,00 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 113, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "P.V  T.T.C.", TRANSPARENT, VISIBLE IsPvtVisible.
           03 Screen1-DaEf-TTC-MART, Entry-Field, 
              COL 192,29, LINE 30,31, LINES 1,92 CELLS, 
              SIZE 14,14 CELLS, 
              3-D, COLOR IS 2, ENABLED isTTCEnabled, ID IS 114, RIGHT, 
              MAX-TEXT 11, NUMERIC, VISIBLE IsPvtVisible, 
              EVENT PROCEDURE Screen1-DaEf-TTC-MART-Event-Proc.
           03 Screen1-La-TTC-MARTab, Label, 
              COL 192,29, LINE 33,15, LINES 1,69 CELLS, 
              SIZE 16,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 115, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Arrondi au", TRANSPARENT, 
              VISIBLE isArrondiVisible.
           03 Screen1-Ef-Arrondi, Entry-Field, 
              COL 192,29, LINE 34,92, LINES 1,92 CELLS, 
              SIZE 14,14 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 116, CENTER, 
              MAX-TEXT 8, NO-TAB, READ-ONLY, VALUE W-Arrondi, 
              VISIBLE isArrondiVisible.
           03 Screen1-La-MargeUnit, Label, 
              COL 154,86, LINE 33,15, LINES 1,69 CELLS, 
              SIZE 20,43 CELLS, 
              COLOR IS MargeUnit-Color, FONT IS Small-Font, ID IS 117, 
              LEFT, LABEL-OFFSET 0, 
              TITLE "Marge Unitaire", TRANSPARENT, 
              VISIBLE IsMarVisible.
           03 Screen1-DaEf-MargeUnit, Entry-Field, 
              COL 154,86, LINE 34,92, LINES 1,92 CELLS, 
              SIZE 14,14 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 118, RIGHT, 
              MAX-TEXT 11, NO-TAB, NUMERIC, READ-ONLY, 
              VALUE Screen1-DaEf-MargeUnit-BUF, VISIBLE IsMarVisible.
           03 Screen1-La-MargeBrute, Label, 
              COL 173,57, LINE 33,15, LINES 1,69 CELLS, 
              SIZE 20,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 119, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "% Marge Brute", TRANSPARENT, VISIBLE IsMarVisible.
           03 Screen1-DaEf-MargeBrute, Entry-Field, 
              COL 173,57, LINE 34,92, LINES 1,92 CELLS, 
              SIZE 14,14 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 120, RIGHT, 
              MAX-TEXT 11, NO-TAB, NUMERIC, READ-ONLY, 
              VALUE Screen1-DaEf-MargeBrute-BUF, VISIBLE IsMarVisible.
           03 Screen1-La-DAT-MART, Label, 
              COL 22,00, LINE 33,15, LINES 1,69 CELLS, 
              SIZE 20,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 121, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Date Tarif", TRANSPARENT, VISIBLE IsDatVisible.
           03 Screen1-Ef-DAT-MART, Entry-Field, 
              COL 22,00, LINE 34,92, LINES 1,92 CELLS, 
              SIZE 14,14 CELLS, 
              3-D, COLOR IS 2, ENABLED isModifying, ID IS 122, CENTER, 
              MAX-TEXT 10, VALUE W-DAT-MART, VISIBLE IsDatVisible, 
              EVENT PROCEDURE Screen1-Ef-DAT-MART-Event-Proc.
           03 Screen1-La-CRC-MART, Label, 
              COL 4,14, LINE 42,23, LINES 1,69 CELLS, SIZE 17,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 123, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Code Remise Client", TRANSPARENT, 
              VISIBLE isLeftVisible.
           03 Screen1-DaEf-CRC-MART, Entry-Field, 
              COL 21,14, LINE 41,69, LINES 1,92 CELLS, SIZE 9,71 CELLS, 
              3-D, COLOR IS 2, ENABLED isModifying2, ID IS 124, CENTER, 
              MAX-TEXT 3, NUMERIC, VALUE Screen1-DaEf-CRC-MART-BUF, 
              VISIBLE isLeftVisible, 
              EVENT PROCEDURE Screen1-DaEf-CRC-MART-Event-Proc.
           03 Screen1-DaEf-UAC-MART, Entry-Field, 
              COL 21,14, LINE 44,00, LINES 1,92 CELLS, SIZE 9,71 CELLS, 
              3-D, COLOR IS 2, ENABLED isModifying2, ID IS 129, CENTER, 
              MAX-TEXT 5, NUMERIC, VALUE Screen1-DaEf-UAC-MART-BUF, 
              VISIBLE isLeftVisible, 
              EVENT PROCEDURE Screen1-DaEf-UAC-MART-Event-Proc.
           03 Screen1-DaEf-UVE-MART, Entry-Field, 
              COL 21,14, LINE 46,31, LINES 1,92 CELLS, SIZE 9,71 CELLS, 
              3-D, COLOR IS 2, ENABLED isModifying2, ID IS 263, CENTER, 
              MAX-TEXT 5, NUMERIC, VALUE Screen1-DaEf-UVE-MART-BUF, 
              VISIBLE isLeftVisible, 
              EVENT PROCEDURE Screen1-DaEf-UVE-MART-Event-Proc.
           03 Screen1-DaEf-VOL-MART, Entry-Field, 
              COL 21,14, LINE 48,62, LINES 1,92 CELLS, SIZE 9,71 CELLS, 
              3-D, COLOR IS 2, ENABLED isModifying2, ID IS 131, CENTER, 
              MAX-TEXT 7, NUMERIC, VISIBLE isVOLVisible, 
              EVENT PROCEDURE Screen1-DaEf-VOL-MART-Event-Proc.
           03 Screen1-DaEf-POI-MART, Entry-Field, 
              COL 21,14, LINE 50,92, LINES 1,92 CELLS, SIZE 9,71 CELLS, 
              3-D, COLOR IS 2, ENABLED isModifying2, ID IS 134, CENTER, 
              MAX-TEXT 9, NUMERIC, VISIBLE isPOIVisible, 
              EVENT PROCEDURE Screen1-DaEf-POI-MART-Event-Proc.
           03 Screen1-La-PRMP-MASA, Label, 
              COL 98,71, LINE 33,15, LINES 1,69 CELLS, 
              SIZE 20,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 125, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "P.R.M.P.", TRANSPARENT, VISIBLE isPRMPVisible.
           03 Screen1-DaEf-PRMP-MASA, Entry-Field, 
              COL 98,71, LINE 34,92, LINES 1,92 CELLS, 
              SIZE 14,14 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 126, RIGHT, 
              MAX-TEXT 10, NO-TAB, VALUE Screen1-DaEf-PRMP-MASA-BUF, 
              VISIBLE isPRMPVisible.
           03 Screen1-La-1eb, Label, 
              COL 4,14, LINE 44,54, LINES 1,69 CELLS, SIZE 13,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 128, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Condt Achat", TRANSPARENT, VISIBLE isLeftVisible.
           03 Screen1-La-VOL-MART, Label, 
              COL 4,14, LINE 49,15, LINES 1,69 CELLS, SIZE 17,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 130, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Volume/Cnd Achat", TRANSPARENT, 
              VISIBLE isVOLVisible.
           03 Screen1-La-UNI-VOL-MART, Label, 
              COL 31,43, LINE 49,15, LINES 1,69 CELLS, SIZE 3,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 132, LEFT, 
              LABEL-OFFSET 0, TITLE W-UNI-VOL-MART, TRANSPARENT, 
              VISIBLE isVOLVisible.
           03 Screen1-La-POI-MART, Label, 
              COL 4,14, LINE 51,46, LINES 1,69 CELLS, SIZE 17,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 133, LEFT, 
              LABEL-OFFSET 0, TITLE La-POI-MART, TRANSPARENT, 
              VISIBLE isPOIVisible.
           03 Screen1-La-IPO-POI-MART, Label, 
              COL 31,43, LINE 51,46, LINES 1,69 CELLS, SIZE 3,57 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 135, LEFT, 
              LABEL-OFFSET 0, TITLE W-IPO-POI-MART, TRANSPARENT, 
              VISIBLE isPOIVisible.
           03 Screen1-Pb-Moteur-Expand, Push-Button, 
              COL 62,29, LINE 51,15, LINES 24, SIZE 24, 
              BITMAP-HANDLE EXPANDxx7-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 1015, FONT IS Default-Font, ID IS 139, 
              NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Afficher / Masquer la Référence Moteur", 
              VISIBLE isMoteurPbVisible, 
              ATW-CSS-CLASS "fas fa-arrow-circle-down".
           03 Screen1-Bt-2, Bitmap, 
              COL 62,29, LINE 51,15, LINES 31, SIZE 32, 
              BITMAP-HANDLE COLLAPSE7-JPG, BITMAP-NUMBER 1, 
              ID IS 140, VISIBLE 0, 
              ATW-CSS-CLASS "fas fa-arrow-circle-up".
           03 Screen1-Cb-SAI-MART, Check-Box, 
              COL 37,57, LINE 41,92, LINES 1,69 CELLS, 
              SIZE 24,00 CELLS, 
              COLOR IS 514, ENABLED isModifying2, FONT IS Small-Font, 
              ID IS 142, NOTIFY, 
              TITLE "Article Saisonnier", VALUE SAI-MART, 
              VISIBLE isLeftVisible, 
              BEFORE PROCEDURE Screen1-Cb-SAI-MART-BeforeProcedure.
           03 Screen1-Cb-DOC-MART, Check-Box, 
              COL 37,57, LINE 44,23, LINES 1,69 CELLS, 
              SIZE 24,00 CELLS, 
              COLOR IS 514, ENABLED isModifying2, EXCEPTION-VALUE 8002, 
              FONT IS Small-Font, ID IS 144, NOTIFY, 
              TITLE "Documentation", VALUE DOC-MART, 
              VISIBLE isLeftVisible.
           03 Screen1-Pb-DOC-MART, Push-Button, 
              COL 62,29, LINE 44,23, LINES 24, SIZE 24, 
              BITMAP-HANDLE INFORMA12-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 1018, FONT IS Small-Font, ID IS 145, 
              NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Documentation", VISIBLE isDOCVisible, 
              ATW-CSS-CLASS "fas fa-info-circle".
           03 Screen1-Cb-MUL-MART, Check-Box, 
              COL 37,57, LINE 46,54, LINES 1,69 CELLS, 
              SIZE 24,00 CELLS, 
              COLOR IS 514, ENABLED isMULEnabled, EXCEPTION-VALUE 8001, 
              FONT IS Small-Font, ID IS 147, NOTIFY, 
              TITLE "Multi-Approvisionnement", VALUE MUL-MART, 
              VISIBLE isLeftVisible.
           03 Screen1-Cb-ACHI-MART, Check-Box, 
              COL 37,57, LINE 48,85, LINES 1,69 CELLS, 
              SIZE 24,00 CELLS, 
              COLOR IS 514, ENABLED isModifying2, FONT IS Small-Font, 
              ID IS 228, NOTIFY, 
              TITLE "Achat interdit", VALUE ACHI-MART, 
              VISIBLE isLeftVisible, 
              BEFORE PROCEDURE Screen1-Cb-ACHI-MART-Bef-Procedure.
           03 Screen1-La-NAT-MART, Label, 
              COL 68,86, LINE 41,92, LINES 1,69 CELLS, 
              SIZE 13,43 CELLS, 
              COLOR IS 112, FONT IS Small-Font, ID IS 148, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Nature", VISIBLE isRightVisible.
           03 Screen1-Cb-IMO-MART, Check-Box, 
              COL 37,57, LINE 51,15, LINES 1,69 CELLS, 
              SIZE 24,00 CELLS, 
              COLOR IS 514, ENABLED isModifying2, FONT IS Small-Font, 
              ID IS 138, NOTIFY, 
              TITLE "Existence Moteur", VALUE IMO-MART, 
              VISIBLE isIMOVisible, 
              BEFORE PROCEDURE Screen1-Cb-IMO-MART-BeforeProcedure.
           03 Screen1-Cb-Web, Check-Box, 
              COL 203,86, LINE 11,15, LINES 1,23 CELLS, 
              SIZE 2,29 CELLS, 
              COLOR IS 2, ENABLED isModifying2, FONT IS Small-Font, 
              ID IS 249, VALUE WEB-MART, VISIBLE MODU-WEBTOP.
           03 Screen1-Rb-1-NAT-MART, Radio-Button, 
              COL 68,86, LINE 44,23, LINES 1,69 CELLS, 
              SIZE 13,43 CELLS, 
              COLOR IS 514, ENABLED IsNATEnabled, FONT IS Small-Font, 
              GROUP 1, GROUP-VALUE 1, ID IS 149, NO-TAB, NOTIFY, 
              TITLE "Origine", VALUE W-NAT-MART, 
              VISIBLE isRightVisible, 
              BEFORE PROCEDURE Screen1-Rb-x-NAT-MART-BeforeProcedure.
           03 Screen1-Rb-2-NAT-MART, Radio-Button, 
              COL 68,86, LINE 46,54, LINES 1,69 CELLS, 
              SIZE 13,43 CELLS, 
              COLOR IS 514, ENABLED IsNATEnabled, FONT IS Small-Font, 
              GROUP 1, GROUP-VALUE 2, ID IS 150, NO-TAB, NOTIFY, 
              TITLE "Adaptable", VALUE W-NAT-MART, 
              VISIBLE isRightVisible, 
              BEFORE PROCEDURE Screen1-Rb-x-NAT-MART-BeforeProcedure.
           03 Screen1-La-TAR-MART, Label, 
              COL 83,00, LINE 41,92, LINES 1,69 CELLS, 
              SIZE 13,43 CELLS, 
              COLOR IS 112, FONT IS Small-Font, ID IS 151, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Edition Tarif", VISIBLE isRightVisible.
           03 Screen1-Rb-1-TAR-MART, Radio-Button, 
              COL 83,00, LINE 44,23, LINES 1,69 CELLS, 
              SIZE 14,29 CELLS, 
              COLOR IS 514, ENABLED isModifying2, FONT IS Small-Font, 
              GROUP 6, GROUP-VALUE 1, ID IS 152, NO-TAB, NOTIFY, 
              TITLE "Oui", VALUE W-TAR-MART, VISIBLE isRightVisible, 
              BEFORE PROCEDURE Screen1-Rb-x-TAR-MART-BeforeProcedure.
           03 Screen1-Rb-2-TAR-MART, Radio-Button, 
              COL 83,00, LINE 46,54, LINES 1,69 CELLS, 
              SIZE 14,29 CELLS, 
              COLOR IS 514, ENABLED isModifying2, FONT IS Small-Font, 
              GROUP 6, GROUP-VALUE 2, ID IS 153, NO-TAB, NOTIFY, 
              TITLE "Non Edité", VALUE W-TAR-MART, 
              VISIBLE isRightVisible, 
              BEFORE PROCEDURE Screen1-Rb-x-TAR-MART-BeforeProcedure.
           03 Screen1-Rb-3-TAR-MART, Radio-Button, 
              COL 83,00, LINE 48,85, LINES 1,69 CELLS, 
              SIZE 14,29 CELLS, 
              COLOR IS 514, ENABLED isModifying2, FONT IS Small-Font, 
              GROUP 6, GROUP-VALUE 3, ID IS 154, NO-TAB, NOTIFY, 
              TITLE "Interdit Vente", VALUE W-TAR-MART, 
              VISIBLE isRightVisible, 
              BEFORE PROCEDURE Screen1-Rb-x-TAR-MART-BeforeProcedure.
           03 Screen1-La-ILV-MART, Label, 
              COL 117,29, LINE 41,92, LINES 1,69 CELLS, 
              SIZE 17,86 CELLS, 
              COLOR IS 112, FONT IS Small-Font, ID IS 155, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Destination", VISIBLE isILVVisible.
           03 Screen1-Rb-1-ILV-MART, Radio-Button, 
              COL 117,29, LINE 44,23, LINES 1,69 CELLS, 
              SIZE 17,86 CELLS, 
              COLOR IS 514, ENABLED isModifying2, FONT IS Small-Font, 
              GROUP 3, GROUP-VALUE 1, ID IS 156, NO-TAB, NOTIFY, 
              TERMINATION-VALUE 1247, 
              TITLE "Vente", VALUE W-ILV-MART, VISIBLE isILVVisible, 
              BEFORE PROCEDURE Screen1-Rb-x-ILV-MART-BeforeProcedure, 
              EVENT PROCEDURE Screen1-Rb-1-ILV-MART-Event-Proc.
           03 Screen1-Rb-2-ILV-MART, Radio-Button, 
              COL 117,29, LINE 46,54, LINES 1,69 CELLS, 
              SIZE 17,86 CELLS, 
              COLOR IS 514, ENABLED isModifying2, FONT IS Small-Font, 
              GROUP 3, GROUP-VALUE 2, ID IS 157, NO-TAB, NOTIFY, 
              TITLE "Location", VALUE W-ILV-MART, VISIBLE isILVVisible, 
              BEFORE PROCEDURE Screen1-Rb-x-ILV-MART-BeforeProcedure, 
              EVENT PROCEDURE Screen1-Rb-2-ILV-MART-Event-Proc.
           03 Screen1-Rb-3-ILV-MART, Radio-Button, 
              COL 117,29, LINE 48,92, LINES 1,69 CELLS, 
              SIZE 17,86 CELLS, 
              COLOR IS 514, ENABLED isModifying2, FONT IS Small-Font, 
              GROUP 3, GROUP-VALUE 3, ID IS 158, NO-TAB, NOTIFY, 
              TITLE "Vente + Location", VALUE W-ILV-MART, 
              VISIBLE isILVVisible, 
              BEFORE PROCEDURE Screen1-Rb-x-ILV-MART-BeforeProcedure.
           03 Screen1-La-ICO-MART, Label, 
              COL 98,43, LINE 41,92, LINES 1,69 CELLS, 
              SIZE 13,43 CELLS, 
              COLOR IS 112, FONT IS Small-Font, ID IS 159, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Politique Vente", VISIBLE isRightVisible.
           03 Screen1-Rb-1-ICO-MART, Radio-Button, 
              COL 98,43, LINE 44,23, LINES 1,69 CELLS, 
              SIZE 18,14 CELLS, 
              COLOR IS 514, ENABLED isModifying2, FONT IS Small-Font, 
              GROUP 2, GROUP-VALUE 1, ID IS 160, NO-TAB, NOTIFY, 
              TITLE "Normale", VALUE W-ICO-MART, 
              VISIBLE isRightVisible, 
              BEFORE PROCEDURE Screen1-Rb-x-ICO-MART-BeforeProcedure.
           03 Screen1-Rb-2-ICO-MART, Radio-Button, 
              COL 98,43, LINE 46,54, LINES 1,69 CELLS, 
              SIZE 18,14 CELLS, 
              COLOR IS 514, ENABLED isModifying2, FONT IS Small-Font, 
              GROUP 2, GROUP-VALUE 2, ID IS 161, NO-TAB, NOTIFY, 
              TITLE "Concurrencé", VALUE W-ICO-MART, 
              VISIBLE isRightVisible, 
              BEFORE PROCEDURE Screen1-Rb-x-ICO-MART-BeforeProcedure.
           03 Screen1-Rb-3-ICO-MART, Radio-Button, 
              COL 98,43, LINE 48,92, LINES 1,69 CELLS, 
              SIZE 18,14 CELLS, 
              COLOR IS 514, ENABLED isModifying2, FONT IS Small-Font, 
              GROUP 2, GROUP-VALUE 3, ID IS 162, NO-TAB, NOTIFY, 
              TITLE "Non Concurrencé", VALUE W-ICO-MART, 
              VISIBLE isRightVisible, 
              BEFORE PROCEDURE Screen1-Rb-x-ICO-MART-BeforeProcedure.
           03 Screen1-La-ITC-MART, Label, 
              COL 134,57, LINE 41,92, LINES 1,69 CELLS, 
              SIZE 13,43 CELLS, 
              COLOR IS 112, FONT IS Small-Font, ID IS 163, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Tarif Colonnes", VISIBLE isITCVisible.
           03 Screen1-Pb-Tarif-Expand, Push-Button, 
              COL 148,00, LINE 41,92, LINES 24, SIZE 24, 
              BITMAP-HANDLE EXPANDxx7-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 1014, FONT IS Default-Font, ID IS 164, 
              NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Afficher / Masquer le Tarif à Colonnes", 
              VISIBLE isTarifPbVisible, 
              ATW-CSS-CLASS "fas fa-arrow-circle-down".
           03 Screen1-Rb-1-ITC-MART, Radio-Button, 
              COL 134,57, LINE 44,23, LINES 1,69 CELLS, 
              SIZE 13,43 CELLS, 
              COLOR IS 514, ENABLED isModifying2, EXCEPTION-VALUE 1017, 
              FONT IS Small-Font, GROUP 4, GROUP-VALUE 1, ID IS 165, 
              NO-TAB, NOTIFY, 
              TITLE "Non", VALUE W-ITC-MART, VISIBLE isITCVisible.
           03 Screen1-Rb-2-ITC-MART, Radio-Button, 
              COL 134,57, LINE 46,54, LINES 1,69 CELLS, 
              SIZE 13,43 CELLS, 
              COLOR IS 514, ENABLED isModifying2, EXCEPTION-VALUE 1021, 
              FONT IS Small-Font, GROUP 4, GROUP-VALUE 2, ID IS 166, 
              NO-TAB, NOTIFY, 
              TITLE "Rem. / T.G.", VALUE W-ITC-MART, 
              VISIBLE isITCVisible.
           03 Screen1-Rb-3-ITC-MART, Radio-Button, 
              COL 134,57, LINE 48,85, LINES 1,69 CELLS, 
              SIZE 13,43 CELLS, 
              COLOR IS 514, ENABLED isModifying2, EXCEPTION-VALUE 1009, 
              FONT IS Small-Font, GROUP 4, GROUP-VALUE 3, ID IS 167, 
              NO-TAB, NOTIFY, 
              TITLE "Prix Net", VALUE W-ITC-MART, VISIBLE isITCVisible.
           03 Screen1-Fr-Moteur, Frame, 
              COL 78,29, LINE 59,46, LINES 5,69 CELLS, 
              SIZE 45,71 CELLS, 
              COLOR IS 9, FILL-COLOR 16, FILL-PERCENT 100, 
              FONT IS Small-Font, ID IS 169, VISIBLE isMoteurFrVisible, 
              BACKGROUND-LOW.
           03 Screen1-La-MARM-MART, Label, 
              COL 79,29, LINE W-LINE-MOT1, LINES 1,31 CELLS, 
              SIZE 5,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 170, RIGHT, 
              LABEL-OFFSET 0, 
              TITLE "Marque", TRANSPARENT, VISIBLE isMoteurFrVisible.
           03 Screen1-Ef-MARM-MART, Entry-Field, 
              COL 85,14, LINE W-LINE-MOT1, LINES 1,31 CELLS, 
              SIZE 5,71 CELLS, 
              3-D, COLOR IS 2, ENABLED isModifying, ID IS 171, CENTER, 
              MAX-TEXT 4, VALUE MARM-MART, VISIBLE isMoteurFrVisible, 
              EVENT PROCEDURE Screen1-Ef-MARM-MART-Event-Proc.
           03 Screen1-Pb-MarquesMoteur, Push-Button, 
              COL 91,00, LINE W-LINE-MOT1, LINES 10, SIZE 12, 
              BITMAP-HANDLE ZOOMxxx12-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              ENABLED isModifying, EXCEPTION-VALUE 1013, 
              FONT IS Default-Font, ID IS 172, NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Liste des Marques", VISIBLE isMoteurFrVisible.
           03 Screen1-Ef-LIB-MARM-MMAR, Entry-Field, 
              COL 95,29, LINE W-LINE-MOT1, LINES 1,31 CELLS, 
              SIZE 28,14 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 173, MAX-TEXT 20, 
              NO-TAB, VALUE W-LIB-MARM-MMAR, VISIBLE isMoteurFrVisible.
           03 Screen1-La-MODM-MART, Label, 
              COL 79,29, LINE W-LINE-MOT2, LINES 1,31 CELLS, 
              SIZE 5,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 174, RIGHT, 
              LABEL-OFFSET 0, 
              TITLE "Modèle", TRANSPARENT, VISIBLE isMoteurFrVisible.
           03 Screen1-Ef-MODM-MART, Entry-Field, 
              COL 85,14, LINE W-LINE-MOT2, LINES 1,31 CELLS, 
              SIZE 15,43 CELLS, 
              3-D, COLOR IS 2, ENABLED isModifying, ID IS 175, 
              MAX-TEXT 14, VALUE MODM-MART, VISIBLE isMoteurFrVisible.
           03 Screen1-La-TYPM-MART, Label, 
              COL 101,14, LINE W-LINE-MOT2, LINES 1,31 CELLS, 
              SIZE 4,00 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 176, RIGHT, 
              LABEL-OFFSET 0, 
              TITLE "Type", TRANSPARENT, VISIBLE isMoteurFrVisible.
           03 Screen1-Ef-TYPM-MART, Entry-Field, 
              COL 105,71, LINE W-LINE-MOT2, LINES 1,31 CELLS, 
              SIZE 17,14 CELLS, 
              3-D, COLOR IS 2, ENABLED isModifying, ID IS 177, 
              MAX-TEXT 16, VALUE TYPM-MART, VISIBLE isMoteurFrVisible.
           03 Screen1-La-Moteur, Label, 
              COL 78,29, LINE 58,77, LINES 1,00 CELLS, 
              SIZE 45,71 CELLS, 
              COLOR IS 112, FONT IS Small-Font, ID IS 179, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Référence Moteur", VISIBLE isMoteurFrVisible.
           03 Screen1-Pb-ListeArticles, Push-Button, 
              COL 201,43, LINE 6,46, LINES 24, SIZE 24, 
              BITMAP-HANDLE ZOOMxxx12-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              ENABLED isSearching, EXCEPTION-VALUE 1037, 
              FONT IS Default-Font, ID IS 187, NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Liste des Articles", 
              ATW-CSS-CLASS "button-icon fas fa-search".
           03 Screen1-Pb-Photo, Push-Button, 
              COL 65,29, LINE 62,69, LINES 24, SIZE 24, 
              BITMAP-HANDLE TROMBON24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              EXCEPTION-VALUE 5788, ID IS 202, NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Photos", VISIBLE isPhotoVisible.
           03 Screen1-La-GCOD-MART, Label, 
              COL 129,29, LINE 21,69, LINES 1,92 CELLS, 
              SIZE 12,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 211, 
              LABEL-OFFSET 0, 
              TITLE "Gencod", TRANSPARENT, VISIBLE IsGCODVisible.
           03 Screen1-Pb-ListeArtFou, Push-Button, 
              COL 58,43, LINE 16,54, LINES 24, SIZE 24, 
              BITMAP-HANDLE ZOOMxxx12-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              ENABLED isFOUEnabled, EXCEPTION-VALUE 1040, 
              FONT IS Default-Font, ID IS 96, NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Liste des Articles du fournisseur", 
              VISIBLE isLAFVisible, 
              ATW-CSS-CLASS "button-icon fas fa-search", 
              BEFORE PROCEDURE Screen1-DaEf-FOU-MART-Bef-Procedure.
           03 Screen1-Pb-DUP-RFN, Push-Button, 
              COL 164,86, LINE 16,54, LINES 24, SIZE 24, 
              BITMAP-HANDLE DUPLIQU12-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              ENABLED isModifying, EXCEPTION-VALUE 1030, ID IS 76, 
              TITLE "Dupliquer la référence Fournisseur", 
              ATW-CSS-CLASS "button-icon fas fa-copy".
           03 Screen1-Pb-CREAT-GCOD, Push-Button, 
              COL 164,86, LINE 21,15, LINES 24, SIZE 24, 
              BITMAP-HANDLE CODEBAR16-jpg, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              ENABLED isModifying, EXCEPTION-VALUE 1031, ID IS 48, 
              TITLE "Création Automatique du Gencod", 
              VISIBLE IsCreatGCODVisible, 
              ATW-CSS-CLASS "button-icon fas fa-barcode".
           03 Screen1-Pb-ListeArtFam, Push-Button, 
              COL 122,14, LINE 16,54, LINES 24, SIZE 24, 
              BITMAP-HANDLE ZOOMxxx12-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              ENABLED isGRAFAMEnabled, EXCEPTION-VALUE 1140, 
              FONT IS Default-Font, ID IS 89, NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Liste des Articles de la famille", 
              VISIBLE isLAF2Visible, 
              ATW-CSS-CLASS "button-icon fas fa-search", 
              BEFORE PROCEDURE Screen1-DaEf-FOU-MART-Bef-Procedure.
           03 Screen1-La-COD-MARTa, Label, 
              COL 176,57, LINE 14,77, LINES 1,92 CELLS, 
              SIZE 8,43 CELLS, 
              COLOR IS COD-MART-Color, FONT IS COD-MART-Font, 
              ID IS 178, LEFT, LABEL-OFFSET 0, 
              TITLE "IDF".
           03 Screen1-La-CRE, Label, 
              COL 4,14, LINE 53,77, LINES 1,69 CELLS, SIZE 36,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 226, 
              LABEL-OFFSET 0, TITLE W-CRE, TRANSPARENT.
           03 Screen1-La-MOD, Label, 
              COL 37,57, LINE 53,85, LINES 1,15 CELLS, 
              SIZE 36,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 227, 
              LABEL-OFFSET 0, TITLE W-MOD, TRANSPARENT.
           03 Screen1-DaGd-RTG, Grid, 
              COL W-COL-RTG, LINE W-LINE-RTG, LINES 6,23 CELLS, 
              SIZE 61,71 CELLS, 
              NO-BOX, CENTERED-HEADINGS, COLUMN-HEADINGS, 
              DATA-COLUMNS (1, 2, 7, 12, 17, 28, 39), 
              DISPLAY-COLUMNS (1, 5, 13, 21, 29, 40, 51), 
              ALIGNMENT ("C", "R", "R", "R", "R", "R", "R"), 
              DATA-TYPES ("9", "99999", "99999", "X", "S9999999V99", "S9
      -       "999999V99", "S999V99"), 
              SEPARATION (5, 5, 5, 5, 5, 5, 5), 
              CURSOR-FRAME-WIDTH 1, DIVIDER-COLOR 8, END-COLOR 16, 
              HEADING-COLOR 112, HEADING-FONT IS Small-Font, ID IS 213, 
              NUM-COL-HEADINGS 1, NUM-ROWS 7, ROW-HEADINGS, 
              TILED-HEADINGS, USE-TAB, VPADDING 50, 
              VISIBLE isRTGDaGdVisible, VSCROLL, 
              EVENT PROCEDURE Screen1-DaGd-RTG-Event-Proc.
           03 Screen1-La-Tarif, Label, 
              COL W-COL-RTG, LINE 39,77, LINES 1,69 CELLS, 
              SIZE 83,00 CELLS, 
              COLOR IS 112, FONT IS Small-Font, ID IS 183, LEFT, 
              LABEL-OFFSET 0, TITLE W-LIB-Tarif, VISIBLE 0.
           03 Screen1-La-PAC-NUU, Label, 
              COL 61,29, LINE 33,15, LINES 1,69 CELLS, 
              SIZE 20,43 CELLS, 
              COLOR IS PAC-MART-Color, FONT IS Small-Font, ID IS 229, 
              LEFT, LABEL-OFFSET 0, 
              TITLE "P.A. Net /UV", TRANSPARENT, VISIBLE isNUUVisible.
           03 Screen1-Ef-PAC-NUU, Entry-Field, 
              COL 61,29, LINE 34,92, LINES 1,92 CELLS, 
              SIZE 14,14 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 230, RIGHT, 
              MAX-TEXT 11, NUMERIC, VALUE Screen1-Ef-PAC-NUU-BUF, 
              VISIBLE isNUUVisible.
           03 Screen1-Bt-1c, Bitmap, 
              COL 52,29, LINE 62,92, LINES 24, SIZE 24, 
              BITMAP-HANDLE TROMBO324-JPG, BITMAP-NUMBER 1, 
              ID IS 232, VISIBLE 0.
           03 Screen1-Rb-3-NAT-MART, Radio-Button, 
              COL 68,86, LINE 48,85, LINES 1,69 CELLS, 
              SIZE 13,43 CELLS, 
              COLOR IS 514, ENABLED IsNAT3Enabled, FONT IS Small-Font, 
              GROUP 1, GROUP-VALUE 3, ID IS 237, NO-TAB, NOTIFY, 
              TITLE "Occasion", VALUE W-NAT-MART, 
              VISIBLE isRight2Visible, 
              BEFORE PROCEDURE Screen1-Rb-x-NAT-MART-BeforeProcedure.
           03 Screen1-La-SOC-MART, Label, 
              COL 88,29, LINE 18,85, LINES 1,00 CELLS, 
              SIZE 20,86 CELLS, 
              COLOR IS SOC-MART-Color, FONT IS Small-Font, ID IS 233, 
              LEFT, LABEL-OFFSET 0, TITLE W-TIT-SOCART, TRANSPARENT, 
              VISIBLE IsSOCARTVisible.
           03 Screen1-DaEf-SOC-MART, Entry-Field, 
              COL 101,57, LINE 18,85, LINES 1,92 CELLS, 
              SIZE 6,43 CELLS, 
              3-D, COLOR IS W-COLOR-SOC, ENABLED isSOCEnabled, 
              ID IS 241, CENTER, MAX-TEXT 3, NUMERIC, VALUE SOC-MART, 
              VISIBLE IsSOCARTVisible, 
              EVENT PROCEDURE Screen1-DaEf-SOC-MART-Event-Proc.
           03 Screen1-La-TTSO, Label, 
              COL 65,00, LINE 56,08, LINES 1,23 CELLS, 
              SIZE 15,43 CELLS, 
              COLOR IS 2, FONT IS Large-Font, ID IS 221, CENTER, 
              LABEL-OFFSET 0, 
              TITLE "Autres sociétés", VISIBLE isICAREFVisible.
           03 Screen1-Br-1a, Bar, 
              COL 8,57, LINE 55,69, SIZE 114,29 CELLS, 
              COLOR IS 2, ID IS 243, VISIBLE isICAREFVisible, WIDTH 1.
           03 Screen1-DaEf-NOMSOC-MART, Entry-Field, 
              COL 108,86, LINE 18,85, LINES 1,92 CELLS, 
              SIZE 12,14 CELLS, 
              3-D, COLOR IS W-COLOR-SOC, ENABLED 0, ID IS 244, CENTER, 
              MAX-TEXT 3, NUMERIC, VALUE W-NOMSOC-MART, 
              VISIBLE IsSOCARTVisible, 
              EVENT PROCEDURE Screen1-DaEf-SOC-MART-Event-Proc.
           03 Screen1-Fr-TarifICA, Frame, 
              COL 66,00, LINE 18,85, LINES 2,31 CELLS, 
              SIZE 23,14 CELLS, 
              ENGRAVED, FILL-COLOR 6, FILL-PERCENT 100, ID IS 245, 
              VISIBLE IsSocVisible, BACKGROUND-LOW.
           03 Screen1-Pb-RetourRef, Push-Button, 
              COL 85,71, LINE 19,69, LINES 12, SIZE 12, 
              BITMAP-HANDLE RAFRAIC12-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1948, ID IS 247, 
              TITLE "Retour au référentiel", VISIBLE IsSocVisible, 
              ATW-CSS-CLASS "button-icon fas fa-refresh".
           03 Screen1-La-ArtAnnul, Label, 
              COL 66,00, LINE 11,69, LINES 1,92 CELLS, 
              SIZE 57,71 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 657, LEFT, 
              LABEL-OFFSET 0, VISIBLE 0.
           03 Screen1-La-IMO-MARTa, Label, 
              COL 186,00, LINE 11,15, LINES 1,00 CELLS, 
              SIZE 19,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 59, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Non visible/Webtop", TRANSPARENT, 
              VISIBLE MODU-WEBTOP.
           03 Screen1-Pb-PRESENCE, Push-Button, 
              COL 71,43, LINE 63,08, LINES 24, SIZE 24, 
              BITMAP-HANDLE RECHERC24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1452, FONT IS Small-Font, ID IS 256, 
              TITLE "Présence article dans composition...".
           03 Screen1-Pb-OLDTAR, Push-Button, 
              COL 37,00, LINE 34,92, LINES 24, SIZE 25, 
              BITMAP-HANDLE EUROBXX12-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1952, ID IS 257, 
              TITLE "Voir les anciens tarifs", VISIBLE 0, 
              ATW-CSS-CLASS "fas fa-euro-sign".
           03 Screen1-La-1eba, Label, 
              COL 4,14, LINE 46,85, LINES 1,69 CELLS, SIZE 13,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 259, LEFT, 
              LABEL-OFFSET 0, 
              TITLE "Condt Vente", TRANSPARENT, VISIBLE isLeftVisible.
           03 Screen1-Bt-1, Bitmap, 
              COL 56,14, LINE 62,92, LINES 24, SIZE 24, 
              BITMAP-HANDLE TERMINX24-JPG, BITMAP-NUMBER 1, 
              ID IS 14, VISIBLE 0.
           03 Screen1-Pb-Quitter, Push-Button, 
              COL 190,71, LINE 1,92, LINES 24, SIZE 118, 
              BITMAP-HANDLE QUITTER24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 9856, ID IS 20, NO-AUTO-DEFAULT, NO-TAB, 
              TITLE "Quitter", ATW-CSS-CLASS "button-quitter".
           03 Screen1-Pb-Fonctions, Push-Button, 
              COL 53,57, LINE L-BOUTONS-HAUT, LINES 18, SIZE 154, 
              BITMAP-HANDLE FLECHEB24-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              FONT IS Large-Font, ID IS 25, TITLE-POSITION 2, 
              ATW-CSS-CLASS "button-autres".
           03 Screen1-Pb-Agence, Push-Button, 
              COL 3,14, LINE 6,46, LINES 18, SIZE 24, 
              BITMAP-HANDLE ZOOMxxx12-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              FONT IS Default-Font, ID IS 47, NO-AUTO-DEFAULT, NO-TAB, 
              SELF-ACT, TERMINATION-VALUE 1011, 
              ATW-CSS-CLASS "button-icon fa-home".
           03 Screen1-DaEf-FOU-MART, Entry-Field, 
              COL 17,71, LINE 14,23, LINES 1,92 CELLS, SIZE 9,14 CELLS, 
              3-D, COLOR IS 2, ENABLED isFOUEnabled, ID IS 34, CENTER, 
              MAX-TEXT 6, NUMERIC, VALUE Screen1-DaEf-FOU-MART-BUF, 
              BEFORE PROCEDURE Screen1-DaEf-FOU-MART-Bef-Procedure, 
              EVENT PROCEDURE Screen1-DaEf-FOU-MART-Event-Proc.
           03 Screen1-Ef-RAI-MFOU, Entry-Field, 
              COL 27,29, LINE 14,23, LINES 1,92 CELLS, 
              SIZE 30,29 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 36, MAX-TEXT 25, 
              NO-TAB, VALUE RAI-MFOU.
           03 Screen1-La-TarifIca, Label, 
              COL 66,00, LINE 18,85, LINES 2,31 CELLS, 
              SIZE 18,86 CELLS, 
              COLOR IS 197, FONT IS Fixed-Font, ID IS 246, LEFT, 
              LABEL-OFFSET 0, VISIBLE IsSocVisible.
           03 Screen1-La-COD-MARTaa, Label, 
              COL 186,29, LINE 14,77, LINES 1,92 CELLS, 
              SIZE 19,00 CELLS, 
              COLOR IS COD-MART-Color, FONT IS COD-MART-Font, ID IS 8, 
              LEFT, LABEL-OFFSET 0, 
              TITLE "Code Article".
           03 Screen1-Ef-LZSC4, Entry-Field, 
              COL 179,29, LINE 48,85, LINES 1,92 CELLS, 
              SIZE 25,71 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 207, MAX-TEXT 30, 
              VALUE W-LZSC4, VISIBLE isZSC4Visible.
           03 Screen1-Ef-ZSA4, Entry-Field, 
              COL 168,29, LINE 48,85, LINES 1,92 CELLS, 
              SIZE 36,71 CELLS, 
              3-D, COLOR IS 2, ENABLED isModifying, ID IS 209, 
              VALUE W-ZSPA4, VISIBLE isZSA4Visible.
           03 Screen1-Ef-ZSN4, Entry-Field, 
              COL 169,86, LINE 48,85, LINES 1,92 CELLS, 
              SIZE 16,14 CELLS, 
              3-D, COLOR IS 2, ENABLED isModifying, ID IS 205, NUMERIC, 
              VALUE W-ZSPN4, VISIBLE isZSN4Visible.
           03 Screen1-Ef-ZSA3, Entry-Field, 
              COL 168,29, LINE 46,54, LINES 1,92 CELLS, 
              SIZE 36,71 CELLS, 
              3-D, COLOR IS 2, ENABLED isModifying, ID IS 208, 
              VALUE W-ZSPA3, VISIBLE isZSA3Visible.
           03 Screen1-Ef-LZSC3, Entry-Field, 
              COL 179,29, LINE 46,54, LINES 1,92 CELLS, 
              SIZE 25,71 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 206, MAX-TEXT 30, 
              VALUE W-LZSC3, VISIBLE isZSC3Visible.
           03 Screen1-Ef-ZSA2, Entry-Field, 
              COL 168,29, LINE 44,23, LINES 1,92 CELLS, 
              SIZE 36,71 CELLS, 
              3-D, COLOR IS 2, ENABLED isModifying, ID IS 197, 
              VALUE W-ZSPA2, VISIBLE isZSA2Visible.
           03 Screen1-Ef-ZSN3, Entry-Field, 
              COL 169,86, LINE 46,54, LINES 1,92 CELLS, 
              SIZE 16,14 CELLS, 
              3-D, COLOR IS 2, ENABLED isModifying, ID IS 204, NUMERIC, 
              VALUE W-ZSPN3, VISIBLE isZSN3Visible.
           03 Screen1-Ef-LZSC2, Entry-Field, 
              COL 179,29, LINE 44,23, LINES 1,92 CELLS, 
              SIZE 25,71 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 191, MAX-TEXT 30, 
              VALUE W-LZSC2, VISIBLE isZSC2Visible.
           03 Screen1-Ef-LZSC1, Entry-Field, 
              COL 179,29, LINE 41,92, LINES 1,92 CELLS, 
              SIZE 25,71 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 189, MAX-TEXT 30, 
              VALUE W-LZSC1, VISIBLE isZSC1Visible.
           03 Screen1-Ef-ZSA1, Entry-Field, 
              COL 168,29, LINE 41,92, LINES 1,92 CELLS, 
              SIZE 36,71 CELLS, 
              3-D, COLOR IS 2, ENABLED isModifying, ID IS 190, 
              VALUE W-ZSPA1, VISIBLE isZSA1Visible.
           03 Screen1-Ef-ZSN1, Entry-Field, 
              COL 169,86, LINE 41,92, LINES 1,92 CELLS, 
              SIZE 16,14 CELLS, 
              3-D, COLOR IS 2, ENABLED isModifying, ID IS 192, NUMERIC, 
              VALUE W-ZSPN1, VISIBLE isZSN1Visible.
           03 Screen1-Ef-ZSC1, Entry-Field, 
              COL 169,57, LINE 41,92, LINES 1,92 CELLS, 
              SIZE 6,14 CELLS, 
              3-D, COLOR IS 2, ENABLED isModifying, ID IS 193, 
              MAX-TEXT 3, VALUE W-ZSPC1, VISIBLE isZSC1Visible, 
              EVENT PROCEDURE Screen1-Ef-ZSC1-Event-Proc.
           03 Screen1-Pb-Liste-ZSC1, Push-Button, 
              COL 175,71, LINE 41,92, LINES 24, SIZE 24, 
              BITMAP-HANDLE ZOOMxxx12-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              ENABLED isModifying, EXCEPTION-VALUE 1070, 
              FONT IS Default-Font, ID IS 194, NO-AUTO-DEFAULT, NO-TAB, 
              SELF-ACT, 
              TITLE "Liste ", VISIBLE isZSC1Visible.
           03 Screen1-La-ZSP1, Label, 
              COL 153,86, LINE 42,46, LINES 1,69 CELLS, 
              SIZE 13,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 195, RIGHT, 
              LABEL-OFFSET 0, TITLE W-LIB-ZSP1, VISIBLE isZSP1Visible.
           03 Screen1-La-ZSP2, Label, 
              COL 153,86, LINE 44,77, LINES 1,69 CELLS, 
              SIZE 13,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 196, RIGHT, 
              LABEL-OFFSET 0, TITLE W-LIB-ZSP2, VISIBLE isZSP2Visible.
           03 Screen1-Ef-ZSN2, Entry-Field, 
              COL 169,86, LINE 44,23, LINES 1,92 CELLS, 
              SIZE 16,14 CELLS, 
              3-D, COLOR IS 2, ENABLED isModifying, ID IS 198, NUMERIC, 
              VALUE W-ZSPN2, VISIBLE isZSN2Visible.
           03 Screen1-Ef-ZSC2, Entry-Field, 
              COL 169,57, LINE 44,23, LINES 1,92 CELLS, 
              SIZE 6,14 CELLS, 
              3-D, COLOR IS 2, ENABLED isModifying, ID IS 199, 
              MAX-TEXT 3, VALUE W-ZSPC2, VISIBLE isZSC2Visible, 
              EVENT PROCEDURE Screen1-Ef-ZSC2-Event-Proc.
           03 Screen1-Pb-Liste-ZSC2, Push-Button, 
              COL 175,71, LINE 44,23, LINES 24, SIZE 24, 
              BITMAP-HANDLE ZOOMxxx12-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              ENABLED isModifying, EXCEPTION-VALUE 1071, 
              FONT IS Default-Font, ID IS 200, NO-AUTO-DEFAULT, NO-TAB, 
              SELF-ACT, 
              TITLE "Liste", VISIBLE isZSC2Visible.
           03 Screen1-La-ZSP3, Label, 
              COL 153,86, LINE 47,08, LINES 1,69 CELLS, 
              SIZE 13,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 46, RIGHT, 
              LABEL-OFFSET 0, TITLE W-LIB-ZSP3, VISIBLE isZSP3Visible.
           03 Screen1-La-ZSP4, Label, 
              COL 153,86, LINE 49,23, LINES 1,69 CELLS, 
              SIZE 13,14 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 69, RIGHT, 
              LABEL-OFFSET 0, TITLE W-LIB-ZSP4, VISIBLE isZSP4Visible.
           03 Screen1-Ef-ZSC3, Entry-Field, 
              COL 169,57, LINE 46,54, LINES 1,92 CELLS, 
              SIZE 6,14 CELLS, 
              3-D, COLOR IS 2, ENABLED isModifying, ID IS 98, 
              MAX-TEXT 3, VALUE W-ZSPC3, VISIBLE isZSC3Visible, 
              EVENT PROCEDURE Screen1-Ef-ZSC2-Event-Proc.
           03 Screen1-Pb-Liste-ZSC3, Push-Button, 
              COL 175,71, LINE 46,54, LINES 24, SIZE 24, 
              BITMAP-HANDLE ZOOMxxx12-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              ENABLED isModifying, EXCEPTION-VALUE 1072, 
              FONT IS Default-Font, ID IS 100, NO-AUTO-DEFAULT, NO-TAB, 
              SELF-ACT, 
              TITLE "Liste", VISIBLE isZSC3Visible.
           03 Screen1-Ef-ZSC4, Entry-Field, 
              COL 169,57, LINE 48,85, LINES 1,92 CELLS, 
              SIZE 6,14 CELLS, 
              3-D, COLOR IS 2, ENABLED isModifying, ID IS 99, 
              MAX-TEXT 3, VALUE W-ZSPC4, VISIBLE isZSC4Visible, 
              EVENT PROCEDURE Screen1-Ef-ZSC2-Event-Proc.
           03 Screen1-Pb-Liste-ZSC4, Push-Button, 
              COL 175,71, LINE 48,54, LINES 24, SIZE 24, 
              BITMAP-HANDLE ZOOMxxx12-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              ENABLED isModifying, EXCEPTION-VALUE 1073, 
              FONT IS Default-Font, ID IS 203, NO-AUTO-DEFAULT, NO-TAB, 
              SELF-ACT, 
              TITLE "Liste", VISIBLE isZSC4Visible.
           03 Screen1-Cb-STITA, Check-Box, 
              COL 169,57, LINE 39,85, LINES 1,69 CELLS, 
              SIZE 20,71 CELLS, 
              COLOR IS 2, ENABLED isModifying, FONT IS Small-Font, 
              ID IS 260, 
              TITLE "Pièce LLLL", VALUE W-STITA-LANDA, 
              VISIBLE MODU-LANDA.
       01 ScreenInex.
           03 ScreenInex-Pb-Oui, Push-Button, 
              COL 7,29, LINE 5,85, LINES 2,08 CELLS, SIZE 6,86 CELLS, 
              ID IS 3, DEFAULT-BUTTON, TERMINATION-VALUE 1004, 
              TITLE "Oui".
           03 ScreenInex-Pb-Non, Push-Button, 
              COL 14,57, LINE 5,85, LINES 2,08 CELLS, SIZE 6,86 CELLS, 
              ID IS 4, ESCAPE-BUTTON, TERMINATION-VALUE 1001, 
              TITLE "Non".
           03 ScreenInex-Pb-Cat, Push-Button, 
              COL 21,86, LINE 5,85, LINES 2,08 CELLS, SIZE 18,00 CELLS, 
              ID IS 5, TERMINATION-VALUE 1002, 
              TITLE "Voir le catalogue".
           03 ScreenInex-Bt-1, Bitmap, TRANSPARENT-COLOR 12632256, 
              COL 6,71, LINE 2,15, LINES 32, SIZE 32, 
              BITMAP-HANDLE WARNING24-BMP, BITMAP-NUMBER 1, 
              ID IS 1.
           03 ScreenInex-La-1, Label, 
              COL 13,57, LINE 3,00, LINES 1,00 CELLS, SIZE 28,71 CELLS, 
              COLOR IS 2, FONT IS Default-Font, ID IS 2, 
              LABEL-OFFSET 0, 
              TITLE "Inexistant - Voir l'article suivant ?", 
              TRANSPARENT.
       01 ScreenDup.
           03 ScreenDup-Fr-1, Frame, 
              COL 1,71, LINE 3,85, LINES 9,62 CELLS, SIZE 50,43 CELLS, 
              ENGRAVED, FILL-COLOR 16, FILL-PERCENT 100, ID IS 1, 
              BACKGROUND-LOW.
           03 ScreenDup-La-1, Label, 
              COL 3,00, LINE 5,31, LINES 1,00 CELLS, SIZE 12,29 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 4, LABEL-OFFSET 0, 
              TITLE "Article à dupliquer", TRANSPARENT.
           03 ScreenDup-Ef-DU1, Entry-Field, 
              COL 16,14, LINE 5,08, LINES 1,38 CELLS, SIZE 5,00 CELLS, 
              3-D, COLOR IS 2, ID IS 5, MAX-TEXT 4, VALUE W-DU1, 
              VISIBLE SCA-MPAR.
           03 ScreenDup-Ef-DU2, Entry-Field, 
              COL 21,86, LINE 5,08, LINES 1,38 CELLS, SIZE 25,00 CELLS, 
              3-D, COLOR IS 2, ID IS 6, MAX-TEXT 16, VALUE W-DU2, 
              AFTER PROCEDURE ScreenDup-Ef-DU2-Aft-Procedure.
           03 ScreenDup-Pb-Liste, Push-Button, 
              COL 47,71, LINE 4,85, LINES 16, SIZE 16, 
              BITMAP-HANDLE ZOOMxxx16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 1000, ID IS 7, SELF-ACT, 
              TITLE "Liste".
           03 ScreenDup-Ef-DES, Entry-Field, 
              COL 16,14, LINE 6,85, LINES 1,38 CELLS, SIZE 30,71 CELLS, 
              3-D, COLOR IS 2, ENABLED 0, ID IS 8, VALUE DES-MART2.
           03 ScreenDup-Cb-DOC, Check-Box, 
              COL 3,00, LINE 8,85, LINES 1,23 CELLS, SIZE 27,43 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 9, LEFT-TEXT, 
              TITLE "Dupliquer la documentation", VALUE W-DUP-DOC, 
              VISIBLE isDupDocVisible.
           03 ScreenDup-Cb-MUL, Check-Box, 
              COL 3,00, LINE 10,31, LINES 1,23 CELLS, SIZE 27,43 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 10, LEFT-TEXT, 
              TITLE "Dupliquer le multi-appro", VALUE W-DUP-MUL, 
              VISIBLE isDupMulVisible.
           03 ScreenDup-Cb-INO, Check-Box, 
              COL 3,00, LINE 11,77, LINES 1,23 CELLS, SIZE 27,43 CELLS, 
              COLOR IS 514, FONT IS Small-Font, ID IS 11, LEFT-TEXT, 
              TITLE "Dupliquer la composition", VALUE W-DUP-INO, 
              VISIBLE isDupInoVisible.
           03 ScreenDup-Pb-Valider, Push-Button, 
              COL 43,00, LINE 1,38, LINES 24, SIZE 24, 
              BITMAP-HANDLE VALIDER24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              ID IS 2, TERMINATION-VALUE 9858, 
              TITLE "Valider".
           03 ScreenDup-Pb-Annuler, Push-Button, 
              COL 47,57, LINE 1,38, LINES 24, SIZE 24, 
              BITMAP-HANDLE ANNULER24-JPG, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 9860, ID IS 3, SELF-ACT, 
              TITLE "Annuler".
       01 ScreenPres.
           03 Screen6-La-COD-MART, Label, 
              COL 7,57, LINE 1,77, LINES 1,00 CELLS, SIZE 5,57 CELLS, 
              COLOR IS 2, FONT IS Default-Font, ID IS 168, RIGHT, 
              LABEL-OFFSET 0, 
              TITLE "Article".
           03 Screen6-Ef-CO1-MART, Entry-Field, 
              COL 13,71, LINE 1,62, LINES 1,31 CELLS, SIZE 5,71 CELLS, 
              3-D, COLOR IS 194, ENABLED 0, ID IS 184, CENTER, 
              MAX-TEXT 4, NO-AUTOSEL, NO-TAB, READ-ONLY, 
              VALUE CO1-MART.
           03 Screen6-Ef-CO2-MART, Entry-Field, 
              COL 19,57, LINE 1,62, LINES 1,31 CELLS, SIZE 18,29 CELLS, 
              3-D, COLOR IS 194, ENABLED 0, ID IS 185, MAX-TEXT 16, 
              NO-AUTOSEL, NO-TAB, READ-ONLY, VALUE CO2-MART.
           03 Screen6-Ef-DES-MART, Entry-Field, 
              COL 38,71, LINE 1,62, LINES 1,31 CELLS, SIZE 43,29 CELLS, 
              3-D, COLOR IS 194, ENABLED 0, ID IS 45, MAX-TEXT 40, 
              NO-AUTOSEL, NO-TAB, READ-ONLY, VALUE DES-MART.
           03 ScreenPres-Gd-1, Grid, 
              COL 2,00, LINE 4,69, LINES 21,85 CELLS, SIZE 89,43 CELLS, 
              3-D, CENTERED-HEADINGS, COLOR IS 2, COLUMN-HEADINGS, 
              DATA-COLUMNS (1, 2, 22, 62), 
              DISPLAY-COLUMNS (1, 4, 25, 75), 
              ALIGNMENT ("C", "U", "U", "R"), 
              SEPARATION (5, 5, 5, 5), 
              CURSOR-FRAME-WIDTH 0, DIVIDER-COLOR w-divider-color, 
              DRAG-COLOR 1, END-COLOR w-end-color, 
              HEADING-COLOR w-heading-color, 
              HEADING-DIVIDER-COLOR w-heading-divider-color, ID IS 47, 
              NUM-COL-HEADINGS 1, NUM-ROWS W-NUM-ROWS, 
              POP-UP MENU IS ScreenPres-Mn-1-Handle, 
              RECORD-DATA ScreenPres-Gd-1-Record, TILED-HEADINGS, 
              VPADDING 50, VSCROLL, 
              EVENT PROCEDURE ScreenPres-Gd-1-Event-Proc.
           03 ScreenPres-La-1, Label, 
              COL 2,57, LINE 27,15, LINES 1,38 CELLS, SIZE 16,86 CELLS, 
              COLOR IS 5, FONT IS Default-Font, ID IS 48, 
              LABEL-OFFSET 0, 
              TITLE "Colonne O (origine) :", TRANSPARENT.
           03 ScreenPres-La-1a, Label, 
              COL 24,00, LINE 27,15, LINES 1,38 CELLS, 
              SIZE 12,57 CELLS, 
              COLOR IS 5, FONT IS Default-Font, ID IS 49, 
              LABEL-OFFSET 0, 
              TITLE "Composition", TRANSPARENT.
           03 ScreenPres-La-1aaa, Label, 
              COL 41,00, LINE 27,15, LINES 1,38 CELLS, SIZE 8,71 CELLS, 
              COLOR IS 5, FONT IS Default-Font, ID IS 51, 
              LABEL-OFFSET 0, 
              TITLE "Kit", TRANSPARENT.
           03 ScreenPres-La-1ab, Label, 
              COL 24,00, LINE 28,62, LINES 1,38 CELLS, 
              SIZE 12,57 CELLS, 
              COLOR IS 5, FONT IS Default-Font, ID IS 52, 
              LABEL-OFFSET 0, 
              TITLE "Equivalence", TRANSPARENT.
           03 ScreenPres-La-1aab, Label, 
              COL 41,00, LINE 28,62, LINES 1,38 CELLS, 
              SIZE 17,71 CELLS, 
              COLOR IS 5, FONT IS Default-Font, ID IS 53, 
              LABEL-OFFSET 0, 
              TITLE "Complément conseillé", TRANSPARENT.
           03 ScreenPres-La-V, Label, 
              COL 64,86, LINE 28,62, LINES 1,38 CELLS, 
              SIZE 21,71 CELLS, 
              COLOR IS 5, FONT IS Default-Font, ID IS 55, 
              LABEL-OFFSET 0, 
              TITLE "Epave échange standard", TRANSPARENT.
           03 ScreenPres-Bt-1, Bitmap, 
              COL 21,14, LINE 27,23, LINES 12, SIZE 12, 
              BITMAP-HANDLE COMPOSI12-JPG, BITMAP-NUMBER 1, 
              ID IS 1.
           03 ScreenPres-Bt-2, Bitmap, 
              COL 38,29, LINE 27,23, LINES 12, SIZE 12, 
              BITMAP-HANDLE COMPOKI12-JPG, BITMAP-NUMBER 1, 
              ID IS 2.
           03 ScreenPres-Bt-3, Bitmap, 
              COL 21,14, LINE 28,62, LINES 12, SIZE 12, 
              BITMAP-HANDLE EQUIVAL12-JPG, BITMAP-NUMBER 1, 
              ID IS 3.
           03 ScreenPres-Bt-4, Bitmap, 
              COL 38,29, LINE 28,62, LINES 12, SIZE 12, 
              BITMAP-HANDLE COMPLEM12-jpg, BITMAP-NUMBER 1, 
              ID IS 4.
           03 ScreenPres-Bt-5, Bitmap, 
              COL 61,86, LINE 28,62, LINES 12, SIZE 12, 
              BITMAP-HANDLE ECHASTD12-jpg, BITMAP-NUMBER 1, 
              ID IS 5.
       01 ScreenOTA.
           03 ScreenOTA-Gd-1, Grid, 
              COL 1,71, LINE 4,23, LINES 15,62 CELLS, SIZE 59,71 CELLS, 
              3-D, CENTERED-HEADINGS, COLOR IS 2, COLUMN-HEADINGS, 
              DATA-COLUMNS (1, 11, 26, 41, 45), 
              DISPLAY-COLUMNS (1, 13, 28, 43, 51), 
              ALIGNMENT ("C", "R", "R", "C", "C"), 
              SEPARATION (5, 5, 5, 5, 5), 
              CURSOR-FRAME-WIDTH 1, DIVIDER-COLOR w-divider-color, 
              DRAG-COLOR 1, END-COLOR w-end-color, 
              HEADING-COLOR w-heading-color, 
              HEADING-DIVIDER-COLOR w-heading-divider-color, ID IS 1, 
              NUM-COL-HEADINGS 1, NUM-ROWS w-num-rows, 
              RECORD-DATA ScreenOTA-Gd-1-Record, TILED-HEADINGS, 
              VPADDING 50, 
              EVENT PROCEDURE ScreenOTA-Gd-1-Event-Proc.
       01 ScreenDateNew.
           03 ScreenDate-La-1, Label, 
              COL 4,43, LINE 2,77, LINES 1,00 CELLS, SIZE 17,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 1, LABEL-OFFSET 0, 
              TITLE "Article 'nouveau' jusqu'au", TRANSPARENT.
           03 ScreenDate-Ef-Date, Entry-Field, 
              COL 23,57, LINE 2,46, LINES 1,46 CELLS, SIZE 10,86 CELLS, 
              3-D, COLOR IS 2, ENABLED isModifying, ID IS 2, CENTER, 
              EVENT PROCEDURE ScreenDate-Ef-Date-Event-Proc.
           03 ScreenDate-Pb-Valider, Push-Button, 
              COL 17,71, LINE 5,38, LINES 16, SIZE 16, 
              BITMAP-HANDLE VALIDER16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 9858, ID IS 3, 
              TITLE "Valider".
           03 ScreenDate-Pb-Annuler, Push-Button, 
              COL 21,14, LINE 5,38, LINES 16, SIZE 16, 
              BITMAP-HANDLE ANNULER16-BMP, BITMAP-NUMBER 1, UNFRAMED, 
              SQUARE, 
              EXCEPTION-VALUE 9860, ID IS 4, 
              TITLE "Annuler".

      *{Bench}end

      *{Bench}linkpara
       PROCEDURE DIVISION USING LK-ZONE-PALM, LK-ART-C.
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
      * create pop-up menu
           PERFORM Acu-Init-Popup
      * open file
           PERFORM Acu-Open-Files
      *    After-Init
           .

       Acu-Init-Bmp.
      * bitmap loading
           COPY RESOURCE "RAFRAIC24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "RAFRAIC24.JPG", GIVING 
              RAFRAIC24-JPG
           COPY RESOURCE "MODIFIE12.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "MODIFIE12.JPG", GIVING 
              MODIFIE12-JPG
           COPY RESOURCE "PARAMST24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "PARAMST24.JPG", GIVING 
              PARAMST24-JPG
           COPY RESOURCE "CREERxx12.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "CREERxx12.JPG", GIVING 
              CREERxx12-JPG
           COPY RESOURCE "FLECHEG24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "FLECHEG24.JPG", GIVING 
              FLECHEG24-JPG
           COPY RESOURCE "FLECHED24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "FLECHED24.JPG", GIVING 
              FLECHED24-JPG
           COPY RESOURCE "MODIFIE24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "MODIFIE24.JPG", GIVING 
              MODIFIE24-JPG
           COPY RESOURCE "SAUVEGA24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "SAUVEGA24.JPG", GIVING 
              SAUVEGA24-JPG
           COPY RESOURCE "CREERxx24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "CREERxx24.JPG", GIVING 
              CREERxx24-JPG
           COPY RESOURCE "SUPPRIM24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "SUPPRIM24.JPG", GIVING 
              SUPPRIM24-JPG
           COPY RESOURCE "ZOOMxxx12.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ZOOMxxx12.BMP", GIVING 
              ZOOMxxx12-BMP
           COPY RESOURCE "EXPANDxx7.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "EXPANDxx7.JPG", GIVING 
              EXPANDxx7-JPG
           COPY RESOURCE "COLLAPSE7.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "COLLAPSE7.JPG", GIVING 
              COLLAPSE7-JPG
           COPY RESOURCE "INFORMA12.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "INFORMA12.JPG", GIVING 
              INFORMA12-JPG
           COPY RESOURCE "TROMBON24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "TROMBON24.JPG", GIVING 
              TROMBON24-JPG
           COPY RESOURCE "DUPLIQU12.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "DUPLIQU12.BMP", GIVING 
              DUPLIQU12-BMP
           COPY RESOURCE "CODEBAR16.jpg".
           CALL "W$BITMAP" USING WBITMAP-LOAD "CODEBAR16.jpg", GIVING 
              CODEBAR16-jpg
           COPY RESOURCE "TROMBO324.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "TROMBO324.JPG", GIVING 
              TROMBO324-JPG
           COPY RESOURCE "RAFRAIC12.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "RAFRAIC12.JPG", GIVING 
              RAFRAIC12-JPG
           COPY RESOURCE "RECHERC24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "RECHERC24.JPG", GIVING 
              RECHERC24-JPG
           COPY RESOURCE "EUROBXX12.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "EUROBXX12.JPG", GIVING 
              EUROBXX12-JPG
           COPY RESOURCE "TERMINX24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "TERMINX24.JPG", GIVING 
              TERMINX24-JPG
           COPY RESOURCE "W:\mx\resource\QUITTER24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "QUITTER24.JPG", GIVING 
              QUITTER24-JPG
           COPY RESOURCE "W:\mx\resource\FLECHEB24.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "FLECHEB24.BMP", GIVING 
              FLECHEB24-BMP
           COPY RESOURCE "ZOOMxxx12.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ZOOMxxx12.BMP", GIVING 
              ZOOMxxx12-BMP
           COPY RESOURCE "WARNING24.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "WARNING24.BMP", GIVING 
              WARNING24-BMP
           COPY RESOURCE "ZOOMxxx16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ZOOMxxx16.BMP", GIVING 
              ZOOMxxx16-BMP
           COPY RESOURCE "VALIDER24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "VALIDER24.JPG", GIVING 
              VALIDER24-JPG
           COPY RESOURCE "ANNULER24.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ANNULER24.JPG", GIVING 
              ANNULER24-JPG
           COPY RESOURCE "COMPOSI12.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "COMPOSI12.JPG", GIVING 
              COMPOSI12-JPG
           COPY RESOURCE "COMPOKI12.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "COMPOKI12.JPG", GIVING 
              COMPOKI12-JPG
           COPY RESOURCE "EQUIVAL12.JPG".
           CALL "W$BITMAP" USING WBITMAP-LOAD "EQUIVAL12.JPG", GIVING 
              EQUIVAL12-JPG
           COPY RESOURCE "COMPLEM12.jpg".
           CALL "W$BITMAP" USING WBITMAP-LOAD "COMPLEM12.jpg", GIVING 
              COMPLEM12-jpg
           COPY RESOURCE "ECHASTD12.jpg".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ECHASTD12.jpg", GIVING 
              ECHASTD12-jpg
           COPY RESOURCE "VALIDER16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "VALIDER16.BMP", GIVING 
              VALIDER16-BMP
           COPY RESOURCE "ANNULER16.BMP".
           CALL "W$BITMAP" USING WBITMAP-LOAD "ANNULER16.BMP", GIVING 
              ANNULER16-BMP
           .

       Acu-Init-Popup.
           PERFORM Acu-Screen1-Mn-1-Menu
           MOVE Menu-Handle TO Screen1-Mn-1-Handle
           PERFORM Acu-ScreenPres-Mn-1-Menu
           MOVE Menu-Handle TO ScreenPres-Mn-1-Handle
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
           IF RAFRAIC24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY RAFRAIC24-JPG
              MOVE 0 TO RAFRAIC24-JPG
           END-IF
           IF MODIFIE12-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY MODIFIE12-JPG
              MOVE 0 TO MODIFIE12-JPG
           END-IF
           IF PARAMST24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY PARAMST24-JPG
              MOVE 0 TO PARAMST24-JPG
           END-IF
           IF CREERxx12-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY CREERxx12-JPG
              MOVE 0 TO CREERxx12-JPG
           END-IF
           IF FLECHEG24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY FLECHEG24-JPG
              MOVE 0 TO FLECHEG24-JPG
           END-IF
           IF FLECHED24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY FLECHED24-JPG
              MOVE 0 TO FLECHED24-JPG
           END-IF
           IF MODIFIE24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY MODIFIE24-JPG
              MOVE 0 TO MODIFIE24-JPG
           END-IF
           IF SAUVEGA24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY SAUVEGA24-JPG
              MOVE 0 TO SAUVEGA24-JPG
           END-IF
           IF CREERxx24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY CREERxx24-JPG
              MOVE 0 TO CREERxx24-JPG
           END-IF
           IF SUPPRIM24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY SUPPRIM24-JPG
              MOVE 0 TO SUPPRIM24-JPG
           END-IF
           IF ZOOMxxx12-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ZOOMxxx12-BMP
              MOVE 0 TO ZOOMxxx12-BMP
           END-IF
           IF EXPANDxx7-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY EXPANDxx7-JPG
              MOVE 0 TO EXPANDxx7-JPG
           END-IF
           IF COLLAPSE7-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY COLLAPSE7-JPG
              MOVE 0 TO COLLAPSE7-JPG
           END-IF
           IF INFORMA12-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY INFORMA12-JPG
              MOVE 0 TO INFORMA12-JPG
           END-IF
           IF TROMBON24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY TROMBON24-JPG
              MOVE 0 TO TROMBON24-JPG
           END-IF
           IF DUPLIQU12-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY DUPLIQU12-BMP
              MOVE 0 TO DUPLIQU12-BMP
           END-IF
           IF CODEBAR16-jpg NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY CODEBAR16-jpg
              MOVE 0 TO CODEBAR16-jpg
           END-IF
           IF TROMBO324-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY TROMBO324-JPG
              MOVE 0 TO TROMBO324-JPG
           END-IF
           IF RAFRAIC12-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY RAFRAIC12-JPG
              MOVE 0 TO RAFRAIC12-JPG
           END-IF
           IF RECHERC24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY RECHERC24-JPG
              MOVE 0 TO RECHERC24-JPG
           END-IF
           IF EUROBXX12-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY EUROBXX12-JPG
              MOVE 0 TO EUROBXX12-JPG
           END-IF
           IF TERMINX24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY TERMINX24-JPG
              MOVE 0 TO TERMINX24-JPG
           END-IF
           IF QUITTER24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY QUITTER24-JPG
              MOVE 0 TO QUITTER24-JPG
           END-IF
           IF FLECHEB24-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY FLECHEB24-BMP
              MOVE 0 TO FLECHEB24-BMP
           END-IF
           IF ZOOMxxx12-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ZOOMxxx12-BMP
              MOVE 0 TO ZOOMxxx12-BMP
           END-IF
           IF WARNING24-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY WARNING24-BMP
              MOVE 0 TO WARNING24-BMP
           END-IF
           IF ZOOMxxx16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ZOOMxxx16-BMP
              MOVE 0 TO ZOOMxxx16-BMP
           END-IF
           IF VALIDER24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY VALIDER24-JPG
              MOVE 0 TO VALIDER24-JPG
           END-IF
           IF ANNULER24-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ANNULER24-JPG
              MOVE 0 TO ANNULER24-JPG
           END-IF
           IF COMPOSI12-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY COMPOSI12-JPG
              MOVE 0 TO COMPOSI12-JPG
           END-IF
           IF COMPOKI12-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY COMPOKI12-JPG
              MOVE 0 TO COMPOKI12-JPG
           END-IF
           IF EQUIVAL12-JPG NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY EQUIVAL12-JPG
              MOVE 0 TO EQUIVAL12-JPG
           END-IF
           IF COMPLEM12-jpg NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY COMPLEM12-jpg
              MOVE 0 TO COMPLEM12-jpg
           END-IF
           IF ECHASTD12-jpg NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ECHASTD12-jpg
              MOVE 0 TO ECHASTD12-jpg
           END-IF
           IF VALIDER16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY VALIDER16-BMP
              MOVE 0 TO VALIDER16-BMP
           END-IF
           IF ANNULER16-BMP NOT = 0
              CALL "W$BITMAP" USING WBITMAP-DESTROY ANNULER16-BMP
              MOVE 0 TO ANNULER16-BMP
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

       Acu-ScreenInex-Routine.
      *    Before-Routine
           PERFORM Acu-ScreenInex-Scrn
           PERFORM Acu-ScreenInex-Proc
      *    After-Routine
           .

       Acu-ScreenDup-Routine.
      *    Before-Routine
           PERFORM Acu-ScreenDup-Scrn
           PERFORM Acu-ScreenDup-Proc
      *    After-Routine
           .

       Acu-ScreenPres-Routine.
      *    Before-Routine
           PERFORM Acu-ScreenPres-Scrn
           PERFORM Acu-ScreenPres-Proc
      *    After-Routine
           .

       Acu-ScreenOTA-Routine.
      *    Before-Routine
           PERFORM Acu-ScreenOTA-Scrn
           PERFORM Acu-ScreenOTA-Proc
      *    After-Routine
           .

       Acu-ScreenDateNew-Routine.
      *    Before-Routine
           PERFORM Acu-ScreenDateNew-Scrn
           PERFORM Acu-ScreenDateNew-Proc
      *    After-Routine
           .

       Acu-Screen1-Scrn.
           PERFORM Acu-Screen1-Create-Win
           PERFORM Acu-Screen1-Init-Data
           .

       Acu-ScreenInex-Scrn.
           PERFORM Acu-ScreenInex-Create-Win
           PERFORM Acu-ScreenInex-Init-Data
           .

       Acu-ScreenDup-Scrn.
           PERFORM Acu-ScreenDup-Create-Win
           PERFORM Acu-ScreenDup-Init-Data
           .

       Acu-ScreenPres-Scrn.
           PERFORM Acu-ScreenPres-Create-Win
           PERFORM Acu-ScreenPres-Init-Data
           .

       Acu-ScreenOTA-Scrn.
           PERFORM Acu-ScreenOTA-Create-Win
           PERFORM Acu-ScreenOTA-Init-Data
           .

       Acu-ScreenDateNew-Scrn.
           PERFORM Acu-ScreenDateNew-Create-Win
           PERFORM Acu-ScreenDateNew-Init-Data
           .

       Acu-Screen1-Create-Win.
           PERFORM Screen1-Bef-Create
      * display screen
              DISPLAY Independent GRAPHICAL WINDOW
                 LINES w-screen1-lines, SIZE S-GRAND, CELL HEIGHT 13, 
                 CELL WIDTH 7, AUTO-MINIMIZE, COLOR IS 65793, 
                 LABEL-OFFSET 0, MODELESS, NO SCROLL, WITH SYSTEM MENU, 
                 TITLE PROLOG-PALM, TITLE-BAR, USER-GRAY, USER-WHITE, 
                 VISIBLE Screen1-Visible, NO WRAP, 
                 ATW-CSS-ID "max_screen_art_1", 
                 EVENT PROCEDURE Screen1-Event-Proc, 
                 HANDLE IS Screen1-Handle
      * toolbar
           DISPLAY Screen1 UPON Screen1-Handle
           PERFORM Screen1-AfterCreate
           .

       Acu-ScreenInex-Create-Win.
      *    Before-Create
      * display screen
              DISPLAY Floating GRAPHICAL WINDOW
                 LINES 8,00, SIZE 45,29, CELL HEIGHT 13, CELL WIDTH 7, 
                 COLOR IS 65793, LABEL-OFFSET 0, LINK TO THREAD, 
                 MODELESS, NO SCROLL, 
                 TITLE "ART", TITLE-BAR, USER-GRAY, USER-WHITE, 
                 NO WRAP, 
                 EVENT PROCEDURE ScreenInex-Event-Proc, 
                 HANDLE IS ScreenInex-Handle
      * toolbar
           DISPLAY ScreenInex UPON ScreenInex-Handle
      *    After-Create
           .

       Acu-ScreenDup-Create-Win.
           PERFORM ScreenDup-Bef-Create
      * display screen
              DISPLAY Floating GRAPHICAL WINDOW
                 LINES 12,77, SIZE 51,86, CELL HEIGHT 13, CELL WIDTH 7, 
                 COLOR IS 65793, LABEL-OFFSET 0, LINK TO THREAD, 
                 MODELESS, NO SCROLL, 
                 TITLE "Duplication article", TITLE-BAR, USER-GRAY, 
                 USER-WHITE, NO WRAP, 
                 EVENT PROCEDURE ScreenDup-Event-Proc, 
                 HANDLE IS ScreenDup-Handle
      * toolbar
           DISPLAY ScreenDup UPON ScreenDup-Handle
      *    After-Create
           .

       Acu-ScreenPres-Create-Win.
      *    Before-Create
      * display screen
              DISPLAY Floating GRAPHICAL WINDOW
                 LINES 29,00, SIZE 91,43, CELL HEIGHT 13, CELL WIDTH 7, 
                 COLOR IS 65793, LABEL-OFFSET 0, LINK TO THREAD, 
                 MODELESS, NO SCROLL, WITH SYSTEM MENU, 
                 TITLE "PRESENCE ARTICLE", TITLE-BAR, USER-GRAY, 
                 USER-WHITE, NO WRAP, 
                 EVENT PROCEDURE ScreenPres-Event-Proc, 
                 HANDLE IS ScreenPres-Handle
      * toolbar
           DISPLAY ScreenPres UPON ScreenPres-Handle
      *    After-Create
           .

       Acu-ScreenOTA-Create-Win.
      *    Before-Create
      * display screen
              DISPLAY Floating GRAPHICAL WINDOW
                 LINES 19,23, SIZE 61,14, CELL HEIGHT 13, CELL WIDTH 7, 
                 COLOR IS 65793, LABEL-OFFSET 0, LINK TO THREAD, 
                 MODELESS, NO SCROLL, WITH SYSTEM MENU, 
                 TITLE "ANCIEN TARIFS", TITLE-BAR, USER-GRAY, 
                 USER-WHITE, NO WRAP, 
                 EVENT PROCEDURE ScreenOTA-Event-Proc, 
                 HANDLE IS ScreenOTA-Handle
      * toolbar
           DISPLAY ScreenOTA UPON ScreenOTA-Handle
      *    After-Create
           .

       Acu-ScreenDateNew-Create-Win.
      *    Before-Create
      * display screen
              DISPLAY Floating GRAPHICAL WINDOW
                 LINES 7,15, SIZE 40,43, CELL HEIGHT 13, CELL WIDTH 7, 
                 COLOR IS 65793, LABEL-OFFSET 0, LINK TO THREAD, 
                 MODELESS, NO SCROLL, TITLE-BAR, USER-GRAY, USER-WHITE, 
                 NO WRAP, 
                 EVENT PROCEDURE ScreenDateNew-Event-Proc, 
                 HANDLE IS ScreenDateNew-Handle
      * toolbar
           DISPLAY ScreenDateNew UPON ScreenDateNew-Handle
      *    After-Create
           .

       Acu-Screen1-Init-Data.
      *    Before-Initdata
           PERFORM Acu-Screen1-Cm-1-Content
           PERFORM Acu-Screen1-Gd-SOC-Content
           PERFORM Acu-Screen1-Cm-IFA-MART-Content
           PERFORM Acu-Screen1-Cm-ModeRecherche-Content
           PERFORM Acu-Screen1-DaGd-PVN-Content
           PERFORM Acu-Screen1-Cm-INO-MART-Content
           PERFORM Acu-Screen1-Cm-POL-MART-Content
           PERFORM Acu-Screen1-Cm-CUA-MART-Content
           PERFORM Acu-Screen1-Cm-CUV-MART-Content
           PERFORM Acu-Screen1-DaGd-RTG-Content
           PERFORM Screen1-AfterInitData
           .

       Acu-ScreenInex-Init-Data.
      *    Before-Initdata
           PERFORM ScreenInex-Aft-Initdata
           .

       Acu-ScreenDup-Init-Data.
      *    Before-Initdata
           PERFORM ScreenDup-Aft-Initdata
           .

       Acu-ScreenPres-Init-Data.
      *    Before-Initdata
           PERFORM Acu-ScreenPres-Gd-1-Content
           PERFORM ScreenPres-Aft-Initdata
           .

       Acu-ScreenOTA-Init-Data.
      *    Before-Initdata
           PERFORM Acu-ScreenOTA-Gd-1-Content
           PERFORM ScreenOTA-Aft-Initdata
           .

       Acu-ScreenDateNew-Init-Data.
      *    Before-Initdata
           PERFORM ScreenDateNew-Aft-Initdata
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
      * ScreenInex
       Acu-ScreenInex-Proc.
           PERFORM UNTIL Exit-Pushed
              ACCEPT ScreenInex  
                 ON EXCEPTION PERFORM Acu-ScreenInex-Evaluate-Func
              END-ACCEPT
              EVALUATE TRUE
      * ScreenInex-Pb-Oui Link To
              WHEN Key-Status = 1004
                 PERFORM ScreenInex-Pb-Oui-Link
      * ScreenInex-Pb-Non Link To
              WHEN Key-Status = 1001
                 PERFORM ScreenInex-Pb-Non-Link
      * ScreenInex-Pb-Cat Link To
              WHEN Key-Status = 1002
                 PERFORM ScreenInex-Pb-Cat-Link
              END-EVALUATE
           END-PERFORM
           DESTROY ScreenInex-Handle
           INITIALIZE Key-Status
           .
      * ScreenDup
       Acu-ScreenDup-Proc.
           PERFORM UNTIL Exit-Pushed
              ACCEPT ScreenDup  
                 ON EXCEPTION PERFORM Acu-ScreenDup-Evaluate-Func
              END-ACCEPT
              EVALUATE TRUE
      * ScreenDup-Pb-Valider Link To
              WHEN Key-Status = 9858
                 PERFORM ScreenDup-Pb-Valider-Link
              END-EVALUATE
           END-PERFORM
           DESTROY ScreenDup-Handle
           INITIALIZE Key-Status
           .
      * ScreenPres
       Acu-ScreenPres-Proc.
           PERFORM UNTIL Exit-Pushed
              ACCEPT ScreenPres  
                 ON EXCEPTION PERFORM Acu-ScreenPres-Evaluate-Func
              END-ACCEPT
           END-PERFORM
           DESTROY ScreenPres-Handle
           INITIALIZE Key-Status
           .
      * ScreenOTA
       Acu-ScreenOTA-Proc.
           PERFORM UNTIL Exit-Pushed
              ACCEPT ScreenOTA  
                 ON EXCEPTION PERFORM Acu-ScreenOTA-Evaluate-Func
              END-ACCEPT
           END-PERFORM
           DESTROY ScreenOTA-Handle
           INITIALIZE Key-Status
           .
      * ScreenDateNew
       Acu-ScreenDateNew-Proc.
           PERFORM UNTIL Exit-Pushed
              ACCEPT ScreenDateNew  
                 ON EXCEPTION PERFORM Acu-ScreenDateNew-Evaluate-Func
              END-ACCEPT
           END-PERFORM
           DESTROY ScreenDateNew-Handle
           INITIALIZE Key-Status
           .

      * Screen1-Cm-1
       Acu-Screen1-Cm-1-Content.
           MODIFY Screen1-Cm-1, RESET-LIST = 1
           MODIFY Screen1-Cm-1, ITEM-TO-ADD = ("Vente", "Location")
           .

      * Screen1-Gd-SOC
       Acu-Screen1-Gd-SOC-Content.
      * Cells Settings
           MODIFY Screen1-Gd-SOC, X = 1, Y = 1, CELL-DATA = "N°", 
           MODIFY Screen1-Gd-SOC, X = 2, Y = 1, CELL-DATA = "Société", 
           MODIFY Screen1-Gd-SOC, X = 3, Y = 1, CELL-DATA = "% Fact", 
           MODIFY Screen1-Gd-SOC, X = 4, Y = 1, CELL-DATA = 
              "Politique prix", 
           MODIFY Screen1-Gd-SOC, X = 5, Y = 1, CELL-DATA = 
              "Tarif Frn", 
           MODIFY Screen1-Gd-SOC, X = 6, Y = 1, CELL-DATA = "Remise", 
           MODIFY Screen1-Gd-SOC, X = 7, Y = 1, CELL-DATA = 
              "Prix d'achat", 
           MODIFY Screen1-Gd-SOC, X = 8, Y = 1, CELL-DATA = 
              "Prix de vente", 
           .

      * Screen1-Cm-IFA-MART
       Acu-Screen1-Cm-IFA-MART-Content.
           .

      * Screen1-Cm-ModeRecherche
       Acu-Screen1-Cm-ModeRecherche-Content.
           MODIFY Screen1-Cm-ModeRecherche, MASS-UPDATE = 1, 
              RESET-LIST = 1
           MODIFY Screen1-Cm-ModeRecherche, ITEM-TO-ADD = TABLE 
              Screen1-Cm-ModeRecherche-Container
           MODIFY Screen1-Cm-ModeRecherche, MASS-UPDATE = 0
           .

      * Screen1-DaGd-PVN
       Acu-Screen1-DaGd-PVN-Content.
      * Cells Settings
           MODIFY Screen1-DaGd-PVN, X = 1, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "N°", 
           MODIFY Screen1-DaGd-PVN, X = 2, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "De", 
           MODIFY Screen1-DaGd-PVN, X = 3, Y = 1, CELL-COLOR = 112, 
              CELL-DATA = "à", 
           MODIFY Screen1-DaGd-PVN, X = 4, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "Tarif", 
           MODIFY Screen1-DaGd-PVN, X = 5, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "Marge", 
           MODIFY Screen1-DaGd-PVN, X = 6, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "% M. Brute", 
      * Columns' Setting
           MODIFY Screen1-DaGd-PVN, X = 1, COLUMN-COLOR = 112, X = 1, 
              COLUMN-FONT = Small-Font, 
           MODIFY Screen1-DaGd-PVN, X = 2, COLUMN-COLOR = 9, 
           MODIFY Screen1-DaGd-PVN, X = 3, COLUMN-COLOR = 2, 
           MODIFY Screen1-DaGd-PVN, X = 4, COLUMN-COLOR = 2, 
           MODIFY Screen1-DaGd-PVN, X = 5, COLUMN-COLOR = 9, 
           MODIFY Screen1-DaGd-PVN, X = 6, COLUMN-COLOR = 9, 
           .

      * Screen1-Cm-INO-MART
       Acu-Screen1-Cm-INO-MART-Content.
           .

      * Screen1-Cm-POL-MART
       Acu-Screen1-Cm-POL-MART-Content.
           .

      * Screen1-Cm-CUA-MART
       Acu-Screen1-Cm-CUA-MART-Content.
           .

      * Screen1-Cm-CUV-MART
       Acu-Screen1-Cm-CUV-MART-Content.
           .

      * Screen1-DaGd-RTG
       Acu-Screen1-DaGd-RTG-Content.
      * Cells Settings
           MODIFY Screen1-DaGd-RTG, X = 1, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "N°", 
           MODIFY Screen1-DaGd-RTG, X = 2, Y = 1, CELL-COLOR = 112, 
              CELL-DATA = "De", 
           MODIFY Screen1-DaGd-RTG, X = 3, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "à", 
           MODIFY Screen1-DaGd-RTG, X = 4, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "% Remise", 
           MODIFY Screen1-DaGd-RTG, X = 5, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "Tarif", 
           MODIFY Screen1-DaGd-RTG, X = 6, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "Marge", 
           MODIFY Screen1-DaGd-RTG, X = 7, Y = 1, CELL-COLOR = 112, 
              CELL-FONT = Small-Font, CELL-DATA = "% M. Brute", 
      * Columns' Setting
           MODIFY Screen1-DaGd-RTG, X = 1, COLUMN-COLOR = 112, X = 1, 
              COLUMN-FONT = Small-Font, 
           MODIFY Screen1-DaGd-RTG, X = 2, COLUMN-COLOR = 9, 
           MODIFY Screen1-DaGd-RTG, X = 3, COLUMN-COLOR = 2, 
           MODIFY Screen1-DaGd-RTG, X = 4, COLUMN-COLOR = 2, 
           MODIFY Screen1-DaGd-RTG, X = 5, COLUMN-COLOR = 9, 
           MODIFY Screen1-DaGd-RTG, X = 6, COLUMN-COLOR = 9, 
           MODIFY Screen1-DaGd-RTG, X = 7, COLUMN-COLOR = 9, 
           .

      * ScreenPres-Gd-1
       Acu-ScreenPres-Gd-1-Content.
      * Cells Settings
           MODIFY ScreenPres-Gd-1, X = 1, Y = 1, CELL-COLOR = 112, 
              CELL-DATA = "O", 
           MODIFY ScreenPres-Gd-1, X = 2, Y = 1, CELL-COLOR = 112, 
              CELL-DATA = "Article lié", 
           MODIFY ScreenPres-Gd-1, X = 3, Y = 1, CELL-COLOR = 112, 
              CELL-DATA = "Désignation", 
           MODIFY ScreenPres-Gd-1, X = 4, Y = 1, CELL-COLOR = 112, 
              CELL-DATA = "Quantité", 
           .

      * ScreenOTA-Gd-1
       Acu-ScreenOTA-Gd-1-Content.
      * Cells Settings
           MODIFY ScreenOTA-Gd-1, X = 1, Y = 1, CELL-DATA = "Jusqu'au", 
           MODIFY ScreenOTA-Gd-1, X = 2, Y = 1, CELL-DATA = "PTF", 
           MODIFY ScreenOTA-Gd-1, X = 3, Y = 1, CELL-DATA = "PV HT", 
           MODIFY ScreenOTA-Gd-1, X = 4, Y = 1, CELL-DATA = "Qui", 
           MODIFY ScreenOTA-Gd-1, X = 5, Y = 1, CELL-DATA = "Prog", 
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
      * Screen1-Cm-1 Link To
              WHEN Key-Status = 2222
                 PERFORM Screen1-Cm-1-Link
      * Screen1-Pb-Refresh Link To
              WHEN Key-Status = 9855
                 PERFORM Screen1-Pb-Refresh-LinkTo
      * Screen1-Pb-Mod Link To
              WHEN Key-Status = 1023
                 PERFORM Screen1-Pb-Mod-Link
      * Screen1-Pb-Stocks Link To
              WHEN Key-Status = 1019
                 PERFORM Screen1-Pb-Stocks-LinkTo
      * Screen1-Pb-ModN Link To
              WHEN Key-Status = 1022
                 PERFORM Screen1-Pb-Mod-Link
      * Screen1-Pb-Previous Link To
              WHEN Key-Status = 9862
                 PERFORM Screen1-Pb-Previous-LinkTo
      * Screen1-Pb-Next Link To
              WHEN Key-Status = 9861
                 PERFORM Screen1-Pb-Next-LinkTo
      * Screen1-Pb-Modify Link To
              WHEN Key-Status = 9854
                 PERFORM Screen1-Pb-Modify-LinkTo
      * Screen1-Pb-Valid Link To
              WHEN Key-Status = 9819
                 PERFORM Screen1-Pb-Valid-LinkTo
      * Screen1-Pb-Add Link To
              WHEN Key-Status = 9853
                 PERFORM Screen1-Pb-Add-LinkTo
      * Screen1-Pb-Delete Link To
              WHEN Key-Status = 9856
                 PERFORM Screen1-Pb-Delete-LinkTo
      * Screen1-Pb-ListeFournisseurs Link To
              WHEN Key-Status = 1010
                 PERFORM Screen1-Pb-ListeFournisseurs-LinkTo
      * Screen1-Pb-ArbreFamilles Link To
              WHEN Key-Status = 1011
                 PERFORM Screen1-Pb-ArbreFamilles-LinkTo
      * Screen1-Pb-ListeMarques Link To
              WHEN Key-Status = 1012
                 PERFORM Screen1-Pb-ListeMarques-LinkTo
      * Screen1-Pb-ListeTypes Link To
              WHEN Key-Status = 1016
                 PERFORM Screen1-Pb-ListeTypes-LinkTo
      * Screen1-Pb-ListePays Link To
              WHEN Key-Status = 1051
                 PERFORM Screen1-Pb-ListePays-LinkTo
      * Screen1-Pb-Moteur-Expand Link To
              WHEN Key-Status = 1015
                 PERFORM Screen1-Pb-Moteur-Expand-LinkTo
      * Screen1-Cb-DOC-MART Link To
              WHEN Key-Status = 8002
                 PERFORM Screen1-Cb-DOC-MART-Link
      * Screen1-Pb-DOC-MART Link To
              WHEN Key-Status = 1018
                 PERFORM Screen1-Pb-DOC-MART-LinkTo
      * Screen1-Cb-MUL-MART Link To
              WHEN Key-Status = 8001
                 PERFORM Screen1-Cb-MUL-MART-Link
      * Screen1-Pb-Tarif-Expand Link To
              WHEN Key-Status = 1014
                 PERFORM Screen1-Pb-Tarif-Expand-LinkTo
      * Screen1-Rb-1-ITC-MART Link To
              WHEN Key-Status = 1017
                 PERFORM Screen1-Rb-x-ITC-MART-BeforeProcedure
      * Screen1-Rb-2-ITC-MART Link To
              WHEN Key-Status = 1021
                 PERFORM Screen1-Rb-x-ITC-MART-BeforeProcedure
      * Screen1-Rb-3-ITC-MART Link To
              WHEN Key-Status = 1009
                 PERFORM Screen1-Rb-x-ITC-MART-BeforeProcedure
      * Screen1-Pb-MarquesMoteur Link To
              WHEN Key-Status = 1013
                 PERFORM Screen1-Pb-MarquesMoteur-LinkTo
      * Screen1-Pb-ListeArticles Link To
              WHEN Key-Status = 1037
                 PERFORM Screen1-Pb-ListeArticles-Link
      * Screen1-Pb-Photo Link To
              WHEN Key-Status = 5788
                 PERFORM Screen1-Pb-Photo-Link
      * Screen1-Pb-ListeArtFou Link To
              WHEN Key-Status = 1040
                 PERFORM Screen1-Pb-ListeArtFou-Link
      * Screen1-Pb-DUP-RFN Link To
              WHEN Key-Status = 1030
                 PERFORM Screen1-Pb-DUP-RFN-Link
      * Screen1-Pb-CREAT-GCOD Link To
              WHEN Key-Status = 1031
                 PERFORM Screen1-Pb-CREAT-GCOD-Link
      * Screen1-Pb-ListeArtFam Link To
              WHEN Key-Status = 1140
                 PERFORM Screen1-Pb-ListeArtFou-Link
      * MI-Creation Link To
              WHEN Key-Status = 2901
                 PERFORM Screen1-Mn-1-MI-Creation-Link
      * MI-Duplication Link To
              WHEN Key-Status = 2902
                 PERFORM Screen1-Mn-1-MI-Duplication-Link
      * Screen1-Pb-RetourRef Link To
              WHEN Key-Status = 1948
                 PERFORM Screen1-Pb-RetourRef-Link
      * Screen1-Pb-PRESENCE Link To
              WHEN Key-Status = 1452
                 PERFORM Screen1-Pb-PRESENCE-Link
      * Screen1-Pb-OLDTAR Link To
              WHEN Key-Status = 1952
                 PERFORM Screen1-Pb-OLDTAR-Link
      * Screen1-Pb-Liste-ZSC1 Link To
              WHEN Key-Status = 1070
                 PERFORM Screen1-Pb-Liste-ZSC1-LinkTo
      * Screen1-Pb-Liste-ZSC2 Link To
              WHEN Key-Status = 1071
                 PERFORM Screen1-Pb-Liste-ZSC2-LinkTo
      * Screen1-Pb-Liste-ZSC3 Link To
              WHEN Key-Status = 1072
                 PERFORM Screen1-Pb-Liste-ZSC3-LinkTo
      * Screen1-Pb-Liste-ZSC4 Link To
              WHEN Key-Status = 1073
                 PERFORM Screen1-Pb-Liste-ZSC4-LinkTo
           END-EVALUATE
           MOVE 1 TO Accept-Control
           .

      * ScreenInex
       Acu-ScreenInex-Evaluate-Func.
           EVALUATE TRUE
              WHEN Exit-Pushed
                 PERFORM Acu-ScreenInex-Exit
              WHEN Event-Occurred
                 IF Event-Type = Cmd-Close
                    PERFORM Acu-ScreenInex-Exit
                 END-IF
           END-EVALUATE
           MOVE 1 TO Accept-Control
           .

      * ScreenDup
       Acu-ScreenDup-Evaluate-Func.
           EVALUATE TRUE
              WHEN Exit-Pushed
                 PERFORM Acu-ScreenDup-Exit
              WHEN Event-Occurred
                 IF Event-Type = Cmd-Close
                    PERFORM Acu-ScreenDup-Exit
                 END-IF
      * ScreenDup-Pb-Liste Link To
              WHEN Key-Status = 1000
                 PERFORM ScreenDup-Pb-Liste-Link
      * ScreenDup-Pb-Annuler Link To
              WHEN Key-Status = 9860
                 PERFORM ScreenDup-Pb-Annuler-Link
           END-EVALUATE
           MOVE 1 TO Accept-Control
           .

      * ScreenPres
       Acu-ScreenPres-Evaluate-Func.
           EVALUATE TRUE
              WHEN Exit-Pushed
                 PERFORM Acu-ScreenPres-Exit
              WHEN Event-Occurred
                 IF Event-Type = Cmd-Close
                    PERFORM Acu-ScreenPres-Exit
                 END-IF
      * MI-Interrogerlarticle Link To
              WHEN Key-Status = 1000
                 PERFORM Interro-ART
      * MI-Interrogerlestock Link To
              WHEN Key-Status = 1001
                 PERFORM Interro-ASA
           END-EVALUATE
           MOVE 1 TO Accept-Control
           .

      * ScreenOTA
       Acu-ScreenOTA-Evaluate-Func.
           EVALUATE TRUE
              WHEN Exit-Pushed
                 PERFORM Acu-ScreenOTA-Exit
              WHEN Event-Occurred
                 IF Event-Type = Cmd-Close
                    PERFORM Acu-ScreenOTA-Exit
                 END-IF
           END-EVALUATE
           MOVE 1 TO Accept-Control
           .

      * ScreenDateNew
       Acu-ScreenDateNew-Evaluate-Func.
           EVALUATE TRUE
              WHEN Exit-Pushed
                 PERFORM Acu-ScreenDateNew-Exit
              WHEN Event-Occurred
                 IF Event-Type = Cmd-Close
                    PERFORM Acu-ScreenDateNew-Exit
                 END-IF
      * ScreenDate-Pb-Valider Link To
              WHEN Key-Status = 9858
                 PERFORM ScreenDate-Pb-Valider-Link
      * ScreenDate-Pb-Annuler Link To
              WHEN Key-Status = 9860
                 PERFORM ScreenDate-Pb-Annuler-Link
           END-EVALUATE
           MOVE 1 TO Accept-Control
           .

       Acu-Close-Files.
      *    Before-Close
      *    After-Close
           .

      * COBCAP

      * MXPARAM

      * MXMARQUE

      * MXFOU

      * MXGRAFAM

      * MXFAMART

      * MXARTSA

      * MXART

      * MXART2

      * MXARTSA2

      * MXCATFOU

      * MXART3

      * MXDOCTEC

      * MXDOCTEC2

      * ATTACH

      * MXDOCTECEXT

      * MXAGENCE

       Acu-Screen1-Exit.
           SET Exit-Pushed TO TRUE
           .

       Acu-ScreenInex-Exit.
           SET Exit-Pushed TO TRUE
           .

       Acu-ScreenDup-Exit.
           SET Exit-Pushed TO TRUE
           .

       Acu-ScreenPres-Exit.
           SET Exit-Pushed TO TRUE
           .

       Acu-ScreenOTA-Exit.
           SET Exit-Pushed TO TRUE
           .

       Acu-ScreenDateNew-Exit.
           SET Exit-Pushed TO TRUE
           .

      * Screen1-Mn-1
       Acu-Screen1-Mn-1-Menu.
           PERFORM Acu-Screen1-Mn-1
              THRU Acu-Screen1-Mn-1-Exit.

       Acu-Screen1-Mn-1.
           CALL "W$MENU" USING Wmenu-New-Popup GIVING Menu-Handle
           IF Menu-Handle = ZERO
              GO TO Acu-Screen1-Mn-1-Exit
           END-IF
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, 
              "Création", 2901
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, 
              "Duplication article", 2902
           .

       Acu-Screen1-Mn-1-Exit.
           MOVE ZERO TO Return-Code.

      * ScreenPres-Mn-1
       Acu-ScreenPres-Mn-1-Menu.
           PERFORM Acu-ScreenPres-Mn-1
              THRU Acu-ScreenPres-Mn-1-Exit.

       Acu-ScreenPres-Mn-1.
           CALL "W$MENU" USING Wmenu-New-Popup GIVING Menu-Handle
           IF Menu-Handle = ZERO
              GO TO Acu-ScreenPres-Mn-1-Exit
           END-IF
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, 
              "Interroger l'article", 1000
           CALL "W$MENU" USING WMENU-ADD, Menu-Handle, 0, 0, 
              "Interroger le stock", 1001
           .

       Acu-ScreenPres-Mn-1-Exit.
           MOVE ZERO TO Return-Code.


       Screen1-Event-Proc.
           .

       Screen1-Rb-Act1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-Rb-Act1-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-Rb-Act2-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-Rb-Act2-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-Cm-1-Link-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Goto
              PERFORM Screen1-Cm-1-Link
           END-EVALUATE
           .

       Screen1-Cm-1-Exception-Proc.
      * 
           IF Event-Occurred
              EVALUATE Event-Type
              WHEN Ntf-Selchange
                 PERFORM Screen1-Cm-1-Link
              END-EVALUATE
           END-IF
           .

       Screen1-Gd-1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Begin-Entry
              PERFORM Screen1-Gd-SOC-Ev-Msg-Goto-Cell
           END-EVALUATE
           .

       Screen1-Cm-IFA-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Ntf-Selchange
              PERFORM Screen1-Cm-IFA-MART-Ev-Ntf-Selchange
           END-EVALUATE
           .

       Screen1-Cm-ModeRecherche-Exception-Proc.
      * 
           IF Event-Occurred
              EVALUATE Event-Type
              WHEN Ntf-Selchange
                 PERFORM Screen1-Cm-ModeRecherche-Ex-Ntf-Selchange
              END-EVALUATE
           END-IF
           .

       Screen1-DaGd-PVN-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Begin-Entry
              PERFORM Screen1-DaGd-PVN-Ev-Msg-Begin-Entry
           WHEN Msg-End-Drag
              PERFORM Screen1-DaGd-PVN-Ev-Msg-Goto-Cell
           WHEN Msg-Finish-Entry
              PERFORM Screen1-DaGd-PVN-Ev-Msg-Finish-Entry
           WHEN Msg-Goto-Cell
              PERFORM Screen1-DaGd-PVN-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell-Drag
              PERFORM Screen1-DaGd-PVN-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell-Mouse
              PERFORM Screen1-DaGd-PVN-Ev-Msg-Goto-Cell
           END-EVALUATE
           .

       Screen1-Ef-IDF-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-Ef-IDF-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-Ef-REF-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-Ef-REF-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-Ef-CO1-MART-Event-Proc.
           .

       Screen1-Ef-CO2-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-Ef-CO2-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-Ef-DES-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-Ef-DES-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-Ef-DE2-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-Ef-DE2-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-Ef-GRA-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-Ef-GRA-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-Ef-FAM-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-Ef-FAM-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-Ef-MAR-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-Ef-MAR-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-Ef-TYP-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-Ef-TYP-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-Cm-INO-MART-Exception-Proc.
      * 
           IF Event-Occurred
              EVALUATE Event-Type
              WHEN Ntf-Selchange
                 PERFORM Screen1-Cm-INO-MART-Ex-Ntf-Selchange
              END-EVALUATE
           END-IF
           .

       Screen1-Ef-GCOD-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-Ef-GCOD-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-Ef-RFI-MART-Event-Proc.
           .

       Screen1-Ef-RFN-MART-Event-Proc.
           .

       Screen1-Ef-TVA-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              EVALUATE Event-Control-Id
              WHEN 54
                 PERFORM Screen1-Ef-TVA-MART-Ev-Msg-Validate
              WHEN 235
                 PERFORM Screen1-Ef-PAY-MART-Ev-Msg-Validate
              END-EVALUATE
           END-EVALUATE
           .

       Screen1-Cm-POL-MART-Exception-Proc.
      * 
           IF Event-Occurred
              EVALUATE Event-Type
              WHEN Ntf-Selchange
                 PERFORM Screen1-Cm-POL-MART-Ex-Ntf-Selchange
              END-EVALUATE
           END-IF
           .

       Screen1-Cm-CUA-MART-Exception-Proc.
      * 
           IF Event-Occurred
              EVALUATE Event-Type
              WHEN Ntf-Selchange
                 PERFORM Screen1-Cm-CUA-MART-Ex-Ntf-Selchange
              END-EVALUATE
           END-IF
           .

       Screen1-Cm-CUV-MART-Exception-Proc.
      * 
           IF Event-Occurred
              EVALUATE Event-Type
              WHEN Ntf-Selchange
                 PERFORM Screen1-Cm-CUV-MART-Ex-Ntf-Selchange
              END-EVALUATE
           END-IF
           .

       Screen1-DaEf-UPR-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-DaEf-UPR-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-DaEf-NUU-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-DaEf-NUU-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-DaEf-PTF-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-Ef-PTF-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-Ef-PTFEUR-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-Ef-PTFEUR-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-DaEf-CRF-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-Ef-CRF-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-DaEf-REM-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-DaEf-REM-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-DaEf-PAT-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-DaEf-PAT-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-DaEf-PAC-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-Ef-PAC-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-DaEf-COE-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-Ef-COE-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-DaEf-TXM-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-DaEf-TXM-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-DaEf-FUA-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-DaEf-FUA-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-DaEf-PFA-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-DaEf-PFA-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-DaEf-CFU-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-DaEf-CFU-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-DaEf-PVT-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-DaEf-PVT-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-DaEf-TTC-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-DaEf-TTC-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-Ef-DAT-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-Ef-DAT-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-DaEf-CRC-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-DaEf-CRC-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-DaEf-UAC-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-DaEf-UAC-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-DaEf-UVE-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-DaEf-UVE-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-DaEf-VOL-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-DaEf-VOL-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-DaEf-POI-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-DaEf-POI-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-Rb-1-ILV-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-Rb-1-ILV-MART-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-Rb-2-ILV-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Cmd-Clicked
              PERFORM Screen1-Rb-2-ILV-MART-Ev-Cmd-Clicked
           END-EVALUATE
           .

       Screen1-Ef-MARM-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-Ef-MARM-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-DaGd-RTG-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Begin-Entry
              PERFORM Screen1-DaGd-RTG-Ev-Msg-Begin-Entry
           WHEN Msg-End-Drag
              PERFORM Screen1-DaGd-RTG-Ev-Msg-Goto-Cell
           WHEN Msg-Finish-Entry
              PERFORM Screen1-DaGd-RTG-Ev-Msg-Finish-Entry
           WHEN Msg-Goto-Cell
              PERFORM Screen1-DaGd-RTG-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell-Drag
              PERFORM Screen1-DaGd-RTG-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell-Mouse
              PERFORM Screen1-DaGd-RTG-Ev-Msg-Goto-Cell
           END-EVALUATE
           .

       Screen1-DaEf-SOC-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-DaEf-SOC-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-DaEf-FOU-MART-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-DaEf-FOU-MART-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-Ef-ZSC1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM Screen1-Ef-ZSC1-Ev-Msg-Validate
           END-EVALUATE
           .

       Screen1-Ef-ZSC2-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              EVALUATE Event-Control-Id
              WHEN 199
                 PERFORM Screen1-Ef-ZSC2-Ev-Msg-Validate
              WHEN 98
                 PERFORM Screen1-Ef-ZSC3-Ev-Msg-Validate
              WHEN 99
                 PERFORM Screen1-Ef-ZSC4-Ev-Msg-Validate
              END-EVALUATE
           END-EVALUATE
           .

       ScreenInex-Event-Proc.
           .

       ScreenDup-Event-Proc.
           .

       ScreenPres-Event-Proc.
           .

       ScreenPres-Gd-1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Begin-Drag
              PERFORM ScreenPres-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Begin-Entry
              PERFORM ScreenPres-Gd-1-Ev-Msg-Begin-Entry
           WHEN Msg-End-Drag
              PERFORM ScreenPres-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell
              PERFORM ScreenPres-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell-Drag
              PERFORM ScreenPres-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Goto-Cell-Mouse
              PERFORM ScreenPres-Gd-1-Ev-Msg-Goto-Cell
           WHEN Msg-Init-Menu
              PERFORM ScreenPres-Gd-1-Ev-Msg-Init-Menu
           END-EVALUATE
           .

       ScreenOTA-Event-Proc.
           .

       ScreenOTA-Gd-1-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Begin-Entry
              PERFORM ScreenOTA-Gd-1-Ev-Msg-Begin-Entry
           END-EVALUATE
           .

       ScreenDateNew-Event-Proc.
           .

       ScreenDate-Ef-Date-Event-Proc.
      * 
           EVALUATE Event-Type
           WHEN Msg-Validate
              PERFORM ScreenDate-Ef-Date-Ev-Msg-Validate
           END-EVALUATE
           .
      ***   start event editor code   ***
      * 30/01/2018 NC+RV
      * screen passé de visible 0 à visible 1 car pose problème avec Windows 2016 chez Patoux
      * impossible d'iconiser


           COPY "W:/MISTRAL/COPY/ENVMIS.CBL".
           COPY "W:/MISTRAL/COPY/RECHERCHE-PHOTO.CBL".
           COPY "W:/MX/COPY/ARRONDI.CBL".
           COPY "W:/MX/COPY/GENCOD.CBL".
           COPY "W:/MX/COPY/INVERSMX.CBL".

           COPY "W:/mx/copy/numval.cbl".
060819     COPY "W:/mistral/copy/MisCentrefenetre.cbl".

       Open-File-Rtn.
           OPEN I-O MXMARQUE PERFORM STAT
           OPEN I-O MXFOU PERFORM STAT
           OPEN I-O MXGRAFAM PERFORM STAT
           OPEN I-O MXFAMART PERFORM STAT
           OPEN I-O MXARTSA PERFORM STAT
           OPEN I-O MXART PERFORM STAT
           OPEN INPUT MXART2 PERFORM STAT
090218     OPEN I-O MXCATFOU PERFORM STAT
           .
       Close-File-Rtn.
           CLOSE MXMARQUE
           CLOSE MXFOU
           CLOSE MXGRAFAM
           CLOSE MXFAMART
           CLOSE MXARTSA
           CLOSE MXART
           CLOSE MXART2
           CLOSE MXCATFOU
           .
       Screen1-Fld-To-Buf.
           MOVE FOU-MART TO Screen1-DaEf-FOU-MART-BUF
           MOVE ZERO TO IsModVisible IsModNVisible
           IF MOD-MART = 0 MOVE 1 TO IsModNVisible
           ELSE            MOVE 1 TO IsModVisible
           END-IF

260213     MOVE MXIEXP-PALM to IsTRAVisible 

           MOVE UPR-MART TO Screen1-DaEf-UPR-MART-BUF
           MOVE NUU-MART TO Screen1-DaEf-NUU-MART-BUF
           IF DEV-MFOU NOT = SPACES AND DEV-MFOU NOT = DEV-MPAR
              
              IF POL-MART = 4 THEN
                 MOVE PDE-MART TO Screen1-Ef-PTFEUR-BUF
              ELSE
      
                 MOVE PDE-MART TO Screen1-Ef-PTF-MART-BUF
              END-IF

               MOVE CRS-MFOU TO WCE-CRS
               MOVE PDE-MART TO WCE-MAC
               PERFORM INVERSMX-D-I
              
              IF POL-MART = 4 THEN
                 MOVE WCE-MCO TO PAC-MART
              ELSE
      
                 MOVE WCE-MCO TO PTF-MART Screen1-Ef-PTFEUR-BUF
              END-IF
           ELSE
               MOVE PTF-MART TO Screen1-Ef-PTF-MART-BUF
           END-IF

      *     MOVE W-PTFSurUV TO Screen1-DaEf-PTFSurUV-BUF

           IF GRI-MFOU = 1 PERFORM Calcule-PA-Grille
                MOVE CRF-MART TO Screen1-Ef-CRF-MART-BUF.
           IF GRI-MFOU = 0 MOVE REM-MART TO Screen1-Ef-REM-MART-BUF
           ELSE            MOVE T-REM    TO Screen1-Ef-REM-MART-BUF.
           IF (DEV-MFOU NOT = SPACES) AND (DEV-MFOU NOT = DEV-MPAR)
               MOVE CRS-MFOU TO Screen1-Ef-CRS-BUF
           ELSE MOVE ZERO TO Screen1-Ef-CRS-BUF. 
           MOVE PAT-MART TO Screen1-DaEf-PAT-MART-BUF

           MOVE PAC-MART TO Screen1-Ef-PAC-MART-BUF
           MOVE ZERO TO Screen1-Ef-PAC-NUU-BUF
           IF NUU-MART NOT = ZERO
              COMPUTE Screen1-Ef-PAC-NUU-BUF ROUNDED = 
                      PAC-MART / NUU-MART.

           IF POL-MART NOT = 5
                MOVE COE-MART TO Screen1-Ef-COE-MART-BUF
           ELSE MOVE CPR-MART TO Screen1-Ef-COE-MART-BUF.

           MOVE W-PR TO Screen1-DaEf-PrixRevient-BUF

           MOVE TXM-MART TO Screen1-DaEf-TXM-MART-BUF
           MOVE FUA-MART TO Screen1-DaEf-FUA-MART-BUF
           MOVE PFA-MART TO Screen1-DaEf-PFA-MART-BUF
           MOVE CFU-MART TO Screen1-DaEf-CFU-MART-BUF
           MOVE W-FraisApproche TO Screen1-DaEf-FraisApproche-BUF
           MOVE PVT-MART TO Screen1-DaEf-PVT-MART-BUF

           MOVE W-MontantTVA TO Screen1-DaEf-MontantTVA-BUF
           MOVE TTC-MART TO Screen1-DaEf-TTC-MART-BUF

           MOVE W-MargeUnit TO Screen1-DaEf-MargeUnit-BUF
           MOVE W-MargeBrute TO Screen1-DaEf-MargeBrute-BUF
           MOVE CRC-MART TO Screen1-DaEf-CRC-MART-BUF
           MOVE PRMP-MASA TO Screen1-DaEf-PRMP-MASA-BUF
           MOVE UAC-MART TO Screen1-DaEf-UAC-MART-BUF
180517     MOVE UVE-MART TO Screen1-DaEf-UVE-MART-BUF
           MOVE VOL-MART TO Screen1-DaEf-VOL-MART-BUF
           MOVE POI-MART TO Screen1-DaEf-POI-MART-BUF
           MOVE Screen1-DaGd-RTG-RAN TO Screen1-DaGd-RTG-BUF-1
           MOVE Screen1-DaGd-RTG-BINF TO Screen1-DaGd-RTG-BUF-2
           MOVE Screen1-DaGd-RTG-BSU TO Screen1-DaGd-RTG-BUF-3
           MOVE Screen1-DaGd-RTG-RTG TO Screen1-DaGd-RTG-BUF-4
           MOVE Screen1-DaGd-RTG-PVT TO Screen1-DaGd-RTG-BUF-5
           MOVE Screen1-DaGd-RTG-DIF TO Screen1-DaGd-RTG-BUF-6
           MOVE Screen1-DaGd-RTG-MAR TO Screen1-DaGd-RTG-BUF-7
           MOVE Screen1-DaGd-PVN-RAN TO Screen1-DaGd-PVN-BUF-1
           MOVE Screen1-DaGd-PVN-BINF TO Screen1-DaGd-PVN-BUF-2
           MOVE Screen1-DaGd-PVN-BSU TO Screen1-DaGd-PVN-BUF-3
           MOVE Screen1-DaGd-PVN-PVN TO Screen1-DaGd-PVN-BUF-4
           MOVE Screen1-DaGd-PVN-DIF TO Screen1-DaGd-PVN-BUF-5
           MOVE Screen1-DaGd-PVN-MAR TO Screen1-DaGd-PVN-BUF-6
      
           IF  RFIA-MPAR = 1 
           AND RFI-MART IS NUMERIC
           AND RFIN-MART <> 0 THEN
      *       Numérotation automatique de la Référence Interne
              MOVE RFIN-MART TO Screen1-DaEf-RFIN-MART-BUF
           ELSE
              MOVE RFI-MART TO Screen1-DaEf-RFI-MART-BUF
           END-IF
      
           .
       Mode-Interrogation.
      * Bascule vers le mode "Interrogation"
      * ---------------------------------------------------------------
           MOVE "I" TO CDFB
           MOVE 0 TO isModifying isCreating isModifying2
220818               IsModifyingGCOD
                     IsCRFEnabled isNUUEnabled isUPREnabled
                     IsPTFEnabled
                     isMULEnabled IsNATEnabled IsSOCEnabled
                     isPDEEnabled IsNAT3Enabled
           MOVE 1 TO isSearching 
           UNLOCK MXART
           .
       Mode-Creation.
      * Bascule vers le mode "Création"
      * ---------------------------------------------------------------
           MOVE "C" TO CDFB
           MOVE 0 TO isSearching isModifying isModifying2
041018*               IsModifyingGCOD
                     IsCRFEnabled isNUUEnabled isUPREnabled
                     IsPTFEnabled
                     isMULEnabled IsNATEnabled IsNAT3Enabled
                     isPDEEnabled
                     W-COE-SAI W-GCOD-MCTFE
           MOVE 1 TO isCreating
041018               IsModifyingGCOD    | Demande de M3 (Souhaite que le Gencod soit modifiable en création)

           MOVE SPACES TO Id-Fiche-Courante
      
           IF RFIA-MPAR = 1 THEN
      *       Numérotation automatique de la Référence Interne
              PERFORM INCREM-RFI-MART
           END-IF
      
           IF W-MODE-DUP = 0 THEN
              INITIALIZE ENR-MART
              MOVE ENR-MART TO W-ENR-MART-Original
                               ENR-MART2
              MOVE CLE4-MART TO SV-GFA
280918        MOVE 0 TO W-ACTU-DT
           END-IF

           PERFORM RAZ-ZON-ZSP
           MOVE ZERO TO W-NUMD W-COE-REMFOU W-COE-CTF W-CRC-REMFOU
           MOVE SV-FOU TO FOU-MART
           MOVE SV-GRA TO GRA-MART
                          GRA-MFAM 
           MOVE SV-FAM TO FAM-MART
                          FAM-MFAM 
           MOVE SV-MAR TO MAR-MART
           READ MXFAMART INVALID MOVE SPACE TO ENR-MFAM
           END-READ
           PERFORM STAT
           MOVE CRC-MFAM TO CRC-MART
           MOVE 1 TO UPR-MART
           IF W-ACTIV = 2 MOVE 1 TO ILV-MART
           END-IF
200218     IF CLI-PALM = 851233 and auto-crehc = 2
               MOVE 3 TO SOC-MART
               perform Move-Nom-SOC-MART
200218     END-IF
 
           IF RFIA-MPAR = 1 THEN
      *       Numérotation automatique de la Référence Interne
              MOVE W-RFI TO RFIN-MART
           END-IF
           .
       Mode-Modification.
      * Bascule vers le mode "Modification"
      * ---------------------------------------------------------------
           MOVE "M" TO CDFB
           MOVE 1 TO isModifying  IsCRFEnabled isModifying2
220818               IsModifyingGCOD
           IF GRI-MFOU = 1 MOVE 1 TO IsCRFEnabled.
           IF INO-MART = 1 OR 2
              MOVE 0 TO isPTFEnabled isPACEnabled 
                        isRemEnabled isCRFEnabled isPACEnabled
                        isPDEEnabled
           ELSE MOVE 1 TO IsPTFEnabled
           END-IF
           
           IF AUTO-MULTIAPPRO <> 2 THEN 
              MOVE 1 TO isMULEnabled
           ELSE
              MOVE 0 TO isMULEnabled
           END-IF
           
           MOVE 0 TO isSearching isCreating
           MOVE ZERO TO W-NUMD | si gencod interne rajouté en modif
           Perform Enabled-NUU-UPR.

220818 Mode-Modification-GCOD.
      * Bascule vers le mode "Modification GCOD"
      * ---------------------------------------------------------------
           MOVE "G" TO CDFB
           MOVE 1 TO isModifyingGCOD
           .
      *  Controle d'accès au champs NUU et UPR
       Enabled-NUU-UPR.
           MOVE 1 TO isNUUEnabled isUPREnabled
           IF NUU-MART NOT = 1 MOVE 0 TO isUPREnabled
           ELSE IF UPR-MART NOT = 1 MOVE 0 TO isNUUEnabled. 

           .
       READ-MXART.
      * NB : Le code de la fiche est attendu dans Id-Fiche-Courante
      * ---------------------------------------------------------------
           INITIALIZE ENR-MART               
           MOVE Id-Fiche-Courante TO COD-MART
           IF CDFB = "M" 
220818            OR "G"  
              READ MXART LOCK INVALID KEY
                   MOVE "Lecture ART N° " TO ACU-MSG-2
                   MOVE COD-MART TO ACU-MSG-3 GO ERREUR
              END-READ
           ELSE 
              READ MXART INVALID KEY
                   MOVE "Lecture ART N° " TO ACU-MSG-2
                   MOVE COD-MART TO ACU-MSG-3 GO ERREUR
              END-READ
           END-IF.
           PERFORM STAT
           IF IND-STAT = 1 AND ( CDFB = "M" 
220818                               OR "G" )
              MOVE "399" TO Acu-Msg-Id
              PERFORM Acu-Show-Msg
              PERFORM Mode-Interrogation.
           MOVE ENR-MART TO W-ENR-MART-Original
                            ENR-MART2 | sauvegarde pour test modif prix
           MOVE CLE4-MART TO SV-GFA
           MOVE UPR-MART TO SV-UPR.
           MOVE NUU-MART TO SV-NUU
           MOVE INO-MART TO SV-INO-MART
           PERFORM LECT-MEP-ZSP
280918     MOVE 0 TO W-ACTU-DT
           .
 
      *  Lecture MXARTLOC pour exclure les ensembles.
       READ-MXARTLOC.
           IF MXLOC-PALM = 0 EXIT PARAGRAPH.

      * Lecture / Mise en place des zones spécifiques
       LECT-MEP-ZSP.

      * Initialisation des zones d'affchage / Zones Spécifiqes
       RAZ-ZON-ZSP.

       READ-ZSP-FOU.
           .

       START-MXART2.
           MOVE ENR-MART  TO ENR-MART2
280918     MOVE 0 TO W-ACTU-DT
           MOVE CLE4-MART TO SV-GFA
           MOVE 0 TO A-EOF
           EVALUATE W-NUM-KEY-MXART2
               WHEN 1
                   START MXART2 KEY >= CLE1-MART2
                       INVALID MOVE 1 TO A-EOF
                   END-START
               WHEN 2
                   START MXART2 KEY >= CLE2-MART2
                       INVALID MOVE 1 TO A-EOF
                   END-START
               WHEN 3
                   START MXART2 KEY >= CLE3-MART2
                       INVALID MOVE 1 TO A-EOF
                   END-START
               WHEN 4
                   START MXART2 KEY >= CLE4-MART2
                       INVALID MOVE 1 TO A-EOF
                   END-START
               WHEN 5
                   START MXART2 KEY >= CLE5-MART2
                       INVALID MOVE 1 TO A-EOF
                   END-START
               WHEN 6
                   START MXART2 KEY >= CLE6-MART2
                       INVALID MOVE 1 TO A-EOF
                   END-START
               WHEN 7
                   START MXART2 KEY >= CLE7-MART2
                       INVALID MOVE 1 TO A-EOF
                   END-START
           END-EVALUATE
           PERFORM STAT
           IF A-EOF = 0 THEN
               READ MXART2 NEXT END MOVE 1 TO A-EOF END-READ
               PERFORM STAT
               PERFORM READ-MXARTLOC
           END-IF
           PERFORM UNTIL (A-EOF = 1) 
                   OR ( ( (CANN-MART2 = 0 
240112                     AND Cpte-Supprime = 0 )
240112                    OR (     Cpte-Supprime = 1
110718                         AND CANN-MART2 <> 9 ) ) | pas ensemble loc
                    AND  (((ILV-MART2 = 0 OR 2) AND W-ACTIV = 1) 
                         OR ((ILV-MART2 = 1 OR 2) AND W-ACTIV = 2))
                    AND  (((NAT-MART2 = 0 OR 1) AND NEUF-INT = 1) 
                         OR (NAT-MART2 = 2 AND OCCAS-INT = 1)))
               READ MXART2 NEXT END MOVE 1 TO A-EOF 
               END-READ
               PERFORM STAT
               PERFORM READ-MXARTLOC
           END-PERFORM
           IF A-EOF = 0 THEN
               MOVE COD-MART2 TO Id-Fiche-Courante
               MOVE ENR-MART2 TO ENR-MART W-ENR-MART-Original
               PERFORM READ-MXART
           ELSE
               MOVE SPACE TO ENR-MART Id-Fiche-Courante
                             Id-Fiche-Courante ENR-MART2
           END-IF
280918     MOVE 0 TO W-ACTU-DT
           .
       Affiche-Detail.
           INITIALIZE ENR-MFOU
           MOVE FOU-MART TO COD-MFOU
           READ MXFOU
           PERFORM STAT
           IF FOU-MART = ZERO MOVE SPACES TO RAI-MFOU.
      *  Adaption écran selon zone spécifiques article N° 3
           MODIFY Screen1-La-ZSP3, TITLE W-LIB-ZSP3
           MODIFY Screen1-Ef-ZSA3, MAX-TEXT = W-NBC3
           MODIFY Screen1-Ef-ZSN3, MAX-TEXT = W-NBC3

      *  Adaption écran selon zone spécifiques article N° 4 
           MODIFY Screen1-La-ZSP4, TITLE W-LIB-ZSP4
           MODIFY Screen1-Ef-ZSA4, MAX-TEXT = W-NBC4
           MODIFY Screen1-Ef-ZSN4, MAX-TEXT = W-NBC4

           INITIALIZE ENR-MGFA
           MOVE GRA-MART TO GRA-MGFA
           MOVE ZEROES TO FAM-MGFA
           READ MXGRAFAM
           PERFORM STAT
           MOVE LIB-MGFA TO W-LIB-GRA-MART
           MOVE ARR-MGFA TO INDARR
           MOVE SPVT-MGFA TO INDSPVT

           INITIALIZE ENR-MGFA
           MOVE GRA-MART TO GRA-MGFA
           MOVE FAM-MART TO FAM-MGFA
           READ MXGRAFAM
           PERFORM STAT
           MOVE LIB-MGFA TO W-LIB-FAM-MART

           INITIALIZE ENR-MFAM
           MOVE GRA-MART TO GRA-MFAM
           MOVE FAM-MART TO FAM-MFAM
           READ MXFAMART
           PERFORM STAT

           PERFORM Affiche-Pb-Tarce

           INITIALIZE ENR-MMAR
           MOVE MARM-MART TO COD-MMAR
           READ MXMARQUE
           PERFORM STAT
           MOVE LIB-MMAR TO W-LIB-MARM-MMAR
           INITIALIZE ENR-MMAR
           MOVE MAR-MART TO COD-MMAR
           READ MXMARQUE
           PERFORM STAT
           MOVE LIB-MMAR TO W-LIB-MAR-MMAR

           perform Move-Nom-SOC-MART
           perform Mep-Texte-St1
           
           INITIALIZE ENR-MASA
           MOVE AGS-MPAR TO AGE-MASA
           MOVE COD-MART TO COD-MASA
           READ MXARTSA
           PERFORM STAT

           MOVE ZERO TO GRI-MFOU.

           PERFORM Aide-Saisie

           MOVE POL-MART TO Cm-MART-POL-SelectedItem
           PERFORM Screen1-Cm-POL-MART-Refresh

           MOVE INO-MART TO Cm-MART-INO-SelectedItem
           PERFORM Screen1-Cm-INO-MART-Refresh

           MOVE CUA-MART TO Cm-MTUN-SelectedItem
           PERFORM Screen1-Cm-CUA-MART-Refresh

           MOVE CUV-MART TO Cm-MTUN-SelectedItem
           PERFORM Screen1-Cm-CUV-MART-Refresh
190117* Pour Landa on utilise les zones STGRA et STITA
           MOVE STGRA-MART TO W-STGRA-LANDA
           MOVE STITA-MART TO W-STITA-LANDA

           MOVE ICO-MART TO W-ICO-MART
           IF W-ICO-MART NOT = 9 THEN
               ADD 1 TO W-ICO-MART
           ELSE
               MOVE 3 TO W-ICO-MART
           END-IF
           ADD 1 TO NAT-MART GIVING W-NAT-MART
           ADD 1 TO ILV-MART GIVING W-ILV-MART
           PERFORM Affich-Pb-Artloc
           ADD 1 TO ITC-MART GIVING W-ITC-MART
           modify screen1-Cm-IFA-MART VALUE W-Cm-IFA-MART(IFA-MART + 1)
           ADD 1 TO TAR-MART GIVING W-TAR-MART

           EVALUATE W-ITC-MART
               WHEN 1
                   MOVE SPACES TO W-LIB-Tarif
               WHEN 2
                   MOVE "Tarif à Colonnes : Remise / Tarif Général"
                     TO W-LIB-Tarif
               WHEN 3
                   MOVE "Tarif à Colonnes : Prix Net" TO W-LIB-Tarif
           END-EVALUATE
           COPY "W:/mistral/copy/Ef-Date10-Fic2Ecr.cbl"
                REPLACING ==CPYDAT-FIC== BY ==DAT-MART==
                          ==CPYDAT-ECR== BY ==W-DAT-MART==.

           MOVE SMALL-FONT TO COD-MART-Font DES-MART-Font
                              GRA-FAM-MART-Font RFN-MART-Font
                              RFI-MART-Font FOU-MART-Font REF-MART-Font
           EVALUATE W-NUM-KEY-MXART2
               WHEN 1 
                   MOVE DEFAULT-FONT TO COD-MART-Font
               WHEN 5 
                   MOVE DEFAULT-FONT TO COD-MART-Font
               WHEN 2
                   MOVE DEFAULT-FONT TO DES-MART-Font
               WHEN 4
                   MOVE DEFAULT-FONT TO GRA-FAM-MART-Font
               WHEN 7
                   MOVE DEFAULT-FONT TO RFN-MART-Font
               WHEN 6
                   MOVE DEFAULT-FONT TO RFI-MART-Font
               WHEN 3
                   MOVE DEFAULT-FONT TO FOU-MART-Font REF-MART-Font
           END-EVALUATE
           MODIFY SCREEN1-LA-ArtAnnul, VISIBLE 0
           IF CDFB NOT = "M" AND CANN-MART NOT = 0
              MOVE DANN-MART TO D-SAMJ
              PERFORM CONVDAT-SAMJ-JMSA
              MOVE D-JMSA TO L-DAT8
              STRING "Supprimé par " DELIMITED BY SIZE
                     " " IANN-MART DELIMITED BY SIZE 
                     " Le " DELIMITED BY SIZE
                     " " L-DAT8 DELIMITED BY SIZE INTO PICX50
              MODIFY SCREEN1-La-ArtAnnul, TITLE PICX50, VISIBLE 1
           END-IF
130819
           MOVE 1 TO W-VISU-PFNA
           IF AUTO-VISU-PFNA = 2 THEN
      *       Pas autorisé à voir les prix des 'fournisseurs non autorisés'
              INITIALIZE LK-CALPVART
              IF AGS-MPAR = SPACE THEN
      *          Agence utilisateur non déclarée -> pas autorisé
                 MOVE 0 TO W-VISU-PFNA
              END-IF
           END-IF
130819 
           PERFORM Adapte-Visibilite
           PERFORM Affiche-Detail-Prix
           PERFORM Mep-Collapse
           PERFORM Affiche-Image
010916     perform Affich-Pb-OLDTAR
           PERFORM Color-Bt-Equiv
           PERFORM Color-Bt-Equivb
           PERFORM Color-Bt-Echanges
161018     PERFORM Color-Bt-Presence
290817     PERFORM AFF-Pb-EQU.

           IF isICAREFVisible = 1
              PERFORM REMP-GD-SOC
           end-if
           PERFORM Test-Anref
           IF  isTarifFrVisible = 1 
130819     AND W-VISU-PFNA = 1 THEN
             MODIFY Screen1-La-Tarif, LINE 31,92, VISIBLE TRUE
           ELSE
             MODIFY Screen1-La-Tarif VISIBLE FALSE
           END-IF
           .

       Affiche-Detail-Prix.
           PERFORM Calcule-Fiche
           PERFORM Controle-Valeurs
      * Affichage de l'arrondi...
           MOVE SPACES TO W-Arrondi
           IF INDARR = 0 THEN
               MOVE 0 TO NIAARR MOAARR
           ELSE
               IF INDARR = 1 THEN
                   MOVE PVT-MART TO PRIARR
                   PERFORM D-RECH-ARR THRU F-RECH-ARR
               ELSE IF ISPV-MART NOT = 2
                       MOVE TTC-MART TO PRIARR
                       PERFORM D-RECH-ARR THRU F-RECH-ARR
                    END-IF
               END-IF
           END-IF
           IF NIAARR NOT = ZERO THEN
               MOVE TAB-NIA(NIAARR) TO W-Arrondi-NIA
               EVALUATE MOAARR
                   WHEN 2
                       MOVE "<" TO W-Arrondi-MOA
                   WHEN 3
                       MOVE ">" TO W-Arrondi-MOA
               END-EVALUATE
           END-IF

           MOVE "TVA" TO W-LIB-TVA
           IF TVA-MFAM > 0 THEN
               IF TVA-MPAR(TVA-MFAM) > 0 THEN
                   MOVE TVA-MPAR(TVA-MFAM) TO W-LIB-TVA-VAL
                   MOVE "%" TO W-LIB-TVA-PCT
               END-IF
           END-IF

           MOVE 0 TO isPVTEnabled isTTCEnabled isCOEEnabled isPACEnabled
                     isPATEnabled isREMEnabled isCODEnabled isFOUEnabled
                     isREFEnabled isGRAFAMEnabled isDESEnabled
                     isDes2Enabled isRFNEnabled isRFIEnabled
                     isIDFEnabled isMODEnabled isSOCEnabled
           IF isSearching = 1 THEN
               EVALUATE W-NUM-KEY-MXART2
                  WHEN 1 
                     MOVE 1 TO isCODEnabled
                  WHEN 5 
                     MOVE 1 TO isCODEnabled
                  WHEN 2
                     MOVE 1 TO isDESEnabled
                  WHEN 4
                     MOVE 1 TO isGRAFAMEnabled
                  WHEN 7
                     MOVE 1 TO isRFNEnabled
                  WHEN 6
                     MOVE 1 TO isRFIEnabled
                  WHEN 3
                     MOVE 1 TO isFOUEnabled isREFEnabled
               END-EVALUATE
           END-IF
           IF isCreating = 1 THEN
               MOVE 1 TO isGRAFAMEnabled isFOUEnabled isIDFEnabled
                         isREFEnabled isDESEnabled isDes2Enabled 
                         isCODEnabled isMODEnabled isSOCEnabled
               if auto-crehc = 2
                  move 0 to isGRAFAMEnabled isDESEnabled
               end-if
           END-IF
           IF isModifying = 1 
           and auto-crehc not = 2
               MOVE 1 TO isFOUEnabled isREFEnabled isGRAFAMEnabled
                         isDESEnabled isDES2Enabled isRFNEnabled
                         isRFIEnabled isPTFEnabled isMODEnabled
                         isSOCEnabled
                              IF (POL-MART = 3 OR 4)
               OR ((POL-MART = 1 OR 2) AND INDSPVT = 1)
                  MOVE 1 TO isPVTEnabled
               END-IF
               IF (POL-MART = 4) 
                 
                    IF  DEV-MFOU NOT = SPACES 
                    AND DEV-MFOU NOT = DEV-MPAR THEN
                       MOVE 0 TO isPACEnabled
                       MOVE 1 TO isPDEEnabled
                    ELSE
      
                       MOVE 1 TO isPACEnabled
                    END-IF

               END-IF
               IF (POL-MART = 4 AND INDARR = 2)
               OR ((POL-MART >= 1 AND <= 4) AND INDARR NOT = 1
                                            AND INDSPVT = 1)
                   IF TVA-MFAM NOT = 0 MOVE 1 TO isTTCEnabled
                   END-IF
               END-IF
               IF (POL-MART = 1 OR 2 OR 5 OR 6) THEN
                   MOVE 1 TO isCOEEnabled
               END-IF
               IF POL-MART = 6 THEN
                   MOVE 1 TO isPATEnabled
               END-IF
               MOVE GRI-MFOU TO IsCRFEnabled
               IF INO-MART = 1 OR 2
                   MOVE 0 TO isPTFEnabled isPACEnabled 
                             isRemEnabled isCRFEnabled isPACEnabled
                             isPDEEnabled
               END-IF
               IF NOT ((INO-MART = 1 OR 2) AND (POL-MART NOT = 3)) THEN
                   IF GRI-MFOU = 0 MOVE 1 TO isREMEnabled
                   END-IF
               END-IF
               PERFORM Enabled-NUU-UPR
      
               IF RFIA-MPAR = 1 
050619         OR CLI-PALM = 790461 | GONNIN
      *          Numérotation automatique de la Référence Interne
                 MOVE 0 TO isRFIEnabled
               END-IF
      
               IF NAT-MART = 2
                  MOVE 0 TO IsNATEnabled IsNAT3Enabled
               ELSE 
                  MOVE 1 TO IsNATEnabled 
                  if (nat-mgfa = 2 or 9) 
      *            and IsCreating = 1
                       move 1 to IsNAT3Enabled
                  else move 0 to IsNAT3Enabled
                  end-if
               END-IF

               IF isICAREFVisible = 1 and w-soc <> 0
                  move 0 to isFOUEnabled isREFEnabled isGRAFAMEnabled
                            isDESEnabled isDES2Enabled isRFNEnabled
                            isRFIEnabled isMODEnabled IsNATEnabled
                            isMULEnabled isModifying2 isSOCEnabled
                            IsNAT3Enabled
               END-IF
130819
              IF W-VISU-PFNA = 0 THEN


      *          Pas autorisé à voir les prix des 'fournisseurs non autorisés'
                 MOVE 0 TO isPACEnabled
                           isFOUEnabled
              END-IF
130819
           END-IF
  
           IF (DEV-MFOU NOT = SPACES) AND (DEV-MFOU NOT = DEV-MPAR)

               MOVE SPACES TO W-PDE-LIB W-PTF-LIB
               STRING "Tarif Frn en " DEV-MFOU DELIMITED BY SIZE
               INTO W-PTF-LIB
               
               IF POL-MART = 4 THEN
                 STRING "P.A. en " " " DEV-MFOU DELIMITED BY SIZE
                   INTO W-PDE-LIB
               ELSE
               
                 STRING "Tarif en " " " W-LIB-DEV DELIMITED BY SIZE
                   INTO W-PDE-LIB
               END-IF
           ELSE
               MOVE "Tarif Fournisseur" TO W-PTF-LIB
           END-IF
           IF POL-MART = 5 MOVE "Coef./PR" TO W-LIB-COEF
           ELSE            MOVE "Coef."    TO W-LIB-COEF.
181206
           MOVE SPACE TO W-CRE
                         W-MOD

           IF IMOD-MART <> SPACE THEN
              COPY "W:/mistral/copy/Ef-Date10-Fic2Ecr.cbl"
                REPLACING ==CPYDAT-ECR== BY ==Ef-Date-Ecr==
                          ==CPYDAT-FIC== BY ==DMOD-MART==.
              STRING "Modifié le" " " Ef-Date-Ecr " "
                     HHMOD-MART ":" MMMOD-MART " par" " " IMOD-MART
                     DELIMITED BY "     "
                INTO W-MOD
           END-IF


           IF DCR-MART <> 0 THEN
              COPY "W:/mistral/copy/Ef-Date10-Fic2Ecr.cbl"
                REPLACING ==CPYDAT-ECR== BY ==Ef-Date-Ecr==
                          ==CPYDAT-FIC== BY ==DCR-MART==.

              IF ICR-MART <> SPACE THEN
                 STRING "Créé le" " " Ef-Date-Ecr " par" 
                        " " ICR-MART DELIMITED BY "     "
                   INTO W-CRE
              ELSE
                 STRING "Créé le "
                        " " Ef-Date-Ecr DELIMITED BY "      "
                   INTO W-CRE
              END-IF
           END-IF

           if auto-crehc = 2
              move 0 to isModifying isModifying2 IsCRFEnabled
           end-if

           PERFORM Screen1-Fld-To-Buf.
           DISPLAY Screen1.
           PERFORM MEP-Champs-Num
130819
           IF  W-VISU-PFNA = 0 
210819     AND POL-MART <> 5 THEN
      *       Pas autorisé à voir les prix des fournisseurs non autorisés
210819*        MOVE LK-CALPVART-PVNCLI TO Screen1-Ef-PAC-MART-BUF
      *        MODIFY Screen1-Ef-PAC-MART,
      *           VALUE Screen1-Ef-PAC-MART-BUF
210819
              MOVE LK-CALPVART-PVNCLI TO Screen1-DaEf-PrixRevient-BUF
              MODIFY Screen1-DaEf-PrixRevient,
                 VALUE Screen1-DaEf-PrixRevient-BUF
210819
           END-IF
130819
           PERFORM Refresh-Bitmap.
       
       Refresh-Bitmap.
           IF CDFB <> "I"
             modify SCreen1-pb-refresh, bitmap-handle RAFRAIC24-JPG,
                                        title "Rafraîchir"
           else 
             modify SCreen1-pb-refresh, bitmap-handle TERMINX24-JPG,
                                        title "Autre article" 
           end-if.

       Mep-Collapse.
      * Ces Modify doivent être APRES le Display Screen1
           IF GRI-MFOU = 0 MODIFY SCREEN1-EF-CRF-MART VALUE SPACES.
           IF isMoteurFrVisible = 0 THEN
               MODIFY Screen1-Pb-Moteur-Expand,
                      BITMAP-HANDLE = EXPANDxx7-JPG
           ELSE
               MODIFY Screen1-Pb-Moteur-Expand,
                      BITMAP-HANDLE = COLLAPSE7-JPG
           END-IF
           IF isTarifFrVisible = 0 THEN
               MODIFY Screen1-Pb-Tarif-Expand,
                      BITMAP-HANDLE = EXPANDxx7-JPG |COLUMN 101,29 
           ELSE
               MODIFY Screen1-Pb-Tarif-Expand,
                      BITMAP-HANDLE = COLLAPSE7-JPG |COLUMN 110,29
           END-IF
           .
       Aide-Saisie. 
      *  Si fonction création ou Modif.    
           IF CDFB NOT = "C" AND NOT = "M" AND NOT = "Z" THEN
               EXIT PARAGRAPH
           END-IF 
           IF ITC-MFAM = 0 MOVE 0 TO ITC-MART
           END-IF
           IF IPO-MFAM = 0 MOVE 0 TO POI-MART
           END-IF
           IF CUA-MART = 0 THEN
               MOVE 1 TO CUA-MART
           END-IF
           IF CUV-MART = 0 THEN
               MOVE CUA-MART TO CUV-MART
           END-IF
           IF (CUA-MART = CUV-MART) AND NUU-MART = 0 THEN
               MOVE 1 TO NUU-MART
           END-IF
           IF (DEV-MFOU NOT = SPACES) AND (DEV-MFOU NOT = DEV-MPAR)
               MOVE DEV-MFOU TO DEV-MART
071016     ELSE | HYDRAPARTS DEV renseigné et fournisseur sans devise : impossible à enlever la devise
              MOVE SPACE TO DEV-MART
           END-IF

      *  Si fonction création uniquement
           IF CDFB NOT = "C" AND NOT = "Z" THEN
               EXIT PARAGRAPH
           END-IF
           IF (CO1-MART = SPACES) OR (CO1-MART IS NUMERIC) THEN
               MOVE IDE-MFOU TO CO1-MART
           END-IF
           IF POL-MART = 0 
              MOVE POP-MFOU TO POL-MART
              MOVE FUA-MFAM TO IFA-MART
           END-IF
290817* numérotation automatique pour la déconstruction
           IF MODU-DECO = 1
           AND NUMA-MFOU = 1 
           AND CO2-MART = SPACE
           AND FAM-MART <> ZERO
                 MOVE GRA-MART TO CO2-MART(1:2)
                 MOVE FAM-MART TO CO2-MART(3:2)
                 MOVE 4 TO W-NB
                 PERFORM RECH-D-CODE THRU F-RECH-D-CODE
           end-if.

           MOVE ZERO TO IND-GENCOD
           IF (NOT CNUF-MFOU = ZERO) AND (REF-MFAM = 1)
              MOVE 1 TO IND-GENCOD
              PERFORM TEST-REF-GENCOD
              IF (GCOD-MART = ZERO OR IsCreating = 1) AND
                 IND-REF-GENCOD = 1 AND
030718           REF-MART <> SPACES
                 PERFORM CREAT-GENCOD
              END-IF
           END-IF
           IF CNUF-MFOU = ZERO AND CNUD-MPAR NOT = 0 AND REF-MFAM = 1
              MOVE 2 TO IND-GENCOD
              IF (GCOD-MART = ZERO AND IsCreating = 1) AND
030718           REF-MART <> SPACES
                 PERFORM CREAT-GENCOD
              END-IF
           END-IF

           IF FUA-MFAM <> 0 AND IFA-MART = 0
               MOVE FUA-MFAM TO IFA-MART
           END-IF

           IF (COE-MART = 0) AND
             ((POL-MART = 1) OR (POL-MART = 2) OR (POL-MART = 6)) THEN
               MOVE COE-MFAM TO COE-MART
           END-IF
           IF (TXM-MART = 0) AND (POL-MART = 5) THEN
               MOVE TXM-MFAM TO TXM-MART
           END-IF
           IF CFU-MART = 0 THEN
               EVALUATE TCF-MFAM
                   WHEN 0
                       MOVE CFU-MFAM TO CFU-MART
                   WHEN 1
                       MOVE COE-MART TO CFU-MART
                   WHEN OTHER
                       MOVE 1 TO CFU-MART
               END-EVALUATE
               IF FUA-MFAM < 2 
                    MOVE VAL-MFAM TO FUA-MART
               ELSE MOVE VAL-MFAM TO PFA-MART
               END-IF
           END-IF

      *  Si fonction création et si données obligatoire renseignées.
           IF CDFB NOT = "C"  THEN
               EXIT PARAGRAPH
           END-IF
           .

       Adapte-Visibilite.
      * Attention : l'ordre des tests "Visible?" a une importance...
           IF FOU-MART NOT = ZERO AND W-NUM-KEY-MXART2 = 3 
           AND isSearching = 1 
      *        MOVE 1 TO isLAFVisible
PROTO          MODIFY Screen1-Pb-ListeArtFou ENABLED TRUE
           ELSE 
      *        MOVE ZERO TO isLAFVisible
PROTO          MODIFY Screen1-Pb-ListeArtFou ENABLED FALSE
           END-IF
170306
           IF GRA-MART NOT = ZERO 
           AND FAM-MART NOT = ZERO 
           AND W-NUM-KEY-MXART2 = 4
           AND isSearching = 1 
      *        MOVE 1 TO isLAF2Visible
PROTO          MODIFY Screen1-Pb-ListeArtFam ENABLED TRUE
           ELSE 
      *        MOVE ZERO TO isLAF2Visible
PROTO         MODIFY Screen1-Pb-ListeArtFam ENABLED FALSE
           END-IF
           IF (isModifying = 0) AND (UPR-MART = 1) THEN
               MOVE 1 TO isPxUniteVisible
           ELSE
               MOVE 0 TO isPxUniteVisible
           END-IF
           IF (isModifying = 1) OR
              ((NUU-MART = 1) AND (UPR-MART NOT = 1)) THEN
               MOVE 1 TO isUPRVisible
           ELSE
               MOVE 0 TO isUPRVisible
           END-IF
           IF RIA-MPAR = 0 THEN
               MOVE 0 TO isRFIVisible
           ELSE
               MOVE 1 TO isRFIVisible
           END-IF
           IF INDARR = 0 THEN
               MOVE 0 TO isArrondiVisible
           ELSE
               MOVE 1 TO isArrondiVisible
           END-IF
           IF CUA-MART NOT = CUV-MART THEN
               MOVE 1 TO isNUUVisible
           ELSE
               MOVE 0 TO isNUUVisible
           END-IF
           IF NAT-MGFA = 9 THEN
               MOVE 1 TO isTYPVisible
           ELSE
               MOVE 0 TO isTYPVisible
           END-IF
           IF (IMO-MART = 1) AND (NAT-MGFA = 9) THEN
               MOVE 1 TO isMoteurPbVisible
           ELSE
               MOVE 0 TO isMoteurPbVisible isMoteurFrVisible
               MOVE 1 TO isLeftVisible
           END-IF
           IF (isLeftVisible = 1) AND (NAT-MGFA = 9) THEN
               MOVE 1 TO isIMOVisible
           ELSE
               MOVE 0 TO isIMOVisible
           END-IF
           IF (isLeftVisible = 1) AND (NOT VOL-MFAM = 0) THEN
               MOVE 1 TO isVOLVisible
               EVALUATE VOL-MFAM
                   WHEN 1
                       MOVE "L" TO W-UNI-VOL-MART
                   WHEN 2
                       MOVE "M3" TO W-UNI-VOL-MART
               END-EVALUATE
           ELSE
               MOVE 0 TO isVOLVisible
           END-IF
           IF (isLeftVisible = 1) AND (DOC-MART = 1) THEN
               MOVE 1 TO isDOCVisible
           ELSE
               MOVE 0 TO isDOCVisible
           END-IF
           IF (isLeftVisible = 1) AND (MUL-MART = 1) 
           AND AUTO-MULTIAPPRO <> 2 THEN
               MOVE 1 TO isCARTMAVisible
           ELSE
               MOVE 0 TO isCARTMAVisible
           END-IF
           IF (isLeftVisible = 1) AND (NOT IPO-MFAM = 0) THEN
               MOVE 1 TO isPOIVisible
               EVALUATE IPO-MFAM
                   WHEN 1
                       MOVE "Kg" TO W-IPO-POI-MART
                   WHEN 2
                       MOVE "T" TO W-IPO-POI-MART
               END-EVALUATE
           ELSE
               MOVE 0 TO isPOIVisible
           END-IF
           IF (ITC-MFAM = 0) OR (W-ITC-MART = 1) THEN
               MOVE 0 TO isTarifPbVisible isTarifFrVisible
               MOVE 1 TO isRightVisible
               MOVE GPMO-MPAR TO isRight2Visible
           ELSE
               MOVE 1 TO isTarifPbVisible
           END-IF
           IF POL-MART = 4 
               MOVE 0 TO isPTFVisible isCRFVisible isREMVisible
           ELSE
               MOVE 1 TO isPTFVisible isCRFVisible isREMVisible
           END-IF
           IF GRI-MFOU = 0 AND POL-MART NOT = 4
               MOVE ZERO TO isCRFVisible.
           IF POL-MART = 5 THEN
               MOVE 1 TO isPrixRevientVisible
210819                   isPrixRevientVisible2
               MOVE 0 TO isIFAVisible
           ELSE
               MOVE 0 TO isPrixRevientVisible
210819                   isPrixRevientVisible2
               MOVE 1 TO isIFAVisible
           END-IF
           IF POL-MART = 6 THEN
               MOVE 1 TO isPATVisible
           ELSE
               MOVE 0 TO isPATVisible
           END-IF
      
           IF DEV-MART = SPACES THEN
               MOVE 0 TO isPDEVisible isCoursVisible
           ELSE
               MOVE 1 TO isPDEVIsible isCoursVisible
           END-IF
           IF isIFAVisible = 1 AND IFA-MART = 1 THEN
               MOVE 1 TO isFUAVisible
           ELSE
               MOVE 0 TO isFUAVisible
           END-IF
           IF isIFAVisible = 1 AND IFA-MART = 2 THEN
               MOVE 1 TO isPFAVisible
           ELSE
               MOVE 0 TO isPFAVisible
           END-IF
           IF isIFAVisible = 1 AND IFA-MART > 0 THEN
               MOVE 1 TO isCFUVisible isFraisApprocheVisible
           ELSE
               MOVE 0 TO isCFUVisible isFraisApprocheVisible
           END-IF
021212
           move 1 to isPACVisible isCOEVisible IsPvtVisible
130819               IsMarVisible
130819               IsDatVisible
130819               IsPOLVisible

           IF isICAREFVisible = 1 and w-soc = 0 and soc-mart = 0
               move 0 to isPTFVisible isCRFVisible isREMVisible
                         isPrixRevientVisible isIFAVisible  
                         isPDEVisible isCoursVisible isPATVisible
                         isCFUVisible isFraisApprocheVisible
                         isPACVisible isCOEVisible IsPvtVisible
                         isArrondiVisible isUPRVisible isNUUVisible
                         isPxUniteVisible
130819                   IsMarVisible
130819                   IsDatVisible
130819                   IsPOLVisible
210819                   isPrixRevientVisible2
           END-IF
021212
130819
           IF  W-VISU-PFNA = 0 
210819     AND POL-MART <> 5 THEN
      *       Pas autorisé à voir les prix des fournisseurs non autorisés 
      *       et pas politique PR x TxM
              MOVE 0 TO isCOEVisible 
                        isPTFVisible 
                        isCRFVisible 
                        isREMVisible
                        isPrixRevientVisible 
                        isIFAVisible
                        isPDEVisible
                        isCoursVisible 
                        isPATVisible
                        isCFUVisible 
                        isFraisApprocheVisible
                        isCOEVisible 
                        isUPRVisible 
                        isNUUVisible
                        isPxUniteVisible
                        IsMarVisible
                        IsDatVisible
                        IsPOLVisible
                        IsPFAVisible
                        IsFUAVisible
210819                  isPACVisible
210819        MOVE 1 TO isPrixRevientVisible2
      *       Affiche prix client agence du personnel
210819*        MOVE SPACE TO Screen1-La-PAC-MART-Title
      *        STRING "P.A. Net/Ag"
      *               " "
      *               AGE-MPER
      *          INTO Screen1-La-PAC-MART-Title
210819        MOVE "P.A. Net/Centrale" TO Screen1-La-PrixRevient-Title
           ELSE
210819*        MOVE "P.A. Net" TO Screen1-La-PAC-MART-Title
210819        MOVE "P. Revient" TO Screen1-La-PrixRevient-Title
           END-IF
130819
           IF INO-MART = 0 THEN
               MOVE 0 TO isINOVisible
           ELSE
               MOVE 1 TO isINOVisible
           END-IF
           IF (isRightVisible = 1) AND (ITC-MFAM NOT = 0) THEN
               MOVE 1 TO isITCVisible
           ELSE
               MOVE 0 TO isITCVisible
           END-IF
           IF REF-MFAM = 1 AND (CNUF-MFOU NOT= 0 OR CNUD-MPAR NOT = 0)
                MOVE 1 TO isGCODVisible 
           ELSE MOVE ZERO TO isGCODVisible.
           IF REF-MFAM = 1 AND CNUF-MFOU = 0 AND CNUD-MPAR NOT = 0 AND
              isModifying = 1 AND GCOD-MART = ZERO
                MOVE 1 TO isCreatGCODVisible 
           ELSE MOVE ZERO TO isCreatGCODVisible.
           IF (isRightVisible = 0) OR (MXLOC-PALM = 0) THEN
               MOVE 0 TO isILVVisible
           ELSE
               MOVE 1 TO isILVVisible
           END-IF
           MOVE 0 TO isZSP1Visible isZSC1Visible 
                     isZSN1Visible isZSA1Visible 
                     isZSP2Visible isZSC2Visible
                     isZSN2Visible isZSA2Visible
                     isZSP3Visible isZSC3Visible
                     isZSN3Visible isZSA3Visible
                     isZSP4Visible isZSC4Visible
                     isZSN4Visible isZSA4Visible
           IF isRightVisible = 1 THEN
               MOVE 1 TO isZSP1Visible isZSP2Visible
               EVALUATE W-TDZ1
                   WHEN 1
                       MOVE 1 TO isZSN1Visible
                   WHEN 2
                       MOVE 1 TO isZSA1Visible
                   WHEN 3
                       MOVE 1 TO isZSC1Visible
               END-EVALUATE
               EVALUATE W-TDZ2
                   WHEN 1
                       MOVE 1 TO isZSN2Visible
                   WHEN 2
                       MOVE 1 TO isZSA2Visible
                   WHEN 3
                       MOVE 1 TO isZSC2Visible
               END-EVALUATE
               EVALUATE W-TDZ3
                   WHEN 1
                       MOVE 1 TO isZSN3Visible
                   WHEN 2
                       MOVE 1 TO isZSA3Visible
                   WHEN 3
                       MOVE 1 TO isZSC3Visible
               END-EVALUATE
               EVALUATE W-TDZ4
                   WHEN 1
                       MOVE 1 TO isZSN4Visible
                   WHEN 2
                       MOVE 1 TO isZSA4Visible
                   WHEN 3
                       MOVE 1 TO isZSC4Visible
               END-EVALUATE
           END-IF
           MOVE W-ZSP-F1 TO isZSP3Visible
           MOVE W-ZSP-F2 TO isZSP4Visible

           IF MCM-MPAR = 3 THEN
               MOVE 1 TO isPRMPVisible
           ELSE
               MOVE 0 TO isPRMPVisible
           END-IF
           IF isTarifFrVisible = 0 THEN
               MOVE 0 TO isRTGDaGdVisible isPVNDaGdVisible
           ELSE
               MOVE 0 TO isZSP3Visible isZSP4Visible
               IF W-ITC-MART = 2 THEN
                   MOVE 1 TO isRTGDaGdVisible
                   MOVE 0 TO isPVNDaGdVisible
                   MODIFY Screen1-DaGd-RTG, MASS-UPDATE = 1,
                                            RESET-GRID = 1
                   PERFORM Acu-Screen1-DaGd-RTG-Content
                   PERFORM VARYING Tmp-9-3 FROM 1 BY 1
                           UNTIL Tmp-9-3 > 6
                       PERFORM MEP-TARCOL-RTG
                       MODIFY Screen1-DaGd-RTG,
                              RECORD-TO-ADD = Screen1-DaGd-RTG-BUF
                   END-PERFORM
                   MODIFY Screen1-DaGd-RTG, MASS-UPDATE = 0
                   MODIFY Screen1-DaGd-RTG, Y = 2
               ELSE
                   MOVE 0 TO isRTGDaGdVisible
                   MOVE 1 TO isPVNDaGdVisible
                   MODIFY Screen1-DaGd-PVN, MASS-UPDATE = 1,
                                            RESET-GRID = 1
                   PERFORM Acu-Screen1-DaGd-PVN-Content
                   PERFORM VARYING Tmp-9-3 FROM 1 BY 1
                           UNTIL Tmp-9-3 > 6
                       PERFORM MEP-TARCOL-PVN
                       MODIFY Screen1-DaGd-PVN,
                              RECORD-TO-ADD = Screen1-DaGd-PVN-BUF
                   END-PERFORM
                   MODIFY Screen1-DaGd-PVN, MASS-UPDATE = 0
                   MODIFY Screen1-DaGd-PVN, Y = 2
               END-IF
           END-IF

      * Adaptation de l'interface en fonction du mode de travail...
           EVALUATE CDFB
               WHEN "I"
      *              isPreviousVisible isNextVisible
PROTO                   MODIFY Screen1-Pb-Previous ENABLED TRUE
PROTO                   MODIFY Screen1-Pb-Next     ENABLED TRUE
                  MOVE 1 TO  isRefreshVisible isPrintVisible
                             isPbVisible isPhotoVisible
                             IsPlancheVisible
                   move MODU-LANDA to IsPlancheVisible
                   IF Id-Fiche-Courante = SPACES
                     move 0 to isPhotoVisible IsPlancheVisible
                   END-IF
      *             MOVE 0 TO isValidVisible
PROTO              MODIFY Screen1-Pb-Valid ENABLED FALSE
                   IF  MODIF-PALM = "X" 
220818             AND (    AUTO-MODGCOD <> 1 
220818                   OR IsGCODVisible = 0 
220818                   OR CANN-MART  = 1 ) THEN
      *                 MOVE 0 TO isModifyVisible  
PROTO                   MODIFY Screen1-Pb-Modify ENABLED FALSE
                   ELSE
                       IF ID-FICHE-COURANTE NOT = SPACES
      *                    MOVE 1 TO isModifyVisible
PROTO                   MODIFY Screen1-Pb-Modify ENABLED TRUE
                       END-IF
                   END-IF
                   IF CREAT-PALM = "X" THEN
      *                 MOVE 0 TO isAddVisible
PROTO                   MODIFY Screen1-Pb-Add ENABLED FALSE
                   ELSE
      *                 MOVE 1 TO isAddVisible
PROTO                   MODIFY Screen1-Pb-Add ENABLED TRUE     
                   END-IF
                   IF ANNUL-PALM = "X" THEN
      *                  MOVE 0 TO isDeleteVisible
PROTO                   MODIFY Screen1-Pb-Delete ENABLED FALSE
                   ELSE
                       IF ID-FICHE-COURANTE NOT = SPACES
      *                    MOVE 1 TO isDeleteVisible
PROTO                   MODIFY Screen1-Pb-Delete ENABLED TRUE
                       END-IF
                   END-IF
      
                   IF LK-ART-C-CALL = 2 THEN
      *               Vient de ASA -> affiche pas bouton ASA
                      MOVE 0 TO isPbASAVisible
                   ELSE
                      MOVE 1 TO isPbASAVisible
                   END-IF
                             
               WHEN "C"
               WHEN "Z"
PROTO                   MODIFY Screen1-Pb-Previous ENABLED FALSE
PROTO                   MODIFY Screen1-Pb-Next     ENABLED FALSE
      *             MOVE 0 TO isPreviousVisible isNextVisible
      *                       isModifyVisible
      *                       isAddVisible isDeleteVisible
                    MOVE 0 TO isPrintVisible isPbVisible
                             isPhotoVisible IsPlancheVisible
                             isPbASAVisible
PROTO                   MODIFY Screen1-Pb-Modify ENABLED FALSE
PROTO                   MODIFY Screen1-Pb-Add    ENABLED FALSE
PROTO                   MODIFY Screen1-Pb-Delete ENABLED FALSE 
                   IF isCreating = 1 THEN
      *                 MOVE 0 TO isValidVisible
PROTO                  MODIFY Screen1-Pb-Valid ENABLED FALSE
                   ELSE
      *                 MOVE 1 TO isValidVisible
PROTO                  MODIFY Screen1-Pb-Valid ENABLED TRUE
                       Move 0 TO isRefreshVisible
                   END-IF
               WHEN "M"
220818         WHEN "G"
PROTO                   MODIFY Screen1-Pb-Previous ENABLED FALSE
PROTO                   MODIFY Screen1-Pb-Next     ENABLED FALSE
      *             MOVE 0 TO isPreviousVisible isNextVisible
      *                       isModifyVisible isAddVisible
      *                       isDeleteVisible 
                    MOVE 0 TO isPrintVisible
PROTO                   MODIFY Screen1-Pb-Modify ENABLED FALSE
PROTO                   MODIFY Screen1-Pb-Add    ENABLED FALSE
PROTO                   MODIFY Screen1-Pb-Delete ENABLED FALSE 
                   MOVE 1 TO isRefreshVisible 
      *                       isValidVisible
                             isPbVisible isPhotoVisible
PROTO              MODIFY Screen1-Pb-Valid ENABLED TRUE
                   move MODU-LANDA to IsPlancheVisible
 
                   IF LK-ART-C-CALL = 2 THEN
      *               Vient de ASA -> affiche pas bouton ASA
                      MOVE 0 TO isPbASAVisible
                   ELSE
                      MOVE 1 TO isPbASAVisible
                   END-IF
                        
           END-EVALUATE
           .
       Controle-Valeurs.
           MOVE 1 TO isValid 
           MOVE 112 TO COD-MART-Color
           MOVE 2 TO GRA-FAM-MART-Color FOU-MART-Color REF-MART-Color
                     DES-MART-Color POL-MART-Color INO-MART-Color
                     NUU-MART-Color PAC-MART-Color PVT-MART-Color
                     MargeUnit-Color UPR-MART-Color
                     SOC-MART-Color
           IF Iscreating = 1 add 1 to nb-accept.

           IF CDFB NOT = "C" AND NOT = "M" AND NOT = "Z" THEN
               EXIT PARAGRAPH
           END-IF

           IF isCreating = 1 AND FOU-MART NOT = 0 AND 
              REF-MART NOT = SV-REF
              PERFORM TEST-CATALOGUE THRU F-TEST-CATALOGUE
              MOVE REF-MART TO SV-REF
              IF CRE-AVEC-CTF = 0 MOVE 0 TO isValid
              END-IF
           END-IF

           IF GRA-MART = ZEROES OR FAM-MART = ZEROES THEN
               MOVE 0 TO isValid
               MOVE 5 TO GRA-FAM-MART-Color
           END-IF
           MOVE FOU-MART TO COD-MFOU
           READ MXFOU INVALID KEY
              MOVE 0 TO isValid
              MOVE 5 TO FOU-MART-Color
           END-READ
           PERFORM STAT
250706
           MOVE ZERO TO GRI-MFOU.
250706
           IF NTF-MFOU NOT = 0 AND NOT = 2
              MOVE 0 TO isValid
              MOVE 5 TO FOU-MART-Color
           END-IF
           IF FOU-MART = ZEROES THEN
               MOVE 0 TO isValid
               MOVE 5 TO FOU-MART-Color
               MOVE SPACES TO RAI-MFOU
           END-IF
           IF REF-MART = SPACES THEN
               MOVE 0 TO isValid
               MOVE 5 TO REF-MART-Color
           END-IF
           IF AAS-MPAR = 1 AND SOC-MART = 0 AND CLI-PALM <> 851233
               MOVE 0 TO isValid
               MOVE 5 TO SOC-MART-Color
           END-IF
           IF Iscreating = 1 AND COD-MART NOT = SPACES
               MOVE ENR-MART TO W-ENR-MART-BUF
               READ MXART NOT INVALID
                  IF CANN-MART = 0
                     MOVE 0 TO IsValid
                     MOVE 5 TO REF-MART-Color
                  END-IF
               END-READ
               PERFORM STAT
               MOVE W-ENR-MART-BUF TO ENR-MART.
           IF Iscreating = 1 AND Isvalid = 1 AND NB-ACCEPT < 2  | En création si toutes les infos obligatoires sont déjà  
              MOVE 0 TO IsValid                                 | renseignées (notamment si existence d'un catalogue frn)
              MOVE 185 to control-id                            | on laisse la possibité de modifier le code article avant de le rendre disable
              move 4 to accept-control                          | ==> au moins 2 accept sur les infos obligatoires
           end-if

           IF Iscreating = 0 AND PVT-MART < 0 THEN
               MOVE 0 TO isValid
               MOVE 5 TO PVT-MART-Color
           END-IF
           IF W-MargeUnit < 0 THEN
      *         MOVE 0 TO isValid
               MOVE 5 TO MargeUnit-Color
           END-IF
           IF DES-MART = SPACES THEN
               MOVE 0 TO isValid
               MOVE 5 TO DES-MART-Color
           END-IF
           IF (CO1-MART = SPACE) OR (CO1-MART IS NUMERIC) OR
              (CO2-MART = SPACE) THEN
               MOVE 0 TO isValid
               MOVE 176 TO COD-MART-Color
           END-IF
           IF Iscreating = 0 AND ((INO-MART = 1) OR (INO-MART = 2)) 
               IF POL-MART = 3 THEN
                   MOVE 0 TO isValid
                   MOVE 5 TO POL-MART-Color INO-MART-Color
               END-IF
               IF NAT-MGFA = 9 THEN
                   MOVE 0 TO isValid
                   MOVE 5 TO INO-MART-Color
               END-IF
               IF NOT UPR-MART = 1 THEN
                   MOVE 0 TO isValid
                   MOVE 5 TO UPR-MART-Color INO-MART-Color
               END-IF
           END-IF
           IF Iscreating = 0 AND NUU-MART = 0 THEN
               MOVE 0 TO isValid
               MOVE 5 TO NUU-MART-Color
           ELSE 
               COMPUTE W-TMP ROUNDED = PVT-MART - (PAC-MART / NUU-MART)
               IF Iscreating = 0 AND W-TMP < 0 THEN
                   MOVE 0 TO isValid
                   MOVE 5 TO PVT-MART-COlor PAC-MART-Color
               END-IF
           END-IF
           IF Iscreating = 0 AND UPR-MART = 0 THEN
              MOVE 0 TO isValid
              MOVE 5 TO UPR-MART-Color
           END-IF
      *     IF (PAC-MART = 0) AND
      *        ((POL-MART = 3) OR (POL-MART = 4)) THEN
      *         MOVE 0 TO isValid
      *         MOVE 5 TO PAC-MART-Color
      *     END-IF

           IF (CDFB = "C" OR "Z" OR "M") THEN
      *         MOVE isValid TO isValidVisible
PROTO              MODIFY Screen1-Pb-Valid ENABLED isValid
           END-IF

           IF  LK-ART-C-CHO = "C"
           AND LK-ART-C-COD(1:4) NUMERIC THEN
      *    Création article divers
              MOVE SPACE TO LK-ART-C-COD
              MOVE 0 TO isValid
           END-IF

           IF isCreating = 1 AND isValid = 1 THEN
      *        Création OK  
               MOVE 0 TO isCreating
               MOVE 1 TO isModifying isModifying2
               Move 0 TO isRefreshVisible
               IF GRI-MFOU = 1 AND (NOT INO-MART = 1 OR 2)
                  MOVE 1 TO IsCRFEnabled
               END-IF
               IF AUTO-MULTIAPPRO <> 2 MOVE 1 TO isMULEnabled
               ELSE MOVE 0 TO isMULEnabled
               END-IF
               MOVE COD-MART TO Id-Fiche-Courante
               IF DAT-MART = ZERO MOVE DTT-PALM TO DAT-MART
                  COPY "W:/mistral/copy/Ef-Date10-Fic2Ecr.cbl"
                  REPLACING ==CPYDAT-FIC== BY ==DAT-MART==
                          ==CPYDAT-ECR== BY ==W-DAT-MART==.
                  MODIFY Screen1-Ef-DAT-MART, VALUE = W-DAT-MART
               END-IF
           END-IF
           .

       Test-Sauvegarde-Voulue.
           IF CDFB = "C" OR "Z" OR "M" 
220818                          OR "G" THEN
               IF W-ENR-MART-Original NOT = ENR-MART THEN
                   MOVE "202" TO Acu-Msg-Id
                   PERFORM Acu-Show-Msg
                   IF Acu-Return-Value = 1 THEN
                       PERFORM Sauvegarde-Detail
                       MOVE 1 TO Event-Action
                   ELSE
                       MOVE 0 TO Event-Action
                   END-IF
               END-IF
           END-IF
           .
       Sauvegarde-Detail.
      * Sauvegarde la fiche Détail (en la créant si nécessaire).
      * ---------------------------------------------------------------
220818     IF CDFB <> "G" THEN

              IF COD-MART = SPACE THEN
                 MOVE "381" TO Acu-Msg-Id
                 PERFORM Acu-Show-Msg
                 MOVE Event-Action-Fail TO Event-Action
                 EXIT PARAGRAPH
              END-IF
      * L'écran comporte encore des erreurs...
              IF isValid = 0 THEN
                  MOVE "385" TO Acu-Msg-Id
                  PERFORM Acu-Show-Msg
                  MOVE Event-Action-Fail TO Event-Action
                  EXIT PARAGRAPH
              END-IF
      *--- Vérif si changement de famille et famille petit matériél
              IF CDFB <> "C"
                 MOVE SV-GFA TO CLE1-MGFA
                 READ MXGRAFAM INVALID MOVE ZERO TO NAT-MGFA
                 END-READ
                 PERFORM STAT
                 MOVE NAT-MGFA TO SV-NAT
              END-IF
                           
      *  Tests complémentaires de validité:
              MOVE GRA-MART TO GRA-MGFA
              MOVE ZEROES   TO FAM-MGFA
              READ MXGRAFAM INVALID KEY
                  MOVE "Famille article inexistante" TO ACU-MSG-1
                  PERFORM MSG-INFO
                  MOVE Event-Action-Fail TO Event-Action
                  EXIT PARAGRAPH
              END-READ
              PERFORM STAT
              MOVE GRA-MART TO GRA-MGFA
              MOVE FAM-MART TO FAM-MGFA
              READ MXGRAFAM INVALID KEY
                 MOVE "Sous-famille article inexistante" TO ACU-MSG-1
                 PERFORM MSG-INFO
                 MOVE Event-Action-Fail TO Event-Action
                 EXIT PARAGRAPH
              END-READ
              PERFORM STAT

              IF CDFB = "M" 
                 IF (SV-NAT <> 9 AND NAT-MGFA = 9)          | Changement nature famille  
                    MOVE
                  "ATTENTION: Sous-famille modifiée, la nouvelle sous-fa
      -           "mille est de " TO ACU-MSG-1
                    MOVE 
                  "nature 'petit matériel', vous devez saisir en CNS les 
      -           " N° de série" TO ACU-MSG-2
                    STRING "s'il y a du stock." W-NEWLINE
                         "Confirmez-vous le changement ?" INTO ACU-MSG-3
                    PERFORM MSG-ON
                    IF ACU-RETURN-VALUE = 2 EXIT PARAGRAPH
                    END-IF
                    PERFORM MAJ-TRACE-CHGSFA
                 END-IF
                 IF (SV-NAT = 9 AND NAT-MGFA <> 9)
                    MOVE
                  "ATTENTION: Sous-famille modifiée, la nouvelle sous-fa
      -           "mille n'est " TO ACU-MSG-1
                    MOVE 
                  "plus de nature 'petit matériel', vous allez perdre le
      -           "s N° de série" TO ACU-MSG-2
                    STRING "éventuels s'il y a du stock. " W-NEWLINE
                         "Confirmez-vous le changement ? " 
                         INTO ACU-MSG-3
                    PERFORM MSG-ON
                    IF ACU-RETURN-VALUE = 2 EXIT PARAGRAPH
                    END-IF
                    PERFORM MAJ-TRACE-CHGSFA
                 END-IF
              END-IF

              MOVE GRA-MART TO GRA-MFAM
              MOVE FAM-MART TO FAM-MFAM
              READ MXFAMART INVALID KEY
                 IF ILV-MART <> 1
                    MOVE "Sous-famille article non ouverte à la vente"
                      TO ACU-MSG-1
                    PERFORM MSG-INFO
                    MOVE Event-Action-Fail TO Event-Action
                    EXIT PARAGRAPH
                 END-IF
              END-READ
              PERFORM STAT

              IF NAT-MART = 2 AND INO-MART > 0
                 MOVE "Pas de composition sur un article d'occasion" 
                   TO ACU-MSG-1
                 PERFORM MSG-INFO
                 MOVE Event-Action-Fail TO Event-Action
                 EXIT PARAGRAPH
              END-IF
              IF NAT-MART = 2 AND NAT-MGFA <> 9 AND <> 2
                 MOVE "Nature incohérente pour un article d'occasion" 
                 TO ACU-MSG-1
                 MOVE "(Accessoire ou petit matériel uniquement)" 
                 TO ACU-MSG-2
                 PERFORM MSG-INFO
                 MOVE Event-Action-Fail TO Event-Action
                 EXIT PARAGRAPH
              END-IF

              INITIALIZE ENR-MMAR
              IF (NAT-MGFA = 9 AND MAR-MART = SPACES)
              OR (CLI-PALM = 280668 AND GRA-MART < 6 
                  AND MAR-MART = SPACES)   | Spécial Agram (06/2014)
              OR (AUTO-MARBLAN = 2 AND MAR-MART = SPACES)
                 MOVE "Marque obligatoire" TO ACU-MSG-1
                 PERFORM MSG-INFO
                 MOVE Event-Action-Fail TO Event-Action
                 EXIT PARAGRAPH
              END-IF
              IF MAR-MART NOT = SPACES
                 MOVE MAR-MART TO COD-MMAR
                 READ MXMARQUE INVALID 
                    MOVE "Marque inexistante" TO ACU-MSG-1
                    PERFORM MSG-INFO
                    MOVE Event-Action-Fail TO Event-Action
                    EXIT PARAGRAPH
                 END-READ
                 PERFORM STAT
              END-IF

              IF  MARM-MART NOT = SPACES
160608        AND NAT-MGFA = 9
160608        AND IMO-MART = 1
                 MOVE MARM-MART TO COD-MMAR
                 READ MXMARQUE INVALID 
                    IF MARM-MART = ZERO 
                       MOVE SPACE TO MARM-MART
                    ELSE
                       MOVE "Marque Moteur inexistante" TO ACU-MSG-1
                       PERFORM MSG-INFO
                       MOVE Event-Action-Fail TO Event-Action
                       EXIT PARAGRAPH
                    END-IF
                 END-READ
                 PERFORM STAT
              END-IF
220818     END-IF


220818     IF CDFB <> "G" THEN
231111
              IF isICAREFVisible = 1  
              OR IsSOCARTVisible = 1
                 PERFORM Screen1-DaEf-SOC-MART-Ev-Msg-Validate
                 IF SOC-MART = 0 AND AAS-MPAR = 1 AND CLI-PALM <> 851233
                 MOVE "Société d'appartenance obligatoire" TO ACU-MSG-1
                    PERFORM MSG-INFO
                    MOVE Event-Action-Fail TO Event-Action
                    EXIT PARAGRAPH
                 END-IF
              END-IF
231111
311212
              IF isICAREFVisible = 1  
              AND CLI-PALM = 851233
      *        AND SOC-MART > 3
              AND SOC-MART > 4
                 MOVE "Société d'appartenance incorrecte" TO ACU-MSG-1
                 PERFORM MSG-INFO
                 MOVE Event-Action-Fail TO Event-Action
                 EXIT PARAGRAPH
              END-IF
311212
              IF POL-MART < 1 OR > 6
021212        AND IsPvtVisible = 1
130819        AND W-VISU-PFNA = 1 THEN
                 MOVE "Politique de prix incohérente" TO ACU-MSG-1
                 PERFORM MSG-INFO
                 MOVE Event-Action-Fail TO Event-Action
                 EXIT PARAGRAPH
              END-IF
              IF INDARR = 1
021212        AND IsPvtVisible = 1
                 PERFORM VERIF-ARRONDI-PVT
                 IF W-OK = ZERO 
                    MOVE Event-Action-Fail TO Event-Action
                    EXIT PARAGRAPH
                 END-IF
              END-IF
              IF INDARR = 2 AND ISPV-MART NOT = 2 |pas de vérif si saisie prix TTC
021212        AND IsPvtVisible = 1
                 PERFORM VERIF-ARRONDI-TTC
                 IF W-OK = ZERO 
                    MOVE Event-Action-Fail TO Event-Action
                    EXIT PARAGRAPH
                 END-IF
              END-IF
      *   Code remise client (CRC) doit être < 201     
270514*     IF CRC-MART > 200 non ça va de 0 à 199 
      *        MOVE "Code Remise Client: Valeur maxi = 200" TO ACU-MSG-1
270514        IF CRC-MART > 199 
                 MOVE "Code Remise Client: Valeur maxi = 199" 
                   TO ACU-MSG-1
                 PERFORM MSG-INFO
                 MOVE Event-Action-Fail TO Event-Action
                 EXIT PARAGRAPH
              END-IF
      * Vérif et MAJ infos avant écriture / Réécriture
              IF REF-MFAM = 0 OR (CNUF-MFOU = 0 AND CNUD-MPAR = 0)
                 MOVE ZERO TO GCOD-MART
              END-IF
220818     END-IF.
      ***  Vérif GENCOD pas déjà existant
           IF GCOD-MART NOT = 0
              PERFORM DVERIF-GCOD-EXI THRU FVERIF-GCOD-EXI
              IF GCOD-MART3 = GCOD-MART
                 Move "Gencod déjà existant !" TO ACU-MSG-1
                 String "/Article " Delimited by size
                        " " COD-MART3   Delimited by size
                        INTO ACU-MSG-2
                 MOVE "Conserver ce gencod ?" TO ACU-MSG-3
                 PERFORM MSG-ON
                 IF ACU-RETURN-VALUE = 1
                      MOVE Event-Action-Terminate TO Event-Action
                 ELSE MOVE ZERO TO GCOD-MART
                      MOVE Event-Action-Fail TO Event-Action
                      EXIT PARAGRAPH
                 END-IF
              END-IF
           END-IF.

220818     IF CDFB <> "G" THEN

      *--Spécial Agram (06/2014)
              IF (CLI-PALM = 280668 AND GRA-MART < 6 AND RIA-MPAR = 1 
                  AND RFI-MART = SPACES)   
                 MOVE "Référence interne obligatoire" TO ACU-MSG-1
                 PERFORM MSG-INFO
                 MOVE Event-Action-Fail TO Event-Action
                 EXIT PARAGRAPH
              END-IF
              IF (CLI-PALM = 280668 AND GRA-MART < 6 AND 
                 (PTF-MART = ZERO OR PAC-MART = ZERO))   
                 MOVE "Prix Tarif ou P.A obligatoires" TO ACU-MSG-1
                 PERFORM MSG-INFO
                 MOVE Event-Action-Fail TO Event-Action
                 EXIT PARAGRAPH
              END-IF
              IF (    (    (     CLI-PALM = 280668 
                             AND GRA-MART < 6 )
211119                  OR CLI-PALM = 540838 ) | COLVEMAT
                   AND IPO-MFAM = 1 
                   AND POI-MART = ZERO)   
                 MOVE "Poids obligatoire" TO ACU-MSG-1
                 PERFORM MSG-INFO
                 MOVE Event-Action-Fail TO Event-Action
                 EXIT PARAGRAPH
              END-IF
190117
              IF MODU-LANDA = 1
                 MOVE W-STGRA-LANDA TO STGRA-MART
                 MOVE W-STITA-LANDA TO STITA-MART
              END-IF
190117
211119
              IF  CLI-PALM = 540838 | COLVEMAT
              AND PAY-MART = SPACE THEN
                 MOVE "Pays numéro CEE obligatoire" TO ACU-MSG-1
                 PERFORM MSG-INFO
                 MOVE Event-Action-Fail TO Event-Action
                 EXIT PARAGRAPH
              END-IF
211119
220818     END-IF.

           IF CDFB = "C" THEN
      * Eviter les doublons en mode création...
               MOVE ENR-MART TO W-ENR-MART-BUF
               READ MXART NOT INVALID 
                   IF CANN-MART = 1
                      PERFORM MSG-ART-REINTEGRE
                      IF CANN-MART = 0
240112                   MODIFY SCreen1-La-ArtAnnul, visible 0
                         MOVE ENR-MART TO W-ENR-MART-BUF
                      ELSE
                         MOVE W-ENR-MART-BUF TO ENR-MART
                         MOVE Event-Action-Fail TO Event-Action
                         EXIT PARAGRAPH
                      END-IF
                   ELSE
                      Move "Article Déjà existant !" TO ACU-MSG-1
                      PERFORM MSG-INFO
                      MOVE W-ENR-MART-BUF TO ENR-MART
                      MOVE Event-Action-Fail TO Event-Action
                      EXIT PARAGRAPH
                   END-IF
      *             MOVE "382" TO Acu-Msg-Id
      *             PERFORM Acu-Show-Msg
      *             MOVE Event-Action-Fail TO Event-Action
      *             EXIT PARAGRAPH
               END-READ
               PERFORM STAT
               MOVE W-ENR-MART-BUF TO ENR-MART
               MOVE DTT-PALM TO DCR-MART
               MOVE IDE-PALM TO ICR-MART
               | on peut se retrouver en modif si l'article qu'on veut
               | créer existe déjà et qu'on le réintègre
               IF CDFB <> "M"
220818             AND <> "G"
                  WRITE ENR-MART INVALID 
                     MOVE "Ecriture MXART" TO ACU-MSG-2
                     MOVE COD-MART TO ACU-MSG-3 GO ERREUR
                  END-WRITE
                  PERFORM STAT
               ELSE
                  MOVE FUNCTION CURRENT-DATE TO DATHEU-SYS-M
                  MOVE DAT-SYS-M TO DMOD-MART
                  MOVE HEU-SYS-M TO HHMOD-MART
                  MOVE MIN-SYS-M TO MMMOD-MART
                  MOVE IDE-PALM  TO IMOD-MART
                  REWRITE ENR-MART INVALID 
                     MOVE "Réécriture MXART" TO ACU-MSG-2 
                     MOVE COD-MART TO ACU-MSG-3 GO ERREUR
                  END-REWRITE
                  PERFORM STAT
               END-IF
               MOVE GRA-MART TO SV-GRA
               MOVE FAM-MART TO SV-FAM
               MOVE FOU-MART TO SV-FOU
               MOVE MAR-MART TO SV-MAR
           ELSE
              IF W-ENR-MART-Original NOT = ENR-MART
              AND CDFB <> "Z" THEN
                  MOVE FUNCTION CURRENT-DATE TO DATHEU-SYS-M
                  MOVE DAT-SYS-M TO DMOD-MART
                  MOVE HEU-SYS-M TO HHMOD-MART
                  MOVE MIN-SYS-M TO MMMOD-MART
                  MOVE IDE-PALM  TO IMOD-MART
              END-IF
              REWRITE ENR-MART INVALID MOVE "Réécriture MXART"
                 TO ACU-MSG-2 MOVE COD-MART TO ACU-MSG-3 GO ERREUR
              END-REWRITE
              PERFORM STAT
              IF DES-MART <> DES-MART2 THEN
                 PERFORM MAJ-EDITAR THRU F-MAJ-EDITAR
              END-IF
280918
           END-IF


           MOVE COD-MART TO Id-Fiche-Courante
           MOVE 0 TO W-RFI

           .
       READ-MXZSPSOC-LOCK.

       MAJ-MXZSPSOC.

       Screen1-Cm-CUA-MART-Refresh.
           COPY "W:/mx/copy/Cm-MTUN.cbl"
                REPLACING ==DCN-COMBO== BY ==Screen1-Cm-CUA-MART==.
           .
       Screen1-Cm-CUV-MART-Refresh.
           COPY "W:/mx/copy/Cm-MTUN.cbl"
                REPLACING ==DCN-COMBO== BY ==Screen1-Cm-CUV-MART==.
           .
       Screen1-Cm-POL-MART-Refresh.
           COPY "W:/mx/copy/Cm-MART-POL.cbl"
                REPLACING ==DCN-COMBO== BY ==Screen1-Cm-POL-MART==.
           .
       Screen1-Cm-INO-MART-Refresh.
           COPY "W:/mx/copy/Cm-MART-INO.cbl"
                REPLACING ==DCN-COMBO== BY ==Screen1-Cm-INO-MART==.
           .
       MEP-TARCOL-RTG.
      * Tmp-9-3 = rang des données de la ligne à traiter (dans l'occurs)

           MOVE Tmp-9-3 TO Screen1-DaGd-RTG-BUF-1
           If Tmp-9-3 = 1 OR BSU-MART(Tmp-9-3) = 0 THEN
             MOVE 0 TO Screen1-DaGd-RTG-BUF-2
           ELSE
             COMPUTE Screen1-DaGd-RTG-BUF-2 = BSU-MART(Tmp-9-3 - 1 ) + 1
           END-IF
           MOVE BSU-MART(Tmp-9-3) TO Screen1-DaGd-RTG-BUF-3
           MOVE RTG-MART(Tmp-9-3) TO Screen1-DaGd-RTG-BUF-4
           MOVE 0 TO W-PVT-L W-DIF-L W-MAR-L
           IF NOT RTG-MART(Tmp-9-3) = ZEROES 
           OR NOT BSU-MART(Tmp-9-3) = ZEROES 
               COMPUTE W-PVT-L ROUNDED =
                       (PVT-MART - (PVT-MART * RTG-MART(Tmp-9-3) / 100))
               PERFORM Calcule-Marge-Ligne
           END-IF
           MOVE W-PVT-L TO Screen1-DaGd-RTG-BUF-5
           MOVE W-DIF-L TO Screen1-DaGd-RTG-BUF-6
           MOVE W-MAR-L TO Screen1-DaGd-RTG-BUF-7
           .
       MEP-TARCOL-PVN.
      * Tmp-9-3 = rang des données de la ligne à traiter (dans l'occurs)

           MOVE Tmp-9-3 TO Screen1-DaGd-PVN-BUF-1
           If Tmp-9-3 = 1 OR BSU-MART(Tmp-9-3) = 0 THEN
             MOVE 0 TO Screen1-DaGd-PVN-BUF-2
           ELSE
             COMPUTE Screen1-DaGd-PVN-BUF-2 = BSU-MART(Tmp-9-3 - 1 ) + 1
           END-IF
           MOVE BSU-MART(Tmp-9-3) TO Screen1-DaGd-PVN-BUF-3
           MOVE PVN-MART(Tmp-9-3) TO Screen1-DaGd-PVN-BUF-4
           MOVE 0 TO W-DIF-L W-MAR-L
           IF NOT PVN-MART(Tmp-9-3) = ZEROES THEN
               MOVE PVN-MART(Tmp-9-3) TO W-PVT-L
               PERFORM Calcule-Marge-Ligne
           END-IF
           MOVE W-DIF-L TO Screen1-DaGd-PVN-BUF-5


           MOVE W-MAR-L TO Screen1-DaGd-PVN-BUF-6
           .
       Calcule-Marge-Ligne.
      * Attend le prix de vente dans W-PVT-L
      * Retourne Marge + % Marge brute dans W-DIF-L et W-MAR-L

           MOVE ZEROES TO W-DIF-L W-MAR-L
           IF MCM-MPAR = 0 THEN
               COMPUTE W-DIF-L ROUNDED =
                       W-PVT-L - (PAMP-MASA + FUA-MART)
           END-IF
           IF MCM-MPAR = 1 THEN
               COMPUTE W-DIF-L ROUNDED = (W-PVT-L - PAMP-MASA)
           END-IF
           IF MCM-MPAR = 3 THEN
               COMPUTE W-DIF-L ROUNDED = (W-PVT-L - PRMP-MASA)
           END-IF
           IF (MCM-MPAR = 2 OR W-DIF-L = W-PVT-L) AND
              (NOT NUU-MART = 0) THEN
               COMPUTE W-DIF-L ROUNDED =
                          (W-PVT-L - ((PAC-MART / NUU-MART) + FUA-MART))
           END-IF
      * Pour Chapin 14/12/2007 car pas le même calcul que dans cal-marge
      *     IF (POL-MART = 5) AND (NOT NUU-MART = 0) THEN
      *         COMPUTE W-PR ROUNDED = (PAC-MART * CPR-MART)
      *         COMPUTE W-DIF-L ROUNDED = (W-PVT-L - (W-PR / NUU-MART))
      *     END-IF
           IF NOT W-PVT-L = 0 THEN
               COMPUTE W-MAR-L ROUNDED = (W-DIF-L / W-PVT-L * 100)
           END-IF
           .
       CAL-COD-MART.
      *  Si numérotation Automatique
           IF COA-MPAR = 1
              IF W-NUMD = 0 PERFORM INCREM-DNO-MART END-IF
              MOVE W-NUMD TO CO2-MART
              GO F-CAL-COD-MART
           END-IF.
020410     MOVE REF-MART TO SVC-REF
020410     MOVE FUNCTION UPPER-CASE(SVC-REF) TO REF-MART 
           MOVE SPACES TO CO2-MART
           MOVE 0 TO I J K.
       TEST-REF.
           ADD 1 TO I IF I > 21 GO TEST-REF1.
           IF (REF-MART(I:1) >= "0") AND (REF-MART(I:1) <= "9") THEN
               GO TEST-REF0.
           IF (REF-MART(I:1) >= "A") AND (REF-MART(I:1) <= "Z") THEN
               ADD 1 TO J
               GO TEST-REF0. 
071210     IF CLI-PALM = 290182 AND FOU-MART = 7000         | Si SOFEMAT et si fournisseur=Volvo, on garde le tiret
              AND REF-MART(I:1) = "-" GO TEST-REF0.

           IF REF-MART(I:1) = " " OR REF-MART(I:1) = "!" OR
              REF-MART(I:1) = "(" OR REF-MART(I:1) = ")" OR
              REF-MART(I:1) = "*" OR REF-MART(I:1) = "+" OR
              REF-MART(I:1) = "," OR REF-MART(I:1) = "-" OR
              REF-MART(I:1) = ";" OR REF-MART(I:1) = "." OR
              REF-MART(I:1) = "/" OR REF-MART(I:1) = ":" OR
              REF-MART(I:1) = "%" OR REF-MART(I:1) = """" OR
              REF-MART(I:1) = "_" THEN
               GO TEST-REF.
           GO ERR-REF.
       TEST-REF0.
021009     IF CLI-PALM = 290182 AND FOU-MART = 7000         | Si SOFEMAT et si fournisseur=Volvo:
071210        IF I < 3 GO TEST-REF END-IF                   |   --> On ne prend pas en compte les 2 premiers caractères
021009        IF CO2-MART = SPACES AND REF-MART(I:1) = "0"  |   --> on supprime les 0 non significatifs sur le code article
                 GO TEST-REF.         
           ADD 1 TO K IF K > 16 THEN GO ERR-REF.
           MOVE REF-MART(I:1) TO CO2-MART(K:1) GO TEST-REF.
       TEST-REF1.
           IF J > 16 GO ERR-REF.
           IF K > 15 GO TEST-REF3.
       TEST-REF2.
           ADD 1 TO K MOVE SPACES TO CO2-MART(K:1)
           IF K > 15 GO TEST-REF3.
           GO TEST-REF2.
       TEST-REF3.
      *    IF W-ART = SPACES GO ERR-REF.
      *    IF COA-PAR NOT= 1 AND REF-FAM = 1 AND CNUF-FOU NOT= 0
      *    AND IND-GENCOD = 1
      *         MOVE XR-ART6 TO REF-ART
      *    ELSE MOVE W-REF TO REF-ART.
      *    DISPLAY A-IDF AT 0559
       ERR-REF.
040719* F-CAL-COD-MART.  mis plus bas car si numérotation automatique ça mettait le message "Majuscules obligatoire"
071016* ajout message et modif pour garder la référence en majscules (NC/VO)
      *     MOVE SVC-REF TO REF-MART
           IF SVC-REF <> REF-MART
              move
              "Attention! Majuscules obligatoires sur la référence."
              to acu-msg-1
              perform msg-info
           end-if
           .
071016
040719 F-CAL-COD-MART.
           .
       Calcule-Fiche.
           MOVE PAC-MART TO SV-PAC        
           PERFORM RECH-TABCOE THRU F-RECH-TABCOE
           PERFORM Calcule-PVT
           
           IF  SV-PAC = 0
           AND PAC-MART <> 0 
           AND ( CDFB = "C"
                     OR "Z" ) THEN
      *       PAC n'était pas calculé -> la recherche du coeff marchait pas
              PERFORM RECH-TABCOE THRU F-RECH-TABCOE
              PERFORM Calcule-PVT
           END-IF
      
           PERFORM Calcule-TTC
           PERFORM Calcule-Marge
      *     IF NUU-MART = 0 THEN
      *         MOVE 0 TO W-PTFSurUV
      *     ELSE
      *         COMPUTE W-PTFSurUV = PTF-MART / NUU-MART
      *     END-IF
           IF  CDFB = "M"
           AND DAT-MART <> DTT-PALM 
           AND (    POL-MART <> POL-MART2
                 OR PAC-MART <> PAC-MART2 
                 OR PTF-MART <> PTF-MART2
                 OR REM-MART <> REM-MART2
                 OR CPR-MART <> CPR-MART2
                 OR TXM-MART <> TXM-MART2
                 OR PAT-MART <> PAT-MART2
                 OR PVT-MART <> PVT-MART2
                 OR COE-MART <> COE-MART2
                 OR CRF-MART <> CRF-MART2
                 OR IFA-MART <> IFA-MART2
                 OR PFA-MART <> PFA-MART2
                 OR FUA-MART <> FUA-MART2
                 OR CFU-MART <> CFU-MART2 ) THEN
              MOVE "Actualisation de la date tarif à la date du jour ?"
                TO ACU-Msg-1
              PERFORM Msg-ON
              IF ACU-Return-Value = 1 THEN
                 MOVE DTT-PALM TO DAT-MART
                 COPY "W:/mistral/copy/Ef-Date10-Fic2Ecr.cbl"
                    REPLACING ==CPYDAT-FIC== BY ==DAT-MART==
                              ==CPYDAT-ECR== BY ==W-DAT-MART==.
                 MODIFY Screen1-Ef-DAT-MART, VALUE = W-DAT-MART
              END-IF
      *       Pour ne plus avoir le message jusqu'à la prochaine modif
              MOVE ENR-MART TO ENR-MART2
280918        MOVE 1 TO W-ACTU-DT
           END-IF
      
           .
       Calcule-PVT.
           IF CDFB NOT = "C" AND NOT = "M" AND NOT = "Z"
               IF POL-MART = 5 
                  COMPUTE W-PR ROUNDED = (PAC-MART * CPR-MART)
               END-IF
               PERFORM Calcule-FAV 
               EXIT PARAGRAPH
           END-IF
           IF DEV-MFOU NOT = SPACES AND DEV-MFOU NOT = DEV-MPAR
              MOVE CRS-MFOU TO WCE-CRS
              MOVE PDE-MART TO WCE-MAC
              PERFORM INVERSMX-D-I
              
              IF POL-MART = 4 THEN
                 MOVE WCE-MCO TO PAC-MART
              ELSE
      
                 MOVE WCE-MCO TO PTF-MART
              END-IF
           END-IF
           IF POL-MART NOT = 5 MOVE 0 TO CPR-MART TXM-MART W-PR
           END-IF
           IF NOT POL-MART = 6 MOVE 0 TO PAT-MART
           END-IF
           IF (INO-MART = 1) OR (INO-MART = 2) THEN
               MOVE 0 TO PDE-MART
               IF NOT POL-MART = 3 MOVE 0 TO REM-MART
               END-IF
           END-IF
           EVALUATE POL-MART
               WHEN 1
                   PERFORM Calcule-PA
                   PERFORM Calcule-FUA
                   PERFORM Calcule-FAV
                   IF ISPV-MART = 0
                   AND NOT NUU-MART = 0 THEN
                       COMPUTE PVT-MART ROUNDED =
                    ((PAC-MART / NUU-MART) * COE-MART) + W-FraisApproche
                   END-IF
                   PERFORM Arrondi-PVT
                   IF ISPV-MART NOT = 0 | PV saisi, recalcul coef
                   AND (NOT NUU-MART = 0) AND (NOT PAC-MART = 0) THEN
                       COMPUTE COE-MART ROUNDED =
                                      (PVT-MART / (PAC-MART / NUU-MART))
                   END-IF
               WHEN 2
                   PERFORM Calcule-PA
                   PERFORM Calcule-FUA
                   PERFORM Calcule-FAV
                   IF ISPV-MART = 0
                   AND NOT NUU-MART = 0 THEN
                       COMPUTE PVT-MART ROUNDED =
                  (((PTF-MART / NUU-MART) * COE-MART) + W-FraisApproche)
                   END-IF
                   PERFORM Arrondi-PVT
                   IF ISPV-MART NOT = 0 | PV saisi, recalcul coef
                   AND (NOT NUU-MART = 0) AND (NOT PTF-MART = 0) THEN
                       COMPUTE COE-MART ROUNDED =
                                      (PVT-MART / (PTF-MART / NUU-MART))
                   END-IF
               WHEN 3
                   PERFORM Calcule-PA
                   PERFORM Calcule-FUA
                   PERFORM Calcule-FAV
                   IF (NOT NUU-MART = 0) AND (NOT PAC-MART = 0) THEN
                       COMPUTE COE-MART ROUNDED =
                                      (PVT-MART / (PAC-MART / NUU-MART))
                   END-IF
               WHEN 4
      *             PERFORM Calcule-PA
                   MOVE PAC-MART TO PTF-MART
                   MOVE ZERO     TO CRF-MART REM-MART
                   PERFORM Calcule-FUA
                   PERFORM Calcule-FAV
                   IF (NOT NUU-MART = 0) AND (NOT PAC-MART = 0) THEN
                       COMPUTE COE-MART ROUNDED =
                                      (PVT-MART / (PAC-MART / NUU-MART))
                   END-IF
               WHEN 5
                   MOVE ZERO TO COE-MART IFA-MART PFA-MART FUA-MART
                                CFU-MART
                   PERFORM Calcule-PA
                   COMPUTE W-PR ROUNDED = (PAC-MART * CPR-MART)
                   IF (NOT NUU-MART = 0) AND (NOT TXM-MART = 100) THEN
                       COMPUTE PVT-MART ROUNDED =
                              (W-PR / NUU-MART) / (1 - (TXM-MART / 100))
                   END-IF
                   PERFORM Arrondi-PVT
               WHEN 6
                   PERFORM Calcule-PA
                   PERFORM Calcule-FUA
                   PERFORM Calcule-FAV
                   IF NOT NUU-MART = 0 THEN
                       COMPUTE PVT-MART ROUNDED =
                  (((PTF-MART / NUU-MART) * COE-MART) + W-FraisApproche)
                   END-IF
                   PERFORM Arrondi-PVT
           END-EVALUATE
           .
       Calcule-PA.
           IF CDFB NOT = "C" AND NOT = "M" AND NOT = "Z"
               EXIT PARAGRAPH
           END-IF

           IF GRI-MFOU = 1 THEN
               PERFORM Calcule-PA-Grille
           ELSE
               IF POL-MART = 6 THEN
                   COMPUTE W-REM ROUNDED = PAT-MART * REM-MART / 100
               ELSE
                   COMPUTE W-REM ROUNDED = PTF-MART * REM-MART / 100
               END-IF
           END-IF
           IF POL-MART = 6 THEN
               COMPUTE PAC-MART = PAT-MART - W-REM
               IF DEV-MART NOT = SPACES THEN
                      MOVE CRS-MFOU TO WCE-CRS
                      MOVE PAC-MART TO WCE-MAC
                      MOVE DEV-MART TO WCE-DEV
                      PERFORM INVERSMX-D-I
                      MOVE WCE-MCO TO PAC-MART
               END-IF
           ELSE
               COMPUTE PAC-MART = PTF-MART - W-REM
           END-IF
           .
      *  Calcule Taux de Remise si Grille Remise Frn
       Calcule-PA-Grille.
           .
       Calcule-FUA.
           IF CDFB NOT = "C" AND NOT = "M" AND NOT = "Z"
               EXIT PARAGRAPH
           END-IF

           MOVE ZERO TO W-FUA
           EVALUATE IFA-MART
               WHEN 1
                   MOVE FUA-MART TO W-FUA
               WHEN 2
                   IF NOT NUU-MART = 0 THEN
                       COMPUTE W-FUA ROUNDED =
                                ((PAC-MART / NUU-MART) * PFA-MART / 100)
                   END-IF
           END-EVALUATE
           IF (CDFB = "C" OR "Z") OR (CDFB = "M") THEN
               MOVE W-FUA TO FUA-MART
           END-IF
           .
       Calcule-FAV.
           COMPUTE W-FraisApproche ROUNDED = FUA-MART * CFU-MART
           .
       Arrondi-PVT.
           IF CDFB NOT = "C" AND NOT = "M" AND NOT = "Z"
               EXIT PARAGRAPH
           END-IF

           IF INDARR = 1 THEN
               MOVE PVT-MART TO PRIARR
               MOVE TVA-MFAM TO TVAARR
               PERFORM D-CALCUL-ARRONDI THRU F-CALCUL-ARRONDI
               MOVE PRIARR TO PVT-MART
           END-IF
           .
       Calcule-TTC.
           MOVE PVT-MART TO W-TTC
           MOVE ZERO TO W-MontantTVA
           IF NOT TVA-MFAM = ZERO THEN
              IF ISPV-MART = 2 MOVE TTC-MART TO W-TTC
              ELSE COMPUTE W-TTC ROUNDED =
                   PVT-MART + ( PVT-MART * TVA-MPAR(TVA-MFAM) / 100)
              END-IF
           END-IF
           IF INDARR = 2 AND ISPV-MART NOT = 2
               MOVE PVT-MART TO PRIARR
               MOVE TVA-MFAM TO TVAARR
               PERFORM D-CALCUL-ARRONDI THRU F-CALCUL-ARRONDI
               MOVE TTCARR TO W-TTC
300413         IF (CDFB = "C" OR "Z") OR (CDFB = "M") THEN
                   MOVE PRIARR TO PVT-MART
               END-IF
           END-IF
           COMPUTE W-MontantTVA ROUNDED = W-TTC - PVT-MART
           IF NOT TVA-MFAM = ZERO THEN
               IF RCT-MPAR(TVA-MFAM) = 1 THEN
                   COMPUTE W-MontantTVA ROUNDED =
                                     PVT-MART * TVA-MPAR(TVA-MFAM) / 100
                   MOVE PVT-MART TO W-TTC
               END-IF
           END-IF

           IF (CDFB = "C" OR "Z") OR (CDFB = "M") THEN
               MOVE W-TTC TO TTC-MART
           END-IF
           .
       Calcule-Marge.
           MOVE ZEROES TO W-MargeUnit W-MargeBrute W-PR-3
           EVALUATE MCM-MPAR
               WHEN 0
                   COMPUTE W-PR-3 ROUNDED = PAMP-MASA + FUA-MART
                   IF PAMP-MASA = ZERO MOVE ZERO TO W-PR-3 END-IF
               WHEN 1
                   MOVE PAMP-MASA TO W-PR-3
               WHEN 3
                   MOVE PRMP-MASA TO W-PR-3
           END-EVALUATE
           COMPUTE W-MargeUnit ROUNDED = PVT-MART - W-PR-3
           IF (MCM-MPAR = 2 OR W-PR-3 = 0) AND (NOT NUU-MART = 0) THEN
               COMPUTE W-MargeUnit ROUNDED =
                         (PVT-MART - ((PAC-MART / NUU-MART) + FUA-MART))
           END-IF
      * Pour Chapin 14/12/2007 car pas le même calcul que dans cal-marge
      *     IF (POL-MART = 5) AND (NOT NUU-MART = 0) THEN
      *         COMPUTE W-PR ROUNDED = (PAC-MART * CPR-MART)
      *         COMPUTE W-MargeUnit ROUNDED =
      *                 (PVT-MART - (W-PR / NUU-MART))
      *     END-IF
           IF NOT PVT-MART = 0 THEN
               COMPUTE W-MargeBrute ROUNDED =
                       (W-MargeUnit / PVT-MART * 100)
           END-IF

           .
       Screen1-AfterCreate.
070819*     PERFORM MisCentreFenetreScreen1
      * Déplace la frame des caractéristiques moteur...
           MODIFY Screen1-La-Moteur, LINE 31,90
           MODIFY Screen1-Fr-Moteur, LINE 31,90
           MOVE 33,41 TO W-LINE-MOT1
           MOVE 34,95 TO W-LINE-MOT2

           MODIFY Screen1-La-Tarif, LINE 31,08
           MOVE 32,92 TO W-LINE-RTG
           MOVE 52,57 TO W-COL-RTG


              if IsSOCARTVisible = 1   
                 inquire Screen1-La-Fou-MART, line w-line
                 MOVE "Soc.App." TO W-TIT-SOCART
                 modify Screen1-La-SOC-MART, line w-line, column 58
                 inquire Screen1-DaEf-FOU-MART , line w-line
                 modify Screen1-DaEf-SOC-MART, line w-line, column 65
                 modify Screen1-DaEf-NOMSOC-MART, line w-line, column 72
              end-if
           .
       Screen1-AfterInitData.
030419     
           IF LK-ART-C-LINE NOT = ZERO
      *       initialiser INIT-COLUMN ne marche pas en multi écran
              MODIFY Screen1-Handle,   
                 SCREEN LINE   LK-ART-C-LINE
                 SCREEN COLUMN LK-ART-C-COLUMN 
           END-IF
030419
           MOVE DTT-PALM TO D-SAMJ PERFORM CONVDAT-SAMJ-JMSA

      * Initialise la combo du mode de recherche...
           MODIFY Screen1-Cm-ModeRecherche, MASS-UPDATE = 1,
                                            RESET-LIST = 1
           MOVE "Code Article" TO Screen1-Cm-ModeRecherche-LIB
                                 Screen1-Cm-ModeRecherche-Premiere-Ligne
           MODIFY Screen1-Cm-ModeRecherche,
                  ITEM-TO-ADD = Screen1-Cm-ModeRecherche-Container-Item
           MOVE "Désignation" TO Screen1-Cm-ModeRecherche-LIB
      *     MOVE 1 TO Screen1-Cm-ModeRecherche-NUM
           MODIFY Screen1-Cm-ModeRecherche,
                  ITEM-TO-ADD = Screen1-Cm-ModeRecherche-Container-Item
           MOVE "Famille+Sous-Famille" TO Screen1-Cm-ModeRecherche-LIB
      *     MOVE 2 TO Screen1-Cm-ModeRecherche-NUM
           MODIFY Screen1-Cm-ModeRecherche,
                  ITEM-TO-ADD = Screen1-Cm-ModeRecherche-Container-Item
           MOVE "Fournisseur+Référence" TO Screen1-Cm-ModeRecherche-LIB
      *     MOVE 5 TO Screen1-Cm-ModeRecherche-NUM
           MODIFY Screen1-Cm-ModeRecherche,
                  ITEM-TO-ADD = Screen1-Cm-ModeRecherche-Container-Item
           MOVE "Référence Normalisée" TO Screen1-Cm-ModeRecherche-LIB
      *     MOVE 3 TO Screen1-Cm-ModeRecherche-NUM
           MODIFY Screen1-Cm-ModeRecherche,
                  ITEM-TO-ADD = Screen1-Cm-ModeRecherche-Container-Item
           IF NOT RIA-MPAR = 0 THEN
              MOVE "Référence Interne" TO Screen1-Cm-ModeRecherche-LIB
      *        MOVE 4 TO Screen1-Cm-ModeRecherche-NUM
              MODIFY Screen1-Cm-ModeRecherche,
                  ITEM-TO-ADD = Screen1-Cm-ModeRecherche-Container-Item
           END-IF
           MODIFY Screen1-Cm-ModeRecherche,
                  VALUE = Screen1-Cm-ModeRecherche-Premiere-Ligne,
                  MASS-UPDATE = 0
      * Initialisation Combo / Indicateur FUA
           MODIFY Screen1-Cm-IFA-MART, MASS-UPDATE = 1, RESET-LIST = 1
           MOVE "Sans                     0" TO W-Cm-IFA-MART(1)
           MOVE "Montant                  1" TO W-Cm-IFA-MART(2)
           MOVE "% / P.A                  2" TO W-Cm-IFA-MART(3)
           modify Screen1-Cm-IFA-MART, ITEM-TO-ADD W-Cm-IFA-MART(1)
           modify Screen1-Cm-IFA-MART, ITEM-TO-ADD W-Cm-IFA-MART(2)
           modify Screen1-Cm-IFA-MART, ITEM-TO-ADD W-Cm-IFA-MART(3)
           MODIFY Screen1-Cm-IFA-MART, MASS-UPDATE = 0
           
      * Pour se caler sur le code demandé, ou le prochain valide...
           MOVE 1 TO W-NUM-KEY-MXART2
           IF SCA-MPAR = 2 MOVE 5 TO W-NUM-KEY-MXART2
           END-IF
           INITIALIZE ENR-MART2 Id-Fiche-Courante
280918     MOVE 0 TO W-ACTU-DT
           IF  ( LK-ART-C-CALL = 1 
                              OR 2 ) 
           AND LK-ART-C-COD NOT = SPACES
           AND LK-ART-C-CHO <> "C" THEN
              MOVE LK-ART-C-COD TO COD-MART2 Id-Fiche-Courante
           END-IF
           MOVE 0 TO A-EOF
           IF SCA-MPAR = 1 THEN
              MOVE 1 TO W-NUM-KEY-MXART2     
              START MXART2 KEY >= CLE1-MART2 |Code article Avec IDF
              INVALID 
                 MOVE 1 TO A-EOF
              END-START
           ELSE
              MOVE 5 TO W-NUM-KEY-MXART2 |Code article Sans IDF
              START MXART2 KEY >= CLE5-MART2 |Code article Avec IDF
              INVALID 
                 MOVE 1 TO A-EOF
              END-START
           END-IF
           PERFORM STAT

           PERFORM Mode-Interrogation

           IF  ( LK-ART-C-CALL = 1 
                              OR 2 ) 
           AND LK-ART-C-COD NOT = SPACES THEN
              IF LK-ART-C-CHO <> "C" THEN    
                 PERFORM READ-MXART
                 PERFORM START-MXART2
                 PERFORM UNTIL A-EOF = 1
                      OR COD-MART2 = LK-ART-C-COD
                    READ MXART2 NEXT AT END
                       MOVE 1 TO A-EOF
                    END-READ
                    PERFORM STAT
                    PERFORM READ-MXARTLOC
                 END-PERFORM
                 IF A-EOF = 0
                    MOVE COD-MART2 TO Id-Fiche-Courante
                    MOVE ENR-MART2 TO ENR-MART W-ENR-MART-Original
                    PERFORM READ-MXART
                 END-IF
              ELSE
      *          Création article divers
                 MOVE 0 TO W-MODE-DUP
                 PERFORM Mode-Creation                 
                 MOVE LK-ART-C-COD(1:2) TO GRA-MART
                 MOVE LK-ART-C-COD(3:2) TO FAM-MART
                 MOVE LK-ART-C-REF      TO CO2-MART
                                           REF-MART
                 PERFORM CAL-COD-MART THRU F-CAL-COD-MART
                 MOVE LK-ART-C-FOU      TO FOU-MART COD-MFOU
                 MOVE LK-ART-C-PDE      TO PDE-MART
                 MOVE LK-ART-C-PTF      TO PTF-MART
                 MOVE LK-ART-C-REM      TO REM-MART
                 MOVE LK-ART-C-PAC      TO PAC-MART
                 MOVE LK-ART-C-DES      TO DES-MART
                 READ MXFOU END-READ 
                 PERFORM STAT
060519           IF POP-MFOU = 6 
                    MOVE LK-ART-C-PAC TO PAT-MART
                    MOVE ZERO TO PAC-MART
060519           END-IF
                 PERFORM READ-ZSP-FOU
                 MOVE POP-MFOU TO POL-MART
                 IF DES-MART = SPACES AND PTF-MART = ZERO 
                    PERFORM TEST-CATALOGUE THRU F-TEST-CATALOGUE
                    MOVE REF-MART TO SV-REF
                 END-IF
020919           IF GRI-MFOU = 1
251019*              MOVE LK-ART-C-REM TO CRF-MART Pb 426828 DACHARD ça remettait à 0 le CRF précédemment calculé par ART-C en cas d'appel par CFA (la modif était pour PDF-C / BEPCO)
251019              
                    ACCEPT NUMVAL-ENT FROM ENVIRONMENT "LK-ART-C-CRF" 

                    IF NUMVAL-ENT <> SPACE THEN
                       PERFORM NUMVAL 
                       MOVE NUMVAL-SOR TO CRF-MART 
                    END-IF
251019
020919           END-IF
200819           IF W-POI-MCTF = ZERO
030619              ACCEPT NUMVAL-ENT FROM ENVIRONMENT "LK-ART-C-POI"
                    PERFORM NUMVAL 
                    MULTIPLY NUMVAL-SOR BY 1000 GIVING W-POI-MCTF
                 END-IF
200819           IF TVA-MART = SPACES 
030619               ACCEPT TVA-MART  FROM ENVIRONMENT "LK-ART-C-TVA"
                 END-IF
                 PERFORM MEP-INFO-FAM
                 MOVE 39 TO CONTROL-ID
                 MOVE 4  TO ACCEPT-CONTROL
              END-IF   
           ELSE                 
              MOVE 185 TO CONTROL-ID
              MOVE 4  TO ACCEPT-CONTROL
           END-IF
           MODIFY Screen1-Handle, VISIBLE 1
           PERFORM Affiche-Detail
050215*    Fait clignoter des champs
      *     PERFORM IN THREAD
      *        HANDLE IN Clignote-Handle
      *        UNTIL 1 = 2
      **       Attend une seconde
      *        CALL "C$SLEEP" USING 1
      *        PERFORM Clignote
      *     END-PERFORM
050215

           .
       Screen1-Pb-Previous-LinkTo.
           inquire Screen1-Pb-Previous, visible in w-vs-pb
           if w-vs-pb = 0 exit paragraph
           end-if
           if neuf-int = 0 and occas-int = 0 exit paragraph
           end-if
           IF Id-Fiche-Courante = SPACES EXIT PARAGRAPH.
           PERFORM Test-Sauvegarde-Voulue
           IF NOT Event-Action = Event-Action-Fail THEN
               MOVE 0 TO A-EOF
               PERFORM UNTIL 
                  (A-EOF = 1)
               OR ( ( (CANN-MART2 = 0 
240112                 AND Cpte-Supprime = 0 )
240112                OR Cpte-Supprime = 1 ) 
                    AND ( ((ILV-MART2 = 0 OR 2) AND W-ACTIV = 1) 
                       OR ((ILV-MART2 = 1 OR 2) AND INO-MART2 = 0 
                           AND W-ACTIV = 2))
                           AND  (((NAT-MART2 = 0 OR 1) AND NEUF-INT = 1) 
                         OR (NAT-MART2 = 2 AND OCCAS-INT = 1))
                           AND (COD-MART2 NOT = Id-Fiche-Courante))
                   READ MXART2 PREVIOUS END MOVE 1 TO A-EOF END-READ
                   PERFORM STAT
                   PERFORM READ-MXARTLOC
               END-PERFORM
               IF A-EOF = 0 THEN
                   MOVE COD-MART2 TO Id-Fiche-Courante
                   MOVE ENR-MART2 TO ENR-MART W-ENR-MART-Original
                   PERFORM LECT-MEP-ZSP
               ELSE
                   MOVE "383" TO Acu-Msg-Id
                   PERFORM Acu-Show-Msg
                   perform START-MXART2
               END-IF
               PERFORM Mode-Interrogation
           END-IF
           PERFORM Init-Soc
           MOVE SPACE TO LK-SCODART-L-ART
           PERFORM Affiche-Detail
           .
       Screen1-Pb-Next-LinkTo.
           inquire Screen1-Pb-Next, visible in w-vs-pb
           if w-vs-pb = 0 exit paragraph
           end-if
           if neuf-int = 0 and occas-int = 0 exit paragraph
           end-if
           PERFORM Test-Sauvegarde-Voulue
           IF NOT Event-Action = Event-Action-Fail THEN
               PERFORM UNTIL (A-EOF = 1)
                          OR ( ( (CANN-MART2 = 0 
240112                            AND Cpte-Supprime = 0 )
240112                           OR Cpte-Supprime = 1 ) 
                    AND ( ((ILV-MART2 = 0 OR 2) AND W-ACTIV = 1) 
                       OR ((ILV-MART2 = 1 OR 2) AND INO-MART2 = 0 
                           AND W-ACTIV = 2))
                           AND  (((NAT-MART2 = 0 OR 1) AND NEUF-INT = 1) 
                         OR (NAT-MART2 = 2 AND OCCAS-INT = 1))
                           AND (COD-MART2 NOT = Id-Fiche-Courante))
                   READ MXART2 NEXT END MOVE 1 TO A-EOF END-READ
                   PERFORM STAT
                   PERFORM READ-MXARTLOC
               END-PERFORM
               IF A-EOF = 0 THEN
                   MOVE COD-MART2 TO Id-Fiche-Courante
                   MOVE ENR-MART2 TO ENR-MART W-ENR-MART-Original
                   PERFORM LECT-MEP-ZSP
               ELSE
                   MOVE "384" TO Acu-Msg-Id
                   PERFORM Acu-Show-Msg
                   perform START-MXART2
               END-IF

               PERFORM Mode-Interrogation
           END-IF
           PERFORM Init-Soc
           MOVE SPACE TO LK-SCODART-L-ART
           PERFORM Affiche-Detail
           .
       Screen1-Pb-Refresh-LinkTo.
           inquire Screen1-Pb-Refresh, visible in w-vs-pb
           if w-vs-pb = 0 exit paragraph
           end-if
280918     MOVE 0 TO W-ACTU-DT
           IF Id-Fiche-Courante = SPACES
              IF IsCreating = 1 
                 PERFORM Mode-Interrogation
                 MOVE SPACES TO ENR-MART
                 MOVE SPACE TO LK-SCODART-L-ART
                 IF COA-MPAR = 1 PERFORM DECREM-DNO-MART 
                 END-IF
                 IF RFIA-MPAR = 1 THEN
      *             Numérotation automatique de la Référence Interne
                    PERFORM DECREM-RFI-MART
                 END-IF
                 PERFORM Affiche-Detail
              END-IF  
              EXIT PARAGRAPH
           END-IF
      *  Effaçage écran à la demande
           IF CDFB = "I"              
              MOVE SPACES TO ENR-MART Id-Fiche-Courante
              PERFORM Init-Soc
              PERFORM Affiche-Detail
              if sca-mpar = 1 move 184 to control-id
                         else move 185 to control-id
              end-if
              move 4 to accept-control
              EXIT PARAGRAPH
           END-IF

           IF IsCreating NOT = 1
              PERFORM Test-Sauvegarde-Voulue
           END-IF
           IF CDFB = "C" AND Event-Action = 0 
              IF COA-MPAR = 1
                 PERFORM DECREM-DNO-MART
              END-IF
              IF RFIA-MPAR = 1 THEN
      *          Numérotation automatique de la Référence Interne
                 PERFORM DECREM-RFI-MART
              END-IF
           END-IF.

           IF  CDFB = "C"
           AND Event-Action = 0 THEN
              PERFORM Mode-Interrogation
              MOVE SPACES TO ENR-MART
                             LK-SCODART-L-ART
                             ENR-MART2
              PERFORM Init-Soc
              PERFORM Affiche-Detail
              EXIT PARAGRAPH
           END-IF
           IF Event-Action NOT = Event-Action-Fail THEN
               PERFORM Mode-Interrogation
               PERFORM READ-MXART
           END-IF
           PERFORM Init-Soc
           MOVE SPACE TO LK-SCODART-L-ART
           PERFORM Affiche-Detail
           .
       Screen1-Pb-Modify-LinkTo.
           inquire Screen1-Pb-Modify, visible in w-vs-pb
           if w-vs-pb = 0 exit paragraph
           end-if
           IF Id-Fiche-Courante = SPACES EXIT PARAGRAPH
           END-IF.

220818             
           IF  MODIF-PALM = "X" 
           AND AUTO-MODGCOD = 1 THEN 
              PERFORM Mode-Modification-GCOD
              PERFORM READ-MXART
              PERFORM Affiche-Detail
              EXIT PARAGRAPH
           END-IF
220818
           PERFORM Mode-Modification
           PERFORM READ-MXART
           MOVE SPACE TO LK-SCODART-L-ART
220118
           IF CANN-MART = 1
               MOVE ENR-MART TO W-ENR-MART-BUF
               PERFORM MSG-ART-REINTEGRE
               IF CANN-MART = 1 
                  PERFORM Mode-Interrogation
                  EXIT PARAGRAPH
               END-IF
           END-IF.
220118 
           PERFORM Affiche-Detail
           .
       Screen1-Pb-Valid-LinkTo.
           inquire Screen1-Pb-Valid, visible in w-vs-pb
           if w-vs-pb = 0 exit paragraph
           end-if
           PERFORM Sauvegarde-Detail
           IF Event-Action = Event-Action-Fail THEN
               EXIT PARAGRAPH
           END-IF

      *  Si fonction création, enchainement sur la création des paramètres de stock si pas déjà créés
           IF (CDFB = "C" OR "Z") 

             IF W-MODE-DUP = 1 THEN
      *          Duplication article 
                 IF W-DUP-DOC = 1 THEN
                    PERFORM DUPLIC-DOC
                 END-IF
                 IF W-DUP-MUL = 1 THEN
                    PERFORM DUPLIC-MUL
                 END-IF
                 IF W-DUP-INO = 1 THEN
                    PERFORM DUPLIC-COMPO
                 END-IF
                IF ILV-MART <> 1 THEN
                   PERFORM TEST-EXIST-MXARTSA THRU F-TEST-EXIST-MXARTSA
                   IF W-OK = 0 THEN
                   PERFORM DUPLIC-ARTSA                     | Si Stock : duplique ARTSA
                   END-IF
                END-IF
050711          IF ( ILV-MART = 1 OR 2 )
060212          AND MXLOC-PALM = 1
                   PERFORM DUPLIC-ARTLOC THRU F-DUPLIC-ARTLOC  | Si Location : duplique ARTLOC
                END-IF
                MOVE 0 TO W-MODE-DUP
             ELSE
                IF ILV-MART <> 1
                   IF W-AGE-VCF <> SPACE
                      PERFORM CREAT-ARTSA-VCF
                   END-IF
                   PERFORM TEST-EXIST-MXARTSA THRU F-TEST-EXIST-MXARTSA
                   IF W-OK = 0 
                      INITIALIZE LK-ART-ASA
                      MOVE Id-Fiche-Courante TO LK-ART-ASA-COD
                      MOVE "C"               TO LK-ART-ASA-CHO
                      CALL  "../../mx/o/art-asa.acu" using ZONE-PALM, 
                            LK-ART-ASA
                      CANCEL "../../mx/o/art-asa.acu"
                   END-IF
                END-IF
             END-IF
           END-IF
 
           IF  LK-ART-C-CHO <> "C" 
           AND ( CDFB = "C" OR "Z" ) THEN
      *       Repositionne pour permettre de parcourir à partir du nouvel enregistrement
              PERFORM START-MXART2
           END-IF
 
           MOVE SPACE TO LK-SCODART-L-ART
           PERFORM Init-Soc
           PERFORM Mode-Interrogation
           PERFORM READ-MXART
           PERFORM Affiche-Detail

           IF LK-ART-C-CHO = "C" THEN
              MOVE Id-Fiche-Courante TO LK-ART-C-COD
              PERFORM Screen1-Pb-Quit-LinkTo

           END-IF   
           .
       Screen1-Pb-Add-LinkTo.
           inquire Screen1-Pb-Add, visible in w-vs-pb
           if w-vs-pb = 0 exit paragraph
           end-if

           MOVE 0 TO CRE-AVEC-CTF
110118     IF AUTO-CREHC = 2 
              perform Screen1-Mn-1-MI-Creation-Link
           else
              CALL "W$MENU" USING WMENU-POPUP, Screen1-Mn-1-Handle
           end-if
           .

      *
       Screen1-Mn-1-MI-Creation-Link.
      *-----------------------------*
           MOVE 0 TO W-MODE-DUP
           PERFORM Mode-Creation
           PERFORM Init-Soc
           MOVE SPACE TO LK-SCODART-L-ART SV-REF
           PERFORM Affiche-Detail
           MOVE 46 TO CONTROL-ID
           MOVE 4 TO ACCEPT-CONTROL.
           move zero to nb-accept.
           .
      *
       Screen1-Mn-1-MI-Duplication-Link.
      *--------------------------------*
           MODIFY Screen1-Handle,   
              ENABLED 0
           PERFORM ACU-ScreenDup-Routine
           MODIFY Screen1-Handle, ENABLED 1

           IF W-OK = 1 THEN
              MOVE FOU-MART2 TO SV-FOU
              MOVE GRA-MART2 TO SV-GRA
              MOVE FAM-MART2 TO SV-FAM
              MOVE MAR-MART2 TO SV-MAR

              MOVE 1 TO W-MODE-DUP
              PERFORM Mode-Creation

              MOVE ENR-MART2 TO ENR-MART
              MOVE SPACE TO COD-MART
                            REF-MART
                            IMOD-MART
                            RFI-MART
                            RFN-MART
              MOVE 0     TO DMOD-MART
                            DCR-MART
                            GCOD-MART
      
              IF RFIA-MPAR = 1 THEN
      *          Numérotation automatique de la Référence Interne
                 MOVE W-RFI TO RFIN-MART
              END-IF
      
260907
              IF W-DUP-DOC = 0 THEN
                 MOVE 0 TO DOC-MART
              END-IF

              IF W-DUP-MUL = 0 THEN
                 MOVE 0 TO MUL-MART
              END-IF

              IF W-DUP-INO = 0 THEN
                 MOVE 0 TO INO-MART
              END-IF
 
              MOVE DTT-PALM TO DAT-MART
              MOVE SPACE TO LK-SCODART-L-ART SV-REF
              MOVE ENR-MART TO W-ENR-MART-Original
                               ENR-MART2
280918        MOVE 0 TO W-ACTU-DT
              PERFORM Init-Soc
              PERFORM Affiche-Detail
              MOVE 46 TO CONTROL-ID
              MOVE 4 TO ACCEPT-CONTROL
              move zero to nb-accept
           ELSE
 
              IF Id-Fiche-Courante <> SPACE THEN
                 PERFORM READ-MXART
              END-IF
 
           END-IF
           .

       Screen1-Pb-Delete-LinkTo.
           inquire Screen1-Pb-Delete, visible in w-vs-pb
           if w-vs-pb = 0 
              exit paragraph
           end-if
           IF Id-Fiche-Courante = SPACES 
              if ide-palm = "MIS"
                 MOVE "Code vide : Force Suppression ?" TO ACU-Msg-1
                 PERFORM MSG-ON
                 IF ACU-Return-Value <> 1 THEN
                    EXIT PARAGRAPH
                 END-IF
              else  
                 EXIT PARAGRAPH
              end-if
           END-IF

      * PALM interdit la suppression.
           IF ANNUL-PALM = "X" THEN
               MOVE "380" TO Acu-Msg-Id
               PERFORM Acu-Show-Msg
               MOVE Event-Action-Ignore TO Event-Action
               EXIT PARAGRAPH
           END-IF


           PERFORM CAL-STOCK-MXARTSA THRU F-CAL-STOCK-MXARTSA
           IF W-STOCK NOT = ZERO
              Move "Suppression Impossible: Stock non nul" TO ACU-MSG-1
              if ide-palm = "MIS"
                 MOVE "Force Suppression ?" TO ACU-Msg-2
                 PERFORM MSG-ON
                 IF ACU-Return-Value <> 1 THEN
                    EXIT PARAGRAPH
                 END-IF
              else  
                 PERFORM MSG-INFO
                 EXIT PARAGRAPH
              end-if
           END-IF

           MOVE "203" TO Acu-Msg-Id
           PERFORM Acu-Show-Msg
           IF NOT Acu-Return-Value = 1 THEN
               EXIT PARAGRAPH
           END-IF

           if ide-palm = "MIS"
              MOVE "Controle Suppression ?" TO ACU-Msg-1
              PERFORM MSG-ON
           END-IF

           MOVE Id-Fiche-Courante TO COD-MART
           READ MXART WITH LOCK INVALID 
                MOVE "Lecture ART N° " TO ACU-MSG-2
                MOVE COD-MART TO ACU-MSG-3 GO ERREUR
           END-READ
           PERFORM STAT
           IF IND-STAT = 1
              MOVE "399" TO Acu-Msg-Id
              PERFORM Acu-Show-Msg
              PERFORM Mode-Interrogation.
           MOVE 1        TO CANN-MART
           MOVE DTT-PALM TO DANN-MART
           MOVE IDE-PALM TO IANN-MART 
           REWRITE ENR-MART
           PERFORM STAT

 
           PERFORM MAJ-EDITAR THRU F-MAJ-EDITAR

           PERFORM Init-Soc
           MOVE SPACE TO LK-SCODART-L-ART
           PERFORM Screen1-Pb-Next-LinkTo
           .
       Screen1-Pb-Print-LinkTo.
           .
       Screen1-Pb-Quit-LinkTo.
           if w-vs-pb = 0 exit paragraph
           end-if
           IF Id-Fiche-Courante = SPACES
              PERFORM Acu-Screen1-EXIT
           ELSE
              PERFORM Test-Sauvegarde-Voulue
              IF Event-Action NOT = Event-Action-Fail THEN
      
                 IF  CDFB = "C" 
                 AND W-MODE-DUP = 1 THEN
      *             Abandon duplication article
                    IF W-DUP-DOC = 1 THEN
                       PERFORM EFFACE-DOC
                    END-IF

                    IF W-DUP-MUL = 1 THEN
                       PERFORM EFFACE-MUL
                    END-IF

                    IF W-DUP-INO = 1 THEN
                       PERFORM EFFACE-COMPO
                    END-IF

                 END-IF
      
                 PERFORM Acu-Screen1-EXIT
              END-IF
           END-IF
           .
       Screen1-Pb-ListeFournisseurs-LinkTo.
           INITIALIZE LK-MFOU-L
           INQUIRE Screen1-DaEf-FOU-MART, VALUE IN LK-MFOU-L-COD
           CALL "../../mx/o/mfou-l.acu" USING ZONE-PALM, LK-MFOU-L
           CANCEL "../../mx/o/mfou-l.acu"
     
           IF  isModifying = 1 
           AND FOU-MART NOT = LK-MFOU-L-COD 
                    AND NOT = 0 THEN
      *       Test si fournisseur dans cde achat
              MOVE FOU-MART TO W-FOU
              PERFORM Test-Cde-Achat

              IF W-OK = 0 THEN
                 EXIT PARAGRAPH
              END-IF

           END-IF

           MOVE LK-MFOU-L-COD TO FOU-MART Screen1-DaEf-FOU-MART-BUF
           MODIFY Screen1-DaEf-FOU-MART, VALUE = FOU-MART
           PERFORM TEST-FOU-MART
           IF isSearching = 1 THEN
               MOVE SPACES TO REF-MART
               PERFORM START-MXART2
           END-IF
           IF Iscreating = 1 AND FOU-MART NOT = ZERO
              IF SV2-FOU NOT = FOU-MART MOVE ZERO TO POL-MART 
                 MOVE SPACES TO COD-MART
              END-IF
              IF CNUF-MFOU NOT = SV2-CNUF 
                 MOVE ZERO TO GCOD-MART
              END-IF.
           PERFORM Affiche-Detail
           .
       Screen1-Ef-GRA-MART-Ev-Msg-Validate.
           INQUIRE Screen1-Ef-GRA-MART, VALUE IN GRA-MART
           PERFORM VERIF-FSA
           PERFORM Affiche-Pb-Tarce
           .
       Screen1-Ef-FAM-MART-Ev-Msg-Validate.
           INQUIRE Screen1-Ef-FAM-MART, VALUE IN FAM-MART  
           PERFORM VERIF-FSA
           PERFORM Affiche-Pb-Tarce
           .
       Screen1-Pb-ArbreFamilles-Bef-Procedure.
           MOVE GRA-MART TO SV2-GRA
           MOVE FAM-MART TO SV2-FAM
           
           IF  GRA-MART <> 0
           AND FAM-MART <> 0 THEN
              MOVE GRA-MART TO GRA-MFAM
              MOVE FAM-MART TO FAM-MFAM
              READ MXFAMART INVALID MOVE SPACE TO ENR-MFAM
              END-READ
              PERFORM STAT
              MOVE TVA-MFAM  TO SV-TVA
              MOVE GRA-MART TO GRA-MGFA
              MOVE ZERO     TO FAM-MGFA
              READ MXGRAFAM INVALID MOVE SPACE TO ENR-MGFA
              END-READ
              PERFORM STAT
              MOVE SPVT-MGFA TO SV-SPVT
              PERFORM Affiche-Pb-Tarce
           END-IF
      
           .

       Screen1-Pb-ArbreFamilles-LinkTo.
           MOVE GRA-MART TO LK-MGFA-T-GRA
           MOVE FAM-MART TO LK-MGFA-T-FAM
           CALL "../../mx/o/mgfa-t.acu" USING ZONE-PALM, LK-MGFA-T
           CANCEL "../../mx/o/mgfa-t.acu"
           MOVE LK-MGFA-T-GRA TO GRA-MART
           MOVE LK-MGFA-T-FAM TO FAM-MART
           PERFORM VERIF-FSA.
       VERIF-FSA.
           IF (Iscreating = 1 
290819* en création si on change la famille le coeff de la nouvelle famille n'est pas pris en compte (TOPAZ)
290819         OR CDFB = "C" OR "Z")
           AND GRA-MART NOT = ZERO
              IF SV2-GRA NOT = GRA-MART OR SV2-FAM NOT = FAM-MART
                 PERFORM MEP-INFO-FAM
              END-IF
300817
              IF (SV2-GRA NOT = GRA-MART OR SV2-FAM NOT = FAM-MART)
              AND MODU-DECO = 1 AND FOU-MART <> 0 AND NUMA-MFOU = 1
                 MOVE SPACES TO CO2-MART REF-MART
              END-IF
300817
           END-IF.
           IF isSearching = 1 THEN
               PERFORM START-MXART2
           END-IF
                 
           IF (IsModifying = 1 OR Iscreating = 1)
              AND ISPV-MART = 2 AND GRA-MART <> 0 AND FAM-MART <> 0 
              MOVE GRA-MART TO GRA-MFAM
              MOVE FAM-MART TO FAM-MFAM
              READ MXFAMART INVALID MOVE SPACE TO ENR-MFAM
              END-READ
              PERFORM STAT

              IF TVA-MFAM <> SV-TVA THEN
                 MOVE "Changement du taux de TVA" TO ACU-Msg-1
                 MOVE "Recalcul du prix TTC"      TO ACU-Msg-2
                 PERFORM Msg-Info
                 MOVE 0 TO ISPV-MART
              END-IF
           END-IF

           IF (IsModifying = 1 OR Iscreating = 1 ) AND
              ISPV-MART <> 0  AND GRA-MART <> 0  AND FAM-MART <> 0 THEN
              MOVE GRA-MART TO GRA-MGFA
              MOVE ZERO     TO FAM-MGFA
              READ MXGRAFAM INVALID MOVE SPACE TO ENR-MGFA
              END-READ
              PERFORM STAT

              IF  SPVT-MGFA <> SV-SPVT AND SV-SPVT = 1 
              AND ISPV-MART <> 0 THEN
                 MOVE 
               "Saisie du prix de vente non autorisée sur cette famille" 
                 TO ACU-Msg-1
                 IF ISPV-MART = 2 THEN
                    MOVE "Recalcul du prix TTC" TO ACU-Msg-2
                 ELSE
                    MOVE "Recalcul du prix HT"  TO ACU-Msg-2
                 END-IF
                 PERFORM Msg-Info
                 MOVE 0 TO ISPV-MART
              END-IF
           END-IF
      
           PERFORM Affiche-Detail
           .
       MEP-INFO-FAM.
           IF W-COE-REMFOU = 0 AND 
311019        W-COE-CTF = 0 
              MOVE ZERO TO COE-MART        | Ne pas écraser le coéf qui vient de REMFOU ou de CATFOU
           END-IF
           MOVE ZERO TO TXM-MART CFU-MART 
           MOVE GRA-MART TO GRA-MFAM
           MOVE FAM-MART TO FAM-MFAM
           READ MXFAMART INVALID MOVE SPACE TO ENR-MFAM
           END-READ
           PERFORM STAT
           IF W-CRC-REMFOU = 0 MOVE CRC-MFAM TO CRC-MART
           END-IF
           MOVE CRC-MART TO Screen1-DaEf-CRC-MART-BUF
           IF IPO-MFAM = 1 AND W-POI-MCTF NOT = ZERO
              COMPUTE POI-MART = (W-POI-MCTF / 1000)
           END-IF
           IF IPO-MFAM = 2 AND W-POI-MCTF NOT = ZERO
              COMPUTE POI-MART = (W-POI-MCTF / 1000000)
           END-IF
           MOVE POI-MART TO Screen1-DaEf-POI-MART-BUF.
           IF REF-MFAM = 1 MOVE W-GCOD-MCTFE TO GCOD-MART.

       Screen1-Pb-ListeMarques-LinkTo.
           INITIALIZE LK-LISTE
           INQUIRE Screen1-Ef-MAR-MART, VALUE IN LK-LISTE-COD(1)
           CALL  "../../mx/o/mmar-l.acu" using ZONE-PALM, LK-LISTE
           CANCEL "../../mx/o/mmar-l.acu"
           MOVE LK-LISTE-COD(1) TO MAR-MART
           MOVE LK-LISTE-LIB TO W-LIB-MAR-MMAR

           PERFORM Affiche-Detail
           .
       Screen1-Pb-MarquesMoteur-LinkTo.
           INITIALIZE LK-LISTE
           INQUIRE Screen1-Ef-MARM-MART, VALUE IN LK-LISTE-COD(1)
           CALL  "../../mx/o/mmar-l.acu" using ZONE-PALM, LK-LISTE
           CANCEL "../../mx/o/mmar-l.acu"
           MOVE LK-LISTE-COD(1) TO MARM-MART
           MOVE LK-LISTE-LIB TO W-LIB-MARM-MMAR

           PERFORM Affiche-Detail
           .
       Screen1-Pb-Moteur-Expand-LinkTo.
           IF isMoteurFrVisible = 0 THEN
               MOVE 0 TO isLeftVisible
               MOVE 1 TO isMoteurFrVisible
           ELSE
               MOVE 0 TO isMoteurFrVisible
               MOVE 1 TO isLeftVisible
           END-IF

           PERFORM Affiche-Detail
           .
       Screen1-Pb-Tarif-Expand-LinkTo.
           IF isTarifFrVisible = 0 THEN
               MOVE 0 TO isRightVisible isRight2Visible
               MOVE 1 TO isTarifFrVisible
           ELSE
               MOVE 0 TO isTarifFrVisible
               MOVE 1 TO isRightVisible 
               MOVE GPMO-MPAR TO isRight2Visible
           END-IF

           PERFORM Affiche-Detail            
           .
       Screen1-Pb-ListeTypes-LinkTo.
      *     INITIALIZE LK-MTYM-L
      *     INQUIRE Screen1-Ef-MAR-MART, VALUE IN LK-MTYM-L-MAR
      *     INQUIRE Screen1-Ef-TYP-MART, VALUE IN LK-MTYM-L-TYP(1)
      *     CALL  "../../mx/o/mtym-l.acu" using ZONE-PALM, LK-MTYM-L
      *     CANCEL "../../mx/o/mtym-l.acu"
      *     MOVE LK-MTYM-L-TYP(1) TO TYP-MART

           PERFORM Affiche-Detail
           .
       Screen1-Ev-Cmd-Close.
           PERFORM Mistral-WindowClosing
           .
       Screen1-DaGd-RTG-Ev-Msg-Goto-Cell.
      * La ligne de titre et la colonne des numéros sont à ignorer...
           IF Event-Data-1 < 2 OR Event-Data-2 < 2 THEN
               MOVE 3 TO Event-Data-1 
               MOVE 2 TO Event-Data-2
               MOVE Event-Action-Fail TO Event-Action
               EXIT PARAGRAPH
           END-IF

      * La colonnes Tarif, Marge et Marge brute sont à ignorer...
      *     IF Event-Data-1 > 4 THEN
      *         PERFORM Mistral-TransferFocus
      *     END-IF
           .
       Screen1-DaGd-RTG-Ev-Msg-Begin-Entry.
      * La ligne de titre et la colonne des numéros sont à ignorer...
           IF Event-Data-1 < 3 OR Event-Data-2 < 2 THEN
               PERFORM Mistral-TransferFocus
               MOVE Event-Action-Fail TO Event-Action
               EXIT PARAGRAPH
           END-IF

      * Les colonnes Tarif, Marge et Marge brute sont calculées...
           IF Event-Data-1 > 4
               PERFORM Mistral-TransferFocus
               MOVE Event-Action-Fail TO Event-Action
               EXIT PARAGRAPH
           END-IF
      * Grille verrouillée en mode "Interrogation"...
           IF CDFB = "I" 
220818            OR "G" THEN
               MOVE Event-Action-Fail TO Event-Action
               EXIT PARAGRAPH
           END-IF
      * Contrôle pas de ligne à vide au dessus de la ligne en cours
           IF EVENT-DATA-2 > 2
              INQUIRE Screen1-DaGd-RTG(Event-Data-2 - 1, 3),
              CELL-DATA IN W-BORNE
              IF W-BORNE = ZERO MOVE Event-Action-Fail TO Event-Action
                         EXIT PARAGRAPH
              END-IF
           END-IF
      * Saisi Prix non autorisé si borne non renseignée
           IF EVENT-DATA-1 = 4
              INQUIRE Screen1-DaGd-RTG(Event-Data-2 , 3),
                           CELL-DATA IN W-BORNE
              IF W-BORNE = ZERO MOVE Event-Action-Fail TO Event-Action
                         EXIT PARAGRAPH
              END-IF
           END-IF     
           .
           .
       Screen1-DaGd-RTG-Ev-Msg-Finish-Entry.
           SUBTRACT 1 FROM Event-Data-2 GIVING Tmp-9-3
           EVALUATE Event-Data-1
               WHEN 3
                   INQUIRE Screen1-DaGd-RTG(Event-Data-2, 3),
                           CELL-DATA IN BSU-MART(Tmp-9-3)
                   IF BSU-MART(Tmp-9-3) = zero
                      MOVE Event-Data-2 TO TMP-9-2
                      PERFORM VARYING Tmp-9-3 FROM TMP-9-3 BY 1 UNTIL 
                         Tmp-9-3 > 6
                         MOVE ZERO TO BSU-MART(Tmp-9-3)
                                      RTG-MART(TMP-9-3)
                                      PVN-MART(Tmp-9-3)
                         MODIFY Screen1-DaGd-RTG(TMP-9-2, 3),
                         CELL-DATA = SPACES
                         PERFORM MEP-TARCOL-RTG
                         MODIFY Screen1-DaGd-RTG(TMP-9-2),
                         RECORD-DATA = Screen1-DaGd-RTG-BUF
                         ADD 1 TO TMP-9-2
                      END-PERFORM
                      SUBTRACT 1 FROM Event-Data-2 GIVING Tmp-9-3
                   END-IF
                   IF Tmp-9-3 > 1 THEN
                       IF BSU-MART(Tmp-9-3 - 1) >= BSU-MART(Tmp-9-3) AND
                          (BSU-MART(Tmp-9-3) NOT = 0) THEN
                           DISPLAY MESSAGE
                                   "Saisir des valeurs croissantes, SVP"
                           MOVE Event-Action-Fail TO Event-Action
                           EXIT PARAGRAPH
                       END-IF
                   END-IF
               WHEN 4
101114*             INQUIRE Screen1-DaGd-RTG(Event-Data-2, 4),
      *                     CELL-DATA IN RTG-MART(Tmp-9-3)
                   INQUIRE Screen1-DaGd-RTG(Event-Data-2, 4),
                           CELL-DATA IN ZC-NUM-ENT
101114             COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                     REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                               ==CPYNUM-FIC==  BY ==RTG-MART(Tmp-9-3)==.
                   PERFORM MEP-TARCOL-RTG
                   MODIFY Screen1-DaGd-RTG(Event-Data-2),
                          RECORD-DATA = Screen1-DaGd-RTG-BUF
           END-EVALUATE

           PERFORM VARYING Tmp-9-3 FROM 1 BY 1
                   UNTIL Tmp-9-3 > 6
                PERFORM MEP-TARCOL-RTG
                MODIFY Screen1-DaGd-RTG(Tmp-9-3 + 1, 2)
                       CELL-DATA = Screen1-DaGd-RTG-BUF-2
                MODIFY Screen1-DaGd-RTG(Tmp-9-3 + 1, 3)
                       CELL-DATA = Screen1-DaGd-RTG-BUF-3
           END-PERFORM
           .
       Screen1-DaGd-PVN-Ev-Msg-Goto-Cell.
      * La ligne de titre et la colonne des numéros sont à ignorer...
           IF Event-Data-1 < 2 OR Event-Data-2 < 2 THEN
               MOVE 3 TO Event-Data-1 

               MOVE 2 TO Event-Data-2
               MOVE Event-Action-Fail TO Event-Action
               EXIT PARAGRAPH
           END-IF

      * La colonnes Marge et Marge brute sont à ignorer...
      *     IF Event-Data-1 > 4 THEN
      *         PERFORM Mistral-TransferFocus
      *     END-IF
           .
       Screen1-DaGd-PVN-Ev-Msg-Begin-Entry.
      * La ligne de titre et la colonne des numéros sont à ignorer...
           IF Event-Data-1 < 3 OR Event-Data-2 < 2 THEN
               PERFORM Mistral-TransferFocus
               MOVE Event-Action-Fail TO Event-Action
               EXIT PARAGRAPH
           END-IF

      * Les colonnes Marge et Marge brute sont calculées...
           IF Event-Data-1 > 4
               PERFORM Mistral-TransferFocus
               MOVE Event-Action-Fail TO Event-Action
               EXIT PARAGRAPH
           END-IF

      * Grille verrouillée en mode "Interrogation"...
           IF CDFB = "I" 
220818            OR "G" THEN
               MOVE Event-Action-Fail TO Event-Action
               EXIT PARAGRAPH
           END-IF
      * Contrôle pas de ligne à vide au dessus de la ligne en cours
           IF EVENT-DATA-2 > 2
              INQUIRE Screen1-DaGd-PVN(Event-Data-2 - 1, 3),
              CELL-DATA IN W-BORNE
              IF W-BORNE = ZERO MOVE Event-Action-Fail TO Event-Action
                         EXIT PARAGRAPH
              END-IF
           END-IF
      * Saisi Prix non autorisé si borne non renseignée
           IF EVENT-DATA-1 = 4
              INQUIRE Screen1-DaGd-PVN(Event-Data-2 , 3),
                           CELL-DATA IN W-BORNE
              IF W-BORNE = ZERO MOVE Event-Action-Fail TO Event-Action
                         EXIT PARAGRAPH
              END-IF
           END-IF     
           .

       Screen1-DaGd-PVN-Ev-Msg-Finish-Entry.
           SUBTRACT 1 FROM Event-Data-2 GIVING Tmp-9-3
           EVALUATE Event-Data-1
               WHEN 3
                   INQUIRE Screen1-DaGd-PVN(Event-Data-2, 3),
120416*                     CELL-DATA IN BSU-MART(Tmp-9-3)
120416                     CELL-DATA IN ZC-NUM-ENT
120416             COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                     REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                               ==CPYNUM-FIC==  BY ==BSU-MART(Tmp-9-3)==.
                   IF BSU-MART(Tmp-9-3) = zero
                      MOVE Event-Data-2 TO TMP-9-2
                      PERFORM VARYING Tmp-9-3 FROM TMP-9-3 BY 1 UNTIL 
                         Tmp-9-3 > 6
                         MOVE ZERO TO BSU-MART(Tmp-9-3)
                                      RTG-MART(TMP-9-3)
                                      PVN-MART(Tmp-9-3)
                         MODIFY Screen1-DaGd-PVN(TMP-9-2, 3),
                         CELL-DATA = SPACES
                         PERFORM MEP-TARCOL-PVN
                         MODIFY Screen1-DaGd-PVN(TMP-9-2),
                         RECORD-DATA = Screen1-DaGd-PVN-BUF
                         ADD 1 TO TMP-9-2
                      END-PERFORM
                      SUBTRACT 1 FROM Event-Data-2 GIVING Tmp-9-3
                   END-IF
                   IF Tmp-9-3 > 1 THEN
                       IF BSU-MART(Tmp-9-3 - 1) >= BSU-MART(Tmp-9-3) AND
                          (BSU-MART(Tmp-9-3) NOT = 0) THEN
                           DISPLAY MESSAGE
                                   "Saisir des valeurs croissantes, SVP"
                           MOVE Event-Action-Fail TO Event-Action
                           EXIT PARAGRAPH
                       END-IF
                   END-IF
               WHEN 4
                   INQUIRE Screen1-DaGd-PVN(Event-Data-2, 4),
120416*                     CELL-DATA IN PVN-MART(Tmp-9-3)
120416                     CELL-DATA IN ZC-NUM-ENT
120416             COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                     REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                               ==CPYNUM-FIC==  BY ==PVN-MART(Tmp-9-3)==.
                   PERFORM MEP-TARCOL-PVN
                   MODIFY Screen1-DaGd-PVN(Event-Data-2),
                          RECORD-DATA = Screen1-DaGd-PVN-BUF
           END-EVALUATE
           PERFORM VARYING Tmp-9-3 FROM 1 BY 1
                   UNTIL Tmp-9-3 > 6
                PERFORM MEP-TARCOL-PVN
                MODIFY Screen1-DaGd-PVN(Tmp-9-3 + 1, 2)
                       CELL-DATA = Screen1-DaGd-PVN-BUF-2
                MODIFY Screen1-DaGd-PVN(Tmp-9-3 + 1, 3)
                       CELL-DATA = Screen1-DaGd-PVN-BUF-3
           END-PERFORM
           .
       Screen1-Cm-CUA-MART-Ex-Ntf-Selchange.
           INQUIRE Screen1-Cm-CUA-MART, VALUE IN Cm-MTUN-Items(1)
200607
           IF Cm-MTUN-RAN(1) <> CUA-MART THEN
              MODIFY Screen1-St-1-Handle, TITLE =
              " Unité Achat modifiée: contrôle en cours ...." 
              PERFORM VERIF-MXARTSA2 THRU F-VERIF-MXARTSA2
              IF W-OK = 0
                 MOVE 
                 " Unité Achat non modifiable: existence d'en-cours"
                 TO ACU-MSG-1
                 PERFORM MSG-INFO
                 MOVE CUA-MART TO Cm-MTUN-RAN(1)
              END-IF
              MODIFY Screen1-St-1-Handle, TITLE = SPACES
           END-IF
200607
           MOVE Cm-MTUN-RAN(1) TO CUA-MART
           IF CUA-MART = CUV-MART MOVE 1 TO NUU-MART.

           PERFORM Affiche-Detail
           .
       Screen1-Cm-CUV-MART-Ex-Ntf-Selchange.
           INQUIRE Screen1-Cm-CUV-MART, VALUE IN Cm-MTUN-Items(1)
200607
           IF Cm-MTUN-RAN(1) <> CUV-MART THEN
              MODIFY Screen1-St-1-Handle, TITLE =
              " Unité Vente modifiée: contrôle en cours ...." 
              PERFORM VERIF-MXARTSA2 THRU F-VERIF-MXARTSA2
              IF W-OK = 0
                 MOVE 
                 " Unité Vente non modifiable: existence d'en-cours"
                 TO ACU-MSG-1
                 PERFORM MSG-INFO
                 MOVE CUV-MART TO Cm-MTUN-RAN(1)
              END-IF
              MODIFY Screen1-St-1-Handle, TITLE = SPACES
           END-IF
200607
           MOVE Cm-MTUN-RAN(1) TO CUV-MART
           IF CUA-MART = CUV-MART MOVE 1 TO NUU-MART.
           PERFORM Affiche-Detail
           .
       Screen1-Cm-POL-MART-Ex-Ntf-Selchange.
           INQUIRE Screen1-Cm-POL-MART, VALUE IN Cm-MART-POL-Items(1)
           IF INO-MART > 0 AND Cm-MART-POL-COD(1) = 3
              MOVE
              "Politique de prix (3) incohérente si article composé"
              TO ACU-MSG-1
              PERFORM MSG-INFO
              MOVE POL-MART TO Cm-MART-POL-COD(1) 
                               Cm-MART-POL-SelectedItem
              PERFORM Screen1-Cm-POL-MART-Refresh
           END-IF
           MOVE Cm-MART-POL-COD(1) TO POL-MART
           PERFORM Affiche-Detail
           .
       Screen1-Cm-INO-MART-Aft-Procedure.
191207
           IF SV-INO-MART = INO-MART 
              EXIT PARAGRAPH
           END-IF
           IF INO-MART NOT = ZERO
              PERFORM MSG-ANO-COMPO
              IF POL-MART = 3 OR NAT-MGFA = 9 OR W-ILV-MART = 2
                 MOVE SV-INO-MART TO Cm-MART-INO-COD(1)
                 PERFORM Screen1-Cm-INO-MART-Refresh
                 DISPLAY Screen1-Cm-INO-MART

              END-IF
           END-IF

           IF (SV-INO-MART = 1 AND INO-MART = 2)
           OR (SV-INO-MART = 2 AND INO-MART = 0)
      ***  le 09/04/2014 : rien n'inderdit de passer 1 article normal
      ***  en kit ou l'inverse (vu avec VO + NC)
      ***  besoin pour LECOQ
           OR (SV-INO-MART = 0 AND INO-MART = 3)
           OR (SV-INO-MART = 3 AND INO-MART = 0)
              CONTINUE
           ELSE
              MODIFY Screen1-St-1-Handle, TITLE =
              " Structure modifiée: contrôle en cours ...."
           END-IF.
191207
           IF INO-MART = 0 AND SV-INO-MART NOT = INO-MART 
              MOVE 1 TO W-CONFIRM
              PERFORM DEL-MXNOMART THRU F-DEL-MXNOMART
              IF W-CONFIRM = 1
                 MOVE SV-INO-MART TO INO-MART Cm-MART-INO-SelectedItem
                 PERFORM Screen1-Cm-INO-MART-Refresh
                 DISPLAY Screen1-Cm-INO-MART
              END-IF
           END-IF
           MOVE INO-MART TO SV-INO-MART
           PERFORM Affiche-Detail
           .
       Screen1-Cm-INO-MART-Ex-Ntf-Selchange.
            INQUIRE Screen1-Cm-INO-MART, VALUE IN Cm-MART-INO-Items(1)
            MOVE Cm-MART-INO-COD(1) TO INO-MART
           .
       MSG-ANO-COMPO.
           IF POL-MART = 3 
              MOVE
              "Politique de prix (3) incohérente si article composé"
              TO ACU-MSG-1
              PERFORM MSG-INFO
           END-IF
           IF NAT-MGFA = 9 
           AND (INO-MART = 1 OR 2)
              MOVE 
              "Composition non autorisée pour les petits matériels"
              TO ACU-MSG-1
              PERFORM MSG-INFO
           END-IF
           IF W-ILV-MART = 2 
              MOVE 
              "Composition non autorisée si article à la location"
              TO ACU-MSG-1
              PERFORM MSG-INFO
           END-IF
           .
       Screen1-Rb-x-ITC-MART-BeforeProcedure.
           INQUIRE Event-Control-Handle, VALUE IN W-ITC-MART
           SUBTRACT 1 FROM W-ITC-MART GIVING ITC-MART
           PERFORM Affiche-Detail
           .
       Screen1-Rb-x-ICO-MART-BeforeProcedure.
           INQUIRE Event-Control-Handle, VALUE IN W-ICO-MART
           MOVE W-ICO-MART TO ICO-MART
           IF ICO-MART < 9 THEN
               SUBTRACT 1 FROM ICO-MART
               IF ICO-MART = 2 MOVE 9 TO ICO-MART
               END-IF
           END-IF
           .
       Screen1-Rb-x-ILV-MART-BeforeProcedure.
           INQUIRE Event-Control-Handle, VALUE IN W-ILV-MART
           SUBTRACT 1 FROM W-ILV-MART GIVING ILV-MART   
           PERFORM Affich-Pb-Artloc
           PERFORM Affiche-Pb-Tarce
           .

230315 Screen1-Rb-1-ILV-MART-Ev-Cmd-Clicked.
           IF  CDFB = "C"
           AND W-ACTIV = 2 THEN
      *       Pour éviter le blocage au Start aprés enregistrement
              MOVE "Incohérence avec sélection Article Location"
                TO ACU-Msg-1
              PERFORM Msg-Info
              ADD 1 ILV-MART GIVING W-ILV-MART
              DISPLAY SCREEN1
           END-IF
           .
       Screen1-Rb-2-ILV-MART-Ev-Cmd-Clicked.
           IF INO-MART > 0 
              MOVE 
              "Composition non autorisée si article à la location"
              TO ACU-MSG-1
              PERFORM MSG-INFO
              ADD 1 ILV-MART GIVING W-ILV-MART
              DISPLAY SCREEN1
           END-IF
230315
           IF  CDFB = "C"
           AND W-ACTIV = 1 THEN
      *       Pour éviter le blocage au Start aprés enregistrement
              MOVE "Incohérence avec sélection Article Vente"
                TO ACU-Msg-1
              PERFORM Msg-Info
              ADD 1 ILV-MART GIVING W-ILV-MART
              DISPLAY SCREEN1
           END-IF
230315
           .


       Screen1-Rb-x-NAT-MART-BeforeProcedure.
           INQUIRE Event-Control-Handle, VALUE IN W-NAT-MART   
           SUBTRACT 1 FROM W-NAT-MART GIVING NAT-MART
290817     PERFORM AFF-Pb-EQU.

290817 AFF-Pb-EQU.
           .
       Screen1-Rb-x-IFA-MART-BeforeProcedure.
      *     .
       Screen1-Rb-x-TAR-MART-BeforeProcedure.
           INQUIRE Event-Control-Handle, VALUE IN W-TAR-MART
           SUBTRACT 1 FROM W-TAR-MART GIVING TAR-MART
           .

      *
       Screen1-Cm-IFA-MART-Ev-Ntf-Selchange.
           inquire Screen1-Cm-IFA-MART value in W-Cm-IFA-MART(1)
           MOVE W-IFA-MART(1) TO IFA-MART.
           PERFORM Affiche-Detail.
           .
       Screen1-DaEf-FOU-MART-Bef-Procedure.
           MOVE FOU-MART  TO SV2-FOU.
           MOVE CNUF-MFOU TO SV2-CNUF.

       Screen1-DaEf-FOU-MART-Ev-Msg-Validate.
           INQUIRE Screen1-DaEf-FOU-MART, VALUE IN FOU-MART
           PERFORM TEST-FOU-MART
           IF isSearching = 1 THEN
               IF SV2-FOU NOT = FOU-MART MOVE spaces to REF-MART
               END-IF
               PERFORM START-MXART2
           END-IF.

           IF Iscreating = 1 AND FOU-MART NOT = ZERO
              IF SV2-FOU NOT = FOU-MART MOVE ZERO TO POL-MART 
                 MOVE SPACES TO COD-MART
              END-IF
              IF CNUF-MFOU NOT = SV2-CNUF 
                 MOVE ZERO TO GCOD-MART
              END-IF
           end-if.
            
           IF  isModifying = 1 
           AND SV2-FOU NOT = FOU-MART 
                   AND NOT = 0 THEN
      *       Test si fournisseur dans cde achat
              MOVE SV2-FOU TO W-FOU
              PERFORM Test-Cde-Achat
              IF W-OK = 0 THEN  
                 MOVE SV2-FOU TO FOU-MART
                 MODIFY Screen1-DaEf-FOU-MART, VALUE FOU-MART
              END-IF
           END-IF
      
           PERFORM Affiche-Detail
           .
       TEST-FOU-MART.
           MOVE FOU-MART TO COD-MFOU
           READ MXFOU INVALID KEY
      *        IF isSearching = 0 
               IF FOU-MART NOT = 0
                 MOVE "Fournisseur Inexistant" TO ACU-MSG-1
                 PERFORM MSG-INFO
               END-IF
               EXIT PARAGRAPH.
           PERFORM STAT
           IF FOU-MART = 0
              MOVE SPACES TO RAI-MFOU
           END-IF
           IF NTF-MFOU NOT = 0 AND NOT = 2
              MOVE "Nature incohérente: ce n'est pas un fournisseur d'Ar
      -       "ticles" TO ACU-MSG-1
              PERFORM MSG-INFO
           end-if.
           PERFORM READ-ZSP-FOU.

       Screen1-DaEf-UPR-MART-Ev-Msg-Validate.
           INQUIRE Screen1-DaEf-UPR-MART, VALUE IN UPR-MART
           IF UPR-MART NOT = SV-UPR
              MODIFY Screen1-St-1-Handle, TITLE =
              " Unité de prix modifiée: contrôle en cours ...."     
              MODIFY Screen1-St-1-Handle, TITLE = SPACES.
           IF UPR-MART = ZERO   
              MOVE "L'unité de prix ne doit pas être nulle" 
              TO ACU-MSG-1
              PERFORM MSG-INFO
              MOVE 1 TO UPR-MART
              MODIFY Screen1-DaEf-UPR-MART, VALUE UPR-MART
              MOVE EVENT-ACTION-FAIL TO EVENT-ACTION.
           PERFORM Affiche-Detail
           .
       Screen1-DaEf-UAC-MART-Ev-Msg-Validate.
           INQUIRE Screen1-DaEf-UAC-MART, VALUE IN UAC-MART

      *    PERFORM Affiche-Detail
           .
180517 Screen1-DaEf-UVE-MART-Ev-Msg-Validate.
           INQUIRE Screen1-DaEf-UVE-MART, VALUE IN UVE-MART
           .

       Screen1-DaEf-VOL-MART-Ev-Msg-Validate.
      *     INQUIRE Screen1-DaEf-VOL-MART, VALUE IN VOL-MART
           INQUIRE Screen1-DaEf-VOL-MART, VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==VOL-MART==.
           MODIFY Screen1-DaEf-VOL-MART, 
              VALUE VOL-MART
      *    PERFORM Affiche-Detail
           .
       Screen1-DaEf-POI-MART-Ev-Msg-Validate.
      *     INQUIRE Screen1-DaEf-POI-MART, VALUE IN POI-MART
           INQUIRE Screen1-DaEf-POI-MART, VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==POI-MART==.
           MODIFY Screen1-DaEf-POI-MART, 
              VALUE POI-MART

      *    PERFORM Affiche-Detail
           .
       Screen1-Ef-PTF-MART-Ev-Msg-Validate.
           INQUIRE Screen1-Ef-PTF-MART, VALUE IN ZC-NUM-ENT
           IF DEV-MFOU NOT = SPACES AND DEV-MFOU NOT = DEV-MPAR
      *          INQUIRE Screen1-Ef-PTF-MART, VALUE IN PDE-MART
              COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                 REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                           ==CPYNUM-FIC==  BY ==PDE-MART==.
                IF PDE-MART NOT = PDE-MART2 AND ISPV-MART NOT = 0
                   MOVE 0 TO ISPV-MART
                END-IF
           ELSE 
      *          INQUIRE Screen1-Ef-PTF-MART, VALUE IN PTF-MART
              COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                 REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                           ==CPYNUM-FIC==  BY ==PTF-MART==.
                MOVE ZERO TO PDE-MART
                IF PTF-MART NOT = PTF-MART2 AND ISPV-MART NOT = 0
                   MOVE 0 TO ISPV-MART.
           PERFORM Affiche-Detail-Prix
           .
       Screen1-Ef-PTFEUR-Ev-Msg-Validate. | POL 4 devise
      *     INQUIRE Screen1-Ef-PTFEUR, VALUE IN PDE-MART
           INQUIRE Screen1-Ef-PTFEUR, VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==PDE-MART==.
           PERFORM Affiche-Detail-Prix.
           .
       Screen1-DaEf-PAT-MART-Ev-Msg-Validate.
      *     INQUIRE Screen1-DaEf-PAT-MART, VALUE IN PAT-MART
           INQUIRE Screen1-DaEf-PAT-MART, VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==PAT-MART==.
           PERFORM Affiche-Detail-Prix
           .
       Screen1-Ef-CRF-MART-Ev-Msg-Validate.
           INQUIRE Screen1-Ef-CRF-MART, VALUE IN CRF-MART
           IF CRF-MART NOT = CRF-MART2 AND ISPV-MART NOT = 0
              MOVE 0 TO ISPV-MART
           END-IF
           PERFORM Affiche-Detail-Prix
           .
       Screen1-DaEf-REM-MART-Ev-Msg-Validate.
      *     INQUIRE Screen1-DaEf-REM-MART, VALUE IN REM-MART
           INQUIRE Screen1-DaEf-REM-MART, VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==REM-MART==.
           IF REM-MART NOT = REM-MART2 AND ISPV-MART NOT = 0
              MOVE 0 TO ISPV-MART
           END-IF
           PERFORM Affiche-Detail-Prix
           .
       Screen1-DaEf-NUU-MART-Ev-Msg-Validate.
      *     INQUIRE Screen1-DaEf-NUU-MART, VALUE IN NUU-MART
           INQUIRE Screen1-DaEf-NUU-MART, VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==NUU-MART==.
           MOVE NUU-MART TO Screen1-DaEf-NUU-MART-BUF
           MODIFY Screen1-DaEf-NUU-MART,
              VALUE Screen1-DaEf-NUU-MART-BUF

           IF NUU-MART NOT = SV-NUU
              MODIFY Screen1-St-1-Handle, TITLE =
              " Nbre UV/UA modifié: contrôle en cours ...." 
              PERFORM VERIF-MXARTSA2 THRU F-VERIF-MXARTSA2
              IF W-OK = 0
                 MOVE " Nbre UV/UA non modifiable: existence d'en-cours"
                 TO ACU-MSG-1
                 PERFORM MSG-INFO
                 MOVE SV-NUU TO NUU-MART
              END-IF
              MODIFY Screen1-St-1-Handle, TITLE = SPACES
           END-IF.
           IF NUU-MART = ZERO 
              MOVE "Le nbre d'UV/UA ne doit pas être nul" TO ACU-MSG-1
              PERFORM MSG-INFO
              MOVE 1 TO NUU-MART
              MODIFY Screen1-DaEf-NUU-MART, VALUE NUU-MART
              MOVE EVENT-ACTION-FAIL TO EVENT-ACTION.
           PERFORM Affiche-Detail-Prix
           .
       Screen1-Ef-PAC-MART-Ev-Msg-Validate.
      *     INQUIRE Screen1-Ef-PAC-MART, VALUE IN PAC-MART
           INQUIRE Screen1-Ef-PAC-MART, VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==PAC-MART==.
           IF PAC-MART NOT = PAC-MART2 AND ISPV-MART NOT = 0
              MOVE 0 TO ISPV-MART
           END-IF
           PERFORM Affiche-Detail-Prix
           .
       Screen1-Ef-COE-MART-Ev-Msg-Validate.
           INQUIRE Screen1-Ef-COE-MART, VALUE IN ZC-NUM-ENT
           IF POL-MART = 5
      *        INQUIRE Screen1-Ef-COE-MART, VALUE IN CPR-MART
              COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                 REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                           ==CPYNUM-FIC==  BY ==CPR-MART==.
           ELSE
      *        INQUIRE Screen1-Ef-COE-MART, VALUE IN COE-MART
              COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                 REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                           ==CPYNUM-FIC==  BY ==COE-MART==.
           END-IF
           IF POL-MART NOT = 5
           AND COE-MART NOT = COE-MART2 AND ISPV-MART NOT = 0
              MOVE 0 TO ISPV-MART
           END-IF
      
           IF  POL-MART NOT = 5
           AND ( CDFB = "C"
                     OR "Z" )
           AND COE-MART <> 0 THEN
              MOVE 1 TO W-COE-SAI
           ELSE
              MOVE 0 TO W-COE-SAI
           END-IF
      
           PERFORM Affiche-Detail-Prix
           .
       Screen1-DaEf-CRC-MART-Ev-Msg-Validate.
           INQUIRE Screen1-DaEf-CRC-MART, VALUE IN CRC-MART
           IF CRC-MART > 200 
270514*        MOVE " Valeur maxi = 200 " TO ACU-MSG-1
270514        MOVE " Valeur maxi = 199 " TO ACU-MSG-1
              PERFORM MSG-INFO
              MOVE Event-Action-Fail TO Event-Action
              EXIT PARAGRAPH
           END-IF
           .
       Screen1-DaEf-TXM-MART-Ev-Msg-Validate.
      *     INQUIRE Screen1-DaEf-TXM-MART, VALUE IN TXM-MART
           INQUIRE Screen1-DaEf-TXM-MART, VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==TXM-MART==.
           PERFORM Affiche-Detail-Prix
           .
       Screen1-DaEf-FUA-MART-Ev-Msg-Validate.
           INQUIRE Screen1-DaEf-FUA-MART, 
170316*        VALUE IN FUA-MART
170316        VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==FUA-MART==.           
           PERFORM Affiche-Detail-Prix
           .
       Screen1-DaEf-CFU-MART-Ev-Msg-Validate.
      *     INQUIRE Screen1-DaEf-CFU-MART, VALUE IN CFU-MART
           INQUIRE Screen1-DaEf-CFU-MART, VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==CFU-MART==.
           PERFORM Affiche-Detail-Prix
           .
       Screen1-DaEf-PFA-MART-Ev-Msg-Validate.
      *     INQUIRE Screen1-DaEf-PFA-MART, VALUE IN PFA-MART
           INQUIRE Screen1-DaEf-PFA-MART, VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==PFA-MART==.
           PERFORM Affiche-Detail-Prix
           .
       Screen1-DaEf-PVT-MART-Ev-Msg-Validate.
      *     INQUIRE Screen1-DaEf-PVT-MART, VALUE IN PVT-MART
           INQUIRE Screen1-DaEf-PVT-MART, VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==PVT-MART==.
           IF PVT-MART NOT = PVT-MART2 AND INDSPVT = 1
              MOVE 1 TO ISPV-MART
           END-IF
           IF INDARR = 1 THEN
              PERFORM VERIF-ARRONDI-PVT
           END-IF
           PERFORM Affiche-Detail-Prix
           MOVE TTC-MART TO TTC-MART2 | Pour éviter bug validation TTC en sortie de ce champ
           .
       VERIF-ARRONDI-PVT.
           MOVE 1 TO W-OK   
           MOVE PVT-MART TO PRIARR
           MOVE TVA-MFAM TO TVAARR
           PERFORM D-CALCUL-ARRONDI THRU F-CALCUL-ARRONDI
           IF PRIARR NOT = PVT-MART
              STRING "Prix Vte HT: Respecter l'arrondi au ",
                      W-NEWLINE, TAB-NIA(NIAARR),
                     TAB-MOA(MOAARR)  DELIMITED BY SIZE
              INTO ACU-MSG-1
              PERFORM MSG-INFO
              MOVE ZERO TO W-OK
           END-IF.
       Screen1-DaEf-TTC-MART-Ev-Msg-Validate.
      *     INQUIRE Screen1-DaEf-TTC-MART, VALUE IN TTC-MART
           INQUIRE Screen1-DaEf-TTC-MART, VALUE IN ZC-NUM-ENT
           COPY "W:/mistral/copy/Ef-Num-Ecr2Fic.cbl"
                REPLACING ==CPYNUM-ECR==  BY ==ZC-NUM-ENT==
                          ==CPYNUM-FIC==  BY ==TTC-MART==.
           IF TTC-MART NOT = TTC-MART2 AND INDSPVT = 1
              MOVE 2 TO ISPV-MART
              IF INDARR NOT = 2 AND TVA-MFAM NOT = 0
                 COMPUTE PVT-MART ROUNDED = TTC-MART
                      / (100 + TVA-MPAR(TVA-MFAM)) * 100
              END-IF
           END-IF
           IF INDARR = 2 THEN
              PERFORM VERIF-ARRONDI-TTC
           END-IF
           PERFORM Affiche-Detail-Prix
           .
       VERIF-ARRONDI-TTC.
           MOVE 1 TO W-OK
      **     MOVE TTC-MART TO PRIARR
           MOVE TTC-MART TO TTCARR | BS 13/09/07 TTCARR si INDARR = 3
           MOVE TVA-MFAM TO TVAARR
           MOVE 3 TO INDARR
           PERFORM D-CALCUL-ARRONDI THRU F-CALCUL-ARRONDI
           MOVE 2 TO INDARR
           IF TTCARR NOT = TTC-MART
                IF ISPV-MART NOT = 2
                     STRING "Prix Vte TTC: Respecter l'arrondi au ",
                            " "W-NEWLINE, TAB-NIA(NIAARR),
                            TAB-MOA(MOAARR) DELIMITED BY SIZE
                            INTO ACU-MSG-1
                     PERFORM MSG-INFO
                     MOVE ZERO TO W-OK
                ELSE STRING "Prix Vte TTC: Arrondi au ",
                            " " W-NEWLINE, TAB-NIA(NIAARR),
                            TAB-MOA(MOAARR) DELIMITED BY SIZE
                            INTO ACU-MSG-1
                     MOVE "non respecté ! Confirmez-vous ? "
                          TO ACU-MSG-2
                     PERFORM MSG-ON
                     IF ACU-RETURN-VALUE = 1      |Arrondi non respecté
020408*                    MOVE PRIARR TO PVT-MART | Non : remet le prix HT en fonction du TTC arrondi calculé et non celui saisi
020408                    COMPUTE PVT-MART ROUNDED = TTC-MART
                               / (100 + TVA-MPAR(TVA-MFAM)) * 100
                     ELSE
                          MOVE TTCARR TO TTC-MART  
                          MOVE ZERO TO W-OK
                     END-IF
           ELSE MOVE PRIARR TO PVT-MART | BS 13/09/07 (TTC ensuite recalculé
      ***                                 à partir du HT, le prix TTC saisi
      ***                                 était perdu)
           END-IF.

       Screen1-Cb-IMO-MART-BeforeProcedure.
           INQUIRE Screen1-Cb-IMO-MART, VALUE IN IMO-MART
           PERFORM Affiche-Detail
           .
       Screen1-Cb-DOC-MART-Link.  | avec une exception value
           INQUIRE Screen1-Cb-DOC-MART, VALUE IN DOC-MART
           PERFORM Affiche-Detail
           .
       Screen1-Cb-SAI-MART-BeforeProcedure. 
           INQUIRE Screen1-Cb-SAI-MART, VALUE IN SAI-MART
           .
       Screen1-Cb-MUL-MART-Link. | avec une exception value
           INQUIRE Screen1-Cb-MUL-MART, VALUE IN MUL-MART
           PERFORM Affiche-Detail
           .
       Screen1-Cb-ACHI-MART-Bef-Procedure.
           INQUIRE Screen1-Cb-ACHI-MART, VALUE IN ACHI-MART
           .
       Screen1-Pb-Mod-Link.
           IF CDFB NOT = "M" exit paragraph.
           If MOD-MART = 0
                Modify Screen1-Pb-ModN, visible 0
                Modify Screen1-Pb-Mod, visible 1
                MOVE 1 TO MOD-MART
           ELSE Modify Screen1-Pb-Mod, visible 0
                Modify Screen1-Pb-ModN, visible 1
                MOVE 0 TO MOD-MART
           END-IF
           .
       Screen1-Ef-CO1-MART-Ev-Msg-Validate.
           INQUIRE Screen1-Ef-CO1-MART, VALUE IN CO1-MART

           IF isSearching = 1 AND COD-MART NOT = SPACES THEN
               PERFORM START-MXART2
           END-IF
           PERFORM Affiche-Detail
           .
       Screen1-Ef-MARM-MART-Ev-Msg-Validate.
           INQUIRE Screen1-Ef-MARM-MART, VALUE IN MARM-MART
           INITIALIZE ENR-MMAR
           MOVE MARM-MART TO COD-MMAR
           READ MXMARQUE INVALID
                MOVE "Marque Inexistante" TO ACU-MSG-1
                PERFORM MSG-INFO.
           PERFORM STAT
           MOVE LIB-MMAR TO W-LIB-MARM-MMAR
           MODIFY Screen1-Ef-LIB-MARM-MMAR, VALUE = W-LIB-MARM-MMAR
           .
       Screen1-Ef-DES-MART-Ev-Msg-Validate.
           INQUIRE Screen1-Ef-DES-MART, VALUE IN DES-MART
           IF isSearching = 1 
290915     AND DES-MART <> DES-MART2
290915         PERFORM Recherche-Designation
290915         IF LK-SCODART-L-ART = SPACE
                  PERFORM START-MXART2
                  PERFORM Affiche-Detail
               end-if
           END-IF
           IF isCreating = 1 PERFORM Affiche-Detail
           END-IF
           .

       Recherche-Designation.
           INITIALIZE LK-SCODART-L
           INQUIRE Screen1-Ef-DES-MART, VALUE LK-SCODART-L-DES
           IF LK-SCODART-L-DES(1:3) = SPACE
      *        MOVE "Saisissez au moins 3 caractères SVP." to acu-msg-1
      *        perform msg-info 
              exit paragraph
           end-if

           IF W-ACTIV = 2 MOVE 1 TO LK-SCODART-L-LOC
           END-IF
           MOVE Cpte-Supprime TO LK-SCODART-L-ANN
           MOVE 3 TO LK-SCODART-L-RCF
           MOVE 7 TO LK-SCODART-L-TST
           CALL "scodart-l.acu" USING ZONE-PALM LK-SCODART-L
           CANCEL "scodart-l.acu"
           IF LK-SCODART-L-ART = SPACE
              EXIT PARAGRAPH
           END-IF
           MOVE LK-SCODART-L-ART TO COD-MART
           READ MXART
           PERFORM STAT
           PERFORM Affiche-Detail
           MODIFY Screen1-Ef-CO2-MART, VALUE CO2-MART
           MODIFY Screen1-Ef-CO1-MART, VALUE CO1-MART
           if sca-mpar = 1 move 184 to control-id
                      else move 185 to control-id
           end-if
           move 4 to accept-control
           PERFORM Position-Art2.

       Screen1-Ef-DE2-MART-Ev-Msg-Validate.
           INQUIRE Screen1-Ef-DE2-MART, VALUE IN DE2-MART
           .
       Screen1-Ef-TVA-MART-Bef-Procedure.
           MODIFY Screen1-St-1-Handle, TITLE =
              " Nomenclature produit / CEE".
       Screen1-Ef-TVA-MART-Aft-Procedure.
           MODIFY Screen1-St-1-Handle, TITLE = SPACES.
       Screen1-Ef-TVA-MART-Ev-Msg-Validate.
           INQUIRE Screen1-Ef-TVA-MART, VALUE IN TVA-MART
           .
       Screen1-Ef-PAY-MART-Bef-Procedure.
           MODIFY Screen1-St-1-Handle, TITLE =
              " Pays d'origine du produit".
       Screen1-Ef-PAY-MART-Aft-Procedure.
           MODIFY Screen1-St-1-Handle, TITLE = SPACES.
       Screen1-Ef-PAY-MART-Ev-Msg-Validate.

       Screen1-Pb-ListePays-LinkTo.
      **     INITIALIZE LK-LISTE
      **     MOVE PAY-MART TO LK-LISTE-COD(1) 
      **     CALL "../../mistral/o/pay-l.acu" USING ZONE-PALM LK-LISTE
      **     CANCEL "../../mistral/o/pay-l.acu"
      **     MOVE LK-LISTE-COD(1) TO PAY-MART 
      **     MODIFY Screen1-Ef-PAY-MART VALUE PAY-MART 
      **     PERFORM Screen1-Ef-PAY-MART-Ev-Msg-Validate. 
           .

       Screen1-Ef-MAR-MART-Ev-Msg-Validate.
           INQUIRE Screen1-Ef-MAR-MART, VALUE IN MAR-MART
           IF MAR-MART NOT = SPACES
              MOVE MAR-MART TO COD-MMAR
              READ MXMARQUE INVALID Move spaces to lib-mmar
                  MOVE "Marque inexistante" TO ACU-MSG-1
                  PERFORM MSG-INFO.
           PERFORM STAT.
           MOVE LIB-MMAR TO W-LIB-MAR-MMAR
           MODIFY Screen1-Ef-LIB-MAR-MMAR, VALUE W-LIB-MAR-MMAR
      *     PERFORM Affiche-Detail
           .

      *
       Screen1-Ef-TYP-MART-Ev-Msg-Validate.


       Screen1-Ef-GCOD-MART-Bef-Procedure.

       Screen1-Ef-GCOD-MART-Ev-Msg-Validate.
           .
       Screen1-Ef-RFI-MART-Ev-Msg-Validate.
           INQUIRE Screen1-Ef-RFI-MART, VALUE IN RFI-MART
021007
           IF RFIA-MPAR = 1 THEN
      *       Référence interne auto
              MOVE 0 TO I
              INSPECT RFI-MART TALLYING I 
                 FOR CHARACTERS BEFORE SPACE

              IF  I <> 0 
              AND RFI-MART(1:I) NUMERIC THEN
      *          Nombre sans espace devant
                 MOVE RFI-MART(1:I) TO RFIN-MART
              ELSE

                 IF RFIN-MART <> 0 THEN
      *             Nombre commençant par des espaces (formaté en 9(8) )
                    MOVE RFI-MART TO RFIN-MART
                 END-IF
                
              END-IF

           END-IF
021007
           IF isSearching = 1 THEN
               PERFORM START-MXART2
               PERFORM Affiche-Detail
               exit paragraph
           END-IF
           IF RFI-MART NOT = SPACE
                MOVE 1 TO W-IND
                PERFORM TEST-DOUB-ART THRU F-TEST-DOUB-ART
                IF W-NBR = 1 
                   move 52 to control-id
                   move 4 to accept-control
                end-if
           END-IF
           .

       Screen1-Ef-DAT-MART-Ev-Msg-Validate.
           COPY "W:/mistral/copy/Ef-Date10-Ecr2Fic.cbl"
                REPLACING ==CPYDAT-ECR== BY ==W-DAT-MART==
                          ==CPYDAT-FIC== BY ==DAT-MART==.
           MODIFY Screen1-Ef-DAT-MART, VALUE = W-DAT-MART
           .
       Screen1-Ef-RFN-MART-Ev-Msg-Validate.
           INQUIRE Screen1-Ef-RFN-MART, VALUE IN RFN-MART
           IF isSearching = 1 THEN
               PERFORM START-MXART2
               PERFORM Affiche-Detail
               exit paragraph
           END-IF
           IF RFN-MART NOT = SPACE
                MOVE 2 TO W-IND
                PERFORM TEST-DOUB-ART THRU F-TEST-DOUB-ART
                IF W-NBR = 1 
                   move 50 to control-id

                   move 4 to accept-control
                end-if
           END-IF
           .
      *  Duliquer la Référence Normalisée à partir de la réf. frn
       Screen1-Pb-DUP-RFN-Link.
           If REF-MART = RFN-MART OR RFN-MART = SPACES
              MOVE REF-MART TO RFN-MART
           ELSE MOVE "Dupliquer la référence fournisseur ? " 
                TO ACU-MSG-1
                PERFORM MSG-ON
                IF ACU-RETURN-VALUE = 2 EXIT PARAGRAPH
                ELSE MOVE REF-MART TO RFN-MART
                END-IF
           END-IF
           MODIFY Screen1-Ef-RFN-MART VALUE RFN-MART.
           .

       Screen1-Ef-CO2-MART-Ev-Msg-Validate.
           INQUIRE Screen1-Ef-CO2-MART, VALUE IN CO2-MART
           IF isSearching = 1 AND LK-SCODART-L-ART NOT = COD-MART
               INITIALIZE LK-SCODART-L
               INQUIRE Screen1-Ef-CO1-MART, VALUE IN CO1-MART
               MOVE CO1-MART TO LK-SCODART-L-IDF
               MOVE CO2-MART TO LK-SCODART-L-REF
               IF W-ACTIV = 2 MOVE 1 TO LK-SCODART-L-LOC
               END-IF
240112         MOVE Cpte-Supprime TO LK-SCODART-L-ANN
      *         MOVE 1 TO LK-SCODART-L-VTE   
220915         MOVE 3 TO LK-SCODART-L-RCF
300915
               MOVE 1 TO LK-SCODART-L-AFF
               MOVE AGS-MPAR TO LK-SCODART-L-AGE
300915
               CALL "../../mx/o/scodart-l.acu" USING 
                    ZONE-PALM LK-SCODART-L
               CANCEL "../../mx/o/scodart-l.acu"

               IF LK-SCODART-L-ART = SPACE  
   
                   MODIFY Screen1-Handle,   
                      ENABLED 0
                   PERFORM ACU-ScreenInex-Routine
                   MODIFY Screen1-Handle,   
                      ENABLED 1
 
                   EVALUATE ACU-Return-Value 
                   WHEN 1 
                      PERFORM START-MXART2
                      PERFORM Affiche-Detail
                      if ENR-MART = space PERFORM START-MXART2
                      end-if
                   WHEN 3
                      INITIALIZE       LK-VCF-C
                      MOVE CO2-MART TO LK-VCF-C-REF
                      MOVE "R"      TO LK-VCF-C-CHO
                      CALL   "vcf-c.acu" USING ZONE-PALM 
                                               LK-VCF-C
                      CANCEL "vcf-c.acu" 
                   WHEN OTHER
                      MOVE COD-MART TO Id-Fiche-Courante
                      MOVE SPACES TO ENR-MART 
                      PERFORM Affiche-Detail
                      MOVE Id-Fiche-Courante TO COD-MART
                      MODIFY Screen1-Ef-CO2-MART, VALUE CO2-MART
                      MODIFY Screen1-Ef-CO1-MART, VALUE CO1-MART
                      if sca-mpar = 1 move 184 to control-id
                                 else move 185 to control-id
                      end-if
                      move 4 to accept-control
                   END-EVALUATE
                   EXIT PARAGRAPH
               END-IF
               PERFORM Position-Art2
           ELSE
              IF CDFB = "C" THEN   
      *          Sinon impossible de créer les stocks en création
                 MOVE COD-MART TO Id-Fiche-Courante
              END-IF
           END-IF
           PERFORM Affiche-Detail
           .

       Position-Art2.
           MOVE 0 TO A-EOF
           MOVE LK-SCODART-L-ART TO COD-MART2
           READ MXART2 INVALID MOVE 1 TO A-EOF 
           END-READ
           PERFORM STAT
      * Ce read change la clé d'accés si accés sans identifiant (clé 5)         
           IF A-EOF = 0 THEN
               MOVE ENR-MART2 TO ENR-MART
               PERFORM START-MXART2
               PERFORM UNTIL A-EOF = 1
                       OR COD-MART2 = LK-SCODART-L-ART
                    READ MXART2 NEXT AT END
                       MOVE 1 TO A-EOF
                    END-READ
                 PERFORM STAT                   
                 PERFORM READ-MXARTLOC
               END-PERFORM
           END-IF
           IF A-EOF = 0
               MOVE COD-MART2 TO Id-Fiche-Courante
               MOVE ENR-MART2 TO ENR-MART W-ENR-MART-Original
               PERFORM READ-MXART
           END-IF.

       Screen1-Cm-ModeRecherche-Ex-Ntf-Selchange.
           EVALUATE EVENT-DATA-1
           WHEN 1 
              IF SCA-MPAR = 1 
                 MOVE 1 TO W-NUM-KEY-MXART2 |Code article Avec IDF
                 MOVE 184 TO CONTROL-ID
              ELSE            
                 MOVE 5 TO W-NUM-KEY-MXART2 |Code article Sans IDF
                 MOVE 185 TO CONTROL-ID
              END-IF
           WHEN 2 
              MOVE 2 TO W-NUM-KEY-MXART2    |Designation
              MOVE 45 TO CONTROL-ID
           WHEN 3 
              MOVE 4 TO W-NUM-KEY-MXART2    |Famille-Ss-Fam.
              MOVE 218 TO CONTROL-ID
           WHEN 4 
              MOVE 3 TO W-NUM-KEY-MXART2    |Code Frn + Réf.
              MOVE 34 TO CONTROL-ID
           WHEN 5 
              MOVE 7 TO W-NUM-KEY-MXART2    |Réf. Normalisée
              MOVE 50 TO CONTROL-ID
           WHEN 6 
              MOVE 6 TO W-NUM-KEY-MXART2    |Réf. Interne
              MOVE 52 TO CONTROL-ID
           END-EVALUATE

           MOVE 4 TO ACCEPT-CONTROL

           PERFORM START-MXART2.
           PERFORM Mode-Interrogation
           PERFORM Init-Soc
           MOVE SPACE TO LK-SCODART-L-ART
           PERFORM Affiche-Detail
           .
       Screen1-Ef-REF-MART-Bef-Procedure.
           MOVE REF-MART TO SV-REF.  

       Screen1-Ef-REF-MART-Ev-Msg-Validate.
           INQUIRE Screen1-Ef-REF-MART, VALUE IN REF-MART
           IF isSearching = 1 THEN
               PERFORM START-MXART2
           ELSE
               IF isCreating = 1
      
                   IF REF-MART NOT = SV-REF
                      MOVE 3 TO W-IND
                      PERFORM TEST-DOUB-ART THRU F-TEST-DOUB-ART
                      IF W-NBR = 1 
                         move 39 to control-id
                         move 4 to accept-control
                      end-if
                   END-IF
      
                   IF (REF-MART NOT = SV-REF AND COA-MPAR NOT = 1) 
                      |AND CO2-MART = SPACES                         | enlevé par Nath le 05/05/06 pour blocage chez Bonfils
061106                OR (COA-MPAR = 1 AND CO2-MART = SPACES)
                      PERFORM CAL-COD-MART THRU F-CAL-COD-MART
                   END-IF
                   IF COD-MART NOT = SPACES
                      MOVE ENR-MART TO W-ENR-MART-BUF
                      READ MXART NOT INVALID
                         IF  CANN-MART = 1
110310                   AND W-MODE-DUP = 0 THEN | pas si duplication article
                           PERFORM MSG-ART-REINTEGRE
                         ELSE
                           Move "Article Déjà existant !" TO ACU-MSG-1
                           PERFORM MSG-INFO
                           MOVE W-ENR-MART-BUF TO ENR-MART
110310*                    Evite de valider avec une référence erronée
                           MOVE SV-REF TO REF-MART
110310
                         END-IF
                      END-READ
                      PERFORM STAT
                   END-IF
               END-IF
           END-IF

           PERFORM Affiche-Detail
           .

       MSG-ART-REINTEGRE.
           STRING "Article supprimé le ", DANN-MART(7:2), "/",
                  DANN-MART(5:2), "/", DANN-MART(3:2), " par "
                  IANN-MART INTO ACU-MSG-1
                  MOVE "Article à réintégrer ? " TO ACU-MSG-2
           PERFORM MSG-ON
           IF ACU-RETURN-VALUE = 2 
                MOVE W-ENR-MART-BUF TO ENR-MART
           ELSE 
           |pour Topaz on ne reprend rien de l'ancienne fiche
300718          IF CLI-PALM = 851233 MOVE W-ENR-MART-BUF TO ENR-MART
300718          END-IF
                MOVE ZERO TO CANN-MART DANN-MART 
                MOVE SPACES TO IANN-MART
220118          
                MOVE 1 TO IND-REINTEGR
                PERFORM TEST-CATALOGUE THRU F-TEST-CATALOGUE
                MOVE 0 TO IND-REINTEGR
220118
                PERFORM CONTROLE-VALEURS
                IF isCreating = 0 
                    MOVE "M" TO CDFB
                    IF RFIA-MPAR = 1 THEN
      *                Numérotation automatique de la Référence Interne
                       PERFORM DECREM-RFI-MART
                    END-IF
                END-IF
           END-IF
           .

       Screen1-Ef-IDF-MART-Ev-Msg-Validate.
           INQUIRE Screen1-Ef-IDF-MART, VALUE IN CO1-MART
           IF CO1-MART NUMERIC 
              MOVE "L'identifiant ne doit pas être numérique"
              TO ACU-MSG-1 PERFORM MSG-INFO. 
           IF CO1-MART NUMERIC 
              MOVE "L'identifiant est obligatoire"
              TO ACU-MSG-1 PERFORM MSG-INFO.
           PERFORM Affiche-Detail
           .
       Screen1-Pb-Cancel-Ex-Cmd-Clicked.
           PERFORM Mistral-CloseCurrentWindow
           .
       Screen1-Pb-DOC-MART-LinkTo.
260907
           PERFORM Avant-Call
           IF W-OK = 0 EXIT PARAGRAPH
           END-IF
260907
110310
           IF  W-MODE-DUP = 1
           AND W-DUP-DOC = 1 THEN
              MOVE "Validez d'abord la duplication de l'article" 
                TO ACU-Msg-1
              PERFORM Msg-Info
              EXIT PARAGRAPH   
           END-IF
110310
           INITIALIZE LK-CDOCTEC
           MOVE "BA" TO LK-CDOCTEC-ORI
           MOVE Id-Fiche-Courante TO LK-CDOCTEC-CLE
           IF (CDFB = "C" OR "Z") MOVE "C" TO LK-CDOCTEC-CDF.

           CALL  "../../mx/o/cdoctec.acu" using ZONE-PALM, LK-CDOCTEC
           CANCEL "../../mx/o/cdoctec.acu"
           .
       Screen1-Pb-Stocks-LinkTo.
           IF Id-Fiche-Courante = SPACES OR ILV-MART = 1
              EXIT PARAGRAPH
           END-IF
           PERFORM Avant-Call
           IF W-OK = 0 EXIT PARAGRAPH
           END-IF
      *     IF CDFB = "C" 
      *          PERFORM Sauvegarde-Detail
      *          IF COD-MART = SPACE OR IsValid = 0 
      *               EXIT PARAGRAPH
      *          ELSE PERFORM Screen1-Pb-Modify-LinkTo
      *          END-IF               
      *     END-IF               
           INITIALIZE LK-ART-ASA
           MOVE Id-Fiche-Courante TO LK-ART-ASA-COD
           IF (CDFB = "C" OR "Z")
             MOVE "C"  TO LK-ART-ASA-CHO
           END-IF
240112*    MOVE Cpte-Supprime TO LK-ASA-C-ANN
           CALL  "../../mx/o/art-asa.acu" using ZONE-PALM, LK-ART-ASA
           CANCEL "../../mx/o/art-asa.acu"
           .
       Screen1-Ef-ZSC1-Ev-Msg-Validate.

           .
       Screen1-Pb-Liste-ZSC1-LinkTo.

           .
       Screen1-Ef-ZSC2-Ev-Msg-Validate.

           .
       Screen1-Pb-Liste-ZSC2-LinkTo.
           .
       Screen1-Ef-ZSC3-Ev-Msg-Validate.

           .
      * Liste valeurs zone spécifique 3 (/ Frn)
       Screen1-Pb-Liste-ZSC3-LinkTo.

           .
       Screen1-Ef-ZSC4-Ev-Msg-Validate.

           .
      * Liste valeurs zone spécifique 4 (/ Frn)
       Screen1-Pb-Liste-ZSC4-LinkTo.
           .

       Screen1-Pb-Compositions-LinkTo.
           IF isICAREFVisible = 1 and w-soc <> 0 and isModifying = 1
              move "Impossible en mode modification." to acu-msg-1
              perform msg-info
              exit paragraph
           end-if
 
           PERFORM Avant-Call
           IF W-OK = 0 EXIT PARAGRAPH
           END-IF
110310
           IF  W-MODE-DUP = 1
           AND W-DUP-DOC = 1 THEN
              MOVE "Validez d'abord la duplication de l'article" 
                TO ACU-Msg-1
              PERFORM Msg-Info
              EXIT PARAGRAPH   
           END-IF
110310
           .

       Screen1-Bef-Create.
           PERFORM Controle-Palmec
           PERFORM SAUVE-PALETTE
120218
PROTO *     MODIFY Screen1-Handle, lines = 56,16 
           IF  LK-ART-C-CHO = "C"
           AND LK-ART-C-COD(1:4) NUMERIC 
           AND CLI-PALM = 851233
           AND MXICAREF-PALM = 1
           AND NSO-PALM <> 9
              MOVE NSO-PALM TO SV-NSO-PALM
              MOVE 9 TO NSO-PALM
              PERFORM TRAIT-COBCAP THRU F-TRAIT-COBCAP
              MOVE SV-NSO-PALM TO NSO-PALM
           END-IF.
120218
           PERFORM Open-File-Rtn
           MOVE MXART-COB TO SV-MXART-COB
           move 0 to IsSocVisible  
           move space to W-texte-St 

           OPEN I-O MXPARAM
           PERFORM STAT
           MOVE 1 TO W-MXPARAM
           READ MXPARAM
           PERFORM STAT
           MOVE 2 TO W-COLOR-SOC
           MOVE AAS-MPAR TO IsSOCARTVisible

130819
           OPEN I-O MXAGENCE PERFORM STAT
           INITIALIZE       ENR-MAGC
           MOVE AGS-MPAR TO COD-MAGC

           READ MXAGENCE

           PERFORM STAT
           CLOSE MXAGENCE
130819

           MOVE 44 TO NUM-LINES
           move 1 to neuf-int occas-int
           move 0 to isICAREFVisible


      * Création à partir de VCF
           IF LK-ART-C-LINE = 9999
              MOVE LK-ART-C-AGE TO W-AGE-VCF
              MOVE 0 TO LK-ART-C-LINE LK-ART-C-COLUMN
           ELSE
              MOVE SPACE TO W-AGE-VCF
           END-IF
           IF LK-ART-C-LINE NOT = ZERO
              MOVE LK-ART-C-LINE TO INIT-LINE.
           IF LK-ART-C-COLUMN NOT = ZERO
              MOVE LK-ART-C-COLUMN TO INIT-COLUMN.
      ***---- Contrôle Autorisation Multiappro
      **     MOVE 25  TO LK-CPERMIS-LOG
      **     MOVE 242 TO LK-CPERMIS-RUB
      **     MOVE IDE-PALM TO LK-CPERMIS-IDE
      **     CALL "../../mistral/o/cpermis.acu" USING ZONE-PALM LK-CPERMIS
      **     CANCEL "../../mistral/o/cpermis.acu"
      **     MOVE LK-CPERMIS-PER TO AUTO-MULTIAPPRO
071114***---- Contrôle Autorisation Marque non renseignée /SCOMAS
      **     MOVE 25  TO LK-CPERMIS-LOG
      **     MOVE 310 TO LK-CPERMIS-RUB
      **     MOVE IDE-PALM TO LK-CPERMIS-IDE
      **     CALL "../../mistral/o/cpermis.acu" USING ZONE-PALM LK-CPERMIS
      **     CANCEL "../../mistral/o/cpermis.acu"
      **     MOVE LK-CPERMIS-PER TO AUTO-MARBLAN
110118***---- Contrôle Autorisation Création hors catalogue (Gonnin)
      **     MOVE 25  TO LK-CPERMIS-LOG
      **     MOVE 327 TO LK-CPERMIS-RUB
      **     MOVE IDE-PALM TO LK-CPERMIS-IDE
      **     CALL "../../mistral/o/cpermis.acu" USING ZONE-PALM LK-CPERMIS
      **     CANCEL "../../mistral/o/cpermis.acu"
      **     MOVE LK-CPERMIS-PER TO AUTO-CREHC
240215*--- Si call de art-c et création article non autorisée
           IF (LK-ART-C-CHO = "C" OR "F")
           AND CREAT-PALM = "X"
220118     AND AUTO-CREHC NOT = 2
              MOVE " <<PALME>> - Création article non autorisée"
              TO ACU-MSG-1
              PERFORM MSG-INFO
              PERFORM Acu-Exit-Rtn
           END-IF
220818***---- Contrôle Autorisation modification GENCOD
      **     MOVE 25  TO LK-CPERMIS-LOG
      **     MOVE 337 TO LK-CPERMIS-RUB
      **     MOVE IDE-PALM TO LK-CPERMIS-IDE
      **     CALL "../../mistral/o/cpermis.acu" USING ZONE-PALM LK-CPERMIS
      **     CANCEL "../../mistral/o/cpermis.acu"
      **     MOVE LK-CPERMIS-PER TO AUTO-MODGCOD
130819***---- Contrôle Autorisation "Visibilité des prix des fournisseurs non autorisés"
      **     MOVE 25       TO LK-CPERMIS-LOG
      **     MOVE 351      TO LK-CPERMIS-RUB
      **     MOVE IDE-PALM TO LK-CPERMIS-IDE
      **     CALL   "../../mistral/o/cpermis.acu" USING ZONE-PALM 
      **                                                LK-CPERMIS
      **     CANCEL "../../mistral/o/cpermis.acu"
      **     MOVE LK-CPERMIS-PER TO AUTO-VISU-PFNA.
270116     
           IF UPO-MPAR = 2  
                MOVE "Poids Unitaire" TO La-POI-MART 
           ELSE MOVE "Poids/Cnd Achat" TO La-POI-MART 
           END-IF

070819     IF HANDLE-PALM <> 0 THEN  
      *       Pour éviter le clignotement de l'écran repositionné
              MOVE 0 TO Screen1-Visible
           ELSE
              MOVE 1 TO Screen1-Visible
           END-IF
070819
           .

       Screen1-Aft-Routine.
           IF MENU-HANDLE <> 0
              CALL "W$MENU" USING WMENU-DESTROY, MENU-HANDLE
           END-IF
           PERFORM Close-File-Rtn
           PERFORM RESTORE-PALETTE
           .                                                             
       Screen1-Pb-ListeArticles-Link.
           INITIALIZE LK-MART-L
           MOVE Id-Fiche-Courante TO LK-MART-L-COD
           IF W-ACTIV = 2 MOVE "L" TO LK-MART-L-ACT
           END-IF                 
           MOVE 1 TO LK-MART-L-SER 
200112               LK-MART-L-IVT
           CALL  "../../mx/o/mart-l.acu" using ZONE-PALM, LK-MART-L
           CANCEL "../../mx/o/mart-l.acu"
           IF  LK-MART-L-COD NOT = SPACES 
210408     AND LK-MART-L-COD <> Id-Fiche-Courante
               MOVE LK-MART-L-COD TO Id-Fiche-Courante COD-MART
                                 COD-MART2
               PERFORM READ-MXART
181108*        Initialise parcours
               PERFORM START-MXART2
      *        Repositionne sur article sélectionné dans la liste
               PERFORM 
                 UNTIL (A-EOF = 1) OR ((COD-MART2 = LK-MART-L-COD
                                       AND ( (CANN-MART2 = 0 
240112                                        AND Cpte-Supprime = 0 )
240112                                       OR Cpte-Supprime = 1 ) )
                       AND  (((ILV-MART2 = 0 OR 2) AND W-ACTIV = 1) 
                          OR ((ILV-MART2 = 1 OR 2) AND W-ACTIV = 2))
                       AND  (((NAT-MART2 = 0 OR 1) AND NEUF-INT = 1) 
                         OR (NAT-MART2 = 2 AND OCCAS-INT = 1))   
                          )
                    READ MXART2 NEXT END MOVE 1 TO A-EOF END-READ
                    PERFORM STAT
                    PERFORM READ-MXARTLOC
               END-PERFORM
               MOVE LK-MART-L-COD TO Id-Fiche-Courante 
               PERFORM READ-MXART
181108
               PERFORM Affiche-Detail
           END-IF
           .
       Screen1-Pb-ListeArtFou-Link.
           INITIALIZE LK-MART-L
200112     MOVE 1 TO LK-MART-L-IVT
170306     IF W-NUM-KEY-MXART2 = 3 THEN
      *       Références d'un fournisseur
              MOVE FOU-MART TO LK-MART-L-FOU
              MOVE "F"      TO LK-MART-L-KEY
              IF W-ACTIV = 2 MOVE "L" TO LK-MART-L-ACT
              END-IF
170306     ELSE
170306*       Articles d'une famille
170306        MOVE GRA-MART TO LK-MART-L-GRA
170306        MOVE FAM-MART TO LK-MART-L-FAM
170306        MOVE "G"      TO LK-MART-L-KEY
170306     END-IF
           CALL  "../../mx/o/mart-l.acu" using ZONE-PALM, LK-MART-L
           CANCEL "../../mx/o/mart-l.acu"
           IF LK-MART-L-COD NOT = SPACES  
               MOVE LK-MART-L-COD TO Id-Fiche-Courante COD-MART
                                 COD-MART2
               PERFORM READ-MXART
           END-IF
           PERFORM START-MXART2
           PERFORM Affiche-Detail
           .
       Screen1-Pb-Photo-Link.
           if COD-MART = spaces then exit paragraph 
           end-if
           
           initialize lk-att
           move STE-MPAR to lk-att-soc                
           move "ART" to lk-att-typ
           move COD-MART to lk-att-cle
           string DES-MART delimited by "    "
                  " (" delimited by size
                  COD-MART delimited by "         "
                  ")" delimited by size
                  into lk-att-name
           string IMAGE-DIR delimited by "  "
                  "/mx" STE-MPAR "/fi/ART" delimited by size
                  into lk-att-folder
220818     
           IF CDFB = "G" THEN
              MOVE "I"  TO lk-att-cho
           ELSE
220818     
              move CDFB to lk-att-cho
220818     END-IF
           call "../../mx/o/att.acu" using zone-palm lk-att
           cancel "../../mx/o/att.acu"

311213     PERFORM Affiche-Image
           .

       READ-MXPARZSP.


      *======  Vérification du stock avant annulation article
       CAL-STOCK-MXARTSA.
           OPEN I-O MXARTSA2.
           PERFORM STAT
           MOVE ID-FICHE-COURANTE TO COD-MASA2
           MOVE 0 TO W-STOCK
           START MXARTSA2 KEY NOT < CLE3-MASA2 INVALID
              GO F-CAL-STOCK-MXARTSA.
       LECT-STOCK-MXARTSA2.
           READ MXARTSA2 NEXT AT END GO F-CAL-STOCK-MXARTSA.
           PERFORM STAT.
           IF COD-MASA2 NOT = ID-FICHE-COURANTE GO F-CAL-STOCK-MXARTSA.
           IF STO-MASA2 NOT = 2 ADD QSTM-MASA2(1) TO W-STOCK.
           GO LECT-STOCK-MXARTSA2.
       F-CAL-STOCK-MXARTSA.
           CLOSE MXARTSA2.

      *======  Lecture ARTSA, Pour voir si déjà créé
       TEST-EXIST-MXARTSA.
           OPEN I-O MXARTSA2.
           PERFORM STAT
           MOVE ID-FICHE-COURANTE TO COD-MASA2
           MOVE 0 TO  W-OK
           START MXARTSA2 KEY NOT < CLE3-MASA2 INVALID
                 GO F-TEST-EXIST-MXARTSA.
       LECT-EXIST-MXARTSA2.
           READ MXARTSA2 NEXT NO LOCK AT END GO F-TEST-EXIST-MXARTSA.
           PERFORM STAT.
           IF COD-MASA2 NOT = ID-FICHE-COURANTE GO F-TEST-EXIST-MXARTSA.
           MOVE 1 TO W-OK.
       F-TEST-EXIST-MXARTSA.
           CLOSE MXARTSA2.

      *======  Lecture ARTSA et Vérif si QCF est à zero et si pas
      *        de livraison en attente de facturation
      *        pour autoriser la modif de NUU-ART
       VERIF-MXARTSA2.
           OPEN I-O MXARTSA2.
           PERFORM STAT
           MOVE ID-FICHE-COURANTE TO COD-MASA2
           MOVE 1 TO  W-OK
           START MXARTSA2 KEY NOT < CLE3-MASA2 INVALID
                 GO F-VERIF-MXARTSA2.
       LECT-VERIF-MXARTSA2.
           READ MXARTSA2 NEXT NO LOCK AT END GO TO F-VERIF-MXARTSA2.
           PERFORM STAT.
           IF COD-MASA2 NOT = ID-FICHE-COURANTE GO F-VERIF-MXARTSA2.
           IF QCF-MASA2 = ZERO GO LECT-VERIF-MXARTSA2.
190808     
           MOVE SPACE TO ACU-Msg-2
           STRING "Agence"
                  " "
                  AGE-MASA2
             INTO ACU-Msg-2
           MOVE "Quantité en commande fournisseur" TO ACU-Msg-3
190808                  
           MOVE 0 TO W-OK.
       F-VERIF-MXARTSA2.
           CLOSE MXARTSA2.
           IF W-OK = 1
              PERFORM VERIF-MXLLF THRU F-VERIF-MXLLF.
           IF W-OK = 1
              PERFORM VERIF-MXLFF THRU F-VERIF-MXLFF.
      * Vérif si article en attente de facturation frn
       VERIF-MXLLF.
       F-VERIF-MXLLF.

           .
      * Vérif si article sur facture Frn en attente
       VERIF-MXLFF.
       F-VERIF-MXLFF.
      *--------------------------------------------------*
      * Test référence existante dans catalogue Fournis. *
      * pour reprise automatique désign. , remise et PTF *
      *--------------------------------------------------*
       TEST-CATALOGUE.
      *     OPEN I-O MXCATFOU
      *     PERFORM STAT
           MOVE ZERO TO W-POI-MCTF W-GCOD-MCTFE
           MOVE REF-MART TO W-REF REF-MCTF.
           MOVE FOU-MART TO FOU-MCTF W-FOU
           READ MXCATFOU NOT INVALID PERFORM MEP-CATFOU
                    GO F-TEST-CATALOGUE.
           PERFORM STAT
           MOVE SPACES TO C-REF.
           MOVE 1 TO W.
           PERFORM MEP-REF-CTF VARYING Z FROM 1 BY 1 UNTIL Z > 21.
           MOVE C-REF TO REF-MCTF                         
           READ MXCATFOU INVALID
                IF  (( LK-ART-C-CALL = 1  
                                   OR 2 )
                AND LK-ART-C-REF NOT = SPACES)
                OR IND-REINTEGR = 1
                     GO F-TEST-CATALOGUE
                ELSE PERFORM MSG-CATALOGUE THRU F-MSG-CATALOGUE
                     GO F-TEST-CATALOGUE
                END-IF.
           PERFORM STAT.
           PERFORM MEP-CATFOU.
       F-TEST-CATALOGUE.
      *     CLOSE MXCATFOU.
      *
       LECT-REMFOU.

       MEP-REF-CTF.
           IF W-REF(Z:1) NOT = SPACES MOVE W-REF(Z:1) TO C-REF(W:1)
              ADD 1 TO W.
       RECH-REMFOU-ART.
           
       RECH-COEFOU-ART.
           
       RECH-REMFOU-CRC.
            

      *--- Recherche et application du coefficient paramétré dans la grille 
      *    de transches de prix si paramétré en PGX 
      *    Si pas de grille pour le frn, on prend la grille générale
010310 RECH-TABCOE.
010310 F-RECH-TABCOE.

      *  Récupération des infos du catalogue frn pour mise à jour de l'enreg de ART
       MEP-CATFOU.
           IF DES-MART = SPACES 
           OR (( LK-ART-C-CALL = 1 OR 2) AND LK-ART-C-CHO = "C")
220118     OR IND-REINTEGR = 1
              MOVE 1 TO CRE-AVEC-CTF
              MOVE DES-MCTF TO DES-MART
              IF UAC-MCTF NOT = ZERO MOVE UAC-MCTF TO UAC-MART END-IF

300518        IF GRA-MCTF <> ZERO AND FAM-MCTF <> ZERO
                 MOVE GRA-MCTF TO GRA-MART
                 MOVE FAM-MCTF TO FAM-MART
                 PERFORM TEST-EXIST-GFA-FWK
300518        END-IF
110118        PERFORM MEP-CATFOUEXT

              MOVE POI-MCTF TO W-POI-MCTF
              IF IPO-MFAM = 1 AND POI-MCTF NOT = ZERO
                 COMPUTE POI-MART = (POI-MCTF / 1000)
              END-IF
              IF IPO-MFAM = 2 AND POI-MCTF NOT = ZERO
                 COMPUTE POI-MART = (POI-MCTF / 1000000)
              END-IF

080415        IF TVA-MCTF <> SPACES MOVE TVA-MCTF TO TVA-MART
              END-IF
              IF PAY-MCTF <> SPACES MOVE PAY-MCTF TO PAY-MART
080415        END-IF
              IF POL-MART = 6 MOVE PAT-MCTF TO PAT-MART
              END-IF
              IF PVT-MCTF NOT = ZERO                   | Cas où le prix de vente est mémorisé dans le catalogue fournisseur
                 MOVE PVT-MCTF TO PVT-MART
                 MOVE 1 TO ISPV-MART
                 PERFORM Calcule-PVT
              END-IF  
              IF DEV-MCTF = ZERO AND (DEV-MFOU = SPACES OR = DEV-MPAR)
                   IF POL-MART = 1 OR 2 OR 3 OR 5 OR 6
                        MOVE PRI-MCTF TO PTF-MART
                   ELSE MOVE PRI-MCTF TO PAC-MART
                   END-IF
              ELSE IF DEV-MCTF = 1 AND
                      (DEV-MFOU NOT = SPACES AND NOT = DEV-MPAR)
                      MOVE PRI-MCTF TO PDE-MART
                   END-IF
              END-IF
170118
              IF AUTO-CREHC = 2 OR IND-REINTEGR = 1
                 MOVE REF-MART TO SV-REF
                 PERFORM Affiche-Detail-Prix
              END-IF
170118
           END-IF.
           PERFORM TEST-GFA-FWK.    | Mise en place/controle GRA et FAM  

      *  Si Réf Créée à partir du catalogue Frn: Mise a jour des zones spécifiques
      *  à partir des zones observation de CATFOU 
       MAJ-CAT-MXZSPSOC.

       MEP-CATFOUEXT.

       TEST-GFA-FWK.
           IF GRA-MCTF = ZERO OR FAM-MCTF = ZERO EXIT PARAGRAPH
           END-IF.
           IF GRA-MART = ZERO MOVE GRA-MCTF TO GRA-MART
           END-IF.
           IF FAM-MART = ZERO MOVE FAM-MCTF TO FAM-MART
           END-IF.
           PERFORM TEST-EXIST-GFA-FWK
           DISPLAY Screen1-Ef-GRA-MART.
           DISPLAY Screen1-Ef-LIB-GRA-MART
           DISPLAY Screen1-Ef-FAM-MART.
           DISPLAY Screen1-Ef-LIB-FAM-MART

           IF GRA-MART NOT = GRA-MCTF OR FAM-MART NOT = FAM-MCTF
              STRING "Famille article différente du catalogue ("
                      GRA-MCTF , "-", FAM-MCTF, ")" DELIMITED BY SIZE
                      INTO ACU-MSG-1
              MOVE "A modifier ?" TO ACU-MSG-2
              PERFORM MSG-ON
              IF ACU-RETURN-VALUE = 1
                  MOVE GRA-MCTF TO GRA-MART
                  MOVE FAM-MCTF TO FAM-MART
              END-IF
              PERFORM TEST-EXIST-GFA-FWK
220118
              IF W-OK = 1 AND AUTO-CREHC = 2
                 MODIFY Screen1-Ef-GRA-MART, VALUE GRA-MART
                 MODIFY Screen1-Ef-FAM-MART, VALUE FAM-MART
                 PERFORM Screen1-Ef-GRA-MART-Ev-Msg-Validate
                 PERFORM Screen1-Ef-FAM-MART-Ev-Msg-Validate
              END-IF
220118
           END-IF
           IF W-OK = ZERO 
              MOVE "Famille ou Ss-Famille article non créée "
              TO ACU-MSG-1
              PERFORM MSG-INFO
           END-IF.

       TEST-EXIST-GFA-FWK.
           MOVE GRA-MART TO GRA-MGFA GRA-MFAM
           MOVE ZERO     TO FAM-MGFA
           MOVE 1        TO W-OK
           READ MXGRAFAM INVALID MOVE ZERO TO W-OK
                MOVE SPACES TO LIB-MGFA.
           PERFORM STAT.
           MOVE LIB-MGFA TO W-LIB-GRA-MART.
           MOVE FAM-MART TO FAM-MGFA
           READ MXGRAFAM INVALID MOVE ZERO TO W-OK
                MOVE SPACES TO LIB-MGFA.
           PERFORM STAT
           MOVE LIB-MGFA TO W-LIB-FAM-MART. 
           MOVE FAM-MART TO FAM-MFAM
           READ MXFAMART INVALID MOVE ZERO TO W-OK.
           PERFORM STAT.

       MSG-CATALOGUE.
           MOVE W-FOU  TO FOU-MCTF
           MOVE SPACES TO REF-MCTF
           START MXCATFOU KEY NOT < CLE1-MCTF INVALID 
              GO F-MSG-CATALOGUE.
           READ MXCATFOU NEXT AT END GO F-MSG-CATALOGUE
           END-READ.
           PERFORM STAT.
           IF FOU-MCTF NOT = W-FOU GO F-MSG-CATALOGUE.
           MOVE " Référence inexistante dans le catalogue fournisseur" 
           TO ACU-MSG-1
           IF AUTO-CREHC NOT = 2
              MOVE "Souhaitez-vous visualiser le catalogue ? " 
              TO ACU-MSG-2
              PERFORM MSG-ON
              IF ACU-RETURN-VALUE = 2 GO F-MSG-CATALOGUE
              END-IF
           ELSE
              PERFORM MSG-INFO
           END-IF.
           MOVE "L"      TO LK-VCF-C-CHO
           MOVE W-FOU    TO LK-VCF-C-FOU
           MOVE REF-MART TO LK-VCF-C-REF
           CALL "../../mx/o/vcf-c.acu" USING ZONE-PALM, LK-VCF-C
           CANCEL "../../mx/o/vcf-c.acu".
           IF LK-VCF-C-REF = SPACE GO F-MSG-CATALOGUE.
           IF AUTO-CREHC = 2
              MOVE LK-VCF-C-REF TO REF-MCTF
              MOVE W-FOU        TO FOU-MCTF
              READ MXCATFOU INVALID GO F-MSG-CATALOGUE
              END-READ
              PERFORM STAT
           END-IF
           STRING " Référence --> ", " " LK-VCF-C-REF DELIMITED BY SIZE
                 , " à créer ? " DELIMITED BY SIZE INTO ACU-MSG-1 
           PERFORM MSG-ON
           IF ACU-RETURN-VALUE = 2 GO F-MSG-CATALOGUE.
           MOVE LK-VCF-C-REF TO REF-MCTF
           MOVE W-FOU        TO FOU-MCTF
           READ MXCATFOU INVALID MOVE SPACES TO ENR-MCTF.
           PERFORM STAT
           MOVE LK-VCF-C-REF TO REF-MART.
           PERFORM CAL-COD-MART THRU F-CAL-COD-MART
           PERFORM MEP-CATFOU.
       F-MSG-CATALOGUE.
           EXIT.

      *  Décrémentation du dernier N° d'article (si Numérotation Automatique)
       DECREM-DNO-MART.
           MOVE 1 TO W-MXPARAM
           READ MXPARAM LOCK INVALID
              MOVE "Lecture PARAM" TO ACU-MSG-2
              GO ERREUR.
           PERFORM STAT
           IF IND-STAT = 1 GO DECREM-DNO-MART.
           IF W-NUMD = NUMD-MPAR 
              ADD -1 TO NUMD-MPAR
              REWRITE ENR-MPAR 
              INVALID 
                 MOVE "Réécriture PARAM" TO ACU-MSG-2 
                 GO ERREUR
              END-REWRITE
              PERFORM STAT
           ELSE
              UNLOCK MXPARAM
           END-IF
           .      
      *----------------------------------------------------------------
      *  Test composition Article (suite call art-compo)
      *   Recalcul PTF et PAC Article en fonction de la composition
      *----------------------------------------------------------------
       TEST-COMPO.
       F-TEST-COMPO.
           EXIT.
      *---------------------------*
      *  Annulation Composition   *
      *---------------------------*
       DEL-MXNOMART.
       F-DEL-MXNOMART.

      *    

140616 Screen1-Pb-PRESENCE-Link.
      *------------------------*
           IF COD-MART = SPACES 
           OR CDFB = "C" THEN
              EXIT PARAGRAPH
           END-IF

           PERFORM ACU-ScreenPRES-Routine
161018     PERFORM Color-Bt-Presence
           .

       Avant-Call.
           IF CDFB <> "C" MOVE 1 TO W-OK EXIT PARAGRAPH
           END-IF
           PERFORM Sauvegarde-Detail
           IF Event-Action = Event-Action-Fail THEN
               MOVE 0 TO W-OK
               EXIT PARAGRAPH
           END-IF

           MOVE "Z" TO CDFB
           MOVE 1 TO W-OK
           .
       Mis-EnregOccupe.
      *---------------*
           COPY "W:\mistral/copy/Mis-EnregOccupe.cbl".
           .
      *  Clic sur bouton Création Gencod
       Screen1-Pb-CREAT-GCOD-Link.
           MOVE 2 TO IND-GENCOD
           IF GCOD-MART = ZERO MOVE ZERO TO W-NUMD.
           PERFORM CREAT-GENCOD
           PERFORM Affiche-Detail
           .

       Affiche-Image.
           move 0 to w-cntPhoto w-cntAttach
           if cod-mart = space exit paragraph
           end-if

           move "ART" to ra-ori
           move COD-MART TO ra-cle
           move ste-mpar to ra-soc                
           perform Recherche-Attach
           if w-cntAttach > 0
                 Modify Screen1-Pb-photo, BITMAP-HANDLE TROMBO324-JPG,
                                          TITLE "Documents attachés"
           else
                 Modify Screen1-Pb-photo, BITMAP-HANDLE TROMBON24-JPG,
                                          TITLE "Documents attachés"
           end-if
           .

       Test-Anref.
      *     IF COD-MART = SPACE
      *        MODIFY Screen1-Pb-Anref, 
      *                  BITMAP-HANDLE ANCREFE24-JPG
      *     ELSE
      *        OPEN I-O MXANREF
      *        PERFORM STAT
      *        MOVE COD-MART TO COD-MANR
      *        READ MXANREF KEY CLE4-MANR 
      *             INVALID MODIFY Screen1-Pb-Anref, 
      *                     BITMAP-HANDLE ANCREFE24-JPG
      *         NOT INVALID MODIFY Screen1-Pb-anref, 
      *                     BITMAP-HANDLE ANCREF324-JPG
      *        END-READ
      *        PERFORM STAT
      *        CLOSE MXANREF
      *     END-IF.
      *
      * Screen1-Pb-Chgref-Link.
      *     PERFORM POPUP-ANREF THRU F-POPUP-ANREF. 
      *
      * POPUP-ANREF.
      *     IF MENU-HANDLE <> 0
      *        CALL "W$MENU" USING WMENU-DESTROY, MENU-HANDLE
      *     END-IF
      *     OPEN I-O MXANREF
      *     PERFORM STAT
      *     OPEN I-O MXANREF2
      *     PERFORM STAT
      *     IF COD-MART = SPACE GO F-POPUP-ANREF.
      *
      *     MOVE 0 TO TMP-9-3
      *     INITIALIZE ENR-MANR2
      *     MOVE CO1-MART TO COA1-MANR2
      *     MOVE CO2-MART TO COA2-MANR2
      *     MOVE 99999999 TO DAT-MANR2
      *     IF SCA-MPAR = 1 AND CO1-MART NOT = SPACE
      *        START MXANREF2 KEY NOT > CLE5-MANR2 
      *              INVALID GO F-POPUP-ANREF
      *     ELSE
      *        START MXANREF2 KEY NOT > CLE6-MANR2 
      *              INVALID GO F-POPUP-ANREF
      *     END-IF.
      * Bcl-Verif-Anref.
      *     READ MXANREF2 PREVIOUS END GO F-POPUP-ANREF
      *     END-READ
      *     PERFORM STAT
      *     IF COA2-MANR2 NOT = CO2-MART
      *     OR (SCA-MPAR = 1 AND CO1-MART NOT = SPACE
      *         AND COA1-MANR2 NOT = CO1-MART)
      *          GO F-POPUP-ANREF
      *     END-IF
      *     MOVE COD-MANR2 TO SV-COD
      *     MOVE ORD-MANR2 TO SV-ORD
      *     MOVE 0 TO W-NB-ANREF
      *     PERFORM TRAIT-MXANREF THRU F-TRAIT-MXANREF.
      *     GO Bcl-Verif-Anref.
      * F-POPUP-ANREF.
      *     IF TMP-9-3 <> 0 
      *        CALL "W$MENU" USING WMENU-POPUP, MENU-HANDLE
      *     END-IF
      *     CLOSE MXANREF MXANREF2.
      *
      * TRAIT-MXANREF.      
      *     MOVE SV-COD TO COA-MANR
      *     MOVE 999999999 TO DAT-MANR
      *     START MXANREF KEY NOT > CLE5-MANR INVALID GO FIN-MXANREF.
      * BCL-MXANREF.
      *     READ MXANREF PREVIOUS END GO FIN-MXANREF. 
      *     PERFORM STAT
      *     IF COA-MANR NOT = SV-COD GO FIN-MXANREF.
      *     IF ORD-MANR = SV-ORD GO FIN-MXANREF.
      *     PERFORM VARYING I FROM 1 BY 1
      *        UNTIL I > W-NB-ANREF
      *        IF COD-MANR = W-TAB-ANREF(I) THEN
      *           GO F-TRAIT-MXANREF
      *        END-IF
      *     END-PERFORM
      *     ADD 1 TO W-NB-ANREF
      *     MOVE COD-MANR TO W-TAB-ANREF(W-NB-ANREF) SV-COD.
      *     IF TMP-9-3 = 0
      *        CALL "W$MENU" USING WMENU-NEW-POPUP GIVING MENU-HANDLE
      *        IF MENU-HANDLE = ZERO
      *           GO F-TRAIT-MXANREF
      *        END-IF
      *     END-IF
      *     MOVE SPACE TO W-LIB
      *     MOVE DAT-MANR TO D-SAMJ
      *     PERFORM CONVDAT-SAMJ-JMSA
      *     MOVE SPACE TO W-LIBZ
      *     STRING L-DAT8 ": " DELIMITED BY SIZE
      *            REA-MANR DELIMITED BY "   "
      *            " -> " RER-MANR DELIMITED BY SIZE INTO W-LIBZ
      *     ADD 1 TO TMP-9-3
      *     CALL "W$MENU" USING WMENU-ADD, MENU-HANDLE, 0, 0, 
      *        W-LIBZ, TMP-9-3
      *     GO TRAIT-MXANREF.
      * FIN-MXANREF.
      * F-TRAIT-MXANREF.

       Test-Cde-Achat.
      *--------------* Test présence article dans commande d'achat avec ancien code fournisseur 

           .
      *===============================================================*
      *  Vérification des doublons sur référence interne & Normalisée *
      *===============================================================*
       TEST-DOUB-ART.
           OPEN INPUT MXART3 PERFORM STAT
           MOVE ZERO TO W-NBR
           IF W-IND = 1
                MOVE RFI-MART TO RFI-MART3
                START MXART3 KEY NOT < CLE6-MART3 INVALID 
                               GO S-TEST-DOUB-ART
           ELSE          
                IF W-IND = 3
                    MOVE REF-MART TO REF-MART3
                    START MXART3 KEY NOT < CLE8-MART3 INVALID
                               GO S-TEST-DOUB-ART
                ELSE
                    MOVE RFN-MART TO RFN-MART3
                    START MXART3 KEY NOT < CLE7-MART3 INVALID
                               GO S-TEST-DOUB-ART.
       BCL-TEST-DOUB-ART.
           READ MXART3 NEXT END GO S-TEST-DOUB-ART.
           PERFORM STAT
           IF W-IND = 1 AND RFI-MART3 NOT = RFI-MART GO S-TEST-DOUB-ART.
           IF W-IND = 2 AND RFN-MART3 NOT = RFN-MART GO S-TEST-DOUB-ART.
           IF W-IND = 3 AND REF-MART3 NOT = REF-MART GO S-TEST-DOUB-ART.
           IF COD-MART3 = COD-MART GO BCL-TEST-DOUB-ART.
           IF ILV-MART3 = 1 GO BCL-TEST-DOUB-ART.
           IF CANN-MART3 = 1 GO BCL-TEST-DOUB-ART.
           ADD 1 TO W-NBR.
       S-TEST-DOUB-ART.
           CLOSE MXART3.
           IF W-NBR = 0 GO F-TEST-DOUB-ART.
           
           IF W-IND = 1 
              MOVE " Référence interne déjà existante pour l'article"
              TO ACU-MSG-1.
           IF W-IND = 2
              MOVE " Référence normalisée déjà existante pour l'article"
              TO ACU-MSG-1.
           IF W-IND = 3 
              MOVE " Référence déjà existante pour l'article"
              TO ACU-MSG-1.
           String COD-MART3 DELIMITED BY "   "
                  "  - Voir cette référence ?  "
                  "Non = Suite" INTO ACU-MSG-2.
           PERFORM MSG-ONA
           IF ACU-RETURN-VALUE = 3 MOVE 1 TO W-NBR GO F-TEST-DOUB-ART.
           IF ACU-RETURN-VALUE = 2 MOVE 0 TO W-NBR GO F-TEST-DOUB-ART.

           INITIALIZE LK-ART-C
           INQUIRE Screen1-Handle, SCREEN COLUMN IN LK-ART-C-COLUMN
           INQUIRE Screen1-Handle, SCREEN LINE IN LK-ART-C-LINE
           ADD 50 TO LK-ART-C-COLUMN
           ADD 50 TO LK-ART-C-LINE
           MOVE 1         TO LK-ART-C-CALL
           MOVE "I"       TO LK-ART-C-CHO
           MOVE COD-MART3 TO LK-ART-C-COD
           CALL   "../../mx/o/art-c.acu" USING ZONE-PALM LK-ART-C
           CANCEL "../../mx/o/art-c.acu"
           MOVE 1 TO W-NBR
           GO F-TEST-DOUB-ART.
       F-TEST-DOUB-ART.
           EXIT.

300817*===============================================================*
      *  Recherche du dernier code article attribué dans la famille   *
      *===============================================================*
       RECH-D-CODE.
           OPEN INPUT MXART3 PERFORM STAT
           MOVE ZERO TO W-NUMA
           MOVE CO1-MART TO CO1-MART3
           MOVE CO2-MART(1:W-NB) TO CO2-MART3
           MOVE "9999" TO CO2-MART3(W-NB + 1:4)
           START MXART3 KEY NOT > CLE1-MART3 INVALID 
                               GO S-RECH-D-CODE
           END-START.
       BCL-RECH-D-CODE.
           READ MXART3 PREVIOUS END GO S-RECH-D-CODE.
           PERFORM STAT
           IF CO1-MART <> CO1-MART3 
           OR CO2-MART(1:W-NB) <> CO2-MART3(1:W-NB)
              GO S-RECH-D-CODE.
           IF CO2-MART3(W-NB + 1:4) NUMERIC
              MOVE CO2-MART3(W-NB + 1:4) TO W-NUMA
              GO S-RECH-D-CODE.
           GO BCL-RECH-D-CODE.
       S-RECH-D-CODE.
           CLOSE MXART3.
           ADD 1 TO W-NUMA
           MOVE W-NUMA TO CO2-MART(W-NB + 1:4).
           MOVE CO2-MART TO REF-MART.
       F-RECH-D-CODE.
           EXIT.

      *======  Duplication Article Stock
       DUPLIC-ARTSA.
      *------------*     
           OPEN I-O MXARTSA2.
           PERFORM STAT
           MOVE W-DUP TO COD-MASA2

           START MXARTSA2 KEY NOT < CLE3-MASA2 
           INVALID
              MOVE 1 TO W-EOF
           NOT INVALID
              MOVE 0 TO W-EOF
           END-START

           PERFORM STAT

           PERFORM
              UNTIL W-EOF = 1 

              READ MXARTSA2 NEXT 
              AT END 
                 MOVE 1 TO W-EOF
              END-READ

              PERFORM STAT

              IF COD-MASA2 NOT = W-DUP THEN
                 MOVE 1 TO W-EOF
              END-IF

              IF W-EOF = 0 THEN
                 INITIALIZE        ENR-MASA
                 MOVE COD-MART  TO COD-MASA
                 MOVE AGE-MASA2 TO AGE-MASA
                 MOVE CAS-MASA2 TO CAS-MASA
                 MOVE STO-MASA2 TO STO-MASA
                 MOVE ETI-MASA2 TO ETI-MASA
                 MOVE REA-MASA2 TO REA-MASA
                 MOVE MIN-MASA2 TO MIN-MASA
                 MOVE MAX-MASA2 TO MAX-MASA
                 MOVE DAM-MASA2 TO DAM-MASA
                 MOVE OBS-MASA2 TO OBS-MASA

160109           ACCEPT DME-MASA FROM CENTURY-DATE
                 WRITE ENR-MASA 
                 INVALID 
                    MOVE "Problème" TO Acu-Msg-1
                    MOVE "Ecriture ARTSA" TO ACU-MSG-2
                    MOVE CLE1-MASA        TO ACU-MSG-3 
                    PERFORM MSG-ERREUR
                 END-WRITE

                 PERFORM STAT

              END-IF

           END-PERFORM

           CLOSE MXARTSA2
           .

       DUPLIC-DOC.
      *----------*
           OPEN I-O MXDOCTEC    PERFORM STAT
           OPEN I-O MXDOCTEC2   PERFORM STAT
           OPEN I-O MXDOCTECEXT PERFORM STAT

           INITIALIZE    ENR-MDTE2
           MOVE "BA"  TO ORI-MDTE2
           MOVE W-DUP TO CLE-MDTE2

           START MXDOCTEC2 KEY NOT < CLE1-MDTE2 
           INVALID
              MOVE 1 TO W-EOF
           NOT INVALID
              MOVE 0 TO W-EOF
           END-START

           PERFORM STAT

           PERFORM
              UNTIL W-EOF = 1 

              READ MXDOCTEC2 NEXT 
              AT END 
                 MOVE 1 TO W-EOF
              END-READ

              PERFORM STAT

              IF ORI-MDTE2 NOT = "BA"
              OR CLE-MDTE2 NOT = W-DUP THEN
                 MOVE 1 TO W-EOF
              END-IF

              IF W-EOF = 0 THEN
                 MOVE ENR-MDTE2 TO ENR-MDTE
                 MOVE COD-MART  TO CLE-MDTE

                 WRITE ENR-MDTE 
                 INVALID 
                    MOVE "Problème" TO Acu-Msg-1
                    MOVE "Ecriture DOCTEC" TO ACU-MSG-2
                    MOVE CLE1-MDTE         TO ACU-MSG-3 
                    PERFORM MSG-ERREUR
                 END-WRITE
                 PERFORM STAT
190110
                 INITIALIZE ENR-MDTEX
                 MOVE ORI-MDTE2 TO ORI-MDTEX
                 MOVE CLE-MDTE2 TO CLE-MDTEX
                 MOVE LIG-MDTE2 TO LIG-MDTEX
                 READ MXDOCTECEXT NOT INVALID 
                    MOVE ORI-MDTE TO ORI-MDTEX
                    MOVE CLE-MDTE TO CLE-MDTEX
                    WRITE ENR-MDTEX
                    END-WRITE
                 END-READ
                 PERFORM STAT
190110
              END-IF

           END-PERFORM

           CLOSE MXDOCTEC
                 MXDOCTEC2
                 MXDOCTECEXT
           .

       EFFACE-DOC.
      *----------*
           OPEN I-O MXDOCTEC    PERFORM STAT
           OPEN I-O MXDOCTECEXT PERFORM STAT

           INITIALIZE                ENR-MDTE
           MOVE "BA"              TO ORI-MDTE
           MOVE Id-Fiche-Courante TO CLE-MDTE
           START MXDOCTEC KEY NOT < CLE1-MDTE
           INVALID
              MOVE 1 TO W-EOF
           NOT INVALID
              MOVE 0 TO W-EOF
           END-START
           PERFORM STAT
           PERFORM UNTIL W-EOF = 1 
              READ MXDOCTEC NEXT LOCK
              AT END 
                 MOVE 1 TO W-EOF
              END-READ
              PERFORM STAT
              IF IND-STAT = 1 THEN
                 MOVE "DOC TECHNIQUE" TO ScreenOccupe-Fic
                 MOVE CLE1-MDTE       TO ScreenOccupe-Cle
                 PERFORM Mis-EnregOccupe
                 EXIT PERFORM CYCLE
              END-IF
              IF ORI-MDTE NOT = "BA"
              OR CLE-MDTE NOT = Id-Fiche-Courante THEN
                 UNLOCK MXDOCTEC
                 MOVE 1 TO W-EOF
              END-IF
              IF W-EOF = 0 THEN
                 DELETE MXDOCTEC
                 INVALID 
                    MOVE "Delete DOCTEC" TO ACU-MSG-2
                    MOVE CLE1-MDTE       TO ACU-MSG-3 
                    GO ERREUR
                 END-DELETE
                 PERFORM STAT
190110
                 INITIALIZE ENR-MDTEX
                 MOVE ORI-MDTE TO ORI-MDTEX
                 MOVE CLE-MDTE TO CLE-MDTEX
                 MOVE LIG-MDTE TO LIG-MDTEX
                 READ MXDOCTECEXT NOT INVALID 
                    DELETE MXDOCTECEXT
                    END-DELETE   
                 END-READ
                 PERFORM STAT
190110
              END-IF
           END-PERFORM
           CLOSE MXDOCTEC MXDOCTECEXT
           .

       DUPLIC-MUL.
      *----------*


       EFFACE-MUL.
      *----------*
           .

       DUPLIC-COMPO.
            .

       EFFACE-COMPO.
      *------------*
      *
       DUPLIC-ARTLOC.
       F-DUPLIC-ARTLOC.

       DUPLIC-TLOART.
       F-DUPLIC-TLOART.


      *  Incrémentation du dernier N° interne si Numérotation Automatique
       INCREM-RFI-MART.
      *---------------*
           MOVE 1 TO W-MXPARAM

           READ MXPARAM LOCK
           INVALID
              MOVE "Lecture PARAM" TO ACU-MSG-2
              GO ERREUR
           END-READ

           PERFORM STAT

           MOVE "PARAMETRE" TO ScreenOccupe-Fic
           MOVE SPACE       TO ScreenOccupe-Cle
           PERFORM Mis-EnregOccupe

           IF IND-STAT = 1 GO INCREM-RFI-MART.

           ADD 1 TO DRFI-MPAR 

           REWRITE ENR-MPAR 
           INVALID 
              MOVE "Réécriture PARAM" TO ACU-MSG-2
              GO ERREUR
           END-REWRITE
           PERFORM STAT

           MOVE DRFI-MPAR TO W-RFI
                             RFIN-MART

           READ MXART KEY CLE6-MART
           NOT INVALID
      *       Doublon
              GO INCREM-RFI-MART
           END-READ

           PERFORM STAT
           .
      *  Décrémentation du dernier N° interne si Numérotation Automatique
       DECREM-RFI-MART.
      *---------------*
           MOVE 1 TO W-MXPARAM

           READ MXPARAM LOCK 
           INVALID
              MOVE "Lecture PARAM" TO ACU-MSG-2
              GO ERREUR
           END-READ

           PERFORM STAT

           MOVE "PARAMETRE" TO ScreenOccupe-Fic
           MOVE SPACE       TO ScreenOccupe-Cle
           PERFORM Mis-EnregOccupe

           IF IND-STAT = 1 GO DECREM-RFI-MART.

           IF W-RFI = DRFI-MPAR  
              ADD -1 TO DRFI-MPAR 

              REWRITE ENR-MPAR 
              INVALID 
                 MOVE "Réécriture PARAM" TO ACU-MSG-2 
                 GO ERREUR
              END-REWRITE
              PERFORM STAT
              MOVE 0 TO W-RFI
           ELSE
              UNLOCK MXPARAM
           END-IF
           .


      ******************************************************************
      *                SCREENINEX     article inexistant
      ******************************************************************
      *
       ScreenInex-Pb-Oui-Link.
      *----------------------*
           MOVE 1 TO ACU-Return-Value 
           PERFORM ACU-ScreenInex-Exit
           .
      *
       ScreenInex-Pb-Non-Link.
      *----------------------*
           MOVE 2 TO ACU-Return-Value
           PERFORM ACU-ScreenInex-Exit
           .
      *
       ScreenInex-Pb-Cat-Link.
      *----------------------*
           MOVE 3 TO ACU-Return-Value
           PERFORM ACU-ScreenInex-Exit
           .
      *
       ScreenInex-Aft-Initdata.
      *-----------------------*
120819     MOVE ScreenInex-HANDLE TO MCF-HANDLE-FS
120819     PERFORM MisCentreFenetre
      *    Oui : bouton par défaut (seul moyen...)
           MOVE 3 TO CONTROL-ID   
           MOVE 4 TO ACCEPT-CONTROL
           .
      ******************************************************************

      *                SCREENDUP   Duplication article
      ******************************************************************
120819 ScreenDup-Aft-Initdata.
      *----------------------*
           MOVE ScreenDup-HANDLE TO MCF-HANDLE-FS
           PERFORM MisCentreFenetre
           .
      *
       ScreenDup-Bef-Create.
      *--------------------*
           MOVE COD-MART TO W-DUP
           INITIALIZE ENR-MART2

           IF COD-MART <> SPACE THEN
              MOVE W-DUP TO COD-MART2

              READ MXART2
              INVALID
                 MOVE SPACE TO ENR-MART2
              END-READ

              PERFORM STAT

              IF CANN-MART2 = 1 THEN
                 MOVE SPACE TO ENR-MART2
              END-IF

           END-IF
260907
           MOVE 0 TO W-DUP-MUL
                     W-DUP-INO

           PERFORM Sel-Dup
260907
           .

       Sel-Dup.
      *-------*
           IF DOC-MART2 = 0 THEN
              MOVE 0 TO isDupDocVisible
                        W-DUP-DOC
           ELSE
              MOVE 1 TO isDupDocVisible
                        W-DUP-DOC
           END-IF

           IF MUL-MART2 = 0 THEN
              MOVE 0 TO isDupMulVisible
           ELSE
              MOVE 1 TO isDupMulVisible
           END-IF

           IF INO-MART2 = 0 THEN
              MOVE 0 TO isDupInoVisible
           ELSE
              MOVE 1 TO isDupInoVisible
           END-IF
           .
       
       Affi-Dup.
      *--------*
           PERFORM Sel-Dup


           DISPLAY ScreenDup
           .
      *
       ScreenDup-Ef-DU2-Aft-Procedure.
      *------------------------------*           
           IF SCA-MPAR = 1 THEN
              INQUIRE ScreenDup-Ef-DU1, 
                 VALUE IN W-DU1
           END-IF

           INQUIRE ScreenDup-Ef-DU2, 
              VALUE IN W-DU2

           IF W-DU1 NUMERIC 
           OR W-DU2 = SPACE 
              EXIT PARAGRAPH
           END-IF

           INITIALIZE    LK-SCODART-L
           MOVE W-DU1 TO LK-SCODART-L-IDF
           MOVE W-DU2 TO LK-SCODART-L-REF
           MOVE 1     TO LK-SCODART-L-VTE
      *    Lance fenêtre recherche article
           CALL   "scodart-l.acu" 
              USING ZONE-PALM LK-SCODART-L
           CANCEL "scodart-l.acu"

           IF LK-SCODART-L-ART = SPACE THEN
              EXIT PARAGRAPH
           END-IF

           MOVE LK-SCODART-L-ART TO W-DUP
           MODIFY ScreenDup-Ef-DU1, 
              VALUE W-DU1
           MODIFY ScreenDup-Ef-DU2, 
              VALUE W-DU2

           PERFORM Controle-DUP

           PERFORM Affi-Dup
           .
      *
       ScreenDup-Pb-Liste-Link.
      *-----------------------*           
           INITIALIZE LK-MART-L
200112     MOVE 1 TO LK-MART-L-IVT
      *    Lance fenêtre recherche article
           CALL   "../../mx/o/mart-l.acu" USING ZONE-PALM LK-MART-L
           CANCEL "../../mx/o/mart-l.acu"

           IF LK-MART-L-COD = SPACE
              EXIT PARAGRAPH
           END-IF

           MOVE LK-MART-L-COD TO W-DUP
           MODIFY ScreenDup-Ef-DU1, 
              VALUE W-DU1
           MODIFY ScreenDup-Ef-DU2, 
              VALUE W-DU2

           PERFORM Controle-DUP

           PERFORM Affi-Dup
           .
      *

       ScreenDup-Pb-Valider-Link.
      *-------------------------*
           PERFORM Controle-DUP

           IF W-OK = 0 THEN
              EXIT PARAGRAPH
           END-IF

           PERFORM ACU-ScreenDup-Exit
           .
      *
       ScreenDup-Pb-Annuler-Link.
      *-------------------------*
           MOVE 0 TO W-OK

           MOVE SPACE TO ENR-MART2

           PERFORM ACU-ScreenDup-Exit
           .

       Controle-DUP.
      *------------*
           INITIALIZE ENR-MART2
           MOVE 1 TO W-OK
           MODIFY ScreenDup-Ef-DES,
              VALUE SPACE
           
           IF W-DU1 NUMERIC 
           OR W-DU2 = SPACE THEN
              MOVE 0 TO W-OK
              MOVE "Code erroné !" TO ACU-MSG-1
              PERFORM MSG-Info  
              EXIT PARAGRAPH
           END-IF

           MOVE W-DUP TO COD-MART2

           READ MXART2
           INVALID
              MOVE 0 TO W-OK
              MOVE "Article inexistant !" TO ACU-MSG-1
              MOVE COD-MART2              TO ACU-MSG-2
              PERFORM MSG-Info  
              EXIT PARAGRAPH
           END-READ

           PERFORM STAT

           IF CANN-MART2 = 1 THEN
              MOVE 0 TO W-OK
              COPY "W:/mistral/copy/Ef-Date10-Fic2Ecr.cbl"
                 REPLACING ==CPYDAT-FIC== BY ==DANN-MART2==
                           ==CPYDAT-ECR== BY ==Ef-Date-Ecr==.
              STRING "Article annulé le "
                     Ef-Date-Ecr INTO ACU-Msg-1
              STRING "Par "
                     IANN-MART2 INTO ACU-Msg-2
              PERFORM Msg-Info
              EXIT PARAGRAPH
           END-IF

           MODIFY ScreenDup-Ef-DES,
              VALUE DES-MART2

           .
      ***  Vérif GENCOD pas déjà existant
       DVERIF-GCOD-EXI.
           OPEN I-O MXART3
           PERFORM STAT
           MOVE GCOD-MART TO GCOD-MART3
           START MXART3 KEY NOT< CLE9-MART3 INVALID
                                            INITIALIZE ENR-MART3
                                            GO FVERIF-GCOD-EXI.
       BVERIF-GCOD-EXI.
           READ MXART3 NEXT AT END INITIALIZE ENR-MART3
                                   GO FVERIF-GCOD-EXI.
           PERFORM STAT
           IF GCOD-MART3 NOT = GCOD-MART INITIALIZE ENR-MART3
                                         GO FVERIF-GCOD-EXI.
           IF COD-MART3 = COD-MART GO BVERIF-GCOD-EXI.
           IF CANN-MART3 = 1 GO BVERIF-GCOD-EXI.
       FVERIF-GCOD-EXI.
           CLOSE MXART3.

061008 MAJ-EDITAR.
       F-MAJ-EDITAR.

       Affiche-Pb-Tarce.

           .
       Affich-Pb-Artloc.
           .

      ******************************************************************
       ERREUR.
           MOVE "Problème" TO Acu-Msg-1
           PERFORM MSG-ERREUR
           PERFORM CLOSE-FILE-RTN
           PERFORM RESTORE-PALETTE
           GO ACU-EXIT-RTN.
      ******************************************************************
      *
       Screen1-Rb-Act2-Ev-Cmd-Clicked.
           modify Screen1-Cb-Neuf, Visible 0, value 1
           modify Screen1-Cb-Occas, Visible 0, value 1
      *     modify Screen1-Fr-GPMO, Visible 0
           move 1 to neuf-int occas-int
           .
      *
       Screen1-Rb-Act1-Ev-Cmd-Clicked.
           MOVE 1 TO gpmo-mpar  
           modify Screen1-Cb-Neuf, Visible gpmo-mpar
           modify Screen1-Cb-Occas, Visible gpmo-mpar
      *     modify Screen1-Fr-GPMO, Visible gpmo-mpar
           .

       Screen1-DaEf-SOC-MART-Ev-Msg-Validate.
      *     INQUIRE Screen1-DaEf-SOC-MART, VALUE IN SOC-MART
      *     MOVE CXSOC-COB TO SV-COB
      *     if soc-mart = 0 
      *        move "Toutes" TO W-NOMSOC-MART
      *        modify Screen1-DaEf-NOMSOC-MART, VALUE W-NOMSOC-MART
      *        if w-soc = 0 exit paragraph
      *        end-if
      *        INSPECT CXSOC-COB REPLACING ALL LK-NUMSOC BY W-SOC 
      *     else
      *        INSPECT CXSOC-COB REPLACING ALL LK-NUMSOC BY SOC-MART
      *     end-if
      *     OPEN INPUT CXSOC
      *     MOVE SV-COB TO CXSOC-COB
      *     PERFORM TEST-STATUS THRU FIN-TEST-STATUS
      *     IF IND-STAT = 2
      *        move "Société non trouvée" to acu-msg-1
      *        perform msg-erreur
      *        modify Screen1-DaEf-SOC-MART, VALUE space
      *        move 0 to soc-mart
      *        move space to W-NOMSOC-MART
      *        modify Screen1-DaEf-NOMSOC-MART, VALUE W-NOMSOC-MART
      *        exit paragraph
      *     end-if
      *     close CXSOC
      *     IF isCreating = 1 PERFORM Affiche-Detail
      *     END-IF
      *     perform Move-Nom-SOC-MART
           .


       Remp-Gd-Soc.

       Move-Nom-SOC-MART.
      *     move "Toutes" to W-NOMSOC-MART
      *     MOVE CXSOC-COB TO SV-COB
      *     if soc-mart <> 0
      *        INSPECT CXSOC-COB REPLACING ALL LK-NUMSOC BY soc-mart
      *     else
      *        INSPECT CXSOC-COB REPLACING ALL LK-NUMSOC BY W-SOC
      *     end-if
      *     OPEN INPUT CXSOC
      *     move sv-cob to CXSOC-COB
      *     PERFORM TEST-STATUS THRU FIN-TEST-STATUS
      *     IF IND-STAT not = 2 
      *        move 1 to w-cxsoc
      *        read cxsoc
      *        perform stat
      *        if soc-mart <> 0 move nom-csoc to W-NOMSOC-MART
      *        end-if
      *     end-if
      *     close cxsoc
      *   
      *     IF isICAREFVisible = 1
      *        move space to tmp-file-process1
      *        string "TARIF" " " nom-csoc delimited by "   " 
      *        into tmp-file-process1
      *        modify Screen1-La-TarifIca, title tmp-file-process1
      *     end-if
      *
      *     if Id-Fiche-Courante = space 
      *        move space to W-NOMSOC-MART
      *     end-if
      *     modify Screen1-DaEf-NOMSOC-MART, VALUE W-NOMSOC-MART
           .
      *
       Screen1-Gd-SOC-Ev-Msg-Goto-Cell.
           if gd-soc-cursor-y <> 0 
              modify Screen1-Gd-SOC(gd-soc-cursor-y), row-color = 0
           end-if
           move event-data-2 to gd-soc-cursor-y
           if soc-mart <> 0 
           or ( cdfb <> "I"
220818           AND <> "G" )              
              move event-action-fail to event-action
              exit paragraph
           end-if
           modify Screen1-Gd-SOC(gd-soc-cursor-y), 
              row-color = W-Row-High-Color
           inquire Screen1-Gd-SOC(gd-soc-cursor-y, 1), cell-data w-soc
           move SV-MXART-COB to mxart-cob
           INSPECT mxart-cob REPLACING ALL LK-NUMSOC BY w-soc
           close mxart
           open i-o mxart
           perform stat
           move SV-MXART-COB to mxart-cob
           move 1 to IsSocVisible


           perform READ-MXART
           perform Affiche-Detail
           modify Screen1-Gd-SOC(gd-soc-cursor-y), 
              row-color = W-Row-High-Color
           move event-action-fail to event-action.

       Init-Soc.
           IF isICAREFVisible = 1
              move SV-MXART-COB to mxart-cob
              close mxart
              open i-o mxart
              perform stat
              move 0 to w-soc IsSocVisible
              move 0 to gd-soc-cursor-y
           end-if
           .
      *
       Screen1-Pb-RetourRef-Link.
           perform Init-Soc
           perform READ-MXART
           perform Affiche-Detail
           .

       Mep-Texte-St1.
           if soc-mart = 0 and IsIcarefVisible = 1
           and Id-Fiche-Courante <> space
              move
               "Double-cliquez sur une ligne du tableau pour accéder au
      -        "détail du tarif de la société"
              to W-texte-St
           else
              move space to W-texte-St
           end-if
           modify Screen1-St-1-Handle, TITLE = W-texte-St
           .

       SAUVE-PALETTE.
           COPY "W:/mistral/copy/palette-save.cbl"..

       RESTORE-PALETTE.
           COPY "W:/mistral/copy/palette-restore.cbl"..

       MEP-Champs-Num.
      *--------------* Suite mise en place Ef-Num-Ecr2Fic les "Value Variable" des champs avec décimal ont été enlevés 
           MODIFY Screen1-DaEf-NUU-MART,
              VALUE Screen1-DaEf-NUU-MART-BUF
           MODIFY Screen1-Ef-PTF-MART,
              VALUE Screen1-Ef-PTF-MART-BUF
           MODIFY Screen1-DaEf-REM-MART,
              VALUE Screen1-Ef-REM-MART-BUF
           MODIFY Screen1-Ef-PAC-MART,
              VALUE Screen1-Ef-PAC-MART-BUF
           MODIFY Screen1-Ef-COE-MART,
              VALUE Screen1-Ef-COE-MART-BUF
           MODIFY Screen1-DaEf-PVT-MART,
              VALUE Screen1-DaEf-PVT-MART-BUF
           MODIFY Screen1-DaEf-PAT-MART,
              VALUE Screen1-DaEf-PAT-MART-BUF
           MODIFY Screen1-DaEf-TXM-MART,
              VALUE Screen1-DaEf-TXM-MART-BUF
           MODIFY Screen1-DaEf-PFA-MART,
              VALUE Screen1-DaEf-PFA-MART-BUF
           MODIFY Screen1-DaEf-CFU-MART,
              VALUE Screen1-DaEf-CFU-MART-BUF
           MODIFY Screen1-Ef-PTFEUR,
              VALUE Screen1-Ef-PTFEUR-BUF
           MODIFY Screen1-DaEf-TTC-MART,
              VALUE Screen1-DaEf-TTC-MART-BUF
           MODIFY Screen1-DaEf-VOL-MART,
              VALUE Screen1-DaEf-VOL-MART-BUF
           MODIFY Screen1-DaEf-POI-MART,
              VALUE Screen1-DaEf-POI-MART-BUF
           .

       TEST-COMPL.
           MOVE 0 TO W-EXI-ACP
           IF COD-MART = SPACE EXIT PARAGRAPH
           END-IF.

       Color-Bt-Equiv.
           MOVE "E" TO W-TYP-ACP
           PERFORM TEST-COMPL.
      *     if W-EXI-ACP > 0
      *         Modify Screen1-Pb-Equiv, BITMAP-HANDLE EQUIVA324-JPG
      *     else
      *         Modify Screen1-Pb-Equiv, BITMAP-HANDLE EQUIVAL24-JPG
      *     end-if.

       Color-Bt-Echanges.
           MOVE "V" TO W-TYP-ACP
           PERFORM TEST-COMPL.
      *     if W-EXI-ACP > 0
      *         Modify Screen1-Pb-Echanges, BITMAP-HANDLE ECHAST324-JPG
      *     else
      *         Modify Screen1-Pb-Echanges, BITMAP-HANDLE ECHASTD24-JPG
      *     end-if.

       Color-Bt-Equivb.
           MOVE "C" TO W-TYP-ACP
           PERFORM TEST-COMPL.
      *     if W-EXI-ACP > 0
      *         Modify Screen1-Pb-Equivb, BITMAP-HANDLE COMPLE324-JPG
      *     else
      *         Modify Screen1-Pb-Equivb, BITMAP-HANDLE COMPLEM24-JPG
      *     end-if.

161018 Color-Bt-Presence.
           PERFORM TEST-NOMART
           if W-EXI-ACP > 0
               Modify Screen1-Pb-Presence, BITMAP-HANDLE RECHER324-jpg
           else
               Modify Screen1-Pb-Presence, BITMAP-HANDLE RECHERC24-jpg
           end-if.

161018 TEST-NOMART.
           .

       CLIGNOTE.
      *--------*
           IF Id-Fiche-Courante = SPACES 
      *        MODIFY Screen1-La-ACHI,
      *           COLOR 2
              MODIFY Screen1-Rb-3-TAR-MART,
                 COLOR   2
                 ENABLED IsModifying2
              EXIT PARAGRAPH
           END-IF

           IF W-CLIGNOTE = 1 THEN
              MOVE 0 TO W-CLIGNOTE
           ELSE
              MOVE 1 TO W-CLIGNOTE
           END-IF

           MOVE 2 TO W-COL-CLIGNOTE

           IF  ACHI-MART = 1 
           AND W-CLIGNOTE = 1 THEN
              MOVE 13 TO W-COL-CLIGNOTE
           END-IF

      *     MODIFY Screen1-La-ACHI,
      *        COLOR W-COL-CLIGNOTE

           MOVE 2 TO W-COL-CLIGNOTE
           MOVE IsModifying2 TO W-ENA-CLIGNOTE

           IF  W-TAR-MART = 3
           AND W-CLIGNOTE = 1 THEN
              MOVE 13 TO W-COL-CLIGNOTE

              IF IsModifying2 = 0 THEN
      *          Radio bouton grisé : on peut pas changer sa couleur
                 MOVE 1 TO W-ENA-CLIGNOTE
              END-IF
              
           END-IF

           MODIFY Screen1-Rb-3-TAR-MART,
              COLOR   W-COL-CLIGNOTE
              ENABLED W-ENA-CLIGNOTE
           .

       MAJ-TRACE-CHGSFA.
           MOVE SPACE TO STAT-CMD
           STRING "echo 'Changement FSA'  Code Art."
                  " " 
                  COD-MART
                  " Ancien FSA: "
                  SV-GFA
                  " nature: "
                  SV-NAT
                  " -  Nouvelle FSA: "
                  CLE4-MART
                  " nature: "
                  NAT-MGFA
                  " par "
                  IDE-PALM
                  " le "
                  DAT-SYS-M
                  " à "
                  HEU-SYS-M
                  ":"
                  MIN-SYS-M
                  "  /ART >> "
                  " "                     DELIMITED BY "    "
                  G-DIR                   DELIMITED BY " "
                  "/mistral/ferr/ART-CHGFSA"
                  INTO STAT-CMD
           CALL "C$SYSTEM" USING STAT-CMD.
      ******************************************************************
      *    ScreenPres : Présence article
       ScreenPres-Aft-Initdata.
      *-----------------------*
120819     MOVE ScreenPres-HANDLE TO MCF-HANDLE-FS
120819     PERFORM MisCentreFenetre

           MOVE 2 TO Event-Data-2
           MOVE 0 TO ScreenPres-Gd-1-Cursor-Y

           PERFORM ScreenPres-Gd-1-Ev-Msg-Goto-Cell
           .

      *
       ScreenPres-Pb-Quitter-Link.
      *--------------------------*
           PERFORM Acu-ScreenPres-Exit
           .
      *
       ScreenPres-Gd-1-Ev-Msg-Goto-Cell.
      *--------------------------------*
           IF Event-Data-2 < 2 THEN
              MOVE 2 TO Event-Data-2
           END-IF

           IF Event-Data-2 <> ScreenPres-Gd-1-Cursor-Y THEN
              MODIFY ScreenPres-Gd-1(ScreenPres-Gd-1-Cursor-Y),
                 ROW-COLOR 0
              MOVE Event-Data-2 TO ScreenPres-Gd-1-Cursor-Y 
              MODIFY ScreenPres-Gd-1(ScreenPres-Gd-1-Cursor-Y),
                 ROW-COLOR W-Row-High-Color
           END-IF
           .
      *
       ScreenPres-Gd-1-Ev-Msg-Begin-Entry.
      *----------------------------------*
           PERFORM GET-ART

           IF LK-ART-C-COD <> SPACE THEN
              PERFORM Interro-ART
           END-IF

           MOVE Event-Action-Fail TO Event-Action
           MOVE SV-LK-ART-C TO LK-ART-C
           .
      *
       ScreenPres-Gd-1-Ev-Msg-Init-Menu.
      *--------------------------------*           
           PERFORM GET-ART
           IF LK-ART-C-COD = SPACE THEN
              MOVE Event-Action-Fail TO Event-Action
              MOVE SV-LK-ART-C TO LK-ART-C
           END-IF
           .

       GET-ART.
      *-------*
           MOVE LK-ART-C TO SV-LK-ART-C
           INITIALIZE  LK-ART-C
           MOVE "I" TO LK-ART-C-CHO
           MOVE 1   TO LK-ART-C-CALL
           INQUIRE ScreenPres-Gd-1(ScreenPres-Gd-1-Cursor-Y, 2),
              CELL-DATA IN LK-ART-C-COD
           .

       Interro-ART.    
           CALL   "art-c.acu" USING ZONE-PALM LK-ART-C
           CANCEL "art-c.acu" 
           MOVE SV-LK-ART-C TO LK-ART-C.

       Interro-ASA.
      *     INITIALIZE LK-ASA-C 
      *     MOVE LK-ART-C-COD TO LK-ASA-C-COD
      *     MOVE PRO-PALM     TO LK-ASA-C-PRO
      *     CALL   "../../mx/o/asa-c.acu" USING ZONE-PALM LK-ASA-C
      *     CANCEL "../../mx/o/asa-c.acu"
           .
      *
       ScreenOTA-Pb-Quitter-Link.
           perform Acu-ScreenOTA-Exit
           .
      *
       ScreenOTA-Aft-Initdata.
120819     MOVE ScreenOTA-HANDLE TO MCF-HANDLE-FS
120819     PERFORM MisCentreFenetre
           modify ScreenOTA-Gd-1, RESET-GRID = 1
           perform Acu-ScreenOTA-Gd-1-Content .
      *     open i-o mxoldtar
      *     perform stat
      *     move 0 to w-eof-ota
      *     MOVE SPACE TO ENR-MOTA
      *     MOVE COD-MART TO ART-MOTA
      *     MOVE 0 TO NPR-MOTA 
      *     MOVE 99999999 TO DAT-MOTA
      *     START MXOLDTAR KEY NOT > CLE2-MOTA 
      *        INVALID MOVE 1 TO w-eof-ota
      *     end-start
      *     perform until w-eof-ota = 1
      *        READ MXOLDTAR PREVIOUS AT END move 1 to w-eof-ota
      *        end-read
      *        PERFORM STAT
      *        IF ART-MOTA NOT = COD-MART
      *           move 1 to w-eof-ota
      *        END-IF
      *        IF NPR-MOTA <> 0 
      *           move 1 to w-eof-ota
      *        END-IF
      *        if w-eof-ota = 1 
      *        or (pvt-mota = pvt-mart and ptf-mota = ptf-mart)
      *           exit perform cycle
      *        end-if
      *        move space to ScreenOTA-Gd-1-Record
      *        move dat-mota to d-samj
      *        perform convdat-samj-jmsa
      *        move l-dat8 to Gd-OTA-Col-DAT 
      *        move ptf-mota to D72
      *        move D72 to Gd-OTA-Col-PTF 
      *        move pvt-mota to D72
      *        move D72 to Gd-OTA-Col-PVT
      *        move ACRE-MOTA to Gd-OTA-Col-QUI
      *        move ORI-MOTA to Gd-OTA-Col-PRG
      *        modify ScreenOTA-Gd-1, 
      *            RECORD-TO-ADD ScreenOTA-Gd-1-Record
      *     end-perform
      *     close mxoldtar.
           
030419 ScreenOTA-Gd-1-Ev-Msg-Begin-Entry.
      *---------------------------------*
           MOVE Event-Action-Fail TO Event-Action
           .
      *
       Screen1-Pb-OLDTAR-Link.
           if cod-mart <> space perform Acu-ScreenOTA-Routine
           end-if
           .

       Affich-Pb-OLDTAR.
           if cod-mart = space
130819     OR IsDatVisible = 0
              modify Screen1-Pb-OLDTAR, VISIBLE 0
              exit paragraph
           end-if
      *     open i-o mxoldtar
      *     perform stat
      *     move 0 to w-eof-ota
      *     MOVE SPACE TO ENR-MOTA
      *     MOVE COD-MART TO ART-MOTA
      *     MOVE 0 TO NPR-MOTA 
      *     MOVE 99999999 TO DAT-MOTA
      *     START MXOLDTAR KEY NOT > CLE2-MOTA 
      *        INVALID MOVE 1 TO w-eof-ota
      *     end-start
      *     perform until w-eof-ota > 0
      *        READ MXOLDTAR PREVIOUS AT END move 1 to w-eof-ota
      *        end-read
      *        PERFORM STAT
      *        IF ART-MOTA NOT = COD-MART
      *           move 1 to w-eof-ota
      *        END-IF
      *        IF NPR-MOTA <> 0 
      *           move 1 to w-eof-ota
      *        END-IF
      *        if w-eof-ota = 1 
      *        or (pvt-mota = pvt-mart and ptf-mota = ptf-mart)
      *           exit perform cycle
      *        end-if
      *        move 2 to w-eof-ota
      *     end-perform
      *     close mxoldtar.
           if w-eof-ota = 1
              modify Screen1-Pb-OLDTAR, VISIBLE 0
           else
              modify Screen1-Pb-OLDTAR, VISIBLE 1
           end-if.


       CREAT-ARTSA-VCF.
           MOVE SPACE TO ENR-MASA
           MOVE W-AGE-VCF TO AGE-MASA
           MOVE COD-MART TO COD-MASA
           MOVE 1 TO STO-MASA
           WRITE ENR-MASA
           PERFORM STAT.
      *
       ScreenDate-Ef-Date-Ev-Msg-Validate.
           inquire ScreenDate-Ef-Date value W-DATZ
           COPY "W:/mistral/copy/Ef-Date10-Ecr2Fic.cbl"
                REPLACING ==CPYDAT-ECR== BY ==W-DATZ==
                          ==CPYDAT-FIC== BY ==D-SAMJ==.
           MODIFY ScreenDate-Ef-Date, VALUE = W-DATZ
           .
      *
       MAJ-DATNEW.


       ScreenDateNew-Aft-Initdata.
120819     MOVE ScreenDateNew-HANDLE TO MCF-HANDLE-FS
120819     PERFORM MisCentreFenetre

           .
      *
       ScreenDate-Pb-Annuler-Link.
           perform Acu-ScreenDateNew-Exit
           .
      *
       ScreenDate-Pb-Valider-Link.

           .


      *
       Screen1-Cm-1-Link.
           INQUIRE Screen1-Cm-1 Value Activ-Lib  
           If Activ-Lib = "Vente"
              Move 1 To W-Activ
              Perform Screen1-Rb-Act1-Ev-Cmd-Clicked
           ELSE 
              Move 2 To W-Activ
              Perform Screen1-Rb-Act2-Ev-Cmd-Clicked
           END-IF
           .

       

      *{Bench}end
       REPORT-COMPOSER SECTION.
