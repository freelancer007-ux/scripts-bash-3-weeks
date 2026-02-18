#!/bin/bash

function addition(){
    local a=$1
    local b=$2
    echo "Resultat de l'addition est $(echo "$a + $b" | bc -l)"
}

function soustraction(){
    local a=$1
    local b=$2
    echo "Resultat de la soustraction est $(echo "$a - $b" | bc -l)"
}

function multiplication(){
    local a=$1
    local b=$2
    echo "Resultat de la multiplication est $(echo "$a * $b" | bc -l)"
}

function division(){
    local a=$1
    local b=$2
    if [ $2 -eq 0 ];then
        echo "Erreur division par zero impossible reessayer !!!"
    else
        echo "Resultat de la division est $(echo "$a / $b" | bc -l)"
    fi
}

while true;
    do 
    echo "Choisir opération (a/s/m/d/q) :"
    read op
    if [ "$op" = "q" ];then
        echo "Au revoir"
        break
    fi
    echo "num1 :"
    read num1
    echo "num2 :"
    read num2


    if [ "$op" = "a" ];then
            addition "$num1" "$num2"
    elif [ "$op" = "b" ];then
            soustraction "$num1" "$num2"
    elif [ "$op" = "c" ];then
            multiplication "$num1" "$num2"
    elif [ "$op" = "d" ];then
            division "$num1" "$num2"
    else
        echo "Opération invalide, veuillez réessayer." 
    fi
done