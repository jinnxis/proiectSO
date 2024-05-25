
#!/bin/bash
echo "Bine ai venit! Pentru conectare apasa 1, pentru inregistrare apasa 0!"
read ok
if [ $ok -eq 1 ]; then
        source conectare.sh
elif [ $ok -eq 0 ]; then
        echo "Alege un username"
        source  inregistrare.sh
else
        echo "Am inteles, nu doresti sa te conectezi/inregistrezi. Sa ai o zi buna!"
fi


