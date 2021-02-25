      ******************************************************************
      *   Calcul de la Date d'Echeance                                 *
      *   Renseigner:                                                  *
      *             W-ECH (Code echeance)                              *
      *             W-NJE-ECH (Si code echeance = 9)                   *
      *             W-TER (Code terme)                                 *
      *             W-D-ECH (Date de depart du calcul)                 *
      *             W-PEC (avec PEC-CSOC ou PEF-CSOC pour cli ou fou)  *
      *             W-FMS (avec FMC-CSOC ou FMF-CSOC pour cli ou fou)  *
      *             W-CED (avec CEDC-CSOC ou CEDF-CSOC pour cli ou fou)*
      ******************************************************************
       D-CAL-ECHEA.  
250209     
           IF W-TER = 0 
              PERFORM CAL-ECHEA-TER-0
              GO CALC0B
           END-IF
250209
           EVALUATE W-ECH 
           WHEN 0 
              GO CALC0B
           WHEN 1 
              ADD 15 TO W-J-ECH 
              GO CALC0A
           WHEN 2 
              ADD 1  TO W-M-ECH
           WHEN 3 
              ADD 1  TO W-M-ECH 
              ADD 15 TO W-J-ECH 
              GO CALC0A
           WHEN 4 
              ADD 2  TO W-M-ECH
           WHEN 5  
      *        IF EC5-CSOC = 1 AND JEC5-CSOC NOT = 0 
      *             MOVE JEC5-CSOC TO W-J2ADD
      *             PERFORM DO-ADD-J2ADD W-J2ADD TIMES
      *        ELSE 
              ADD 3  TO W-M-ECH
      *        END-IF
           WHEN 6 
      *        IF EC6-CSOC = 1 AND JEC6-CSOC NOT = 0 
      *             MOVE JEC6-CSOC TO W-J2ADD
      *             PERFORM DO-ADD-J2ADD W-J2ADD TIMES
      *        ELSE 
              ADD 4  TO W-M-ECH
      *        END-IF
           WHEN 7
      *        IF EC7-CSOC = 1 AND JEC7-CSOC NOT = 0 
      *             MOVE JEC7-CSOC TO W-J2ADD
      *             PERFORM DO-ADD-J2ADD W-J2ADD TIMES
      *        ELSE 
              ADD 5  TO W-M-ECH
      *        END-IF
           WHEN 8 
      *        IF EC8-CSOC = 1 AND JEC8-CSOC NOT = 0 
      *             MOVE JEC8-CSOC TO W-J2ADD
      *             PERFORM DO-ADD-J2ADD W-J2ADD TIMES
      *        ELSE
              ADD 6  TO W-M-ECH
      *        END-IF
           WHEN 9 
              COMPUTE W-M-ECH = W-M-ECH + (W-NJE-ECH / 30)
           END-EVALUATE
           GO CALC0B.
       CALC0A.
           IF W-M-ECH > 12  
              ADD 1 TO W-A-ECH 
              ADD -12 TO W-M-ECH
           END-IF
           IF (W-M-ECH = 1 OR 3 OR 5 OR 7 OR 8 OR 10 OR 12)
           AND W-J-ECH > 31
               SUBTRACT 31 FROM W-J-ECH 
               ADD 1 TO W-M-ECH 
               GO CALC0B
           END-IF
           IF W-M-ECH = 2 AND W-J-ECH > 28
               SUBTRACT 28 FROM W-J-ECH
               ADD 1 TO W-M-ECH 
               GO CALC0B
           END-IF
           IF (W-M-ECH = 4 OR 6 OR 9 OR 11)
           AND W-J-ECH > 30 
               SUBTRACT 30 FROM W-J-ECH 
               ADD 1 TO W-M-ECH
           END-IF
           .
       CALC0B.
           EVALUATE W-TER 
           WHEN 0 
              ADD 0 TO W-J-ECH
           WHEN 1 
              MOVE 31 TO W-J-ECH
              IF W-FMS = 1 MOVE 30 TO W-J-ECH
              END-IF
           WHEN 2 
              IF W-PEC = 0 AND W-J-ECH < 5  
                   MOVE 5 TO W-J-ECH 
              ELSE MOVE 5 TO W-J-ECH 
                   ADD 1 TO W-M-ECH
              END-IF
           WHEN 3 
              IF W-PEC = 0 AND W-J-ECH < 10 
                   MOVE 10 TO W-J-ECH
              ELSE MOVE 10 TO W-J-ECH
                   ADD 1 TO W-M-ECH
              END-IF
           WHEN 4 
              IF W-PEC = 0 AND W-J-ECH < 15 
                   MOVE 15 TO W-J-ECH
              ELSE MOVE 15 TO W-J-ECH 
                   ADD 1 TO W-M-ECH
              END-IF
           WHEN 5 
              IF W-PEC = 0 AND W-J-ECH < 20 
                   MOVE 20 TO W-J-ECH
              ELSE MOVE 20 TO W-J-ECH 
                   ADD 1 TO W-M-ECH
              END-IF
           WHEN 6 
              IF W-PEC = 0 AND W-J-ECH < 25 
                   MOVE 25 TO W-J-ECH
              ELSE MOVE 25 TO W-J-ECH 
                   ADD 1 TO W-M-ECH
              END-IF
           END-EVALUATE

           IF W-M-ECH > 12 
                ADD 1 TO W-A-ECH 
                SUBTRACT 12 FROM W-M-ECH
           END-IF
170516
      *     IF W-J-ECH < 28 
      *          GO F-CAL-ECHEA
      *     END-IF        
      *     IF W-M-ECH NOT = 2 AND NOT = 4 AND NOT = 6
      *     AND NOT = 9 AND NOT = 11 
      *          GO F-CAL-ECHEA
      *     END-IF
      *     IF W-M-ECH = 2 
      *          MOVE 28 TO W-J-ECH 
      *     ELSE MOVE 30 TO W-J-ECH
      *     END-IF
           IF (W-M-ECH = 4 OR 6 OR 9 OR 11)
           AND W-J-ECH > 30 
               MOVE 30 TO W-J-ECH
           END-IF
           IF W-M-ECH = 2
           AND W-J-ECH > 28
              DIVIDE W-SA-ECH BY 4 GIVING WECHEA-RESULT 
                 REMAINDER WECHEA-RESTE
              IF WECHEA-RESTE = ZERO
                   MOVE 29 TO W-J-ECH
              ELSE MOVE 28 TO W-J-ECH
              END-IF
           END-IF
           .
170516
       F-CAL-ECHEA.
           IF W-A-ECH > 40 
                MOVE 19 TO W-S-ECH
           ELSE MOVE 20 TO W-S-ECH
           END-IF
           .
      ******************************************************************
      *                Calcul de la Date de Fin de Mois                *
      ******************************************************************
       DAT-FMOIS.
           IF W-M-ECH = 01 OR 03 OR 05 OR 07 OR 08 OR 10 OR 12
               MOVE 31 TO W-J-ECH
           END-IF
           IF W-M-ECH = 04 OR 06 OR 09 OR 11
               MOVE 30 TO W-J-ECH
           END-IF
           IF W-M-ECH = 02 
               MOVE 28 TO W-J-ECH
           END-IF
           .
      ******************************************************************
      *       Calcul spécial si terme échéance = date à date           *
      ******************************************************************
       CAL-ECHEA-TER-0.
      * calcul date de fin de mois selon paramètre
      *     IF W-CED = 1 
140409*     AND ECFM-CSOC(W-ECH + 1) <> 1
      *        PERFORM DAT-FMOIS
      *     END-IF

           MOVE 0 TO W-J2ADD
           EVALUATE W-ECH
           WHEN 1 MOVE 15  TO W-J2ADD
           WHEN 2 MOVE 30  TO W-J2ADD
           WHEN 3 MOVE 45  TO W-J2ADD
           WHEN 4 MOVE 60  TO W-J2ADD
           WHEN 5 MOVE 90 TO W-J2ADD
           WHEN 6 MOVE 120 TO W-J2ADD
           WHEN 7 MOVE 150 TO W-J2ADD
           WHEN 8 MOVE 180 TO W-J2ADD
           WHEN 9 MOVE W-NJE-ECH TO W-J2ADD
           END-EVALUATE
           PERFORM DO-ADD-J2ADD W-J2ADD TIMES
160311* arrondi au 5 ou 10 suivant selon paramètre
      *     IF ARED-CSOC = 1 
      *        IF W-J-ECH <= 5 MOVE 5 TO W-J-ECH
      *        ELSE IF W-J-ECH <= 10 MOVE 10 TO W-J-ECH
      *        ELSE IF W-J-ECH <= 15 MOVE 15 TO W-J-ECH
      *        ELSE IF W-J-ECH <= 20 MOVE 20 TO W-J-ECH
      *        ELSE IF W-J-ECH <= 25 MOVE 25 TO W-J-ECH
      *        ELSE PERFORM DAT-FMOIS.
      *     IF ARED-CSOC = 2 
      *        IF W-J-ECH <= 10 MOVE 10 TO W-J-ECH
      *        ELSE IF W-J-ECH <= 20 MOVE 20 TO W-J-ECH
      *        ELSE PERFORM DAT-FMOIS.
      *
           .
       DO-ADD-J2ADD.
           ADD 1 TO W-J-ECH
           IF ((W-M-ECH = 1 OR 3 OR 5 OR 7 OR 8 OR 10 OR 12)
                AND W-J-ECH > 31)
           OR ((W-M-ECH = 4 OR 6 OR 9 OR 11)
                AND W-J-ECH > 30)
           OR (W-M-ECH = 2
                AND W-J-ECH > 28)
               ADD 1 TO W-M-ECH
               MOVE 1 TO W-J-ECH
           END-IF
           IF W-M-ECH > 12 
              ADD 1 TO W-A-ECH 
              SUBTRACT 12 FROM W-M-ECH
           END-IF
           .
