#!/bin/bash

for i in $(ls $1)
do
    for info in $(cat $1$i)
    do
        name=$(echo $info | cut -d ":" -f1)
        age=$(echo $info | cut -d ":" -f2)
        email=$(echo $info | cut -d ":" -f3)
        echo -e "имя - $name; возраст - $age; почта - $email"
    done
done
