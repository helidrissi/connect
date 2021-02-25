      * Formatte une chaine de caractères en nom de fichier valide
      *
      *   COPY "U:/mistral/copy/assign-fic-unix.cbl" 
      *         REPLACING ==assign-fic-unix-filename== BY ==mon-nom-de-fichier==

           inspect assign-fic-unix-filename replacing
               all " " by "_"
               all "*" by "_"
               all "&" by "_"
               all "/" by "_"
               all "\" by "_"
               all "'" by "_"
               all "`" by "_"
               all """" by "_"
               all "," by "_"
               all ";" by "_"
               all "^" by "_"
               all "#" by "_"
               all "{" by "_"
               all "}" by "_"
               all ">" by "_"
               all "<" by "_"
           inspect assign-fic-unix-filename replacing
               trailing "_" by " "
           .
