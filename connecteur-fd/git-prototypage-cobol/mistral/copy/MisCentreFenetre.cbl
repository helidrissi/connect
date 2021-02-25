      *    Centre une fenêtre secondaire par rapport à une fenêtre principale 
      *    (Bug double écran)

      *    MCF-HANDLE-FP Handle fenêtre principale            (Screen1 par défaut) 
      *    MCF-HANDLE-FS Handle fenêtre secondaire à centrer  (Screen1 par défaut pour les CALL)  

      *    Par défaut ou prend 7 pixels par cellule en largeur et 13 en hauteur, on peut définir sinon :
      *    MCF-PIXLINE-FP pixels par cellule hauteur fenêtre principale
      *    MCF-PIXSIZE-FP                    largeur
      *    MCF-PIXLINE-FS                            fenêtre secondaire
      *    MCF-PIXSIZE-FS

      *    A appeler au début du AfterInitData de la fenêtre secondaire
      *    Il vaut mieux mettre la fenêtre secondaire en VISIBLE 0 pour éviter l'affichage temporaire erroné

      *    Mettre dans Screen1-After-Init-Data des autres programmes appelant des fenêtres
      *       MOVE Screen1-Handle TO HANDLE-PALM 


       MisCentreFenetre.
      *----------------*
           IF MCF-HANDLE-FP = 0 THEN
              MOVE Screen1-Handle TO MCF-Handle-FP
           END-IF

           IF MCF-HANDLE-FS = 0 THEN
              MOVE Screen1-Handle TO MCF-Handle-FS
           END-IF

           IF MCF-PIXSIZE-FP = 0 THEN
              MOVE 7 TO MCF-PIXSIZE-FP 
           END-IF

           IF MCF-PIXSIZE-FS = 0 THEN
              MOVE 7 TO MCF-PIXSIZE-FS 
           END-IF

090719     IF  MCF-Handle-FP <= 9999
090719                   AND <> 0 
090719     AND MCF-Handle-FS <= 9999 
090719                   AND <> 0 THEN
      *       Handles valides (si ZONE-PALM mal initialisé etc...)    
      *        IF MCF-ABSOLU = 1 THEN
      *          Fenêtre indépendante
                 INQUIRE MCF-Handle-FP,
                    SCREEN COLUMN IN MCF-COLUMN-FP
                    SIZE   IN MCF-SIZE-FP
230919       COMPUTE MCF-COLMID-FP = MCF-COLUMN-FP 
                                   + MCF-SIZE-FP * MCF-PIXSIZE-FP/ 2

230919       IF MCF-COLMID-FP >= PHYSICAL-SCREEN-WIDTH THEN
      *          Ne repositionne que si le milieu de la fenêtre principale dépasse sur le deuxième écran
                 INQUIRE MCF-HANDLE-FS
                    SCREEN COLUMN IN MCF-COLUMN-FS
                    SCREEN LINE   IN MCF-LINE-FS  | gardé pour pb erreur compilation ci-dessous
                    SIZE   IN MCF-SIZE-FS
      *          Positionnement absolu
                 IF MCF-COLUMN-FP <> MCF-COLUMN-FS THEN
                    COMPUTE MCF-COLUMN-FS = MCF-COLUMN-FP 
                          + MCF-SIZE-FP * MCF-PIXSIZE-FP / 2
                          - MCF-SIZE-FS * MCF-PIXSIZE-FS / 2

                    IF MCF-COLUMN-FS < 1 THEN
                       MOVE 1 TO MCF-COLUMN-FS
                    END-IF

                 END-IF
      
                 MODIFY MCF-HANDLE-FS
                    SCREEN COLUMN MCF-COLUMN-FS
                    SCREEN LINE   MCF-LINE-FS    | impossible de compiler si SCREEN COLUMN sans SCREEN LINE
                    VISIBLE 1
060919           CALL "C$CALLEDBY" USING TMP-FILE-PROCESS1 
                 MOVE ZERO TO COBCAP-RESTE
                 INSPECT TMP-FILE-PROCESS1 TALLYING COBCAP-RESTE 
                      FOR ALL "acv-e.acu"  | A voir avec JMD: en acv pour éviter que la fenêtre ne passe derrière !!
060919           IF COBCAP-RESTE = 0
050819              CALL "C$SLEEP" USING 0,1 | la fenêtre ne se positionnait pas dans IMPRIME
                 END-IF
      *        ELSE
      **          Positionnement relatif
      *           INQUIRE MCF-Handle-FP,
      *              COLUMN IN MCF-COLUMN-FP
      *              SIZE   IN MCF-SIZE-FP
      *           INQUIRE MCF-HANDLE-FS
      *              COLUMN IN MCF-COLUMN-FS,
      *              SIZE   IN MCF-SIZE-FS
      *
      *           IF MCF-COLUMN-FP <> MCF-COLUMN-FS THEN
      *
      *              IF MCF-SIZE-FP = MCF-SIZE-FS THEN
      *                 MOVE MCF-COLUMN-FP TO MCF-COLUMN-FS
      *              ELSE
      *
      *                 IF MCF-COLUMN-FS = 1 THEN
      *                    MOVE MCF-COLUMN-FP TO MCF-COLUMN-FS
      *                 ELSE
      *                    COMPUTE MCF-COLUMN-FS = MCF-COLUMN-FP +
      *                      ( (   MCF-SIZE-FP * MCF-PIXSIZE-FP
      *                          - MCF-SIZE-FS * MCF-PIXSIZE-FS ) 
      *                      / 2 / MCF-PIXSIZE-FP)
      *                 END-IF
      *
      *              END-IF
      *
      *           END-IF
      *
      *           MODIFY MCF-HANDLE-FS,
      *              COLUMN MCF-COLUMN-FS
      *              VISIBLE 1
070819*           CALL "C$SLEEP" USING 0,1 | la fenêtre ne se positionnait pas dans ProgressBar
090719*
230919        ELSE
230919           MODIFY MCF-HANDLE-FS,
230919              VISIBLE 1
              END-IF

           ELSE
              MODIFY MCF-HANDLE-FS,
                 VISIBLE 1
           END-IF
090719
           MOVE 0 TO MCF-HANDLE-FP
                     MCF-HANDLE-FS
                     MCF-ABSOLU
                     MCF-PIXLINE-FP
                     MCF-PIXLINE-FS
                     MCF-PIXSIZE-FP
                     MCF-PIXSIZE-FS
           .

      *    Appeler dans Screen1-AfterInitData pour centrer Screen1
      *    Fenêtre Screen1 Independent
       MisCentreFenetreScreen1I.
      *------------------------*
           PERFORM MisCentreFenetreScreen1
           .

       MisCentreFenetreScreen1.
      *-----------------------*
           IF HANDLE-PALM <> 0 
                      AND < 10000 THEN    
              MOVE HANDLE-PALM TO MCF-HANDLE-FP
              MOVE 1 TO MCF-ABSOLU
              PERFORM MisCentreFenetre
           ELSE
              MODIFY Screen1-Handle,
                 VISIBLE 1
           END-IF
           MOVE Screen1-Handle TO HANDLE-PALM
           .

      *    Appeler dans Screen1-AfterInitData pour centrer Screen1 en 10x10
       MisCentreFenetreScreen10.
      *------------------------*
           MOVE 10 TO MCF-PIXSIZE-FS
                      MCF-PIXLINE-FS
           PERFORM  MisCentreFenetreScreen1
           .

      *    Appeler dans Screen1-AfterInitData pour centrer Screen1 sur écran principal en 10x10
       MisCentreFenetreScreen10FP.
      *--------------------------*
           MOVE 10 TO MCF-PIXSIZE-FP
                      MCF-PIXLINE-FP
           PERFORM  MisCentreFenetreScreen1
           .

      *    Appeler dans Screen1-AfterInitData pour centrer Screen1
      *    Fenêtre Screen1 Floating
       MisCentreFenetreScreen1F.
      *------------------------*
           IF HANDLE-PALM <> 0 
                      AND < 10000 THEN    
              MOVE HANDLE-PALM TO MCF-HANDLE-FP
              PERFORM MisCentreFenetre
           ELSE
              MODIFY Screen1-Handle,
                 VISIBLE 1
           END-IF
           MOVE Screen1-Handle TO HANDLE-PALM
           .

      *    Appeler dans Screen1-AfterInitData pour centrer Screen1 en 10x10
      *    Fenêtre Screen1 Floating
       MisCentreFenetreScreen1F10.
      *--------------------------*
           MOVE 10 TO MCF-PIXSIZE-FS
                      MCF-PIXLINE-FS
           PERFORM MisCentreFenetreScreen1F
           .

       MisCentreFenetre10.
      *------------------*
           MOVE 10 TO MCF-PIXSIZE-FS
                      MCF-PIXLINE-FS
           PERFORM MisCentreFenetre
           .

       MisCentreFenetre10FP.
      *--------------------*
           MOVE 10 TO MCF-PIXSIZE-FP
                      MCF-PIXLINE-FP
           PERFORM MisCentreFenetre
           .

