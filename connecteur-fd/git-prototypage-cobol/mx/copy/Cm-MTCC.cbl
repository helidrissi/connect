      * Prise en charge d'une ComboBox des Types de Commandes.
      * Appeler la copy avec REPLACING ==DCN-COMBO== BY ==xxxxxxxx==

      * NB : Attend la valeur pr�-choisie dans Cm-MTCC-SelectedItem.
      * ATTENTION : la premi�re occurence du tableau est r�serv�e pour
      * servir de variable temporaire lors de la lecture de la combo...

      * Pr�-charger les donn�es si ce n'a pas encore �t� fait...
           IF Cm-MTCC-LoadedItems = 0 
               MOVE 2 TO Cm-MTCC-9-3
               IF Cm-MTCC-Item1Vide = 1
                  MOVE SPACES     TO Cm-MTCC-COD(2)
                  MOVE "       ." TO Cm-MTCC-LIB2(2)
                  ADD 1 TO Cm-MTCC-9-3
               END-IF
               move 1 TO Cm-MTCC-COD(Cm-MTCC-9-3)
               MOVE "Normal" TO Cm-MTCC-LIB(Cm-MTCC-9-3)
               ADD 1 TO Cm-MTCC-9-3
               move 2 TO Cm-MTCC-COD(Cm-MTCC-9-3)
               MOVE "Urgent" TO Cm-MTCC-LIB(Cm-MTCC-9-3)
               ADD 1 TO Cm-MTCC-9-3
               move 3 TO Cm-MTCC-COD(Cm-MTCC-9-3)
               MOVE "Stock" TO Cm-MTCC-LIB(Cm-MTCC-9-3)
               IF Cm-MTCC-9-3 >= Cm-MTCC-NbMaxItems 
                   DISPLAY MESSAGE "Limite de Cm-MTCC atteinte"
               END-IF
               SUBTRACT 1 FROM Cm-MTCC-9-3
                        GIVING Cm-MTCC-LoadedItems
               MODIFY DCN-COMBO, RESET-LIST = 1
           END-IF

      * Pour contourner un bug du Copy...Replacing
           SET Cm-MTCC-Handle TO HANDLE OF DCN-COMBO
           
           COPY "W:/mx/copy/Cm-LoadAndSelect.cbl"              
                REPLACING =='DCN-WRK'== BY ==MTCC==
                          =='DCN-KEY'== BY ==COD==.
