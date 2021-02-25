       01 ScreenBarre.
           03 ScreenBarr-Bt-1, Bitmap, 
              COL 1,00, LINE 1,00, LINES 48, SIZE 385, 
              BITMAP-HANDLE PROGBAR24-JPG, BITMAP-NUMBER 5, 
              BITMAP-START 1, BITMAP-End 5, BITMAP-TIMER 35, ID IS 1.
           03 ScreenBarre-Pb-Annuler, Push-Button, 
              COL 18,29, LINE 5,77, LINES 1,62 CELLS, SIZE 18,86 CELLS, 
              FONT IS Small-Font, ID IS 2, EXCEPTION-VALUE = 9800
              TITLE "Abandonner la requête".
           03 ScreenBarre-La-Annuler0, Label, 
              COL 1,00, LINE 5,77, LINES 1,62 CELLS, SIZE 80 CELLS, 
              COLOR IS W-PBColorTxt, FONT IS Default-Font, ID IS 3, 
              LABEL-OFFSET 0, VISIBLE 1, CENTER,
              TITLE W-PBThread-Title.

