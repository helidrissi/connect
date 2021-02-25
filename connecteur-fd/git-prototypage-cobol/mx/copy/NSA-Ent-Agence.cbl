      *-----------------------------------------------------------------
      * NSA 2 - ENTETE AGENCE
      *-----------------------------------------------------------------
      *    cf. NSA-Donnees.wrk
  
           MOVE SPACE TO XMLOut-NOMSOC
           MOVE SPACE TO XMLOut-NOMAGC XMLOut-CODAGC 
           MOVE SPACE TO XMLOut-NOMREG XMLOut-CODREG 
           MOVE SPACE TO XMLOut-DEV

           OPEN I-O MXAGENCE
           PERFORM TEST-STATUS THRU FIN-TEST-STATUS

           IF IND-STAT = 3 MOVE 1 TO WOPEN-MXAGENCE
                      ELSE MOVE 0 TO WOPEN-MXAGENCE
           END-IF  

           IF IND-STAT = 2 PERFORM ACU-SHOW-MSG 
                           GO ACU-EXIT-RTN
           END-IF
              
           INITIALIZE ENR-MAGC
           MOVE AGE-INT OF INT TO COD-MAGC
           READ MXAGENCE INVALID
              MOVE "Agence non trouvée" TO Acu-Msg-1
              MOVE AGE-INT OF INT TO Acu-Msg-2
              PERFORM ERREUR
           END-READ
           PERFORM STAT
           
           IF WOPEN-MXAGENCE = 0 CLOSE MXAGENCE
           END-IF
         
           MOVE COD-MAGC TO XMLOut-CODAGC
           MOVE NOM-MAGC TO XMLOut-NOMAGC

           MOVE RAI-MPAR TO XMLOut-NOMSOC
           MOVE ABRD-MPAR TO XMLOut-DEV

