      * Transforme une date du format de stockage (yyyymmdd ou yyyymm)
      * vers le format d'affichage (dd/mm/yyyy ou 01/mm/yyyy).
      * NB : Entrée : Ef-Date-Fic = date au format fichier yyyymmdd
      *            ou Ef-Date7-Fic = date au format fichier yyyymm
      *      Sortie : Ef-Date-Ecr = date au format écran
      
           INSPECT Ef-Date-Fic REPLACING ALL SPACES BY "0"
           IF Ef-Date-Fic-Y = ZEROES THEN
               MOVE SPACES TO Ef-Date-Ecr
           ELSE
               MOVE "/" TO Ef-Date-Ecr-S1 Ef-Date-Ecr-S2
               MOVE Ef-Date-Fic-Y TO Ef-Date-Ecr-Y
               MOVE Ef-Date-Fic-M TO Ef-Date-Ecr-M
               IF Ef-Date-Fic-D = ZEROES THEN
                   MOVE "01" TO Ef-Date-Ecr-D
               ELSE
                   MOVE Ef-Date-Fic-D TO Ef-Date-Ecr-D
               END-IF
           END-IF