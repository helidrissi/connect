       Rech-Expression.
           MOVE SPACE TO RE-EXPRESSION
           STRING RE-RECH DELIMITED BY " " 
                  "+" RE-LOWV DELIMITED BY SIZE INTO RE-EXPRESSION
           CALL "C$REGEXP" USING 2, RE-EXPRESSION, 1 
                GIVING RE-HANDLE-EXPRESSION 
           IF RE-HANDLE-EXPRESSION = 0 
      *        IF RE-TYPE-SILENT NOT = 1
      *           MOVE "Recherche impossible" to acu-msg-1
      *           perform msg-erreur
      *        END-IF
              EXIT PARAGRAPH
           END-IF

           CALL "C$REGEXP" USING 3
                           RE-HANDLE-EXPRESSION RE-CHAINE RE-LG-CHAINE
                           RE-DEBUT RE-SUIVANT
                           GIVING RE-HANDLE-TROUVE 

           CALL "C$REGEXP" USING 20
                           GIVING RE-CODE-RETOUR
           IF RE-CODE-RETOUR = 14
              MOVE 0 TO RE-DEBUT
           END-IF

      * vidage de la mémoire
           CALL "C$REGEXP" USING 5 RE-HANDLE-EXPRESSION
           IF RE-HANDLE-TROUVE <> 0
              CALL "C$REGEXP" USING 4 RE-HANDLE-TROUVE
           END-IF

141116* regexp ne fonctionne pas toujours en version 9   
           IF RE-DEBUT = 0 AND RE-RECH <> SPACE
           AND RUNTIME-MAJOR-VERSION = 09  
              MOVE FUNCTION UPPER-CASE(RE-CHAINE) TO RE-CHAINE
              MOVE FUNCTION UPPER-CASE(RE-RECH) TO RE-RECH
              IF SV-RE-RECH <> RE-RECH
                 PERFORM VARYING RE-LONC FROM 1 BY 1 
                   UNTIL RE-RECH(RE-LONC:) = SPACE
                 END-PERFORM
                 ADD -1 TO RE-LONC
                 MOVE RE-RECH TO SV-RE-RECH
              END-IF
              perform varying re-suivant from 1 by 1 
280318*            until re-suivant > RE-LONC 
280318            until re-suivant > (80 - RE-LONC)
                     OR RE-DEBUT = 1
                 IF RE-CHAINE(RE-SUIVANT:RE-LONC)
                    = RE-RECH(1:RE-LONC)
                   MOVE 1 TO RE-DEBUT
                END-IF
              end-perform
           END-IF
141116
           .
