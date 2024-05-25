#!/bin/bash
echo "Introdu username-ul dorit"
read username
if grep -q "^username," users.csv; then
        echo "Username deja folosit."
    else
        echo "Introdu parola"
        read -s parola
        echo "Introdu adresa de mail"
        read mail
        verificare="^[a-zA-Z0-9._%+-]+@yahoo\.com$"
        if [[ $mail =~ $verificare ]]; then
          echo "$username,$parola,$mail," >> users.csv
          mkdir "$username"
          echo "Utilizator creat!"
          cd "$username"
        else
          echo "Adresa de mail incorecta. Utilizatorul nu a fost creat!"
        fi
    fi
