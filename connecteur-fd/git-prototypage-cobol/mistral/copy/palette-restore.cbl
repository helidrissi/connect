      * Restauration de la palette avant un call
           perform varying INDICE-SV-WPALETTE-DATA from 1 by 1  
            until INDICE-SV-WPALETTE-DATA > 16
              MOVE INDICE-SV-WPALETTE-DATA TO Wpal-Color-Id  
              MOVE SV-Wpal-Red(INDICE-SV-WPALETTE-DATA)   TO Wpal-Red
              MOVE SV-Wpal-Green(INDICE-SV-WPALETTE-DATA) TO Wpal-Green
              MOVE SV-Wpal-Blue(INDICE-SV-WPALETTE-DATA)  TO Wpal-Blue
              | 8 rend les frames noires...
              IF INDICE-SV-WPALETTE-DATA <> 8
                 CALL "W$PALETTE" 
                    USING Wpalette-Set-Color, Wpalette-Data
              END-IF
           end-perform
