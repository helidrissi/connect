      * Transforme un numéro de téléphone du format de stockage vers
      * le format d'affichage.
      * NB : Ef-Pos-ValF = n° au format fichier
      *      Ef-Pos-ValE = n° au format écran
      
           IF Ef-Pos-Numeric = "A" THEN
      * Format non reconnu : tranférer tel quel...
               MOVE Ef-Pos-ValF TO Ef-Pos-ValE
           ELSE
      * Formate la zone affichée...
               MOVE SPACES TO Ef-Pos-ValE
               MOVE 9 TO Ef-Pos-IdxF
               SUBTRACT Ef-Pos-LgBrt FROM Ef-Pos-IdxF
               MOVE Ef-Pos-ValF(Ef-Pos-IdxF:Ef-Pos-LgBrt)
                 TO Ef-Pos-ValF-Tmp
               INSPECT Ef-Pos-ValF-Tmp REPLACING ALL "0" BY SPACE
               IF NOT Ef-Pos-ValF-Tmp = SPACES THEN                 
                   PERFORM VARYING Ef-Pos-IdxE FROM 1 BY 1
                             UNTIL Ef-Pos-IdxE > 8
                                OR Ef-Pos-IdxF > 8
                       IF Ef-Pos-FrmAff(Ef-Pos-IdxE:1) = "Z" THEN
                           MOVE Ef-Pos-ValF(Ef-Pos-IdxF:1) 
                             TO Ef-Pos-ValE(Ef-Pos-IdxE:1)
                           ADD 1 TO Ef-Pos-IdxF
                       ELSE
                           MOVE Ef-Pos-FrmAff(Ef-Pos-IdxE:1)
                             TO Ef-Pos-ValE(Ef-Pos-IdxE:1)
                       END-IF                   
                   END-PERFORM
               END-IF
           END-IF
