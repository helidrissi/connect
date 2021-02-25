      *Caractéristiques techniques avec valeur à choix multiples
       SELECT MXCARTECS
           ASSIGN       TO  MXCARTECS-COB
           ORGANIZATION IS INDEXED
           ACCESS MODE  IS DYNAMIC
           LOCK MODE    IS MANUAL
           FILE STATUS  IS FILE-STATUS
           RECORD KEY   IS CLE1-MCTCS
           ALTERNATE RECORD KEY IS CLE2-MCTCS
           WITH DUPLICATES .
