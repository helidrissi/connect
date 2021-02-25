       01 ScreenOccupe.
           03 Screen1-Bt-1, Bitmap, 
              COL 1,00, LINE 1,00, LINES 102, SIZE 136, 
              BITMAP-HANDLE OCCUPEX00-JPG, BITMAP-NUMBER 60, 
              BITMAP-START 1, BITMAP-End 60, BITMAP-TIMER 9, ID IS 1.
           03 ScreenOccupe-La-Fic, Label, 
              COL 1,00, LINE 9,23, LINES 1,00 CELLS, SIZE 19,43 CELLS, 
              COLOR IS 5, FONT IS Small-Font, ID IS 2, CENTER, 
              LABEL-OFFSET 0, TITLE ScreenOccupe-Fic, TRANSPARENT.
           03 ScreenOccupe-La-Cle, Label, 
              COL 1,00, LINE 10,62, LINES 1,00 CELLS, SIZE 19,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 4,
              LABEL-OFFSET 0, TITLE ScreenOccupe-Cle, TRANSPARENT.
           03 ScreenOccupe-La-Nom, Label, 
              COL 1,00, LINE 12,01, LINES 1,00 CELLS, SIZE 19,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 4,
              LABEL-OFFSET 0, TITLE ScreenOccupe-Nom, TRANSPARENT.
           03 ScreenOccupe-La-PROC, Label, 
              COL 1,00, LINE 13,4, LINES 2,00 CELLS, SIZE 19,43 CELLS, 
              COLOR IS 2, FONT IS Small-Font, ID IS 4,
              LABEL-OFFSET 0, TITLE ScreenOccupe-Proc, TRANSPARENT.
      *     03 ScreenOccupe-Pb-1, Push-Button, 
      *        COL 18,14, LINE 9,08, LINES 1,15 CELLS, SIZE 2,29 CELLS, 
      *        ID IS 3, VISIBLE 0.
