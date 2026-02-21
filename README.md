# scripts-bash-3-weeks
# scripts-bash-3-weeks

Apprentissage progressif du scripting Bash sur 3 semaines.  
Chaque fichier représente une étape dans ma montée en compétences.

---

## Progression

### Bases (file1 → file4)
- `file1.sh` — premier script, affichage simple
- `file2.sh` — variables
- `file3.sh` — lecture utilisateur avec `read`, opérations arithmétiques
- `file4.sh` — conditions `if/elif/else`, gestion de la division par zéro

### Boucles et logique (file5 → file6)
- `file5.sh` — boucle `while true`, menu interactif, `break`
- `file6.sh` — boucle `for`, table de multiplication

### Automatisation système
- `pspipe.sh` — pipes, redirection `>>`, commande `ps`, filtrage avec `grep`
- `startnginx.sh` / `stopnginx.sh` — gestion de services avec `systemctl`

---

## Semaine 1 — Fonctions, Arguments et Robustesse

### CalcFunc.sh
Calculateur avec fonctions et calculs décimaux via `bc`.  
Utilisation de `local` pour isoler les variables.

### calc_v3.sh
Calculateur en ligne de commande.  
Concepts : `$1 $2 $#`, `case`, `exit`, gestion des arguments.  
Usage : `./calc_v3.sh 10 a 5`

### VariablesLocales.sh
Démonstration de la portée des variables avec `local`.  
Retour de valeur depuis une fonction via `echo` + `$()`.

### return.sh
Validation des entrées avec `is_number()` et regex `^-?[0-9]+$`.  
Utilisation de `return 0/1` et `$?`.

### projet1W1.sh — Projet de fin de semaine
Calculateur complet avec :
- `set -eu` pour la robustesse
- Une fonction par opération
- Validation des entrées avec `is_number()`
- Double `case` : validation de l'opérateur + appel de fonction
- Boucle `while true` avec menu interactif
- Gestion des erreurs : division par zéro, opération invalide, entrée non numérique

---

## Concepts maîtrisés

- Fonctions avec `function nom()` et variables locales avec `local`
- Arguments positionnels `$1 $2 $# $@`
- Structures de contrôle : `if/elif/else`, `case`, `while`, `for`
- Validation d'entrée avec regex et `return 0/1`
- Capture de résultat avec `$()`
- Robustesse avec `set -eu`
- Gestion des services système avec `systemctl`
- Pipes et redirections : `|`, `>>`, `grep`

---

## En cours — Semaine 2

Gestion des erreurs avancée : `set -o pipefail`, `trap`, logging avec timestamps.