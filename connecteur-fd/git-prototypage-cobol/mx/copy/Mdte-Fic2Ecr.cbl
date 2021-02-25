      * formatage de la zone de caractéristique technique
      * mettre la copie en début de programme et l'appeler par
      *          PERFORM MEP-DOCTEC THRU F-MEP-DOCTEC
      * après avoir renseigné
      *          CTE-MDTE ou CTE-MDMA dans WDT-CTE
      *          VAL-MDTE ou VAL-MDMA dans WDT-VAL
      *          usage WDT-USA : C pour client, F pour fournisseur, 
      *                          E pour externe, blanc pour tout
      *                          I pour interne, P pour tout sf fournisseur
      *                          Q pour tout sauf client
      * retour: titre + valeur séparés par ":" dans WD-RES
      *         valeur dans WDT-RESV
      *         titre  dans WDT-REST

      *    Il faut un paragraphe GENER-XML-DET 
      *    pour le résultat du découpage par edicomment.cbl des textes étendus

       MEP-DOCTEC.
           MOVE SPACE TO WDT-RES WDT-REST WDT-RESV WDT-VALX
           OPEN I-O MXCARTEC
           PERFORM TEST-STATUS THRU FIN-TEST-STATUS
           IF IND-STAT = 3 MOVE 1 TO WDT-OPEN
                      ELSE MOVE 0 TO WDT-OPEN.
           IF IND-STAT = 2 GO F-MEP-DOCTEC.

           MOVE WDT-CTE TO COD-MCTC
           READ MXCARTEC INVALID GO F-MEP-DOCTEC.
           PERFORM TEST-STATUS THRU FIN-TEST-STATUS
           IF IND-STAT = 2 GO F-MEP-DOCTEC.
           
           IF (WDT-USA = "C" AND (USA-MCTC = 1 OR 2))
           OR (WDT-USA = "F" AND (USA-MCTC = 1 OR 3))
           OR (WDT-USA = "E" AND USA-MCTC = 1)
           OR (WDT-USA = "I" AND USA-MCTC NOT = 1)
           OR (WDT-USA = "P" AND USA-MCTC = 2)
           OR (WDT-USA = "Q" AND USA-MCTC = 3)
              GO F-MEP-DOCTEC
           END-IF.
           
           | choix
           IF TDZ-MCTC = 4 
              PERFORM MDTE-LECT-CARTECS
              IF LIB-MCTCS = SPACE GO F-MEP-DOCTEC
              END-IF
           END-IF
           | texte étendu
           IF TDZ-MCTC = 6 
              PERFORM MDTE-LECT-DOCTECEXT
              IF VAL-MDTEX = SPACE GO F-MEP-DOCTEC
              END-IF
           END-IF

           IF (TDZ-MCTC = 1 AND WDT-VAL = SPACE)
           OR (TDZ-MCTC = 2 AND WDT-V18 = ZERO)
           OR (TDZ-MCTC = 3 AND WDT-V18 = ZERO)
           OR (TDZ-MCTC = 5 AND WDT-DAT = ZERO)
              GO F-MEP-DOCTEC
           END-IF
           MOVE LIB-MCTC TO WDT-REST
 
           IF LANGUECLI NOT = ZERO
              MOVE "H" TO INP-MTRD
              MOVE LANGUECLI TO LAN-MTRD
              MOVE COD-MCTC TO ART-MTRD
              PERFORM LECT-TRADUC
              IF DES-MTRD <> SPACE MOVE DES-MTRD TO LIB-MCTC WDT-REST
              END-IF
           END-IF
 
           | texte
           IF TDZ-MCTC = 1 
              MOVE WDT-VAL TO WDT-RESV
              GO MEP-DOCTEC-A.
           | binaire
           IF TDZ-MCTC = 3 
              IF WDT-V18 = 1 MOVE "Oui" TO WDT-RESV
                        ELSE MOVE "Non" TO WDT-RESV
              END-IF
              GO MEP-DOCTEC-A.
           | choix
           IF TDZ-MCTC = 4 
              MOVE LIB-MCTCS TO WDT-RESV
              GO MEP-DOCTEC-A.
           | date
           IF TDZ-MCTC = 5 
              MOVE WDT-DAT TO D-SAMJ PERFORM CONVDAT-SAMJ-JMSA
              MOVE L-DAT8 TO WDT-RESV
              GO MEP-DOCTEC-A.
           | texte étendu
           IF TDZ-MCTC = 6
              IF WDT-IBASE NOT = 0 
                 MOVE WDT-IBASE TO WDT-I
                 MOVE WDT-JBASE TO WDT-J
              ELSE
                 MOVE 400 TO WDT-I
                 MOVE 395 TO WDT-J
              END-IF
              MOVE SPACE TO WDT-VALX
              IF WDT-TITRE = 1 
                   MOVE VAL-MDTEX TO WDT-VALX
              ELSE STRING WDT-REST DELIMITED BY "    "
                     " " VAL-MDTEX DELIMITED BY SIZE INTO WDT-VALX
              END-IF
              IF WDT-UNZON = 1
                 MOVE VAL-MDTEX TO WDT-RESV
                 GO MEP-DOCTEC-A
              ELSE
                 COPY "../../mx/copy/edicomment.cbl" REPLACING
                   ==DCN-PROC== BY ==GENER-XML-DET==
                   ==DCN-VAR==  BY ==IX-ZON-DES==   
                   ==DCN-NBCP== BY ==WDT-I==           
                   ==DCN-NBCB== BY ==WDT-J==
                   ==LIB-MCMO== BY ==WDT-VALX==.  
                  MOVE SPACE TO WDT-RES
               END-IF
               GO F-MEP-DOCTEC
           END-IF.

       MEP-DOCTEC-N.
           IF DEC-MCTC = 0 MOVE WDT-V18 TO R0-WDT-AFF.
           IF DEC-MCTC = 1 MOVE WDT-V17 TO R1-WDT-AFF.
           IF DEC-MCTC = 2 MOVE WDT-V16 TO R2-WDT-AFF.
           IF DEC-MCTC = 3 MOVE WDT-V15 TO R3-WDT-AFF.
           IF DEC-MCTC = 4 MOVE WDT-V14 TO R4-WDT-AFF.
           IF DEC-MCTC = 5 MOVE WDT-V13 TO R5-WDT-AFF.
           MOVE WDT-AFF TO WDT-RESV
           MOVE SPACE   TO WDT-ZAFF
           MOVE 1 TO WDT-I.
           MOVE 0 TO WDT-J WDT-VIR WDT-DEC.
       BCL-DOCTEC.
           IF WDT-ELT2(WDT-I) = SPACE GO S-BCL-DOCTEC.
           IF WDT-ELT2(WDT-I) = "," MOVE 1 TO WDT-VIR.
           ADD 1 TO WDT-J
           MOVE WDT-ELT2(WDT-I) TO WDT-ELT3(WDT-J).
           IF WDT-VIR = 1 AND WDT-DEC = DEC-MCTC GO F-BCL-DOCTEC.
           IF WDT-VIR = 1 ADD 1 TO WDT-DEC.
       S-BCL-DOCTEC.
           IF WDT-I = 40 GO F-BCL-DOCTEC.
           ADD 1 TO WDT-I 
           GO BCL-DOCTEC.
       F-BCL-DOCTEC.
           MOVE WDT-ZAFF TO WDT-RESV.
       MEP-DOCTEC-A.
           IF WDT-REST = SPACE
                MOVE WDT-RESV TO WDT-RES
           ELSE MOVE SPACE TO WDT-RES
                STRING WDT-REST DELIMITED BY "  "
                  " "  WDT-RESV DELIMITED BY SIZE INTO WDT-RES.
       F-MEP-DOCTEC.
           IF WDT-OPEN = 0 CLOSE MXCARTEC.

       MDTE-LECT-DOCTECEXT.
           OPEN I-O MXDOCTECEXT
           PERFORM TEST-STATUS THRU FIN-TEST-STATUS
           IF IND-STAT = 3 MOVE 1 TO WDT-OPEN-TEX
                      ELSE MOVE 0 TO WDT-OPEN-TEX.
           IF IND-STAT = 2 EXIT PARAGRAPH
           END-IF
           INITIALIZE      ENR-MDTEX 
           MOVE WDT-CLE TO CLE-MDTEX
           MOVE WDT-ORI TO ORI-MDTEX
           MOVE WDT-LIG TO LIG-MDTEX
           READ MXDOCTECEXT INVALID MOVE WDT-VAL TO VAL-MDTEX
           END-READ
           PERFORM STAT
           IF WDT-OPEN-TEX = 0 CLOSE MXDOCTECEXT
           END-IF
           IF WDT-NEWLINE = 1
              INSPECT VAL-MDTEX REPLACING ALL W-NEWLINE BY ", "
           END-IF
           .

       MDTE-LECT-CARTECS.
           OPEN I-O MXCARTECS
           PERFORM TEST-STATUS THRU FIN-TEST-STATUS
           IF IND-STAT = 3 MOVE 1 TO WDT-OPEN-CTCS
                      ELSE MOVE 0 TO WDT-OPEN-CTCS.
           IF IND-STAT = 2 EXIT PARAGRAPH
           END-IF   
           MOVE SPACE TO ENR-MCTCS
           MOVE COD-MCTC TO COD-MCTCS
           MOVE WDT-V18  TO ORD-MCTCS
           READ MXCARTECS 
           PERFORM STAT.
           IF WDT-OPEN-CTCS = 0 CLOSE MXCARTECS
           END-IF
030315* au cas ou on a changé le type de CTE
           IF WDT-VAL(1:18) NOT NUMERIC
              MOVE WDT-VAL TO LIB-MCTCS
           END-IF
030315
           .             


