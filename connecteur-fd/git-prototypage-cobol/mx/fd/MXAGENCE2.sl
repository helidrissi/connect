       SELECT MXAGENCE2
           ASSIGN       TO  MXAGENCE-COB
           ORGANIZATION IS INDEXED
           ACCESS MODE  IS DYNAMIC
           LOCK MODE    IS MANUAL
           FILE STATUS  IS FILE-STATUS
           RECORD KEY   IS CLE1-MAGC2
           ALTERNATE RECORD KEY IS NOM-MAGC2
           WITH DUPLICATES .
