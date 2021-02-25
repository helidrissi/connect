      *Fichier: sauvegarde des sélections sur impression + sauvegarde des sélections sur écran d'affichage 
       SELECT SVINT
           ASSIGN       TO  SVINT-COB
           ORGANIZATION IS INDEXED
           ACCESS MODE  IS DYNAMIC
           LOCK MODE    IS MANUAL
           FILE STATUS  IS FILE-STATUS
           RECORD KEY   IS CLE1-SVINT
           ALTERNATE RECORD KEY IS CLE2-SVINT = LOG-SVINT, PRO-SVINT, 
           DAT-SVINT, IDE-SVINT
           WITH DUPLICATES 
           ALTERNATE RECORD KEY IS CLE3-SVINT = LOG-SVINT, PRO-SVINT, 
           IDE-SVINT, DAT-SVINT
           WITH DUPLICATES .
