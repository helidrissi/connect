      *
      *
      *
      *
      *9
      *[
      *[
      *9
      *T
      *]
      *c
      *0
      *]
      *W
       SELECT MXCLI2
           ASSIGN       TO  MXCLI-COB
           ORGANIZATION IS INDEXED
           ACCESS MODE  IS DYNAMIC
           LOCK MODE    IS MANUAL
           FILE STATUS  IS FILE-STATUS
           RECORD KEY   IS CLE1-MCLI2
           ALTERNATE RECORD KEY IS CLE2-MCLI2
           WITH DUPLICATES 
           ALTERNATE RECORD KEY IS CLE3-MCLI2 = SIR1-MCLI2
           WITH DUPLICATES 
           ALTERNATE RECORD KEY IS CLE4-MCLI2 = PAY-MCLI2, POS-MCLI2
           WITH DUPLICATES 
           ALTERNATE RECORD KEY IS CLE5-MCLI2
           WITH DUPLICATES 
           ALTERNATE RECORD KEY IS CLE6-MCLI2
           WITH DUPLICATES 
           ALTERNATE RECORD KEY IS CLE7-MCLI2
           WITH DUPLICATES 
           ALTERNATE RECORD KEY IS CLE8-MCLI2
           WITH DUPLICATES .
