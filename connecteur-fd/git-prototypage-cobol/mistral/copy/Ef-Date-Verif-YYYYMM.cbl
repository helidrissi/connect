      * V�rifie la validit� de l'ann�e et du mois d'une date au format
      * yyyymm(dd).
      * NB : Entr�e : Ef-Date-Fic = Date au format yyyymm(dd)
      *      Sortie : Ef-Date-Erreur � 1 Ssi la date est erron�e.
      * Ef-Date-Erreur est suppos�e initialis�e...

      * V�rifie l'ann�e et le mois d'une date...           
           IF Ef-Date-Fic(1:2) < 19 OR Ef-Date-Fic(1:2) > 20 THEN
               MOVE 1 TO Ef-Date-Erreur
           ELSE
               IF Ef-Date-Fic-M < 01 OR Ef-Date-Fic-M > 12 THEN
                   MOVE 1 TO Ef-Date-Erreur
               END-IF
           END-IF