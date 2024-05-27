#!/bin/bash
username="$1"
echo "Introdu destinatarul"
read nume
user_info=$(grep "^$nume," ../../users.csv)
if [ -n "$user_info" ]; then
  if [ ! -d "../../Utilizatori/$nume" ]; then
      mkdir "../../Utilizatori/$nume"
  fi
  adresa="../../Utilizatori/$nume/mail.txt"
  if [ ! -f "$adresa" ]; then
    touch "$adresa"
  fi
  echo "Introduceti mesajul: "
  read mesaj
  echo "De la $username: $mesaj">>"$adresa"
  echo "Mesajul a fost transmis catre $nume"
else
  echo "Mesajul nu a putut fi transmis"
fi






