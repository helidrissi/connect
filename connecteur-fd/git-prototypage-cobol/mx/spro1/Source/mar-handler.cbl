      *{Bench}prg-comment
      * mar-handler.cbl
      * mar-handler.cbl is generated from W:\mx\spro1\mar-handler.Psf
      *{Bench}end
       IDENTIFICATION              DIVISION.
      *{Bench}prgid
       PROGRAM-ID. mar-handler.
       AUTHOR. mistral.
       DATE-WRITTEN. mercredi 4 novembre 2020 10:59:56.
       REMARKS. 
      *{Bench}end
       ENVIRONMENT                 DIVISION.
       CONFIGURATION               SECTION.
       SPECIAL-NAMES.
      *{Bench}activex-def
      *{Bench}end
      *{Bench}decimal-point
           DECIMAL-POINT IS COMMA.
      *{Bench}end
       INPUT-OUTPUT                SECTION.
       FILE-CONTROL.
      *{Bench}file-control
       COPY "COBCAP.sl".
       COPY "MXMARQUE.sl".
       COPY "MXMARQUE2.sl".
       COPY "TEST-SEQ2.sl".
       COPY "TEST-SEQ.sl".
       COPY "TEST-REL.sl".
       COPY "MXART.sl".
       COPY "MXLDIS.sl".
       COPY "MXCATFOU.sl".
       COPY "MXART2.sl".
      *{Bench}end
       DATA                        DIVISION.
       FILE                        SECTION.
      *{Bench}file
       COPY "COBCAP.fd".
       COPY "MXMARQUE.fd".
       COPY "MXMARQUE2.fd".
       COPY "TEST-SEQ2.fd".
       COPY "TEST-SEQ.fd".
       COPY "TEST-REL.fd".
       COPY "MXART.fd".
       COPY "MXLDIS.fd".
       COPY "MXCATFOU.fd".
       COPY "MXART2.fd".
      *{Bench}end
       WORKING-STORAGE             SECTION.
      *{Bench}acu-def
       COPY "acugui.def".
       COPY "acucobol.def".
       COPY "crtvars.def".
       COPY "showmsg.def".
      *{Bench}end

      *{Bench}copy-working
      * 77 Key-Status IS SPECIAL-NAMES CRT STATUS PIC 9(4) USAGE [None] VALUE 0.
      *     88 Exit-Pushed VALUE 27.
      *     88 Message-Received VALUE 95.
      *     88 Event-Occurred VALUE 96.
      *     88 Screen-No-Input-Field VALUE 97.
      *     88 Screen-Time-Out VALUE 99.
      * property-defined variable

      * user-defined variable
       01 BITWISE-DEST
                  USAGE IS SIGNED-SHORT.
       01 BITWISE-SRC
                  USAGE IS SIGNED-SHORT.
           COPY  "cobcap.wrk".
           COPY  "kobalt-missing.wrk".
           COPY  "envmis.wrk".
       01 fcount           PIC  9(10).
       01 MXMARQUE2-COB    PIC  X(20).
       77 TEST-SEQ2-COB    PIC  X(32).
       77 FILE-STATUS      PIC  X(2).
           88 Valid-TEST-SEQ2 VALUE IS "00" THRU "09". 
       77 TEST-SEQ-COB     PIC  X(32).
       77 TEST-REL-COB     PIC  X(32).
       77 TEST-SIGNED-SHORT
                  USAGE IS SIGNED-SHORT.
       77 KEY-TR           PIC  9(9).

      *{Bench}end
       LINKAGE                     SECTION.
      *{Bench}linkage
      *{Bench}end
       SCREEN                      SECTION.
      *{Bench}copy-screen

      *{Bench}end

      *{Bench}linkpara
       PROCEDURE DIVISION.
      *{Bench}end
      *{Bench}declarative
       DECLARATIVES.
       INPUT-ERROR SECTION.
           USE AFTER STANDARD ERROR PROCEDURE ON INPUT.
       0100-DECL.
           EXIT.
       I-O-ERROR SECTION.
           USE AFTER STANDARD ERROR PROCEDURE ON I-O.
       0200-DECL.
           EXIT.
       OUTPUT-ERROR SECTION.
           USE AFTER STANDARD ERROR PROCEDURE ON OUTPUT.
       0300-DECL.
           EXIT.
       END DECLARATIVES.
      *{Bench}end

       Acu-Main-Logic.
      *{Bench}entry-befprg
      *    Before-Program
      *{Bench}end
           PERFORM Acu-Initial-Routine
      * run main screen
      *{Bench}run-mainscr
      *{Bench}end
           PERFORM Acu-Exit-Rtn
           .

      *{Bench}copy-procedure
       COPY "showmsg.cpy".

       Acu-Initial-Routine.
      *    Before-Init
      * get system information
           ACCEPT System-Information FROM System-Info
      * get terminal information
           ACCEPT Terminal-Abilities FROM Terminal-Info
      * open file
           PERFORM Acu-Open-Files
           PERFORM Acu-Main
           .

       Acu-Exit-Rtn.
      * destroy font
           PERFORM Acu-Exit-Font
      * destroy bitmap
           PERFORM Acu-Exit-Bmp
           PERFORM Acu-Close-Files
      *    After-Program
           EXIT PROGRAM
           STOP RUN
           .
       Acu-Exit-Font.
      * font destroy
           .

       Acu-Exit-Bmp.
      * bitmap destroy
           .

       Acu-Open-Files.
      *    Before-Open
      *    After-Open
           .

       Acu-Close-Files.
      *    Before-Close
      *    After-Close
           .

      * COBCAP

      * MXMARQUE

      * MXMARQUE2

      * TEST-SEQ2

      * TEST-SEQ

      * TEST-REL

      * MXART

      * MXLDIS

      * MXCATFOU

      * MXART2

      ***   start event editor code   ***
       COPY "envmis-credirect.cbl".

       acu-main.
           perform installHandler

      *    On compense le non-lancement de Controle-Palme
      *     perform installHandler
      *     perform Controle-Palme 
           move "/webf/mxg/f/MARQUE" to mxmarque-cob
           move "/webf/mxg/f/MARQUE" to mxmarque2-cob
           move "/webf/mx0001/f/ART" to mxart-cob
           
      *     perform mxart-read-previous
      *     perform mxart-read-lock
      *     perform mxart-read-unlock-all
      *     perform catfou-write-500
      *     perform create-mxldis
      *     perform read-next-eof-previous
      *     perform read-failed
      *     perform start-failed
      *     perform test-open-cache
      *     perform test-parcours
      *     perform test-display
      *     perform read-mxmarque
      *     perform read-delete-write-mxmarque
      *     perform read-mxmarque-keys
      *     perform lock-mxmarque
      *     perform test-open-twice
      *     perform test-open-db
           perform test-sequential
      *     perform test-bitwise
      *     perform test-make
      *     perform test-delete
           perform test-relative
      *     perform test-io
      *     perform test-handler
      *     perform test-error-open

           exit paragraph
           .           

       mxart-read-unlock-all.
           move "DB:MXART" to mxart-cob
           move 0 to w-eof
           open i-o mxart
           open i-o mxart2
      *    lock posé sur le premier fichier
           read mxart next with lock
           display "00 attendu : ", file-status
      *    lecture avec lock non possible
           read mxart2 next with lock
           display "99 attendu : ", file-status

           unlock all
      *    lecture avec lock possible
           read mxart2 next with lock
           display "00 attendu : ", file-status

           close mxart
           close mxart2
           exit paragraph
           .           

       mxart-read-lock.
           move "DB:MXART" to mxart-cob
           move 0 to w-eof
           open i-o mxart
           open i-o mxart2
      *    lock posé sur le premier fichier
           read mxart next with lock
           display "00 attendu : ", file-status

      *    lecture avec lock impossible
           read mxart2 next with lock
           display "99 attendu : ", file-status
           display "PID attendu : ", handler-process-id

      *    lecture sans lock possible
           read mxart2 next
           display "00 attendu : ", file-status
           read mxart2 previous
           display "10 attendu : ", file-status

      *    écriture impossible
           rewrite enr-mart2
           display "99 attendu : ", file-status
           display "PID attendu : ", handler-process-id

      *    unlock de l'enregistrement
           unlock mxart

      *    lecture avec lock possible
           read mxart2 next with lock
           display "00 attendu : ", file-status

           close mxart
           close mxart2
           exit paragraph
           .

       mxart-read-previous.
           move "DB:MXART" to mxart-cob
           move 0 to w-eof
           open i-o mxart
           move SPACES to co2-mart
           start mxart Key >= cle5-mart
           read mxart next
           display co2-mart
           display w-eof
           read mxart next
           display co2-mart
           display w-eof
           read mxart next
           display co2-mart
           display w-eof
           read mxart previous
           display co2-mart
           display w-eof
           read mxart previous
           display co2-mart
           display w-eof
           read mxart previous end move 1 to w-eof end-read
           display co2-mart
           display w-eof
           exit paragraph
           .

       catfou-write-500.
           move "DB:MXCATFOU" to mxcatfou-cob
           open i-o mxcatfou
           perform until fcount >= 500
             add 1 to fcount
             move fcount to FOU-MCTF
             move fcount to REF-MCTF
             write enr-mctf
           end-perform
           display "done"
           close mxcatfou
           .

       create-mxldis.
           move "LDIS-CUSTOM" to mxldis-cob
           open output mxldis
           exit paragraph
           .


       read-next-eof-previous.
      * Parcours next->eof->previous et previous->eof->next
      *     move "/webf/mxg/f/MARQUE" to mxmarque-cob
           move "DB:MXMARQUE" to mxmarque-cob

           open input mxmarque

      * next->eof->previous
           move "T" to cod-mmar
           start mxmarque key >= cle1-mmar
           move 0 to return-code
           perform until return-code > 600
               read mxmarque next
               end
                   exit perform
               end-read
               display cod-mmar
               add 1 to return-code
           end-perform

           display "previous"
           read mxmarque previous
           display cod-mmar

      * previous->eof->next
           move "02" to cod-mmar
           start mxmarque key >= cle1-mmar
           move 0 to return-code
           perform until return-code > 600
               read mxmarque previous
               end
                   exit perform
               end-read
               display cod-mmar
               add 1 to return-code
           end-perform

           display "next"
           read mxmarque next
           display cod-mmar
           
           exit paragraph
           .

       delete-temp-mxmarque.
      * supprime le fichier de MARQUE temporaire
           move "temp.MARQUE" to mxmarque-cob
           display "suppression fichier counrant..."
           delete file mxmarque
           display "fin"
           exit paragraph
           .

       creation-temp-mxmarque.
      * crée 4 enregistrements M1, M2, M3 et M4
           display "écriture des enregistrements..."
           open i-o mxmarque
           move "M1" to cod-mmar
           write enr-mmar
           move "M2" to cod-mmar
           write enr-mmar
           move "M3" to cod-mmar
           write enr-mmar
           move "M4" to cod-mmar
           write enr-mmar
           close mxmarque
           display "fin"
           exit paragraph
           .

       next2-temp-mxmarque.
           display "lecture des 2 premiers enregistrements..."
           open i-o mxmarque
           move low-values to enr-mmar
           start mxmarque Key >= cle1-mmar
           read mxmarque next
           display cod-mmar, ", ", lib-mmar
           read mxmarque next
           display cod-mmar, ", ", lib-mmar
           display "vérification M2: ", cod-mmar
           display "fin"
           exit paragraph
           .

       reset-temp-mxmarque.
      * réinitialise le fichier mxmarque, crée 4 enregistrements et
      * avance de 2    
           perform delete-temp-mxmarque
           perform creation-temp-mxmarque
           perform next2-temp-mxmarque
           exit paragraph
           .

       parcours-temp-mxmarque.
      * parcours mxmarque à partir de la position actuelle
           move 0 to w-eof
           perform until w-eof <> 0
               read mxmarque next end move 1 to w-eof end-read
               if w-eof = 0
                   display cod-mmar, ", ", lib-mmar
               end-if
           end-perform
           exit paragraph
           .

       test-parcours.
      * Vérification du fonctionnement du parcours/position si
      * WRITE/REWRITE/DELETE

           display "Cas 1 : parcours si modification (rewrite) d'un ",
               "enregistrement"
           perform reset-temp-mxmarque

           display "modification M1"
           move "M1" to cod-mmar
           move "LIB1" to lib-mmar
           rewrite enr-mmar
           display "fin"

           display "suite du parcours: attentdu M3 et M4 car write ",
               "ne modifie pas le pointeur"
           perform parcours-temp-mxmarque
           close mxmarque
           
           call "mis-handler$custom" using "TESTEEEEEE"
     
           display "Cas 2 : parcours si delete d'un ",
               "enregistrement précédent"
           perform reset-temp-mxmarque
           move "M1" to cod-mmar
           delete mxmarque
           
           display "suite du parcours: attentdu M3 et M4 car write ",
               "ne modifie pas le pointeur"
           perform parcours-temp-mxmarque
           move low-values to cod-mmar
           display "parcours entier: M1 est supprimé"
           start mxmarque Key >= cle1-mmar
           perform parcours-temp-mxmarque
           close mxmarque

     
           display "Cas 3 : parcours si delete d'un ",
               "enregistrement courant"
           perform reset-temp-mxmarque
           delete mxmarque
           
           display "suite du parcours: attentdu M3 et M4 car write ",
               "ne modifie pas le pointeur"
           perform parcours-temp-mxmarque
           move low-values to cod-mmar
           display "parcours entier: M2 est supprimé"
           start mxmarque Key >= cle1-mmar
           perform parcours-temp-mxmarque
           close mxmarque

           exit paragraph
           .

       test-display.
      * Affichage spécifique sur stderr
           move 1 to test-signed-short
           display "syserr"
           display test-signed-short upon syserr
           display "not syserr"
           display test-signed-short
           exit paragraph
           .

       read-mxmarque.
      *     move "DB:MXMARQUE" to mxmarque-cob
           open i-o mxmarque
           move low-values to lib-mmar
           move 0 to w-eof
           start mxmarque key >= lib-mmar
               invalid move 1 to w-eof end-start

           read mxmarque next end move 1 to w-eof end-read
           perform until w-eof <> 0
               display "record: ", enr-mmar
               read mxmarque next end move 1 to w-eof end-read
               perform stat
           end-perform
           exit paragraph
           .

       read-mxmarque-keys.
      * Vérification de l'affichage des infos sur les clés
           move "/webf/mxg/f/MARQUE" to mxmarque-cob
           move "/webf/mx0001/f/ART" to mxart-cob
           open i-o mxart
           open i-o mxmarque
           move "TST" to cod-mmar
           start mxmarque key >= cod-mmar

           move "AAA" to cod-mart
           move "10" to gra-mart
           move "87" to fam-mart
      * les index de clés dépendent de la position dans l'enregistrement
      * key-number: cle1 -> 0
           start mxart key >= cle1-mart
      * key-number: cle2 -> 2
           start mxart key >= cle2-mart
      * key-number: cle3 -> 3
           start mxart key >= cle3-mart
      * key-number: cle4 -> 5
           start mxart key >= cle4-mart
      * key-number: cle5 -> 1
           start mxart key >= cle5-mart
      * key-number: cle6 -> 6
           start mxart key >= cle6-mart
      * key-number: cle7 -> 7
           start mxart key >= cle7-mart
      * key-number: cle7 -> 4
           start mxart key >= cle8-mart
      * key-number: cle9 -> 8
           start mxart key >= cle9-mart
           exit paragraph
           .

       read-failed.
           move "/webf/mxg/f/MARQUE" to mxmarque-cob
           move "DB:MXMARQUE" to mxmarque-cob
           open input mxmarque

      *    Vérification fonctionnement invalid key / valid key
      *    On vérifie sur le KO que l'enregistrement n'est pas modifié
           move "VE" to cod-mmar
           read mxmarque Key cle1-mmar
               invalid key display "KO: ", cod-mmar, " ", lib-mmar,
                   " ", file-status
               not invalid key display "OK: ", cod-mmar, " ", lib-mmar,
                   " ", file-status
           end-read 
           
           move "VER" to cod-mmar
           read mxmarque Key cle1-mmar
               invalid key display "KO: ", cod-mmar, " ", lib-mmar,
                   " ", file-status
               not invalid key display "OK: ", cod-mmar, " ", lib-mmar,
                   " ", file-status
           end-read
           exit paragraph
           .

       start-failed.
           move "/webf/mxg/f/MARQUE" to mxmarque-cob
           move "DB:MXMARQUE" to mxmarque-cob
           open input mxmarque

      *    Vérification fonctionnement invalid key / valid key
           move "VE" to cod-mmar
           start mxmarque Key = cle1-mmar
               invalid key display "KO: ", file-status
               not invalid key display "OK: ", file-status
           end-start
           
           move "VER" to cod-mmar
           start mxmarque Key = cle1-mmar
               invalid key display "KO: ", file-status
               not invalid key display "OK: ", file-status
           end-start
           exit paragraph
           .

       test-open-cache.
      * Ouverture d'un fichier BDD
      *     move "/webf/mxg/f/MARQUE" to mxmarque-cob
           move "DB:MXMARQUE" to mxmarque-cob
           move "DB:MXART" to mxart-cob
      * Cache #1
           open i-o mxmarque
      * Cache #2
           open i-o mxart
           perform until fcount > 479
               read mxmarque next end
                   display "Terminé" exit perform
               end-read
               display enr-mmar
               add 1 to fcount
           end-perform
           close mxmarque
           close mxart
      * Cache #1
           open i-o mxmarque
           close mxmarque
      * Cache #1
           open i-o mxart
           close mxart
           exit paragraph
           .

       test-open-db.
      * Ouverture d'un fichier BDD
           move "DB:MXMARQUE" to mxmarque-cob
           open i-o mxmarque
           read mxmarque next
           close mxmarque
           exit paragraph
           .

       test-open-twice.
      * Vérification que le handler-file-handle passé au handler est
      * le même quand on fichier est ouvert deux fois
      * Il faut activer les traces du handler pour voir la valeur
      * passée par la couhe C$REDIRECT
           move "/webf/mxg/f/MARQUE" to mxmarque-cob
           open i-o mxmarque
           open i-o mxmarque
           close mxmarque
           exit paragraph
           .

       test-error-open.
           move "NOT-EXISTING" to mxmarque-cob
           open i-o mxmarque
           read mxmarque next
           exit paragraph
           .
       
       test-handler.
           move "MARQUE" to mxmarque-cob
           open i-o mxmarque
           call "handler-config"
           read mxmarque next
           exit paragraph
           .

       test-delete.
           move "MARQUE" TO mxmarque-cob
           delete file MXMARQUE
           open output MXMARQUE
           close MXMARQUE
           delete file MXMARQUE
           
           move "TEST-SEQ" TO test-seq-cob
           delete file test-seq
           open output test-seq
           close test-seq
           delete file test-seq
           exit paragraph
           .

       test-make.
           move "MARQUE" to MXMARQUE-COB
           delete file MXMARQUE
           open i-o MXMARQUE

           move "TEST-REL" to test-rel-cob
           delete file test-rel
           open i-o test-rel

           move "TEST-SEQ" to test-seq-cob
           delete file test-seq
           open i-o test-seq
           exit paragraph
           .

       test-bitwise.
      * Vérification des opérations bitwise qui permettent dans
      * newhandler de faire une comparaison bit à bit du mode
      * d'ouverture et de gérer une création seulement pour les
      * cas 1 (output), 2 (i-o) et 3 (extend)
           move 512 to bitwise-src
           move 3 to bitwise-dest
           call "CBL_AND" using bitwise-src bitwise-dest
           display "return-code (0):", bitwise-dest
           move 513 to bitwise-src
           move 3 to bitwise-dest
           call "CBL_AND" using bitwise-src bitwise-dest
           display "return-code (1):", bitwise-dest
           move 514 to bitwise-src
           move 3 to bitwise-dest    
           call "CBL_AND" using bitwise-src bitwise-dest
           display "return-code (2):", bitwise-dest
           move 515 to bitwise-src
           move 3 to bitwise-dest 
           call "CBL_AND" using bitwise-src bitwise-dest
           display "return-code (3):", bitwise-dest
           move 257 to bitwise-src
           move 3 to bitwise-dest
           call "CBL_AND" using bitwise-src bitwise-dest
           display "return-code (1):", bitwise-dest
           exit paragraph
           .

       test-sequential.                                                              
           move "TEST-SEQ" to test-seq-cob
           move "TEST-SEQ" to test-seq2-cob

      * Initialisation du fichier avec 2 enregistrements
           display "Suppression et initialisation de TEST-SEQ"
           delete file test-seq
           open output test-seq
           display "open file-status (00): ", file-status
           move "ligne 1" to field1-ts
           write enr-ts
           display "write 1 file-status (00): ", file-status
           move "ligne 2" to field1-ts
           write enr-ts
           display "write 2 file-status (00): ", file-status
           close test-seq
           
      * Lecture séquentielle
           display "*****************************"
           display "Lecture séquentielle TEST-SEQ"
           initialize enr-ts
           open input test-seq
           display "open file-status (00): ", file-status
           read test-seq next
           display "read 1 enr (ligne 1): ", field1-ts
           read test-seq next
           display "read 2 enr (ligne 2): ", field1-ts
           read test-seq next
           display "write 2 file-status/EOF (10): ", file-status
           close test-seq

      * Lock (sans effet)
           display "************************************"
           display "Read WITH LOCK (sans effet) TEST-SEQ"
           initialize enr-ts
           initialize enr-ts2
           open input test-seq
           open input test-seq2
           display "open file-status (00): ", file-status
           read test-seq next with lock
           display "read 1 lock (ligne 1): ", field1-ts 
           read test-seq2 next with lock
           display "read 2 lock (ligne 1): ", field1-ts2
           display "read 2 file-status/locked (00): ", file-status
           close test-seq
           close test-seq2

           exit paragraph
           .

       test-relative.                                                              
           move "TEST-REL" to test-rel-cob

      * Initialisation du fichier avec 2 enregistrements
           display "Suppression et initialisation de TEST-REL"
           delete file test-rel
           open output test-rel
           display "open file-status (00): ", file-status
           move "ligne 1" to field1-tr
           write enr-tr
           display "write 1 file-status (00): ", file-status
           move "ligne 2" to field1-tr
           write enr-tr
           display "write 2 file-status (00): ", file-status
           close test-rel
           
      * Lecture séquentielle
           display "*****************************"
           display "Lecture séquentielle TEST-REL"
           initialize enr-tr
           open input test-rel
           display "open file-status (00): ", file-status
           read test-rel next
           display "read 1 enr (ligne 1): ", field1-tr
           read test-rel next
           display "read 2 enr (ligne 2): ", field1-tr
           read test-rel next
           display "write 2 file-status/EOF (10): ", file-status
           close test-rel  
           
      * Lecture séquentielle + start
           display "*************************************"
           display "Lecture séquentielle (start) TEST-REL"
           initialize enr-tr
           open input test-rel
           move 2 to key-tr
           start test-rel key >= key-tr
           display "open file-status (00): ", file-status
           read test-rel next
           display "read 1 enr (ligne 2): ", field1-tr
           read test-rel previous
           display "read 2 enr (ligne 1): ", field1-tr
           read test-rel previous
           display "write 2 file-status/EOF (10): ", file-status
           close test-rel
           
      * Lecture directe
           display "*************************************"
           display "Lecture directe TEST-REL"
           initialize enr-tr
           open input test-rel
           move 1 to key-tr
           display "open file-status (00): ", file-status
           read test-rel
           display "read 1 enr (ligne 2): ", field1-tr
           move 2 to key-tr
           read test-rel
           display "read 2 enr (ligne 1): ", field1-tr
           move 3 to key-tr
           read test-rel
           display "write 2 file-status/not-found (23): ", file-status
           close test-rel
                      
           exit paragraph
           .

       test-io.                                                              
           move "MXMARQUE" to mxmarque-cob

      * Initialisation du fichier avec 2 enregistrements
           display "Suppression et initialisation de MXMARQUE"
           delete file mxmarque
           open output mxmarque
           display "open file-status (00): ", file-status
           move "CO1" to cod-mmar
           write enr-mmar
           display "write 1 file-status (00): ", file-status
           move "CO2" to cod-mmar
           write enr-mmar
           display "write 2 file-status (00): ", file-status
           close mxmarque
           
      * Lecture séquentielle
           display "*****************************"
           display "Lecture séquentielle MXMARQUE"
           initialize enr-mmar
           open input mxmarque
           display "open file-status (00): ", file-status
           read mxmarque next
           display "read 1 enr (CO1): ", cod-mmar
           read mxmarque next
           display "read 2 enr (CO2): ", cod-mmar
           read mxmarque next
           display "write 2 file-status/EOF (10): ", file-status
           close mxmarque  
           
      * Lecture séquentielle + start
           display "*************************************"
           display "Lecture séquentielle (start) MXMARQUE"
           initialize enr-mmar
           open input mxmarque
           move "CO2" to cod-mmar
           start mxmarque key >= cod-mmar
           display "start file-status (00): ", file-status
           read mxmarque next
           display "read 1 enr (CO2): ", cod-mmar
           read mxmarque next
           display "write 2 file-status/EOF (10): ", file-status
           close mxmarque
           
           exit paragraph
           .

       lock-mxmarque.
           display "Test lock MXMARQUE + MXMARQUE2"
           open i-o MXMARQUE
           open i-o MXMARQUE2
           initialize ENR-MMAR
           initialize ENR-MMAR2
           start MXMARQUE key >= cod-mmar
           start MXMARQUE2 key >= cod-mmar2
           read MXMARQUE next with lock
           display "file-status: ", file-status
           read MXMARQUE2 next with lock
           display "handler-primary-error: ", handler-primary-error
           display "file-status: ", file-status
           rewrite enr-mmar2
           display "handler-primary-error: ", handler-primary-error
           display "file-status: ", file-status
           call "c$lockpid" giving process-id
           display "lock-pid: ", process-id

           exit paragraph
           .

       display-file-status.
           display "file-status: ", file-status
           display "handler-primary-error: ", handler-primary-error

           exit paragraph
           .

       read-delete-write-mxmarque.
           display "Start"
           display mxmarque-cob
           open i-o MXMARQUE
           perform display-file-status
           display "file-status: ", file-status
           move "bla" to cod-mmar
           move "bla" to lib-mmar
           move "bla" to abr-mmar
           delete mxmarque
           perform display-file-status
           write enr-mmar 
           perform display-file-status

           move low-values to cod-mmar
           start MXMARQUE Key >= cod-mmar
           read MXMARQUE next            
           perform display-file-status
           display "enr: ", cod-mmar, " ", lib-mmar
           read MXMARQUE next 
           perform display-file-status
           display "enr: ", cod-mmar, " ", lib-mmar
           read MXMARQUE next 
           perform display-file-status
           display "enr: ", cod-mmar, " ", lib-mmar
           
           accept omitted
      *     close MXMARQUE
           exit paragraph
           .
       

      *{Bench}end
       REPORT-COMPOSER SECTION.
