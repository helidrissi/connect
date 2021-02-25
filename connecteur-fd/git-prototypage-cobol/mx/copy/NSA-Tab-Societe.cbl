      *-----------------------------------------------------------------
      * NSA 1 - CHARGEMENT TABLE DES AGENCES / SOCIETE
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

           INITIALIZE ENR-MAGC
           START MXAGENCE KEY NOT < CLE1-MAGC INVALID
              MOVE HIGH-VALUE TO COD-MAGC
           END-START
           PERFORM STAT

           MOVE 0 TO TNSA-NAGE
           PERFORM UNTIL COD-MAGC = HIGH-VALUE OR TNSA-NAGE > 500
              READ MXAGENCE NEXT END MOVE HIGH-VALUE TO COD-MAGC
              END-READ
              PERFORM STAT
              IF COD-MAGC NOT = HIGH-VALUE
                 ADD 1 TO TNSA-NAGE
                 MOVE COD-MAGC TO TNSA-AGE(TNSA-NAGE)
              END-IF
           END-PERFORM
           
           IF TNSA-NAGE > 500 
              MOVE "Limite de 500 agences atteinte" TO Acu-Msg-1
              PERFORM MSG-INFO
           END-IF

251108*     SUBTRACT 1 FROM TNSA-NAGE

           IF WOPEN-MXAGENCE = 0 CLOSE MXAGENCE
           END-IF

           IF TNSA-NAGE = 0 
              MOVE "Aucune agence pour la sélection" TO Acu-Msg-1
              PERFORM MSG-INFO
              IF NSA-Exit = 1
               EXIT PARAGRAPH
              ELSE 
                   EXIT PROGRAM
              END-IF
           END-IF
           
