      * Prise en charge d'une ComboBox sur les mois.
      * Appeler la copy avec REPLACING ==DCN-COMBO== BY ==xxxxxxxx==

      * NB : Attend la valeur pré-choisie dans Cm-Mois-Ouvert-SelectedItem.
      * ATTENTION : la première occurence du tableau est réservée pour
      * servir de variable temporaire lors de la lecture de la combo...

      * Pré-charger les données si ce n'a pas encore été fait...
           IF Cm-Mois-Ouvert-LoadedItems = 0 
               MOVE ANN-MPAR TO A-SAMJ2
               MOVE MOI-MPAR TO M-SAMJ2
               MOVE SIE-MPAR TO S-SAMJ2
               MOVE 31 TO J-SAMJ2
               IF M-SAMJ2 = 4 OR 6 OR 9 OR 11 MOVE 30 TO J-SAMJ2
               END-IF
               IF M-SAMJ2 = 2 MOVE 28 TO J-SAMJ2
               END-IF
               MOVE 2 TO Cm-Mois-Ouvert-9-3
               MOVE 1 TO Cm-Mois-Ouvert-COD( Cm-Mois-Ouvert-9-3 )
               MOVE SA-SAMJ2 TO Cm-Mois-Ouvert-ANN( Cm-Mois-Ouvert-9-3 )
               MOVE D-SAMJ2 TO Cm-Mois-Ouvert-DAT(Cm-Mois-Ouvert-9-3)
               IF M-SAMJ2 > 0 AND < 13 
                  MOVE ELT-MOIS(M-SAMJ2) TO 
                       Cm-Mois-Ouvert-LIB(Cm-Mois-Ouvert-9-3)
               END-IF

      *         IF Cm-Mois-Ouvert-PerMini not = 0
      *            if Cm-Mois-Ouvert-PerMini-M = 12 
      *               ADD 1 TO Cm-Mois-Ouvert-PerMini-SA
      *               move 1 to Cm-Mois-Ouvert-PerMini-M
      *            else
      *               ADD 1 TO Cm-Mois-Ouvert-PerMini-M
      *            end-if
      *         end-if    

               PERFORM VARYING Cm-Mois-Ouvert-9-3 FROM 3 BY 1
      *                 UNTIL (Cm-Mois-Ouvert-9-3 >= 14)
                       UNTIL (Cm-Mois-Ouvert-9-3 >= 4)
                          OR (D-SAMJ2(1:6) = MR3-MPAR(1:6))
                          OR (D-SAMJ2(1:6) <= Cm-Mois-Ouvert-PerMini) 
                   IF M-SAMJ2 NOT = 1
                       COMPUTE M-SAMJ2 = M-SAMJ2 - 1
                   ELSE
                       MOVE 12 TO M-SAMJ2      
                       COMPUTE SA-SAMJ2 = SA-SAMJ2 - 1
                   END-IF
                   MOVE 31 TO J-SAMJ2
                   IF M-SAMJ2 = 4 OR 6 OR 9 OR 11 MOVE 30 TO J-SAMJ2
                   END-IF
                   IF M-SAMJ2 = 2 MOVE 28 TO J-SAMJ2
                   END-IF
                   MOVE SA-SAMJ2 TO 
                        Cm-Mois-Ouvert-ANN(Cm-Mois-Ouvert-9-3)
                   COMPUTE Cm-Mois-Ouvert-COD(Cm-Mois-Ouvert-9-3) 
                         = Cm-Mois-Ouvert-9-3 - 1
                   IF M-SAMJ2 > 0 AND < 13 
                      MOVE ELT-MOIS(M-SAMJ2) TO 
                           Cm-Mois-Ouvert-LIB(Cm-Mois-Ouvert-9-3)
                   END-IF
                   MOVE D-SAMJ2 TO 
                        Cm-Mois-Ouvert-DAT(Cm-Mois-Ouvert-9-3)
               END-PERFORM
               IF Cm-Mois-Ouvert-9-3 >= Cm-Mois-Ouvert-NbMaxItems 
                   DISPLAY MESSAGE "Limite de Cm-Mois-Ouvert atteinte"
               END-IF
               SUBTRACT 1 FROM Cm-Mois-Ouvert-9-3  
                     GIVING Cm-Mois-Ouvert-LoadedItems
               MODIFY DCN-COMBO, RESET-LIST = 1
           END-IF

      * Pour contourner un bug du Copy...Replacing
           SET Cm-Mois-Ouvert-Handle TO HANDLE OF DCN-COMBO
           
           COPY "W:/mx/copy/Cm-LoadAndSelect.cbl"              
                REPLACING =='DCN-WRK'== BY ==Mois-Ouvert==
                          =='DCN-KEY'== BY ==LIB==.
           .

      * LIBELLE-MOIS.
      *     EVALUATE M-SAMJ2
      *     WHEN 1 
      *     MOVE "Janvier" TO Cm-Mois-Ouvert-LIB(Cm-Mois-Ouvert-9-3)
      *     WHEN 2 
      *     MOVE "Février" TO Cm-Mois-Ouvert-LIB(Cm-Mois-Ouvert-9-3)
      *     WHEN 3 
      *     MOVE "Mars" TO Cm-Mois-Ouvert-LIB(Cm-Mois-Ouvert-9-3)
      *     WHEN 4 
      *     MOVE "Avril" TO Cm-Mois-Ouvert-LIB(Cm-Mois-Ouvert-9-3)
      *     WHEN 5 
      *     MOVE "Mai" TO Cm-Mois-Ouvert-LIB(Cm-Mois-Ouvert-9-3)
      *     WHEN 6 
      *     MOVE "Juin" TO Cm-Mois-Ouvert-LIB(Cm-Mois-Ouvert-9-3)
      *     WHEN 7 
      *     MOVE "Juillet" TO Cm-Mois-Ouvert-LIB(Cm-Mois-Ouvert-9-3)
      *     WHEN 8 
      *     MOVE "Août" TO Cm-Mois-Ouvert-LIB(Cm-Mois-Ouvert-9-3)
      *     WHEN 9 
      *     MOVE "Septembre" TO Cm-Mois-Ouvert-LIB(Cm-Mois-Ouvert-9-3)
      *     WHEN 10 
      *     MOVE "Octobre" TO Cm-Mois-Ouvert-LIB(Cm-Mois-Ouvert-9-3)
      *     WHEN 11 
      *     MOVE "Novembre" TO Cm-Mois-Ouvert-LIB(Cm-Mois-Ouvert-9-3)
      *     WHEN 12 
      *     MOVE "Décembre" TO Cm-Mois-Ouvert-LIB(Cm-Mois-Ouvert-9-3)
      *     END-EVALUATE.
