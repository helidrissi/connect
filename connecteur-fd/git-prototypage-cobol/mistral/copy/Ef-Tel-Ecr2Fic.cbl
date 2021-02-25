      * Transforme un numéro de téléphone du format d'affichage vers
      * le format de stockage, et corrige l'affichage.
      * Appeler la copy avec REPLACING :
      *      ==CPYTEL-PAYS== BY ==Variable-Code-Pays==
      *      ==CPYTEL-ECR== BY ==Variable-Numéro-Affiché==
      *      ==CPYTEL-FIC== BY ==Variable-Numéro-Stocké==

      * Initialise le traitement... 
           MOVE CPYTEL-PAYS TO Ef-Tel-Pays
           IF  Ef-Tel-Pays = SPACE MOVE ZERO TO Ef-Tel-Pays
           END-IF
           COPY "W:/mistral/copy/Ef-Tel-Init.cbl".

           IF Ef-Tel-Numeric = "A" THEN
      * Format non reconnu : tranférer tel quel...
               MOVE CPYTEL-ECR TO CPYTEL-FIC
           ELSE
      * Formate la zone à sauvegarder...
               MOVE SPACES TO CPYTEL-FIC
               MOVE 12 TO Ef-Tel-IdxF Ef-Tel-Deb
               SUBTRACT Ef-Tel-LgBrt FROM Ef-Tel-Deb
      *         PERFORM VARYING Ef-Tel-IdxE FROM 14 BY -1
               PERFORM VARYING Ef-Tel-IdxE FROM 15 BY -1
                         UNTIL (Ef-Tel-IdxE = 0)
                            OR (Ef-Tel-IdxF <= Ef-Tel-Deb)
                   IF CPYTEL-ECR(Ef-Tel-IdxE:1) IS NUMERIC THEN
                       MOVE CPYTEL-ECR(Ef-Tel-IdxE:1) 
                         TO CPYTEL-FIC(Ef-Tel-IdxF:1)
                       SUBTRACT 1 FROM Ef-Tel-IdxF
                   END-IF                   
               END-PERFORM
               PERFORM UNTIL Ef-Tel-IdxF <= Ef-Tel-Deb
                   MOVE "0" TO CPYTEL-FIC(Ef-Tel-IdxF:1)
                   SUBTRACT 1 FROM Ef-Tel-IdxF
               END-PERFORM
      * Retraduit la zone pour corriger l'affichage...
               MOVE CPYTEL-FIC TO Ef-Tel-ValF
               MOVE CPYTEL-ECR TO Ef-Tel-ValE
               COPY "W:/mistral/copy/Ef-Tel-DoFic2Ecr.cbl".
               MOVE Ef-Tel-ValF TO CPYTEL-FIC
               MOVE Ef-Tel-ValE TO CPYTEL-ECR
           END-IF