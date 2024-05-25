#!/bin/bash

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
