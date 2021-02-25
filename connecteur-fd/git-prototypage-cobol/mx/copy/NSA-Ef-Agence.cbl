      *-----------------------------------------------------------------
      *    NSA 2 - SELECTION D'UNE AGENCE
      *-----------------------------------------------------------------
      *    cf. NSA-Donnees.wrk

      *     COPY "../../mx/copy/NSA-Ef-Agence.cbl".
      *    ou
      *     COPY "../../mx/copy/NSA-Ef-Agence.cbl" REPLACING 
      *          ==AGE-INT OF INT==    BY ==XXX==
      *          ==Screen1-Ef-AGE==    BY ==Screen1-Ef-XXX==
      *          ==Screen1-Ef-NOMAGE== BY ==Screen1-Ef-NOMXXX==.
      *
      *     (XXX agence)

           MOVE 0 TO WAGC-OK
     
           OPEN I-O MXAGENCE
           PERFORM TEST-STATUS THRU FIN-TEST-STATUS
           IF IND-STAT = 3 MOVE 1 TO WOPEN-MXAGENCE
                      ELSE MOVE 0 TO WOPEN-MXAGENCE
           END-IF
           IF IND-STAT = 2 PERFORM ACU-SHOW-MSG 
                           GO ACU-EXIT-RTN
           END-IF
                      
           MOVE 1 TO WAGC-OK

           INQUIRE Screen1-Ef-AGE, VALUE IN AGE-INT OF INT

           MOVE SPACE TO ENR-MAGC
           MOVE AGE-INT OF INT TO COD-MAGC NAG-PALM
           READ MXAGENCE KEY CLE1-MAGC INVALID MOVE SPACE TO ENR-MAGC
                                               MOVE 0 TO WAGC-OK 
           END-READ
           PERFORM STAT
                      
           IF WOPEN-MXAGENCE = 0 CLOSE MXAGENCE
           END-IF
      
           IF CAA-PALM = 1 OR IAG-PALM = "B"
             MOVE 2 TO WAGC-OK
           END-IF
           
           MOVE COD-MAGC TO AGE-INT OF INT
 
           MODIFY Screen1-Ef-AGE, VALUE AGE-INT OF INT
           MODIFY Screen1-Ef-NOMAGE, VALUE NOM-MAGC
