#!/bin/bash

clear

# Variaveis
FILECONF='default_settings.txt'
i=0

menu() {
   echo "#######################################################################"
   echo "#####  THE ONE - The Opportunistic Network Environment simulator  #####"
   echo "#######################################################################"
   echo " "
   echo "###  Algoritmos de Roteamento DTN  ###"
   echo "### 1 - Prophet                      #"
   echo "### 2 - Spray-and-Wait               #"
   echo "### 3 - Epidemic                     #"
   echo "### 0 - Exit/Sair                    #"
   echo "######################################"
   echo " "
   echo -n "Escolha uma das opções acima:"
   read opcao
   case $opcao in
       1) PR ;;
       2) SAW ;;
       3) ER ;;
       0) exit ;;
       *) echo " "
          echo "Opção Invalida! Retornando ao Menu..."
          sleep 3
          clear
          menu ;;
   esac

}

PR() {
sed -i 's/Group.router.*/Group.router = ProphetRouter/' $FILECONF
body
}

SAW() {
sed -i 's/Group.router.*/Group.router = SprayAndWaitRouter/' $FILECONF
body
}

ER() {
sed -i 's/Group.router.*/Group.router = EpidemicRouter/' $FILECONF
body
}

body() {
while read trline; do
while read nhline; do
while read bsline; do

sed -i 's/Scenario.name.*/Scenario.name = Report_'$trline'_'$nhline'_'$bsline'/' $FILECONF
sed -i 's/btInterface.transmitRange.*/btInterface.transmitRange = '$trline'/' $FILECONF
sed -i 's/Group.nrofHosts.*/Group.nrofHosts = '$nhline'/' $FILECONF
sed -i 's/Group.bufferSize.*/Group.bufferSize = '$bsline'/' $FILECONF

i=$((i+1))

echo " "
echo "Execução: $i"
echo " "

./one.sh -b 1 $FILECONF

done < bufferSize.txt
done < nrofHosts.txt
done < transmitRange.txt
}

menu
