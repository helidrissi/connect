      * Transforme un numéro de téléphone du format de stockage vers
      * le format d'affichage.
      * Appeler la copy avec REPLACING :
      *      ==CPYTEL-PAYS== BY ==Variable-Code-Pays==
      *      ==CPYTEL-FIC== BY ==Variable-Numéro-Stocké==
      *      ==CPYTEL-ECR== BY ==Variable-Numéro-Affiché==

      * Initialise le traitement...
           MOVE CPYTEL-PAYS TO Ef-Tel-Pays
           IF  Ef-Tel-Pays = SPACE MOVE ZERO TO Ef-Tel-Pays
           END-IF
           COPY "W:/mistral/copy/Ef-Tel-Init.cbl".

      * Ajoute la fonction réellement chargée de la convertion...
           MOVE CPYTEL-FIC TO Ef-Tel-ValF
           MOVE CPYTEL-ECR TO Ef-Tel-ValE
           COPY "W:/mistral/copy/Ef-Tel-DoFic2Ecr.cbl".
           MOVE Ef-Tel-ValF TO CPYTEL-FIC
           MOVE Ef-Tel-ValE TO CPYTEL-ECR
