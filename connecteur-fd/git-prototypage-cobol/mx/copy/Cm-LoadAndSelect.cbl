      * Chargement d'une ComboBox (de la Working vers la Combo !)
      * et sélection de l'item en cours.
      * Appeler la copy avec REPLACING :
      *     =='DCN-WRK'== BY ==ID zone source en working==
      *     =='DCN-KEY'== BY ==Nom cle de sélection==
      * Cf. Copy appelantes pour exemple.
         
      * Charger la combo si ce n'a pas encore été fait...
           INQUIRE Cm-'DCN-WRK'-Handle,
                   VALUE IN Cm-'DCN-WRK'-Items(1)
      * Le test est nul, mais y'a guère mieux de disponible :-)                   
           IF Cm-'DCN-WRK'-Items(1) = SPACES 
               MODIFY Cm-'DCN-WRK'-Handle,
                      MASS-UPDATE = 1, RESET-LIST = 1
               MOVE 1 TO Cm-'DCN-WRK'-9-3
               PERFORM UNTIL Cm-'DCN-WRK'-9-3 > Cm-'DCN-WRK'-LoadedItems
                   ADD 1 TO Cm-'DCN-WRK'-9-3
                   MODIFY Cm-'DCN-WRK'-Handle, 
                    ITEM-TO-ADD = Cm-'DCN-WRK'-Items(Cm-'DCN-WRK'-9-3)
               END-PERFORM
               MODIFY Cm-'DCN-WRK'-Handle,
                      MASS-UPDATE = 0       
           END-IF          

      * Pré-positionner la combo...
           MOVE SPACES TO Cm-'DCN-WRK'-Items(1)
           MOVE 1 TO Cm-'DCN-WRK'-9-3
           PERFORM UNTIL Cm-'DCN-WRK'-9-3 > Cm-'DCN-WRK'-LoadedItems
               ADD 1 TO Cm-'DCN-WRK'-9-3
               IF Cm-'DCN-WRK'-SelectedItem = 
                  Cm-'DCN-WRK'-'DCN-KEY'(Cm-'DCN-WRK'-9-3) 
                   MOVE Cm-'DCN-WRK'-Items(Cm-'DCN-WRK'-9-3) TO 
                        Cm-'DCN-WRK'-Items(1)
                   ADD 1 TO Cm-'DCN-WRK'-LoadedItems
                     GIVING Cm-'DCN-WRK'-9-3
               END-IF
           END-PERFORM
           MODIFY Cm-'DCN-WRK'-Handle,
                  VALUE = Cm-'DCN-WRK'-Items(1)
