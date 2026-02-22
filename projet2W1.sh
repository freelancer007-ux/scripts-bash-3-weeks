#!/bin/bash
set -eu

function is_number() {
  local n=$1
  if [[ $n =~ ^-?[0-9]+$ ]]; then
    return 0
  else
    return 1
  fi
}
function km_to_miles() {
  local valeur=$1
  echo $(echo "$valeur * 0.621371" | bc -l)
}

function miles_to_km() {
  local valeur=$1
  echo $(echo "$valeur * 1.60934" | bc -l)
}

function celsius_to_fahrenheit() {
  local valeur=$1
  echo $(echo "($valeur * 9/5) + 32" | bc -l)
}

function fahrenheit_to_celsius() {
  local valeur=$1
  echo $(echo "($valeur - 32) * 5/9" | bc -l)
}

function kg_to_lbs() {
  local valeur=$1
  echo $(echo "$valeur * 2.20462" | bc -l)
}

function lbs_to_kg() {
  local valeur=$1
  echo $(echo "$valeur / 2.20462" | bc -l)
}

# Vérifier les arguments
if [ $# -ne 3 ]; then
  echo "Usage : ./convert.sh valeur unite_source unite_cible"
  echo "Exemples :"
  echo "  ./convert.sh 100 km miles"
  echo "  ./convert.sh 37 c f"
  exit 1
fi

valeur=$1
source=$2
cible=$3

# Valider que valeur est un nombre
if ! is_number $valeur; then
  echo "Erreur : '$valeur' n'est pas un nombre"
  exit 1
fi

# Choisir la conversion
case "$source-$cible" in
  km-miles)    km_to_miles $valeur ;;
  miles-km)    miles_to_km $valeur ;;
  c-f)         celsius_to_fahrenheit $valeur ;;
  f-c)         fahrenheit_to_celsius $valeur ;;
  kg-lbs)      kg_to_lbs $valeur ;;
  lbs-kg)      lbs_to_kg $valeur ;;
  *)           echo "Erreur : conversion '$source' vers '$cible' inconnue" ; exit 1 ;;
esac