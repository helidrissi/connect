      * Prise en charge d'une ComboBox des CARTECSs.
      * Appeler la copy avec REPLACING ==DCN-COMBO== BY ==xxxxxxxx==

      * NB : Attend la valeur pré-choisie dans Cm-MCTCS-SelectedItem.
      * ATTENTION : la première occurence du tableau est réservée pour
      * servir de variable temporaire lors de la lecture de la combo...

      * Pré-charger les données si ce n'a pas encore été fait...
           IF Cm-MCTCS-LoadedItems = 0 
               OPEN I-O MXCARTECS
               PERFORM TEST-STATUS THRU FIN-TEST-STATUS
               IF IND-STAT = 3 MOVE 1 TO WOPEN-MXCARTECS
                          ELSE MOVE 0 TO WOPEN-MXCARTECS
               END-IF
               IF IND-STAT = 2 PERFORM ACU-SHOW-MSG 
                               GO ACU-EXIT-RTN
               END-IF                       
               MOVE 0 TO W-EOF
               MOVE SPACE TO ENR-MCTCS
               MOVE WCTE-MXCARTECS TO COD-MCTCS
               START MXCARTECS KEY NOT < CLE1-MCTCS 
                     INVALID MOVE 1 TO W-EOF
               END-START
               IF W-EOF = 0 
                   READ MXCARTECS Next END MOVE 1 TO W-EOF
                   END-READ
                   PERFORM STAT
               END-IF
               PERFORM VARYING Cm-MCTCS-9-3 FROM 2 BY 1
                         UNTIL (W-EOF = 1)
                            OR (Cm-MCTCS-9-3 >= Cm-MCTCS-NbMaxItems)
                            OR (WCTE-MXCARTECS NOT = COD-MCTCS)
                   MOVE ORD-MCTCS TO Cm-MCTCS-COD(Cm-MCTCS-9-3)
                   MOVE LIB-MCTCS TO Cm-MCTCS-LIB(Cm-MCTCS-9-3)
                   READ MXCARTECS Next END MOVE 1 TO W-EOF
                   END-READ
                   PERFORM STAT
               END-PERFORM
               IF WOPEN-MXCARTECS = 0 CLOSE MXCARTECS
               END-IF
               IF Cm-MCTCS-9-3 >= Cm-MCTCS-NbMaxItems 
                   DISPLAY MESSAGE "Limite de Cm-MCTCS atteinte"
               END-IF
               SUBTRACT 1 FROM Cm-MCTCS-9-3 GIVING Cm-MCTCS-LoadedItems
               MODIFY DCN-COMBO, RESET-LIST = 1
           END-IF

      * Pour contourner un bug du Copy...Replacing
           SET Cm-MCTCS-Handle TO HANDLE OF DCN-COMBO
           
           COPY "U:/mx/copy/Cm-LoadAndSelect.cbl"              
                REPLACING =='DCN-WRK'== BY ==MCTCS==
                          =='DCN-KEY'== BY ==COD==.
