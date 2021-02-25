      * Mise à jour du prix et de la remise d'un article du catalogue
      * fournisseur d'après les paramètres de la fiche client
      * Il faut avoir lu  MXFAMART
      *                   MXCLID 
      *                   MXGRICLI
      *                   MXPARDIS, MXTABRMA
      * Renseigner: CAL-PV-FOU, CAL-PV-REF
      *             CAL-PV-TCF
      * En retour: W-PUB, W-REM
      *

       CAL-PV-CTF-D.
      *     OPEN I-O MXCATFOU
      *     PERFORM TEST-STATUS THRU FIN-TEST-STATUS
      *     IF IND-STAT = 3 MOVE 1 TO CAL-PV-OPEN
      *                ELSE MOVE 0 TO CAL-PV-OPEN
      *     END-IF
      *     IF IND-STAT = 2 PERFORM ACU-SHOW-MSG 
      *                     GO ACU-EXIT-RTN
      *     END-IF    
      *     MOVE SPACE TO ENR-MCTF
      *     MOVE CAL-PV-FOU TO FOU-MCTF
      *     MOVE CAL-PV-REF TO REF-MCTF
      *     READ MXCATFOU
      *     END-READ
      *     PERFORM STAT
      *     IF CAL-PV-OPEN = 0 CLOSE MXCATFOU
      *     END-IF

           OPEN I-O MXFOU
           PERFORM STAT
           MOVE FOU-MLDI TO COD-MFOU
           READ MXFOU INVALID MOVE ZERO TO CRS-MFOU.
           PERFORM STAT
           CLOSE MXFOU.

160114
      *     OPEN I-O MXREMFOU
      *     PERFORM STAT
      *     MOVE COD-MFOU TO FOU-MRFO
      *     MOVE 1 TO CAL-PV-RFO  | indicateur correspondance grille remise/catalogue
      *     READ MXREMFOU INVALID MOVE SPACES TO ENR-MRFO
                                 MOVE 0 TO CAL-PV-RFO.
      *     PERFORM STAT.
      *     CLOSE MXREMFOU.
160114
           IF DEV-MCTF NOT = 1 
290110     AND ICF-MLDI = 1
              MOVE CAL-PV-PTF TO CAL-PV-PAC
              GO S-CAL-PV-CTF-D.

           IF DEV-MFOU NOT = SPACE 
              MOVE CRS-MFOU TO WCE-CRS
              MOVE CAL-PV-PTF TO WCE-MAC
              MOVE DEV-MFOU TO WCE-DEV WCE-MCO
      *        PERFORM INVERSMX-D-I
              MOVE WCE-MCO  TO CAL-PV-PTF
           END-IF
           MOVE CAL-PV-PTF TO CAL-PV-PAC.

       S-CAL-PV-CTF-D.
           IF POP-MFOU = 3  | PV - remise
                MOVE CAL-PV-PTF TO W-PUB
           END-IF

           IF POP-MFOU = 2 OR 6  | Coef/prix tarif ou prix tarif + PA
                PERFORM CAL-PV-CTF-D-CAL-COE
                COMPUTE W-PUB ROUNDED = CAL-PV-PTF * CAL-PV-COE
           END-IF

      *     IF BFC-MCLD = 8 AND TAG-MFAM = 1
      *          IF COE-MFAM NOT = ZERO
      *               COMPUTE CAL-PV-MARG 
      *                       ROUNDED = 100 - (100 / COE-MFAM)
      *          ELSE MOVE 0 TO CAL-PV-MARG
      *          END-IF
      *          PERFORM CAL-PV-CTF-D-RECH-TABRMA 
      *             THRU F-CAL-PV-CTF-D-RECH-TABRMA
      *          COMPUTE CAL-PV-POU ROUNDED = 
      *               PMC-MPAD / BGM-MPAD / COE-MTRMA(CAL-PV-Z) * 100.

           PERFORM CAL-PV-CTF-D-RECH-REM

           MOVE CAL-PV-PTF TO CAL-PV-PTFS

           IF IPAC-MLDI NOT = 1   | 08/11/12 si prix saisi = PA
             COMPUTE CAL-PV-PTF ROUNDED
               = CAL-PV-PTF * (100 - CAL-PV-REM0) / 100
             COMPUTE CAL-PV-PTF ROUNDED 
               = CAL-PV-PTF * (100 - CAL-PV-REM1) / 100
             COMPUTE CAL-PV-PTF ROUNDED 
               = CAL-PV-PTF * (100 - CAL-PV-REM2) / 100
           END-IF

           MOVE CAL-PV-PTF TO CAL-PV-PAC               

270208     IF POP-MFOU = 6 AND PAT-MCTF NOT = 0
              MOVE PAT-MCTF TO CAL-PV-PAC
              COMPUTE CAL-PV-PAC ROUNDED
                  = CAL-PV-PAC * (100 - CAL-PV-REM0) / 100
              COMPUTE CAL-PV-PAC ROUNDED 
                  = CAL-PV-PAC * (100 - CAL-PV-REM1) / 100
              COMPUTE CAL-PV-PAC ROUNDED 
                  = CAL-PV-PAC * (100 - CAL-PV-REM2) / 100
270208     END-IF

           IF BFC-MCLD = 8 AND TAG-MFAM = 1
                COMPUTE CAL-PV-MARG ROUNDED = 
                       (CAL-PV-PTF * COE-MFAM) - CAL-PV-PTF 
                        * CAL-PV-POU / 100
                COMPUTE W-PUB ROUNDED = CAL-PV-PTF + CAL-PV-MARG
           ELSE IF BFC-MCLD = 6 AND TAG-MFAM = 1
                COMPUTE CAL-PV-MARG ROUNDED = 
                       (CAL-PV-PTFS - CAL-PV-PTF) * COE-MCLD
                COMPUTE W-PUB ROUNDED = CAL-PV-PTF + CAL-PV-MARG
                MOVE ZERO TO W-REM
190508     ELSE IF BFC-MCLD = 2 OR 4 OR 5 OR 7
190508          MOVE CAL-PV-PTF TO W-PUB
           ELSE IF POP-MFOU = 1 OR 4
                   PERFORM CAL-PV-CTF-D-CAL-COE
                   COMPUTE W-PUB ROUNDED = CAL-PV-PTF * CAL-PV-COE
                END-IF
211112          IF PVT-MCTF <> 0 MOVE PVT-MCTF TO W-PUB.

301211     IF COE-MCLD NOT = 0 AND BFC-MCLD <> 6
301211          COMPUTE W-PUB ROUNDED = W-PUB * COE-MCLD.

           MOVE ZERO TO W-REMC
           IF REM-MCLD NOT = 0
                MOVE REM-MCLD TO W-REM.
           
      *     IF CAL-PV-RFO = 1
      *          IF REM-MCLD NOT = 0
      *          OR (TAG-MFAM = 1 AND BFC-MCLD = 8)
      *          OR (TAG-MFAM = 1 AND BFC-MCLD = 6)
      *               CONTINUE
      *          ELSE 
      *               PERFORM VARYING CAL-PV-N FROM 1 BY 1 UNTIL 
      *                   CAL-PV-N > 200 
      *               OR (CRE-MRFO(CAL-PV-N) = SPACES 
      *                   AND CRF-MRFO(CAL-PV-N) = ZERO)
      *                  IF REM-MCTF = CRE-MRFO(CAL-PV-N) 
      *                       MOVE CRC-MRFO(CAL-PV-N) TO CRC-MFAM
110512**                       MOVE COE-MRFO(CAL-PV-N) TO COE-MFAM
      *                       PERFORM CAL-PV-CTF-D-CASCADE
      *                       MOVE 201 TO CAL-PV-N
      *                  END-IF
      *               END-PERFORM.
       F-CAL-PV-CTF-D.
           EXIT.

      * CAL-PV-CTF-D-RECH-TABRMA.
      *     MOVE 1 TO CAL-PV-Z.
      * BCL-CAL-PV-CTF-D-RECH-TABRMA.
      *     IF CAL-PV-Z > 9 GO F-CAL-PV-CTF-D-RECH-TABRMA.
      *     IF TRC-MTRMA(CAL-PV-Z) = 0 GO F-CAL-PV-CTF-D-RECH-TABRMA.
      *     IF CAL-PV-MARG < TRC-MTRMA(CAL-PV-Z) 
      *          GO F-CAL-PV-CTF-D-RECH-TABRMA
      *     END-IF.
      *     ADD 1 TO CAL-PV-Z
      *     GO BCL-CAL-PV-CTF-D-RECH-TABRMA.
      * F-CAL-PV-CTF-D-RECH-TABRMA.
      *     IF CAL-PV-Z = 0 OR > 9 MOVE 1 TO CAL-PV-Z.

       CAL-PV-CTF-D-CASCADE.
      *     ADD 1 CRC-MFAM GIVING CAL-PV-Z
      *     MOVE REM-MGRC(CAL-PV-Z)    TO W-REM
091115*     IF HAU-MGRC = 1 MULTIPLY -1 BY W-REM
091115*     END-IF
      *     MOVE REMC-MGRC(CAL-PV-Z 1) TO W-REC(1)
      *     MOVE REMC-MGRC(CAL-PV-Z 2) TO W-REC(2)
      *     MOVE REMC-MGRC(CAL-PV-Z 3) TO W-REC(3)
      *     MOVE REMC-MGRC(CAL-PV-Z 4) TO W-REC(4)
      *     MOVE REMC-MGRC(CAL-PV-Z 5) TO W-REC(5)
      *     MOVE REMC-MGRC(CAL-PV-Z 6) TO W-REC(6).

       CAL-PV-CTF-D-RECH-REM.
      *     MOVE 1 TO CAL-PV-GRI  | indicateur grille de remise fournisseur
      *     OPEN I-O MXGRIFOU
      *     PERFORM STAT
      *     MOVE COD-MFOU TO FOU-MGRF
      *     MOVE CAL-PV-TCF TO TCF-MGRF
      *     READ MXGRIFOU INVALID MOVE ZERO TO CAL-PV-GRI.
      *     PERFORM STAT
      *     CLOSE MXGRIFOU.
      *     
      *     OPEN I-O MXREMFOU
      *     PERFORM STAT
      *     MOVE COD-MFOU TO FOU-MRFO
      *     MOVE 1 TO CAL-PV-RFO  | indicateur correspondance grille remise/catalogue
      *     READ MXREMFOU INVALID MOVE SPACES TO ENR-MRFO
      *                           MOVE 0 TO CAL-PV-RFO.
      *     PERFORM STAT.
      *     CLOSE MXREMFOU.
      *     
      *     MOVE ZERO TO CAL-PV-REM0 CAL-PV-REM1 CAL-PV-REM2
      *     IF CAL-PV-RFO = 0
      *          INITIALIZE ENR-MTCF CAL-PV-OPEN
      *          MOVE CAL-PV-FOU TO FOU-MTCF
      *          MOVE CAL-PV-TCF TO COD-MTCF               
      *          OPEN INPUT MXTYPCDF
      *          PERFORM STAT
      *          READ MXTYPCDF
      *          PERFORM STAT
      *          CLOSE MXTYPCDF
      *          MOVE REM-MTCF TO CAL-PV-REM0
      *     ELSE PERFORM CAL-PV-CTF-D-RECH-REMFOU-ART VARYING
110216**          CAL-PV-Z FROM 1 BY 1 UNTIL CAL-PV-Z > 100 
110216*          CAL-PV-Z FROM 1 BY 1 UNTIL CAL-PV-Z > 200 
      *          OR (CRE-MRFO(CAL-PV-Z) = SPACES 
      *          AND CRF-MRFO(CAL-PV-Z) = ZERO).
       
      * Recherche des remises en fonction du code remise du catalogue         
       CAL-PV-CTF-D-RECH-REMFOU-ART.
      *     IF CAL-PV-GRI = ZERO        | remise de Typcdf
      *        IF REM-MCTF = CRE-MRFO(CAL-PV-Z)
      *           MOVE REM-MRFO(CAL-PV-Z) TO CAL-PV-REM0
      *           MOVE 101 TO CAL-PV-Z.
      *           
      *     IF CAL-PV-GRI = 1           | remise dans la grille
      *        IF REM-MCTF = CRE-MRFO(CAL-PV-Z)
      *           ADD 1 CRF-MRFO(CAL-PV-Z) GIVING CAL-PV-N
110216**           MOVE 101 TO CAL-PV-Z
110216*           MOVE 201 TO CAL-PV-Z
      *           MOVE REM-MGRF(CAL-PV-N) TO CAL-PV-REM0
      *           MOVE REC-MGRF(CAL-PV-N 1) TO CAL-PV-REM1
      *           MOVE REC-MGRF(CAL-PV-N 2) TO CAL-PV-REM2.
                 
      * Recherche du coefficient
       CAL-PV-CTF-D-CAL-COE.
           MOVE COE-MFAM TO CAL-PV-COE.  |dans la sous-famille
      *     IF CCO-MPAR = 1              | par tranche de prix
230210*         MOVE CAL-PV-FOU TO FOU-MART
230210*         PERFORM RECH-TABCOE-FOU
      *         PERFORM VARYING CAL-PV-Z FROM 1 BY 1 UNTIL CAL-PV-Z > 15
      *              IF CAL-PV-PTF NOT < DEB-MTCO(CAL-PV-Z) 
      *                 AND NOT > FIN-MTCO(CAL-PV-Z)
      *                  MOVE COE-MTCO(CAL-PV-Z) TO CAL-PV-COE
      *                  MOVE 16 TO CAL-PV-Z
      *              END-IF
      *         END-PERFORM
230210*         PERFORM RECH-TABCOE-1
      *     END-IF. 
110512*
      *     IF CAL-PV-RFO = 1 AND CCO-MPAR NOT = 1
      *         PERFORM VARYING CAL-PV-N FROM 1 BY 1 UNTIL 
      *                   CAL-PV-N > 200 
      *         OR (CRE-MRFO(CAL-PV-N) = SPACES 
      *             AND CRF-MRFO(CAL-PV-N) = ZERO)
      *            IF REM-MCTF = CRE-MRFO(CAL-PV-N) 
      *                 MOVE COE-MRFO(CAL-PV-N) TO CAL-PV-COE
      *                 MOVE 201 TO CAL-PV-N
      *            END-IF
      *         END-PERFORM
      *     END-IF.
110512*
241012*     IF CAL-PV-COE = 0 MOVE COE-MFAM TO CAL-PV-COE
241012*     END-IF.
