---
layout: default
title: Les processus
parent: Linux
nav_order: 3
---

# Les processus

## ps

{: .note }

> `ps` - permet de retrouver toutes les informations utiles sur un processus.

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

|  Nom  | Descriptions                                                                                                 |
| :---: | :----------------------------------------------------------------------------------------------------------- |
|  UID  | Uid (n° d’identifiant) de l’utilisateur                                                                      |
|  PID  | N° d’identification du processus                                                                             |
| PPID  | N° d’identification du processus père                                                                        |
|   C   | Utilisation du processeur pour le sheduler                                                                   |
| STIME | Instant de démarrage du processus (H-min-sec). Si le processus a plus de 24 h, il est donné en mois et jours |
|  TTY  | Terminal de contrôle du processus                                                                            |
| TIME  | Temps CPU utilisé en secondes                                                                                |
| COMD  | Ligne de commande                                                                                            |

## pstree

{: .note }

> `pstree` - permet d'afficher les processus en cours d'exécution sous forme d'arbre hiérarchique, en montrant les relations parent-enfant entre les processus.

#### Syntaxe

```bash
pstree [-p] [-l] [-s]

# Options
#    -p  : affiche les PID (identifiant de processus) de chaque processus dans l'arbre
#    -l  : permet de voir quels sont les PID associés à chaque processus dans l'arbre
#    -s  : permet de changer la taille de l'arbre affiché

#    -u  : affiche le nom d'utilisateur propriétaire de chaque processus
#    -g  : affiche le nom de groupe propriétaire de chaque processus
#    -a  : affiche les arguments de la commande pour chaque processus
```

## Intéraction avec des processus

### Identifiants d'un processus

```bash
echo $BASHPID  #  Affiche l'identifiant (PID) du processus actuel de Bash.
echo $$        #  Affiche l'identifiant (PID) du processus en cours d'exécution.
echo $PPID     #  Affiche l'identifiant (PID) du processus parent du processus en cours d'exécution.
```

### Obtenir des informations sur les processus

```bash
htop        #  Classement en direct des processus
top         #  Classement en direct des processus
free        #  Affiche la mémoire libre
vmstat n    #  Affiche la mémoire virtuelle toutes les n secs
```

### kill / pkill / etc .. - Terminer un processus

#### Syntaxes

```bash
# Syntaxe - Info : envoie un signal au processus
kill [ OPTIONS ] processus_id         #  La forme la plus simple
kill [ -SIGTERM | -15 ] processus_id  #  Demande l'arret du processus
kill [ -SIGKILL | -9 ] processus_id   #  Demande au processus de se terminer

# Options
#   -s <signal>      : Spécifier le signal à envoyer au processus
#   -l [signal]      : Affiche la liste des signaux disponibles sur l'os et leut numéro associé.
#   -<signal_name>   : Spécifier le nom du signal à envoyer au processus
#   -<signal_number> : Spécifier le numéro du signal à envoyer au processus
```

```bash
# Syntaxes
killall [ OPTIONS ] nom_processus   #  Termine un processus par son nom
pkill nom_processus                 #  Termine un processus par son nom
xkill [ OPTIONS ]                   #  Termine une application en mode graphique
```

#### Exemples

```bash
kill -s INT 123   #  Demande au processus 123 de s'arrêter de manière propre
kill ­-9 -­1        #  Termine tous processus que l'on a le droit de tuer
kill %numero_job  #  Termine un job en arrière-plan en indiquant son n° de job
kill %+           #  Termine le job courant
kill %-           #  Termine le job précédent
```

### Fg, Bg et Jobs

#### Syntaxes

```bash
fg      #  Permet de faire passer un processus en arrière-plan en premier plan
bg      #  Permet de faire passer un processus en premier plan en arrière-plan (et donc le réveiller)
jobs    #  Permet d'afficher la liste des processus en cours d'exécution en arrière-plan
        #  dans le terminal actuel
```

#### Exemples

```bash
command & #  Lancer un processus en arrière-plan (en utilisant l'opérateur &)
jobs      #  Afficher la liste des processus en cours d'exécution en arrière-plan
fg %1     #  Faire passer un processus en arrière-plan en premier plan (fg suivi de l'id du processus)
bg %1     #  Faire passer un processus en premier plan en arrière-plan (bg suivi de l'id du processus)
```

### nice et renice

{: .note}

> Les commandes `nice` et `renice` sont utilisées pour changer la priorité d'exécution des processus dans un système Linux.

#### Syntaxes

```bash
# Gestion des priorités des processus (de -20 à +19)
#     0 : normal
#  0-19 : basse priorité
# -20-0 : haute priorité (root uniquement)

nice      #  Permet de lancer un processus avec une priorité spécifique. (Par défaut la priorité est de 0)
renice    #  Permet de changer la priorité d'un processus en cours d'exécution.
```

#### Exemples

```bash
nice -n 19 commande  #  Lance un processus avec une priorité spécifique
renice -n 19 PID     #  Change la priorité d'un processus en cours d'exécution (priorité suivi du pid)
```

## Quelques signaux

| Numéro | Descriptions                             | Forme 1 | Forme 2  |
| :----: | ---------------------------------------- | ------- | -------- |
|   1    | Instruction (HANG UP) - Fin de session   | SIGHUP  |          |
|   2    | Interruption d'un processus              | SIGINT  | Ctrl + C |
|   9    | Termine violemment un processus          | SIGKILL |          |
|   15   | Permet d’arrêter proprement un processus | SIGTERM |          |
|   18   | Continuer un processus mis en pause      | SIGCONT |          |
|   19   | Demande de suspension imbloquable        | SIGSTOP | Ctrl + Z |
