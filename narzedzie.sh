#!/bin/bash
case "$1" in
    --date|-d)
        date
        ;;
    --logs|-l)
        LICZBA=${2:-100}
        for ((i=1; i<=LICZBA; i++)); do
            NAZWA_PLIKU="log${i}.txt"
            echo "Nazwa pliku: $NAZWA_PLIKU" > $NAZWA_PLIKU
            echo "Skrypt: $0" >> $NAZWA_PLIKU
            echo "Data: $(date)" >> $NAZWA_PLIKU
        done
        ;;
    --help|-h)
        echo "Dostepne opcje:"
        echo "  --date, -d      - Wyswietla dzisiejsza date"
        echo "  --logs, -l [N]  - Tworzy N plikow log (domyslnie 100)"
        echo "  --help, -h      - Wyswietla te pomoc"
    --init)
        URL_REPOZYTORIUM=$(git config --get remote.origin.url)
        git clone "$URL_REPOZYTORIUM" .
        export PATH="$PATH:$(pwd)"
        echo "Repozytorium sklonowane, sciezka PATH zaktualizowana."
        ;;
esac
