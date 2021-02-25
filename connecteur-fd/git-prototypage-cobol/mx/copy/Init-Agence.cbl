      *    Initialisation de l'agence 
      *    Copier avec: 
      *       COPY "W:/mistral/copy/Init-Agence.cbl" REPLACING
      *              ==DCN-AGE== BY ==xxxx==  (W-AGE)
      *              ==DCN-Ef-Age== BY ==xxxx== (Entry-Field W-AGE)
      *              ==DCN-Ef-NomAge== BY ==xxxx== (Entry-Field NOM-AGC)
      *    Renvoie WAGC-OK: 1 si l'agence est correcte
      *                     2 si l'agence est correcte et non modifiable

           IF LCO-MPAR = 1
              MODIFY Screen1-Rb-NIV1, TITLE "Groupe"
           ELSE
              MODIFY Screen1-Rb-NIV1, TITLE "Société"
           END-IF                                                    

           MOVE 0 TO WAGC-OK
           MOVE AGE-PALM TO DCN-AGE
           IF CAA-PALM = 1  
              IF AGS-MPAR <> SPACE 
                 MOVE AGS-MPAR TO DCN-AGE
              ELSE
                 MOVE "00" TO DCN-AGE
              END-IF
           END-IF

           OPEN I-O MXAGENCE
           PERFORM TEST-STATUS THRU FIN-TEST-STATUS
           IF IND-STAT = 3 MOVE 1 TO WOPEN-MXAGENCE
                      ELSE MOVE 0 TO WOPEN-MXAGENCE
           END-IF
           IF IND-STAT = 2 PERFORM ACU-SHOW-MSG 
                           PERFORM ERREUR-LOG
                           GO ACU-EXIT-RTN
           END-IF

           MOVE SPACE TO ENR-MAGC
           MOVE DCN-AGE TO COD-MAGC
           READ MXAGENCE INVALID
                MOVE SPACE TO DCN-AGE
                IF CAA-PALM = 1 
                     PERFORM Acu-Extended-File-Status
                     CLOSE MXAGENCE
                     GO ACU-EXIT-RTN
                END-IF
           NOT INVALID
                MOVE 1 TO WAGC-OK
           END-READ
           PERFORM STAT

           MODIFY DCN-Ef-Age, VALUE DCN-AGE
           MODIFY DCN-Ef-NomAge, VALUE NOM-MAGC

           MOVE DCN-AGE TO NAG-PALM
           IF CAA-PALM = 1 OR IAG-PALM = "B"
                MOVE 2 TO WAGC-OK
           END-IF
           IF WOPEN-MXAGENCE = 0 CLOSE MXAGENCE
           END-IF

