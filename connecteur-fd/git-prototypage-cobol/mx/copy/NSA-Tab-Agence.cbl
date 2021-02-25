      *-----------------------------------------------------------------
      * NSA 2 - CHARGEMENT TABLE DES AGENCES / AGENCE
      *-----------------------------------------------------------------
      *    cf. NSA-Donnees.wrk
  
           INITIALIZE NSA-Donnees
           
      *    lecture AGENCE
           OPEN I-O MXAGENCE
           PERFORM TEST-STATUS THRU FIN-TEST-STATUS
           IF IND-STAT = 3 MOVE 1 TO WOPEN-MXAGENCE
                      ELSE MOVE 0 TO WOPEN-MXAGENCE
           END-IF  
           IF IND-STAT = 2 PERFORM ACU-SHOW-MSG 
                           GO ACU-EXIT-RTN
           END-IF

           MOVE 1 TO TNSA-NAGE

           INITIALIZE ENR-MAGC
           MOVE AGE-INT OF INT TO COD-MAGC
           READ MXAGENCE INVALID
              MOVE "Agence non trouvée" TO Acu-Msg-1
              MOVE AGE-INT OF INT TO Acu-Msg-2
              IF NSA-EXIT = 1
                   PERFORM MSG-ERREUR
                   EXIT PARAGRAPH
              ELSE PERFORM ERREUR
              END-IF
           END-READ
           PERFORM STAT
           
           IF WOPEN-MXAGENCE = 0 CLOSE MXAGENCE
           END-IF
      
           IF TNSA-NAGE = 0 
              MOVE "Aucune agence pour la sélection" TO Acu-Msg-1
              PERFORM MSG-INFO
              IF NSA-EXIT = 1
               EXIT PARAGRAPH
              ELSE
                   EXIT PROGRAM
              END-IF
           END-IF
           MOVE 1 TO TNSA-NAGE
           MOVE AGE-INT OF INT TO TNSA-AGE(1)
           
