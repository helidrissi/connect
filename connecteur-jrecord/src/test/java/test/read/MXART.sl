       SELECT MXART
           ASSIGN       TO  MXART-COB
           ORGANIZATION IS INDEXED
           ACCESS MODE  IS DYNAMIC
           LOCK MODE    IS MANUAL
           FILE STATUS  IS FILE-STATUS
           RECORD KEY   IS CLE1-MART
           ALTERNATE RECORD KEY IS CLE2-MART
           WITH DUPLICATES 
           ALTERNATE RECORD KEY IS CLE3-MART
           WITH DUPLICATES 
           ALTERNATE RECORD KEY IS CLE4-MART
           WITH DUPLICATES 
           ALTERNATE RECORD KEY IS CLE5-MART = CO2-MART
           WITH DUPLICATES 
           ALTERNATE RECORD KEY IS CLE6-MART
           WITH DUPLICATES 
           ALTERNATE RECORD KEY IS CLE7-MART
           WITH DUPLICATES 
           ALTERNATE RECORD KEY IS CLE8-MART
           WITH DUPLICATES 
           ALTERNATE RECORD KEY IS CLE9-MART
           WITH DUPLICATES .