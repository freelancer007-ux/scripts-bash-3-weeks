#!/bin/bash

function addition() {
  local a=$1
  local b=$2
  echo $((a + b))
}

function soustraction() {
  # à compléter
  local a=$1
  local b=$2
  echo $((a - b))
}

function multiplication() {
  # à compléter
  local a=$1
  local b=$2
  echo $((a * b))
}

function division() {
  local a=$1
  local b=$2
  # pense à la division par zéro
  if [ $b -eq 0 ];then
    echo "erreur : division par zero impossible ! "
  else
    echo $((a / b))
  fi
}

# Vérifier que l'utilisateur a bien passé 3 arguments
if [ $# -ne 3 ];then
  echo "Usage : ./calc_v3.sh num1 operation num2"
  echo "Operations : a (addition) s (soustraction) m (multiplication) d (division)"
  exit 1
fi

# Récupérer les arguments
num1=$1
op=$2
num2=$3

# Appeler la bonne fonction selon $op
case $op in
  a) addition $num1 $num2 ;;
  s) soustraction $num1 $num2 ;;
  m) multiplication $num1 $num2 ;;
  d) division $num1 $num2 ;;
  *) echo "Erreur : opération inconnue. Utilise a, s, m ou d" ;;
esac