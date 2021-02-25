           COPY "../../mistral/copy/Assign-FICTMP.cbl" REPLACING 
              ==FICTMP==   BY ==RECHCMD==
              =='FICTMP'== BY ==RECHCMD==.
                                         
           CLOSE RECHCMD
           OPEN OUTPUT RECHCMD
           PERFORM STAT

           IF (MXICAREF-PALM = 1 AND CMD-RECH-FIC = "ART")
           OR (MXICAREF-PALM = 1 AND CLI-PALM = 851233
               AND (CMD-RECH-FIC = "CLI" OR "ART")
               AND CMD-RECH-DIR = MX-DIR)             
              MOVE SPACE TO CMD-RECH-DIR
              STRING G-DIR "/mxs" LK-NUMSOC DELIMITED BY " "
                     INTO CMD-RECH-DIR 
           END-IF   
300616* on fait un lien car rech ne travaille que dan f           
           IF CMD-RECH-FIC = "CODPOS"
              MOVE SPACE TO STAT-CMD
              STRING "ln -s" " " G-DIR "/mistral/fg/CODPOS" 
                     " " G-DIR "/mxg/f/CODPOS" delimited by "  "
                     into stat-cmd
              CALL "C$SYSTEM" USING STAT-CMD
           END-IF
300616
           ACCEPT CMD-RECH-OSTYPE FROM ENVIRONMENT "OSTYPE"              
           EVALUATE CMD-RECH-OSTYPE           
           WHEN "LINUX"
             | pour webtop : chemin en direct
             MOVE "/acu/mistral/o/RechV4.linux" TO CMD-RECH-RECH
             | pour webtop : chemin en direct
           WHEN "UNIX" WHEN "AIX"
             MOVE "/acu/mistral/o/RechV4.unix" TO CMD-RECH-RECH
           WHEN OTHER
             IF MOB-PALM = 0 
                STRING G-DIR DELIMITED BY "  "
                       "/mistral/o/RechV4.exe" DELIMITED BY SIZE
                       INTO CMD-RECH-RECH
             ELSE     
                STRING G-DIR DELIMITED BY "  "
                       "/mxwin/o/RechV4.exe" DELIMITED BY SIZE
                       INTO CMD-RECH-RECH
             END-IF
           END-EVALUATE 
           
           MOVE SPACE TO CMD-RECH

           IF CMD-RECH-OSTYPE NOT = "LINUX" AND NOT = "UNIX" 
           AND NOT = "AIX" THEN
              MOVE " """  TO CMD-RECH-DEB-VAL(1)
              MOVE """ "  TO CMD-RECH-FIN-VAL(1)
           END-IF
               
           STRING CMD-RECH-BASE CMD-RECH-CONDI(1)
                  DELIMITED BY SIZE     
                  INTO CMD-RECH
           PERFORM VARYING CMD-RECH-I FROM 2 BY 1 UNTIL CMD-RECH-I > 15
              IF CMD-RECH-POSR(CMD-RECH-I) NOT = ZERO and not = space
                 MOVE SPACE TO CMD-RECH1

                 IF CMD-RECH-OSTYPE NOT = "LINUX" AND NOT = "UNIX"
                 AND NOT = "AIX"
                   MOVE " """  TO CMD-RECH-DEB-VAL(CMD-RECH-I)
                   MOVE """ "  TO CMD-RECH-FIN-VAL(CMD-RECH-I)
                 END-IF
                 
                 STRING CMD-RECH DELIMITED 
                       BY "                                           "
                       CMD-RECH-CONDI(CMD-RECH-I)
                       DELIMITED BY SIZE 
                       INTO CMD-RECH1
                 MOVE CMD-RECH1 TO CMD-RECH
              END-IF
           END-PERFORM
           
           PERFORM VARYING CMD-RECH-I FROM 1 BY 1 UNTIL CMD-RECH-I > 10
              IF CMD-RECH-POSDT(CMD-RECH-I) NOT = ZERO and not = space
                 MOVE SPACE TO CMD-RECH1
                 STRING CMD-RECH DELIMITED 
                       BY "                                           "
                       CMD-RECH-TRI(CMD-RECH-I)
                       DELIMITED BY SIZE 
                       INTO CMD-RECH1
                 MOVE CMD-RECH1 TO CMD-RECH
              END-IF
           END-PERFORM

           MOVE CMD-RECH TO CMD-RECH1

           IF CMD-RECH-OSTYPE NOT = "LINUX" AND NOT = "UNIX" 
           AND NOT = "AIX" THEN
             INSPECT CMD-RECH1 REPLACING ALL '>=' BY 's4'
                                         ALL '<=' BY 's5'
             INSPECT CMD-RECH1 REPLACING ALL '>'  BY 'S'
                                         ALL '<'  BY 'I'
           END-IF
           
           MOVE CMD-RECH1 TO CMD-RECH
           MOVE CMD-RECH TO ENR-RECHCMD
           WRITE ENR-RECHCMD
           PERFORM STAT
           CLOSE RECHCMD
           IF CMD-RECH-OSTYPE NOT = "LINUX" AND NOT = "UNIX" 
           AND NOT = "AIX" THEN
              CALL "C$SYSTEM" USING CMD-RECH 32
120719        CALL "C$SLEEP" USING 1               | Sinon trop rapide et ne fonctionne pas sous windows
           ELSE
              MOVE SPACE TO CMD-RECH1
              STRING "chmod 777" " " ASSIGN-RECHCMD DELIMITED BY SIZE              
              INTO CMD-RECH1
              CALL "SYSTEM" USING CMD-RECH1       
              CALL "SYSTEM" USING ASSIGN-RECHCMD
           END-IF.
                     
300616* on supprime le lien 
           IF CMD-RECH-FIC = "CODPOS"
              MOVE SPACE TO STAT-CMD
              STRING "rm" " " G-DIR "/mistral/f/CODPOS" 
                     into stat-cmd
              CALL "C$SYSTEM" USING STAT-CMD
           END-IF
300616
           DELETE FILE RECHCMD.

