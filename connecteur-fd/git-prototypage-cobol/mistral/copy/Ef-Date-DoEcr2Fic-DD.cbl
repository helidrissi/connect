      * Transforme le jour d'une date affich�e au format dd/mm/yyyy
      * en zone yyyymmdd.
      * NB : Entr�e : Etat du traitement apr�s Ef-Date-DoEcr2Fic-YYYYMM
      *      Sortie : Ef-Date-Fic au format yyyymmdd

      * Formate le jour de la zone � sauvegarder...
           PERFORM UNTIL (Ef-Date-IdxE <= 0)
                OR Ef-Date-Ecr(Ef-Date-IdxE:1) IS NUMERIC
               SUBTRACT 1 FROM Ef-Date-IdxE
           END-PERFORM          
           MOVE 8 TO Ef-Date-IdxF
           PERFORM UNTIL (Ef-Date-IdxE <= 0) OR (Ef-Date-IdxF <= 6)
               IF Ef-Date-Ecr(Ef-Date-IdxE:1) IS NUMERIC THEN
                   MOVE Ef-Date-Ecr(Ef-Date-IdxE:1)
                     TO Ef-Date-Fic(Ef-Date-IdxF:1)
                   SUBTRACT 1 FROM Ef-Date-IdxF
               ELSE
                   MOVE 0 TO Ef-Date-IdxF                   
               END-IF
               SUBTRACT 1 FROM Ef-Date-IdxE               
           END-PERFORM