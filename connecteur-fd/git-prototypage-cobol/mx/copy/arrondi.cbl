      *=== Calcul des Arrondis Selon Parametrage Fichier Familles ===*
      *=== et Tables des Arrondis/Prix - Arrondi sur H.T ou T.T.C ===*
      *    
      *------ Mettre le prix HT a arrondir dans PRIARR
      *------ si INDARR = 3 prix TTC a arrondir dans TTCARR
      *------ Mettre l'indicateur ARR-GFA ou REA-FVM dans INDARR
      *------ A la sortie : sauvegarde de NIAARR (niveau), MOAARR (mode)
      *                                et TTCARR (TTC arrondi)
      *    
      *    ATTENTION ! Ne pas enlever les paragraphes D1-CALCUL-ARRONDI
      *                et D2-CALCUL-ARRONDI
      *    
       D-CALCUL-ARRONDI.
           MOVE 0 TO NIAARR MOAARR
           IF INDARR = 0 GO F-CALCUL-ARRONDI.
           IF INDARR = 3 MOVE TTCARR   TO PRIARR 
           ELSE          MOVE PRIARR   TO TTCARR.
           IF INDARR = 2 AND TVAARR NOT = 0 
              IF RCT-MPAR(TVAARR) = 1 MOVE 1 TO INDARR.
           IF INDARR = 2 AND TVAARR NOT = 0 
              COMPUTE PRIARR ROUNDED = PRIARR
                      + (PRIARR * TVA-MPAR(TVAARR) / 100).
       D1-CALCUL-ARRONDI.
           PERFORM D-RECH-ARR THRU F-RECH-ARR.
           IF I-ARR = 0 OR > 12 GO F-CALCUL-ARRONDI.
       D2-CALCUL-ARRONDI.
           IF NIAARR = 0 GO F-CALCUL-ARRONDI.
           GO ARR-005 ARR-010 ARR-050 ARR-100 ARR-1000
              ARR-10000 DEPENDING ON NIAARR.
       ARR-005.
           IF ARR1 = ZERO OR 5 GO F-CALCUL-ARRONDI.
           IF MOAARR = 2 
                IF ARR1 < 5 MOVE ZERO TO ARR1 
                            GO F-CALCUL-ARRONDI
                       ELSE MOVE 5 TO ARR1 
                            GO F-CALCUL-ARRONDI.
           IF MOAARR = 3 
                IF ARR1 < 5 MOVE 5 TO ARR1 
                            GO F-CALCUL-ARRONDI
                       ELSE MOVE ZERO TO ARR1
                            ADD 0,1 TO PRIARR 
                            GO F-CALCUL-ARRONDI.
           IF MOAARR = 1 
                IF ARR1 < 3 MOVE ZERO TO ARR1 
                            GO F-CALCUL-ARRONDI
                       ELSE IF ARR1 < 8 MOVE 5 TO ARR1
                                        GO F-CALCUL-ARRONDI
                                   ELSE MOVE ZERO TO ARR1
                                        ADD 0,1 TO PRIARR 
                                        GO F-CALCUL-ARRONDI.
           GO F-CALCUL-ARRONDI.
       ARR-010.
           IF ARR1 = 0 GO F-CALCUL-ARRONDI.
           IF MOAARR = 2 MOVE ZERO TO ARR1
                                 GO F-CALCUL-ARRONDI.
           IF MOAARR = 3 MOVE ZERO TO ARR1
                                 ADD 0,10 TO PRIARR
                                 GO F-CALCUL-ARRONDI.
           IF MOAARR = 1 
                 IF ARR1 < 5 MOVE ZERO TO ARR1
                             GO F-CALCUL-ARRONDI
                        ELSE MOVE ZERO TO ARR1
                             ADD 0,10 TO PRIARR 
                             GO F-CALCUL-ARRONDI.
           GO F-CALCUL-ARRONDI.
       ARR-050.
           IF ARR2 = ZERO OR 50 GO F-CALCUL-ARRONDI.
           IF MOAARR = 2 
                 IF ARR2 < 50 MOVE ZERO TO ARR2 
                              GO F-CALCUL-ARRONDI
                         ELSE MOVE 50 TO ARR2   
                              GO F-CALCUL-ARRONDI.
           IF MOAARR = 3 
                 IF ARR2 < 50 MOVE 50 TO ARR2   
                              GO F-CALCUL-ARRONDI
                         ELSE MOVE ZERO TO ARR2
                              ADD 1 TO PRIARR    
                              GO F-CALCUL-ARRONDI.
           IF MOAARR = 1 
                 IF ARR2 < 24 MOVE ZERO TO ARR2    
                              GO F-CALCUL-ARRONDI
                         ELSE IF ARR2 < 74 MOVE 50 TO ARR2  
                                           GO F-CALCUL-ARRONDI
                                      ELSE MOVE ZERO TO ARR2
                                           ADD 1 TO PRIARR  
                                           GO F-CALCUL-ARRONDI.
           GO F-CALCUL-ARRONDI.
       ARR-100.
           IF ARR2 = ZERO GO F-CALCUL-ARRONDI.
           IF MOAARR = 2 MOVE 0 TO ARR2         
                                 GO F-CALCUL-ARRONDI.
           IF MOAARR = 3 MOVE ZERO TO ARR2 
                                 ADD 1 TO PRIARR        
                                 GO F-CALCUL-ARRONDI.
           IF MOAARR = 1 
                 IF ARR2 < 50 MOVE ZERO TO ARR2   
                              GO F-CALCUL-ARRONDI
                         ELSE MOVE ZERO TO ARR2
                              ADD 1 TO  PRIARR     
                              GO F-CALCUL-ARRONDI.
           GO F-CALCUL-ARRONDI.
       ARR-1000.
           IF ARR3 = ZERO GO F-CALCUL-ARRONDI.
           IF MOAARR = 2 MOVE ZERO TO ARR3      
                                 GO F-CALCUL-ARRONDI.
           IF MOAARR = 3 MOVE ZERO TO ARR3 
                                 ADD 10 TO PRIARR        
                                 GO F-CALCUL-ARRONDI.
           IF MOAARR = 1 
                 IF ARR3 < 500 MOVE ZERO TO ARR3   
                               GO F-CALCUL-ARRONDI
                          ELSE MOVE ZERO TO ARR3
                               ADD 10 TO  PRIARR    
                               GO F-CALCUL-ARRONDI.
           GO F-CALCUL-ARRONDI.
       ARR-10000.
           IF ARR4 = ZERO GO F-CALCUL-ARRONDI.
           IF MOAARR = 2 MOVE ZERO TO ARR4      
                                 GO F-CALCUL-ARRONDI.
           IF MOAARR = 3 MOVE ZERO TO ARR4 
                                 ADD 100 TO PRIARR       
                                 GO F-CALCUL-ARRONDI.
           IF MOAARR = 1 
                 IF ARR4 < 5000 MOVE ZERO TO ARR4   
                                GO F-CALCUL-ARRONDI
                           ELSE MOVE ZERO TO ARR4
                                ADD 100 TO PRIARR   
                                GO F-CALCUL-ARRONDI.
       F-CALCUL-ARRONDI.
           MOVE PRIARR TO TTCARR
           IF (INDARR = 2 OR 3) AND TVAARR NOT = ZERO
              COMPUTE PRIARR ROUNDED = PRIARR
                      / (100 + TVA-MPAR(TVAARR)) * 100.
           IF INDARR = 1 AND TVAARR NOT = ZERO 
              IF RCT-MPAR(TVAARR) NOT= 1
                 COMPUTE TTCARR ROUNDED = PRIARR
                         + (PRIARR * TVA-MPAR(TVAARR) / 100).
       D-RECH-ARR.
           MOVE 1 TO I-ARR.
       BCL-TABARR.
      **    IF PRIARR < TRC-MTAP(I-ARR) GO F-BCL-TABARR.
           IF I-ARR = 12 MOVE 0 TO I-ARR
                         GO F-RECH-ARR.
           ADD 1 TO I-ARR
      **     IF TRC-MTAP(I-ARR) = ZERO MOVE 0 TO I-ARR
      **                              GO F-RECH-ARR.
           GO BCL-TABARR.
       F-BCL-TABARR.
      *     MOVE NIA-MTAP(I-ARR) TO NIAARR
      *     MOVE MOA-MTAP(I-ARR) TO MOAARR.
       F-RECH-ARR.
           EXIT.


