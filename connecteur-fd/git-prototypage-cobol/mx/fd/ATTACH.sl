      *Liste des fichiers attach�s � un �l�ment (mat�riel, personnel, message miami ....)
      *Valeur du param�tre ORI :
      *  MAT=Mat�riel
      *  ART=Article 
      *  CMT=Catalogue Mat.
      *  PER=Personnel  
      *  TYM=Type Mat�riel   
      *  DGE=Demande Garantie  
      *  DGC=Demande Garantie  Concessionnaire
      *  CDU=Client divers  
      *  ORE=O.R  
      *  VGP=Cont�le Technique  
      *  MFE=Fiche d'expertise mat. 
      *  MCL=Check-list SAV  
      *  SFA=Signature/Fiche activit� Mobitec  
      *  FR=Frais Rembo
      *  CRC= MobivipTab : Envoi Compte Rendu activit� service Commercial (cl� = 4) / Envoi Demande d'ouverture de compte (cl� = 5) / Retour Compte Rendu activit� service Commercial (cl� = iiiiaaaass1 o� iiii = IDE )
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
