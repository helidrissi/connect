      *
      *      CONTROLE D'UNE DATE PAR RAPPORT A LA PERIODE EN COURS
      *
      *      La période en cours autorisée est de 12 mois déroulants
      *
      *      Attention: il est cependant interdit de travailler 
      *       sur l'exercice précédent
      * 
      *    copy "/acu/mx/copy/ControlePeriode.cbl"
      *         REPLACING ==CPYDAT==   BY ==XXX==.
      *       (XXX est la date à controler sur en SSAAMMJJ)
      *                
      *    renvoie: IndicePeriode = 1 à 12 
      *               (indice pour mise à jour ARTSA et STOAN)
      *             DateSaisie-Erreur 
      *               ( = 0 si OK et 1 si erreur)                                       

           MOVE 0 TO DateSaisie-Erreur

      * Calcul période mois précédent
           MOVE ANN-MPAR TO PeriodeEnCours-An 
           if ANN-MPAR > 40 ADD 1900 TO PeriodeEnCours-An
                       ELSE ADD 2000 TO PeriodeEnCours-An
           END-IF
           MOVE MOI-MPAR TO PeriodeEnCours-Mois
           MOVE PeriodeEnCours TO PeriodeDebut
           MOVE PeriodeEnCours TO PeriodeDebut12
           
      * 12/04/2006: modif pour ne travailler que sur 2 mois
           SUBTRACT 1 FROM PeriodeDebut-Mois
           IF PeriodeDebut-Mois = 0 
              MOVE 12 TO PeriodeDebut-Mois
              SUBTRACT 1 FROM PeriodeDebut-An
           END-IF 
      * 12/12/2011: Rocha veut travailler sur 3 mois
           IF CLI-PALM = 511217
      * 03/08/2015: Machdeal aussi pour les achats notamment
           OR CLI-PALM = 971518
      * 03/07/2017: Truck Bus pour rattraper le retard
           OR CLI-PALM = 131641
           OR (CLI-PALM < 10 AND IDE-PALM = "NC")
              SUBTRACT 1 FROM PeriodeDebut-Mois
              IF PeriodeDebut-Mois = 0 
                 MOVE 12 TO PeriodeDebut-Mois
                 SUBTRACT 1 FROM PeriodeDebut-An
              END-IF
           END-IF 

      * Calcul période en cours - 12 mois pour Maj stock
           SUBTRACT 1 FROM PeriodeDebut12-An
           
      * Test période en cours
           MOVE CPYDAT TO PeriodeSaisie
           IF PeriodeSaisie-AM > PeriodeEnCours
           OR PeriodeSaisie-AM < PeriodeDebut
               MOVE 1 TO DateSaisie-Erreur
      *         move "Date hors période autorisée" to acu-msg-1
      *         string "(" PeriodeDebut(5:2) "/" PeriodeDebut(1:4)
      *                " ->" " " PeriodeEnCours(5:2) 
      *                "/" PeriodeEnCours(1:4) ")" 
      *                delimited by "   " into acu-msg-2
      *         perform msg-erreur
           END-IF

      * Test début d'exercice
           IF PeriodeSaisie < DDE-MPAR 
               MOVE 1 TO DateSaisie-Erreur
      *         move "Date antérieure au début d'exercice" to acu-msg-1
      *         string "(" DDE-MPAR(7:2) "/" DDE-MPAR(5:2)
      *                "/" DDE-MPAR(1:2) ")" 
      *                delimited by "   " into acu-msg-2
      *         perform msg-erreur
           END-IF  

100706*     MOVE 1 TO IndicePeriode
100706*     IF DateSaisie-Erreur = 0
100706*         IF PeriodeSaisie-AM <> PeriodeEnCours
100706*              MOVE 2 TO IndicePeriode
100706*         END-IF
100706*     END-IF
           
100706     MOVE 13 TO IndicePeriode
      *     IF DateSaisie-Erreur = 0
               PERFORM VARYING PeriodeTest FROM PeriodeDebut12 BY 1 
                        UNTIL PeriodeTest > PeriodeEnCours
                   if PeriodeTest = PeriodeSaisie-AM
                        move PeriodeEnCours to PeriodeTest
                   else add -1 to IndicePeriode
                   end-if
                   If PeriodeTest-Mois = 12 ADD 1 TO PeriodeTest-An
                                            MOVE 0 TO PeriodeTest-Mois
                   End-if
               END-PERFORM  
      *     ELSE
      *        MOVE 1 TO IndicePeriode
      *     END-IF    

           
