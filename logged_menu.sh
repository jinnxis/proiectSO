#!/bin/bash

username="$1"
echo "Welcome, $username!"
echo "Type 'logout' to log out."

while true; do

    read -p "$(pwd): " command

    if [ "$command" == "logout" ]; then
        echo "Logging out..."
        awk -v user="$username" '$1 != user' ../../logged_in_users.csv > temp_file && mv temp_file ../../logged_in_users.csv
    cd ..
    cd ..
        break
    else
        $command
    fi
done
