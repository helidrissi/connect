       SELECT MXGRAFAM
           ASSIGN       TO  MXGRAFAM-COB
           ORGANIZATION IS INDEXED
           ACCESS MODE  IS DYNAMIC
           LOCK MODE    IS MANUAL
           FILE STATUS  IS FILE-STATUS
           RECORD KEY   IS CLE1-MGFA
           ALTERNATE RECORD KEY IS CLE2-MGFA = GRA-MGFA, LIB-MGFA
           WITH DUPLICATES 
           ALTERNATE RECORD KEY IS CLE3-MGFA = FAM-MGFA, LIB-MGFA
           WITH DUPLICATES .