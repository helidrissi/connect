      * Calcul de la Marge Unitaire 
      * Il faut avoir lu  MXART, MXARTSA, MXFAMART
      * Renseigner W-ART (code article) 
      *            CAL-MARGE-PUB (PU brut)
      *            CAL-MARGE-PUN (PU net)
      * Donne: CAL-MARGE-PAC (prix de revient unitaire)
      *        CAL-MARGE-MBU (marge unitaire)
       CAL-MARGE.
           MOVE ZERO TO CAL-MARGE-PAC CAL-MARGE-FUA
           IF W-ART(1:4) NUMERIC 
                COMPUTE CAL-MARGE-PAC ROUNDED = CAL-MARGE-PUB / COE-MFAM
                MOVE 0 TO UPR-MART
                GO F-CAL-MARGE.
           MOVE FUA-MART TO CAL-MARGE-FUA
           IF (STO-MASA = 1 OR 9) AND MCM-MPAR NOT = 2 GO CAS-GERE.   | Le 11/03/2008 (VO) Ajout (OR 9) -> Traitement Dépot-Vente idem Géré 
       CAS-NON-GERE.
           IF PAC-MART NOT = ZERO 
                COMPUTE CAL-MARGE-PAC ROUNDED = (PAC-MART / NUU-MART)
           ELSE IF COE-MART NOT = 0 
                     COMPUTE CAL-MARGE-PAC ROUNDED 
                             = CAL-MARGE-PUB / COE-MART 
                ELSE COMPUTE CAL-MARGE-PAC ROUNDED 
                             = CAL-MARGE-PUB / COE-MFAM
                END-IF
           END-IF.
           IF CAL-MARGE-PAC NOT = ZERO AND MCM-MPAR NOT = 1 
                ADD CAL-MARGE-FUA TO CAL-MARGE-PAC
           END-IF.
           GO F-CAL-MARGE.
       CAS-GERE.
           IF MCM-MPAR = 0 OR 1 MOVE PAMP-MASA TO CAL-MARGE-PAC.
           IF MCM-MPAR = 3      MOVE PRMP-MASA TO CAL-MARGE-PAC.
           IF CAL-MARGE-PAC > ZERO
               IF MCM-MPAR = 0 OR 2 ADD CAL-MARGE-FUA TO CAL-MARGE-PAC.
           IF CAL-MARGE-PAC > ZERO GO F-CAL-MARGE.

151007     IF MCM-MPAR = 3 AND PAMP-MASA NOT = ZERO
151007        MOVE PAMP-MASA TO CAL-MARGE-PAC
151007        ADD CAL-MARGE-FUA TO CAL-MARGE-PAC
151007        GO F-CAL-MARGE
151007     END-IF.

           IF PAC-MART NOT = ZERO 
               COMPUTE CAL-MARGE-PAC ROUNDED = (PAC-MART / NUU-MART)
               IF MCM-MPAR = 0 OR 2 OR 3 
                    ADD CAL-MARGE-FUA TO CAL-MARGE-PAC
               END-IF
               GO F-CAL-MARGE
           END-IF.

           IF COE-MART NOT = ZERO
                COMPUTE CAL-MARGE-PAC ROUNDED 
                        = CAL-MARGE-PUB / COE-MART 
           ELSE COMPUTE CAL-MARGE-PAC ROUNDED 
                        = CAL-MARGE-PUB / COE-MFAM
           END-IF.
       F-CAL-MARGE.
           COMPUTE CAL-MARGE-MBU = CAL-MARGE-PUN - CAL-MARGE-PAC.
