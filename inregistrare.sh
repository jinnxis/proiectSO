#!/bin/bash
echo "Introdu username-ul dorit:"
read username
if grep -q "^$username," users.csv; then
        echo "Username deja folosit."
    else
        echo "Introdu parola:"
        read -s parola
        echo "Introdu adresa de mail:"
        read mail
        verificare="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,}$"
        if [[ $mail =~ $verificare ]]; then
          highest_id=$(awk -F',' 'NR>1 && $4+0==$4 {print $4}' users.csv | sort -rn | head -n 1)
          id=$((highest_id + 1))
          echo "$username,$parola,$mail,$id" >> users.csv
          mkdir "Utilizatori/$username"
          echo "Utilizator creat!"
          cd "Utilizatori/$username"
        else
          echo "Adresa de mail incorecta. Utilizatorul nu a fost creat!"
        fi
    fi
