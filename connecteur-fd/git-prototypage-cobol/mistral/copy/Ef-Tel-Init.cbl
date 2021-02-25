      * Initialisation des variables de travail pour le formatage des
      * numéros des téléphone.
      * NB : Le code pays est attendu dans Ef-Tel-Pays

      * Charger, si nécessaire, les données liées au Pays...
           IF NOT Ef-Tel-Pays = Ef-Tel-Pays-Old THEN 
               MOVE EF-TEL-PAYS TO EF-TEL-PAYS-OLD
               MOVE "N" TO Ef-Tel-Numeric
               MOVE 10 TO Ef-Tel-LgBrt
               MOVE "ZZ.ZZ.ZZ.ZZ.ZZ" TO Ef-Tel-FrmAff
           END-IF