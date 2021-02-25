      *== Fichier PRESTATIONS generales
      *
      *
      *
      *m
      *I
      *
       SELECT MXPREGEN
           ASSIGN       TO  MXPREGEN-COB
           ORGANIZATION IS INDEXED
           ACCESS MODE  IS DYNAMIC
           LOCK MODE    IS MANUAL
           FILE STATUS  IS FILE-STATUS
           RECORD KEY   IS CLE1-MPGE
           ALTERNATE RECORD KEY IS CLE2-MPGE
           WITH DUPLICATES .
