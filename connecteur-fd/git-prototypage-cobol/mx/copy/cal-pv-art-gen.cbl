       Init-Cli.                
           OPEN  I-O MXCLI
           PERFORM STAT.
           MOVE LK-CALPVART-CLI TO COD-MCLI
           READ MXCLI KEY CLE6-MCLI INVALID 
                MOVE 0 TO LK-CALPVART-CLI
           END-READ
           PERFORM STAT
           CLOSE MXCLI
           

           OPEN  I-O MXAGENCE
           PERFORM STAT.
           MOVE LK-CALPVART-AGE TO COD-MAGC
           READ MXAGENCE 
           PERFORM STAT
           MOVE GTL-MAGC TO W-GTL
           CLOSE MXAGENCE.

           PERFORM Lect-Groutl
           IF LK-CALPVART-TCC = SPACE
              PERFORM Rech-TCC-Default
           ELSE
              MOVE LK-CALPVART-TCC TO TCC-default
           END-IF

      **     MOVE W-GTL TO GTL-MCLD GTL-MCLV GTL-MCLR GTL-MCLV
      **     MOVE LK-CALPVART-CLI TO COD-MCLD COD-MCLV COD-MCLR COD-MCLV
      **                             COD-MCLL
      **     IF MXDIS-PALM = 1 AND LK-CALPVART-MOD = "D"
      **        OPEN INPUT MXPARDIS
      **        PERFORM STAT
      **        MOVE 1 TO W-MXPARDIS
      **        READ MXPARDIS 
      **        PERFORM STAT
      **        CLOSE MXPARDIS
      **        IF LK-CALPVART-CLI <> 0 
      **           OPEN INPUT MXCLID
      **           PERFORM STAT
      **           READ MXCLID INVALID MOVE SPACE TO GTL-MCLD
      **                            READ MXCLID
      **                            END-READ
      **                            PERFORM STAT
      **                            IF TSP-MGTL <> SPACE 
      **                               MOVE TSP-MGTL TO TSP-MCLD
      **                               MOVE TS2-MGTL TO TS2-MCLD
      **                            END-IF
      **           END-READ
      **           PERFORM STAT
      **           CLOSE MXCLID
      **           MOVE GRI-MCLD TO CLE1-MGRC
      **           PERFORM Lect-Gricli
      **           MOVE TSP-MCLD TO WCOD-MTSE
      **           MOVE TS2-MCLD TO WCO2-MTSE
      **           MOVE TMO-MCLD TO WCOP-MTSE
      **           MOVE "D" TO WMOD-MTSE
      **           MOVE DTT-PALM TO WDSA-MTSE
      **           PERFORM LECT-WTSPENT
      **        END-IF
      **        EXIT PARAGRAPH
      **     END-IF

      **     IF MXREP-PALM = 1 AND LK-CALPVART-MOD = "R"
120716**
      **        OPEN I-O MXPARATE 
      **        PERFORM STAT
      **        MOVE 1 TO W-MXPARATE
      **        READ MXPARATE 
      **        PERFORM STAT
      **        CLOSE MXPARATE
120716**
010219**
      **        IF MXDIS-PALM = 1 
      **           OPEN I-O MXPARDIS
      **           PERFORM STAT
      **           MOVE 1 TO W-MXPARDIS
      **           READ MXPARDIS 
      **           PERFORM STAT
      **           CLOSE MXPARDIS
      **        END-IF
010219**
      **
      **        IF LK-CALPVART-CLI <> 0
      **           OPEN INPUT MXCLIR
      **           PERFORM STAT
      **           READ MXCLIR INVALID MOVE SPACE TO GTL-MCLR
      **                            READ MXCLIR
      **                            END-READ
      **                            PERFORM STAT
      **                            IF TSP-MGTL <> SPACE 
      **                               MOVE TSP-MGTL TO TSP-MCLR
      **                               MOVE TS2-MGTL TO TS2-MCLR
      **                            END-IF
      **           END-READ
      **           PERFORM STAT
      **           CLOSE MXCLIR 
      **           MOVE GRI-MCLR TO CLE1-MGRC
      **           PERFORM Lect-Gricli
      **           MOVE TSP-MCLR TO WCOD-MTSE
      **           MOVE TS2-MCLR TO WCO2-MTSE
      **           MOVE TMO-MCLR TO WCOP-MTSE
      **           MOVE "R" TO WMOD-MTSE
      **           MOVE DTT-PALM TO WDSA-MTSE
      **           PERFORM LECT-WTSPENT
      **           MOVE BFC-MCLR TO BFC-MCLD
      **           MOVE REM-MCLR TO REM-MCLD
      **           EXIT PARAGRAPH
      **        END-IF
      **     END-IF

      **     IF MXMAT-PALM = 1 AND LK-CALPVART-MOD = "M"
      **     AND LK-CALPVART-CLI <> 0
      **        OPEN INPUT MXCLIV
      **        PERFORM STAT
      **        READ MXCLIV INVALID MOVE SPACE TO GTL-MCLV
      **                            READ MXCLIV
      **                            END-READ
      **                            PERFORM STAT
      **                            IF TSP-MGTL <> SPACE 
      **                               MOVE TSP-MGTL TO TSP-MCLV
      **                               MOVE TS2-MGTL TO TS2-MCLV
      **                            END-IF
      **        END-READ
      **        PERFORM STAT
      **        CLOSE MXCLIV 
      **        MOVE GRI-MCLV TO CLE1-MGRC
      **        PERFORM Lect-Gricli
      **        MOVE TSP-MCLV TO WCOD-MTSE
      **        MOVE TS2-MCLV TO WCO2-MTSE
      **        MOVE TMO-MCLV TO WCOP-MTSE
      **        MOVE "M" TO WMOD-MTSE
      **        MOVE DTT-PALM TO WDSA-MTSE
      **        PERFORM LECT-WTSPENT
      **        MOVE BFC-MCLV TO BFC-MCLD
      **        MOVE REM-MCLV TO REM-MCLD
      **        EXIT PARAGRAPH
      **     END-IF
      **     IF MXLOC-PALM = 1 AND LK-CALPVART-MOD = "L"
      **     AND LK-CALPVART-CLI <> 0
      **        OPEN INPUT MXCLIL
      **        PERFORM STAT
      **        READ MXCLIL INVALID MOVE SPACE TO GTL-MCLL
      **                            READ MXCLIL
      **                            END-READ
      **                            PERFORM STAT
      **                            IF TSP-MGTL <> SPACE 
      **                               MOVE TSP-MGTL TO TSP-MCLL
      **                               MOVE TS2-MGTL TO TS2-MCLL
      **                            END-IF
      **        END-READ 
      **        PERFORM STAT
      **        CLOSE MXCLIL 
      **        MOVE GRI-MCLL TO CLE1-MGRC
      **        PERFORM Lect-Gricli
      **        MOVE TSP-MCLL TO WCOD-MTSE
      **        MOVE TS2-MCLL TO WCO2-MTSE
      **        MOVE TMO-MCLL TO WCOP-MTSE
      **        MOVE "L" TO WMOD-MTSE
      **        MOVE DTT-PALM TO WDSA-MTSE
      **        PERFORM LECT-WTSPENT
      **        MOVE BFC-MCLL TO BFC-MCLD
      **        MOVE REM-MCLL TO REM-MCLD
      **        EXIT PARAGRAPH
      **     END-IF.
           .

       Lect-gricli.
      *     OPEN I-O MXGRICLI.
      *     PERFORM STAT.
      *     MOVE Tcc-Default TO TCO-MGRC
      *     READ MXGRICLI invalid move space to enr-mgrc
      *     end-read
      *     PERFORM STAT.
      *     CLOSE MXGRICLI.

       Lect-Groutl.
      *     OPEN I-O MXGROUTL
      *     PERFORM STAT
      *     MOVE W-GTL TO COD-MGTL
      *     READ MXGROUTL INVALID MOVE SPACE TO ENR-MGTL
      *     END-READ
      *     PERFORM STAT
      *     ClOSE MXGROUTL
      *     MOVE TSP-MGTL TO WCOD-MTSE
      *     MOVE TS2-MGTL TO WCO2-MTSE
      *     MOVE " " TO WMOD-MTSE
      *     MOVE DTT-PALM TO WDSA-MTSE
      *     PERFORM LECT-WTSPENT.

       Rech-TCC-Default.
      *     OPEN I-O MXTYPCDC.
      *     PERFORM STAT.
      *     MOVE SPACE TO CLE1-MTCC TCC-Default
      *     MOVE 0 TO W-EOF
      *     START MXTYPCDC KEY NOT < CLE1-MTCC INVALID MOVE 1 TO W-EOF.
      *     IF W-EOF = 0
      *        READ MXTYPCDC NEXT END MOVE 1 TO W-EOF
      *        END-READ
      *        PERFORM STAT.
      *     PERFORM UNTIL W-EOF = 1 
      *        IF TYP-MTCC = 1 
      *           MOVE COD-MTCC TO TCC-Default 
      *           MOVE 1 TO W-EOF
      *        END-IF
      *        READ MXTYPCDC NEXT END MOVE 1 TO W-EOF
      *        END-READ
      *        PERFORM STAT
      *     END-PERFORM
      *     CLOSE MXTYPCDC.

       Remp-Prix.         
           IF LK-CALPVART-CLI <> 0  
              PERFORM Cal-Pv-Art-D             | calcul prix de vente                
              MOVE W-PUB TO W-PVCLI LK-CALPVART-PRICLI   
              PERFORM Maj-Remise               | calcul remise
           ELSE
              MOVE PVT-MART TO W-PVCLI W-PUB LK-CALPVART-PRICLI
              MOVE 0 TO W-REM
              PERFORM Maj-Remise               | calcul remise                
           END-IF
           MOVE PVT-MART TO LK-CALPVART-PRI
           MOVE W-REM TO W-REMCLI LK-CALPVART-REMCLI
           IF W-PVCLI <> PVT-MART
              COMPUTE W-PVCLI ROUNDED =
                 W-PVCLI - (W-PVCLI * W-REM / 100)
              COMPUTE W-REMCLI ROUNDED =
                 (PVT-MART - W-PVCLI) / PVT-MART * 100  
           ELSE
              COMPUTE W-PVCLI ROUNDED =
                 W-PVCLI - (W-PVCLI * W-REM / 100)
           END-IF
090114
           IF W-PVCLI <> LK-CALPVART-PRICLI
              COMPUTE LK-CALPVART-REMCLI ROUNDED =
                 (LK-CALPVART-PRICLI - W-PVCLI) 
                 / LK-CALPVART-PRICLI * 100  
      **       IF WV-PRO = 1 AND WCDP-MPRO = 1 
      **          MOVE 0 TO LK-CALPVART-REMCLI
      **          MOVE W-PVCLI TO LK-CALPVART-PRICLI
      **       END-IF
           END-IF
090114
           MOVE W-PVCLI TO LK-CALPVART-PVNCLI.           

       MAJ-REMISE.            
           IF (W-TSP = 1 OR W-TSP2 = 1)
      **          PERFORM VERIF-TSPLIG
      **          PERFORM LECT-TSPLIG THRU F-LECT-TSPLIG                 
                IF W-TSL = 1 
                AND WREM-MTSL NOT = 1   
                AND WREG-MTSL NOT = 1
                AND WREG-MTSL NOT = 6
                     MOVE 0 TO W-REM W-REC(1) W-REC(2) 
                               W-REC(3) W-REC(4) W-REC(5) 
                               W-REC(6)
                     EXIT PARAGRAPH
                END-IF
           END-IF

           IF LK-CALPVART-CLI <> 0
              MOVE COD-MCLI TO WCLI-MTSE
              MOVE FAM-MCLI TO WFCL-MTSE
              MOVE LK-CALPVART-AGE TO WAGE-MTSE
              MOVE COD-MART TO WART-MTSE
              MOVE DTT-PALM TO WDSA-MTSE
      **        PERFORM TRAIT-PROMO THRU F-TRAIT-PROMO
           ELSE    
              PERFORM INIT-PROMO THRU F-INIT-PROMO
           END-IF                 

           IF WPRO-MTSE = ZERO 
           AND (ITC-MART = 1 OR 2) 
      **     AND ARQ-MGRC NOT = 2
                PERFORM LECT-TARCOL THRU F-LECT-TARCOL
           END-IF

           MOVE 0 TO WV-PRO
      * promotion en % remise
           IF WPRO-MTSE NOT = 0 AND WISP-MPRO = 3 
                MOVE 1 TO WV-PRO
                IF WREH-MPRO NOT < W-REM
                     MOVE WREH-MPRO TO W-REM
                ELSE 
                     MOVE 0 TO WV-PRO
                END-IF
           END-IF
      * promotion en prix net
           IF WPRO-MTSE NOT = 0 AND WISP-MPRO NOT = 3
                MOVE 1 TO WV-PRO
                IF WCDP-MPRO = 2
                     MOVE W-PUB TO W-PRI-CLI
                ELSE COMPUTE W-PRI-CLI ROUNDED = 
                        W-PUB * (100 - W-REM) / 100
                END-IF          
                IF WPPH-MPRO NOT > W-PRI-CLI
                     MOVE WPPH-MPRO TO W-PVCLI
                ELSE 
                     MOVE 0 TO WV-PRO
                END-IF
           END-IF
           IF WPRO-MTSE NOT = 0 AND WCDP-MPRO = 1
               MOVE 0 TO W-REM W-REC(1) W-REC(2)
                     W-REC(3) W-REC(4)
                     W-REC(5) W-REC(6)
           END-IF
           IF WPRO-MTSE NOT = 0 AND WISP-MPRO = 3
               MOVE 0 TO W-REC(1) W-REC(2)
                         W-REC(3) W-REC(4)
                         W-REC(5) W-REC(6)
           END-IF.

       LECT-TARCOL.
           MOVE 1 TO WQTE-MTSE
      **     PERFORM LECT-WTARCOL THRU F-LECT-WTARCOL.
           MOVE WPRI-MTSE TO W-PVCLI.
       F-LECT-TARCOL.
           EXIT.

      ** VERIF-TSPLIG.
      **     MOVE 1 TO WQTE-MTSE
      **     PERFORM VERIF-WTSPLIG.
      ** LECT-TSPLIG.
      **     MOVE 1 TO WQTE-MTSE
      **     PERFORM LECT-WTSPLIG THRU F-LECT-WTSPLIG.
      **     IF W-TSL NOT = 0 MOVE WPRI-MTSE TO W-PVCLI
      **     END-IF.
      **     IF WMAJ-MTSE = 1 MOVE WPOU-MTSE TO W-REM
      **     END-IF.
      ** F-LECT-TSPLIG.

       INIT-PROMO.
           MOVE COD-MART   TO WART-MTSE
           MOVE DTT-PALM   TO WDSA-MTSE
           MOVE COD-MAGC   TO WAGE-MTSE
      **     Perform TRAIT-PROMO THRU F-TRAIT-PROMO
           .
       F-INIT-PROMO.

       Cal-Stock.
           OPEN INPUT MXARTSA
           PERFORM STAT
           MOVE 0 TO W-EOF-MASA W-STG W-STS
           MOVE COD-MART TO COD-MASA
           START MXARTSA KEY NOT < CLE3-MASA INVALID
                        MOVE 1 TO W-EOF-MASA
           END-START
           PERFORM UNTIL W-EOF-MASA = 1
              READ MXARTSA NEXT END MOVE 1 TO W-EOF-MASA 
              END-READ
              PERFORM STAT
              IF COD-MART NOT = COD-MASA
                 MOVE 1 TO W-EOF-MASA
              END-IF
              IF W-EOF-MASA = 1
              OR STO-MASA = 2
                 EXIT PERFORM CYCLE
              END-IF
              MOVE 0 TO W-STO
              EVALUATE STLA-MPAR
              WHEN 0
010219        WHEN 3
      *                      Stock théorique
                  MOVE QSTM-MASA(1) TO W-STO
              WHEN 1
      *                      Stock dispo
                  SUBTRACT QCC-MASA FROM QSTM-MASA(1) GIVING W-STO
              WHEN 2
      *                      Stock prévisionnel                     
                  COMPUTE W-STO = QSTM-MASA(1) 
                                  - QCC-MASA
                                  + QCF-MASA   
              END-EVALUATE
              ADD W-STO TO W-STS
              IF AGE-MASA = COD-MAGC 
                 ADD W-STO TO W-STG
                 MOVE STC-MASA TO LK-CALPVART-STC
010219
      *          IF STLA-MPAR = 3
      **                    Stock dispo sans commandes contre-marquées
      *             INITIALIZE LK-CALCREV
020419*             MOVE AGE-MASA TO LK-CALCREV-AGE
      *             MOVE COD-MART TO LK-CALCREV-ART
      *             CALL "calcrev.acu" USING ZONE-PALM LK-CALCREV
      *             CANCEL "calcrev.acu"
      *             COMPUTE W-STG 
      *               = W-STG - LK-CALCREV-QCC + LK-CALCREV-QCCM
      *          END-IF
010219
               END-IF
           END-PERFORM
           CLOSE MXARTSA
010219
      *     IF STLA-MPAR = 3
      **                    Stock dispo sans commandes contre-marquées
      *        INITIALIZE LK-CALCREV
      *        MOVE COD-MART TO LK-CALCREV-ART
      *        CALL "calcrev.acu" USING ZONE-PALM LK-CALCREV
      *        CANCEL "calcrev.acu"
      *        COMPUTE W-STS = W-STS - LK-CALCREV-QCC + LK-CALCREV-QCCM
      *     END-IF
010219
           MOVE W-STG TO LK-CALPVART-STG
           MOVE W-STS TO LK-CALPVART-STS.
