       SELECT MXCATFOU
           ASSIGN       TO  MXCATFOU-COB
           ORGANIZATION IS INDEXED
           ACCESS MODE  IS DYNAMIC
           LOCK MODE    IS MANUAL
           FILE STATUS  IS FILE-STATUS
           RECORD KEY   IS CLE1-MCTF
           ALTERNATE RECORD KEY IS CLE2-MCTF = FOU-MCTF, DE1-MCTF
           WITH DUPLICATES .