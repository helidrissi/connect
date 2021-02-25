      *
      *
      *        MISE A JOUR HISTORIQUE DES VENTES EN DISTRIBUTION
      *
      *

       Maj-Hisvte-Ldis.
           IF HIV-MLDI = 0 
           AND (TLI-MLDI NOT = 1 
                OR INP-MLDI NOT = "A" 
                OR W-OTE = 2
                OR PZE-MLDI = 4
                OR IRPM-MLDI = 1)
                 EXIT PARAGRAPH    
           END-IF

           IF HIV-MLDI = 0 
                 PERFORM Creat-HISVTE-Ldis
                 GO MAJ-HISVTE-Ldis
           END-IF

           INITIALIZE ENR-MHIV
           MOVE HIV-MLDI TO NUM-MHIV
           READ MXHISVTE LOCK INVALID 
                IF TLI-MLDI NOT = 1 
                OR INP-MLDI NOT = "A" 
                OR W-OTE = 2
                OR PZE-MLDI = 4
                OR IRPM-MLDI = 1 | reprise petit matériel
                     MOVE 0 TO HIV-MLDI
                     EXIT PARAGRAPH    | si on doit annuler l'enreg
                ELSE PERFORM Creat-HISVTE-Ldis
                     GO MAJ-HISVTE-Ldis
                END-IF
           END-READ
           PERFORM STAT

           IF IND-STAT = 1 GO Maj-Hisvte-Ldis
           END-IF

           IF TLI-MLDI NOT = 1 
           OR INP-MLDI NOT = "A" 
           OR W-OTE = 2
           OR PZE-MLDI = 4
           OR IRPM-MLDI = 1 | reprise petit matériel
                | si on est sur le même mois, on supprime, sinon
                | on crée un enregistrement d'annulation
                IF (MDSP-MLDI = MDSP-MHIV AND ADSP-MLDI = ADSP-MHIV
                    AND W-OTE NOT = 2)
                OR (W-MM = MDSP-MHIV AND W-AA = ADSP-MHIV
                    AND W-OTE = 2)
                   DELETE MXHISVTE INVALID 
                       MOVE "Delete HISVTE" TO Acu-Msg-2
                       MOVE CLE1-MHIV TO Acu-Msg-3 GO ERREUR
                   END-DELETE
                   PERFORM STAT
                ELSE
                   PERFORM Maj-Hisvte-Ldis-A 
                END-IF
                MOVE 0 TO HIV-MLDI HIA-MLDI TAA-MLDI
                EXIT PARAGRAPH
           END-IF.

           | si on est sur le même mois, on met à jour, sinon
           | on crée un enregistrement d'annulation
           | et un nouvel enregistrement
           IF (MDSP-MLDI NOT = MDSP-MHIV OR ADSP-MLDI NOT = ADSP-MHIV)
           AND (QTE-MLDI NOT = QTE-MHIV OR ART-MLDI NOT = ART-MHIV
                OR AGS-MLDI NOT = AGS-MHIV OR DEP-MLDI NOT = DEP-MHIV)
              PERFORM Maj-Hisvte-Ldis-A 
              MOVE 0 TO HIV-MLDI
              PERFORM Creat-HISVTE-Ldis
           END-IF

           PERFORM Maj-Hisvte-CommunD
           PERFORM Maj-Hisvte-LigneD

           ACCEPT DME-MHIV FROM CENTURY-DATE
           REWRITE ENR-MHIV INVALID 
                MOVE "Réécriture MXHISVTE" TO Acu-Msg-2 
                MOVE CLE1-MHIV TO Acu-Msg-3 GO ERREUR
           END-REWRITE
           PERFORM STAT.
          
      *     IF (TYC-MBDI = 1 
      *        AND SRI-MPAR NOT = 1)
      *     OR INO-MART = 1 OR 2
      *        OPEN I-O MXHISACH PERFORM STAT
      *        PERFORM Maj-Hisach-Ldis
      *        CLOSE MXHISACH
      *     END-IF
      *
      *     IF (TYC-MBDI = 1 
      *         AND SRI-MPAR = 1)
      *        OPEN I-O MXTRAARTL PERFORM STAT
      *        PERFORM Maj-Transart-Ldis
      *        CLOSE MXTRAARTL
      *     END-IF
            
           .

       Creat-Hisvte-Ldis.
           IF HIV-MLDI NOT = 0 
                MOVE HIV-MLDI TO D-HIV
           ELSE PERFORM Rech-D-HivD THRU F-Rech-D-HivD
           END-IF
           INITIALIZE ENR-MHIV.
           MOVE D-HIV TO NUM-MHIV
           MOVE DSP-MLDI TO DSP-MHIV
           MOVE QTE-MLDI TO QTE-MHIV
           ACCEPT DME-MHIV FROM CENTURY-DATE
           WRITE ENR-MHIV INVALID MOVE 0 TO HIV-MLDI
                                  GO Creat-Hisvte-Ldis
           END-WRITE
           PERFORM STAT.
           MOVE D-HIV TO HIV-MLDI.
      
       Maj-Hisvte-Ldis-A.
           MOVE ENR-MHIV TO SV-ENR-HIV
           PERFORM Rech-D-HivD THRU F-Rech-D-HivD
           MOVE SV-ENR-HIV TO ENR-MHIV
           MOVE D-HIV TO NUM-MHIV
           MULTIPLY -1 BY QTE-MHIV
           IF W-OTE = 2
              MOVE W-DAT TO DSP-MHIV
              MOVE 8 TO TRA-MHIV
           ELSE
              MOVE DSP-MLDI TO DSP-MHIV
           END-IF
           MOVE IDE-PALM TO ISA-MHIV
           ACCEPT DME-MHIV FROM CENTURY-DATE
           WRITE ENR-MHIV INVALID MOVE SV-ENR-HIV TO ENR-MHIV
                                  GO Maj-Hisvte-Ldis-A
           END-WRITE
           PERFORM STAT.
      
         
       Rech-D-HivD.
           MOVE 999999999 TO NUM-MHIV
           MOVE ZERO TO D-HIV
           START MXHISVTE KEY NOT > CLE1-MHIV INVALID GO F-Rech-D-HivD.
           READ MXHISVTE PREVIOUS END GO F-Rech-D-HivD.
           PERFORM STAT.
           MOVE NUM-MHIV TO D-HIV.
       F-Rech-D-HivD.
           ADD 1 TO D-HIV.
      ******************************************************************
      *             Mise à jour de l'historique des ventes             *
      ****************************************************************** 
       Maj-Hisvte-Nomldis.
           .

       Maj-Hisvte-CommunD.
           MOVE AGE-MLDI TO AGE-MHIV
           MOVE "D"      TO ORI-MHIV
           MOVE BON-MLDI TO BON-MHIV
           MOVE LIG-MLDI TO LIG-MHIV
           MOVE TCC-MLDI TO TCO-MHIV
           MOVE CHC-MBDI TO CHC-MHIV
           MOVE CLL-MBDI TO CLL-MHIV
           MOVE ITC-MBDI TO ITC-MHIV
           MOVE NAF-MBDI TO NAF-MHIV
           MOVE MAT-MBDI TO MAT-MHIV
           MOVE IVR-MBDI TO IVR-MHIV
           MOVE ILC-MLDI TO ILC-MHIV
           
           IF ILC-MLDI = 1 
                MOVE DCO-MLDI TO DCO-MHIV
           ELSE MOVE DSP-MLDI TO DCO-MHIV
           END-IF
                          
           IF MAM-MLDI NOT = SPACE
                MOVE MAM-MLDI TO MAM-MHIV
                MOVE TYM-MLDI TO TYM-MHIV
           ELSE MOVE MAM-MBDI TO MAM-MHIV
                MOVE TYM-MBDI TO TYM-MHIV
           END-IF
           MOVE ISQ-MLDI TO ISQ-MHIV
           MOVE EXC-MLDI TO EXC-MHIV
           MOVE ACA-MBDI TO ACA-MHIV
           MOVE AGS-MLDI TO AGS-MHIV
           MOVE DEP-MLDI TO DEP-MHIV
           IF ISA-MHIV = SPACE MOVE IDE-PALM TO ISA-MHIV
           END-IF
           MOVE REP-MBDI TO REP-MHIV
           MOVE DSP-MLDI TO DSP-MHIV 
           MOVE CLI-MBDI TO CLI-MHIV
           MOVE CDV-MBDI TO CDV-MHIV
           MOVE ZERO     TO ICC-MHIV
           IF PZE-MLDI = 0 MOVE " " TO PZE-MHIV.
           IF PZE-MLDI = 1 MOVE "G" TO PZE-MHIV.
           IF PZE-MLDI = 2 MOVE "E" TO PZE-MHIV.
           MOVE ZERO TO IRD-MHIV ICR-MHIV
           IF IPR-MBDI = 1 MOVE 1 TO IMB-MHIV
                      ELSE MOVE 0 TO IMB-MHIV
           END-IF
           MOVE ZERO TO PRO-MHIV
           IF PRO-MLDI > 0 MOVE 2 TO PRO-MHIV.
           IF ART-MHIV(1:4) NOT NUMERIC
                MOVE UPR-MART TO UPR-MHIV
           ELSE MOVE ZERO TO UPR-MHIV.

       Maj-Hisvte-LigneD.
           MOVE ZERO     TO LIN-MHIV
           MOVE ART-MLDI TO ART-MHIV
           IF ART-MLDI(1:4) NUMERIC 
           OR (MOD-MART = 1 AND DES-MLDI <> SPACE)
                MOVE DES-MLDI TO DES-MHIV
           ELSE MOVE DES-MART TO DES-MHIV.
           MOVE QTE-MLDI TO QTE-MHIV 
           IF TYP-MBDI = 3 MULTIPLY -1 BY QTE-MHIV.
           IF ISQ-MLDI = 1 AND TYP-MBDI = 3 
              MOVE -1 TO QTE-MHIV
           END-IF
           IF IPNS-MLDI = 0 AND PUB-MLDI <> 0
              MOVE PUB-MLDI TO PUN-MLDI
              COMPUTE PUN-MLDI ROUNDED = PUN-MLDI -
                          (PUN-MLDI * REM-MLDI / 100)
              COMPUTE PUN-MLDI ROUNDED = PUN-MLDI -
                          (PUN-MLDI * REC-MLDI(1) / 100)
              COMPUTE PUN-MLDI ROUNDED = PUN-MLDI -
                          (PUN-MLDI * REC-MLDI(2) / 100)
              COMPUTE PUN-MLDI ROUNDED = PUN-MLDI -
                          (PUN-MLDI * REC-MLDI(3) / 100)
              COMPUTE PUN-MLDI ROUNDED = PUN-MLDI -
                          (PUN-MLDI * REC-MLDI(4) / 100)
              COMPUTE PUN-MLDI ROUNDED = PUN-MLDI -
                          (PUN-MLDI * REC-MLDI(5) / 100)
              COMPUTE PUN-MLDI ROUNDED = PUN-MLDI -
                          (PUN-MLDI * REC-MLDI(6) / 100)
           END-IF
           MOVE PUN-MLDI TO PUB-MHIV
           MOVE REM-MLDI TO REM-MHIV
           MOVE INO-MLDI TO INO-MHIV
           COMPUTE MCU-MHIV ROUNDED = PUN-MLDI - PRU-MLDI
           MOVE ZERO TO PUS-MHIV
           IF PUS-MPAR = 1 AND PUS-MCLD = 1 AND INP-MLDI = "A" 
           AND PUS-MBDI = 0 AND PUS-MFAM = 0 AND TYC-MBDI NOT = 9 
                MOVE 1 TO PUS-MHIV.

       Maj-Hisvte-SousLigneD.

      *
      *
      *        MISE A JOUR HISTORIQUE DES ACHATS EN DISTRIBUTION
      *
      *

       Maj-HISACH-Ldis.
      ******************************************************************
      *             Mise à jour de histo achat composition             *
      ****************************************************************** 
       Maj-HISACH-Nomldis.
      ******************************************************************
      * Mise à jour transfert si inter-agence avec gestion stock relais*
      ******************************************************************
       Maj-Transart-Ldis.

      ******************************************************************      
       Cal-Prix-Net-D.
           PERFORM Cal-Mon-Rem-D
           MOVE ZERO TO W-PUS
           IF PUS-MPAR = 1 AND PUS-MCLD = 1 AND INP-MLDI = "A"
           AND PUS-MFAM = 0 AND TYC-MBDI NOT = 9 AND PUS-MBDI = 0
                COMPUTE W-PUS ROUNDED = PUB-MLDI * PPU-MPAR / 100.
           MOVE PUB-MLDI TO W-PUB.
           PERFORM Cal-Prix-Net-Commun-D.

       Cal-Mon-Rem-D.
           IF REC-MLDI(1) NOT = 0
                COMPUTE MON-REM ROUNDED = 100 - REM-MLDI
                COMPUTE MON-REM ROUNDED =
                    MON-REM * (100 - REC-MLDI(1)) / 100
                COMPUTE MON-REM ROUNDED =
                    MON-REM * (100 - REC-MLDI(2)) / 100
                COMPUTE MON-REM ROUNDED =
                    MON-REM * (100 - REC-MLDI(3)) / 100
                COMPUTE MON-REM ROUNDED =
                    MON-REM * (100 - REC-MLDI(4)) / 100
                COMPUTE MON-REM ROUNDED =
                    MON-REM * (100 - REC-MLDI(5)) / 100
                COMPUTE MON-REM ROUNDED =
                    MON-REM * (100 - REC-MLDI(6)) / 100
                COMPUTE MON-REM ROUNDED = 100 - MON-REM
           ELSE MOVE REM-MLDI TO MON-REM.

       Cal-Prix-Net-Commun-D.
           IF IPR-MBDI = 1
                COMPUTE W-PRI ROUNDED =
                   W-PUB + ((W-PUB * REM-MLDI) / 100)
                COMPUTE W-PRI ROUNDED =
                   W-PRI + ((W-PRI * REC-MLDI(1)) / 100)
                COMPUTE W-PRI ROUNDED =
                   W-PRI + ((W-PRI * REC-MLDI(2)) / 100)
                COMPUTE W-PRI ROUNDED =
                   W-PRI + ((W-PRI * REC-MLDI(3)) / 100)
                COMPUTE W-PRI ROUNDED =
                   W-PRI + ((W-PRI * REC-MLDI(4)) / 100)
                COMPUTE W-PRI ROUNDED =
                   W-PRI + ((W-PRI * REC-MLDI(5)) / 100)
                COMPUTE W-PRI ROUNDED =
                   W-PRI + ((W-PRI * REC-MLDI(6)) / 100)
           ELSE COMPUTE W-PRI ROUNDED =
                   W-PUB - ((W-PUB * REM-MLDI) / 100)
                COMPUTE W-PRI ROUNDED =
                   W-PRI - ((W-PRI * REC-MLDI(1)) / 100)
                COMPUTE W-PRI ROUNDED =
                   W-PRI - ((W-PRI * REC-MLDI(2)) / 100)
                COMPUTE W-PRI ROUNDED =
                   W-PRI - ((W-PRI * REC-MLDI(3)) / 100)
                COMPUTE W-PRI ROUNDED =
                   W-PRI - ((W-PRI * REC-MLDI(4)) / 100)
                COMPUTE W-PRI ROUNDED =
                   W-PRI - ((W-PRI * REC-MLDI(5)) / 100)
                COMPUTE W-PRI ROUNDED =
                   W-PRI - ((W-PRI * REC-MLDI(6)) / 100).
           ADD W-PUS TO W-PRI.

       Remaj-Pamp-Taa.
