      * Transforme un numéro de téléphone du format de stockage vers
      * le format d'affichage.
      * NB : Ef-Tel-ValF = n° au format fichier
      *      Ef-Tel-ValE = n° au format écran
      
           IF Ef-Tel-Numeric = "A" THEN
      * Format non reconnu : tranférer tel quel...
               MOVE Ef-Tel-ValF TO Ef-Tel-ValE
           ELSE
      * Formate la zone affichée...
               MOVE SPACES TO Ef-Tel-ValE
               MOVE 13 TO Ef-Tel-IdxF
               SUBTRACT Ef-Tel-LgBrt FROM Ef-Tel-IdxF
               MOVE Ef-Tel-ValF(Ef-Tel-IdxF:Ef-Tel-LgBrt)
                 TO Ef-Tel-ValF-Tmp
               INSPECT Ef-Tel-ValF-Tmp REPLACING ALL "0" BY SPACE
               IF NOT Ef-Tel-ValF-Tmp = SPACES THEN                 
                   PERFORM VARYING Ef-Tel-IdxE FROM 1 BY 1
      *                       UNTIL Ef-Tel-IdxE > 14
                             UNTIL Ef-Tel-IdxE > 15
                                OR (Ef-Tel-IdxF > 12)
                       IF Ef-Tel-FrmAff(Ef-Tel-IdxE:1) = "Z" THEN
                           MOVE Ef-Tel-ValF(Ef-Tel-IdxF:1) 
                             TO Ef-Tel-ValE(Ef-Tel-IdxE:1)
                           ADD 1 TO Ef-Tel-IdxF
                       ELSE
                           MOVE Ef-Tel-FrmAff(Ef-Tel-IdxE:1)
                             TO Ef-Tel-ValE(Ef-Tel-IdxE:1)
                       END-IF

                   END-PERFORM
               END-IF
           END-IF