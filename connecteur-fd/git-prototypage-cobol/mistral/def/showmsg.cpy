       Acu-Extended-File-Status.
           CALL "C$RERRNAME" USING Acu-Err-File
           CALL "C$RERR" USING Extend-Stat, Text-Message
              MOVE Primary-Error TO Acu-Msg-Id
              PERFORM Acu-Show-Msg
           .
       Acu-Show-Msg.
           IF ACU-MSG-ID NOT = 399
                     AND NOT = 99
              MOVE SPACE TO Acu-Msg-1 Acu-Msg-2 Acu-Msg-3
           ELSE
      *       Mettre le nom du fichier occupé et/ou le numéro de l'enregistrement dans ACU-Msg-2 et ACU-Msg-3
              MOVE SPACE TO Acu-Msg-1 

              IF  ACU-Msg-2 = SPACE
              AND ACU-Msg-3 = SPACE THEN
      *          recherche utilisateur responsable du blocage
                 INITIALIZE LK-USERPROC
                 MOVE PROCESS-ID TO LK-USERPROC-PROCESS-ID
                 CALL  "../../mistral/o/userproc.acu" 
                    USING ZONE-PALM, LK-USERPROC
                 CANCEL "../../mistral/o/userproc.acu"
040808
                 IF LK-USERPROC-NOM = SPACE THEN
                    MOVE LK-USERPROC-IDE TO LK-USERPROC-NOM 
                 END-IF
040808
                 STRING LK-USERPROC-NOM DELIMITED BY "  "
                        " "
                        ACU-Err-File DELIMITED BY SIZE
                   INTO ACU-Msg-2
                 STRING LK-USERPROC-MOD
                        "/ " LK-USERPROC-LIB 
                   INTO ACU-Msg-3
              END-IF

           END-IF
              
           EVALUATE Acu-Msg-Id
           WHEN 10
              MOVE "Fin de fichier."  TO Acu-Msg-1
              MOVE Mb-Default-Icon TO Acu-Icon-Type
              MOVE Mb-Ok TO Acu-Button-Type
           WHEN 22
              MOVE "Clé en double." TO Acu-Msg-1
              MOVE Mb-Error-Icon TO Acu-Icon-Type
              MOVE Mb-Ok TO Acu-Button-Type
           WHEN 23
              MOVE "Enregistrement non trouvé" TO Acu-Msg-1
              MOVE Mb-Warning-Icon TO Acu-Icon-Type
              MOVE Mb-Ok TO Acu-Button-Type
           WHEN 99
              MOVE SPACE TO Acu-Msg-1
              MOVE PROCESS-ID TO Z-PROCESS-ID
              STRING 
               "Enregistrement Occupé par le processus n° "
                  DELIMITED BY SIZE
               Z-PROCESS-ID DELIMITED BY SIZE 
              INTO Acu-Msg-1
              MOVE Mb-Warning-Icon TO Acu-Icon-Type
              MOVE Mb-Ok TO Acu-Button-Type  
           WHEN 101
              MOVE "Quitter?" TO Acu-Msg-1
              MOVE 4 TO Acu-Icon-Type
              MOVE Mb-Yes-No TO Acu-Button-Type
           WHEN 201
              MOVE "Ajouter?" TO Acu-Msg-1
              MOVE 4 TO Acu-Icon-Type
              MOVE Mb-Yes-No TO Acu-Button-Type
           WHEN 202
              MOVE "Actualiser?" TO Acu-Msg-1
              MOVE 4 TO Acu-Icon-Type
              MOVE Mb-Yes-No TO Acu-Button-Type
           WHEN 203
              MOVE "Supprimer?" TO Acu-Msg-1
              MOVE 4 TO Acu-Icon-Type
              MOVE Mb-Yes-No TO Acu-Button-Type
021110        move 2 to Acu-Default-Button
           WHEN 204
              MOVE "Clé en double." TO Acu-Msg-1
              MOVE Mb-Warning-Icon TO Acu-Icon-Type
              MOVE Mb-Ok TO Acu-Button-Type
           WHEN 301
              MOVE "Ajout effectué." TO Acu-Msg-1
              MOVE Mb-Default-Icon TO Acu-Icon-Type
              MOVE Mb-Ok TO Acu-Button-Type
           WHEN 302
              MOVE "Mise à jour effectuée." TO Acu-Msg-1
              MOVE Mb-Default-Icon TO Acu-Icon-Type
              MOVE Mb-Ok TO Acu-Button-Type
           WHEN 303
              MOVE "Suppression effectuée." TO Acu-Msg-1
              MOVE Mb-Default-Icon TO Acu-Icon-Type
              MOVE Mb-Ok TO Acu-Button-Type
           WHEN 380
              MOVE "Fonction non Autorisée" TO Acu-Msg-1
              MOVE Mb-Default-Icon TO Acu-Icon-Type
              MOVE Mb-Ok TO Acu-Button-Type
           WHEN 381
              MOVE "Le code est obligatoire" TO Acu-Msg-1
              MOVE Mb-Default-Icon TO Acu-Icon-Type
              MOVE Mb-Ok TO Acu-Button-Type
           WHEN 382
              MOVE "Déjà existant" TO Acu-Msg-1
              MOVE Mb-Default-Icon TO Acu-Icon-Type
              MOVE Mb-Ok TO Acu-Button-Type
           WHEN 383
              MOVE "Premier enregistrement" TO Acu-Msg-1
              MOVE Mb-Default-Icon TO Acu-Icon-Type
              MOVE Mb-Ok TO Acu-Button-Type
           WHEN 384
              MOVE "Dernier enregistrement" TO Acu-Msg-1
              MOVE Mb-Default-Icon TO Acu-Icon-Type
              MOVE Mb-Ok TO Acu-Button-Type  
           WHEN 385
              MOVE "Données Incohérentes - Veuillez vérifier SVP" 
              TO Acu-Msg-1
              MOVE Mb-Default-Icon TO Acu-Icon-Type
              MOVE Mb-Ok TO Acu-Button-Type  
           WHEN 399
              MOVE SPACE TO Acu-Msg-1
              MOVE PROCESS-ID TO Z-PROCESS-ID
              STRING 
               "Enregistrement Occupé par le processus n° "
                  DELIMITED BY SIZE
               Z-PROCESS-ID DELIMITED BY SIZE 
              INTO Acu-Msg-1
              MOVE Mb-Warning-Icon TO Acu-Icon-Type
              MOVE Mb-Ok TO Acu-Button-Type  
           WHEN 401
              MOVE "Shell non trouvé." TO Acu-Msg-1
              MOVE Mb-Error-Icon TO Acu-Icon-Type
              MOVE Mb-Ok TO Acu-Button-Type
      * user-defined message
           WHEN 901
              MOVE Mb-Warning-Icon TO Acu-Icon-Type
              MOVE Mb-Ok TO Acu-Button-Type
           WHEN OTHER
              MOVE Text-Message TO Acu-Msg-1
              IF Primary-Error = 99
                 MOVE SPACE TO Acu-Msg-1
                 MOVE PROCESS-ID TO Z-PROCESS-ID
                 STRING 
                 "Enregistrement Occupé par le processus n° "
                    DELIMITED BY SIZE
                 Z-PROCESS-ID DELIMITED BY SIZE 
                 INTO Acu-Msg-1
              ELSE
                  IF Primary-Error = 21 MOVE "Clé modifiée" 
                     TO Acu-Msg-1 END-IF
                  IF Primary-Error = 22 MOVE "Clé en double" 
                     TO Acu-Msg-1 END-IF
                  IF Primary-Error = 24 OR 34
                                        MOVE "Place disque insuffisante" 
                     TO Acu-Msg-1 END-IF
                  IF Primary-Error = 35 MOVE "Fichier non trouvé" 
                     TO Acu-Msg-1 END-IF
                  IF Primary-Error = 37 MOVE "Droits insuffisants" 
                     TO Acu-Msg-1 END-IF
                  IF Primary-Error = 39 OR 98
                     MOVE "Structure incohérente" 
                     TO Acu-Msg-1 END-IF
                  IF Primary-Error = 41 MOVE "Fichier déjà ouvert" 
                     TO Acu-Msg-1 END-IF
                  IF Primary-Error = 42 OR 47 MOVE "Fichier non ouvert" 
                     TO Acu-Msg-1 END-IF
                  IF Primary-Error = 43 
                     MOVE "Pas d'enregistrement courant" 
                     TO Acu-Msg-1 END-IF  
                  IF Primary-Error = 48 OR 49
                     MOVE "Fichier non ouvert (I-O)" 
                     TO Acu-Msg-1 END-IF
                  IF Primary-Error = 93
                     MOVE SPACE TO Acu-Msg-1
                     MOVE PROCESS-ID TO Z-PROCESS-ID
                     STRING 
                      "Fichier occupé par le processus n° "
                       DELIMITED BY SIZE
                      Z-PROCESS-ID DELIMITED BY SIZE 
                     INTO Acu-Msg-1
                  END-IF
                  STRING "Fichier:" Acu-Err-File DELIMITED BY SPACE
                           INTO Acu-Msg-2
                  STRING "File status ", Primary-Error "," 
                          Secondary-Error
                          DELIMITED BY SIZE INTO Acu-Msg-3
              END-IF
           END-EVALUATE
           PERFORM Acu-Message-Box

           IF ACU-MSG-ID = 399
                      OR = 99 THEN
              MOVE SPACE TO Acu-Msg-1 Acu-Msg-2 Acu-Msg-3
           END-IF
           .

       Acu-Message-Box.
           MOVE 1 TO Acu-Text-Ptr
           IF Acu-Msg-1 NOT = SPACE
              MOVE 0 TO Acu-Size
              INSPECT Acu-Msg-1 TALLYING Acu-Size FOR TRAILING SPACE
              STRING Acu-Msg-1( 1 : Acu-Length - Acu-Size )
                 DELIMITED BY SIZE
                 INTO Acu-Msg-Text, POINTER Acu-Text-Ptr
           END-IF

           IF Acu-Msg-2 NOT = SPACE
              MOVE 0 TO Acu-Size
              INSPECT Acu-Msg-2 TALLYING Acu-Size FOR TRAILING SPACE
              IF ACU-Text-Ptr > 1
                 STRING X"0A" DELIMITED BY SIZE
                     INTO Acu-Msg-Text, POINTER Acu-Text-Ptr
              END-IF
              STRING Acu-Msg-2( 1 : Acu-Length - Acu-Size )
                  DELIMITED BY SIZE
                  INTO Acu-Msg-Text, POINTER Acu-Text-Ptr
           END-IF

           IF Acu-Msg-3 NOT = SPACE
              MOVE 0 TO Acu-Size
              INSPECT Acu-Msg-3 TALLYING Acu-Size FOR TRAILING SPACE
              IF Acu-Text-Ptr > 1
                 STRING X"0A" DELIMITED BY SIZE
                     INTO Acu-Msg-Text, POINTER Acu-Text-Ptr
              END-IF
              STRING Acu-Msg-3( 1 : Acu-Length - Acu-Size )
                  DELIMITED BY SIZE
                  INTO Acu-Msg-Text, POINTER Acu-Text-Ptr
           END-IF

           IF Acu-Text-Ptr = 1
             MOVE 0 TO Acu-Size
             INSPECT Acu-Msg-Text TALLYING Acu-Size FOR TRAILING SPACE
             COMPUTE Acu-Text-Ptr = Acu-Full-Len - Acu-Size + 1
           END-IF
           MOVE Low-Values TO Acu-Msg-Text( Acu-Text-Ptr : 1 )

240512     IF Acu-Msg-Naff <> 1
              DISPLAY MESSAGE BOX
                 Acu-Msg-Text
                 TYPE IS Acu-Button-Type
                 ICON IS Acu-Icon-Type
                 TITLE IS Acu-Title
                 DEFAULT IS Acu-Default-Button
                 RETURNING Acu-Return-Value.
           .
