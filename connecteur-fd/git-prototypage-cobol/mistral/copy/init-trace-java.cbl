           move space to tmp-file-process1
           string g-dir "/mistral/ft/TraceJava" delimited by " "
           into tmp-file-process1
           call "C$JAVA" using CJAVA-CALLSTATIC, 
                               "fr/mistral/jvm/JvmConfig",
                               "SetErrFilename", "(X)I",
                               tmp-file-process1, w-return
                               giving W-STATUS
           if w-status not = cjava-success then
              string "Erreur initialisation trace java  " w-status
              delimited by "   " into acu-msg-1
              move tmp-file-process1 to acu-msg-2
              perform msg-info
           end-if

