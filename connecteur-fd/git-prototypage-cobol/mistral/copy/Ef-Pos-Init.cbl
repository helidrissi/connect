      * Initialisation des variables de travail pour le formatage des
      * num�ros des t�l�phone.
      * NB : Le code pays est attendu dans Ef-Pos-Pays

      * Initialisation des variables de travail pour le formatage des
      * num�ros des t�l�phone.
      * NB : Le code pays est attendu dans Ef-Pos-Pays

      * Charger, si n�cessaire, les donn�es li�es au Pays...
           IF NOT Ef-Pos-Pays = Ef-Pos-Pays-Old THEN   
               MOVE Ef-Pos-Pays TO Ef-Pos-Pays-Old
               MOVE "N" TO Ef-Pos-Numeric
               MOVE 5 TO Ef-Pos-LgBrt
               MOVE "ZZZZZ" TO Ef-Pos-FrmAff
           END-IF
