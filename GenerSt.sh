 #!/bin/bash

# Variaveis
REPO=reports

ls -1 $REPO | grep MessageStatsReport.txt$ > list.txt

echo "Nome do Arquivo; Overhead; Taxa de Entrega; Latencia Média" > result.csv

while read line; do
a=$(echo "$line")
b=$(grep overhead_ratio $REPO/$line | cut -d' ' -f 2)
c=$(grep delivered $REPO/$line | cut -d' ' -f 2)
d=$(grep latency_avg $REPO/$line | cut -d' ' -f 2)
echo "$a;$b;$c;$d" >> result.csv
done < list.txt

