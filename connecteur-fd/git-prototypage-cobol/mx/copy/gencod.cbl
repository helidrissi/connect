      *  Création du GENCOD
       CREAT-GENCOD.
           IF CNUF-MFOU NOT = 0 AND IND-GENCOD = 1
              IF      CNUF-MFOU > 99999999
                      MOVE CNUF-MFOU TO G-CNUD9
                      MOVE REF-MART(1:3) TO G-CIP9
              ELSE IF CNUF-MFOU > 9999999
                      MOVE CNUF-MFOU TO G-CNUD8
                      MOVE REF-MART(1:4) TO G-CIP8
              ELSE IF CNUF-MFOU > 999999
                      MOVE CNUF-MFOU TO G-CNUD7
                      MOVE REF-MART(1:5) TO G-CIP7
              ELSE    MOVE CNUF-MFOU TO G-CNUD6
                      MOVE REF-MART(1:6) TO G-CIP6.
           IF CNUF-MFOU = 0 AND IND-GENCOD = 2
              IF W-NUMD = 0 PERFORM INCREM-DNO-MART.
           IF CNUF-MFOU = 0 AND IND-GENCOD = 2
              IF      CNUD-MPAR > 99999999
                      MOVE CNUD-MPAR TO G-CNUD9
                      MOVE W-NUMD3 TO G-CIP9
              ELSE IF CNUD-MPAR > 9999999
                      MOVE CNUD-MPAR TO G-CNUD8
                      MOVE W-NUMD4 TO G-CIP8
              ELSE IF CNUD-MPAR > 999999
                      MOVE CNUD-MPAR TO G-CNUD7
                      MOVE W-NUMD5 TO G-CIP7
              ELSE    MOVE CNUD-MPAR TO G-CNUD6
                      MOVE W-NUMD  TO G-CIP6.
           ADD  CHIF(2) CHIF(4) CHIF(6) CHIF(8) CHIF(10) CHIF(12)
                GIVING W-CONTROL
           MULTIPLY 3 BY W-CONTROL
           ADD  CHIF(1) CHIF(3) CHIF(5) CHIF(7) CHIF(9) CHIF(11)
                W-CONTROL GIVING W-CONTROL.
           MOVE W-CONTROL TO W-TESTE ADD 1 TO W-DIX
           MOVE 0 TO W-UNIT.
           SUBTRACT W-CONTROL FROM W-TESTE GIVING G-COD.
           MOVE G-GENCOD TO GCOD-MART.
      * Test si la référence convient pour création automatique du gencod
       TEST-REF-GENCOD.
           MOVE 0 TO IND-REF-GENCOD
           IF      CNUF-MFOU > 99999999
                   IF REF-MART(1:3) NUMERIC AND REF-MART(4:18) = SPACES
                      MOVE 1 TO IND-REF-GENCOD
                   END-IF
           ELSE IF CNUF-MFOU > 9999999
                   IF REF-MART(1:4) NUMERIC AND REF-MART(5:17) = SPACES
                      MOVE 1 TO IND-REF-GENCOD
                   END-IF
           ELSE IF CNUF-MFOU > 999999
                   IF REF-MART(1:5) NUMERIC AND REF-MART(6:16) = SPACES
                      MOVE 1 TO IND-REF-GENCOD
                   END-IF
           ELSE    IF REF-MART(1:6) NUMERIC AND REF-MART(7:15) = SPACES
                      MOVE 1 TO IND-REF-GENCOD.
      *  Incrémentation du dernier N° d'article (si GENCOD Interne Ou Numérotation Automatique)
       INCREM-DNO-MART.
           MOVE 1 TO W-MXPARAM
           READ MXPARAM LOCK INVALID
              MOVE "Lecture PARAM" TO ACU-MSG-2
              GO ERREUR.
           PERFORM STAT
           IF IND-STAT = 1 GO INCREM-DNO-MART.
           ADD 1 TO NUMD-MPAR MOVE NUMD-MPAR TO W-NUMD
           REWRITE ENR-MPAR INVALID MOVE "Réécriture PARAM" TO ACU-MSG-2
              GO ERREUR.
           PERFORM STAT.

      *  Verification du GENCOD (Ajout dans copy le 13/05/2014)
       VERIF-GENCOD.
           MOVE 1 TO W-OK
           IF CNUF-MFOU NOT= 0
              IF      CNUF-MFOU > 99999999
                      IF G-CNUD9 NOT= CNUF-MFOU MOVE 0 TO W-OK END-IF
              ELSE IF CNUF-MFOU > 9999999
                      IF G-CNUD8 NOT= CNUF-MFOU MOVE 0 TO W-OK END-IF
              ELSE IF CNUF-MFOU > 999999
                      IF G-CNUD7 NOT= CNUF-MFOU MOVE 0 TO W-OK END-IF
              ELSE    IF G-CNUD6 NOT= CNUF-MFOU MOVE 0 TO W-OK END-IF
                   END-IF
                   END-IF
              END-IF
              IF W-OK = 0   
120516
      *            MOVE "Vérifier le code GENCOD "
      *            TO ACU-MSG-1
      *            MOVE " CNUF Fournisseur incohérent "
      *            TO ACU-MSG-2
                  MOVE "CNUF Fournisseur incohérent. "
                  TO ACU-MSG-1
                  MOVE "Confirmez-vous le code GENCOD ?"
                  TO ACU-MSG-2
                  IF GENCOD-PASECR <> 1 
      *                 PERFORM MSG-INFO
                       PERFORM MSG-ON
                       IF ACU-RETURN-VALUE = 1 MOVE 1 TO W-OK
                       END-IF
                  ELSE MOVE SPACE TO ACU-MSG-1 ACU-MSg-2
                  END-IF
              END-IF
           END-IF.
           IF G-GENCOD NOT NUMERIC
              MOVE "Gencod erroné " TO ACU-MSG-1
              IF GENCOD-PASECR <> 1 
                   PERFORM MSG-INFO
              ELSE MOVE SPACE TO ACU-MSG-1 ACU-MSg-2
              END-IF
              MOVE ZERO TO W-OK
              EXIT PARAGRAPH
           END-IF.
           MOVE ZERO TO W-CONTROL
           ADD  CHIF(2) CHIF(4) CHIF(6) CHIF(8) CHIF(10) CHIF(12)
                GIVING W-CONTROL
           MULTIPLY 3 BY W-CONTROL
           ADD  CHIF(1) CHIF(3) CHIF(5) CHIF(7) CHIF(9) CHIF(11)
                W-CONTROL GIVING W-CONTROL.
           MOVE W-CONTROL TO W-TESTE ADD 1 TO W-DIX
           MOVE 0 TO W-UNIT.
           SUBTRACT W-CONTROL  FROM W-TESTE GIVING T-COD
           IF T-COD NOT = G-COD
              MOVE "Clé de Contrôle GENCOD erronée." TO ACU-MSG-1
              IF GENCOD-PASECR <> 1 
                   PERFORM MSG-INFO
              ELSE MOVE SPACE TO ACU-MSG-1 ACU-MSg-2
              END-IF
              MOVE ZERO TO W-OK
           END-IF.


