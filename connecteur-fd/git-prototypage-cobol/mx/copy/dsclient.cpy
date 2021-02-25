      * Tous les appels respectent le sch�ma suivant :
      * Initialisation d'un socket si DSC-HANDLE = NULL
      *   - Envoi des informations g�n�rales : PID, fichier, commande
      *   - Envoi du d�tail de la commande
      *   - R�ception du code g�n�ral de retour : code de retour (1, 2,
      *     ou 3) et nombre de r�sultats dans la r�ponse
      *   - code 1 et 3 : lecture des informations d'erreur
      *   - code 2 ou 3 : lecture des r�sultats (la longueur d�pend du
      *     nombre de r�sultats annonc�s pr�c�demment)
      *
      * Si une erreur de communication avec le serveur bas niveau
      * (lecture ou �criture �chou�e) est rencontr�e, le traitement est
      * interrompu et on bascule f-errno sur e-sys-err
      * Si une erreur est signal�es par le serveur (eof, ...) la routine
      * translate-remove-errno bascule f-errno sur l'erreur
      * correspondante
      *
      * A la sortie de l'appel DSCLIENT-<COMMAND>
      *   - f-errno est mis � jour de mani�re � pouvoir �tre interpr�t�
      *     par le handler correctement ; cette information est
      *     d�termin�e soit � partir de dsc-errno (erreur bas niveau)
      *     soit � partir de dsc-remote-errno (renvoy�e par le serveur)
      *   - DSC-LOCK-PID contient, dans le cas d'un
      *     enregistrement lock�, le pid du propri�taire du lock
      *   - DSC-MESSAGE contient l'erreur textuelle
      *   - DSC-RECORD contient le contenu de l'enregistrement dans le
      *     cas d'une lecture sans erreur
      
      
      * Initie les variables PROCESS-ID-CMD, DSC-SERVER-NAME et
      * DSC-SERVER-PORT (� partir de la configuration ou du runtime)
      * Ouvre une connexion au serveur BDD
      * Le handle de connexion est stock� dans DSC-HANDLE 
       DSCLIENT-INIT.
           perform dsclient-init-operation
           ACCEPT DSC-SERVER-NAME FROM ENVIRONMENT "DSCLIENT_HOSTNAME"
      * TODO charger � partir d'une variable d'environnement
           MOVE 10000 TO DSC-SERVER-PORT
           CALL "C$GETPID" GIVING PROCESS-ID-CMD
           exit paragraph
           .
      
      * Ouverture de la connexion r�seau ; appel� au d�marrage et en
      * cas de d�faillance de la connexion existante
       dsclient-open-connection.
           perform until dsc-connection-try > dsc-connection-try-max
               call "C$SOCKET" using ags-create-client, dsc-server-port,
                    dsc-server-name giving dsc-handle
               add 1 to dsc-connection-try
               if dsc-handle = NULL
                   set e-connection-failed to true
               else
      *            Connexion OK
                   exit perform
               end-if
           end-perform
           exit paragraph
           .

      * Init des variables d'�tat de l'appel
       dsclient-init-operation.
           set f-errno to 0
           set dsc-errno to 0
           set dsc-remote-errno to 0
           move 0 to dsc-connection-try
           move 0 to dsc-lock-pid
           move SPACES to dsc-message
           exit paragraph
           .

      * ATTENTION, cette routine remplit un buffer dsclient-send-buffer
      * mais ne l'envoie pas
      *
      * Initie une connexion pour un �change I/O
      * C'est la premi�re �tape qui envoie les informations g�n�rales
      * et communes � tous les appels :
      *   - PID
      *   - Handle OU Nom de fichier
      *   - La commande
      * Tous ces �l�ments sont dans le groupe DSCLIENT-COMMON-CMD
       DSCLIENT-INIT-CONNECTION.
      * DSC-FILENAME: nom du fichier (MXMARQUE, MXMARQUE2, ...)
      * DSC-FILE-HANDLE: Identifiant unique du fichier pour le process
      * COMMAND-CMD: le nom de la commande
           if dsc-handle = NULL
               perform dsclient-open-connection
           end-if
           MOVE DSC-FILENAME TO FILENAME-CMD
           MOVE DSC-FILE-HANDLE TO HANDLE-CMD
           move dsclient-common-cmd(0:length of dsclient-common-cmd)
               to dsclient-send-buffer(0:length of dsclient-common-cmd)
           move length of dsclient-common-cmd to dsclient-send-size
           exit paragraph
           .

      * Ordre read : fichier + mode
       DSCLIENT-OPEN.
           perform dsclient-init-operation
           MOVE "OPEN" TO COMMAND-CMD
           PERFORM DSCLIENT-INIT-CONNECTION
           if dsc-errno <> 0
               exit paragraph
           end-if
           MOVE DSC-OPEN-MODE TO OPEN-MODE-CMD
           move dsclient-open-cmd(1:length of dsclient-open-cmd)
             to dsclient-send-buffer(dsclient-send-size + 1:
               length of dsclient-open-cmd)
           add length of dsclient-open-cmd to dsclient-send-size
           call "c$socket" using ags-write, dsc-handle,
               dsclient-send-buffer, dsclient-send-size
               giving dsc-return-code
           if dsc-return-code <> dsclient-send-size
               display "err1" upon syserr
               set e-write-failed to true
               perform dsclient-fail-call
               exit paragraph
           end-if
           PERFORM DSCLIENT-READ-RESPONSE
           exit paragraph                                     
           .

      * Ordre rewrite : fichier + record key
       DSCLIENT-REWRITE.
           perform dsclient-init-operation
           MOVE "REWRITE" TO COMMAND-CMD
           PERFORM DSCLIENT-INIT-CONNECTION
           if dsc-errno <> 0
               exit paragraph
           end-if
           MOVE DSC-SENT-RECORD-SIZE TO RECORD-SIZE-CMD
                OF DSCLIENT-REWRITE-CMD
           move dsclient-rewrite-cmd
             to dsclient-send-buffer(dsclient-send-size + 1:
               length of dsclient-rewrite-cmd)
           add length of dsclient-rewrite-cmd to dsclient-send-size
           move dsc-record
             to dsclient-send-buffer(dsclient-send-size + 1:
               dsc-record-size)
           add dsc-record-size to dsclient-send-size
           call "c$socket" using ags-write, dsc-handle,
               dsclient-send-buffer, dsclient-send-size
               giving dsc-return-code
           if dsc-return-code <> dsclient-send-size
               set e-write-failed to true
               perform dsclient-fail-call
               exit paragraph
           end-if
           PERFORM DSCLIENT-READ-RESPONSE
           exit paragraph
           .

      * Ordre write : fichier
       DSCLIENT-WRITE.
           perform dsclient-init-operation
           MOVE "WRITE" TO COMMAND-CMD
           PERFORM DSCLIENT-INIT-CONNECTION
           if dsc-errno <> 0
               exit paragraph
           end-if
           move dsc-record
             to dsclient-send-buffer(dsclient-send-size + 1:
               dsc-record-size)
           add dsc-record-size to dsclient-send-size
           call "c$socket" using ags-write, dsc-handle,
               dsclient-send-buffer, dsclient-send-size
               giving dsc-return-code
           if dsc-return-code <> dsclient-send-size
               set e-write-failed to true
               perform dsclient-fail-call
               exit paragraph
           end-if
           PERFORM DSCLIENT-READ-RESPONSE
           exit paragraph
           .  

      * Ordre unlock : fichier
       DSCLIENT-UNLOCK.
           perform dsclient-init-operation
           MOVE "UNLOCK" TO COMMAND-CMD
           PERFORM DSCLIENT-INIT-CONNECTION
           if dsc-errno <> 0
               exit paragraph
           end-if
           call "c$socket" using ags-write, dsc-handle,
               dsclient-send-buffer, dsclient-send-size
               giving dsc-return-code
           if dsc-return-code <> dsclient-send-size
               set e-write-failed to true
               perform dsclient-fail-call
               exit paragraph
           end-if
           PERFORM DSCLIENT-READ-RESPONSE
           exit paragraph
           .

      * Ordre start :
      *   - fichier
      *   - le nom OU le num�ro de cl�
      *   - la valeur de cl�
      *   - l'op�rateur
      * Si absent, la record key est utilis� avec l'op�rateur EQUAL
      * La valeur de cl� est tout le temps prise en compte
       DSCLIENT-START.
      * DSC-START-KEY-NAME: nom de la cl� pour le filtrage
      * DSC-START-KEY-OPERATOR : >, <, =, <=, >=
           perform dsclient-init-operation
           MOVE "START" TO COMMAND-CMD
           PERFORM DSCLIENT-INIT-CONNECTION
           if dsc-errno <> 0
               exit paragraph
           end-if
           MOVE DSC-START-KEY-NAME TO KEY-NAME-CMD
                OF DSCLIENT-START-CMD
           MOVE DSC-START-KEY-NUMBER TO KEY-NUMBER-CMD
                OF DSCLIENT-START-CMD 
           MOVE DSC-SENT-RECORD-SIZE TO RECORD-SIZE-CMD
                OF DSCLIENT-START-CMD
           MOVE DSC-START-KEY-OPERATOR TO KEY-OPERATOR-CMD
                OF DSCLIENT-START-CMD
           move dsclient-start-cmd
             to dsclient-send-buffer(dsclient-send-size + 1:
               length of dsclient-start-cmd)
           add length of dsclient-start-cmd to dsclient-send-size
           move dsc-record
             to dsclient-send-buffer(dsclient-send-size + 1:
               dsc-sent-record-size)
           add dsc-sent-record-size to dsclient-send-size
           call "c$socket" using ags-write, dsc-handle,
               dsclient-send-buffer, dsclient-send-size
               giving dsc-return-code
           if dsc-return-code <> dsclient-send-size
               set e-write-failed to true
               perform dsclient-fail-call
               exit paragraph
           end-if
           PERFORM DSCLIENT-READ-RESPONSE
           exit paragraph
           .

      * Ordre de suppression : fichier + record key
       DSCLIENT-DELETE.
           perform dsclient-init-operation
           MOVE "DELETE" TO COMMAND-CMD
           PERFORM DSCLIENT-INIT-CONNECTION
           if dsc-errno <> 0
               exit paragraph
           end-if
           MOVE DSC-SENT-RECORD-SIZE TO RECORD-SIZE-CMD
                OF DSCLIENT-DELETE-CMD
           move dsclient-delete-cmd
             to dsclient-send-buffer(dsclient-send-size + 1:
               length of dsclient-delete-cmd)
           add length of dsclient-delete-cmd to dsclient-send-size
           move dsc-record
             to dsclient-send-buffer(dsclient-send-size + 1:
               dsc-sent-record-size)
           add dsc-sent-record-size to dsclient-send-size
           call "c$socket" using ags-write, dsc-handle,
               dsclient-send-buffer, dsclient-send-size
               giving dsc-return-code
           if dsc-return-code <> dsclient-send-size
               set e-write-failed to true
               perform dsclient-fail-call
               exit paragraph
           end-if
           PERFORM DSCLIENT-READ-RESPONSE
           exit paragraph
           .

      * Ordre de fermeture : fichier
       DSCLIENT-CLOSE.
           perform dsclient-init-operation
           MOVE "CLOSE" TO COMMAND-CMD
           PERFORM DSCLIENT-INIT-CONNECTION
           call "c$socket" using ags-write, dsc-handle,
               dsclient-send-buffer, dsclient-send-size
               giving dsc-return-code
           if dsc-return-code <> dsclient-send-size
               set e-write-failed to true
               perform dsclient-fail-call
               exit paragraph
           end-if
           PERFORM DSCLIENT-READ-RESPONSE
           .
      
      * Ordre de lecture :
      *   - fichier
      *   - le nom ou le num�ro de cl�
      *   - la valeur de la cl�
      *   - le sens de lecture
      *   - le recordNumber
      *   - lock (oui=1/non=0)
      *   - 1 si d�sactivation du cache. ATTENTION, dans
      *     l'impl�mentation actuelle, le serveur d�cide du nombre de
      *     r�sultats retourn�s
      *
      * Dans le cas d'une lecture avec cache + PREVIOUS/NEXT :
      *    Le recordNumber est fourni pour recaler la lecture
      * Dans le cas d'une lecture avec cl� :
      *    Pas de sens de lecture, pas de recordNumber
      * Dans le cas d'une lecture sans cache + PREVIOUS/NEXT :
      *    Pas d'information transmise, le serveur stocke l'�tat 
       DSCLIENT-READ.
      * Voir DSCLIENT-INIT-CONNECTION
      * DSC-SENT-RECORD-SIZE: la taille de l'enregistrement qui contient la cl�
      * DSC-READ-KEY-NAME: nom de la cl� pour le filtrage
      * DSC-READ-KEY-NUMBER: num�ro de la cl� (api C$REDIRECT)
      * DSC-READ-RECORD-NUMBER: lecture NEXT/PREVIOUS avec cache -
      *    permet au serveur de recaler le parcours
      * DSC-READ-DIRECTION: direction de parcours, NEXT ou PREVIOUS
      * DSC-READ-LOCK: un lock est-il n�cessaire
      * DSC-READ-CACHE-COUNT: 0 le serveur d�cide du nombre de
      *    r�sultats � retourner, 1 un seul r�sultat est retourn�
      * DSC-RECORD(1:DSC-RECORD-SIZE): l'enregistrement, qui contient la cl�
           perform dsclient-init-operation
           MOVE "READ" TO COMMAND-CMD
           PERFORM DSCLIENT-INIT-CONNECTION
           if dsc-errno <> 0
               exit paragraph
           end-if
           MOVE DSC-READ-KEY-NAME TO KEY-NAME-CMD
                OF DSCLIENT-READ-CMD
           MOVE DSC-READ-KEY-NUMBER TO KEY-NUMBER-CMD
                OF DSCLIENT-READ-CMD
           MOVE DSC-READ-RECORD-NUMBER TO RECORD-NUMBER-CMD
                OF DSCLIENT-READ-CMD 
           MOVE DSC-SENT-RECORD-SIZE TO RECORD-SIZE-CMD
                OF DSCLIENT-READ-CMD
           MOVE DSC-READ-DIRECTION TO DIRECTION-CMD
                OF DSCLIENT-READ-CMD
           MOVE DSC-READ-LOCK TO LOCK-CMD
                OF DSCLIENT-READ-CMD
           MOVE DSC-READ-CACHE-COUNT TO CACHE-COUNT-CMD
                OF DSCLIENT-READ-CMD
           move dsclient-read-cmd
             to dsclient-send-buffer(dsclient-send-size + 1:
               length of dsclient-read-cmd)
           add length of dsclient-read-cmd to dsclient-send-size
           move dsc-record
             to dsclient-send-buffer(dsclient-send-size + 1:
               dsc-sent-record-size)
           add dsc-sent-record-size to dsclient-send-size
           call "c$socket" using ags-write, dsc-handle,
               dsclient-send-buffer, dsclient-send-size
               giving dsc-return-code
           if dsc-return-code <> dsclient-send-size
               set e-write-failed to true
               perform dsclient-fail-call
               exit paragraph
           end-if
           PERFORM DSCLIENT-READ-RESPONSE
           exit paragraph
           .

       dsclient-update-error.
           if dsc-errno <> 0
               set e-sys-err to true
           exit paragraph
           .

      * Lit les r�ponses du serveur. Toutes les r�ponses sont
      * structur�es de la mani�re suivante :
      *   - le statut g�n�ral ; permet de d�terminer s'il y a eu erreur
      *     et s'il y a des r�sultats � extraire (DSC-COMMAND-STATUS)
      *     ainsi que le nombre de r�sultats (DSC-RECORD-COUNT)
      *     (groupe DSCLIENT-INTERNAL-STATUS)
      *   - si erreur : le bloc de l'erreur (DSC-ERROR-CODE)
      *   - si r�sultat : le bloc du r�sultat ; il peut �tre constitu�
      *     de 1 ou plusieurs lignes de r�sultats (cas du cache)
      *     Chaque ligne de r�sultat est constitu� du recordNumber
      *     puis de la ligne d'enregistrement au format Cobol.
      *     La longueur de lecture d�pend de DSC-RECORD-COUNT
       DSCLIENT-READ-RESPONSE.
           CALL "C$SOCKET" USING AGS-READ, DSC-HANDLE,
                DSCLIENT-INTERNAL-STATUS,
                LENGTH OF DSCLIENT-INTERNAL-STATUS,
                0
                GIVING DSC-RETURN-CODE
           if dsc-return-code <> LENGTH OF DSCLIENT-INTERNAL-STATUS
               set e-read-failed to true
               perform dsclient-fail-call
               exit paragraph
           end-if            
      *     DISPLAY "RETURN-CODE: ", DSC-RETURN-CODE
      *     DISPLAY "EXPECTED: ", LENGTH OF DSCLIENT-INTERNAL-STATUS
      *     DISPLAY "DSC-COMMAND-STATUS: ", DSC-COMMAND-STATUS
      *     DISPLAY "DSCLIENT-INTERNAL-STATUS: ",
      *             DSCLIENT-INTERNAL-STATUS
      *     DISPLAY "DSC-COMMAND-STATUS: ", DSC-COMMAND-STATUS 
           MOVE LOW-VALUES TO DSCLIENT-INTERNAL-ERROR
      * 1  - lecture de l'erreur
           IF DSC-COMMAND-STATUS = 1 OR 3 THEN
               CALL "C$SOCKET" USING AGS-READ, DSC-HANDLE,
                    DSCLIENT-INTERNAL-ERROR,
                    LENGTH OF DSCLIENT-INTERNAL-ERROR,
                    10000
                    giving dsc-return-code
               if dsc-return-code <> LENGTH OF DSCLIENT-INTERNAL-ERROR
                   set e-read-failed to true
                   perform dsclient-fail-call
                   exit paragraph
               end-if
               move dsc-error-code to dsc-remote-errno
               if dsc-remote-errno <> 0
                   move dsc-error-message to dsc-message
                   move dsc-error-lock-pid to dsc-lock-pid
                   perform translate-remote-errno
      *            On peut continuer les traitements
               end-if
           END-IF
      * 2  - lecture des enregistrements
           IF (DSC-COMMAND-STATUS = 2 OR 3)
           THEN
      *        Chaque r�sultat est constitu� du record number
      *        et de l'enregistrement -> on calcul la taille
               ADD LENGTH OF DSC-RECORD-NUMBER TO DSC-RECORD-SIZE
                   GIVING DSC-FULL-RECORD-MSIZE
      *        On multiplie par le nombre de r�sultats pour obtenir
      *        la taille du message � lire
               MULTIPLY DSC-FULL-RECORD-MSIZE BY DSC-RECORD-COUNT
                        GIVING DSC-FULL-RECORD-MSIZE
      *        V�rifier la taille du cache et ce qui est attendu
      *        * Si dsc-cache-pointer = null, il faut que
      *          DSC-RECORD-COUNT soit 1
      *        * Sinon il faut que la taille � r�cup�rer ne d�passe pas
      *          la taille du cache point�
               if dsc-cache-pointer <> null
                   set address of dsclient-cache to dsc-cache-pointer
                   CALL "C$SOCKET" USING AGS-READ, DSC-HANDLE,
                      dsc-cache-record,
                      DSC-FULL-RECORD-MSIZE,
                      10000
                      GIVING DSC-RETURN-CODE
                   if dsc-return-code <> DSC-FULL-RECORD-MSIZE
                       set e-read-failed to true
                       perform dsclient-fail-call
                       exit paragraph
                   end-if
      * Calcul des bornes de d�but et de fin pour l'enregistrement
                   MOVE 0 TO dsc-curIndexCache
                   MOVE 0 TO dsc-invalidatedCache
                   if dsc-read-direction = "NEXT"
                       move 1 to dsc-directionCache
                   else
                       move 0 to dsc-directionCache
                   end-if
                   move dsc-record-count to dsc-nbRecordCache
                   MULTIPLY dsc-curIndexCache BY DSC-RECORD-SIZE
                       GIVING DSC-INDEX-START
      * dsc-curIndexCache est 0-based, DSC-INDEX-START est 1-based
                   ADD 1 TO DSC-INDEX-START GIVING DSC-INDEX-START
      * R�cup�ration du recordNumber
                   MOVE dsc-cache-record(DSC-INDEX-START:12)
                       TO DSC-RECORD-NUMBER
                   ADD LENGTH OF DSC-RECORD-NUMBER TO DSC-INDEX-START
                       GIVING DSC-INDEX-START
      * R�cup�ration de l'enregistrement courant
                   ADD DSC-INDEX-START TO DSC-RECORD-SIZE
                       GIVING DSC-INDEX-STOP
                   MOVE dsc-cache-record
                       (DSC-INDEX-START:DSC-RECORD-SIZE)
                       TO DSC-RECORD
               else
      *            Fonctionnement sans cache
                   add dsc-record-size to length of dsc-record-number
                       giving dsc-full-record-size
                   CALL "C$SOCKET" USING AGS-READ, DSC-HANDLE,
                       dsc-buffer,
                       dsc-full-record-size,
                       10000
                       GIVING DSC-RETURN-CODE
                   if dsc-return-code <> dsc-full-record-size
                       set e-read-failed to true
                       perform dsclient-fail-call
                       exit paragraph
                   end-if
                   move dsc-buffer
                       (length of dsc-record-number:dsc-record-size)
                       to dsc-record
               end-if
           END-IF
      * Code supprim� car il ralentit les �changes rapides
      * On vide le buffer par s�curit�, avec un timeout tr�s faible
      *     call "C$SOCKET" using ags-read, dsc-handle,
      *                 dsc-buffer,
      *                 dsc-full-record-size,
      *                 10
      *                 giving dsc-return-code
      * Le buffer est sens� �tre vide ; s'il n'est pas vide, c'est
      * que les tailles de donn�es entre java et cobol ne correspondent
      * pas                 
      *     if dsc-return-code <> 0                                      REDIRECT
      *         display "Buffer non vide: ", dsc-return-code upon syserr REDIRECT
      *     end-if                                                       REDIRECT
           exit paragraph
           .

       translate-remote-errno.
      * Positionne le flag f-errno dans la position correspondant �
      * l'erreur rencontr�e
           evaluate true
           when e-dsc-dup-ok set w-dup-ok to true 
           when e-dsc-eof set e-not-found to true
           when e-dsc-dup set e-duplicate to true
           when e-dsc-not-found set e-not-found to true
           when e-dsc-system set e-sys-err to true
           when e-dsc-locked-record set e-rec-locked to true
           when other set e-sys-err to true
           exit paragraph
           .

       dsclient-fail-call.
      * Erreur de communication socket
           if dsc-errno <> 0
               set e-sys-err to true
           end-if
           perform dsclient-close-connection
           exit paragraph
           .

       dsclient-close-connection.
           if dsc-handle <> null
               call "C$SOCKET" using ags-close, dsc-handle
               set dsc-handle to null
           end-if
           exit paragraph
           .
