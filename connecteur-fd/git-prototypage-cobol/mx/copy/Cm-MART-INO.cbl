      * Prise en charge d'une ComboBox sur les Compositions
      * Appeler la copy avec REPLACING ==DCN-COMBO== BY ==xxxxxxxx==

      * NB : Attend la valeur pré-choisie dans Cm-MART-INO-SelectedItem.
      * ATTENTION : la première occurence du tableau est réservée pour
      * servir de variable temporaire lors de la lecture de la combo...

      * Pré-charger les données si ce n'a pas encore été fait...
           IF Cm-MART-INO-LoadedItems = 0 
               MOVE 0 TO Cm-MART-INO-COD(2)
               MOVE "Non" TO Cm-MART-INO-LIB(2)
               MOVE 1 TO Cm-MART-INO-COD(3)
               MOVE "Ens. Fixe" TO Cm-MART-INO-LIB(3)
               MOVE 2 TO Cm-MART-INO-COD(4)
               MOVE "Ens. Variable" TO Cm-MART-INO-LIB(4)
               MOVE 3 TO Cm-MART-INO-COD(5)
               MOVE "Kit" TO Cm-MART-INO-LIB(5)
               MOVE 4 TO Cm-MART-INO-LoadedItems
               MODIFY DCN-COMBO, RESET-LIST = 1
           END-IF

      * Pour contourner un bug du Copy...Replacing
           SET Cm-MART-INO-Handle TO HANDLE OF DCN-COMBO
           
           COPY "W:/mx/copy/Cm-LoadAndSelect.cbl"              
                REPLACING =='DCN-WRK'== BY ==MART-INO==
                          =='DCN-KEY'== BY ==COD==.
