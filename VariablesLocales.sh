#!/bin/bash

compteur=0

function incrementer() {
  local i=$1 
  echo $((i + 1))
  # Cette fonction doit incrémenter une variable locale
  # et retourner le résultat via echo
  # sans toucher à la variable globale compteur
}

function additionner() {
  # Prend deux arguments
  local a=$1
  local b=$2
  echo $((a + b))
  # utilise des variables locales a et b
  # retourne le résultat via echo
}

# Test 1 : vérifier que compteur global n'est pas modifié
resultat=$(incrementer 5)
echo "Résultat incrementer : $resultat"
echo "compteur global : $compteur"   # doit rester à 0

# Test 2 : capturer le résultat d'additionner
total=$(additionner 8 3)
echo "Total : $total"   # doit afficher 11ç