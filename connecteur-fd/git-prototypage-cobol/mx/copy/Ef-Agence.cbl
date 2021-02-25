      *    Contrôle de l'agence (PALME)
      *    Copier avec: 
      *       COPY "W:/mistral/copy/Ef-Agence.cbl" REPLACING
      *              ==DCN-AGE== BY ==xxxx==  (W-AGE)
      *              ==DCN-Ef-Age== BY ==xxxx== (Entry-Field W-AGE)
      *              ==DCN-Ef-NomAge== BY ==xxxx== (Entry-Field NOM-AGC)
      *    Renvoie WAGC-OK: 1 si l'agence est correcte

           MOVE ZERO TO WAGC-OK
     
           OPEN I-O MXAGENCE
           PERFORM TEST-STATUS THRU FIN-TEST-STATUS
           IF IND-STAT = 3 MOVE 1 TO WOPEN-MXAGENCE
                      ELSE MOVE 0 TO WOPEN-MXAGENCE
           END-IF
           IF IND-STAT = 2 PERFORM ACU-SHOW-MSG 
                           GO ACU-EXIT-RTN
           END-IF
                      
           MOVE 1 TO WAGC-OK
           MOVE DCN-AGE TO COD-MAGC NAG-PALM
           READ MXAGENCE INVALID MOVE SPACE TO ENR-MAGC
                                 MOVE 0 TO WAGC-OK 
           END-READ
           PERFORM STAT

           MODIFY DCN-Ef-Age, VALUE COD-MAGC
           MODIFY DCN-Ef-NomAge, VALUE NOM-MAGC
                      
           IF WOPEN-MXAGENCE = 0 
             CLOSE MXAGENCE
           END-IF

