#!/bin/bash
printf "Bine ai venit! Alege o optiune: \n 1. Conectare \n 2. Inregistrare \n 3. Iesire \n Ce ai dori sa faci? [1-3]:  "
read ok
if [ $ok -eq 1 ]; then
        source conectare.sh
elif [ $ok -eq 2 ]; then
        source  inregistrare.sh
else
        echo "Am inteles, nu doresti sa te conectezi/inregistrezi. Sa ai o zi buna!"
fi


