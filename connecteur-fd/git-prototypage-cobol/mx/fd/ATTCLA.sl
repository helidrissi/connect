      *Classification des documents attach�s (Ex: Photos - Cartes Grises - Factures - ...)  
      *MAT=Mat�riel     ART=Article   CMT=Catalogue Mat�riel  PER=Personnel  DGE=Demande Garantie   ORE=O.R                VGP=Cont�le Technique    MFE=Fiche d'expertise mat�riel  MCL=Check-list SAV   RFRA=Note de frais Rembo
      *SBD=Distribution CFA=Achats TYM=Types mat�riels        CLI=Clients         CHC=Chantiers                   FOU=Fournisseurs   PPER=Personnel paie       SEC=Ecritures comptables          IBIE=Immos                 FPRE=Pr�t Cleo 
      *BSE=BLS locaton BRE=BR location
       SELECT ATTCLA
           ASSIGN       TO  ATTCLA-COB
           ORGANIZATION IS INDEXED
           ACCESS MODE  IS DYNAMIC
           LOCK MODE    IS MANUAL
           FILE STATUS  IS FILE-STATUS
           RECORD KEY   IS CLE1-ATTC
           ALTERNATE RECORD KEY IS CLE2-ATTC = ORI-ATTC, ORD-ATTC.
