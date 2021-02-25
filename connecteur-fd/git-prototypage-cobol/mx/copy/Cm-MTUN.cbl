      * Prise en charge d'une ComboBox sur les Unités.
      * Appeler la copy avec REPLACING ==DCN-COMBO== BY ==xxxxxxxx==

      * NB : Attend la valeur pré-choisie dans Cm-MTUN-SelectedItem.
      * ATTENTION : la première occurence du tableau est réservée pour
      * servir de variable temporaire lors de la lecture de la combo...

      * Pré-charger les données si ce n'a pas encore été fait...
      *     IF Cm-MTUN-LoadedItems = 0 
      *         OPEN INPUT MXTABUNI
      *         PERFORM TEST-STATUS THRU FIN-TEST-STATUS
      *         IF IND-STAT = 3 
      *             MOVE 1 TO Cm-MTUN-OpenedFile
      *         ELSE
      *             MOVE 0 TO Cm-MTUN-OpenedFile
      *             IF IND-STAT = 2 
      *                 PERFORM Acu-Show-Msg
      *                 GO Acu-Exit-Rtn
      *             END-IF
      *         END-IF
      *         MOVE 1 TO W-MXTABUNI
      *         READ MXTABUNI INVALID INITIALIZE ENR-MTUN
      *         END-READ
      *         PERFORM STAT
      *         IF Cm-MTUN-OpenedFile = 0 
      *             CLOSE MXTABUNI
      *         END-IF
      *         MOVE 1 TO Cm-MTUN-9-2 Cm-MTUN-9-3
      *         PERFORM UNTIL (Cm-MTUN-9-2 > 45)
      *                    OR (Cm-MTUN-9-3 >= Cm-MTUN-NbMaxItems)
      *             IF NOT LIB-MTUN(Cm-MTUN-9-2) = SPACES 
      *                 ADD 1 TO Cm-MTUN-9-3
      *                 MOVE LIB-MTUN(Cm-MTUN-9-2) 
      *                   TO Cm-MTUN-LIB(Cm-MTUN-9-3)
      *                 MOVE Cm-MTUN-9-2 TO Cm-MTUN-RAN(Cm-MTUN-9-3)
      *             END-IF
      *             ADD 1 TO Cm-MTUN-9-2
      *         END-PERFORM
      *         IF Cm-MTUN-9-3 >= Cm-MTUN-NbMaxItems 
      *             DISPLAY MESSAGE "Limite de Cm-MTUN atteinte"
      *         END-IF
      *         SUBTRACT 1 FROM Cm-MTUN-9-3
      *                    GIVING Cm-MTUN-LoadedItems
      *         MODIFY DCN-COMBO, RESET-LIST = 1
      *     END-IF

      * Pour contourner un bug du Copy...Replacing
           SET Cm-MTUN-Handle TO HANDLE OF DCN-COMBO
           
           COPY "W:/mx/copy/Cm-LoadAndSelect.cbl"              
                REPLACING =='DCN-WRK'== BY ==MTUN==
                          =='DCN-KEY'== BY ==RAN==.
