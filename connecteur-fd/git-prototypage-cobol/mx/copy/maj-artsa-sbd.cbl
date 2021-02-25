       Mep-Age-Masa.
           IF AGS-MLDI NOT = SPACE
                MOVE AGS-MLDI TO AGE-MASA
           ELSE MOVE W-AGE TO AGE-MASA.
           
       Maj-Artsa.
           IF TYP-MBDI = 8 EXIT PARAGRAPH
           END-IF
      *    Période: 0=exercice 1 à 12=mois en cours à mois - 12
           PERFORM CAL-PERIODE

           MOVE ART-MLDI TO W-ART-MAJ
           MOVE 0 TO W-LIN-MAJ      | mise à jour ligne (et non composition)
           MOVE QTE-MLDI TO A-QTE   | qté à mettre à jour

           PERFORM MAJ-UN-ARTSA.
             
       Maj-Un-Artsa.
           PERFORM Lect-Lock-Artsa
           IF TYP-MBDI = 3 MULTIPLY -1 BY A-QTE
           END-IF
           IF W-OTE = 1 OR 2 MULTIPLY -1 BY A-QTE
           END-IF                                                       
           
      * Ligne livrée
           IF TLI-MLDI = 1 AND PZE-MLDI NOT = 4
                IF (INO-MART = 0 OR 3) OR W-LIN-MAJ <> 0     | pas de MàJ du stock si article composé
                     SUBTRACT A-QTE FROM QSTM-MASA(1) 
                     IF IndicePeriode > 1
                        PERFORM VARYING I FROM IndicePeriode BY -1 
                        UNTIL I = 1 
                           SUBTRACT A-QTE FROM QSTM-MASA(I)
                        END-PERFORM
                     END-IF
                     IF DEP-MLDI = 0 
                        SUBTRACT A-QTE FROM STC-MASA
                     END-IF
                ELSE                   | MàJ des entrées si article composé
                     IF IndicePeriode = 1
                          ADD A-QTE TO TQM-MASA
                     END-IF
                     ADD A-QTE TO TQE-MASA
                END-IF
                IF W-LIN-MAJ NOT = 0         | ligne de composition
                     IF IndicePeriode = 1
                          ADD A-QTE TO IQM-MASA
                     END-IF
                     ADD A-QTE TO IQE-MASA
                ELSE
                     IF (TYC-MBDI NOT = 1 AND IVR-MBDI NOT = 1)
                          IF IndicePeriode = 1             | ligne normale
                               ADD A-QTE TO SQM-MASA
                          END-IF
                          ADD A-QTE TO SQE-MASA
                     ELSE IF IndicePeriode = 1             | rétrocession
                               ADD A-QTE TO RSQM-MASA
                          END-IF
                          ADD A-QTE TO RSQE-MASA
                     END-IF
                END-IF
                PERFORM Maj-Cumart
           END-IF.

           IF W-OTE = 0 OR 2
              IF W-LIN-MAJ = 0 
                   PERFORM Maj-Hisvte-Ldis
      *        ELSE PERFORM Maj-Hisvte-Nomldis
              END-IF
           END-IF                                          

      * Ligne commandée
           IF TLI-MLDI = 3 
              ADD A-QTE TO QCC-MASA
           END-IF.    
240314* SGR: article doit être géré en stock
           IF CLI-PALM = 190582 AND STO-MASA = 2
              MOVE 1 TO STO-MASA
           END-IF

      * Ligne de vente manquée
           IF PZE-MLDI = 4
                ADD A-QTE TO VTM-MASA.

           ACCEPT DME-MASA FROM CENTURY-DATE
           REWRITE ENR-MASA INVALID MOVE "Réécriture ARTSA" TO Acu-Msg-2
                                    MOVE CLE1-MASA TO Acu-Msg-3
                                    GO ERREUR.
           PERFORM STAT

           IF TYC-MBDI = 1
           AND (SRI-MPAR NOT = 1 
                OR TLI-MLDI = 3)
                PERFORM Maj-Artsa-Ach THRU F-Maj-Artsa-Ach
           END-IF.
          
      *---- Article Stock Agence Arrivée si Inter-Agence ----*
       Maj-Artsa-Ach.
           INITIALIZE ENR-MASA2
           MOVE AGL-MCLI  TO AGE-MASA2 
           MOVE W-ART-MAJ TO COD-MASA2
           READ MXARTSA2 LOCK INVALID MOVE 1 TO STO-MASA2
                                      ACCEPT DME-MASA2 FROM CENTURY-DATE
                                      WRITE ENR-MASA2
                                      END-WRITE
           END-READ
           PERFORM STAT
           IF IND-STAT = 1 GO Maj-Artsa-Ach.
           IF TLI-MLDI = 1 
           AND PZE-MLDI NOT = 4
           AND SRI-MPAR NOT = 1
                ADD A-QTE TO STC-MASA2  
                ADD A-QTE TO QSTM-MASA2(1) EQE-MASA2
                IF IndicePeriode > 1
                   PERFORM VARYING I FROM IndicePeriode BY -1 
                           UNTIL I = 1 
                       ADD A-QTE TO QSTM-MASA2(I)
                   END-PERFORM
                END-IF
                IF IndicePeriode = 1
                     ADD A-QTE TO EQM-MASA2
                END-IF
           END-IF.   

      * Ligne commandée
           IF TLI-MLDI = 3 
270917        MOVE QCF-MASA2 TO SV-QCFE
              ADD A-QTE TO QCF-MASA2
           END-IF.
                  
           ACCEPT DME-MASA2 FROM CENTURY-DATE
           REWRITE ENR-MASA2 INVALID 
                 MOVE "Réécriture ARTSA2" TO Acu-Msg-2
                 MOVE CLE1-MASA2 TO Acu-Msg-3 GO ERREUR
           END-REWRITE
           PERFORM STAT.
       F-Maj-Artsa-Ach.
     
      ******************************************************************
      *                     Mise à jour réservations                   *
      ****************************************************************** 
       Maj-Reserv.
       F-Maj-Reserv.

      *
       Maj-Reserv-Nomldis.
       F-Maj-Reserv-Nomldis.
      ******************************************************************
      *             Mise à jour de l'historique des commandes          *
      ****************************************************************** 
       MAJ-HISCDD.
       F-Maj-Hiscdd.

      ******************************************************************
      *             Mise à jour de l'historique des devis              *
      ****************************************************************** 
       MAJ-HISDVD.
       F-Maj-HISDVD.

      *
      * Calcul de la période (mois en cours ou précédent)
      *
       CAL-PERIODE.
290110*     IF DSP-MLDI = 0 MOVE DAT-MBDI TO DSP-MLDI.
           IF DSP-MLDI = 0 MOVE W-DAT TO DSP-MLDI.
           COPY "W:/mx/copy/ControlePeriode.cbl" REPLACING 
290110*          ==CPYDAT== BY ==DSP-MLDI==.
                 ==CPYDAT== BY ==W-DAT==.
           IF IndicePeriode = 0 OR > 12 MOVE 1 TO IndicePeriode.

       LECT-TSPENT.
       VERIF-TSPLIG.
       LECT-TSPLIG.
       F-LECT-TSPLIG.
       LECT-TSPMOP.

      *
      * Mise à jour consommations articles
      *
       MAJ-CUMART.

