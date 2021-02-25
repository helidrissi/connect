       copy "envmis-handler.cpy".                                       
      
      **************************************************************************
      *    COPY � indiquer dans le Event-Paragraph                             *
      **************************************************************************
       STOP-PROGRAMME-FOU.
      *    Pour arr�ter les programmes qui ex�cutent le source tous les paragraphes en s�quence
      *    Si c'est pas trop tard...
           MOVE "Ce programme ne r�pond pas" TO ACU-MSG-1
           MOVE "Appuyer sur une touche pour quitter" TO ACU-MSG-2
           PERFORM ERREUR-LOG
           PERFORM MSG-ERREUR
           STOP RUN
           .

       TRAIT-COBCAP.
           |Largeur d'une cellule et du cadre d'une grid
           MOVE 0,86 to w-lon-cellule
           move 0,28 to w-lon-cadre
           |Hauteur d'une cellule et du cadre d'une grid
           MOVE 1,54 to w-Haut-cellule
           move 0,15 to w-Haut-cadre
           IF NSO-PALM >= 1 AND <= 9999 MOVE NSO-PALM TO LK-NUMSOC
           ELSE                         MOVE        1 TO LK-NUMSOC.
           ACCEPT LK-OS-TYPE FROM ENVIRONMENT "OSTYPE".
           ACCEPT MX-DIR FROM ENVIRONMENT "FICMX".
           ACCEPT CX-DIR FROM ENVIRONMENT "FICCX".
           ACCEPT RX-DIR FROM ENVIRONMENT "FICRX".
           ACCEPT G-DIR FROM ENVIRONMENT "FIC".
           ACCEPT IMAGE-DIR FROM ENVIRONMENT "FICIMAGE".
           ACCEPT P-DIR FROM ENVIRONMENT "DIR".
           IF P-DIR = "/webp2" MOVE 481 TO W-COLOR-PROTO
           ELSE                MOVE 1   TO W-COLOR-PROTO
           END-IF.
           MOVE 0 TO LK-NUMSOCCX LK-NUMSOCMX
           IF ENV-PALM NOT = SPACE
              IF G-DIR = IMAGE-DIR MOVE ENV-PALM TO IMAGE-DIR
              END-IF
              MOVE ENV-PALM TO G-DIR
              MOVE SPACE TO MX-DIR
              STRING ENV-PALM DELIMITED BY " " 
                     "/mx" DELIMITED BY SIZE INTO MX-DIR
              MOVE SPACE TO CX-DIR
              STRING ENV-PALM DELIMITED BY " " 
                     "/cx" DELIMITED BY SIZE INTO CX-DIR
              MOVE SPACE TO RX-DIR
              STRING ENV-PALM DELIMITED BY " " 
                     "/rx" DELIMITED BY SIZE INTO RX-DIR
           END-IF

           IF MOB-GEDEON = SPACES
              STRING MX-DIR DELIMITED BY "  " 
                     LK-NUMSOC DELIMITED BY SIZE INTO MX-DIR
              STRING CX-DIR DELIMITED BY "  " 
                     LK-NUMSOC DELIMITED BY SIZE INTO CX-DIR
              STRING RX-DIR DELIMITED BY "  " 
                     LK-NUMSOC DELIMITED BY SIZE INTO RX-DIR
           END-IF           
           .
       DLECT-COBCAP.
           IF MOB-PALM NOT = 0 
              IF ACTMOB-PALM = "L" 
                   MOVE "../../mxloc/COBCAP" TO COBCAP-COB  | Sp�cifique MobiLoc
              ELSE MOVE "../../mxwin/COBCAP" TO COBCAP-COB. | Sp�cifique MobiVip
           IF MOB-GEDEON NOT = SPACES
              MOVE "../../gedeon/COBCAP" TO COBCAP-COB.     | Sp�cifique Mobile / G�d�on
           IF W-BGP = 3
              MOVE "/acu/mistral/COBCAP" TO COBCAP-COB.     | Si appel � partir du Webtop ou MobiTec
           IF MXICAREF-PALM = 1
              MOVE "/acu/mistral/COBCAPR" TO COBCAP-COB.     | Si module ICA avec r�f�rentiel
           OPEN INPUT COBCAP
           PERFORM TEST-STATUS THRU FIN-TEST-STATUS
           IF IND-STAT = 2 PERFORM Acu-show-Msg
                           GO ACU-EXIT-RTN.
       LECT-COBCAP.
           READ COBCAP NEXT END GO FLECT-COBCAP.
           PERFORM TEST-STATUS THRU FIN-TEST-STATUS     
           IF IND-STAT = 2 
                 PERFORM Acu-show-Msg
                 GO ACU-EXIT-RTN.
           IF MOB-PALM NOT = ZERO
              Inspect enr-cobf replacing all "cxg" by "mxg"    | Sp�cifique MobiVip 
           End-if
           IF MOB-GEDEON NOT = SPACES                          | Sp�cifique G�d�on/Mobile
              Inspect enr-cobf replacing all 
              "mistral/f/CALREF" by "gedeon/f/CALREF "         
              Inspect enr-cobf replacing all 
              "mistral/f/PAYS" by "gedeon/f/PAYS "        
              Inspect enr-cobf replacing all 
              "mistral/f/LANGUE" by "gedeon/f/LANGUE "         
              Inspect enr-cobf replacing all 
              "mistral/f/LOGICI" by "gedeon/f/LOGICI "       
              Inspect enr-cobf replacing all 
              "mistral/f/PRGMIS" by "gedeon/f/PRGMIS "
              Inspect enr-cobf replacing all 
              "mistral/fg/CODPOS" by "gedeon/f/CODPOS  "
              Inspect enr-cobf replacing all 
              "cxg/f/TITSOC   " by "gedeon/f/TITSOC"
              Inspect enr-cobf replacing all 
              "cxg/f/LANGUE   " by "gedeon/f/LANGUE"
              Inspect enr-cobf replacing all 
              "mxg/f/FONEXT   " by "gedeon/f/FONEXT"
              Inspect enr-cobf replacing all 
              "mxg/f/FONINT   " by "gedeon/f/FONINT"
           End-if
           PERFORM BCL-COBCAP THRU F-BCL-COBCAP                
           VARYING ZC-IND-COB FROM 1 BY 1
             UNTIL ZON1-COB(ZC-IND-COB) = ")" OR " ".
       FLECT-COBCAP.
           CLOSE COBCAP.
           IF ENR-COBF = SPACE
                DISPLAY MESSAGE "Erreur Lecture COBCAP " 
                STOP RUN.     
300818
           MOVE SPACES TO ENVW-COB 
           STRING G-DIR DELIMITED BY " "
                  "/mistral/f/ENVW" DELIMITED BY SIZE
                  INTO ENVW-COB
300818
           GO F-TRAIT-COBCAP.
       BCL-COBCAP.
           IF ZON1-COB(ZC-IND-COB) NOT = "$" GO F-BCL-COBCAP.
           MULTIPLY ZC-IND-COB BY 40 GIVING ZC-DEB-COB
           SUBTRACT 39 FROM ZC-DEB-COB.          
           MOVE SPACE TO ZC-ZON-1 ZC-ZON-2 ZC-ZON-COB
           UNSTRING ENR-COBF DELIMITED BY ALL"/" INTO ZC-ZON-1
                    WITH POINTER ZC-DEB-COB
           UNSTRING ENR-COBF DELIMITED BY ALL" " INTO ZC-ZON-2
                    WITH POINTER ZC-DEB-COB
           IF ZC-ZON-1 = "$MX" 
           OR (ZC-ZON-1 = "$SX" AND MXICAREF-PALM NOT = 1)
           OR (ZC-ZON-1 = "$TX" AND (MXICAREF-PALM NOT = 1
                                     OR CLI-PALM <> 851233))
                     STRING MX-DIR DELIMITED BY " "
                       "/" DELIMITED BY SIZE
                      ZC-ZON-2 DELIMITED BY SIZE INTO ZC-ZON-COB. 
           | environnement ICA avec r�f�rentiel : clients/articles s�par�s dans des
           | sous-r�pertoires de f (s0001 pour soci�t� 1, s0002 pour soci�t� 2, etc...)
           IF (ZC-ZON-1 = "$SX" AND MXICAREF-PALM = 1)
           OR (ZC-ZON-1 = "$TX" AND MXICAREF-PALM = 1
                                AND CLI-PALM = 851233) | sp�cial M3 on s�pare aussi les rapports d'activit�
                     STRING G-DIR DELIMITED BY " "
                       "/mxs" LK-NUMSOC "/" DELIMITED BY SIZE
                      ZC-ZON-2 DELIMITED BY SIZE INTO ZC-ZON-COB.
       
           IF ZC-ZON-1 = "$CX" STRING CX-DIR DELIMITED BY " "
                       "/" DELIMITED BY SIZE
                      ZC-ZON-2 DELIMITED BY SIZE INTO ZC-ZON-COB.
           IF ZC-ZON-1 = "$RX" STRING RX-DIR DELIMITED BY " "
                       "/" DELIMITED BY SIZE
                      ZC-ZON-2 DELIMITED BY SIZE INTO ZC-ZON-COB.
           IF ZC-ZON-1 = "$G" STRING G-DIR DELIMITED BY " "
                       "/" DELIMITED BY SIZE
                      ZC-ZON-2 DELIMITED BY SIZE INTO ZC-ZON-COB.
           MOVE ZC-ZON-COB TO ZON-COB(ZC-IND-COB).
       F-BCL-COBCAP.
           EXIT.
      **** LK-NUMSOC2 = Nouveau N� de St�
       CHGSOCMX-COBCAP.
           IF LK-NUMSOCMX = 0 MOVE LK-NUMSOC TO LK-NUMSOCMX.
           MOVE "mx"        TO LK-ASS-LSOC1  
           MOVE LK-NUMSOCMX TO LK-ASS-NSOC1
           MOVE "mx"        TO LK-ASS-LSOC2
           MOVE LK-NUMSOC2  TO LK-ASS-NSOC2
           IF LK-NUMSOC2 NOT= 0 AND LK-NUMSOC2 NOT= LK-ASS-NSOC1
              INSPECT ENRMX-COBF REPLACING ALL LK-ASS-SOC1
                                            BY LK-ASS-SOC2
              INSPECT MXPERSON-COB REPLACING ALL LK-ASS-SOC1 |PERSON DANS ENRPM-COBF
                                            BY LK-ASS-SOC2
              IF MXICAREF-PALM = 1 PERFORM TRT-CHGSOCMXS-COBCAP
              END-IF
              MOVE LK-NUMSOC2 TO LK-NUMSOCMX.    
            
       TRT-CHGSOCMXS-COBCAP.
           MOVE SPACE TO LK-ASS-SOC1S LK-ASS-SOC2S
           STRING "mxs" LK-NUMSOCMX DELIMITED BY " " INTO LK-ASS-SOC1S
           STRING "mxs" LK-NUMSOC2  DELIMITED BY " " INTO LK-ASS-SOC2S
           INSPECT ENRMX-COBF REPLACING ALL LK-ASS-SOC1S
                                         BY LK-ASS-SOC2S.
       
       CHGSOCCX-COBCAP.
           IF LK-NUMSOCCX = 0 MOVE LK-NUMSOC TO LK-NUMSOCCX.
           MOVE "cx"        TO LK-ASS-LSOC1
           MOVE LK-NUMSOCCX TO LK-ASS-NSOC1
           MOVE "cx"        TO LK-ASS-LSOC2
           MOVE LK-NUMSOC2  TO LK-ASS-NSOC2
           IF LK-NUMSOC2 NOT= 0 AND LK-NUMSOC2 NOT= LK-ASS-NSOC1
              INSPECT ENRCX-COBF REPLACING ALL LK-ASS-SOC1
                                            BY LK-ASS-SOC2
              MOVE LK-NUMSOC2 TO LK-NUMSOCCX.

       CHGSOCMXS-COBCAP.
           IF LK-NUMSOCMXS = 0 MOVE LK-NUMSOC TO LK-NUMSOCMXS.
           MOVE SPACE TO LK-ASS-SOC1S LK-ASS-SOC2S
           STRING "mxs" LK-NUMSOCMXS DELIMITED BY " " INTO LK-ASS-SOC1S
           STRING "mxs" LK-NUMSOC2  DELIMITED BY " " INTO LK-ASS-SOC2S
           IF LK-NUMSOC2 NOT= 0 AND LK-NUMSOC2 NOT= LK-ASS-NSOC1
              INSPECT ENRMX-COBF REPLACING ALL LK-ASS-SOC1S
                                         BY LK-ASS-SOC2S
              MOVE LK-NUMSOC2 TO LK-NUMSOCMXS.  

150414 CHGSOCRX-COBCAP.
           IF LK-NUMSOCRX = 0 MOVE LK-NUMSOC TO LK-NUMSOCRX.
           MOVE "rx"        TO LK-ASS-LSOC1
           MOVE LK-NUMSOCRX TO LK-ASS-NSOC1
           MOVE "rx"        TO LK-ASS-LSOC2
           MOVE LK-NUMSOC2  TO LK-ASS-NSOC2
           IF LK-NUMSOC2 NOT= 0 AND LK-NUMSOC2 NOT= LK-ASS-NSOC1
              INSPECT ENRRX-COBF REPLACING ALL LK-ASS-SOC1
                                            BY LK-ASS-SOC2
              MOVE LK-NUMSOC2 TO LK-NUMSOCRX.

       F-TRAIT-COBCAP.
      * 25/09/2008
           ACCEPT DAT-SYS-M FROM CENTURY-DATE
           ACCEPT HEURE-SYS-M FROM TIME
           .
       F1-TRAIT-COBCAP.
      **************************************************************************
      * Assignation de CX-DIR pour les programmes du module CONSOLIDATION
       ASSIGNATION-CXC.
           IF LK-NUMSOCCX = 0 MOVE LK-NUMSOC TO LK-NUMSOCCX.
           MOVE SPACE TO CX-DIR
           STRING G-DIR DELIMITED BY " " 
                  "/cxc" DELIMITED BY SIZE INTO CX-DIR
           STRING CX-DIR DELIMITED BY "  " 
                  LK-NUMSOCCX DELIMITED BY SIZE INTO CX-DIR
           PERFORM DLECT-COBCAP THRU F-TRAIT-COBCAP
           IF MX-PALM NOT = 1
              MOVE 1 TO ZC-DEB-COB
              MOVE SPACE TO ZC-ZON-1 ZC-ZON-2 ZC-ZON-COB
              UNSTRING MXPARCOUL-COB DELIMITED BY "/" INTO ZC-ZON-1 |/ de /acuf
                    WITH POINTER ZC-DEB-COB
              UNSTRING MXPARCOUL-COB DELIMITED BY "/" INTO ZC-ZON-1 |/ de /mx0001
                    WITH POINTER ZC-DEB-COB
              UNSTRING MXPARCOUL-COB DELIMITED BY "/" INTO ZC-ZON-1 |/ de /f/PARCOUL
                    WITH POINTER ZC-DEB-COB
              UNSTRING MXPARCOUL-COB DELIMITED BY ALL" " INTO ZC-ZON-2
                    WITH POINTER ZC-DEB-COB
              MOVE SPACE TO MXPARCOUL-COB
              STRING CX-DIR DELIMITED BY " "
                     "/" DELIMITED BY SIZE
                     ZC-ZON-2 DELIMITED BY SIZE INTO MXPARCOUL-COB
              END-STRING
           end-if

           .
      **************************************************************************
       CONVDAT-SAMJ-JMSA.
           MOVE S-SAMJ TO S-JMSA
           MOVE A-SAMJ TO A-JMSA A-JMA
           MOVE M-SAMJ TO M-JMSA M-JMA
           MOVE J-SAMJ TO J-JMSA J-JMA
           MOVE D-JMSA TO L-DAT8
           MOVE D-JMA  TO L-DAT6.
           IF D-SAMJ = 0 MOVE SPACE TO RL-DAT8 RL-DAT6.
           MOVE D-MSA TO L-DAT6M
           MOVE D-MA TO L-DAT4M
           IF D-MSA = ZERO MOVE SPACE TO RL-DAT6M RL-DAT4M.
       CONVDAT-JMSA-SAMJ.
           MOVE J-JMSA TO J-SAMJ
           MOVE M-JMSA TO M-SAMJ
           MOVE S-JMSA TO S-SAMJ
           MOVE A-JMSA TO A-SAMJ.
       RECHFMOIS-SAMJ.
           IF M-SAMJ = 2
             DIVIDE SA-SAMJ BY 4 GIVING COBCAP-RESULT 
                                 REMAINDER COBCAP-RESTE
             IF COBCAP-RESTE = 0 MOVE 29 TO J-SAMJ
             ELSE                MOVE 28 TO J-SAMJ
             END-IF
           ELSE
             IF M-SAMJ = 04 OR 06 OR 09 OR 11
               MOVE 30 TO J-SAMJ
             ELSE
               MOVE 31 TO J-SAMJ
             END-IF
           END-IF
           .
      **************************************************************************
      *    Dans le before-create du screen des programmes palm�s:              *
      *            PERFORM CONTROLE-PALME                                      *
      **************************************************************************
       CONTROLE-PALME.
           ACCEPT COBCAP-COB FROM ENVIRONMENT "COBCAP"
           perform installHandler                                       
           MOVE W-LOG-PALM TO LOG-PALM
           MOVE W-NPR-PALM TO NPR-PALM
           MOVE "MIS" TO IDE-PALM
           move 1 to mxdis-palm mxmat-palm mxrep-palm mxloc-palm
           
150120     MOVE ZERO TO MOB-PALM
                   
      *     CALL "../../mistral/o/acces.acu" USING ZONE-PALM
      *     CANCEL "../../mistral/o/acces.acu"
      *     IF EXEC-PALM = "X" 
290115*     AND FONCA-PALM2 NOT = "N"
      *        PERFORM ACU-EXIT-RTN 
      *     END-IF.
290115     move " " TO FONCA-PALM2
           PERFORM TRAIT-COBCAP THRU F-TRAIT-COBCAP.
           move pro-palm to acu-title
           perform Set-Exception-Values.

       CONTROLE-PALME-0.
           MOVE W-LOG-PALM TO LOG-PALM
           MOVE W-NPR-PALM TO NPR-PALM
           CALL "../../mistral/o/acces.acu" USING ZONE-PALM
           IF EXEC-PALM = "X" PERFORM ACU-EXIT-RTN END-IF.
           move pro-palm to acu-title
           perform Set-Exception-Values.       
      **************************************************************************
      *    Dans le before-create du screen des programmes appel�s:             *
      *            PERFORM CONTROLE-CALL                                       *
      **************************************************************************
       CONTROLE-CALL.
           MOVE LK-ZONE-PALM TO ZONE-PALM.
           MOVE "MIS" TO IDE-PALM
150120     MOVE ZERO  TO MOB-PALM
           move 1 to mxdis-palm mxmat-palm mxrep-palm mxloc-palm
           PERFORM TRAIT-COBCAP THRU F-TRAIT-COBCAP.
           move pro-palm to acu-title
           perform Set-Exception-Values.       
      **************************************************************************
      * controle-palmec: contr�le les autorisations d'ex�cution du programme   *
      *                  sans redemander les Initiales                         *
      **************************************************************************
       CONTROLE-PALMEC.
           move "../../mistral/COBCAPCR" to COBCAP-COB
           perform installHandler                                       
           PERFORM CONTROLE-CALL
      **     IF MOB-PALM = 0
      **        MOVE W-LOG-PALM TO LOG-PALM
      **        MOVE W-NPR-PALM TO NPR-PALM
      **        CALL "../../mistral/o/cacces.acu" USING ZONE-PALM
      **     END-IF
           IF EXEC-PALM = "X" PERFORM ACU-EXIT-RTN END-IF.
           move pro-palm to acu-title
           perform Set-Exception-Values.
                              
      *************************************************
      *    Paragraphe sp�cifique au programme ATD     *
      *    (Automatisation traitements diff�r�s)      *
      *************************************************
       CONTROLE-ATD.
           MOVE W-ATD-SOC TO LK-NUMSOC NSO-PALM
           MOVE W-ATD-IDE TO IDE-PALM
           MOVE W-ATD-ENV TO ENV-PALM
           IF MOB-PALM = 0
              MOVE W-LOG-PALM TO LOG-PALM
              MOVE W-NPR-PALM TO NPR-PALM
              CALL "cacces.acu" USING ZONE-PALM  
           END-IF
           MOVE FUNCTION CURRENT-DATE TO DATHEU-SYS-M
           MOVE DAT-SYS-M TO DTT-PALM
           PERFORM TRAIT-COBCAP THRU F-TRAIT-COBCAP.
      *************************************************
      ***  Programmes lanc�s sans contr�le d'acc�s (ex: message miami)
       INIT-PALME.
           CALL "../../mistral/o/init-palme.acu" USING ZONE-PALM
           CANCEL "../../mistral/o/init-palme.acu"
           PERFORM TRAIT-COBCAP THRU F-TRAIT-COBCAP.
           move pro-palm to acu-title
           perform Set-Exception-Values.
      ******************************************************************
      *    PARAGRAPHE DE TEST DU STATUS D'UN FICHIER APRES ACCES       *
      *    Apr�s chaque acc�s (ouverture, lecture, �criture, r��criture*
      *    ou suppression), faire:                                     *
      *           PERFORM TEST-STATUS THRU FIN-TEST-STATUS             *
      *    en sortie: IND-STAT = 0 : acc�s OK                          *
      *    en sortie: IND-STAT = 1 : enreg occup� (apr�s lecture)      *
      *    en sortie: IND-STAT = 2 : erreur sur le fichier             *
      *    en sortie: IND-STAT = 3 : fichier d�j� ouvert               *
      *               faire: PERFORM d acu-msg-info pour afficher        *
      *                      le message d'erreur                       *
      *               et: GO Acu-Exit-Rtn pour sortir du programme     *
      ******************************************************************
       Test-Status.
           MOVE ZERO TO IND-STAT
      *    CALL "C$RERR" USING Extend-Stat, Text-Message                
           move handler-primary-error to Primary-Error                  
           move handler-secondary-error to Secondary-Error              
           move handler-text-message to Text-Message                    
           MOVE Primary-Error TO Acu-Msg-Id
      *    Pas d'erreur
           IF Primary-Error < 10 GO Fin-Test-Status.
      *    Fin de fichier: pas d'affichage d'erreur
           IF Primary-Error = 10 GO Fin-Test-Status.
      *    Enreg non trouv�: pas d'affichage d'erreur
           IF Primary-Error = 23 GO Fin-Test-Status.
      *    cl� en double: pas d'affichage d'erreur
           IF Primary-Error = 22 GO Fin-Test-Status.
      *    enreg occup�
           CALL "C$RERRNAME" USING Acu-Err-File
           IF Primary-Error = 99 OR 93
              if handler-last-mode = "DB"
                 move handler-process-id to process-id
              else
                 IF NOT OS-IS-WIN-FAMILY
                    CALL "C$LOCKPID" GIVING PROCESS-ID
                    end-call
                 END-IF
              end-if
              IF Primary-Error = 99 
                 MOVE 1 TO IND-STAT 
                 GO Fin-Test-Status.
           MOVE 2 TO IND-STAT.
      *    fichier d�j� ouvert (dans les copy)
           IF Primary-Error = 41 MOVE 3 TO IND-STAT.
      *     PERFORM Acu-Show-Msg.
      *    En debug si ENVIRONMENT DIVISION ... WITH DEBUGGING MODE
      *    Lance le debug
      D    IF IND-STAT <> 3 THEN 
      *D       IF IDE-PALM = "MIS" THEN
      D          STOP "DEBUG".
       Fin-Test-Status.
           Exit.
       Stat.
           PERFORM TEST-STATUS THRU FIN-TEST-STATUS
           IF IND-STAT = 2 OR 3 
      *       JMD 19/11/2003 : garde le dernier type de MSG si erreur 
      *                        non r�f�renc�e (ex : fichier non ouvert)
              MOVE Mb-Error-Icon TO Acu-Icon-Type
              MOVE MB-OK         TO Acu-Button-Type
      D       IF IND-STAT = 3 THEN 
      D          STOP "DEBUG"
      D       END-IF
      *       Fin JMD
              PERFORM ACU-SHOW-MSG 
      *        perform Acu-Screen1-exit
              perform Mistral-CloseCurrentWindow
              PERFORM ERREUR-LOG     
              GO ACU-EXIT-RTN
              .

       ERREUR-LOG.
240306*       Cr�e fichier erreur 
210213     MOVE SPACE TO STAT-CMD
           STRING G-DIR   DELIMITED BY " "
                  "/mistral/ferr" DELIMITED BY SIZE
                  INTO STAT-CMD
           CALL "C$MAKEDIR" USING STAT-CMD GIVING STAT-COD
           MOVE FUNCTION CURRENT-DATE TO DATHEU-SYS-M
           IF STAT-PROG = SPACE THEN
              MOVE PRO-PALM TO STAT-PROG
           END-IF
210213     MOVE SPACE TO STAT-CMD
           STRING "echo"        DELIMITED BY SIZE
                  " "           DELIMITED BY SIZE
300915            '"'           DELIMITED BY SIZE | �vite les probl�mes avec les caract�res sp�ciaux d'Unix
                  STAT-PROG     DELIMITED BY "   "
                  " :"          DELIMITED BY SIZE
                  " "           DELIMITED BY SIZE
                  Acu-Msg-1     DELIMITED BY "              "
                  ","           DELIMITED BY SIZE
                  " "           DELIMITED BY SIZE
                  Acu-Msg-2     DELIMITED BY "              "
                  ","           DELIMITED BY SIZE
                  " "           DELIMITED BY SIZE
                  Acu-Msg-3     DELIMITED BY "              "
300915            '"'           DELIMITED BY SIZE
                  " >"          DELIMITED BY SIZE
                  " "           DELIMITED BY SIZE
                  G-DIR         DELIMITED BY " "
                  "/mistral/ferr/"      DELIMITED BY SIZE
                  PRO-PALM      DELIMITED BY " "
                  IDE-PALM      DELIMITED BY " "
                  DATHEU-SYS-M  DELIMITED BY SIZE
                  INTO STAT-CMD
           CALL "C$SYSTEM" USING STAT-CMD
           .

       CURSEUR-SABLIER.
           CALL "W$MOUSE" USING SET-MOUSE-SHAPE, WAIT-POINTER.
       CURSEUR-FLECHE.
           CALL "W$MOUSE" USING SET-MOUSE-SHAPE, ARROW-POINTER.
       Mistral-CloseCurrentWindow.
      *---- Modification du 30/06/2010  /VO
      *    Si dans cblconfig MI-ESCAPE-KEY = "CTRL-*" ( Ctrl *),
      *    c'est cette touche (ctrl + *) qui sera envoy�e pour fermer la fen�tre courante.
      *    Sinon, on envoie la combinaison "Ctrl Shift F12". 
      *    L'utilisation de la touche (Ctrl *) sert notamment pour les �crans avec des
      *    scannettes pour lesquels le changement majuscule- minucule se fait avec la touche shift (param�tr�e dans windows). 
      *    Cette combinaison (Ctrl * ) n'envoie pas de shift donc ne provoque pas de basculement Majuscule - minuscule 
      *    Dans cblconfig, penser � ajouter "KEYSTROKE EXCEPTION=0027 ^\" pour le fonctionnement avec "Ctrl *"     
           ACCEPT TMP-FILE-PROCESS2 FROM ENVIRONMENT "MI-ESCAPE-KEY".
           IF TMP-FILE-PROCESS2 = "CTRL-*"
              CALL "W$KEYBUF" USING 1, "{^\}"
           ELSE
              CALL "W$KEYBUF" USING 1, "{U0}"
           END-IF
           .
       Mistral-TransferFocus.
           CALL "W$KEYBUF" USING 1, "{^I}"
           .
       Mistral-TransferFocusBack.
           CALL "W$KEYBUF" USING 1, "{kB}"
           .
       Mistral-WindowClosing.
           MOVE "Veuillez utiliser le bouton Quitter, SVP." TO ACU-MSG-1
           PERFORM Msg-Info
           MOVE Event-Action-Ignore TO Event-Action
           .
       Mistral-FocusGained.
           MODIFY Control-Handle, COLOR = 482
           .
       Mistral-FocusLost.
           MODIFY Control-Handle, COLOR = 514
           .     
      ******************************************************************
      *    Affichage des messages d'erreur ou d'info                   *
      *    Renseigner le messages dans ACU-MSG-1                       *
      *           (+ ACU-MSG-2 voire ACU-MSG-3 si message + long       *
      *    Renvoie ACU-RETURN-VALUE si Msg-On ou Msg-Ona               *
      ******************************************************************
       Msg-Info.
           MOVE MB-YES TO Acu-Button-Type
           MOVE MB-WARNING-ICON TO Acu-Icon-Type
           MOVE PRO-PALM TO Acu-Title
           PERFORM ACU-MESSAGE-BOX.
           MOVE ACU-MSG-1 TO Jbu-Acu-Msg-1
           MOVE ACU-MSG-2 TO Jbu-Acu-Msg-2
           MOVE ACU-MSG-3 TO Jbu-Acu-Msg-3
           MOVE SPACE TO ACU-MSG-1 ACU-MSG-2 ACU-MSG-3 ACU-MSG-TEXT.
       Msg-Erreur.
           MOVE MB-YES TO Acu-Button-Type
           MOVE MB-ERROR-ICON TO Acu-Icon-Type
           MOVE PRO-PALM TO Acu-Title
           PERFORM ACU-MESSAGE-BOX.
           MOVE ACU-MSG-1 TO Jbu-Acu-Msg-1
           MOVE ACU-MSG-2 TO Jbu-Acu-Msg-2
           MOVE ACU-MSG-3 TO Jbu-Acu-Msg-3
           MOVE SPACE TO ACU-MSG-1 ACU-MSG-2 ACU-MSG-3 ACU-MSG-TEXT.
      *    JMD 17/02/04
      *    En debug si ENVIRONMENT DIVISION ... WITH DEBUGGING MODE
      *    Lance le debug et permet d'acc�der directement au source de l'erreur
      *D  IF IDE-PALM = "MIS" THEN
      D    STOP "DEBUG".
      *  Message OUI/NON
       Msg-ON.
           MOVE MB-YES-NO TO Acu-Button-Type
           MOVE MB-DEFAULT-ICON TO Acu-Icon-Type
           MOVE PRO-PALM TO Acu-Title
           PERFORM ACU-MESSAGE-BOX.
           MOVE SPACE TO ACU-MSG-1 ACU-MSG-2 ACU-MSG-3 ACU-MSG-TEXT.
      *  Message OUI/NON/ANNULER
       Msg-ONA.
           MOVE MB-YES-NO-CANCEL TO Acu-Button-Type
           MOVE MB-DEFAULT-ICON TO Acu-Icon-Type
           MOVE PRO-PALM TO Acu-Title
           PERFORM ACU-MESSAGE-BOX.
           MOVE SPACE TO ACU-MSG-1 ACU-MSG-2 ACU-MSG-3 ACU-MSG-TEXT.

      ******************************************************************
      *    Affichage des messages pour les enregistrements annul�s     *
      *    Renseigner la date d'annulation dans Acu-DANN               *
      *               L'auteur de l'annulation dans Acu-IANN           *
      *    Renvoie de ACU-RETURN-VALUE si MSG-ANN-REINTEGRE            *
      ******************************************************************
       MSG-ANN.
           MOVE SPACE TO ACU-MSG-1
           STRING "Supprim� par" DELIMITED BY SIZE
                  " " delimited by size
                  Acu-IANN DELIMITED BY SIZE INTO ACU-MSG-1
           MOVE Acu-DANN TO D-SAMJ
           PERFORM CONVDAT-SAMJ-JMSA
           MOVE D-JMSA TO L-DAT8
           STRING "Le" DELIMITED BY SIZE
                  " " delimited by size
                  L-DAT8 DELIMITED BY SIZE INTO ACU-MSG-2
           PERFORM MSG-INFO
           .

       MSG-ANN-REINTEGRE.
           STRING "Supprim� par" DELIMITED BY SIZE
                  " " delimited by size
                  Acu-IANN DELIMITED BY SIZE INTO ACU-MSG-1
           MOVE Acu-DANN TO D-SAMJ
           PERFORM CONVDAT-SAMJ-JMSA
           MOVE D-JMSA TO L-DAT8
           STRING "Le" DELIMITED BY SIZE
                  " " delimited by size
                  L-DAT8 DELIMITED BY SIZE INTO ACU-MSG-2
           MOVE "A R�int�grer ? " TO ACU-MSG-3
           PERFORM MSG-ON
           .
           
      ******************************************************************
      *    Message pour validation impression                          *
      *    Renvoie de ACU-RETURN-VALUE � 1 si OK                       *
      ******************************************************************     
       MSG-IMPRESSION.
           MOVE "Validez-vous le lancement de l'impression ?" 
             TO ACU-MSG-1
           PERFORM MSG-ON
           .
           
      ******************************************************************
      *    Affichage de l'aide en ligne                                *
      ******************************************************************
      * Aide.
      *     CALL "../../mistral/o/aide.acu" USING ZONE-PALM LK-AIDE
      *     CANCEL "../../mistral/o/aide.acu".         

       Set-Exception-Values.
           SET EXCEPTION VALUES 9801 TO ITEM-HELP, 
                                9802 to HELP-CURSOR,
                                9803 TO COPY-SELECTION,
                                9822 TO PASTE-SELECTION,
                                9824 TO CUT-SELECTION,
                                9826 TO UNDO,
                                9827 TO SELECT-ALL-SELECTION.


      **** V�rif fonction autoris�e dans l'agence
      **** avec affichage message si non autoris�
      **** Renseigner CDF-FONCTION avec 
      *        "C" = cr�ation
      *        "M" = modif
      *        "I" = interro
      *        "A" = suppression
      *     ou "E" = ex�cution
110913*        "P" = impression
       CONTROLE-FONCTION.
           MOVE 1 TO OK-FONCTION
           EVALUATE CDF-FONCTION
           WHEN "E" MOVE 1 TO IND-TAB-PALM
           WHEN "C" MOVE 2 TO IND-TAB-PALM
           WHEN "M" MOVE 3 TO IND-TAB-PALM
           WHEN "I" MOVE 4 TO IND-TAB-PALM
           WHEN "A" MOVE 5 TO IND-TAB-PALM
110913     WHEN "P" MOVE 6 TO IND-TAB-PALM
           WHEN OTHER EXIT PARAGRAPH
           END-EVALUATE
      *     IF IND-TAB-PALM = 3 OR 4
      *         IF ELT-PALM(IND-TAB-PALM) NOT = "X"
      *               MOVE ELT-PALM(IND-TAB-PALM) TO TYP-NAUTOR2.
           IF ELT-PALM(IND-TAB-PALM) = "X" PERFORM AFF-NAUTOR
110209**        ELSE IF ISO-PALM = 2 AND NSO-PALM NOT = 0
                ELSE IF ISO-PALM = "C" AND NSO-PALM NOT = 0
                     AND TFSO-PALM(IND-TAB-PALM) = "X"
                         PERFORM AFF-NAUTOR
                     ELSE IF IAG-PALM = "C" 
                          AND TFAG-PALM(IND-TAB-PALM) = "X"
                              PERFORM AFF-NAUTOR.
       AFF-NAUTOR.
           MOVE 0 TO OK-FONCTION
      *     IF OK-AUTOR NOT = "-" 
               MOVE 380 TO ACU-MSG-ID
               PERFORM ACU-SHOW-MSG
      *     END-IF
           .

      **** Idem CONTROLE-FONCTION mais sans message
      *
       CONTROLE-FONCTION-MUET.

           MOVE 1 TO OK-FONCTION
           EVALUATE CDF-FONCTION
           WHEN "E" MOVE 1 TO IND-TAB-PALM
           WHEN "C" MOVE 2 TO IND-TAB-PALM
           WHEN "M" MOVE 3 TO IND-TAB-PALM
           WHEN "I" MOVE 4 TO IND-TAB-PALM
           WHEN "A" MOVE 5 TO IND-TAB-PALM
           WHEN OTHER EXIT PARAGRAPH
           END-EVALUATE
           IF ELT-PALM(IND-TAB-PALM) = "X" 
              MOVE 0 TO OK-FONCTION
           ELSE 
              IF  ISO-PALM = 2 
              AND NSO-PALM NOT = 0
              AND TFSO-PALM(IND-TAB-PALM) = "X"
                 MOVE 0 TO OK-FONCTION
              ELSE 
                 IF  IAG-PALM = "C" 
                 AND TFAG-PALM(IND-TAB-PALM) = "X"
                    MOVE 0 TO OK-FONCTION.

