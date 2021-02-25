      * Transforme une date du format de stockage (yyyymmdd ou yyyymm)
      * vers le format d'affichage (dd/mm/yyyy ou 01/mm/yyyy).
      * Appeler la copy avec REPLACING :
      *      ==CPYDAT-FIC== BY ==Variable-Date-Stockée==
      *      ==CPYDAT-ECR== BY ==Variable-Date-Affichée==

      * Appelle la fonction réellement chargée de la convertion...
           MOVE CPYDAT-FIC TO Ef-Date-Fic
           COPY "W:/mistral/copy/Ef-Date-DoFic2Ecr.cbl".
           MOVE Ef-Date-Ecr TO CPYDAT-ECR