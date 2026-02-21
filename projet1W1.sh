#!/bin/bash
# gerons les erreur avec set
set -eu
# creons une calculatrice avancé
# creons les fonctions
function addition(){
    local a=$1
    local b=$2
    echo $(( a + b ))
}
function soustraction(){
    local a=$1
    local b=$2
    echo $(( a - b ))
}
function multiplication(){
    local a=$1
    local b=$2
    echo $(( a * b ))
}
function division(){
    local a=$1
    local b=$2
    if [ $b -eq 0 ];then
        echo "erreur dividion par zero"
        exit 1
    fi
    echo $(( a / b ))
}

function is_number(){
    local n=$1
    if [[ $n =~ ^-?[0-9]+$ ]];then
        return 0
    else
        return 1
    fi
}
function afficher_menu(){
    echo "---------------------------"
    echo "a ) addition"
    echo "s ) soustraction"
    echo "m )  mulltiplication"
    echo "d ) division"
    echo "q ) quitter"
    echo "----------------------------"
}

echo "bienvenue"

while true;
    do
        afficher_menu
        echo "votre choix : "
        read op
        if [ $op = "q" ];then
            echo "Au revoir !"
            break
        fi

        case $op in 
            a|s|m|d) ;;
            *) echo "choix invvalide"
            continue;;
        esac
        read -p "num1 : " num1
        while ! is_number "$num1";do 
            echo "Ressayer"
            read -p "num1 : " num1
        done

        read -p "num2 : "  num2
        while ! is_number "$num2";do 
            echo "Ressayer"
            read -p "num2 : "  num2
        done

        case $op in
            a) addition $num1 $num2 ;;
            s) soustraction $num1 $num2 ;;
            m)multiplication $num1 $num2 ;;
            d) division $num1 $num2 ;;
            *) echo "Erreur : opération inconnue. Utilise a, s, m ou d" 
            continue
            ;;
        esac
    done