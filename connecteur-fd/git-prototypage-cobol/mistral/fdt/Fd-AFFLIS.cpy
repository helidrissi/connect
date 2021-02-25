       SD  LISTE-SORT.
       01  ENR-LST-SORT.
           02 CLE1-LST-SORT.
               03 ORD-LST-SORT          PIC  9(6).
           02 COD-LST-SORT          PIC  X(6).
           02 COD-R-LST-SORT REDEFINES COD-LST-SORT.
               03 CODN-LST-SORT         PIC  9(6).
           02 COB-LST-SORT          PIC  X(6).
           02 LIB-LST-SORT          PIC  X(50).
           02 CO8-LST-SORT          PIC  X(8).
           02 CO8N-LST-SORT REDEFINES CO8-LST-SORT  PIC  9(8).
           02 LIB2-LST-SORT         PIC  X(15).
           02 FILLER               PIC  X(27).
       FD  LISTE-TRIS    LABEL RECORD  STANDARD.
       01  ENR-LST-TRIS PIC X(150).

