#!/bin/bash

utilizatori_logati=()

 while IFS= read -r line; do
    utilizatori_logati+=("$line")
 done < logged_in_users.csv

 echo "Utilizatori conectati:"
for user in "${utilizatori_logati[@]}"; do
    echo "$user"
done

 echo "Alege o optiune:"
 echo "1. Inregistrare"
 echo "2. Login"
 echo "3. Iesire"
 read -p "Ce ai dori sa faci? [1-3]: " choice

case $choice in
 1)
   source inregistrare.sh
   ;;
 2)
   source conectare.sh
   ;;
 3)
   echo "Se iese..."
   break
   ;;
 *)
   echo "Optiune invalida."
   ;;
 esac
