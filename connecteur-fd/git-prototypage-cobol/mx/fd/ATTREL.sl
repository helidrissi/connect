      *Fichier de liaison entre Documents attach�s et Cat�gories de document  (ATTACH  <--> CATATT)
       SELECT ATTREL
           ASSIGN       TO  ATTREL-COB
           ORGANIZATION IS INDEXED
           ACCESS MODE  IS DYNAMIC
           LOCK MODE    IS MANUAL
           FILE STATUS  IS FILE-STATUS
           RECORD KEY   IS CLE1-ATTR.
