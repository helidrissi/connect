      *Liste des fichiers attachés à un élément (matériel, personnel, message miami ....)
      *Valeur du paramètre ORI :
      *  MAT=Matériel
      *  ART=Article 
      *  CMT=Catalogue Mat.
      *  PER=Personnel  
      *  TYM=Type Matériel   
      *  DGE=Demande Garantie  
      *  DGC=Demande Garantie  Concessionnaire
      *  CDU=Client divers  
      *  ORE=O.R  
      *  VGP=Contôle Technique  
      *  MFE=Fiche d'expertise mat. 
      *  MCL=Check-list SAV  
      *  SFA=Signature/Fiche activité Mobitec  
      *  FR=Frais Rembo
      *  CRC= MobivipTab : Envoi Compte Rendu activité service Commercial (clé = 4) / Envoi Demande d'ouverture de compte (clé = 5) / Retour Compte Rendu activité service Commercial (clé = iiiiaaaass1 où iiii = IDE )
      * USR=Personnel gestion commerciale
       SELECT ATTACH
           ASSIGN       TO  ATTACH-COB
           ORGANIZATION IS INDEXED
           ACCESS MODE  IS DYNAMIC
           LOCK MODE    IS MANUAL
           FILE STATUS  IS FILE-STATUS
           RECORD KEY   IS CLE1-ATT
           ALTERNATE RECORD KEY IS CLE2-ATT = SOC-ATT, ORI-ATT, 
           CLE-ATT, RAN-ATT
           WITH DUPLICATES .
