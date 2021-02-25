      * COPY DANS SBD-C SINON SOURCE TROP GROS
       COPY "W:/MISTRAL/COPY/recherche-photo.CBL".
      * COPY "W:/MISTRAL/COPY/transfert-photo.CBL".

       Mep-Et-Wri-MXBDIS.      
           MOVE IDE-PALM TO SAL-MBDI
           IF DCO-MBDI = 0
                MOVE DAT-MBDI TO DCO-MBDI
           END-IF
           MOVE W-DAT TO DAT-MBDI
           MOVE W-TYP TO TYP-MBDI
           MOVE 1 TO IFA-MBDI
           IF MDAT-MBDI = MOI-MPAR 
           AND ADAT-MBDI = ANN-MPAR
                MOVE PER-C TO PER-MBDI
           ELSE MOVE PER-1 TO PER-MBDI
           END-IF
           MOVE W-DPS TO DEP-MBDI
           MOVE W-AGS TO AGS-MBDI
161211* client avec mise en attente par défaut
           IF MAB-MCLD = 1 AND TYP-MBDI = 1
              MOVE 0 TO IFA-MBDI PER-MBDI
           END-IF
260116* client avec réf obligatoire
           IF MAFR-MPAR = 1 AND TYP-MBDI = 1 AND RBO-MCLI = 1   
310316     AND REF-MBDI(1) = SPACE
              MOVE 0 TO IFA-MBDI PER-MBDI
           END-IF
           IF TYP-MBDI = 3 AND (AUTO-AVO = 2 OR WFAV-MPAR = 1)
               MOVE 0 TO IFA-MBDI                  
           END-IF    
           IF TYP-MBDI = 8 
               MOVE DEL-MAGD TO DEL-MBDI
               MOVE VAO-MAGD TO VAO-MBDI
           END-IF
           PERFORM Wri-MXBDIS
           MOVE "Z" TO CDF.

       Wri-MXBDIS.
           IF MOB-PALM > 0 MOVE 1 TO IES-MBDI.
070709     IF TYC-MBDI = 1 MOVE SPACE TO AGS-MBDI.
           WRITE ENR-MBDI INVALID MOVE "Ecriture BDIS" TO Acu-Msg-2
                                  MOVE CLE1-MBDI TO Acu-Msg-3
                                  GO ERREUR.
           PERFORM STAT.
           .

       Rew-MXBDIS.
           REWRITE ENR-MBDI INVALID MOVE "Réécriture BDIS" TO Acu-Msg-2
                                    MOVE CLE1-MBDI TO Acu-Msg-3
                                    GO ERREUR.
           PERFORM STAT.
           READ MXBDIS LOCK
           PERFORM STAT.

       Wri-MXLDIS.
           WRITE ENR-MLDI INVALID MOVE "Ecriture LDIS" TO Acu-Msg-2
                                  MOVE CLE1-MLDI TO Acu-Msg-3
                                  GO ERREUR.
           PERFORM STAT.

       Rew-MXLDIS.
           REWRITE ENR-MLDI INVALID MOVE "Réécriture LDIS" TO Acu-Msg-2
                                    MOVE CLE1-MLDI TO Acu-Msg-3
                                    GO ERREUR.
           PERFORM STAT.

       Del-MXLDIS.
           DELETE MXLDIS INVALID MOVE "Delete LDIS" TO Acu-Msg-2
                                 MOVE CLE1-MLDI TO Acu-Msg-3
                                 GO ERREUR.
           PERFORM STAT.
           PERFORM DEL-NOMLDIS THRU F-DEL-NOMLDIS.
           MOVE 1 TO W-NIV
           PERFORM DEL-MSPMAT THRU F-DEL-MSPMAT.
           PERFORM DEL-MXCOMMENT.
      * Suppression contre-marques besoins agences
           IF TYC-MBDI = 1 AND CBLF-MBDI <> 0 AND TLI-MLDI = 1
           AND TYP-MBDI = 1
              PERFORM Del-Lmque
           END-IF.


       Del-Lmque.

       DEL-MXCOMMENT.
           MOVE SPACE TO ENR-MCMO
           MOVE "D" TO ORI-MCMO
           MOVE CLE1-MLDI TO CLE-MCMO
           READ MXCOMMENT LOCK INVALID EXIT PARAGRAPH
           END-READ
           PERFORM STAT
           IF IND-STAT = 1 GO DEL-MXCOMMENT.
           DELETE MXCOMMENT 
           PERFORM STAT.

       Del-MXBDIS.
           DELETE MXBDIS INVALID MOVE "Delete BDIS" TO Acu-Msg-2
                                 MOVE CLE1-MBDI TO Acu-Msg-3
                                 GO ERREUR.
           PERFORM STAT.

       OPEN-FILE-RTN.
           OPEN  I-O   MXAGEDIS   PERFORM STAT
           OPEN  INPUT MXART      PERFORM STAT
           OPEN  I-O   MXARTSA    PERFORM STAT
           OPEN  I-O   MXBDIS     PERFORM STAT
           OPEN  I-O   MXCLI      PERFORM STAT
           OPEN  I-O   MXCLID     PERFORM STAT
           OPEN  I-O   MXFAMART   PERFORM STAT
           OPEN  I-O   MXGRAFAD   PERFORM STAT
           OPEN  I-O   MXGRAFAM   PERFORM STAT
           OPEN  I-O   MXHISVTE   PERFORM STAT
           OPEN  I-O   MXLDIS     PERFORM STAT
           OPEN  I-O   MXPREGEN   PERFORM STAT
           OPEN  I-O   MXPREGENV  PERFORM STAT
           OPEN  I-O   MXARTSA2   PERFORM STAT
           OPEN  INPUT MXPARAM    PERFORM STAT
           OPEN I-O    MXCOMMENT  PERFORM STAT
           OPEN I-O    MXBDIS2    PERFORM STAT
           OPEN I-O    MXLDIS2    PERFORM STAT
           .

       CLOSE-FILE-RTN.
           CLOSE MXFAMART MXART MXCLID MXPREGEN 
                 MXARTSA MXPREGENV MXBDIS 
                 MXAGEDIS MXLDIS
                 MXHISVTE
                 MXCLI MXGRAFAD 
                 MXGRAFAM MXCOMMENT MXLDIS2
                 MXARTSA2 MXPARAM MXBDIS2
           .

       Init-Delvte.
       Maj-Delvte-Ldis.

       Maj-Delvte-Bdis.

       Del-GenBlfms.
       Maj-GenBlfms.

      *----  Génération du fichier destiné à l'impression des etiquettes d'emballage
       GEN-FIC-ETIQ.
       F-GEN-FIC-ETIQ.

       OPEN-FIC-ETIQ.
           .
       WRI-FIC-ETIQ.

       Read-MODETI.
      *
       READ-MOBILE.

      *

      *
       MAJ-TRANSPE.

       DEL-TRANSPE.

       TRANSFERT-TRANSPE.

      * Recherche si adresse dérogée pour tous les fournisseurs
       Rech-Adresse-Derogee-Tout.

       Rech-Adresse-Derogee.

      ***  Lecture DOMTIERS pour retrouver le pays
       RECH-DOMTIERS.
           .

       Controle-Workflow.

       Lect-Email.

       Affich-Email.
           if EMAIL-CLIENT = space 
           or cdf = "C" OR "Z"
           or mob-palm > 0
              modify Screen1-Pb-Mail, VISIBLE 0
              modify Screen1-La-mail, VISIBLE 0
           else
              modify Screen1-Pb-Mail, VISIBLE 1
              modify Screen1-La-mail, VISIBLE 1, title email-client
           end-if.
      *
       GEN-CDEFOU.
                  
       GEN-CDEFOU-Global.

       Recup-Des-Mpmate.
       F-Recup-Des-Mpmate.
      
       SAUVE-PALETTE.
           COPY "W:/mistral/copy/palette-save.cbl"..
      
       RESTORE-PALETTE.
           COPY "W:/mistral/copy/palette-restore.cbl"..

       Mep-BITMAP-STOCK.

       CALCREV-DEP.

       CALCREV-AGE.


       Init-Screen2.
           IF AST-MPAR = 1 AND IND-INITLINE2 = 0
      *        INQUIRE Screen2-La-LStg, LINE IN W-LINE
      *        ADD 0,45 TO W-LINE
      *        MODIFY Screen2-La-LStg, LINE W-LINE
      *        MODIFY Screen2-La-Stg, LINE W-LINE
      *        MODIFY Screen2-La-LEcf, LINE W-LINE
      *        MODIFY Screen2-La-Ecf, LINE W-LINE
      *        MODIFY Screen2-La-Dispo, LINE W-LINE
      *        INQUIRE Screen2-La-LStc, LINE IN W-LINE
      *        ADD 0,31 TO W-LINE
      *        MODIFY Screen2-La-LStc, LINE W-LINE
      *        MODIFY Screen2-La-Stc, LINE W-LINE
      *        MODIFY Screen2-La-LEcc, LINE W-LINE
      *        MODIFY Screen2-La-Ecc, LINE W-LINE
      *        MODIFY Screen2-La-Lcas, LINE W-LINE
      *        MODIFY Screen2-La-cas, LINE W-LINE
              MODIFY Screen2-La-Lstgr, VISIBLE 1
              MODIFY Screen2-La-stgr, VISIBLE 1
           END-IF
           MOVE "Type" TO W-LIBTYP
           MOVE 1 TO IND-INITLINE2.

      * test s'il y a des commandes en attente (icf-rev = 0 donc pas traité dans GCA et EBP)
       Test-Commandes.
           MOVE 0 TO IND-CDES-ATT
           MOVE ENR-MLDI TO SV-ENR-MLDI2
           MOVE SV-ENR-MLDI2 TO ENR-MLDI.

      * validation des commandes (on met icf-rev = 2 pour traitement dans GCA et EBP)
       Valid-Commandes.
           MOVE 0 TO IND-CDES-ATT.

       Valid-Commandes-Une-Ligne.
      *
      * Contrôle agence d'appartenance
       Test-Societe-Agence.
           IF LCO-MPAR NOT = 1
           OR AAS-MPAR NOT = 1
           OR EXM-MPAD NOT = 1
           OR SSAP-MPAD NOT = 1
           OR TYC-MBDI = 1
           OR (MODU-M3 = 0 AND W-AGSC = SPACE)
           OR SOC-MART = 0 
230117     OR (MODU-M3 = 1 AND (TYP-MBDI = 1 OR 3) AND TLI-MLDI = 1
200219         AND AGE-MLDI <> AG-TOPAZ)
              EXIT PARAGRAPH
           END-IF
           MOVE COD-MART TO ART-MLDI
           OPEN INPUT MXAGENCE2
           PERFORM STAT
           MOVE 0 TO W-EOF-MAGC2
           MOVE SPACE TO ENR-MAGC2
           START MXAGENCE2 KEY NOT < CLE1-MAGC2 INVALID
                 MOVE 1 TO W-EOF-MAGC2
           END-START
           PERFORM UNTIL W-EOF-MAGC2 = 1
              READ MXAGENCE2 NEXT END MOVE 1 TO W-EOF-MAGC2
                                      EXIT PERFORM CYCLE
              END-READ
              PERFORM STAT
              IF STC-MAGC2 <> SOC-MART 
              OR AGSC-MAGC2 = SPACE
                 EXIT PERFORM CYCLE
              END-IF
              IF MODU-M3 = 0 
              AND AGSC-MAGC2 NOT = W-AGSC
                 EXIT PERFORM CYCLE
              END-IF
              IF MODU-M3 = 1 AND AGSC-MAGC2 <> AGS-MLDI 
                 CLOSE MXAGENCE2
                 MOVE AGSC-MAGC2 TO LK-LISTE-COD(1)
                 PERFORM Apres-AGS
              END-IF
              IF MODU-M3 = 0 AND COD-MAGC2 <> AGS-MLDI 
                 CLOSE MXAGENCE2
                 MOVE COD-MAGC2 TO LK-LISTE-COD(1)
                 PERFORM Apres-AGS
              END-IF
              MOVE 1 TO W-EOF-MAGC2
           END-PERFORM
           CLOSE MXAGENCE2.

       DEB-EN-COURS.

       FIN-EN-COURS.

       Test-Visible-Errfac.
       Raz-Fac-Mbdi.
      *----------------------------------------------------------------*
       DEL-RECEPTR.
       F-DEL-RECEPTR.
      *----------------------------------------------------------------*
       LECT-RECEPTR.
       F-LECT-RECEPTR.

      *----------------------------------------------------------------*
       Recherche-Designation.
           IF NOT CDFL = CHOIX-C EXIT PARAGRAPH
           END-IF
           INITIALIZE LK-SCODART-L
           INQUIRE Screen2-Ef-Des, VALUE LK-SCODART-L-DES
           IF LK-SCODART-L-DES(1:3) = SPACE
              MOVE "Saisissez au moins 3 caractères SVP." to acu-msg-1
              perform msg-info 
              exit paragraph
           end-if

           MOVE 1 TO LK-SCODART-L-VTE
           MOVE CLI-MBDI TO LK-SCODART-L-CLI
           MOVE AGE-MLDI TO LK-SCODART-L-AGE
           MOVE 1 TO LK-SCODART-L-AFF
           MOVE TCC-MLDI TO LK-SCODART-L-TCC
           MOVE "D" TO LK-SCODART-L-MOD
           MOVE 2 TO LK-SCODART-L-RCF
           MOVE 7 TO LK-SCODART-L-TST
           CALL "scodart-l.acu" USING ZONE-PALM LK-SCODART-L
           CANCEL "scodart-l.acu"
           IF LK-SCODART-L-ART = SPACE
              EXIT PARAGRAPH
           END-IF
           MOVE 1 TO PAS-SCODART
           MOVE LK-SCODART-L-ART TO W-ART
           MODIFY Screen2-Ef-Ar1, VALUE W-AR1
           MODIFY Screen2-Ef-Ar2, VALUE W-AR2 
           PERFORM Screen2-Ef-Ar2-AfterProcedure
           MOVE 0 TO PAS-SCODART.

      *--- Copie des n° de série vers le bordereau de transfert 
       Copie-TSV-Mspmat.
       F-Copie-TSV-Mspmat.

       Lect-Traartl.

       Del-Un-Tsv-Mspmat.
      
       MSG-DEPOT.
           MOVE "Vous n'êtes pas autorisé à saisir sur ce dépôt."
                TO ACU-MSG-1
           PERFORM MSG-INFO.

       Envoi-Mail.

       Wri-Int.
       Init-Int.

       Screen3-Pb-Attach-Link.
           move STE-MPAR to lk-att-soc
           move "SBD" to lk-att-typ
           move CLE1-MBDI to lk-att-cle
           string IMAGE-DIR delimited by "  "
                     "/mx" STE-MPAR "/fi/SBD" delimited by size
                     into lk-att-folder
           IF CDF = CHOIX-I 
              MOVE CHOIX-I TO LK-ATT-CHO
           ELSE
              MOVE CHOIX-M TO LK-ATT-CHO
           END-IF
           call "../../mx/o/att.acu" using zone-palm lk-att
           cancel "../../mx/o/att.acu"
           perform Affich-PB-ATTACH
           .

       Affich-PB-ATTACH.
           if mob-palm > 0 modify Screen3-Pb-attach visible 0
                           exit paragraph
           end-if
           move "SBD" to ra-ori
           move CLE1-MBDI TO ra-cle
           move ste-mpar to ra-soc
           perform Recherche-Attach
           if w-cntAttach > 0
                 Modify Screen3-Pb-attach, COLOR 495,
                                          TITLE "Documents attachés"
           else
                 Modify Screen3-Pb-attach, COLOR 0,
                                          TITLE "Documents attachés"
           end-if
           .

       Copie-Photos.
           .

       Supprime-Photos.
           .

       Mep-Visible-Pb-Facaco.
           .
       Affiche-CM-TCO.
           COPY "W:/mx/copy/Cm-MTCC.cbl"
                REPLACING ==DCN-COMBO== BY ==Screen2-Cm-TCO==..

       Affiche-CM-TCO-ENTETE.
           IF TCCF-MPAR = 1 MOVE 0 TO Cm-MTCC-LoadedItems
           END-IF
           COPY "W:/mx/copy/Cm-MTCC.cbl"
           REPLACING ==DCN-COMBO== BY ==Screen1-Cm-TCO==.
           . 

      ******************************************************************
      *        GESTION DES DELAIS (SRM) 09/06/2016
      *
       MEP-DELAIS.
       SAUVE-DELAIS-TCF.
       RECUP-DELAIS-TCF.
       FORMATE-DELAIS.
       AFF-DELAIS.
       CAL-DLI-DELAISRM.

       Lect-TYPCDC.

       TOT-DELAI.

       Affiche-Tableau-Delai.

       MEP-DELAI-GRILLE.

       Aff-Tot.
           IF W-AFF-MB = 1
              MOVE TOT-MG TO D92 
              MODIFY Screen2-La-TotHt, TITLE D92
              MODIFY Screen2-La-LTotHT, TITLE "MG"
              COMPUTE SV-MON = TOT-HT - TOT-MG
              MOVE SV-MON TO D92
              MODIFY Screen2-La-TotTtc, TITLE D92
              MODIFY Screen2-La-LTotTTC, TITLE "PR"
           ELSE
              MOVE TOT-HT TO D92
              MODIFY Screen2-La-TotHt, TITLE D92
              MODIFY Screen2-La-LTotHT, TITLE "HT"
              MOVE TOT-TTC TO D92          
              MODIFY Screen2-La-TotTtc, TITLE D92
              MODIFY Screen2-La-LTotTTC, TITLE "TTC"
           END-IF
           MOVE TOT-POI TO D82
           MODIFY Screen2-La-TotPoi, TITLE D82.
           MOVE TOT-LIG TO D6
           MODIFY Screen2-La-TotLig, TITLE D6.
           IF FRP-MCLD NOT = 0
              MOVE TOT-HTT TO D82
              MODIFY Screen2-La-TotHtt, TITLE D82.
           IF AMB-MAGD = 1 AND NAM-MAGD <> 1 AND AUTO-MG <> 2 AND 
              | Pour Landa: Si Mobidis Pas d'affichage de la marge Totale
              NOT (MOB-PALM > 0 AND (CLI-PALM = 850225 OR <  10))   
              PERFORM AFF-TOT-MG.

       AFF-TOT-MG.
           COMPUTE W-PM ROUNDED = TOT-MG / TOT-HT * 100
           IF TOT-HT = 0 MOVE 0 TO W-PM
           END-IF
           MOVE W-PM TO D22
           MODIFY Screen2-La-Mbt, TITLE D22.

       AFFICHE-DELAI-GLOBAL.

       VERIF-MSPMATN.
       F-VERIF-MSPMATN.

       PRORATISE-COMPO.
       F-PRORATISE-COMPO.

       Maj-Hiv-Prix-Compo. 

       MAJ-DIF-COMPO.

       Impression.

       Assign-Int. 
           .   
        
       Imprime.
           MOVE "Impression non gérée" TO ACU-MSG-1
           PERFORM MSG-ERREUR.

      * Devis
       Devis.

      * AR Commande
       AR.

      * Proforma 
       PROFORMA.

      * B/L
       BL.

      * Bon d'expédition
       EXPE.

      * Bon de préparation
       BP.

      * Impression facture
       Facture.

       MOD-DLI-NOMLDIS.
       F-MOD-DLI-NOMLDIS.

       MOD-DAT-RECEPTR.
       F-MOD-DAT-RECEPTR.

      * SCREEN1-DAEF-SVC-EV-MSG-VALIDATE.
      *     inquire SCREEN1-DAEF-SVC, VALUE SVC-MBDI
      *     perform Lecture-Svc.
      *
       Lecture-Svc.
      *
       Screen1-Pb-ListeSvc-LinkTo.
      *
       Test-et-Affiche-Svc.

       Affiche-Svc.
      *     modify SCREEN1-DAEF-SVC, visible wv-ser
      *     modify SCREEN1-La-SVC, visible wv-ser.

       Test-Cmq.
           move 0 to ind-cmq.
       
       Affiche-Cmq.
           move space to la-cmq
           if tli-mldi not = 3 go F-Affiche-Cmq
           end-if.
       F-Affiche-Cmq.
           if la-cmq <> space 
                modify Screen2-La-Dispo, visible 1, TITLE la-cmq
           else modify Screen2-La-Dispo, visible 0, TITLE SPACE
           end-if.
           .

       REMAJ-NOMLDIS.

      *---------------- mise à jour n° facture compo si pb ------------*
       MAJ-FAC-MHIV-NOMLDIS.
       F-MAJ-FAC-MHIV-NOMLDIS.

       Screen1-Mode-Interrogation.
           MODIFY Screen1-Pb-Sauvegarder, ENABLED 0
      *     MODIFY Screen1-Pb-Rafraichir, ENABLED 0
      *     MODIFY Screen1-Pb-AjoutBon, ENABLED 0
           CALL "W$MENU" USING WMENU-DISABLE, 
                               Screen1-Mn-Boutons-Handle, 2330
           MODIFY Screen1-Pb-Modifier, ENABLED 1
      *     IF TYP-MBDI = 8 OR 0
      *        MODIFY Screen1-Pb-Dupliquer, VISIBLE 1
      *     END-IF
           MODIFY Screen1-Pb-Imprimer, ENABLED 1
      *     MODIFY Screen1-Pb-Supprimer, ENABLED 1
      *     MODIFY Screen1-Pb-Quitter, VISIBLE 1
           .

       Screen1-Mode-Modification.
           MODIFY Screen1-Pb-Sauvegarder, ENABLED 1
      *     MODIFY Screen1-Pb-Rafraichir, ENABLED 1
           IF CDF NOT = "Z" AND NOT = CHOIX-C
                CALL "W$MENU" USING WMENU-ENABLE, 
                                    Screen1-Mn-Boutons-Handle, 2330
      *          MODIFY Screen1-Pb-AjoutBon, ENABLED 1
           ELSE CALL "W$MENU" USING WMENU-DISABLE, 
                                    Screen1-Mn-Boutons-Handle, 2330
      *          MODIFY Screen1-Pb-AjoutBon, ENABLED 0
           END-IF
           MODIFY Screen1-Pb-Modifier,    ENABLED 0
      *     MODIFY Screen1-Pb-Dupliquer,   VISIBLE 0
           MODIFY Screen1-Pb-Imprimer,    ENABLED 0
      *     MODIFY Screen1-Pb-Supprimer,   ENABLED 0
      *     MODIFY Screen1-Pb-Quitter,     VISIBLE 0
           .

       Screen1-Buf-To-Fld.
           IF Screen1-DaCb-IFO-BUF = 1
              MOVE 1 TO IFO-MBDI
           ELSE
              MOVE 0 TO IFO-MBDI
           END-IF
           IF Screen1-DaCb-IVR-BUF = 1
              MOVE 1 TO IVR-MBDI
           ELSE
              MOVE 0 TO IVR-MBDI
           END-IF
           MOVE Screen1-DaCb-EXC-BUF TO EXC-MBDI 
           INQUIRE Screen1-DaEf-Ref, VALUE REF-MBDI(1)
           INQUIRE Screen1-DaEf-Ref2, VALUE REF-MBDI(2)
           INQUIRE Screen1-DaEf-Nrf, VALUE NRF-MBDI
           INQUIRE Screen1-DaEf-Naf, VALUE NAF-MBDI
      *     INQUIRE Screen1-DaEf-Svc, VALUE SVC-MBDI
           EVALUATE Screen1-RADIO-1-BUF
           WHEN 1
              MOVE ZERO TO ACA-MBDI
           WHEN 2
              MOVE 1 TO ACA-MBDI
           WHEN 3
              MOVE 2 TO ACA-MBDI
           WHEN 4
              MOVE 3 TO ACA-MBDI
           WHEN OTHER
              MOVE 9 TO ACA-MBDI
           END-EVALUATE
           EVALUATE Screen1-RADIO-4-BUF
           WHEN 7
              MOVE ZERO TO IRE-MBDI
           WHEN 8
              MOVE 1 TO IRE-MBDI
           WHEN 9
              MOVE 2 TO IRE-MBDI
           WHEN 10
              MOVE 9 TO IRE-MBDI
           WHEN OTHER
              MOVE ZERO TO IRE-MBDI
           END-EVALUATE
           MOVE Screen1-DaEf-Rep-BUF TO REP-MBDI
           MOVE Screen1-DaEf-JDLI-BUF TO JDLP-MBDI
           MOVE Screen1-DaEf-MDLI-BUF TO MDLP-MBDI
           MOVE Screen1-DaEf-SADLI-BUF TO SADLP-MBDI
           IF DLP-MBDI = 0 
              MOVE DAT-MBDI TO DLP-MBDI
              PERFORM Affich-DLP
           END-IF
           EVALUATE Screen1-RADIO-5-BUF
           WHEN 1
              MOVE ZERO TO AFC-MBDI
           WHEN 2
              MOVE 1 TO AFC-MBDI
           WHEN 3
              MOVE 2 TO AFC-MBDI
           WHEN 4
              MOVE 3 TO AFC-MBDI
           WHEN OTHER
              MOVE ZERO TO AFC-MBDI
           END-EVALUATE
           IF Screen1-DaCb-IFD-BUF = 1
              MOVE 1 TO IFD-MBDI
           ELSE
              MOVE 0 TO IFD-MBDI
           END-IF
           IF Screen1-DaCb-PUS-BUF = 1
              MOVE 0 TO PUS-MBDI
           ELSE
              MOVE 1 TO PUS-MBDI
           END-IF
           INQUIRE Screen1-DaEf-MAM, VALUE MAM-MBDI

           INQUIRE Screen1-DaEf-TYM, VALUE TYM-MBDI.

       Screen1-Fld-To-Buf.
           IF IFO-MBDI = 1
              MOVE 1 TO Screen1-DaCb-IFO-BUF
              MODIFY Screen1-DaCb-IFO, VALUE 1  | forfait
           ELSE
              MOVE 0 TO Screen1-DaCb-IFO-BUF
              MODIFY Screen1-DaCb-IFO, VALUE 0  | pas forfait
           END-IF
           IF IVR-MBDI = 1
              MOVE 1 TO Screen1-DaCb-IVR-BUF
              MODIFY Screen1-DaCb-IVR, VALUE 1  | rétrocession
           ELSE
              MOVE 0 TO Screen1-DaCb-IVR-BUF
              MODIFY Screen1-DaCb-IVR, VALUE 0  | pas rétrocession
           END-IF
           MOVE EXC-MBDI TO Screen1-DaCb-EXC-BUF
           MODIFY Screen1-DaCb-EXC, VALUE Screen1-DaCb-EXC-BUF
           MODIFY Screen1-DaEf-Ref, VALUE REF-MBDI(1) | Réf cli
           MODIFY Screen1-DaEf-Ref2, VALUE REF-MBDI(2) | Réf cli
           MODIFY Screen1-DaEf-Nrf, VALUE NRF-MBDI | Réf interne
           MODIFY Screen1-DaEf-Naf, VALUE NAF-MBDI | N° affaire
      *     MODIFY Screen1-DaEf-Svc, VALUE SVC-MBDI | Code service
           PERFORM Affich-ACA
           PERFORM Affich-Tbpe
           EVALUATE IRE-MBDI       
           WHEN ZERO
              MOVE 7 TO Screen1-RADIO-4-BUF
              MODIFY Screen1-DaRb-IRE0, VALUE 7  | remise normale
              perform affiche-tsp
           WHEN 1
              MOVE 8 TO Screen1-RADIO-4-BUF
              MODIFY Screen1-DaRb-IRE1, VALUE 8  | remise uniforme
              perform efface-tsp
           WHEN 2
              MOVE 9 TO Screen1-RADIO-4-BUF
              MODIFY Screen1-DaRb-IRE2, VALUE 9  | remise supplémentaire
              MODIFY Screen1-Ef-MRU, VALUE MRU-MBDI
              perform efface-tsp
           WHEN 9
              MOVE 10 TO Screen1-RADIO-4-BUF
              MODIFY Screen1-DaRb-IRE9, VALUE 10 | pas de remise
              perform affiche-tsp
           WHEN OTHER
              MOVE ZERO TO Screen1-RADIO-4-BUF
           END-EVALUATE
           MOVE REP-MBDI TO Screen1-DaEf-Rep-BUF   | vendeur
           MODIFY Screen1-DaEf-Rep, VALUE Screen1-DaEf-Rep-BUF
           PERFORM Affich-DLP
           EVALUATE AFC-MBDI
           WHEN ZERO
              MOVE 1 TO Screen1-RADIO-5-BUF   | soumis
              MODIFY Screen1-DaRb-AFC0, VALUE 1
           WHEN 1
              MOVE 2 TO Screen1-RADIO-5-BUF   | exonéré
              MODIFY Screen1-DaRb-AFC1, VALUE 2
           WHEN 2
              MOVE 3 TO Screen1-RADIO-5-BUF   | tva spéciale 2
              MODIFY Screen1-DaRb-AFC2, VALUE 3
           WHEN 3
              MOVE 4 TO Screen1-RADIO-5-BUF   | tva spéciale 3
              MODIFY Screen1-DaRb-AFC3, VALUE 4
           WHEN OTHER
              MOVE ZERO TO Screen1-RADIO-5-BUF
           END-EVALUATE
           IF IFD-MBDI = 1
              MOVE 1 TO Screen1-DaCb-IFD-BUF    | facture en devise
           ELSE
              MOVE 0 TO Screen1-DaCb-IFD-BUF             
           END-IF
           MODIFY Screen1-DaCb-IFD, VALUE Screen1-DaCb-IFD-BUF
           IF PUS-MBDI = 0
              MOVE 1 TO Screen1-DaCb-PUS-BUF    | port usine
           ELSE
              MOVE 0 TO Screen1-DaCb-PUS-BUF
           END-IF
           MODIFY Screen1-DaCb-PUS, VALUE Screen1-DaCb-PUS-BUF.

       Affich-DLP.
           MOVE JDLP-MBDI TO Screen1-DaEf-JDLI-BUF | jour liv prévue
           MODIFY Screen1-DaEf-JDLI, VALUE Screen1-DaEf-JDLI-BUF
           MOVE MDLP-MBDI TO Screen1-DaEf-MDLI-BUF | mois liv prévue
           MODIFY Screen1-DaEf-MDLI, VALUE Screen1-DaEf-MDLI-BUF
           MOVE SADLP-MBDI TO Screen1-DaEf-SADLI-BUF  | SA liv prévue
           MODIFY Screen1-DaEf-SADLI, VALUE Screen1-DaEf-SADLI-BUF.

       Affiche-TSP.
           MODIFY Screen1-Ef-MRU, VISIBLE 0
           .
      *
       Efface-TSP.
           MODIFY Screen1-Ef-MRU, VISIBLE 1
           move space to tsp-mbdi
           .


      ******************************************************************
       TRAIT-DEV.
       F-TRAIT-DEV.
           MOVE CRS-MBDI TO D35
           MODIFY Screen1-Ef-CRS, , VALUE D35  Visible TRUE.
           MODIFY Screen1-La-CRSD, Visible TRUE.
      *
       Screen1-DaCb-IFD-Ev-Cmd-Clicked.
           PERFORM TRAIT-DEV THRU F-TRAIT-DEV
           .

      *================================================================*
      *    DUPLICATION DEVIS
       Duplic-Lignes.  
           MOVE W-AGE TO AGE-MLDI
           MOVE A-BON TO BON-MLDI
           MOVE ZERO  TO LIG-MLDI
           START MXLDIS KEY NOT < CLE1-MLDI INVALID 
               GO F-Duplic-Lignes.
       Lec-Duplic-Lignes.
           READ MXLDIS NEXT END GO F-Duplic-Lignes.
           PERFORM STAT
           IF W-AGE NOT = AGE-MLDI 
           OR A-BON NOT = BON-MLDI 
               GO F-Duplic-Lignes.       
           IF (ART-MLDI = SPACES AND INP-MLDI NOT = PRODUIT-C) 
           OR (PZE-MLDI = 9)
           OR (IND-RELIQUAT-DEVIS = 1 AND IAD-MLDI <> 0)
               GO Lec-Duplic-Lignes.
           MOVE ENR-MLDI TO ENR-MLDI2
           MOVE N-BON TO BON-MLDI2     
           MOVE 0 TO REV-MLDI2 HIV-MLDI2 HIA-MLDI2 HCD-MLDI2 HDD-MLDI2
                     EDI-MLDI2
           WRITE ENR-MLDI2
           PERFORM STAT
           IF INP-MLDI = PRODUIT-C 
                MOVE CLE1-MLDI TO A-CLEB
                MOVE CLE1-MLDI2 TO N-CLEB
                MOVE SPACE TO W-INO
                PERFORM Transfert-Mxcomment
           END-IF
           IF INP-MLDI = PRODUIT-A AND ART-MLDI(1:4) NOT NUMERIC
                MOVE LIG-MLDI TO A-LIG N-LIG
                PERFORM Transfert-Nomldis THRU F-Transfert-Nomldis
           END-IF
      * si duplication devis: dupliquer hisdvd
           IF W-TYPTRS = 9 AND TYP-MBDI = 8
           AND IND-RELIQUAT-DEVIS = 0
              MOVE ENR-MLDI  TO SV-ENR-MLDI2
              MOVE ENR-MLDI2 TO ENR-MLDI
              MOVE 0 TO W-OTE HDD-MLDI
              PERFORM MAJ-HISDVD THRU F-MAJ-HISDVD
              MOVE HDD-MLDI TO HDD-MLDI2
              REWRITE ENR-MLDI2
              PERFORM STAT
              MOVE SV-ENR-MLDI2 TO ENR-MLDI
           END-IF.

060411* si duplication commande
           IF W-TYPTRS = 9 AND TYP-MBDI = 0 
           AND IND-RELIQUAT-DEVIS = 0
              MOVE ENR-MLDI TO SV-ENR-MLDI2
              MOVE ENR-MLDI2 TO ENR-MLDI
              MOVE 0 TO W-OTE HCD-MLDI REV-MLDI
              IF INP-MLDI = PRODUIT-A 
              AND AR1-MLDI NOT NUMERIC  
                  PERFORM Maj-Artsa   
              END-IF
              IF (INP-MLDI = PRODUIT-A AND AR1-MLDI NUMERIC)
              OR (INP-MLDI = PRODUIT-P)
                  MOVE ART-MLDI TO W-ART-MAJ 
                  MOVE 0 TO W-LIN-MAJ     
                  MOVE QTE-MLDI TO A-QTE      
                  IF W-OTE = 0 OR 2
                     PERFORM Maj-Reserv THRU F-Maj-Reserv
                     MOVE ZERO TO SV-HCD-MLDI
                     PERFORM Maj-Hiscdd THRU F-Maj-Hiscdd
                  END-IF
              END-IF 
              MOVE REV-MLDI TO REV-MLDI2
              MOVE HCD-MLDI TO HCD-MLDI2
              REWRITE ENR-MLDI2
              PERFORM STAT
              MOVE SV-ENR-MLDI2 TO ENR-MLDI
           END-IF.

120510* si création reliquat devis
           IF IND-RELIQUAT-DEVIS = 1
              MOVE ENR-MBDI  TO SV-ENR-MBDI2
              MOVE ENR-MBDI2 TO ENR-MBDI
              MOVE ENR-MLDI  TO SV-ENR-MLDI2
              MOVE HDD-MLDI TO HDD-MLDI2 
              MOVE ENR-MLDI2 TO ENR-MLDI
              MOVE 0 TO W-OTE
              PERFORM MAJ-HISDVD THRU F-MAJ-HISDVD
              MOVE HDD-MLDI TO HDD-MLDI2
              REWRITE ENR-MLDI2
              PERFORM STAT
              MOVE SV-ENR-MLDI2 TO ENR-MLDI
              MOVE SV-ENR-MBDI2 TO ENR-MBDI
              perform Del-MXLDIS
           END-IF.

161208* pour créer un avoir à partir d'un B/L
           IF W-TYPTRS = 9 AND TYP-MBDI NOT = 8 AND NOT = 0
           AND IND-RELIQUAT-DEVIS = 0
              MOVE ENR-MLDI TO SV-ENR-MLDI2
              MOVE ENR-MLDI2 TO ENR-MLDI
      * on garde la date de sortie
      *        MOVE DAT-MBDI TO DSP-MLDI
              MOVE 0 TO W-OTE
              IF INP-MLDI = PRODUIT-A 
                  MOVE 0 TO W-LIN-MAJ     
                  PERFORM Maj-Hisvte-Ldis
              END-IF
              MOVE ENR-MLDI TO ENR-MLDI2
              MOVE SV-ENR-MLDI2 TO ENR-MLDI
              REWRITE ENR-MLDI2
              PERFORM STAT
              IF INP-MLDI = PRODUIT-A
                 PERFORM Maj-Bon-Rfv
                 MOVE 1 TO W-NIV
                 MOVE CLE1-MLDI TO A-CLEL
                 MOVE CLE1-MLDI2 TO N-CLEL
                 PERFORM Transfert-Mspmat THRU F-Transfert-Mspmat
              END-IF    
           END-IF.   
      *           
           GO Lec-Duplic-Lignes.
       F-Duplic-Lignes.

      * Changement n° OR dans REFDIV e si création avoir auto
       MAJ-BON-RFV.
           .

       MOD-BON-RECEPTR.
       F-MOD-BON-RECEPTR.

      *================================================================*
       Test-Auto-Fonction.
           MOVE 1 TO OK-Fonction
           .

       DEL-TRISEL.
 
       MAJ-TRISEL.
       
       Aff-Cb-Crecdefou.
               
       Init-Marges.
           IF MMI-MFAM NOT = 0 MOVE MMI-MFAM TO MMI-MGFD.
           IF MMX-MFAM NOT = 0 MOVE MMX-MFAM TO MMX-MGFD.
           IF MMP-MFAM NOT = 0 MOVE MMP-MFAM TO MMP-MGFD.
           IF MIB-MFAM NOT = 0 MOVE MIB-MFAM TO MIB-MGFD.
           IF MAB-MFAM NOT = 0 MOVE MAB-MFAM TO MAB-MGFD.
           IF MIA-MAGD = 1 AND TYC-MBDI = 1 MOVE 0 TO MMP-MGFD
           END-IF.

       Wri-Extbon.
           .

       Maj-Extbon.
           .

       LECT-CXSOC.

