      *    Recherche de la liste des photos pour un objet
      *    Renseigner :
      *     w-path 
      *          string IMAGE-DIR delimited by "  "
      *                "/mx" STE-MPAR "/fi/CMT" delimited by size
      *                into w-path
      *          ou    "/mx" STE-MPAR "/fi/ART" 
      *          ou    "/mxg/fi/MAT" 
      *     w-basename 
      *          COD-MART ou ORD-MMAT
      *     w-dirpho
      *          string STE-MPAR "/CMT/" delimited by size
      *                 into w-dirpho
      *          ou              "/ART/" ou "/MAT/"
      *
      *     w-photo-lon : nom de photo de longueur fixe w-photo-lon complété par des _ en fin
      *
      *    On obtient w-photos occurs 20

       Recherche-Photo.
           if w-path = space or w-basename = space
             exit paragraph
           end-if
      
           move 0 to w-cntPhoto
           move space to table-photos
      
           copy "W:/mistral/copy/assign-fic-unix.cbl" 
               replacing ==assign-fic-unix-filename== by ==w-basename==.
      
           if W-PHOTO-LON <> 0 
      *      Nom de base sur W-PHOTO-LON caractères : complète par des _ en fin
             inspect w-basename replacing all " " by "_"
             MOVE W-BASENAME(1:W-PHOTO-LON) TO W-BASENAME
           end-if
           move 0 to w-lbasename
           inspect w-basename tallying w-lbasename for trailing space
           compute w-lbasename = 32 - w-lbasename
      
      *    Recherche une photo avec le code exact
           move space to w-pattern
           string w-basename(1:w-lbasename) delimited by size
                  ".*" delimited by size
                  into w-pattern
           call "c$list-directory" using LISTDIR-OPEN, w-path, w-pattern
           move return-code to w-hFind
           if w-hFind not = 0 
             perform with test after until w-filename = spaces
                     or w-cntPhoto > 19
               call "c$list-directory"
                   using LISTDIR-NEXT, w-hFind, w-filename
               if w-filename not = spaces 
                 add 1 to w-cntPhoto
                 move w-filename to w-photos(w-cntPhoto)
               end-if
             end-perform
      *      Libère mémoire associé avec l'handle
             call "c$list-directory" using LISTDIR-CLOSE, w-hFind
           end-if
      
      
      *    Recherche les photos suivantes qui se termine par -1, -2....
           move space to w-pattern
           string w-basename(1:w-lbasename) delimited by size
               "-*.*" delimited by size
               into w-pattern
           call "c$list-directory" using LISTDIR-OPEN, w-path, w-pattern
           move return-code to w-hFind
           if w-hFind not = 0 
             perform with test after until w-filename = spaces
              or w-cntPhoto > 19
               call "c$list-directory"
                   using LISTDIR-NEXT, w-hFind, w-filename
               if w-filename not = spaces 
                 add 1 to w-cntPhoto
                 move w-filename to w-photos(w-cntPhoto)
               end-if
             end-perform
      *      Libère mémoire associé avec l'handle
             call "c$list-directory" using LISTDIR-CLOSE, w-hFind
           end-if
           .

       Init-Start-Attach.
           move ra-ori to W-CntORI
           EVALUATE ra-ori 
           WHEN "ORE" 
           WHEN "ESE" MOVE 12 TO W-CntCAR
           WHEN "TPE" MOVE 20 TO W-CntCAR
           WHEN "RAC" MOVE 10 TO W-CntCAR
230819*                move "CFA" to W-CntORI
           WHEN "BSE" MOVE 11 TO W-CntCAR
           WHEN "BRE" MOVE 11 TO W-CntCAR
121119     WHEN "CTL" MOVE 11 TO W-CntCAR
           WHEN OTHER MOVE 30 TO W-CntCAR
           END-EVALUATE.

       Recherche-Attach.
290917     move zero to w-cntAttach
           if ra-cle = space or ra-ori = space 
              exit paragraph
           end-if
           MOVE 0 TO w-cntAttach RA-EOF-ATTACH w-cntPhoto 
           move space to table-photos
030719                   RA-Table-DOC

           perform Init-Start-Attach

           PERFORM OPEN-ATTACH.

           INITIALIZE               ENR-ATT
           MOVE W-CntORI           TO ORI-ATT
           MOVE RA-CLE(1:W-CntCAR) TO CLE-ATT
           MOVE RA-SOC             TO SOC-ATT     
           START ATTACH KEY >= CLE2-ATT INVALID
              MOVE 1 TO RA-EOF-ATTACH
           NOT INVALID
              MOVE 0 TO RA-EOF-ATTACH
           END-START
           PERFORM STAT

           PERFORM UNTIL RA-EOF-ATTACH = 1
              READ ATTACH NEXT AT END
                 MOVE 1 TO RA-EOF-ATTACH
              END-READ
              PERFORM STAT  

              IF ORI-ATT <> W-CntORI
              OR CLE-ATT(1:W-CntCAR) <> RA-CLE(1:W-CntCAR)
              OR SOC-ATT <> RA-SOC
                 MOVE 1 TO RA-EOF-ATTACH
              END-IF

              IF RA-EOF-ATTACH = 0 
                 ADD 1 TO w-cntAttach
                 IF MIM-ATT(1:6) = "image/"
                    ADD 1 TO w-cntPhoto
                 END-IF
                 IF MIM-ATT(1:6) = "image/" AND w-cntPhoto <= 20
                    MOVE FIC-ATT TO w-photos(w-cntPhoto) 
                    MOVE TIT-ATT TO w-photos-titre(w-cntPhoto) 
                    MOVE CLE1-ATT TO w-photos-cle(w-cntPhoto) 
                 END-IF
                 IF w-cntAttach <= 20
                    MOVE FIC-ATT  TO RA-DOC(w-cntAttach)  
                    MOVE CLE1-ATT TO RA-CLEDOC(w-cntAttach)  
                 END-IF
              END-IF
           END-PERFORM
              
130619* recherche documents associés
           if Pas-Autres not = 1
           AND (W-CntORI = "BRE" OR "BSE")
              move space to LK-ATT-AUTREB
              move W-CntORI to LK-ATT-AUTREB-typ
              move RA-CLE(1:W-CntCAR) to LK-ATT-AUTREB-cle1
              move RA-SOC to LK-ATT-AUTREB-soc
              call "att-autres.acu" using zone-palm LK-ATT-AUTREB
                 on exception continue
              end-call
              cancel "att-autres.acu"
              perform varying w-tmpPhoto from 1 by 1 
                until w-tmpPhoto > LK-ATT-AUTREB-NBR
                   IF LK-ATT-AUTREB-CLEA(w-tmpPhoto) = space
                      exit perform cycle
                   end-if
                   move LK-ATT-AUTREB-CLEA(w-tmpPhoto) to cle1-att
                   read attach invalid exit perform cycle
                   end-read
                   perform stat

                   perform varying w-tmpPhoto2 from 1 by 1 
                       until w-tmpPhoto2 > 20
                     IF CLE1-ATT = ra-cledoc(w-tmpPhoto2)
                          exit perform
                     end-if
                     IF ra-cledoc(w-tmpPhoto2) not = SPACE
                          exit perform cycle
                     end-if
                     ADD 1 TO w-cntAttach
                     IF MIM-ATT(1:6) = "image/"
                        ADD 1 TO w-cntPhoto
                     END-IF
                     IF MIM-ATT(1:6) = "image/" AND w-cntPhoto <= 20
                        MOVE FIC-ATT TO w-photos(w-cntPhoto) 
                        MOVE TIT-ATT TO w-photos-titre(w-cntPhoto) 
                        MOVE CLE1-ATT TO w-photos-cle(w-cntPhoto) 
                     END-IF
                     IF w-cntAttach <= 20
                        MOVE FIC-ATT  TO RA-DOC(w-cntAttach)  
                        MOVE CLE1-ATT TO RA-CLEDOC(w-cntAttach)  
                     END-IF
                     exit perform
                   end-perform
              end-perform
           end-if.
130619
           IF RA-OPEN = 0 
              CLOSE ATTACH
           END-IF
           .

       OPEN-ATTACH.
           OPEN I-O ATTACH
           PERFORM TEST-STATUS THRU FIN-TEST-STATUS
           IF IND-STAT = 3 
              MOVE 1 TO RA-OPEN
           ELSE
              MOVE 0 TO RA-OPEN
              IF IND-STAT = 2 
                 PERFORM Acu-Show-Msg 
                 GO Acu-Exit-Rtn
              END-IF
           END-IF.


