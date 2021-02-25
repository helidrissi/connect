       TRAIT-COBCAP.
      *    CALL "../../mistral/o/accnumsoc.acu" USING LK-NUMSOC
           IF NSO-PALM >= 1 AND <= 9999 MOVE NSO-PALM TO LK-NUMSOC
           ELSE                         MOVE        1 TO LK-NUMSOC.
           ACCEPT LK-OS-TYPE FROM ENVIRONMENT "OSTYPE".
           ACCEPT MX-DIR FROM ENVIRONMENT "FICMX".
           ACCEPT CX-DIR FROM ENVIRONMENT "FICCX".
           ACCEPT RX-DIR FROM ENVIRONMENT "FICRX".
           ACCEPT G-DIR FROM ENVIRONMENT "FIC".
           IF ENV-PALM NOT = SPACE
              MOVE ENV-PALM TO G-DIR
              MOVE SPACE TO MX-DIR
              STRING ENV-PALM DELIMITED BY " " 
                     "/mx" DELIMITED BY SIZE INTO MX-DIR
              MOVE SPACE TO CX-DIR
              STRING ENV-PALM DELIMITED BY " " 
                     "/cx" DELIMITED BY SIZE INTO CX-DIR
              MOVE SPACE TO RX-DIR
              STRING ENV-PALM DELIMITED BY " " 
                     "/rx" DELIMITED BY SIZE INTO RX-DIR
           END-IF
           STRING MX-DIR DELIMITED BY "  " 
                  LK-NUMSOC DELIMITED BY SIZE INTO MX-DIR
           STRING CX-DIR DELIMITED BY "  " 
                  LK-NUMSOC DELIMITED BY SIZE INTO CX-DIR
           STRING RX-DIR DELIMITED BY "  " 
                  LK-NUMSOC DELIMITED BY SIZE INTO RX-DIR
           OPEN INPUT COBCAP
           PERFORM TEST-STATUS THRU FIN-TEST-STATUS
           IF IND-STAT = 2 PERFORM Acu-show-Msg
                           GO ACU-EXIT-RTN.
       LECT-COBCAP.
           READ COBCAP NEXT  END GO FLECT-COBCAP.
           PERFORM TEST-STATUS THRU FIN-TEST-STATUS     
           IF IND-STAT = 2 
                 PERFORM Acu-show-Msg
                 GO ACU-EXIT-RTN.
           PERFORM BCL-COBCAP THRU F-BCL-COBCAP
             VARYING ZC-IND-COB FROM 1 BY 1
             UNTIL ZON1-COB(ZC-IND-COB) = ")" OR " ".
      *    IF LOG-COBCAPX = "MX" MOVE ENR-COB TO ENRMX-COB
      *    ELSE IF LOG-COBCAPX = "CX" MOVE ENR-COB TO ENRCX-COB
      *    ELSE IF LOG-COBCAPX = "PM" MOVE ENR-COB TO ENRPM-COB
      *    ELSE IF LOG-COBCAPX = "IX" MOVE ENR-COB TO ENRIX-COB
      *    ELSE IF LOG-COBCAPX = "EX" MOVE ENR-COB TO ENREX-COB.
      *    GO LECT-COBCAP.
       FLECT-COBCAP.
           CLOSE COBCAP.
           IF ENR-COBF = SPACE
                DISPLAY MESSAGE "Erreur Lecture COBCAP " 
                STOP RUN.
           GO F-TRAIT-COBCAP.
       BCL-COBCAP.
           IF ZON1-COB(ZC-IND-COB) NOT = "$" GO F-BCL-COBCAP.
           MULTIPLY ZC-IND-COB BY 40 GIVING ZC-DEB-COB
           SUBTRACT 39 FROM ZC-DEB-COB.          
           MOVE SPACE TO ZC-ZON-1 ZC-ZON-2 ZC-ZON-COB
           UNSTRING ENR-COBF DELIMITED BY ALL"/" INTO ZC-ZON-1
                    WITH POINTER ZC-DEB-COB
           UNSTRING ENR-COBF DELIMITED BY ALL" " INTO ZC-ZON-2
                    WITH POINTER ZC-DEB-COB
           IF ZC-ZON-1 = "$MX" STRING MX-DIR DELIMITED BY " "
                       "/" DELIMITED BY SIZE
                      ZC-ZON-2 DELIMITED BY SIZE INTO ZC-ZON-COB.
           IF ZC-ZON-1 = "$CX" STRING CX-DIR DELIMITED BY " "
                       "/" DELIMITED BY SIZE
                      ZC-ZON-2 DELIMITED BY SIZE INTO ZC-ZON-COB.
           IF ZC-ZON-1 = "$RX" STRING RX-DIR DELIMITED BY " "
                       "/" DELIMITED BY SIZE
                      ZC-ZON-2 DELIMITED BY SIZE INTO ZC-ZON-COB.
           IF ZC-ZON-1 = "$G" STRING G-DIR DELIMITED BY " "
                       "/" DELIMITED BY SIZE
                      ZC-ZON-2 DELIMITED BY SIZE INTO ZC-ZON-COB.
           MOVE ZC-ZON-COB TO ZON-COB(ZC-IND-COB).
       F-BCL-COBCAP.
           EXIT.
      **** LK-NUMSOC2 = Nouveau N° de Sté
       CHGSOCMX-COBCAP.
           IF LK-NUMSOCMX = 0 MOVE LK-NUMSOC TO LK-NUMSOCMX.
           MOVE "mx"        TO LK-ASS-LSOC1
           MOVE LK-NUMSOCMX TO LK-ASS-NSOC1
           MOVE "mx"        TO LK-ASS-LSOC2
           MOVE LK-NUMSOC2  TO LK-ASS-NSOC2
           IF LK-NUMSOC2 NOT= 0 AND LK-NUMSOC2 NOT= LK-ASS-NSOC1
              INSPECT ENR-COBF REPLACING ALL LK-ASS-SOC1
                                         BY LK-ASS-SOC2
              MOVE LK-NUMSOC2 TO LK-NUMSOCMX.
       CHGSOCCX-COBCAP.
           IF LK-NUMSOCCX = 0 MOVE LK-NUMSOC TO LK-NUMSOCCX.
           MOVE "cx"        TO LK-ASS-LSOC1
           MOVE LK-NUMSOCCX TO LK-ASS-NSOC1
           MOVE "cx"        TO LK-ASS-LSOC2
           MOVE LK-NUMSOC2  TO LK-ASS-NSOC2
           IF LK-NUMSOC2 NOT= 0 AND LK-NUMSOC2 NOT= LK-ASS-NSOC1
              INSPECT ENR-COBF REPLACING ALL LK-ASS-SOC1
                                         BY LK-ASS-SOC2
              MOVE LK-NUMSOC2 TO LK-NUMSOCCX.
       CONVDAT-SAMJ-JMSA.
           MOVE S-SAMJ TO S-JMSA
           MOVE A-SAMJ TO A-JMSA A-JMA
           MOVE M-SAMJ TO M-JMSA M-JMA
           MOVE J-SAMJ TO J-JMSA J-JMA.
       CONVDAT-JMSA-SAMJ.
           MOVE J-JMSA TO J-SAMJ
           MOVE M-JMSA TO M-SAMJ
           MOVE S-JMSA TO S-SAMJ
           MOVE A-JMSA TO A-SAMJ.
       F-TRAIT-COBCAP.
           EXIT.
       F1-TRAIT-COBCAP.
