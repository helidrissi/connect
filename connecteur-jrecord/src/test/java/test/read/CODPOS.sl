      *--- Fichier Codes Postaux
      *]
      *T
      *+
       SELECT CODPOS
           ASSIGN       TO  CODPOS-COB
           ORGANIZATION IS INDEXED
           ACCESS MODE  IS DYNAMIC
           LOCK MODE    IS MANUAL
           FILE STATUS  IS FILE-STATUS
           RECORD KEY   IS CLE1-CDP
           ALTERNATE RECORD KEY IS CLE2-CDP = CISO-CDP, VIL-CDP
           WITH DUPLICATES 
           ALTERNATE RECORD KEY IS CLE3-CDP
           WITH DUPLICATES .
