       SELECT MXAGENCE3
           ASSIGN       TO  MXAGENCE-COB
           ORGANIZATION IS INDEXED
           ACCESS MODE  IS DYNAMIC
           LOCK MODE    IS MANUAL
           FILE STATUS  IS FILE-STATUS
           RECORD KEY   IS CLE1-MAGC3
           ALTERNATE RECORD KEY IS NOM-MAGC3
           WITH DUPLICATES .
