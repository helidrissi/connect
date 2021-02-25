      ******************************************************************
      *    AFFICHAGE D'UNE BARRE DE PROGRESSION EN THREAD PENDANT  
      *    UN TRAITEMENT DE RECHERCHE OU DE MISE A JOUR
      ******************************************************************

      *    Insérer dans le source, en screen section: 
      *       COPY "W:/mistral/copy/Mis-ProgressBar-screen.cpy"
      *    Pour un traitement autorisant le bouton annuler,
      *    renseigner: W-PBThread-Annul à 1
      *    Pour un traitement sans annulation possible, renseigner éventuellement
      *    W-PBThread-Title avec un message d'attente

      *    Insérer en working (link copy file):
      *       mistral/copy/Mis-Progressbar.wrk

      *    Insérer ce copy avec un replacing pour indiquer:
      *       le nom du 1er paragraphe de traitement 
      *       le nom du dernier paragraphe du traitement 
      *       Ex: TRAIT THRU F-TRAIT 
      *       le handle du screen actif (Ex: screen1-handle)
      *       COPY "W:/mistral/copy/Mis-ProgressBar.cbl"
      *            REPLACING ==PBTRAIT== BY ==TRAIT==,
      *                      ==F-PBTRAIT== BY ==F-TRAIT==,
      *                      ==PBSCREEN-Handle== BY ==SCREEN1-handle==.

      *    A la fin du paragraphe de traitement de votre programme,
      *    (ex: à la fin de F-TRAIT)
      *    ajouter:   MOVE 1 TO W-PBThread-End

      *     COPY RESOURCE "PROGBAR24.JPG".
      *     CALL "W$BITMAP" USING WBITMAP-LOAD "PROGBAR24.JPG", GIVING 
      *        PROGBAR24-JPG

           MOVE 0 TO W-PBThread-End 
           MODIFY PBSCREEN-Handle, enabled false
           DISPLAY Floating GRAPHICAL WINDOW
                 LINES 7, SIZE 55,00, CELL HEIGHT 13, CELL WIDTH 7, 
                 COLOR IS 131329, LABEL-OFFSET 0, 
220515*           LINK TO THREAD, MODELESS, NO SCROLL, USER-GRAY, 
                 LINK TO THREAD, NO SCROLL, USER-GRAY,  
                 USER-WHITE, NO WRAP, 
                 HANDLE IS ScreenBarre-Handle    
           DISPLAY ScreenBarre UPON ScreenBarre-Handle.
040419     
130519*     IF WCF-HANDLE-FP <> 0 THEN
      *        MOVE ScreenBarre-Handle TO WCF-HANDLE-FS
      *        PERFORM CentreFenetre
090719     IF MCF-HANDLE-FP <> 0 THEN
090719        MOVE ScreenBarre-Handle TO MCF-HANDLE-FS
090719        PERFORM MisCentreFenetre
130519     END-IF
040419     
           IF W-PBThread-Annul = 2 
                MODIFY ScreenBarre-Pb-Annuler, VISIBLE TRUE, 
                       TITLE "Traitement en cours"  
                MODIFY ScreenBarre-La-Annuler0, VISIBLE FALSE
           ELSE
                IF W-PBThread-Annul = 1 
                     MODIFY ScreenBarre-Pb-Annuler, VISIBLE TRUE
                     MODIFY ScreenBarre-La-Annuler0, VISIBLE FALSE
                ELSE
                     MODIFY ScreenBarre-Pb-Annuler, VISIBLE FALSE
                     MODIFY ScreenBarre-La-Annuler0, VISIBLE TRUE
                END-IF
           END-IF

           MOVE 1 TO WNumBarre
           MOVE 0 TO WPCBarre

      *  Lancement du thread "accept" sur annulation requête 
      *  (Ne doit être lancé que si annulation autorisée car il ralentit les traitements)
           IF W-PBThread-Annul = 1 OR 2   
              PERFORM THREAD, HANDLE IN W-PBThread-Accept-Thread,   
                 UNTIL W-PBThread-End = 1,     
                 ACCEPT ScreenBarre ON EXCEPTION
      *              IF KEY-STATUS NOT = 97 
                    IF KEY-STATUS = 9800 AND W-PBThread-Annul = 1 
                       MOVE 1 TO W-PBThread-End
                    END-IF
                 END-ACCEPT
              END-PERFORM
           END-IF      
          
           PERFORM PBTRAIT THRU F-PBTRAIT

           STOP THREAD W-PBThread-Accept-Thread
           DESTROY ScreenBarre-Handle
           CALL "W$BITMAP" USING WBITMAP-DESTROY, PROGBAR24-JPG
           MODIFY PBScreen-Handle, enabled true.

