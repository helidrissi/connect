           SELECT TRI      ASSIGN TO ASSIGN-TRI
                           ORGANIZATION INDEXED
                           ACCESS DYNAMIC
                           RECORD KEY IS CLE1-TRI
                           ALTERNATE RECORD KEY IS CLE2-TRI = DAT-TRI,
                                                              ART-TRI
                           WITH DUPLICATES                            
                           ALTERNATE RECORD KEY IS CLE3-TRI = DSP-TRI,
                                                              ART-TRI
                           WITH DUPLICATES                            
                           ALTERNATE RECORD KEY IS CLE4-TRI = ART-TRI, 
                                                              DSP-TRI
                                                              CLI-TRI
                           WITH DUPLICATES                            
                           ALTERNATE RECORD KEY IS CLE5-TRI = DES-TRI, 
                                                              DSP-TRI
                                                              ART-TRI
                           WITH DUPLICATES                            
                           ALTERNATE RECORD KEY IS CLE6-TRI = REP-TRI, 
                                                              DSP-TRI, 
                                                              ART-TRI
                           WITH DUPLICATES                            
                           ALTERNATE RECORD KEY IS CLE7-TRI = CLI-TRI, 
                                                              CDV-TRI, 
                                                              DSP-TRI
                           WITH DUPLICATES                            
                           ALTERNATE RECORD KEY IS CLE8-TRI = NOM-TRI,
                                                              DSP-TRI
                           WITH DUPLICATES                            
                           ALTERNATE RECORD KEY IS CLE9-TRI = BON-TRI,
                                                              DSP-TRI
                           WITH DUPLICATES                            
                           ALTERNATE RECORD KEY IS CLE10-TRI = FAC-TRI,
                                                               DSP-TRI
                           WITH DUPLICATES                            
                           ALTERNATE RECORD KEY IS CLE11-TRI = PCI-TRI,
                                                               DSP-TRI
                           WITH DUPLICATES                            
                           ALTERNATE RECORD KEY IS CLE12-TRI = MAT-TRI,
                                                               DSP-TRI
                           WITH DUPLICATES                            
                           ALTERNATE RECORD KEY IS CLE13-TRI = DEP-TRI,
                                                               DSP-TRI,
                                                               ART-TRI
                           WITH DUPLICATES                            
                           ALTERNATE RECORD KEY IS CLE14-TRI = FOU-TRI,
                                                               DSP-TRI,
                                                               ART-TRI
                           WITH DUPLICATES                            
                           ALTERNATE RECORD KEY IS CLE15-TRI = FAM-TRI,
                                                               DSP-TRI,
                                                               ART-TRI
                           WITH DUPLICATES                            
                           ALTERNATE RECORD KEY IS CLE16-TRI = TMA-TRI,
                                                               DSP-TRI,
                                                               ART-TRI
                           WITH DUPLICATES                            
                           ALTERNATE RECORD KEY IS CLE17-TRI = CHC-TRI,
                                                               DSP-TRI,
                                                               ART-TRI
                           WITH DUPLICATES                            
                            FILE STATUS IS TRI-FILE-STATUS.

