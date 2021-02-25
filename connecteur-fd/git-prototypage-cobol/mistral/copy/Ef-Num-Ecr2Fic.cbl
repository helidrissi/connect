      * Transforme un nombre du format d'affichage vers
      * le format de stockage, et corrige l'affichage.
      * Appeler la copy avec REPLACING :
      *      ==CPYNUM-ECR== BY ==Variable-Num�ro-Affich�==
      *      ==CPYNUM-FIC== BY ==Variable-Num�ro-Stock�==
   
      *    Equivalent FUNCTION NUMVAL

      *    Entr�e : CPYNUM-ECR Cha�ne contenant le chiffre non format�
      *    Sortie : ZC-NUM-SOR Num�rique sign� correspondant

           MOVE 0 TO ZC-NUM-NEG
                     ZC-NUM-DEB
                     ZC-NUM-VIR
                     ZC-NUM-SOR
                     ZC-NUM-LON
                     ZC-NUM-PTS

           INSPECT CPYNUM-ECR TALLYING ZC-NUM-NEG FOR ALL "-"
           IF ZC-NUM-NEG > 1 MOVE 1 TO ZC-NUM-NEG
           END-IF
           IF ZC-NUM-NEG = 1
100915        
              MOVE SPACE TO ZC-NUM-AVT
                            ZC-NUM-APR
              UNSTRING CPYNUM-ECR DELIMITED BY ALL "-"
                  INTO ZC-NUM-AVT
                       ZC-NUM-APR
              IF ZC-NUM-AVT <> SPACE THEN
      *         - � la fin
                 INSPECT CPYNUM-ECR REPLACING ALL "-" BY SPACE
              ELSE
      *         - au d�but 
100915        
                 INSPECT CPYNUM-ECR REPLACING ALL "-" BY "0"
100915        END-IF
           END-IF
021015
           INSPECT CPYNUM-ECR TALLYING ZC-NUM-PTS FOR ALL "."
           INSPECT CPYNUM-ECR TALLYING ZC-NUM-VIR FOR ALL ","

           IF  ZC-NUM-VIR <> 0
           AND ZC-NUM-PTS <> 0 THEN
      *       virgule et point : recherche le dernier des 2
              PERFORM VARYING ZC-NUM-I FROM LENGTH OF CPYNUM-ECR BY -1
                 UNTIL ZC-NUM-I = 0

                 IF CPYNUM-ECR(ZC-NUM-I:1) = "."
                                          OR "," THEN

                    IF CPYNUM-ECR(ZC-NUM-I:1) = "." THEN
      *                . = D�cimale / , = milliers
                       INSPECT CPYNUM-ECR REPLACING ALL "," BY SPACE
                    ELSE
      *                , = D�cimale / . = milliers
                       INSPECT CPYNUM-ECR REPLACING ALL "." BY SPACE
                    END-IF

                    EXIT PERFORM
                 END-IF

              END-PERFORM  
    
131015     ELSE

              IF ZC-NUM-PTS > 1 THEN
      *          Plusieurs points : s�parateur millier
                 INSPECT CPYNUM-ECR REPLACING ALL "." BY SPACE
              END-IF

              IF ZC-NUM-VIR > 1 THEN
      *          Plusieurs virgules : s�parateur millier
                 INSPECT CPYNUM-ECR REPLACING ALL "," BY SPACE
              END-IF

           END-IF

           MOVE 0 TO ZC-NUM-VIR
021015
      *    Enl�ve les blancs interm�diaires des nombres format�s 1 023...
      *    Recherche d�but et fin
           PERFORM VARYING ZC-NUM-I FROM 1 BY 1
              UNTIL ZC-NUM-I > LENGTH OF CPYNUM-ECR

              IF CPYNUM-ECR(ZC-NUM-I:1) <> SPACE THEN 

                 IF ZC-NUM-DEB = 0 THEN
                    MOVE ZC-NUM-I TO ZC-NUM-DEB
241115                               ZC-NUM-LON
                 ELSE
                    MOVE ZC-NUM-I TO ZC-NUM-LON
                 END-IF

              END-IF

           END-PERFORM
      *    Enl�ve les blancs interm�diaires 
021015*    ou caract�res non num�riques ni . ni ,
           PERFORM VARYING ZC-NUM-I FROM ZC-NUM-DEB BY 1
              UNTIL ZC-NUM-I > ZC-NUM-LON

              IF CPYNUM-ECR(ZC-NUM-I:1) = SPACE 
021015        OR (     ( CPYNUM-ECR(ZC-NUM-I:1) < "0"
021015                                       OR > "9" )
021015             AND CPYNUM-ECR(ZC-NUM-I:1) <> "."
021015                                    AND <> "," ) THEN
      *          D�cale d'un caract�re
                 ADD 1 TO ZC-NUM-I GIVING ZC-NUM-VIR
                 MOVE CPYNUM-ECR(ZC-NUM-VIR:) TO CPYNUM-ECR(ZC-NUM-I:)
                 SUBTRACT 1 FROM ZC-NUM-I
                                 ZC-NUM-LON
              END-IF

           END-PERFORM

           MOVE 0 TO ZC-NUM-DEB
                     ZC-NUM-VIR

           PERFORM VARYING ZC-NUM-I FROM 1 BY 1
              UNTIL ZC-NUM-I > LENGTH OF CPYNUM-ECR

              IF CPYNUM-ECR(ZC-NUM-I:) = SPACE THEN  
                 IF ZC-NUM-VIR = 0 THEN
                    SUBTRACT ZC-NUM-DEB FROM ZC-NUM-I
                      GIVING ZC-NUM-LON
                    MOVE CPYNUM-ECR(ZC-NUM-DEB:ZC-NUM-LON)
                      TO ZC-NUM-SOR-E
                 ELSE
                    IF ZC-NUM-VIR > ZC-NUM-DEB THEN
      *                Partie enti�re 
                       SUBTRACT ZC-NUM-DEB FROM ZC-NUM-VIR
                         GIVING ZC-NUM-LON
                       MOVE CPYNUM-ECR(ZC-NUM-DEB:ZC-NUM-LON)
                         TO ZC-NUM-SOR-E
                    END-IF
                    ADD 1 TO ZC-NUM-VIR
                    IF ZC-NUM-I > ZC-NUM-VIR THEN
      *                Partie d�cimale
                       SUBTRACT ZC-NUM-VIR FROM ZC-NUM-I
                         GIVING ZC-NUM-LON
                       MOVE CPYNUM-ECR(ZC-NUM-VIR:ZC-NUM-LON)
                         TO ZC-NUM-SOR-D(1:ZC-NUM-LON)
                    END-IF
                 END-IF
                 EXIT PERFORM
              END-IF
              IF CPYNUM-ECR(ZC-NUM-I:1) = "-" THEN
                 MOVE 1 TO ZC-NUM-NEG
              ELSE
                 IF  CPYNUM-ECR(ZC-NUM-I:1) <> SPACE
                                        AND <> "0"
                 AND ZC-NUM-DEB = 0 THEN
                    MOVE ZC-NUM-I TO ZC-NUM-DEB
                 END-IF
              END-IF
              IF CPYNUM-ECR(ZC-NUM-I:1) = "," OR "."
                 MOVE ZC-NUM-I TO ZC-NUM-VIR
              END-IF
           END-PERFORM
           IF ZC-NUM-NEG = 1 THEN  
              COMPUTE ZC-NUM-SOR = - ZC-NUM-SOR
           END-IF   
           MOVE ZC-NUM-SOR TO CPYNUM-FIC ZC-NUM-AFF    
           
           MOVE 0 TO ZC-NUM-DEB
           MOVE SPACE TO CPYNUM-ECR
           PERFORM VARYING ZC-NUM-I FROM 1 BY 1
              UNTIL ZC-NUM-I > LENGTH OF ZC-NUM-AFF
              IF ZC-NUM-AFF(ZC-NUM-I:1) NOT = SPACE 
                 ADD 1 TO ZC-NUM-DEB
                 MOVE ZC-NUM-AFF(ZC-NUM-I:1)
                      TO CPYNUM-ECR(ZC-NUM-DEB:1)
              END-IF
           END-PERFORM

