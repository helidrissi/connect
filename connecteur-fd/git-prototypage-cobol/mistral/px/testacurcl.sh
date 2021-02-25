#--------------------------------------------------------------------------#
#     Procédure de contrôle de l'acurcl                                    #
#--------------------------------------------------------------------------#
#                                                                          #
if [ "$OSTYPE" = "linux-gnu" ];
then
    LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/java/jre1.6.0_29/lib/i386/server:/usr/java/jre1.6.0_29/lib/i386:/usr/acucobol901/lib:/usr/acucobol92/lib
    export LD_LIBRARY_PATH
    PATH=$PATH:/usr/java/jre1.6.0_29/bin:/usr/java/jre1.6.0_29/lib/i386/server:/usr/acucobol901/bin
    export PATH
else 
    LIBPATH=$LIBPATH:/usr/lib:/usr/java6_64/jre/bin/classic:/usr/java6_64/jre/bin:/usr/java6_64/jre/lib/ppc64:/usr/acucobol92/lib:/usr/acucobol813/lib
    export LIBPATH
    LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/java6_64/jre/bin/classic:/usr/java6_64/jre/bin:/usr/java6_64/jre/lib/ppc64:/usr/acucobol92/lib:/usr/acucobol813/lib
    export LD_LIBRARY_PATH
    PATH=$PATH:/usr/java6_64/jre/bin:/usr/java6_64/jre/bin/classic
    export PATH
fi
#
cd /acu/mistral/o
export VERSION=$1
#
if [ $VERSION = "80" ]  
then NUMPORT=10081
else if [ $VERSION = "83" ]
     then NUMPORT=10814
     else if [ $VERSION = "90" ]
          then NUMPORT=10921
          else exit
          fi
    fi
fi

if [ -s /acu/mistral/f/NUMPORTC ]
   then export NUMPORT=`cat /acu/mistral/f/NUMPORTC|awk '{print $1}'`
fi

while [ 1 = 1 ]
do 
random=$RANDOM
acurcl -info -n $NUMPORT  >>/tmp/ACURCL$random 2>>/tmp/ACURCL$random &
sleep 5
NOTRUNNING=`grep "not running" /tmp/ACURCL$random`
if [ -z "$NOTRUNNING" ]
then if [ -s /tmp/ACURCL$random ]
     then echo "$NUMPORT Vivant (`date +"%H:%M:%S"`)" >>/acu/mistral/ft/CHGPORT
     else echo "Changement de port à `date +"%H:%M:%S"` " >>/acu/mistral/ft/CHGPORT
           CHGDAT=`date +"%A %d %B %Y"`
           CHGTIME=`date +"%H:%M:%S"`
           echo "Changement de port le $CHGDAT à $CHGTIME " >>/acu/mistral/f/CHGPORT
           if [ $VERSION = "80" ]
           then export LIBPATH=/usr/acucobol8/lib
               /usr/acucobol8/bin/runcbl -c /acu/mistral/cfg81/cblconfig /acu/mistral/o/changeportauto.acu 2>>/dev/null >>/dev/null
               sleep 2
               kill -9 `ps -ef|grep acurcl|grep start |grep $NUMPORT|awk '{print $2}'` 2>>/acu/mistral/ft/CHGPORT
               export NUMPORT=`cat /acu/mistral/f/NUMPORTC|awk '{print $1}'`
          else if [ $VERSION = "83" ]
               then /usr/acucobol813/bin/runcbl -c /acu/mistral/cfg813/cblconfig /acu/mistral/o/changeportauto.acu 2>>/dev/null >>/dev/null
                    sleep 2
                    kill -9 `ps -ef|grep acurcl|grep start |grep $NUMPORT|awk '{print $2}'` 2>>/acu/mistral/ft/CHGPORT
                    export NUMPORT=`cat /acu/mistral/f/NUMPORTC|awk '{print $1}'`
               else if [ $VERSION = "90" ]
                    then /usr/acucobol92/bin/runcbl -c /acu/mistral/cfg921/cblconfig /acu/mistral/o/changeportauto.acu 2>>/dev/null >>/dev/null
                         sleep 2
                         kill -9 `ps -ef|grep acurcl|grep start |grep $NUMPORT|awk '{print $2}'` 2>>/acu/mistral/ft/CHGPORT
                         export NUMPORT=`cat /acu/mistral/f/NUMPORTC|awk '{print $1}'`
                         echo $NUMPORT >>/acu/mistral/f/CHGPORT
                    else exit
                    fi
               fi
          fi
     fi
else echo "Pas Démarré"
fi
rm /tmp/ACURCL$random
done
