      *------------------------------------
       identification              division.
       program-id. newhandler.    
       environment                 division.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
      *{Bench}activex-def
      *{Bench}end
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
      *{Bench}file-control
      *{Bench}end
      *------------------------------------
       data                        division.
       FILE SECTION.
      *{Bench}file
      *{Bench}end
       working-storage             section.
      *{Bench}acu-def
       COPY "acugui.def".
       COPY "acucobol.def".
       COPY "crtvars.def".
       COPY "showmsg.def".
      *{Bench}end
      * Permet de faire un premier appel au programme sans réaliser
      * d'action (de manière à autoriser les chargements d'entry points)
      * (bascule à 1 lors de la première invocation, les appels suivants
      * procèdent aux traitements des IO).
       01 init                     pic 9(1) value 1.
      * Variable pour tester des entry-point permettant de configurer
      * le handler
       01 config-test              pic x(10) value LOW-VALUE.
      * Réécriture de handler-file-name avec NULL de terminaison
       01 fileName                 pic x(256).
      * Handle interne, choisi par recherche de handler-file-handle
      * dans tbHandles
       01 fileHandle               usage pointer.
      * Réécriture des paramètres de clé pour création fichier indexé
       01 keys                     pic x(1000).
       01 wk1                      pic x(1000).
      * Variables de parcours pour les clés ou la recherche de handle
       01 i                        pic s9(9).
       01 j                        pic s9(9).
      * Type de fichier manipulé (stocké dans tbHandles et mis à
      * disposition dans cette variable lors de la récupération du
      * handle pour l'opération en cours
       01 fileType                 signed-short.
           88 ft-relative          value 1.
           88 ft-sequential        value 2.
           88 ft-indexed           value 3.
           88 ft-indexed-db        value 4.
      * Mapping du mode d'ouverture (entier vers chaine attendue par
      * Java/BDD : INPUT, OUTPUT ou I-O)
       01 dbOpenMode               pic x(12).
      * Mapping de l'opérateur start (entier vers chaine)
      * =, <, >, <=, >=
       01 dbStartOperator          pic x(12).
      * Préfixe du nom de fichier, pour détection BDD
      * Les fichiers base de données sont préfixés par BD:
       01 filePrefix               pic x(3).
       01 dbFilePrefix             pic x(3) value "DB:".
      * Stockage des correspondances handle externe et interne
       01 tbHandles.
           03 nbHandles            pic 9(4) value 0.
           03 numHandle            pic 9(4) value 0.
           78 maxNbHandles         value 256.
           03 tbHandle occurs maxNbHandles.
               05 tbHandleHdl      usage pointer.
               05 tbHandlePost     usage pointer.
               05 tbHandleMode     signed-short.
      *        numéro du cache utilisé
               05 tbHandleCacheNb  pic x(3).
               05 tbHandleFileType signed-short.
           78 lTbHandle            value 8.
      * Caches de préchargement
       01 iCache                   pic 9(3) value 0.
       01 tbCaches.
      *    Index du cache courant
           03 numCache             pic 9(3) value 0.
           03 indexStartCache      pic 9(6).
           03 curRecordNumberCache pic 9(12) value 0.
      * Taille d'un enregistrement + taille recordNumber
           03 curCacheItemSize     pic 9(10) value 0.
           78 maxNbCaches          value 30.
           78 maxLnCache           value 600000.
           03 cache occurs maxNbCaches.
      *        la zone est-elle utilisée 1 oui, 0 non 
               05 usedCache        pic 9(1) value 0.
      *        le cache est-il invalide 1 oui, 0 non
               05 invalidatedCache pic 9(1) value 1.
      *        nombre d'enregistrements dans le cache
               05 nbRecordCache    pic 9(4) value 0.
      *        0 inconnu, 1 next, 2 previous
               05 directionCache   pic 9(1) value 0.
      *        index courant, 1-based
               05 curIndexCache    pic 9(4) value 0.
               05 cache-record.
                   08 cache-record-bytes occurs maxLnCache pic X.
      * stockage des USAGE POINTER pour permettre l'affichage sur syserr
       01 cobolExternalHandle      pic 9(10).
       01 cobolInternalHandle      pic 9(10).
       01 cobolTempInternalHandle  pic 9(10).
      * valeur qui va contenir la combinaison AND bit à bit de
      * handler-open-mode et open-create-mode
       01 open-test-create-mode    signed-short.
       01 open-create-mode         signed-short value 3.
      * c'est la la seule valeur de open-test-create-mode pour laquelle
      * il faut recréer le fichier
       01 open-recreate-mode       signed-short value 1.
      * contient le résultat de checkMode, qui indique si un fichier
      * doit être créé
       01 open-make-needed         signed-short value 0.
      * Stockage du retour de C$FILEINFO
       01  FILE-INFO.
           02  FILE-SIZE    PIC X(8) COMP-X.
           02  FILE-DATE    PIC 9(8) COMP-X.
           02  FILE-TIME    PIC 9(8) COMP-X.
      * exemple de champ de configuration
       01  config-custom-field pic X(10).
       01  h-errno                 signed-short.
           88 e-not-opened         value 1.
           88 e-bad-mode           value 2.
           88 e-already-opened     value 3.
      * lors de l'ouverture, stocke le mode d'ouverture souhaité
      * de manière à pouvoir l'enregistrer dans tbHandleMode
      * lors d'un appel i-o, initialisé par checkHandle lors de la
      * recheerche du handle existant
       01  h-mode                  signed-short.
           88 m-read               value 1.
           88 m-write              value 2.
           88 m-io                 value 3.
      * associe les opérations à un mode d'ouverture
       01  op-mode                  signed-short.
           88 op-read               value 1.
           88 op-write              value 2.
           88 op-io                 value 3.
      * Nécessite les déclarations de taille de cache
       COPY "dsclient-messages.wrk".
       COPY "dsclient-internal.wrk".
       COPY "dsclient-server-config.wrk".
      * Nécessaire seulement pour PROCESS-ID, LK-USERPROC-PROCESS-ID !
      * (qui viennent du showmsg.cpy personalisé)
       copy "../copy/cobcap.wrk".
       copy "filesys.def".
       copy "socket.def".
       copy "envmis-handler.wrk".
       copy "envmis-stat.wrk".
      *------------------------------------
      *{Bench}copy-working
      * 77 Key-Status IS SPECIAL-NAMES CRT STATUS PIC 9(4) USAGE [None] VALUE 0.
      *     88 Exit-Pushed VALUE 27.
      *     88 Message-Received VALUE 95.
      *     88 Event-Occurred VALUE 96.
      *     88 Screen-No-Input-Field VALUE 97.
      *     88 Screen-Time-Out VALUE 99.
      * property-defined variable

      * user-defined variable

      *{Bench}end
       linkage                     section.
       copy "handler.cpy".
       copy "envmis-handler-linkage.cpy".
      
      * Placé dans le link-storage pour pouvoir utiliser un pointeur
      * Cette structure doit être identique à cache de newhandler
      * On manipule la zone par exploitation d'un pointeur
      * Les champs sont documentés côté handler
       01 dsclient-cache.
           02 dsc-usedCache         pic 9(1) value 0.
           02 dsc-invalidatedCache  pic 9(1) value 1.
           02 dsc-nbRecordCache     pic 9(4) value 0.
           02 dsc-directionCache    pic 9(1) value 0.
           02 dsc-curIndexCache     pic 9(4) value 0.
           02 dsc-cache-record.
               03 dsc-cache-record-bytes occurs maxLnCache pic X.
      *------------------------------------
      *{Bench}linkage
      *{Bench}end
       SCREEN SECTION.
      *{Bench}copy-screen

      *{Bench}end
       procedure division using
             handler-info 
             handler-file-info 
             handler-state-info 
             handler-return-status.

      * Utilise les implémentations adéquates en fonction de
      * handler-file-organization
       main.
           if init = 1
             display "mis-handler init call" upon syserr                REDIRECT
             perform dsclient-init
             move 0 to init
             exit program
             stop run
           end-if
           perform init-variables
           display "i-o filename: ", handler-file-name upon syserr      REDIRECT
      * Si ouverture, vérification si réouverture
           evaluate true
            when handler-op-open
                perform checkHandle
                if numHandle <> 0
                    set e-already-opened to true
                    perform update-error
                    exit program
                    stop run
                end-if
            when other continue
           end-evaluate
      * Détermination du type d'opération (read, write, io) pour
      * vérification de la compatbilité du mode
           evaluate true
            when handler-op-write         set op-write to true
            when handler-op-rewrite       set op-io to true
            when handler-op-delete        set op-io to true
            when handler-op-start         set op-read to true
            when handler-op-read          set op-read to true
            when handler-op-read-lock     set op-read to true
            when handler-op-previous      set op-read to true
            when handler-op-previous-lock set op-read to true
            when handler-op-next          set op-read to true
            when handler-op-next-lock     set op-read to true
            when handler-op-unlock        set op-read to true
            when handler-op-unlock-all    set op-read to true
            when other                    continue
           end-evaluate
           evaluate true
      * Le unlockAll n'est pas attaché à un type de fichier
             when handler-op-unlock-all perform unlockAll
             when handler-organization-indexed
                  perform mapFilePrefix
                  perform handle-indexed
             when handler-organization-sequential
                  perform handle-sequential
             when handler-organization-relative
                  perform handle-relative
             when other display "organisation fichier inconnnue"
                           upon syserr
           end-evaluate
           exit program
           stop run
           .

       init-variables.
           move 0 to fileHandle
           move 0 to numHandle
           move 0 to numCache
           move spaces to handler-last-mode
           set fileType to 0
           set h-mode to 0
           set op-mode to 0
      *    Reset error status
           set f-errno to 0
           set h-errno to 0
           initialize handler-stat
           initialize handler-text-message
           initialize dsc-cache-pointer
           initialize curRecordNumberCache
      *    On met dans ce champ une valeur de pointeur qui peut faire
      *    4 ou 8 octets selon les plateformes. On initialize à zéro
      *    (hex) comme ça si le move handler-file-handle to dsc-file-handle
      *    n'initialise pas la variable en entier, les valeurs non
      *    écrasées seront déterministes
           move x"0000000000000000" to dsc-file-handle
           exit paragraph
           .

       copy "dsclient.cpy".

       mapFilePrefix.
           move low-values to filePrefix
           move handler-file-name(1:3) to filePrefix
           if filePrefix <> dbFilePrefix
               move low-values to filePrefix
           end-if
           display "filePrefix: ", filePrefix upon syserr               REDIRECT
           exit paragraph
           .

      * Choisit la fonction adéquate de i$io en fonction de l'opération
      * en cours
       handle-indexed.
           evaluate true
            when handler-op-open          perform iOpen
            when handler-op-write         perform iWrite
            when handler-op-rewrite       perform iRewrite
            when handler-op-delete        perform iDelete
            when handler-op-remove        perform iDeleteFile
            when handler-op-close         perform iClose
            when handler-op-start         perform iStart
            when handler-op-read          perform iRead
            when handler-op-read-lock     perform iReadLock
            when handler-op-previous      perform iPrevious
            when handler-op-previous-lock perform iPreviousLock
            when handler-op-next          perform iNext
            when handler-op-next-lock     perform iNextLock
            when handler-op-unlock        perform iUnlock
            when handler-op-start-transaction
                perform iStartTransaction
            when handler-op-commit-transaction
                perform iCommitTransaction
            when handler-op-rollback-transaction
                perform iRollbackTransaction
      * unlockAll est traité à un niveau général          
            when other                    continue
           end-evaluate
           exit paragraph
           .

      * Choisit la fonction adéquate de s$io en fonction de l'opération
      * en cours 
       handle-sequential.
           evaluate true
            when handler-op-open          perform sOpen
            when handler-op-write         perform sWrite
            when handler-op-rewrite       perform sRewrite
            when handler-op-close         perform sClose
            when handler-op-previous      perform sPrevious
            when handler-op-previous-lock perform sPreviousLock
            when handler-op-next          perform sNext
            when handler-op-next-lock     perform sNextLock
            when handler-op-remove        perform sDeleteFile
            when handler-op-delete               continue
            when handler-op-unlock               continue
            when handler-op-unlock-all           continue
            when handler-op-read                 continue
            when handler-op-read-lock            continue
            when handler-op-start-transaction    continue
            when handler-op-commit-transaction   continue
            when handler-op-rollback-transaction continue
            when other                           continue
	   end-evaluate
           exit paragraph
           .

      * Choisit la fonction adéquate de r$io en fonction de l'opération
      * en cours
       handle-relative.
           evaluate true
            when handler-op-open          perform rOpen
            when handler-op-write         perform rWrite
            when handler-op-rewrite       perform rRewrite
            when handler-op-delete        perform rDelete
            when handler-op-remove        perform rDeleteFile
            when handler-op-close         perform rClose
            when handler-op-start         perform rStart
            when handler-op-read          perform rRead
            when handler-op-read-lock     perform rReadLock
            when handler-op-previous      perform rPrevious
            when handler-op-previous-lock perform rPreviousLock
            when handler-op-next          perform rNext
            when handler-op-next-lock     perform rNextLock
            when handler-op-unlock        perform rUnlock
            when handler-op-start-transaction    continue
            when handler-op-commit-transaction   continue
            when handler-op-rollback-transaction continue
      * unlockAll est traité à un niveau général
            when other                           continue
           end-evaluate
           exit paragraph
           .

      * Vérifie si le mode OPEN nécessite une création de fichier
      * Modifie dbOpenMode, h-mode (m-read, m-write, m-io) et
      * open-make-needed 
       checkMode.
      * reset de la valeur de retour
           move 0 to open-make-needed
           move low-values to dbOpenMode
           move handler-open-mode to open-test-create-mode
           call "CBL_AND" using open-create-mode open-test-create-mode
      * input / pas de création
           if open-test-create-mode = 0
               set m-read to true
               move "INPUT" to dbOpenMode
               exit paragraph
           end-if
      * output ; création systématique
           if open-test-create-mode = open-recreate-mode
               set m-write to true
               move "OUTPUT" to dbOpenMode
               display "make/fichier à créer: ", handler-file-name      REDIRECT
                   upon syserr                                          REDIRECT
               move 1 to open-make-needed
               exit paragraph
           end-if
           set m-io to true
           move "I-O" to dbOpenMode
      * i-o ou extend ; création conditionnelle
           call "C$FILEINFO"
               using handler-file-name, file-info
           if return-code <> 0
               move 1 to open-make-needed
               display "make/fichier à créer: ", handler-file-name      REDIRECT
                   upon syserr                                          REDIRECT
               exit paragraph
           end-if
           display "make/fichier existant: ", handler-file-name         REDIRECT
                   upon syserr                                          REDIRECT
           exit paragraph
           .

       mapStartOperator.
           evaluate true
           when handler-start-equal
               move "=" to dbStartOperator
           when handler-start-not-less
               move ">=" to dbStartOperator
           when handler-start-greater
               move ">" to dbStartOperator
           when handler-start-less
               move "<" to dbStartOperator
           when handler-start-not-greater
               move "<=" to dbStartOperator
           end-evaluate
           exit paragraph
           .

      * Affiche (debug) les informations d'état de l'opération IO
       performStat.
      * Le redirection sur syserr n'est pas possible pour les valeurs numériques
           display "f-errno: ", f-errno upon syserr                     REDIRECT
           display "return-code: ", return-code upon syserr             REDIRECT
      * Non utilisé                    
           display "f-int-errno: ", f-int-errno upon syserr             REDIRECT
           display "f-int2-errno: ", f-int2-errno upon syserr           REDIRECT
           exit paragraph
           .
      * Vérifie la présence d'un handle. numHandle positionné sur
      * la valeur adéquate si trouvé; numHandle = 0 sinon.
      * Utilisé à l'ouverture pour vérifier si déjà ouvert
      * Utilisé avant toute opération pour récupérer le handle effectif
      * et vérifier que le mode est compatible
       checkHandle.
           move 0 to numHandle
           display "nbHandles: ", nbHandles upon syserr                 REDIRECT
           move handler-file-handle to cobolExternalHandle
           display "search: ", cobolExternalHandle upon syserr          REDIRECT
           perform varying i from 1 by 1 until i > nbHandles
               if tbHandleHdl(i) = handler-file-handle
                   move tbHandlePost(i) to fileHandle
                   set fileType to tbHandleFileType(i)
                   move i to numHandle                       
                   move fileHandle to cobolInternalHandle
                   set h-mode to tbHandleMode(numHandle)
                   display "findHandle: ", cobolInternalHandle,         REDIRECT
                       " (", numHandle ")"                              REDIRECT
                       upon syserr                                      REDIRECT
                   exit perform
               end-if
           end-perform
           exit paragraph
           .
      * Extrait un handle peuplé par un appel OPEN. Si le handle n'est
      * pas trouvé, update-error est appelé et l'exécution est
      * interrompue de manière précoce
       findHandle.
           perform checkHandle
      *    Handle de fichier non trouvé
           if numHandle = 0
               set e-not-opened to true
           end-if
      *    Handle de fichier trouvé, check du mode
           if numHandle <> 0 and h-mode <> 0
               if op-read and not (m-read or m-io)
                   set e-bad-mode to true
               end-if
               if op-write and not (m-write or m-io)
                   set e-bad-mode to true
               end-if
               if op-io and not m-io
                   set e-bad-mode to true
               end-if
           end-if
      *    Interruption du traitement si erreur de handle ou de mode
           if h-errno <> 0
               perform update-error
               exit program
               stop run
           end-if
      *    Identification du cache si disponible
           if ft-indexed-db and tbHandleCacheNb(numHandle) <> 0
               move tbHandleCacheNb(numHandle) to numCache
               add length of curRecordNumberCache
                   to handler-max-lrec-size
                   giving curCacheItemSize
               display "Sélection du cache #", numCache upon syserr     REDIRECT
               if numCache <> 0
                   set dsc-cache-pointer to address of cache(numCache)
               else
                   set dsc-cache-pointer to null
               end-if
               display "Set cache pointer: ", dsc-cache-pointer         REDIRECT
                   upon syserr                                          REDIRECT
           exit paragraph
           .

       storeHandle.
           add 1 to nbHandles
           move handler-file-handle to tbHandleHdl(nbHandles)
           move handler-file-handle to cobolExternalHandle
           move fileHandle to tbHandlePost(nbHandles)
           set tbHandleFileType(nbHandles) to fileType
           set tbHandleMode(nbHandles) to h-mode
           move fileHandle to cobolInternalHandle
           move nbHandles to numHandle
           display "handle added: ", cobolExternalHandle, " -> ",       REDIRECT
               cobolInternalHandle, " (", nbHandles, ")"                REDIRECT
               upon syserr                                              REDIRECT
      *    Initialisation d'un cache pour les fichiers indexés
           if ft-indexed-db
               perform initCache
           else
               move 0 to tbHandleCacheNb(numHandle)
           end-if
           exit paragraph
           .
     
      * Supprime un handle (appelé à la fermeture). Pour un handle
      * positionné à l'index (1-based) n, on déplace tous les handles
      * d'index m >= n+1 à l'index m-1
       deleteHandle.
           if numHandle = 0
               display "handle à supprimer non fourni" upon syserr
               exit paragraph
           end-if
      * Libération du cache
           if numCache <> 0
               move 0 to usedCache(numCache)
               move 0 to tbHandleCacheNb(numHandle)
               move 0 to numCache
               display "Libération du cache #", numCache                REDIRECT
                   upon syserr                                          REDIRECT
           end-if
           display "deleteHandle: ", cobolInternalHandle,               REDIRECT
               " (", numHandle ")"                                      REDIRECT
               upon syserr                                              REDIRECT
      * Les valeurs numHandle et fileHandle doivent être cohérentes     
           if tbHandlePost(numHandle) <> fileHandle
               move tbHandlePost(numHandle) to cobolTempInternalHandle
               display "handle incohérent: ",                           REDIRECT
                   cobolTempInternalHandle, " - ", cobolInternalHandle  REDIRECT
                   upon syserr                                          REDIRECT
           end-if
      * On supprime l'enregistrement courant (nécessaire dans le cas
      * où on supprime le dernier élément, car il n'y a pas
      * d'enregistrement n+1 donc la boucle suivant ne va pas l'écraser
           initialize tbHandle(numHandle)
           compute i = numHandle + 1
           perform varying i from i by 1 until i > nbHandles
               compute j = i - 1
               move tbHandle(i) to tbHandle(j)
               move tbHandlePost(i) to cobolTempInternalHandle
               initialize tbHandle(i)
               display "move: ", cobolTempInternalHandle, " (", i, ")", REDIRECT
                   " -> index: ", j upon syserr                         REDIRECT
           end-perform
           subtract 1 from nbHandles
           display "nbHandles: ", nbHandles upon syserr                 REDIRECT
           exit paragraph
           .

       initCache.
           perform varying iCache from 1 by 1 until i > maxNbCaches
      *        Vérification occupation de l'espace. Si 0 non utilisé
               if usedCache(iCache) = 0
                   move iCache to numCache
                   move iCache to tbHandleCacheNb(numHandle)
      *            Initialisation du cache
                   move 1 to usedCache(numCache)
                   initialize nbRecordCache(numCache)
                   move 1 to  invalidatedCache(numCache)
                   initialize directionCache(numCache)
                   initialize curIndexCache(numCache)
                   display "Attribution cache #", numCache upon syserr  REDIRECT
                   exit perform
               end-if
               if numCache = 0                                          REDIRECT
                   display "Pas de cache disponible" upon syserr        REDIRECT
               end-if                                                   REDIRECT
           end-perform
           .

      * Ouvre un fichier indexé
       iOpen.
           string handler-file-name h"00" 
               delimited space into fileName
	   display "open: ", fileName upon syserr                       REDIRECT
      *    permet de savoir si la création de fichier et nécessaire
      *    et de positionner tbHandleMode dans la table des handles
      *    grâce à h-mode
           perform checkMode
           if filePrefix = dbFilePrefix
               move dbOpenMode to dsc-open-mode
               move handler-file-name to dsc-filename
      *    Les subscripts sont importants pour forcer la copie bit à bit
               move handler-file-handle(1:8) to dsc-file-handle(1:8)
      *    Ce code permet d'obtenir dans hexFileHandle PIC X(16).
      *    La représentation hexadécimale du pointeur (c'est ce qui
      *    est utilisé côté serveur Java en plus du numéro de process
      *    pour identifier l'ouverture de fichier.
      *         call "ascii2hex" using dsc-file-handle(1:2),
      *             hexFileHandle(1:4)
      *         call "ascii2hex" using dsc-file-handle(3:2),
      *             hexFileHandle(5:4)
      *         call "ascii2hex" using dsc-file-handle(5:2),
      *             hexFileHandle(9:4)
      *         call "ascii2hex" using dsc-file-handle(7:2),
      *             hexFileHandle(13:4)
               perform dsclient-open
      * Traitement des erreurs ou enregistrement du handle
               if f-in-error
                   perform update-error
               else
      * Pour les accès BDD, l'handler externe = handler interne
                   move handler-file-handle to fileHandle
                   set ft-indexed-db to true
                   perform storeHandle
               end-if
               exit paragraph
           end-if
           if open-make-needed = 1
               perform iMake
           end-if
           perform iOpenExisting
           exit paragraph
           .
		   
       iOpenExisting.
           set open-function to true
           call "i$io" using io-function
               fileName handler-open-mode handler-logical-params
           perform performStat                                          REDIRECT
           if return-code = NULL
               perform update-error
               exit program
               stop run
           end-if
           move return-code to fileHandle
           set ft-indexed to true
           perform storeHandle
           exit paragraph
           .
       iMake.
           display "make: ", handler-file-name upon syserr              REDIRECT
           set make-function to true
           string handler-file-name h"00" 
               delimited space into fileName
           initialize keys
           perform varying i from 1 by 1 until i > handler-number-keys
               initialize wk1
               string keys handler-keydesc(i) delimited space into wk1
               move wk1 to keys 
               perform varying j from 1 by 1 
               until j > handler-number-segments(i)
                   initialize wk1
                   string keys handler-segdesc(i,j) 
                       delimited space into wk1
                   move wk1 to keys
               end-perform
               string keys "," delimited space into wk1
               move wk1 to keys
           end-perform
           initialize wk1
           string keys h"00" delimited space into wk1
           move wk1 to keys
           call "i$io" using io-function
               fileName NULL NULL handler-logical-params keys
           perform performStat                                          REDIRECT 
           perform update-error
           exit paragraph
           .
       iClose.
           display "close: ", handler-file-name upon syserr             REDIRECT
           perform findHandle
           if filePrefix = dbFilePrefix
               move handler-file-name to dsc-filename
               move handler-file-handle(1:8) to dsc-file-handle(1:8)
               perform dsclient-close
           else
               set close-function to true
               call "i$io" using io-function fileHandle
           end-if 
           perform performStat                                          REDIRECT
           perform update-error
           perform deleteHandle
           exit paragraph
           .
       iWrite.
           display "write: ", handler-file-name upon syserr             REDIRECT
           perform findHandle
           perform iInvalidateCache
           if filePrefix = dbFilePrefix
               move handler-file-name to dsc-filename
               move handler-file-handle(1:8) to dsc-file-handle(1:8)
               move handler-record-area to dsc-record
               move handler-max-lrec-size to dsc-record-size
               perform dsclient-write
           else
               set write-function to true
               call "i$io" using io-function
                   filehandle handler-record-area HANDLER-MAX-LREC-SIZE
           end-if
           perform performStat                                          REDIRECT
           perform update-error
           exit paragraph
           .
       iRewrite.
           display "rewrite: ", handler-file-name upon syserr           REDIRECT
           perform findHandle
           perform iInvalidateCache
           if filePrefix = dbFilePrefix
               move handler-record-area(1:handler-max-lrec-size)
                   to dsc-record
               move handler-file-name to dsc-filename
               move handler-file-handle(1:8) to dsc-file-handle(1:8)
               move handler-max-lrec-size to dsc-record-size
               move handler-max-lrec-size to dsc-sent-record-size
               perform dsclient-rewrite
           else
               set rewrite-function to true
               call "i$io" using io-function
                   filehandle handler-record-area HANDLER-MAX-LREC-SIZE
           end-if
           perform performStat                                          REDIRECT
           perform update-error
           exit paragraph
           .
       iDelete.
           display "delete: ", handler-file-name upon syserr            REDIRECT
           perform findHandle
           perform iInvalidateCache
           if filePrefix = dbFilePrefix
               move handler-record-area(1:handler-max-lrec-size)
                   to dsc-record
               move handler-file-name to dsc-filename
               move handler-file-handle(1:8) to dsc-file-handle(1:8)
               move handler-max-lrec-size to dsc-sent-record-size
               perform dsclient-delete
           else
               set delete-function to true
               call "i$io" using io-function
                   filehandle handler-record-area
           end-if
           perform performStat                                          REDIRECT
           perform update-error
           exit paragraph
           .
       iInvalidateCache.
      *    invalide le cache mais conserve la position
      *    (cas où on ne veut pas réutiliser les données de cache mais
      *    où il est nécessaire de conserver la position actuelle pour
      *    réaliser une nouvel appel à la BDD).
           if numCache <> 0
               move 1 to invalidatedCache(numCache)
           end-if
           exit paragraph
           .
       iInvalidateCacheAndResetPosition.
      *    invalide le cache et supprimer la position actuelle
      *    (pour tous les cas où on repositionne le curseur)
           if numCache <> 0
               move 1 to invalidatedCache(numCache)
               move 0 to nbRecordCache(numCache)
               move 0 to curIndexCache(numCache)
           end-if
           exit paragraph
           .
       iStart.
           display "start: ", handler-file-name upon syserr             REDIRECT
           display "key-number: ", handler-key-number upon syserr       REDIRECT
           perform findHandle
           if filePrefix = dbFilePrefix
               perform iInvalidateCacheAndResetPosition
               move handler-record-area(1:handler-max-lrec-size)
                   to dsc-record
               perform mapStartOperator
               move handler-file-name to dsc-filename
               move handler-file-handle(1:8) to dsc-file-handle(1:8)
               move low-values to dsc-start-key-name
               move handler-key-number to dsc-start-key-number
               move handler-max-lrec-size to dsc-sent-record-size
               display "key-number: ", dsc-start-key-number upon syserr REDIRECT
               move dbStartOperator to dsc-start-key-operator
               perform dsclient-start
           else
               set start-function to true
               call "i$io" using io-function
                   filehandle handler-record-area handler-key-number
                   handler-start-key-size handler-start-mode
           end-if
           perform performStat                                          REDIRECT
           perform update-error
           exit paragraph
           .
       iRead.
           move 1 to f-no-lock
           perform iReadCommon
           exit paragraph
           .
       iReadLock.
           move 0 to f-no-lock
           perform iReadCommon
           exit paragraph
           .
       iReadCommon.
           display "read: ", handler-file-name upon syserr              REDIRECT
           perform findHandle
           perform iInvalidateCacheAndResetPosition
           if filePrefix = dbFilePrefix
               move handler-record-area(1:handler-max-lrec-size)
                   to dsc-record
               move handler-file-name to dsc-filename
               move handler-file-handle(1:8) to dsc-file-handle(1:8)
               move handler-key-number to dsc-read-key-number
               move low-values to dsc-read-key-name
               move low-values to dsc-read-direction
               move 0 to dsc-read-record-number
               move 0 to dsc-read-cache-count
               if f-no-lock = 1
                   move 0 to dsc-read-lock
               else
                   move 1 to dsc-read-lock
               end-if
               move handler-max-lrec-size to dsc-record-size
               move handler-max-lrec-size to dsc-sent-record-size
               perform dsclient-read
               if not f-in-error
                   move dsc-record(0:handler-max-lrec-size)
                       to handler-record-area
               end-if
           else
               set read-function to true
               call "i$io" using io-function
                   filehandle handler-record-area handler-key-number
           end-if
           perform performStat                                          REDIRECT
           perform update-error
           exit paragraph
           .
       iNext.
           move 1 to f-no-lock
           set next-function to true
           perform iContextualCommon
           exit paragraph
           .
       iNextLock.
           move 0 to f-no-lock
           set next-function to true
           perform iContextualCommon
           exit paragraph
           .
       iComputeCacheIndex.
           exit paragraph
           .
       iCheckAndLoadFromCache.
      *    Vérification de l'index de cache et extraction du résultat
      *    si index compatible
           if numCache = 0
               exit paragraph
           end-if
           if invalidatedCache(numCache) = 1
               exit paragraph
           end-if
           if curIndexCache(numCache) + 1 >= nbRecordCache(numCache)
               exit paragraph
           end-if
           add 1 to curIndexCache(numCache)
           perform iLoadFromCache
           exit paragraph
           .
       iLoadFromCache.
      *    curIndexCache(numCache) doit avoir été vérifié et mis à jour
           move curIndexCache(numCache) to indexStartCache
           multiply indexStartCache by curCacheItemSize
               giving indexStartCache
           add 1 to indexStartCache
           move cache-record(numCache)
               (indexStartCache:length of curRecordNumberCache)
               to curRecordNumberCache
           move cache-record(numCache)
               (indexStartCache + length of curRecordNumberCache:
               handler-max-lrec-size)
               to handler-record-area
           exit paragraph
           .
       iContextualCommon.
           perform findHandle
           if next-function                                             REDIRECT
               display "next: ", handler-file-name upon syserr          REDIRECT
           else                                                         REDIRECT
               display "prev: ", handler-file-name upon syserr          REDIRECT
           end-if                                                       REDIRECT
           if numCache <> 0 and invalidatedCache(numCache) <> 1
               if f-no-lock = 0
      *            Si lock: pas de cache, pas de chargement du cache
                   perform iInvalidateCache
               end-if
               if next-function and directionCache(numCache) = 0
                   perform iInvalidateCache
                   display "Invalidation du cache (chgmt direction)"    REDIRECT
                       upon syserr                                      REDIRECT
               end-if
               if previous-function and directionCache(numCache) = 1
                   perform iInvalidateCache
                   display "Invalidation du cache (chgmt direction)"    REDIRECT
                       upon syserr                                      REDIRECT
               end-if
           end-if
           if filePrefix = dbFilePrefix
               initialize curRecordNumberCache
               perform iCheckAndLoadFromCache
      *        Si <> 0 le résultat a été trouvé dans le cache
               if curRecordNumberCache = 0
                   move low-values to dsc-read-key-name
                   move handler-file-name to dsc-filename
                   move handler-file-handle(1:8) to dsc-file-handle(1:8)
                   move handler-max-lrec-size to dsc-record-size
                   move handler-max-lrec-size to dsc-sent-record-size
      *        0: le serveur décide du nombre d'éléments
                   move 0 to dsc-read-cache-count
      *        Si pas de cache, on impose un seul résultat au serveur     
                   if numCache = 0
                       move 1 to dsc-read-cache-count
                   end-if
                   if f-no-lock = 1
                       move 0 to dsc-read-lock
                   else
                       move 1 to dsc-read-lock
                   end-if
      *            Si cache initialisé avec des éléments, on met à jour
      *            la clé actuelle du parcours pour l'envoyer au serveur
      *            puisque sa réponse dépend de la position actuelle
                   if numCache <> 0 and nbRecordCache(numCache) > 0
                       perform iLoadFromCache
                       move handler-record-area(1:handler-max-lrec-size)
                           to dsc-record
                       move handler-key-number to dsc-read-key-number
                       move curRecordNumberCache
                           to dsc-read-record-number
                   else
                       move -1 to dsc-read-key-number
                       move 0 to dsc-read-record-number
                   end-if
                   if next-function
                       move "NEXT" to dsc-read-direction
                   else
                       move "PREVIOUS" to dsc-read-direction
                   end-if
                   perform dsclient-read
                   if not f-in-error
                       move dsc-record(1:handler-max-lrec-size)
                           to handler-record-area
                   end-if
               else
                   display "Record ", curRecordNumberCache,             REDIRECT
                       " loaded from cache" upon syserr                 REDIRECT 
                   set f-errno to 0
               end-if
           else
               call "i$io" using io-function
                   filehandle handler-record-area
           end-if
           perform performStat                                          REDIRECT
           perform update-error
           exit paragraph
           .
       iPrevious.
           move 1 to f-no-lock
           set previous-function to true
           perform iContextualCommon
           exit paragraph
           .
       iPreviousLock.
           move 0 to f-no-lock
           set previous-function to true
           perform iContextualCommon
           exit paragraph
           .
       iUnlock.
           display "unlock: ", handler-file-name upon syserr            REDIRECT
           perform findHandle
           if filePrefix = dbFilePrefix
               move handler-file-name to dsc-filename
               move handler-file-handle(1:8) to dsc-file-handle(1:8)
               perform dsclient-unlock
           else
               set unlock-function to true
               call "i$io" using io-function
                   filehandle
           end-if
           perform performStat                                          REDIRECT
           perform update-error
           exit paragraph
           .
       unlockAll.
           display "unlockAll: ", handler-file-name upon syserr         REDIRECT
           perform varying i from 1 by 1 until i > nbHandles
               move tbHandleFileType(i) to fileType
               if ft-indexed
                   set unlock-function to true
                   call "i$io" using io-function
                       tbHandlePost(i)   
                   perform performStat                                  REDIRECT
                   perform update-error
               end-if
               if ft-relative
                   set r-unlock-function to true
                   call "r$io" using rio-function
                       tbHandlePost(i)   
                   perform performStat                                  REDIRECT
                   perform update-error
               end-if
               if ft-indexed-db
                   move low-values to dsc-filename
                   move tbHandleHdl(i)(1:8) to dsc-file-handle(1:8)
                   perform dsclient-unlock
                   perform performStat                                  REDIRECT
                   perform update-error
               end-if
      *        Pas de notion de unlock pour fichiers séquentiels
           end-perform
           exit paragraph
           .
       iDeleteFile.
           display "delete: ", handler-file-name upon syserr            REDIRECT
           call "c$delete" using handler-file-name, "I"
           exit paragraph
           .   
       iStartTransaction.
      *    Non implémenté
           exit paragraph
           .
       iCommitTransaction.
      *    Non implémenté
           exit paragraph
           .
       iRollbackTransaction.
      *    Non implémenté
           exit paragraph
           .

       sOpen.
           string handler-file-name h"00" 
               delimited space into fileName
           display "open: ", fileName upon syserr                       REDIRECT
           perform checkMode
           if open-make-needed = 1
               perform sMake
           end-if
           perform sOpenExisting
           exit paragraph
           .
		   
       sOpenExisting.
           set s-open-function to true
           evaluate handler-sequential-type
           when -1
               set seq-type to s-fixed
           when -2
               set seq-type to s-var-count
           when -3
               set seq-type to s-line
           when -4
               set seq-type to s-print
           end-evaluate
           call "s$io" using sio-function
               fileName
               handler-open-mode handler-max-lrec-size
               seq-type                           
           perform performStat                                          REDIRECT
           if return-code = NULL
               perform update-error
               exit program
               stop run
           end-if
           move return-code to fileHandle
           set ft-sequential to true
           perform storeHandle
           exit paragraph
           .
       sMake.
           display "make: ", handler-file-name upon syserr              REDIRECT
           set s-make-function to true
           string handler-file-name h"00" 
               delimited space into fileName
           call "s$io" using sio-function
               fileName handler-logical-params     
           perform performStat                                          REDIRECT
           perform update-error
           exit paragraph
           .
       sClose.
           display "close: ", handler-file-name upon syserr             REDIRECT
           perform findHandle
           set s-close-function to true
           call "s$io" using sio-function fileHandle
           perform performStat                                          REDIRECT
           perform update-error
           perform deleteHandle
           exit paragraph
           .
       sWrite.
           display "write: ", handler-file-name upon syserr             REDIRECT
           perform findHandle
           set s-write-function to true
           call "s$io" using sio-function
               filehandle handler-record-area HANDLER-MAX-LREC-SIZE 0
           perform performStat                                          REDIRECT
           perform update-error
           exit paragraph
           .
       sRewrite.
           display "rewrite: ", handler-file-name upon syserr           REDIRECT
           perform findHandle
           set s-rewrite-function to true
           call "s$io" using sio-function
               filehandle handler-record-area HANDLER-MAX-LREC-SIZE
           perform performStat                                          REDIRECT
           perform update-error
           exit paragraph
           .
       sNext.
           display "next: ", handler-file-name upon syserr              REDIRECT
           perform findHandle
           set s-read-function to true
           move 1 to f-no-lock
           call "s$io" using sio-function
               filehandle handler-record-area    
           perform performStat                                          REDIRECT
           perform update-error
           exit paragraph
           .
       sNextLock.
           display "nextLock: ", handler-file-name upon syserr          REDIRECT
           perform findHandle
           set s-read-function to true
           move 0 to f-no-lock
           call "s$io" using sio-function
               filehandle handler-record-area    
           perform performStat                                          REDIRECT
           perform update-error
           exit paragraph
           .
       sPrevious.
           display "previous: ", handler-file-name upon syserr          REDIRECT
           perform findHandle
           set s-read-function to true
           move 1 to f-no-lock
           call "s$io" using sio-function
               filehandle handler-record-area                           
           perform performStat                                          REDIRECT
           perform update-error
           exit paragraph
           .
       sPreviousLock.
           display "previous: ", handler-file-name upon syserr          REDIRECT
           perform findHandle
     	   set s-read-function to true
           move 0 to f-no-lock
           call "s$io" using sio-function
               filehandle handler-record-area   
           perform performStat                                          REDIRECT
           perform update-error
           exit paragraph
           .
       sDeleteFile.
           display "delete: ", handler-file-name upon syserr            REDIRECT
           call "c$delete" using handler-file-name, "S"
           exit paragraph
           .

       rOpen.
           string handler-file-name h"00" 
               delimited space into fileName
           display "open: ", fileName upon syserr                       REDIRECT
           perform checkMode
           if open-make-needed = 1
               perform rMake
           end-if
           perform rOpenExisting
           exit paragraph
           .
		   
       rOpenExisting.
           set r-open-function to true
           call "r$io" using rio-function
               fileName handler-open-mode
               HANDLER-MAX-LREC-SIZE HANDLER-MIN-LREC-SIZE
           perform performStat                                          REDIRECT
           if return-code = NULL
               perform update-error
               exit program
               stop run
           end-if
           move return-code to fileHandle
           set ft-relative to true
           perform storeHandle
           exit paragraph
           .
       rMake.
           display "make: ", handler-file-name upon syserr              REDIRECT
           set r-make-function to true
           string handler-file-name h"00" 
               delimited space into fileName
           call "r$io" using rio-function
               fileName handler-logical-params
           perform performStat                                          REDIRECT
           perform update-error
           exit paragraph
           .
       rClose.
           display "close: ", handler-file-name upon syserr             REDIRECT
           perform findHandle
           set r-close-function to true
           call "r$io" using rio-function fileHandle   
           perform performStat                                          REDIRECT
           perform update-error
           perform deleteHandle
           exit paragraph
           .
       rWrite.
           display "write: ", handler-file-name upon syserr             REDIRECT
           perform findHandle
           set r-write-function to true                                
           call "r$io" using rio-function
               filehandle handler-record-area HANDLER-MAX-LREC-SIZE -1
           perform performStat                                          REDIRECT
           perform update-error
           exit paragraph
           .
       rRewrite.
           display "rewrite: ", handler-file-name upon syserr           REDIRECT
           perform findHandle
           set r-rewrite-function to true
           call "r$io" using rio-function
               filehandle handler-record-area HANDLER-MAX-LREC-SIZE
               handler-key-number
           perform performStat                                          REDIRECT
           perform update-error
           exit paragraph
           .
       rDelete.
           display "delete: ", handler-file-name upon syserr            REDIRECT
           perform findHandle
           set r-delete-function to true
           call "r$io" using rio-function
               filehandle handler-key-number
           perform performStat                                          REDIRECT
           perform update-error
           exit paragraph
           .
       rStart.
           display "start: ", handler-file-name upon syserr             REDIRECT
           display "key-number: ", handler-state-info upon syserr       REDIRECT
           perform findHandle
           set r-start-function to true
           call "r$io" using rio-function
               filehandle handler-relative-key handler-start-mode
           perform performStat                                          REDIRECT
           perform update-error
           exit paragraph
           .
       rRead.
           display "read: ", handler-file-name upon syserr              REDIRECT
           perform findHandle
           set r-read-function to true
           move 1 to f-no-lock
           call "r$io" using rio-function
               filehandle handler-record-area
               handler-relative-key          
           perform performStat                                          REDIRECT
           perform update-error
           exit paragraph
           .
       rReadLock.
           display "readLock: ", handler-file-name upon syserr          REDIRECT
           perform findHandle
           set r-read-function to true
           move 0 to f-no-lock
           call "r$io" using rio-function
               filehandle handler-record-area
               handler-relative-key
           perform performStat                                          REDIRECT
           perform update-error
           exit paragraph
           .
       rNext.
           display "next: ", handler-file-name upon syserr              REDIRECT
           perform findHandle
           set r-next-function to true
           move 1 to f-no-lock
           call "r$io" using rio-function
               filehandle handler-record-area    
           perform performStat                                          REDIRECT
           perform update-error
           exit paragraph
           .
       rNextLock.
           display "nextLock: ", handler-file-name upon syserr          REDIRECT
           perform findHandle
           set r-next-function to true
           move 0 to f-no-lock
           call "r$io" using rio-function
               filehandle handler-record-area    
           perform performStat                                          REDIRECT
           perform update-error
           exit paragraph
           .
       rPrevious.
           display "previous: ", handler-file-name upon syserr          REDIRECT
           perform findHandle
           set r-previous-function to true
           move 1 to f-no-lock
           call "r$io" using rio-function
               filehandle handler-record-area
           perform performStat                                          REDIRECT
           perform update-error
           exit paragraph
           .
       rPreviousLock.
           display "previous: ", handler-file-name upon syserr          REDIRECT
           perform findHandle
           set r-previous-function to true
           move 0 to f-no-lock
           call "r$io" using rio-function
               filehandle handler-record-area   
           perform performStat                                          REDIRECT
           perform update-error
           exit paragraph
           .
       rUnlock.
           display "unlock: ", handler-file-name upon syserr            REDIRECT
           perform findHandle
           set r-unlock-function to true
           call "r$io" using rio-function
               filehandle             
           perform performStat                                          REDIRECT
           perform update-error
           exit paragraph
           .
       rDeleteFile.
           display "delete: ", handler-file-name upon syserr            REDIRECT
           call "c$delete" using handler-file-name, "R"
           exit paragraph
           .

       update-error.
           if ft-indexed-db
               move "DB" to handler-last-mode
           else
               move "IO" to handler-last-mode
           end-if
           if h-errno <> 0
               display "handler error: ", handler-file-name             REDIRECT
                       upon syserr                                      REDIRECT
               evaluate true
               when e-not-opened
                   if handler-op-read or handler-op-read-lock or
                      handler-op-next or handler-op-next-lock or
                      handler-op-previous or handler-op-previous-lock or
                      handler-op-start
                       move "47" to handler-primary-error
                       move "02" to handler-secondary-error
                   end-if
                   if handler-op-write
                       move "48" to handler-primary-error
                       move "02" to handler-secondary-error
                   end-if
                   if handler-op-rewrite or handler-op-delete
                       move "49" to handler-primary-error
                       move "02" to handler-secondary-error
                   end-if
                   if handler-op-close or handler-op-unlock or
                      handler-op-unlock-all
                       move "42" to handler-primary-error
                   end-if
               when e-bad-mode
                   if handler-op-read or handler-op-read-lock or
                      handler-op-next or handler-op-next-lock or
                      handler-op-previous or handler-op-previous-lock or
                      handler-op-start
                       move "47" to handler-primary-error
                       move "01" to handler-secondary-error
                   end-if
                   if handler-op-write
                       move "48" to handler-primary-error
                       move "01" to handler-secondary-error
                   end-if
                   if handler-op-rewrite or handler-op-delete
                       move "49" to handler-primary-error
                       move "01" to handler-secondary-error
                   end-if
               when e-already-opened
                   move "41" to handler-primary-error 
               end-evaluate
           else
           evaluate true
           when f-errno = 0
               move "00" 
               to handler-primary-error
           when e-sys-err or e-param-err or e-interface
                   or e-license-err or e-unknown-err
               display "err: ", handler-file-name upon syserr           REDIRECT
               move "30" to handler-primary-error
           when e-too-many-files or e-param-err
               display "too-many: ", handler-file-name upon syserr      REDIRECT
               move "94" to handler-primary-error
               move "10" to handler-secondary-error
           when e-mode-clash or e-param-err
               display "too-many: ", handler-file-name upon syserr      REDIRECT
               move "48" to handler-primary-error
               move "01" to handler-secondary-error
           when e-rec-locked
               display "rec-locked: ", handler-file-name upon syserr    REDIRECT
               move "99" to handler-primary-error
           when e-broken
               display "broken: ", handler-file-name upon syserr        REDIRECT
               move "98" to handler-primary-error
           when e-duplicate
               display "dup: ", handler-file-name upon syserr           REDIRECT
               move "22" to handler-primary-error
           when e-not-found
               if handler-op-next
                 or handler-op-next-lock
                 or handler-op-previous
                 or handler-op-previous-lock
                   display "eof: ", handler-file-name upon syserr       REDIRECT
                   move "10" to handler-primary-error
               else
                   display "not-found: ", handler-file-name upon syserr REDIRECT
                   move "23" to handler-primary-error
               end-if
           when e-undef-record
               display "undef: ", handler-file-name upon syserr         REDIRECT
               if handler-organization-sequential
      *            no current record defined for a sequential access
      *            mode file.
                   move "43" to handler-primary-error
               else
                   move "46" to handler-primary-error
               end-if
           when e-disk-full
               display "disk-full: ", handler-file-name upon syserr     REDIRECT
               if handler-organization-sequential
                   move "34" to handler-primary-error
               else
                   move "24" to handler-primary-error
               end-if
           when e-file-locked
               display "file lock on: ", handler-file-name upon syserr  REDIRECT
               move "93" to handler-primary-error
           when e-rec-changed
               display "size changed: ", handler-file-name upon syserr  REDIRECT
               move "44" to handler-primary-error
               move "97" to handler-secondary-error
           when e-mismatch
               display "mismatch: ", handler-file-name upon syserr      REDIRECT
               move "39" to handler-primary-error
           when e-no-memory
               display "no-memory: ", handler-file-name upon syserr     REDIRECT
               move "9A" to handler-primary-error
           when e-missing-file
               display "missing-file: ", handler-file-name upon syserr  REDIRECT
               move "35" to handler-primary-error
           when e-permission
               display "permission: ", handler-file-name upon syserr    REDIRECT
               move "37" to handler-primary-error
               move "07" to handler-primary-error
           when e-no-support
               display "no-support: ", handler-file-name upon syserr    REDIRECT
               move "9B" to handler-primary-error
           when e-no-locks
               display "no-locks: ", handler-file-name upon syserr      REDIRECT
               move "9C" to handler-primary-error
           when w-no-support
               display "w-no-support: ", handler-file-name upon syserr  REDIRECT
               move "0M" to handler-primary-error
           when w-dup-ok
               display "dup-ok: ", handler-file-name upon syserr        REDIRECT
               move "02" to handler-primary-error
           when other
               display "Erreur non traitée", f-errno upon syserr        REDIRECT
               move "30" to handler-primary-error
           end-evaluate
           end-if

      * Le primary error correspond au code retour du handler
           move handler-primary-error to handler-status-code
      *         if dsc-message <> spaces                                 REDIRECT
                   display "DB Message: ", dsc-message upon syserr      REDIRECT                
      *         end-if                                                   REDIRECT
      *         if dsc-lock-pid <> 0                                     REDIRECT
                   display "DB Lock PID: ", dsc-lock-pid upon syserr    REDIRECT                
      *         end-if                                                   REDIRECT
      * Si appel DB, transfert des informations supplémentaires
           if ft-indexed-db
               move dsc-message(1:40) to handler-text-message
               move dsc-lock-pid to handler-process-id

               if (handler-op-next or handler-op-read
                   or handler-op-previous or handler-op-next-lock
                   or handler-op-read-lock or handler-op-previous-lock)
                   and (f-in-error and not e-rec-locked)
      *            en cas d'erreur de lecture, la position est perdue
      *            sauf si lock (pour permettre de retenter)
                   perform iInvalidateCacheAndResetPosition
               end-if
           end-if
           exit paragraph
           .

       entry "mis-handler$config".
           move "modified" to config-test
           display "config-test modified: ", config-test upon syserr    REDIRECT
           exit program
           stop run
           .

       entry "mis-handler$shutdown".
           if init = 0
               display "stopping handler" upon syserr                   REDIRECT
               perform dsclient-close-connection
               move 1 to init
           end-if
           exit program
           stop run
           .

       entry "mis-handler$custom" using custom-field.
           move custom-field to config-custom-field
           exit program
           stop run
           .

      *{Bench}copy-procedure
       COPY "showmsg.cpy".

       Acu-Initial-Routine.
      *    Before-Init
      * get system information
           ACCEPT System-Information FROM System-Info
      * get terminal information
           ACCEPT Terminal-Abilities FROM Terminal-Info
      *    After-Init
           .

       Acu-Exit-Rtn.
      * destroy font
           PERFORM Acu-Exit-Font
      * destroy bitmap
           PERFORM Acu-Exit-Bmp
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

      ***   start event editor code   ***

       

      *{Bench}end
