#!/bin/bash

# Memorizzo l'attuale directory
CUR_DIR=$(pwd)

echo "\n\033[1mVerifico che non ci siano cambiamenti nei repo......\033[0m\n"

# Ciclo le cartelle presenti e procedo con l'aggiornamento 
for i in $(find . -name ".git" | cut -c 3-); do
    echo "";
    echo "\033[33m"+$i+"\033[0m";

    cd "$i";
    cd ..;

    # finally pull
    git pull origin master;

    # lets get back to the CUR_DIR
    cd $CUR_DIR
done

echo "\n\033[32mCompletato!\033[0m\n"

