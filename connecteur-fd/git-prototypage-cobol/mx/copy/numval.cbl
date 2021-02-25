      *    Equivalent FUNCTION NUMVAL

      *    Entr�e : NUMVAL-ENT Cha�ne contenant le chiffre non format�
      *    Sortie : NUMVAL-SOR Num�rique sign� correspondant
      *    NUMVAL-POINT = 0 --> marqueur des d�cimales = ,
      *                   1 --> marqueur des decimales = .
      *                   9 --> d�tection automatique: si le champ contient un point (.) et une virgule (,) le caract�re le plus � droite est celui qui correspond au marqueur de d�cimales
      *                                                Si le champ contient un seul caract�re point ou virgule, c'est ce caract�re qui est cons�d�r� comme le marqueur de d�cimale

       NUMVAL.
      *------*   
           MOVE 0 TO NUMVAL-NEG
                     NUMVAL-DEB
                     NUMVAL-VIR
                     NUMVAL-SOR
041114               NUMVAL-LON
030717     IF NUMVAL-ENT = SPACE EXIT PARAGRAPH
030717     END-IF
111215*--- D�tection automatique du marqueur de d�cimale (c'est le caract�re le plus � droite (point ou virgule) qui est cons�d�r� comme marqueur)
           IF NUMVAL-POINT = 9
              PERFORM VARYING NUMVAL-I FROM LENGTH OF NUMVAL-ENT BY -1
                 UNTIL NUMVAL-I < 1                    
                 IF NUMVAL-ENT(NUMVAL-I:1) = "," 
                    MOVE 0 TO NUMVAL-MARQDEC
                    EXIT PERFORM 
                 END-IF
                 IF NUMVAL-ENT(NUMVAL-I:1) = "." 
                    MOVE 1 TO NUMVAL-MARQDEC
                    EXIT PERFORM 
                 END-IF
              END-PERFORM
           ELSE
              MOVE NUMVAL-POINT TO NUMVAL-MARQDEC
           END-IF.


041114*    Enl�ve les blancs interm�diaires des nombres format�s 1 023...
      *    Recherche d�but et fin
           PERFORM VARYING NUMVAL-I FROM 1 BY 1
              UNTIL NUMVAL-I > LENGTH OF NUMVAL-ENT                 
              IF NUMVAL-ENT(NUMVAL-I:1) <> SPACE  
                 IF NUMVAL-DEB = 0 
                    MOVE NUMVAL-I TO NUMVAL-DEB
                 ELSE
                    MOVE NUMVAL-I TO NUMVAL-LON
                 END-IF
              END-IF
           END-PERFORM

      *     MOVE SPACE TO STAT-CMD
      *      STRING "echo '" NUMVAL-DEB " " NUMVAL-LON 
      *     "' >> /acu/mistral/ft/trace.txt" DELIMITED BY "     "
      *     INTO STAT-CMD
      *     CALL "C$SYSTEM" USING STAT-CMD


      *    Enl�ve les blancs interm�diaires + les points ou virgules qui ne correspondent pas au maqueur de d�cimales
           PERFORM VARYING NUMVAL-I FROM NUMVAL-DEB BY 1
              UNTIL NUMVAL-I > NUMVAL-LON                     
              IF NUMVAL-ENT(NUMVAL-I:1) = SPACE OR
111215          (NUMVAL-ENT(NUMVAL-I:1) = "." AND NUMVAL-MARQDEC = 0) OR   | Si marqueur d�cimal = virgule, on supprime les points
111215          (NUMVAL-ENT(NUMVAL-I:1) = "," AND NUMVAL-MARQDEC = 1) OR   | Si marqueur d�cimal = point,   on supprime les virgules
270217          (NUMVAL-ENT(NUMVAL-I:1) >= "A" AND <= "Z") OR              | Lettre (si contient "Euros" par exemple)
270217          (NUMVAL-ENT(NUMVAL-I:1) >= "a" AND <= "z") OR              | 
150218          (NUMVAL-ENT(NUMVAL-I:1) = "%")      
      *          D�cale d'un caract�re
                 ADD 1 TO NUMVAL-I GIVING NUMVAL-VIR                              
                 MOVE NUMVAL-ENT(NUMVAL-VIR:) TO NUMVAL-ENT(NUMVAL-I:)
                 SUBTRACT 1 FROM NUMVAL-I
                                 NUMVAL-LON                                     
              END-IF
           END-PERFORM

           MOVE 0 TO NUMVAL-DEB
                     NUMVAL-VIR
041114
           PERFORM VARYING NUMVAL-I FROM 1 BY 1
              UNTIL NUMVAL-I > LENGTH OF NUMVAL-ENT                 
              IF NUMVAL-ENT(NUMVAL-I:) = SPACE 
      *          Fin nombre
                 IF NUMVAL-VIR = 0 
      *             Pas de virgule      
                    SUBTRACT NUMVAL-DEB FROM NUMVAL-I
                      GIVING NUMVAL-LON                          
                    MOVE NUMVAL-ENT(NUMVAL-DEB:NUMVAL-LON)
                      TO NUMVAL-SOR-E                        
                 ELSE
                    IF NUMVAL-VIR > NUMVAL-DEB 
      *                Partie enti�re 
                       SUBTRACT NUMVAL-DEB FROM NUMVAL-VIR
                         GIVING NUMVAL-LON                              
                       MOVE NUMVAL-ENT(NUMVAL-DEB:NUMVAL-LON)
                         TO NUMVAL-SOR-E   
                    END-IF
                    ADD 1 TO NUMVAL-VIR
                    IF NUMVAL-I > NUMVAL-VIR 
      *                Partie d�cimale
                       SUBTRACT NUMVAL-VIR FROM NUMVAL-I
                         GIVING NUMVAL-LON
260916* Agrizone met 14 d�cimales dans le poids...
                       IF NUMVAL-NBDEC <> 0 
                       AND NUMVAL-LON > NUMVAL-NBDEC
                          MOVE NUMVAL-NBDEC TO NUMVAL-LON
                       END-IF
260916                                            
                       MOVE NUMVAL-ENT(NUMVAL-VIR:NUMVAL-LON)
                         TO NUMVAL-SOR-D(1:NUMVAL-LON)                           
                    END-IF
                 END-IF
                 EXIT PERFORM
              END-IF

              IF NUMVAL-ENT(NUMVAL-I:1) = "-" 
                 MOVE 1 TO NUMVAL-NEG
              ELSE
                 IF  NUMVAL-ENT(NUMVAL-I:1) <> SPACE
                                        AND <> "0"
                 AND NUMVAL-DEB = 0 
                    MOVE NUMVAL-I TO NUMVAL-DEB
                 END-IF
              END-IF

              IF NUMVAL-ENT(NUMVAL-I:1) = "," 
130313        OR (NUMVAL-ENT(NUMVAL-I:1) = "." AND NUMVAL-MARQDEC = 1)
                 MOVE NUMVAL-I TO NUMVAL-VIR
              END-IF
           END-PERFORM

           IF NUMVAL-NEG = 1   
              COMPUTE NUMVAL-SOR = - NUMVAL-SOR 
           END-IF
           .

