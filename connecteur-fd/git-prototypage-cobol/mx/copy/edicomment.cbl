      *    DECOUPAGE COMMENTAIRE POUR EDITION
      *    
      *    Copier avec: 
      *       COPY "U:/mx/copy/edicomment.cbl" REPLACING
      *              ==DCN-PROC== BY ==GENER-XML-DET==  (Procedure d'impression)
      *              ==DCN-VAR==  BY ==IX-ZON-DES==     (variable à éditer)
      *              ==DCN-NBCP== BY ==60==             (Nb caractère ligne si pas de blanc)
      *              ==DCN-NBCB== BY ==55==             (Si blanc avant ce nombre de caractère, coupure au dernier blanc)

      *    MXCOMMENTAIRE est déjà lu

      *    EDCO-COMPTE= 0 génère l'édition = 1 compte les lignes = 3 découpe les lignes pour traitement (pas ajout &#160;)
            
      *    EDCO-NB = Nombre de lignes 
           
           MOVE 1 TO EDCO-I
                     EDCO-J
           MOVE 0 TO EDCO-Z
                     EDCO-K
                     EDCO-NB
                     EDCO-FIN

           PERFORM VARYING EDCO-I FROM 1 BY 1
              UNTIL EDCO-I > LENGTH OF LIB-MCMO
                 OR LIB-MCMO(EDCO-I:) = SPACE
                 OR EDCO-FIN = 1

              ADD 1 TO EDCO-Z
                       EDCO-K
      
              IF LIB-MCMO(EDCO-I:1) < SPACE 
      *          2 caractères de fin de ligne
                 SUBTRACT 1 FROM EDCO-Z
                 ADD      1 TO   EDCO-NB

                 IF EDCO-COMPTE <> 1 

                    IF EDCO-Z <> 0 
                       MOVE LIB-MCMO(EDCO-J:EDCO-Z) TO DCN-VAR
                    ELSE
                       MOVE SPACE                   TO DCN-VAR
                    END-IF

                    IF  DCN-VAR = SPACE 
                    AND EDCO-COMPTE <> 3 
160108              AND EDCO-CTRLM NOT = 1
090108*              AND ETA-INT <> 8 
                       MOVE "&#160;" TO DCN-VAR
                    END-IF

                    PERFORM DCN-PROC

                    IF EDCO-FIN = 1 
                       EXIT PERFORM
                    END-IF

                 END-IF

                 MOVE 0 TO EDCO-Z
                           EDCO-K
      *          Evite le deuxième caractère de fin de ligne
                 ADD 1 TO EDCO-I
                 ADD 1 TO EDCO-I GIVING EDCO-J
              ELSE

                 IF LIB-MCMO(EDCO-I:1) = SPACE 
                    MOVE 0 TO EDCO-K
                 END-IF

                 IF EDCO-Z = DCN-NBCP 
                 OR (     EDCO-Z = DCN-NBCB 
                      AND EDCO-K <> EDCO-Z ) 
      *             Coupe à DCN-NBCP caractères si pas de blanc
      *             Ou au dernier blanc avant DCN-NBCB caractères
                    IF EDCO-K = DCN-NBCP 
                       SUBTRACT 1      FROM EDCO-Z
                    ELSE
                       SUBTRACT EDCO-K FROM EDCO-Z
                    END-IF

                    ADD 1 TO EDCO-NB

                    IF EDCO-COMPTE <> 1 
                       MOVE LIB-MCMO(EDCO-J:EDCO-Z) TO DCN-VAR

                       IF  DCN-VAR = SPACE  
                       AND EDCO-COMPTE <> 3 
160108                 AND EDCO-CTRLM NOT = 1
090108*                 AND ETA-INT <> 8 
                          MOVE "&#160;" TO DCN-VAR
                       END-IF

                       PERFORM DCN-PROC

                       IF EDCO-FIN = 1 
                          EXIT PERFORM
                       END-IF

                    END-IF

                    IF EDCO-K = DCN-NBCP 
                       MOVE EDCO-I TO EDCO-J
                    ELSE
                       ADD  EDCO-Z TO EDCO-J GIVING EDCO-I 
                                                    EDCO-J
                    END-IF

                    MOVE 1 TO EDCO-Z
                              EDCO-K
                 END-IF

              END-IF


           END-PERFORM

           IF  EDCO-Z <> 0 
           AND EDCO-FIN = 0 
              ADD 1 TO EDCO-NB

              IF EDCO-COMPTE <> 1 
                 MOVE LIB-MCMO(EDCO-J:EDCO-Z) TO DCN-VAR

                 IF  DCN-VAR = SPACE  
                 AND EDCO-COMPTE <> 3 
160108           AND EDCO-CTRLM NOT = 1
090108*           AND ETA-INT <> 8 
                    MOVE "&#160;" TO DCN-VAR
                 END-IF

                 PERFORM DCN-PROC

              END-IF

           END-IF

