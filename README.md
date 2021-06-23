# make
bash script per compilare e linkare un progetto in c

I file devono essere nella stessa cartella e devono avere l'estensione '.c' per essere compilati.
Il compilatore di default è gcc, per cambiarlo basta modificare il valore della variabile di ambiente 'CC': per esempio, se vogliamo usare clang, dovremmo sostituire 'CC="gcc"' alla linea 6 con 'CC="clang"'. 

# esecuzione
Per eseguire lo script assicurarsi di essere in un ambiente bash (per esmpio Unix) e eseguire i seguenti comandi:

- chmod +x make.sh
- ./make.sh

Il primo comando basta eseguirlo una sola volta mentre il secondo è per l'effettiva esecuzione dello script
