      ******************************************************************
      *    AFFICHAGE MESSAGE ENRGISTREMENT OCCUPE EN THREAD PENDANT  
      *    UN TRAITEMENT DE RECHERCHE OU DE MISE A JOUR
      ******************************************************************

      *    Insérer dans le source, en screen section: 
      *       COPY "W:/mistral/copy/Mis-EnregOccupe-screen.cpy"

      *    Insérer en working (link copy file):
      *       mistral/copy/Mis-EnregOccupe.wrk

      *    Insérer ce copy et renseigner avant:
      *          le nom du fichier occupé
      *          la clé du fichier 
      *        Ex pour: STOCK ARTICLE n°  ABI 145236

      *     COPY "W:/mistral/copy/Mis-EnregOccupe.cbl"
      *       REPLACING ==Screen1-handle== by ==ScreenXXX-Handle==
      *       (le replacing n'est à indiquer que si l'écran n'est pas
      *        screen1)

      *
      * LECT-MXARTSA.
      *     READ MXARTSA LOCK INVALID ...
      *     END-READ
      *     PERFORM STAT
      *     MOVE "STOCK ARTICLE" TO ScreenOccupe-Fic
      *     MOVE "00 ABI 145236" TO ScreenOccupe-Cle
      *     COPY "W:/mistral/copy/Mis-EnregOccupe.cbl"
      *     IF IND-STAT = 1 GO LECT-MXARTSA
      *     END-IF
      *
           IF IND-STAT = 1 AND ScreenOccupe-EnCours = 0
              inspect ScreenOccupe-Cle replacing all space by "."
              inspect ScreenOccupe-Cle replacing trailing "." by space
      *       recherche utilisateur responsable du blocage
              INITIALIZE LK-USERPROC
              MOVE PROCESS-ID TO LK-USERPROC-PROCESS-ID
              CALL  "../../mistral/o/userproc.acu" 
                 USING ZONE-PALM, LK-USERPROC
              CANCEL "../../mistral/o/userproc.acu"
              MOVE LK-USERPROC-NOM TO ScreenOccupe-Nom
              MOVE SPACE TO ScreenOccupe-Proc
              STRING LK-USERPROC-MOD
                     "/ " LK-USERPROC-LIB 
                INTO ScreenOccupe-Proc
              MODIFY Screen1-Handle, ENABLED 0
              COPY RESOURCE "W:\mistral\resource\OCCUPEX01.JPG".
              CALL "W$BITMAP" USING WBITMAP-LOAD "OCCUPEX01.JPG", GIVING 
                OCCUPEX00-JPG

              MOVE 0 TO ScreenOccupe-End 
              DISPLAY Floating GRAPHICAL WINDOW
                 LINES 14,43, SIZE 19,43, CELL HEIGHT 13, CELL WIDTH 7, 
                 COLOR IS 65793, LABEL-OFFSET 0, LINK TO THREAD, 
                 MODELESS, NO SCROLL, 
                 TITLE "Enregistrement occupé", TITLE-BAR, USER-GRAY, 
                 USER-WHITE, NO WRAP, 
                 HANDLE IS ScreenOccupe-Handle
              DISPLAY ScreenOccupe UPON ScreenOccupe-Handle
              MOVE 1 TO ScreenOccupe-EnCours
              PERFORM THREAD, HANDLE IN ScreenOccupe-Accept-Thread,   
                 |UNTIL Exit-Pushed OR ScreenOccupe-End = 1,     
                 ACCEPT ScreenOccupe 
                  ON EXCEPTION IF KEY-STATUS NOT = 97 
                                  MOVE 1 TO ScreenOccupe-End
                               END-IF
                 END-ACCEPT
              END-PERFORM 
           END-IF
           IF IND-STAT NOT = 1 AND ScreenOccupe-EnCours = 1 THEN
              stop thread ScreenOccupe-Accept-Thread 
              DESTROY ScreenOccupe-Handle
              MOVE 0 TO ScreenOccupe-EnCours
              MODIFY Screen1-Handle, ENABLED 1
           END-IF   

