---
layout: default
title: Les processus
parent: Linux
nav_order: 4
---

## Le processus

{: .note }

> La commande `ps` permet de retrouver toutes les informations utiles sur un processus.

```bash
# Syntaxe
ps [ options ]

# Options
#    -e  : indique le statut de tous les processus
#    -f  : tous les informations possibles sur les processus actifs
#    -t  : affiche les processus actifs liés à un terminal
#    -u  : affiche les processus actifs liés à un utilisateur.
```

#### Exemples

```bash
#  Recherche parmi l'ensemble des processus, le processus qui port le nom 'firefox'
ps -aux | grep -i 'firefox'
#  Afficher les informations sur les processus en cours d'exécution pour l'utilisateur courant
ps -u $USER
#  Afficher les infos sur tous les processus, y compris ceux qui sont cachés
ps -e
#  Afficher les infos sur tous les processus en cours d'exécution sous forme de liste détaillée
ps -ef
#  Afficher les infos sur tous les processus en cours d'exécution dans un format spécifique
ps -eo pid,user,%cpu,%mem,command
#  Trier la liste de processus par utilisation de la mémoire
ps aux | sort -nk 4
```

#### Descriptions des colonnes

| Nom   | Descriptions                                                                                                 |
| :---- | :----------------------------------------------------------------------------------------------------------- |
| UID   | Uid (n° d’identifiant) de l’utilisateur                                                                      |
| PID   | N° d’identification du processus                                                                             |
| PPID  | N° d’identification du processus père                                                                        |
| C     | Utilisation du processeur pour le sheduler                                                                   |
| STIME | Instant de démarrage du processus (H-min-sec). Si le processus a plus de 24 h, il est donné en mois et jours |
| TTY   | Terminal de contrôle du processus                                                                            |
| TIME  | Temps CPU utilisé en secondes                                                                                |
| COMD  | Ligne de commande                                                                                            |

#### Obtenir des informations sur les processus

```bash
pstree [-p] [-l] [-s]
htop     # Classement en direct des processus
top      # Classement en direct des processus
free     # Afficher la mémoire libre
vmstat n # Afficher la mémoire virtuelle toutes les n secs:
```

### Intéraction avec des processus

```bash
# Syntaxes
kill [-s signal_name] pid

kill -l [exit_status]
kill -signal_name pid ...
kill -signal_number pid ...

kill [ -SIGTERM | -15 ] PID  # Demande l'arret du processus
kill [ -SIGKILL | -9 ] PID   # Demande au processus de se terminer
kill ­-9 -­1                   # Tue tous processus que l'on a le droit de tuer
killall name                 # Tue tous les processsus qui commence par le nom
xkill                        # Tue une application en mode graphique
pkill nom_processus          # Tue un processus par son nom

# Exemples
kill %numero_job  # Terminer un job en arrière-plan en indiquant son n° de job
kill %+           # Terminer le job courant
kill %-           # Terminer le job précédent
```

### Jobs, fg et bg

```bash
gedit & # lance en arrière plan l'application gedit

jobs    # affiche les processus lancés par Bash (liste avec des « jobs ID »)
fg      # sert à placer un processus en premier plan,
bg      # sert à placer en arrière plan un processus endormi (et donc le réveille).
        # fg et bg utilisent les « jobs ID »
```

### nice et renice

```bash
# Gestion des priorités des processus (de -20 à +19)
#     0 : normal
#  0-19 : basse priorité
# -20-0 : haute priorité (root uniquement)
nice -n 19 commande # nouveau processus
renice -n 19 PID    # processus déjà lancé
```

## Autres

```bash
# Récupération des identifiants d'un processus
echo $BASHPID
echo $$
echo $PPID
```

## Quelques signaux

| Numéro | Descriptions                           | Forme 1 | Forme 2  |
| ------ | -------------------------------------- | ------- | -------- |
| 1      | Instruction (HANG UP) - Fin de session | SIGHUP  |          |
| 2      | Interruption d'un processu             | SIGINT  | Ctrl + C |
| 9      | Termine violemment un processus        | SIGKILL |          |
| 18     | Continuer un processus mis en pause    | SIGCONT |          |
| 19     | Demande de suspension imbloquable      | SIGSTOP | Ctrl + Z |

## Liens

[Liste des signaux](http://patatos.over-blog.com/article-liste-des-signaux-unix-47601760.htm)
