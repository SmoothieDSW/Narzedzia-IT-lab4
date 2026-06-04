#!/bin/bash
if [ "$1" == "--date" ]; then
    date
elif [ "$1" == "--logs" ]; then
    LICZBA=${2:-100}
    for ((i=1; i<=LICZBA; i++)); do
        NAZWA_PLIKU="log${i}.txt"
        echo "Nazwa pliku: $NAZWA_PLIKU" > $NAZWA_PLIKU
        echo "Skrypt: $0" >> $NAZWA_PLIKU
        echo "Data: $(date)" >> $NAZWA_PLIKU
    done
fi
