#!/bin/bash

update_user_info() {
 
 local username="$1"
 local new_info="$2"
 
 sed -i "/^$username,/c\\$new_info" users.csv
}

if [ ! -d "Utilizatori" ]; then
    mkdir -p "Utilizatori"
fi

echo "Introdu username:"
read username

user_info=$(grep "^$username," users.csv)

if [ -n "$user_info" ]; then
    corect=$(echo "$user_info" | cut -d',' -f2)
    user_id=$(echo "$user_info" | cut -d',' -f4)
    
    echo "Introdu parola:"
    
    read -s password
    if [ "$password" == "$corect" ]; then
        echo "Conectare reusita. ID utilizator: $user_id"
        if [ ! -d "Utilizatori/$username" ]; then
          mkdir -p "Utilizatori/$username"
        fi
        
        current_time=$(date +%Y-%m-%d\ %H:%M:%S)
        new_user_info=$(echo "$user_info" | awk -v id_col="$user_id" -v time_col="$current_time" -F',' 'BEGIN {OFS=","} {$5 = time_col; print}')
        update_user_info "$username" "$new_user_info"
        
        echo "$username" >> logged_in_users.csv
        cd "Utilizatori/$username"
        source ../../logged_menu.sh "$username"
    else
        echo "Parola gresita."
    fi
else
    echo "Utilizator gresit. Iti sugeram inregistrarea!"
fi
