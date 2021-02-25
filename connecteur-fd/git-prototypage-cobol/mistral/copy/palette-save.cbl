      * Sauvegarde de la palette avant un call
           perform varying INDICE-SV-WPALETTE-DATA from 1 by 1  
            until INDICE-SV-WPALETTE-DATA > 16
              MOVE INDICE-SV-WPALETTE-DATA TO Wpal-Color-Id
              CALL "W$PALETTE" USING Wpalette-Get-Color, Wpalette-Data
              MOVE Wpal-Red   TO SV-Wpal-Red(INDICE-SV-WPALETTE-DATA)
              MOVE Wpal-Green TO SV-Wpal-Green(INDICE-SV-WPALETTE-DATA)
              MOVE Wpal-Blue  TO SV-Wpal-Blue(INDICE-SV-WPALETTE-DATA)
           end-perform
