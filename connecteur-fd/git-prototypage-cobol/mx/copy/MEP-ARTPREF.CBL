      * confection référence préférentielle Fenwick
      *    CO2-ARTPREF PIC X(3) VALUE "LFR"
       MEP-ARTPREF.
           MOVE 0 TO EXI-ARTPREF
           MOVE SPACE TO COD-ARTPREF
           | l'article a une équivalence préférentielle
           IF MXFWK-PALM = 1 AND CO2-ARTPREF <> CO2-MART(1:LON-ARTPREF)
              MOVE SPACE TO ENR-MART2
              MOVE CO1-MART TO CO1-MART2
              STRING CO2-ARTPREF CO2-MART DELIMITED BY SIZE
                 INTO CO2-MART2  
              READ MXART2 INVALID MOVE 1 TO CANN-MART2
              END-READ
              PERFORM STAT
              IF CANN-MART2 = 0 AND ILV-MART2 NOT = 1
                 MOVE 1 TO EXI-ARTPREF
                 MOVE COD-MART2 TO COD-ARTPREF
              END-IF
           END-IF
           | c'est un article préférentiel
           IF MXFWK-PALM = 1 AND CO2-ARTPREF = CO2-MART(1:LON-ARTPREF)
              MOVE SPACE TO ENR-MART2
              MOVE CO1-MART TO CO1-MART2
              MOVE CO2-MART(4:) TO CO2-MART2
              READ MXART2 INVALID MOVE 1 TO CANN-MART2
              END-READ
              PERFORM STAT
              IF CANN-MART2 = 0 AND ILV-MART2 NOT = 1
                 MOVE 2 TO EXI-ARTPREF
                 MOVE COD-MART2 TO COD-ARTPREF
              END-IF
           END-IF.
