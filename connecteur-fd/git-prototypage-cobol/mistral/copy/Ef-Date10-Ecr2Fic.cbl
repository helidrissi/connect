      * Transforme une date du format d'affichage (dd/mm/yyyy) vers
      * le format de stockage (yyyymmdd), et corrige l'affichage.
      * Appeler la copy avec REPLACING :
      *      ==CPYDAT-ECR== BY ==Variable-Date-Affichée==
      *      ==CPYDAT-FIC== BY ==Variable-Date-Stockée==
      * NB : Ef-Date-Erreur est mis à 1 si la date est erronée.

      * Formate la zone à sauvegarder (+ support saisie ddmmyy)...       
           MOVE CPYDAT-ECR TO Ef-Date-Ecr
      * passage de dd/mm/yy en dd/mm/yyyy
           if  Ef-Date-Ecr(9:2) = space
           and ef-date-ecr(3:1) = ef-date-ecr(6:1)
           and ef-date-ecr(3:1) = "/"
               MOVE Ef-Date-Ecr(7:2) TO Ef-Date-Ecr(9:2)
               IF EF-Date-Siecle = 0 THEN 
                     IF Ef-Date-Ecr(7:2) > 60 THEN
                         MOVE "19" TO Ef-Date-Ecr(7:2)
                     ELSE
                         MOVE "20" TO Ef-Date-Ecr(7:2)
                     END-IF
               ELSE
                     IF Ef-Date-Ecr(7:2) > 40 THEN
                         MOVE "19" TO Ef-Date-Ecr(7:2)
                     ELSE
                         MOVE "20" TO Ef-Date-Ecr(7:2)
                     END-IF              
               END-IF
           end-if
      * passage de ddmmyy en ddmmyyyy
           IF (Ef-Date-Ecr(1:6) IS NUMERIC) AND
              (NOT Ef-Date-Ecr(7:2) IS NUMERIC) THEN
               MOVE Ef-Date-Ecr(5:2) TO Ef-Date-Ecr(7:2)
               IF EF-Date-Siecle = 0 THEN 
                     IF Ef-Date-Ecr(5:2) > 60 THEN
                         MOVE "19" TO Ef-Date-Ecr(5:2)
                     ELSE
                         MOVE "20" TO Ef-Date-Ecr(5:2)
                     END-IF
               ELSE 
                     IF Ef-Date-Ecr(5:2) > 40 THEN
                         MOVE "19" TO Ef-Date-Ecr(5:2)
                     ELSE
                         MOVE "20" TO Ef-Date-Ecr(5:2)
                     END-IF
               END-IF

           END-IF
           COPY "W:/mistral/copy/Ef-Date-DoEcr2Fic-YYYYMM.cbl".
           COPY "W:/mistral/copy/Ef-Date-DoEcr2Fic-DD.cbl".

      * Vérifie la date...
           MOVE 0 TO Ef-Date-Erreur
           IF Ef-Date-Fic = "00000001" 
           OR Ef-Date-Fic = "00000000" THEN
               MOVE "00000000" TO Ef-Date-Fic
           ELSE
               COPY "W:/mistral/copy/Ef-Date-Verif-YYYYMM.cbl".
               COPY "W:/mistral/copy/Ef-Date-Verif-DD.cbl".
           END-IF
           
      * Retraduit la zone pour corriger l'affichage...
           IF Ef-Date-Erreur = 0 THEN
               COPY "W:/mistral/copy/Ef-Date-DoFic2Ecr.cbl".
               MOVE Ef-Date-Ecr TO CPYDAT-ECR
               MOVE Ef-Date-Fic TO CPYDAT-FIC
           ELSE
091215        IF Ef-Date-Muet = 0 THEN
                 if Ef-Date-Erreur = 1
                    DISPLAY MESSAGE "Date (JJ/MM/AAAA) erronée"
                 else
                    if Ef-Date-Erreur = 2
                       move "Jour erroné" to acu-msg-1
                       perform msg-info
                    end-if

                 end-if
              end-if
091215     END-IF

