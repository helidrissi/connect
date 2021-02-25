      * Vérifie la validité de l'année et du mois d'une date au format
      * yyyymm(dd).
      * NB : Entrée : Ef-Date-Fic = Date au format yyyymm(dd)
      *      Sortie : Ef-Date-Erreur à 1 Ssi la date est erronée.
      * Ef-Date-Erreur est supposée initialisée...

      * Vérifie l'année et le mois d'une date...           
           IF Ef-Date-Fic(1:2) < 19 OR Ef-Date-Fic(1:2) > 20 THEN
               MOVE 1 TO Ef-Date-Erreur
           ELSE
               IF Ef-Date-Fic-M < 01 OR Ef-Date-Fic-M > 12 THEN
                   MOVE 1 TO Ef-Date-Erreur
               END-IF
           END-IF