#!/bin/bash
echo "Introdu username"
read username
user_info=$(grep "^$username," users.csv)
if [ -n "$user_info" ]; then
    corect=$(echo $user_info | cut -d',' -f2)
    echo "Introdu parola"
    read password
    if [ "$password" == "$corect" ]; then
        echo "Conectare reusita."
        cd "$username"
    else
        echo "Parola gresita."
    fi
else
    echo "Utilizator gresit. Iti sugeram inregistrarea!"
fi
