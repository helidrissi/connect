200515*===================================================*
      *  Recherche d'un article sur son ancien Gencod     *
      *===================================================*
       Rech-CHGGCOD.
           INITIALIZE ENR-MCHGG2 WG-ART
           MOVE WG-GCOD  TO GCODA-MCHGG2
           MOVE 99999999 TO DAT-MCHGG2
           START MXCHGGCOD2 KEY NOT > CLE2-MCHGG2 INVALID 
               GO F-RECH-CHGGCOD.
       Bcl-Rech-CHGGCOD.
           READ MXCHGGCOD2 PREVIOUS AT END GO F-RECH-CHGGCOD.
           PERFORM STAT
           IF GCODA-MCHGG2 NOT = WG-GCOD GO F-RECH-CHGGCOD
           END-IF
           MOVE GCODN-MCHGG2 TO WG-NGCOD
           MOVE DAT-MCHGG2   TO WG-DAT
           MOVE ART-MCHGG2   TO WG-ART
           PERFORM TRAIT-CHGGCOD THRU F-TRAIT-CHGGCOD.
           IF WG-ART <> SPACES GO F-Rech-CHGGCOD.
           GO Bcl-Rech-CHGGCOD.
       F-Rech-CHGGCOD.
           Exit.

       TRAIT-CHGGCOD.      
           MOVE WG-NGCOD  TO GCODA-MCHGG
           MOVE 999999999 TO DAT-MCHGG
           START MXCHGGCOD KEY NOT> CLE2-MCHGG INVALID GO FIN-CHGGCOD.
       BCL-CHGGCOD.
           READ MXCHGGCOD PREVIOUS END GO FIN-CHGGCOD. 
           PERFORM STAT
           IF GCODA-MCHGG NOT = WG-NGCOD GO FIN-CHGGCOD.
      *--- on ne prend pas les changements antérieurs à celui pris en compte  
           IF DAT-MCHGG <= WG-DAT GO FIN-CHGGCOD.
           if GCODA-MCHGG = GCODN-MCHGG GO BCL-CHGGCOD.

           MOVE GCODN-MCHGG TO WG-NGCOD.
           MOVE DAT-MCHGG   TO WG-DAT
           MOVE ART-MCHGG   TO WG-ART
           GO TRAIT-CHGGCOD.
       FIN-CHGGCOD.
           MOVE WG-ART TO COD-MART
           READ MXART INVALID MOVE SPACES TO WG-ART GO F-TRAIT-CHGGCOD.
           PERFORM STAT.
       F-TRAIT-CHGGCOD.
           EXIT.