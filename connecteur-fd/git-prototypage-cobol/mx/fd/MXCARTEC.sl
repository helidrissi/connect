       SELECT MXCARTEC
           ASSIGN       TO  MXCARTEC-COB
           ORGANIZATION IS INDEXED
           ACCESS MODE  IS DYNAMIC
           LOCK MODE    IS MANUAL
           FILE STATUS  IS FILE-STATUS
           RECORD KEY   IS CLE1-MCTC
           ALTERNATE RECORD KEY IS CLE2-MCTC
           WITH DUPLICATES .
