      * Vérifie la validité du jour d'une date au format yyyymmdd.      
      * NB : Entrée : Ef-Date-Fic = Date au format yyyymmdd
      *      Sortie : Ef-Date-Erreur à 1 Ssi la date est erronée.
      * Ef-Date-Erreur est supposé initialisé...

      * Vérifie le jour de la date...
           IF Ef-Date-Fic-D < 01 OR Ef-Date-Fic-D > 31 THEN
               MOVE 2 TO Ef-Date-Erreur
           ELSE
               IF (Ef-Date-Fic-D > 30) AND
                  (Ef-Date-Fic-M = 04 OR 06 OR 09 OR 11) THEN
                   MOVE 2 TO Ef-Date-Erreur                   
               ELSE
                   IF Ef-Date-Fic-M = 02 THEN
                       MOVE Ef-Date-Fic-Y TO Ef-Date-Tmp1
                       DIVIDE Ef-Date-Tmp1 BY 4 GIVING Ef-Date-Tmp1
                                                REMAINDER Ef-Date-Tmp2
                       IF (Ef-Date-Tmp2 = 0 AND Ef-Date-Fic-D > 29)
                       OR (Ef-Date-Tmp2 <> 0 AND Ef-Date-Fic-D > 28)
                           MOVE 2 TO Ef-Date-Erreur
                       END-IF
                   END-IF
               END-IF
           END-IF