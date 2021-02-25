      * Transforme un numéro de téléphone du format de stockage vers
      * le format d'affichage.
      * Appeler la copy avec REPLACING :
      *      ==CPYPOS-PAYS== BY ==Variable-Code-Pays==
      *      ==CPYPOS-FIC== BY ==Variable-Numéro-Stocké==
      *      ==CPYPOS-ECR== BY ==Variable-Numéro-Affiché==

      * Initialise le traitement...
           MOVE CPYPOS-PAYS TO Ef-Pos-Pays
           IF  Ef-Pos-Pays = SPACE MOVE ZERO TO Ef-Pos-Pays
           END-IF
           COPY "W:/mistral/copy/Ef-Pos-Init.cbl".

      * Ajoute la fonction réellement chargée de la conversion...
           MOVE CPYPOS-FIC TO Ef-Pos-ValF
           MOVE CPYPOS-ECR TO Ef-Pos-ValE
           COPY "W:/mistral/copy/Ef-Pos-DoFic2Ecr.cbl".
           MOVE Ef-Pos-ValF TO CPYPOS-FIC
           MOVE Ef-Pos-ValE TO CPYPOS-ECR
