      *    Version modifiée pour multi écrans

      *     PERFORM Curseur-Sablier
           modify Screen1-Handle, enabled 0
           
      *     COPY RESOURCE "OCCUPEX02.JPG".
      *     CALL "W$BITMAP" USING WBITMAP-LOAD "OCCUPEX02.JPG", GIVING 
      *          PATIENTERX00-JPG

           MOVE 0 TO ScreenPatienter-End
           DISPLAY Floating GRAPHICAL WINDOW
                 LINES 10,18, SIZE 17,43, CELL HEIGHT 13, CELL WIDTH 7, 
      *           COLOR IS 65793, LABEL-OFFSET 0, LINK TO THREAD, 
      *    Modif le 02/05 par NC car sinon erreur memory si on coupe le HIV
                 COLOR IS 65793, LABEL-OFFSET 0, BIND TO THREAD, 
                 MODELESS, NO SCROLL, USER-GRAY,    
                 USER-WHITE, NO WRAP, 
                 HANDLE IS ScreenPatienter-Handle
150319           VISIBLE 0
           DISPLAY ScreenPatienter UPON ScreenPatienter-Handle              
150319     MOVE ScreenPatienter-Handle TO MCF-HANDLE-FS
150319     PERFORM MisCentreFenetre
           IF ScreenPatienter-PB-Visible = 1
              PERFORM THREAD, HANDLE IN ScreenPatienter-Accept-Thread,   
                 ACCEPT ScreenPatienter 
                  ON EXCEPTION IF KEY-STATUS NOT = 97 AND NOT = 99
                                  MOVE 1 TO ScreenPatienter-End
                               END-IF
                 END-ACCEPT
              END-PERFORM 
           END-IF
031213
           IF ScreenPatienter-PB-Visible = 2 
                MODIFY ScreenPatienter-Pb-1, VISIBLE TRUE, 
                     SIZE 0,1 , LINES 0,1
           END-IF
031213
