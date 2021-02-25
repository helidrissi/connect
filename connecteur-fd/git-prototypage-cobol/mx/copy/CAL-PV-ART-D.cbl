      * Mise à jour du prix et de la remise d'un article
      * d'après les paramètres de la fiche client
      * Il faut avoir lu  MXART et MXFAMART et MXARTSA 
      *                   MXCLID 
      *                   MXGRICLI
      *                   MXPARDIS, MXTABRMA
      *
      * En retour: W-PUB, W-REM
      *
       CAL-PV-ART-D.         
           IF BFC-MCLD = 0 OR 1
           OR (BFC-MCLD = 3 AND POL-MART NOT = 2 AND NOT = 6
250110                               AND NOT = 1 AND NOT = 3)
           OR (BFC-MCLD = 8 AND (TAG-MFAM = 0 OR GMR-MPAR = 1))
           OR (BFC-MCLD = 6 AND TAG-MFAM = 0)
                MOVE PVT-MART TO W-PUB.                  
           IF BFC-MCLD = 2 
                COMPUTE W-PUB ROUNDED = (PAC-MART / NUU-MART).
           IF BFC-MCLD = 3 AND (POL-MART = 2 OR 6
250110                                  OR 1 OR 3)
                COMPUTE W-PUB ROUNDED = (PTF-MART / NUU-MART).
           IF BFC-MCLD = 4 
                MOVE PAMP-MASA TO W-PUB
                IF W-PUB = 0
                     COMPUTE W-PUB ROUNDED = (PAC-MART / NUU-MART).
           IF BFC-MCLD = 5
                COMPUTE W-PUB ROUNDED = (PAC-MART / NUU-MART)
                IF IFA-MART = 2
                      COMPUTE W-PUB ROUNDED = W-PUB +
                            ((PAC-MART / NUU-MART) * PFA-MART / 100)
                 ELSE IF IFA-MART = 1 ADD FUA-MART TO W-PUB.
           IF BFC-MCLD = 6 AND TAG-MFAM = 1
                MOVE PAMP-MASA TO CAL-PV-PAMP
                IF CAL-PV-PAMP = 0
                     COMPUTE CAL-PV-PAMP ROUNDED 
                             = (PAC-MART / NUU-MART)
                END-IF
                COMPUTE CAL-PV-MARG ROUNDED 
                        = (PTF-MART - CAL-PV-PAMP) * COE-MCLD
                COMPUTE W-PUB ROUNDED 
                        = CAL-PV-PAMP + CAL-PV-MARG
                MOVE ZERO TO W-REM
      **          IF MPM-MPAD NOT = 0
      **               PERFORM CAL-MARGE THRU F-CAL-MARGE
      **               COMPUTE CAL-PV-POU1 ROUNDED = 
050710***                  (W-PUB - CAL-PV-PAC) / W-PUB * 100
050710**                  (W-PUB - CAL-MARGE-PAC) / W-PUB * 100 
      **               IF CAL-PV-POU1 < MPM-MPAD 
      **                    COMPUTE W-PUB ROUNDED = 
050710***                       CAL-PV-PAC / (100 - MPM-MPAD) * 100.
050710**                       CAL-MARGE-PAC / (100 - MPM-MPAD) * 100.
           IF BFC-MCLD = 7 
                MOVE PRMP-MASA TO W-PUB
                IF W-PUB = 0 MOVE PAMP-MASA TO W-PUB
                END-IF
                IF W-PUB = 0
                     COMPUTE W-PUB ROUNDED = (PAC-MART / NUU-MART).
      *     IF BFC-MCLD = 8 AND TAG-MFAM = 1 AND GMR-MPAR <> 1
      *          COMPUTE CAL-PV-MARG ROUNDED 
      *             = (PVT-MART - (PAC-MART / NUU-MART)) / PVT-MART * 100
      *          PERFORM CAL-PV-ART-D-RECH-TABRMA 
      *             THRU F-CAL-PV-ART-D-RECH-TABRMA
      *          COMPUTE CAL-PV-POU ROUNDED 
      *             = PMC-MPAD / BGM-MPAD / COE-MTRMA(CAL-PV-Z) * 100
      *          COMPUTE CAL-PV-MARG ROUNDED 
      *             = (PVT-MART - (PAC-MART / NUU-MART))
      *                    * CAL-PV-POU / 100
      *          COMPUTE W-PUB ROUNDED 
      *             = (PAC-MART / NUU-MART) + CAL-PV-MARG
      *          MOVE ZERO TO W-REM.
           IF COE-MCLD NOT = 0 AND BFC-MCLD <> 6
                COMPUTE W-PUB ROUNDED = W-PUB * COE-MCLD.
                                         
           IF REM-MCLD NOT = 0
                MOVE REM-MCLD TO W-REM.
      **     IF REM-MCLD = 0
      **     OR (BFC-MCLD = 6 AND TAG-MFAM = 0)
      **     OR (BFC-MCLD = 8 AND (TAG-MFAM = 0 OR GMR-MPAR = 1))
      **          PERFORM CAL-PV-ART-D-CASCADE.

       CAL-PV-ART-D-RECH-TABRMA.

      * COPY "W:/mx/copy/CAL-PV-COE.cbl".
