      * exploitations et communications avec le handler

      * Activation et d�sactivation du handler
       installHandler.
      * Handler d�j� initi�   
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
      * TODO : pas possible car l'�tat est partag� pour tous les
      * programme de la run unit. Le shutdown ne peut �tre r�alis�
      * que par le programme initiateur
      *     call "mis-handler$shutdown"
           if handler-status not = 1
               display "Erreur de d�sinstallation c$redirect"
                   upon syserr
               exit program
               stop run
           end-if
           move 0 to handler-init
           exit paragraph
           .