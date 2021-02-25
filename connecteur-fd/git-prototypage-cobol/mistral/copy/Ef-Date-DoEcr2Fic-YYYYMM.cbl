      * Transforme l'année et le mois d'une date affichée au format
      * (dd/)mm/yyyy ou mm/yy en zone yyyymm(dd).
      * NB : Entrée : Ef-Date-Ecr = Date saisie au (dd/)mm/yyyy
      *            ou Ef-Date7-Ecr = Date saisie au format mm/yyyy
      *      Sortie : Ef-Date-Fic au format yyyymm??
      * (Le jour peut après être traité par "Ef-Date-DoEcr2Fic-DD.cbl")

      * Formate l'année et le mois de la zone à sauvegarder...
           MOVE "00000001" TO Ef-Date-Fic
           MOVE 10 TO Ef-Date-IdxE
           MOVE 4 TO Ef-Date-IdxF
           PERFORM UNTIL (Ef-Date-IdxE <= 0) OR (Ef-Date-IdxF <= 0)
               IF Ef-Date-Ecr(Ef-Date-IdxE:1) IS NUMERIC THEN
                   MOVE Ef-Date-Ecr(Ef-Date-IdxE:1)
                     TO Ef-Date-Fic(Ef-Date-IdxF:1)
                   SUBTRACT 1 FROM Ef-Date-IdxF
               ELSE
                   IF NOT Ef-Date-Ecr(Ef-Date-IdxE:1) = SPACE THEN
                       MOVE 0 TO Ef-Date-IdxF
                       SUBTRACT 1 FROM Ef-Date-IdxE
                   END-IF
               END-IF

               SUBTRACT 1 FROM Ef-Date-IdxE
           END-PERFORM
           PERFORM UNTIL (Ef-Date-IdxE <= 0)
                OR Ef-Date-Ecr(Ef-Date-IdxE:1) IS NUMERIC
               SUBTRACT 1 FROM Ef-Date-IdxE
           END-PERFORM
           MOVE 6 TO Ef-Date-IdxF
           PERFORM UNTIL (Ef-Date-IdxE <= 0) OR (Ef-Date-IdxF <= 4)
               IF Ef-Date-Ecr(Ef-Date-IdxE:1) IS NUMERIC THEN
                   MOVE Ef-Date-Ecr(Ef-Date-IdxE:1)
                     TO Ef-Date-Fic(Ef-Date-IdxF:1)
                   SUBTRACT 1 FROM Ef-Date-IdxF
               ELSE
                   MOVE 0 TO Ef-Date-IdxF
                   SUBTRACT 1 FROM Ef-Date-IdxE
               END-IF
               SUBTRACT 1 FROM Ef-Date-IdxE
           END-PERFORM