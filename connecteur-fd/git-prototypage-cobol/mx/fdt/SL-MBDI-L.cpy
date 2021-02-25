           SELECT MBDI-L-TRI ASSIGN TO ASSIGN-MBDI-L-TRI
                             ORGANIZATION INDEXED
                             ACCESS DYNAMIC
                             RECORD KEY IS CLE1-MBDI-L-TRI
                   ALTERNATE RECORD KEY IS CLE2-MBDI-L-TRI DUPLICATES
                   ALTERNATE RECORD KEY IS CLE3-MBDI-L-TRI DUPLICATES
                   ALTERNATE RECORD KEY IS CLE4-MBDI-L-TRI 
                             = TTYP-MBDI-L-TRI
                               IFA-MBDI-L-TRI
                               DAT-MBDI-L-TRI
                             DUPLICATES
                             FILE STATUS IS FILE-STATUS.
