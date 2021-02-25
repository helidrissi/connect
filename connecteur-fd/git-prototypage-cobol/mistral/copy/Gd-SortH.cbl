      *    Idem Gd-Sort mais avec déplacement des valeurs HIDDEN-DATA 
      *                        et tri sur les valeurs HIDDEN-DATA

      *    Appel un paragraphe CPYSRT-PROC qui déplace les valeurs HIDDEN
      *    Indiquer si la colonne de tri est trié sur sa valeur HIDDEN avec Gd-Sort-KeyHidden = 1

      * Tri le contenu d'une grille suivant l'une de ses colonnes.
      * Appeler la copy avec REPLACING :
      *      ==CPYSRT-GRD== BY ==Nom-Grille==
      *      ==CPYSRT-ROW== BY ==Nombre-Lignes-En-Tête==
      *      ==CPYSRT-KEY== BY ==Numéro-Colonne-Clé==
      *      ==CPYSRT-ORD== BY ==Ordre-Tri(A ou D)==
      *      ==CPYSRT-PROC== BY ==Paragraphe déplacement valeurs HIDDEN==  
      
      * Le traitement est mieux dans un MASS-UPDATE, mais le choix est
      * laissé à l'appelant...
      *    MODIFY CPYSRT-GRD, MASS-UPDATE = 1

           ADD 1 TO CPYSRT-ROW GIVING Gd-Sort-First
           INQUIRE CPYSRT-GRD, LAST-ROW IN Gd-Sort-Last
           IF Gd-Sort-Last > Gd-Sort-NbMaxKeys THEN
               MOVE "Limite des capacités du tri atteinte" TO ACU-MSG-1
               PERFORM MSG-INFO
           ELSE
      * Pour limiter les Inquire / Modify (très lents)
               PERFORM VARYING Gd-Sort-I
                          FROM Gd-Sort-First BY 1
                         UNTIL Gd-Sort-I > Gd-Sort-Last
                 IF Gd-Sort-KeyHidden = 1 THEN
                   INQUIRE CPYSRT-GRD(Gd-Sort-I, CPYSRT-KEY),
                      HIDDEN-DATA IN Gd-Sort-Keys(Gd-Sort-I)
                 ELSE
                   INQUIRE CPYSRT-GRD(Gd-Sort-I, CPYSRT-KEY),
                      CELL-DATA IN Gd-Sort-Keys(Gd-Sort-I)
                 END-IF

               END-PERFORM
      * Attention : type de tri lamentable (Guère mieux que tri bulle)
      *             sur "gros" (500 lignes) volumes.
      *       => Accès sur clé fichier à préférer quand c'est possible.               
               PERFORM VARYING Gd-Sort-I
                          FROM Gd-Sort-First BY 1
                         UNTIL Gd-Sort-I > (Gd-Sort-Last - 1)
                   MOVE Gd-Sort-I TO Gd-Sort-K
                   MOVE Gd-Sort-Keys(Gd-Sort-I) TO Gd-Sort-Key-I
                   ADD 1 TO Gd-Sort-I GIVING Gd-Sort-J
                   PERFORM UNTIL Gd-Sort-J > Gd-Sort-Last
                       MOVE Gd-Sort-Keys(Gd-Sort-J) TO Gd-Sort-Key-J
                       IF (CPYSRT-ORD = 'A' AND
                           Gd-Sort-Key-I > Gd-Sort-Key-J) OR
                          (CPYSRT-ORD = 'D' AND
                           Gd-Sort-Key-I < Gd-Sort-Key-J) THEN
                           MOVE Gd-Sort-Key-J TO Gd-Sort-Key-I
                           MOVE Gd-Sort-J TO Gd-Sort-K
                       END-IF                       
                       ADD 1 TO Gd-Sort-J
                   END-PERFORM
                   IF NOT Gd-Sort-K = Gd-Sort-I THEN
                       INQUIRE CPYSRT-GRD(Gd-Sort-I),
                               RECORD-DATA IN Gd-Sort-Swap-I
                       INQUIRE CPYSRT-GRD(Gd-Sort-K),
                               RECORD-DATA IN Gd-Sort-Swap-J
                       MODIFY CPYSRT-GRD(Gd-Sort-I),
                              RECORD-DATA = Gd-Sort-Swap-J
                       MODIFY CPYSRT-GRD(Gd-Sort-K),
                              RECORD-DATA = Gd-Sort-Swap-I
      *                Déplace les HIDDEN-DATA
                       PERFORM CPYSRT-PROC

                       MOVE Gd-Sort-Keys(Gd-Sort-I) TO Gd-Sort-Key-I
                       MOVE Gd-Sort-Keys(Gd-Sort-K)
                         TO Gd-Sort-Keys(Gd-Sort-I)
                       MOVE Gd-Sort-Key-I TO Gd-Sort-Keys(Gd-Sort-K)
                   END-IF               
               END-PERFORM
           END-IF
      
