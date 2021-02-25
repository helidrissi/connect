      * Initialisation des variables de travail pour le formatage des
      * numéros des téléphone.
      * NB : Le code pays est attendu dans Ef-Pos-Pays

      * Initialisation des variables de travail pour le formatage des
      * numéros des téléphone.
      * NB : Le code pays est attendu dans Ef-Pos-Pays

      * Charger, si nécessaire, les données liées au Pays...
           IF NOT Ef-Pos-Pays = Ef-Pos-Pays-Old THEN   
               MOVE Ef-Pos-Pays TO Ef-Pos-Pays-Old
               MOVE "N" TO Ef-Pos-Numeric
               MOVE 5 TO Ef-Pos-LgBrt
               MOVE "ZZZZZ" TO Ef-Pos-FrmAff
           END-IF
