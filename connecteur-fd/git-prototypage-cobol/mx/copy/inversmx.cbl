      ******************************************************************
      *    INVERSEUR MONNAIE INTERNE <-> DEVISE / DLRIX                *
      *    Le fichier PARAM doit être lu                               *
      ******************************************************************

      ******************************************************************
      *    Inversion Montant en Devise autre -> monnaie Interne        *
      ******************************************************************
       INVERSMX-D-I.
           IF (DEV-MPAR = "EUR" OR SPACE)
                COMPUTE WCE-MCO ROUNDED = WCE-MAC / WCE-CRS
           ELSE COMPUTE WCE-MCO ROUNDED = WCE-MAC * WCE-CRS
           END-IF.
      ******************************************************************
      *    Inversion Montant monnaie Interne -> Devise autre           *
      ******************************************************************
       INVERSMX-I-D.
           IF (DEV-MPAR = "EUR" OR SPACE)
                COMPUTE WCE-MCO ROUNDED = WCE-MAC * WCE-CRS
           ELSE COMPUTE WCE-MCO ROUNDED = WCE-MAC / WCE-CRS
           END-IF.
      ******************************************************************
