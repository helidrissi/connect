       FD  TRI LABEL RECORD STANDARD.
       01  ENR-TRI.
           02 CLE1-TRI.
              04 FIC-TRI       PIC 9.
              04 ART-TRI       PIC X(20).
           02 CLE2-TRI.
              04 REF-TRI       PIC X(21).
           02 CLE3-TRI.
              04 REF2-TRI      PIC X(21).
           02 NPR-TRI          PIC 99.
           02 MAJ-TRI          PIC 9.
      *--- Tables des codes remise / Volvo
       FD  TABREM LABEL RECORD STANDARD.
       01  ENR-TREM      PIC X(200).
      *---  Fichier de TRI/ code remise Volvo
       FD  TRIREM LABEL RECORD STANDARD.
       01  ENR-TRIREM.
           02 CLE1-TRIREM.
              04 COD-TRIREM  PIC X(10).
           02 CRE-TRIREM     PIC X(10).
