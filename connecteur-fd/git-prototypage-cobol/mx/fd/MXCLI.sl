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
      *:
       SELECT MXCLI
           ASSIGN       TO  MXCLI-COB
           ORGANIZATION IS INDEXED
           ACCESS MODE  IS DYNAMIC
           LOCK MODE    IS MANUAL
           FILE STATUS  IS FILE-STATUS
           RECORD KEY   IS CLE1-MCLI
           ALTERNATE RECORD KEY IS CLE2-MCLI
           WITH DUPLICATES 
           ALTERNATE RECORD KEY IS CLE3-MCLI = SIR1-MCLI
           WITH DUPLICATES 
           ALTERNATE RECORD KEY IS CLE4-MCLI = PAY-MCLI, POS-MCLI
           WITH DUPLICATES 
           ALTERNATE RECORD KEY IS CLE5-MCLI
           WITH DUPLICATES 
           ALTERNATE RECORD KEY IS CLE6-MCLI
           WITH DUPLICATES 
           ALTERNATE RECORD KEY IS CLE7-MCLI
           WITH DUPLICATES 
           ALTERNATE RECORD KEY IS CLE8-MCLI
           WITH DUPLICATES .
