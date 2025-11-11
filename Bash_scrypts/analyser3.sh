#!/bin/bash

vse=0
sov=0
for i in $(ls $1)
do
    for info in $(cat $1$i)
    do
        vse=$(($vse + 1))
#         name=$(echo $info | cut -d ":" -f1)
        age=$(echo $info | cut -d ":" -f2)
#         email=$(echo $info | cut -d ":" -f3)
        if [[ $age -gt 17 ]]
        then
            sov=$(($sov + 1))
        fi
    done
done
echo "Количество совершеннолетних - $sov, количество несовершеннолетних - $(($vse - $sov))"
