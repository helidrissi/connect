      * Transforme un numéro de téléphone du format d'affichage vers
      * le format de stockage, et corrige l'affichage.
      * Appeler la copy avec REPLACING :
      *      ==CPYPOS-PAYS== BY ==Variable-Code-Pays==
      *      ==CPYPOS-ECR== BY ==Variable-Numéro-Affiché==
      *      ==CPYPOS-FIC== BY ==Variable-Numéro-Stocké==
      *      ==CPYPOS-VIL== BY ==Variable-Ville==
 
310716*     MOVE SPACE TO LK-CDP-L-VIL2  | pour faire le mep-commune le cas échéant
      * Initialise le traitement...
           MOVE CPYPOS-PAYS TO Ef-Pos-Pays
           IF  Ef-Pos-Pays = SPACE MOVE ZERO TO Ef-Pos-Pays
           END-IF
           COPY "W:/mistral/copy/Ef-Pos-Init.cbl".
           MOVE CPYPOS-FIC TO Ef-Pos-Sv-Fic 

           IF Ef-Pos-Numeric = "A" THEN
      * Format non reconnu : tranférer tel quel...
               MOVE CPYPOS-ECR TO CPYPOS-FIC
           ELSE
      * Formate la zone à sauvegarder...
               MOVE SPACES TO CPYPOS-FIC
               MOVE 8 TO Ef-Pos-IdxF Ef-Pos-Deb
               SUBTRACT Ef-Pos-LgBrt FROM Ef-Pos-Deb
               PERFORM VARYING Ef-Pos-IdxE FROM 8 BY -1
                         UNTIL (Ef-Pos-IdxE = 0)
                            OR (Ef-Pos-IdxF <= Ef-Pos-Deb)
                   IF CPYPOS-ECR(Ef-Pos-IdxE:1) IS NUMERIC THEN
                       MOVE CPYPOS-ECR(Ef-Pos-IdxE:1) 
                         TO CPYPOS-FIC(Ef-Pos-IdxF:1)
                       SUBTRACT 1 FROM Ef-Pos-IdxF
                   END-IF                   
               END-PERFORM
               PERFORM UNTIL Ef-Pos-IdxF <= Ef-Pos-Deb
                   MOVE "0" TO CPYPOS-FIC(Ef-Pos-IdxF:1)
                   SUBTRACT 1 FROM Ef-Pos-IdxF
               END-PERFORM
      * Retraduit la zone pour corriger l'affichage...
               MOVE CPYPOS-FIC TO Ef-Pos-ValF
               MOVE CPYPOS-ECR TO Ef-Pos-ValE
               COPY "W:/mistral/copy/Ef-Pos-DoFic2Ecr.cbl".
               MOVE Ef-Pos-ValF TO CPYPOS-FIC
               MOVE Ef-Pos-ValE TO CPYPOS-ECR
           END-IF

      *  ATTENTION!!!
      *    On ne fait pas de recherche de la ville correspondante
      *    si l'utilisateur n'a pas modifié le code postal

      * Recherche le code postal dans le fichier...
      *     IF Ef-Pos-Ind NOT = 1 AND CPYPOS-FIC NOT = Ef-Pos-Sv-Fic
      *         MOVE ZERO TO Ef-Pos-Nbr
      *         MOVE SPACE TO Ef-Pos-Vil
      *         OPEN INPUT CODPOS
      *         PERFORM STAT
      *         MOVE CISO-PAY TO CISO-CDP
      *         MOVE CPYPOS-FIC TO POS-CDP
      *         MOVE 0 TO W-EOF
      *         START CODPOS KEY NOT < CLE3-CDP INVALID MOVE 1 TO W-EOF
      *         END-START
      *         IF W-EOF = 0
      *            READ CODPOS NEXT END MOVE 1 TO W-EOF
      *            END-READ
      *            PERFORM STAT
      *         END-IF
      *         PERFORM UNTIL W-EOF = 1
      *                    OR CISO-CDP NOT = CISO-PAY
      *                    OR POS-CDP NOT = CPYPOS-FIC
      *            ADD 1 TO Ef-Pos-Nbr
      *            MOVE VIL-CDP TO Ef-Pos-Vil
      *            READ CODPOS NEXT END MOVE 1 TO W-EOF
      *            END-READ
      *            PERFORM STAT
      *         END-PERFORM
      *         CLOSE CODPOS
      *         IF Ef-Pos-Nbr = 1
      *            MOVE Ef-Pos-Vil TO CPYPOS-VIL
      *         END-IF
      *         IF Ef-Pos-Nbr > 1
      *            MOVE SPACE TO LK-CDP-L
      *            MOVE CPYPOS-PAYS TO LK-CDP-L-PAY
      *            MOVE CPYPOS-FIC TO LK-CDP-L-POS
      *            MOVE "S" TO LK-CDP-L-CHO 
      *            CALL "cdp-l.acu" 
      *                 USING ZONE-PALM LK-CDP-L
      *            CANCEL "cdp-l.acu"
      *            MOVE " " TO LK-CDP-L-CHO
      *            IF LK-CDP-L-VIL NOT = SPACE 
      *               MOVE LK-CDP-L-VIL TO CPYPOS-VIL
      *            END-IF
      *         END-IF
      *     END-IF
