      * Transforme un num�ro de t�l�phone du format de stockage vers
      * le format d'affichage.
      * Appeler la copy avec REPLACING :
      *      ==CPYPOS-PAYS== BY ==Variable-Code-Pays==
      *      ==CPYPOS-FIC== BY ==Variable-Num�ro-Stock�==
      *      ==CPYPOS-ECR== BY ==Variable-Num�ro-Affich�==

      * Initialise le traitement...
           MOVE CPYPOS-PAYS TO Ef-Pos-Pays
           IF  Ef-Pos-Pays = SPACE MOVE ZERO TO Ef-Pos-Pays
           END-IF
           COPY "W:/mistral/copy/Ef-Pos-Init.cbl".

      * Ajoute la fonction r�ellement charg�e de la conversion...
           MOVE CPYPOS-FIC TO Ef-Pos-ValF
           MOVE CPYPOS-ECR TO Ef-Pos-ValE
           COPY "W:/mistral/copy/Ef-Pos-DoFic2Ecr.cbl".
           MOVE Ef-Pos-ValF TO CPYPOS-FIC
           MOVE Ef-Pos-ValE TO CPYPOS-ECR
