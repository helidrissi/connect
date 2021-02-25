      *Liste des fichiers attachés à un élément (matériel, personnel, message miami ....)
      *
       SELECT ATTACH2
           ASSIGN       TO  ATTACH-COB
           ORGANIZATION IS INDEXED
           ACCESS MODE  IS DYNAMIC
           LOCK MODE    IS MANUAL
           FILE STATUS  IS FILE-STATUS
           RECORD KEY   IS CLE1-ATT2
           ALTERNATE RECORD KEY IS CLE2-ATT2 = SOC-ATT2, ORI-ATT2, 
           CLE-ATT2, RAN-ATT2
           WITH DUPLICATES .
