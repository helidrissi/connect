      * exploitations et communications avec le handler

      * Activation et désactivation du handler
       installHandler.
      * Handler déjà initié   
           if handler-init <> 0
               exit paragraph
           end-if
           display "installation c$redirect" upon syserr  
           set handler-function-replace to true
           set handler-version-three to true   
           initialize handler-previous-name handler-status
           call "c$redirect" 
               using handler-function, handler-version, handler-name, 
                     handler-previous-name
               giving handler-status
      * Le premier appel charge le programme mais ne fait rien
           call handler-name
           if handler-status not = 1
               display "Erreur d'installation c$redirect"
                   upon syserr
               exit program
               stop run
           end-if
           move 1 to handler-init
           exit paragraph
           .

       uninstallHandler.
           if handler-init = 0
               exit paragraph
           end-if
           set handler-function-replace to true
           set handler-version-three to true
           initialize handler-previous-name handler-status
           call "c$redirect" 
               using handler-function, handler-version, NULL,
                     handler-previous-name
               giving handler-status
      * TODO : pas possible car l'état est partagé pour tous les
      * programme de la run unit. Le shutdown ne peut être réalisé
      * que par le programme initiateur
      *     call "mis-handler$shutdown"
           if handler-status not = 1
               display "Erreur de désinstallation c$redirect"
                   upon syserr
               exit program
               stop run
           end-if
           move 0 to handler-init
           exit paragraph
           .