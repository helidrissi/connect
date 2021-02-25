           SELECT TRI     ASSIGN TO ASSIGN-TRI
                          ORGANIZATION INDEXED
                          ACCESS DYNAMIC
                          RECORD KEY IS CLE1-TRI
                ALTERNATE RECORD KEY IS CLE2-TRI DUPLICATES
                ALTERNATE RECORD KEY IS CLE3-TRI DUPLICATES
                          FILE STATUS IS FILE-STATUS.
           SELECT TABREM  ASSIGN TO ASSIGN-TABREM
                          ORGANIZATION LINE SEQUENTIAL
                          ACCESS MODE  IS SEQUENTIAL
                          FILE STATUS IS FILE-STATUS.
           SELECT TRIREM  ASSIGN TO ASSIGN-TRIREM
                          ORGANIZATION INDEXED
                          ACCESS DYNAMIC
                          RECORD KEY IS CLE1-TRIREM
                          FILE STATUS IS FILE-STATUS.
