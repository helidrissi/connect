      *Classification des documents attachés (Ex: Photos - Cartes Grises - Factures - ...)  
      *MAT=Matériel     ART=Article   CMT=Catalogue Matériel  PER=Personnel  DGE=Demande Garantie   ORE=O.R                VGP=Contôle Technique    MFE=Fiche d'expertise matériel  MCL=Check-list SAV   RFRA=Note de frais Rembo
      *SBD=Distribution CFA=Achats TYM=Types matériels        CLI=Clients         CHC=Chantiers                   FOU=Fournisseurs   PPER=Personnel paie       SEC=Ecritures comptables          IBIE=Immos                 FPRE=Prêt Cleo 
      *BSE=BLS locaton BRE=BR location
       SELECT ATTCLA
           ASSIGN       TO  ATTCLA-COB
           ORGANIZATION IS INDEXED
           ACCESS MODE  IS DYNAMIC
           LOCK MODE    IS MANUAL
           FILE STATUS  IS FILE-STATUS
           RECORD KEY   IS CLE1-ATTC
           ALTERNATE RECORD KEY IS CLE2-ATTC = ORI-ATTC, ORD-ATTC.
