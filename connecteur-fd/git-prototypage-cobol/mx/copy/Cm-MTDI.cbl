      * Prise en charge d'une ComboBox des Motifs /Type
      * Appeler la copy avec REPLACING ==DCN-COMBO== BY ==xxxxxxxx==
      *                                ==DCN-TYPE== BY ==xxxxxxxx==

      * NB : Attend la valeur pré-choisie dans Cm-MTDI-SelectedItem.
      * ATTENTION : la première occurence du tableau est réservée pour
      * servir de variable temporaire lors de la lecture de la combo...

      * Les changements de type forcent un nouveau chargement...
           IF NOT Cm-MTDI-Last-TYP = DCN-TYPE 
               MOVE 0 TO Cm-MTDI-LoadedItems
           END-IF
           MOVE DCN-TYPE TO Cm-MTDI-Last-TYP
                 
      * Pré-charger les données si ce n'a pas encore été fait...
           IF Cm-MTDI-LoadedItems = 0            
               OPEN INPUT MXTABDIV
               PERFORM TEST-STATUS THRU FIN-TEST-STATUS
               IF IND-STAT = 3 
                   MOVE 1 TO Cm-MTDI-WOPEN-MXTABDIV
               ELSE
                   MOVE 0 TO Cm-MTDI-WOPEN-MXTABDIV
                   IF IND-STAT = 2 
                       PERFORM Acu-Show-Msg
                       GO Acu-Exit-Rtn
                   END-IF
               END-IF
               INITIALIZE ENR-MTDIV
               MOVE 0 TO W-EOF
               MOVE Cm-MTDI-Last-TYP TO TYP-MTDIV
               START MXTABDIV KEY >= CLE1-MTDIV
                   INVALID MOVE 1 TO W-EOF
               END-START
               PERFORM STAT
               IF W-EOF = 0 
                   READ MXTABDIV NEXT END MOVE 1 TO W-EOF END-READ
                   PERFORM STAT
               END-IF
               PERFORM VARYING Cm-MTDI-9-3 FROM 2 BY 1
                         UNTIL (W-EOF = 1)
                            OR (NOT TYP-MTDIV = Cm-MTDI-Last-TYP)
                            OR (Cm-MTDI-9-3 >= Cm-MTDI-NbMaxItems)   
210612
                   IF  Cm-MTDI-Facultatif = 1 
                   AND Cm-MTDI-9-3 = 2 
      *               Laisse le premier vide si Cm-MTDI-Facultatif = 1
                      MOVE "                   ." 
                      TO Cm-MTDI-LIB(Cm-MTDI-9-3)
                   ELSE
210612
                     MOVE COD-MTDIV
                       TO Cm-MTDI-COD(Cm-MTDI-9-3)
                     MOVE LIB-MTDIV TO Cm-MTDI-LIB(Cm-MTDI-9-3)
                     READ MXTABDIV NEXT END MOVE 1 TO W-EOF END-READ
                     PERFORM STAT
210612             END-IF

               END-PERFORM
               IF Cm-MTDI-WOPEN-MXTABDIV = 0 
                   CLOSE MXTABDIV
               END-IF
               IF Cm-MTDI-9-3 >= Cm-MTDI-NbMaxItems 
                   DISPLAY MESSAGE "Limite de Cm-MTDI atteinte"
               END-IF
               SUBTRACT 1 FROM Cm-MTDI-9-3
                        GIVING Cm-MTDI-LoadedItems
               MODIFY DCN-COMBO, RESET-LIST = 1
           END-IF

      * Pour contourner un bug du Copy...Replacing
           SET Cm-MTDI-Handle TO HANDLE OF DCN-COMBO
           
           COPY "W:/mx/copy/Cm-LoadAndSelect.cbl"              
                REPLACING =='DCN-WRK'== BY ==MTDI==
                          =='DCN-KEY'== BY ==COD==.
