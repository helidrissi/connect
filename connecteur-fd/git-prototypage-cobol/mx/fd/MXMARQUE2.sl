       SELECT MXMARQUE2
           ASSIGN       TO  MXMARQUE2-COB
           ORGANIZATION IS INDEXED
           ACCESS MODE  IS DYNAMIC
           LOCK MODE    IS MANUAL
           FILE STATUS  IS FILE-STATUS
           RECORD KEY   IS CLE1-MMAR2
           ALTERNATE RECORD KEY IS CLE2-MMAR = CLE2-MMAR2
           WITH DUPLICATES 
           ALTERNATE RECORD KEY IS CLE3-MMAR2
           WITH DUPLICATES .
