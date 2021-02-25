      *------ tests sur l'entité ---------------------------  
      *    rb-niv1 = radio bouton société
      *    rb-niv2 = radio bouton agence
      *    rb-niv3 = radio bouton région
      *    rb-niv4 = radio bouton plusieurs agences
      *    rb-niv5 = radio bouton une société comptable

           move 1 to lco-mpar
           move 2 to caa-palm

      *     IF LCO-MPAR = 1  | intégration comptable par agence
      *        modify screen1-rb-niv5, visible 1
      *     ELSE
      *        modify screen1-rb-niv5, visible 0
      *     END-IF

           if caa-palm = 1       | mono-agence
              modify screen1-ef-age, visible 0
              modify screen1-ef-nomage, visible 0
      *        modify screen1-ef-reg, visible 0
      *        modify screen1-ef-nomreg, visible 0
      *        modify screen1-pb-reg, visible 0
      *        modify screen1-pb-agc, visible 0
              modify screen1-rb-niv1, enabled 0
              modify screen1-rb-niv2, enabled 0
      *        modify screen1-rb-niv3, enabled 0
      *        modify screen1-rb-niv4, enabled 0
      *        modify screen1-rb-niv5, enabled 0
              move 2 to nsa-int
              move ags-mpar to age-int
           else   
              if WAGC-OK = 2        | utilisateur bloqué sur une agence
                 modify screen1-ef-age, enabled 0
                 modify screen1-ef-nomage, enabled 0
      *           modify screen1-ef-reg, visible 0
      *           modify screen1-ef-nomreg, visible 0
      *           modify screen1-pb-reg, visible 0
      *           modify screen1-pb-agc, enabled 0
                 move 2 to nsa-int
                 modify screen1-rb-niv1, enabled 0
                 modify screen1-rb-niv2, enabled 0
      *           modify screen1-rb-niv3, enabled 0
      *           modify screen1-rb-niv4, enabled 0
      *           modify screen1-rb-niv5, enabled 0
                 move age-palm to age-int
               else if ata-palm < 1             | niveau société pas autorisé en interro
                    OR (     TESTNIVEAU-SOC-MODIF = 1
                         AND ata-palm < 2 )       | niveau société pas autorisé en modif
                      if nsa-int = 1 
                          move 2 to nsa-int
                      end-if
                      modify screen1-rb-niv1, enabled 0, visible 1
                  else                                 
                      modify screen1-rb-niv1, enabled 1, visible 1
                  end-if
                  modify screen1-rb-niv2, enabled 1, visible 1
      *            modify screen1-rb-niv5, enabled 1
      *            modify screen1-rb-niv3, enabled 1, visible 1
      *            modify screen1-rb-niv4, enabled 1, visible 1
              end-if
           end-if
      *     if nsa-int = 5 then
      *        modify screen1-la-ags, visible 1
      *        modify screen1-ef-ags, visible 1
      *        modify screen1-pb-ags, visible 1
      *        modify screen1-ef-nomags, visible 1
      *     else
      *        modify screen1-la-ags, visible 0
      *        modify screen1-ef-ags, visible 0
      *        modify screen1-ef-nomags, visible 0
      *        modify screen1-pb-ags, visible 0
      *     end-if

      *     if nsa-int = 3 then
      *        modify screen1-ef-reg, visible 1
      *        modify screen1-ef-nomreg, visible 1
      *        modify screen1-pb-reg, visible 1
      *     else
      *        modify screen1-ef-reg, visible 0
      *        modify screen1-ef-nomreg, visible 0
      *        modify screen1-pb-reg, visible 0
      *     end-if

           if nsa-int = 2 and caa-palm <> 1 then
              modify screen1-ef-age, visible 1
      *        modify screen1-pb-agc, visible 1
              modify screen1-ef-nomage, visible 1
           else
              modify screen1-ef-age, visible 0
              modify screen1-ef-nomage, visible 0
      *        modify screen1-pb-agc, visible 0
           end-if
           modify screen1-rb-niv1, VALUE NSA-INT
           modify screen1-rb-niv2, VALUE NSA-INT
      *     modify screen1-rb-niv3, VALUE NSA-INT
      *     modify screen1-rb-niv4, VALUE NSA-INT
      *     modify screen1-rb-niv5, VALUE NSA-INT


