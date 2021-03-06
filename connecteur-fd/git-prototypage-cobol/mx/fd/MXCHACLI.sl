       SELECT MXCHACLI
           ASSIGN       TO  MXCHACLI-COB
           ORGANIZATION IS INDEXED
           ACCESS MODE  IS DYNAMIC
           LOCK MODE    IS MANUAL
           FILE STATUS  IS FILE-STATUS
           RECORD KEY   IS CLE1-MCHC
           ALTERNATE RECORD KEY IS CLE2-MCHC
           WITH DUPLICATES 
           ALTERNATE RECORD KEY IS CLE3-MCHC = GCH-MCHC, NCP-MCHC
           WITH DUPLICATES 
           ALTERNATE RECORD KEY IS CLE4-MCHC = NCP-MCHC, PAY-MCHC, 
           POS-MCHC
           WITH DUPLICATES .
