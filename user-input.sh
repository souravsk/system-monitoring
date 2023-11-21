#!/bin/bash

#This is the main file while me the main file thet will show the menu
: '
    Title: main-file
    AUTHOR: Sourav Kumar
    DATE: 22TH AUGUST, 2023
'

echo "$HOSTNAME"
source cpu-usage.sh
source memory-usage.sh
source file-operation.sh
source email.sh
source convert-file.sh

echo "1. cpu (for cpu)" 
echo "2. mem (for memory)"
echo "3. all (for both)"

read -rp "Enter your choice : " choice
read -rp "Enter the file Name : " file_name
#create-file $file_name

case $choice in
    1) cpu_usage $file_name
        ;;
    2) memory_usage $file_name
        ;;
    3) cpu_usage "$file_name"
       memory_usage "$file_name"
        ;;
    *)
        echo "Please enter the valid choice"
        exit 1
esac

getPdf "$file_name"

read -rp "Enter Sender Email ID : " sender
read -rp "Enter reciver email ID : " reciver
read -rp "Enter sender password : " pass
read -rp "Enter Email subject : " sub

send_email "$sender" "$reciver" "$pass" "$sub" "$file_name".pdf

remove_file "$file_name".pdf
remove_file "$file_name".txt

: 'if [ "$choice" == "1" ]; then
    cpu_usage
elif [ "$choice" == "2" ]; then
    memory_usage
elif [ "$choice" == "3" ]; then
    cpu_usage
    memory_usage
else
    echo "Please enter a valid choice"
    exit 1
fi
'