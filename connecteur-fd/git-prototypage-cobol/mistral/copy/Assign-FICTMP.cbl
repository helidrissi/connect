      *
      * Assignation et ouverture d'un fichier de travail temporaire
      * Appeler la copy avec REPLACING ==FICTMP== BY ==xxxxxxxx==
      *                                =='FICTMP'== BY ==xxxxxxxx==
      *
      * Déclarer dans la working du programme: ASSIGN-xxxxxxxx 
      *                                        pour assigner le fichier
      *                                        WASS-xxxxxxxx
      *                                        pour renseigner le nom du fichier
      *
      * Exemple pour assigner le fichier MBDL-L-TRI (liste des bL)
      * 77 ASSIGN-MBDI-L-TRI  PIC X(60)
      * 77 WASS-MBDI-L-TRI    PIC X(20)  VALUE "MBDI-L-TRI" 
      *
      *   COPY "W:/mx/copy/Assign-FICTMP.cbl" 
      *         REPLACING ==FICTMP== BY ==MBDI-L-TRI==
      *                   =='FICTMP'== BY ==MBDI-L-TRI==.

      * Assignation et ouverture fichier de TRI
           MOVE FUNCTION CURRENT-DATE TO DATHEU-SYS-M
           IF MOB-PALM = 0 
              STRING MX-DIR DELIMITED BY "  "
                     "/ft/" DELIMITED BY SIZE
                     WASS-'FICTMP' DELIMITED BY " "
                    IDE-PALM DELIMITED BY " "
                     DATHEU-SYS-M DELIMITED BY SIZE INTO ASSIGN-'FICTMP'
           ELSE      | Spécifique MobiVip
              STRING MX-DIR DELIMITED BY "  "                            
                     "/ft/" DELIMITED BY SIZE
                     WASS-'FICTMP' DELIMITED BY " "
                     IDE-PALM DELIMITED BY " "
                     DATHEU-SYS-M DELIMITED BY SIZE INTO ASSIGN-'FICTMP'
           END-IF
           OPEN OUTPUT FICTMP
           Perform TEST-STATUS THRU FIN-TEST-STATUS
           If IND-STAT Not = 0 
              PERFORM Acu-Extended-File-Status
      D       STOP "DEBUG"
              GO ACU-EXIT-RTN
           End-If
           CLOSE FICTMP
           OPEN I-O FICTMP
           Perform TEST-STATUS THRU FIN-TEST-STATUS
           If IND-STAT Not = 0 
              PERFORM Acu-Extended-File-Status
              GO ACU-EXIT-RTN
           END-IF.
