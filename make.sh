#!/bin/bash

# per eseguire: chmod +x make.sh && ./make.sh

# definisco alcune variabili
CC="gcc"    # compilatore da usare
out="main"  # nome dell'eseguibile

ROSSO='\033[0;31m'
VERDE='\033[0;32m'
GIALLO='\033[0;33m'
BLU='\033[0;34m'
NC='\033[0m' # No Color

programmi=( *.c )

# creo gli object files (".o" uno e zero)
numeroProgrammi=`find . -name "*.c" | wc -l`
printf "${ROSSO}Compilazione${NC} di ${BLU}${numeroProgrammi}${NC} programmi:\n\n"

for programma in "${programmi[@]}"; do

    $CC -c $programma
    printf "${VERDE}OK ${GIALLO}${programma}${NC}\n"

done

# linko tutti i file oggetto con le librerie necessarie
printf "\n${ROSSO}Linkaggio${NC}"
$CC *.o -lm -o $out
printf " ${VERDE}OK${NC}\n"

# elimino tutti i file oggetto
rm *.o

# esegue il programma
printf "\n----- ${BLU}Esecuzione${NC} -----\n"
./$out
printf "\n-----------------------\n"
