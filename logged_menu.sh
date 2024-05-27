#!/bin/bash

username="$1"
echo "Bine ai venit, $username!"
echo "Scrie 'logout' pentru a te deconecta."
echo "Scrie 'raport' pentru a genera raportul."
echo "Scrie 'mesaj' pentru a transmite un mesaj altui utilizator."

while true; do

    read -p "$(pwd): " command

    if [ "$command" == "logout" ]; then
        echo "Deconectare..."
        awk -v user="$username" '$1 != user' ../../logged_in_users.csv > temp_file && mv temp_file ../../logged_in_users.csv
    cd ..
    cd ..
        break
    elif [ "$command" == "raport" ]; then
        touch raport.txt
        truncate -s 0 raport.txt

        nr_fis=$(find . -type f | wc -l)
        nr_dir=$(find . -type d | wc -l)
        dim_disc=$(du -sh . | cut -f1)

        echo "Raportul utilizatorului: $username" >> raport.txt
        echo "Numarul de fisiere: $nr_fis" >> raport.txt
        echo "Numarul de directoare: $nr_dir" >> raport.txt
        echo "Dimensiunea pe disc: $dim_disc" >> raport.txt
        echo "Raportul a fost generat in directorul $(pwd)."
     elif [ "$command" == "mesaj" ]; then
        source ../../mesaje.sh
     else
        $command
    fi
done
