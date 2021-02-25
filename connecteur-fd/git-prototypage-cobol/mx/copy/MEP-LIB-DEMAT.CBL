           move space to WTITLE-DEMAT
           perform varying WLIB-DEMAT-Idx 
              from 1 by 1 until WLIB-DEMAT-Idx > WLIB-DEMAT-Num
                                or WTITLE-DEMAT not = space
              move WLIB-DEMAT(WLIB-DEMAT-Idx) to tmp-file-process1
              if fwed-mcli = tmp-file-process1(31:1)
                 string "(Démat facture/" tmp-file-process1(1:30)
                        ")" delimited by "   " into WTITLE-DEMAT
              end-if
           end-perform.
           IF modu-mspli = 2
              MOVE "Archivage / Mise sous pli" TO WLIB-FGM-INT
           else
              MOVE "Pas d'impression papier" TO WLIB-FGM-INT
           end-if.
              
