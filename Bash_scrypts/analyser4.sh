#!/bin/bash

m=100
s=0
for i in $(ls $1)
do
    for info in $(cat $1$i)
    do
        name=$(echo $info | cut -d ":" -f1)
        age=$(echo $info | cut -d ":" -f2)
        email=$(echo $info | cut -d ":" -f3)
        if [[ $age -gt $s ]]
        then
            s=$age
            sname=$name
            semail=$email
        fi
        if [[ $age -lt $m ]]
        then
            m=$age
            mname=$name
            memail=$email
        fi
    done
done
echo -e "самый старый пользователь: имя - $sname; возраст - $s; почта - $semail
самый младший пользователь: имя - $mname; возраст - $m; почта - $memail"
