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


