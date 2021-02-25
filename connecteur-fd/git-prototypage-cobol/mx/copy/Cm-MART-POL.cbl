      * Prise en charge d'une ComboBox sur les Politiques de Prix
      * Appeler la copy avec REPLACING ==DCN-COMBO== BY ==xxxxxxxx==

      * NB : Attend la valeur pré-choisie dans Cm-MART-POL-SelectedItem.
      * ATTENTION : la première occurence du tableau est réservée pour
      * servir de variable temporaire lors de la lecture de la combo...

      * Pré-charger les données si ce n'a pas encore été fait...
           IF Cm-MART-POL-LoadedItems = 0 
               MOVE 1 TO Cm-MART-POL-COD(2)
               MOVE "Coef/Prix Achat(1)" TO Cm-MART-POL-LIB(2)
               MOVE 2 TO Cm-MART-POL-COD(3)
               MOVE "Coef/Prix Tarif(2)" TO Cm-MART-POL-LIB(3)
               MOVE 3 TO Cm-MART-POL-COD(4)
               MOVE "PV - Remise    (3)" TO Cm-MART-POL-LIB(4)
               MOVE 4 TO Cm-MART-POL-COD(5)
               MOVE "PA + PV        (4)" TO Cm-MART-POL-LIB(5)
               MOVE 5 TO Cm-MART-POL-COD(6)
               MOVE "PR x TM        (5)" TO Cm-MART-POL-LIB(6)
               MOVE 6 TO Cm-MART-POL-COD(7)
               MOVE "P.Tarif + PA   (6)" TO Cm-MART-POL-LIB(7)
               MOVE 6 TO Cm-MART-POL-LoadedItems
               MODIFY DCN-COMBO, RESET-LIST = 1
           END-IF

      * Pour contourner un bug du Copy...Replacing
           SET Cm-MART-POL-Handle TO HANDLE OF DCN-COMBO
           
           COPY "W:/mx/copy/Cm-LoadAndSelect.cbl"              
                REPLACING =='DCN-WRK'== BY ==MART-POL==
                          =='DCN-KEY'== BY ==COD==.
