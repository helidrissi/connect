080408     IF ScreenPatienter-PB-Visible = 1 | Sinon programme part dans les choux...
              stop thread ScreenPatienter-Accept-Thread
080408     END-IF                                        
           modify Screen1-Handle, enabled 1
           DESTROY ScreenPatienter-Handle
           CALL "W$BITMAP" USING WBITMAP-DESTROY, PATIENTERX00-JPG
      *     PERFORM Curseur-Fleche.
