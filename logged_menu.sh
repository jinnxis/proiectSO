#!/bin/bash

username="$1"
echo "Bine ai venit, $username!"
echo "Scrie 'logout' ca sa te deconectezi."
echo "Scrie 'source ../../mesaje.sh' pentru a transmite un mesaj altui utilizator."

while true; do

    read -p "$(pwd): " command

    if [ "$command" == "logout" ]; then
        echo "Deconectare..."
        awk -v user="$username" '$1 != user' ../../logged_in_users.csv > temp_file && mv temp_file ../../logged_in_users.csv
    cd ..
    cd ..
        break
    else
        $command
    fi
done
