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
    return 1
    echo $((a / b))
  fi
}

function is_number(){
  local n=$1
  if [[ $n =~ ^-?[0-9]+$ ]];then
    return 0
  else
    return 1
  fi
}

num1=$1
op=$2
num2=$3

if ! is_number $num1;then
  echo "$num1 n'est un nombre"
  exit 1
fi

if ! is_number $num2;then
  echo "$num2 n'est un nombre"
  exit 1
fi

if [ $# -ne 3 ];then
  echo "usage ./return.sh num1 operation num2"
fi

case $op in
  a ) addition $num1 $num2;;
  s ) soustraction $num1 $num2;;
  m ) multiplication $num1 $num2;;
  d ) division $num1 $num1 $num2;;
  * ) echo "erreur : operation inconnu"
esac