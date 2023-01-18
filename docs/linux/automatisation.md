---
layout: default
title: Planification de tâches
parent: Linux
nav_order: 6
---

## Planification de tâches

{: .note }

> Il existe trois méthodes pour ajouter un cron :
>
> 1.  En modifiant un des dossiers `/etc/cron.*`
> 2.  avec `crontab -e` qui édite le fichier cron de l’utilisateur stocké dans `/var/spool/cron/crontabs/`
> 3.  Le fichier `/etc/crontab` stocke la configuration de cron.

```bash
# Syntaxe Crontab
*    *    *    *    *  command(s)
┬    ┬    ┬    ┬    ┬
│    │    │    │    └─  Jour de la semaine   (0=Dimanche .. 6=Samedi)
│    │    │    └──────  Mois                 (1..12)
│    │    └───────────  Jour du mois         (1..31)
│    └────────────────  Heure                (0..23)
└─────────────────────  Minute               (0..59)
```

#### Les opérateurs :

```bash
# * : signifie n'importe quelle valeur ou toujours
# , : permet de spécifier une liste de valeurs à répéter (ex : 1,3,5 => 1h, 3h, 5h)
# - : permet de spécifier une plage de valeurs
# / : permet de spécifier des valeurs qui seront répétées sur un certain intervalle entre elles
```

#### Les macros prédéfinies

```bash
# @yearly  - ( 0 0 1 1 * ) - Exécute la tâche spécifiée une fois par an à minuit le 1er janvier.
# @monthly - ( 0 0 1 * * ) - Exécute la tâche spécifiée une fois par mois à minuit le premier jour du mois.
# @weekly  - ( 0 0 * * 0 ) - Exécute la tâche spécifiée une fois par semaine à minuit le dimanche.
# @daily   - ( 0 0 * * * ) - Exécute la tâche spécifiée une fois par jour à minuit.
# @hourly  - ( 0 * * * * ) - Exécute la tâche spécifiée une fois par heure au début de l'heure.
# @reboot  - Exécute la tâche spécifiée au démarrage du système.
```

#### Options à connaitre

```bash
# Pour soumettre une action à exécuter il faut que l'utilisateur en ait la permission
# fichiers **/etc/cron.allow** ou /et **/etc/cron.deny**

crontab -e  # édition
crontab -l  # visualisation (list)
crontab -r  # suppression de toutes les tâches (remove)
```

### Exemples de fichiers Cron

```bash
# >> à 12:00 AM, le 1er jour du mois on lance la commande "ls /etc > ~/fichier.txt"
# m        h       dom      mon   dow   command
  0        0       1        *     *     ls /etc > ~/fichier.txt
```

```bash
# >> Exécute la commande "cat /etc/passwd > passwd.txt" tout les 5 min tous les jours
# m        h       dom      mon   dow   command
  */5      *       *        *     *     cat /etc/passwd > passwd.txt
```

```bash
# >> Exécute la commande "curl http://www.google.com" chaque mardi à 17h30
# m        h       dom      mon   dow   command
  30       17      *        *     2     curl http://www.google.com
```

```bash
# >> Exécute une commande chaque minute.
# m        h       dom      mon   dow   command
  *        *       *        *     *     ...
```

```bash
# >> Exécute la commande 12 minutes après chaque heure.
# m        h       dom      mon   dow   command
  12       *       *        *     *     ...
```

```bash
# >> Exécute la commande toutes les 15 minutes.
# m        h       dom      mon   dow   command
0,15,30,45 *       *        =*    *    ...
```

```bash
# >> Exécute la commande toutes les 15 minutes.
# m        h       dom      mon   dow   command
  */15     *       *        *     *     ...
```

```bash
# >> Exécute la commande chaque jour à 4h00.
# m        h       dom      mon   dow   command
  0        4       *        *     *     ...
```

```bash
# >> Exécute la commande chaque mardi, mercredi et jeudi à 4h00.
# m        h       dom      mon   dow   command
  0        4       *        2-4   *     ...
```

```bash
# >> Exécute la commande à la 20e et à la 40e minute
# >> de chaque 8e heure tous les jours des 6 derniers mois de l’année.
# m        h       dom      mon   dow   command
  20,40    */8     7-12     *     *     ...
```

```bash
# >> Executer plusieurs tâches dans un seul cron.
# m        h       dom      mon   dow   command
  *        *       *        *     *     /home/scripts/backup.sh; /home/scripts/scritp.sh
```

### Liens utiles

[Cron expression generator by Cronhub](https://crontab.cronhub.io/) <br/>
[Cron Job Generator](https://www.generateit.net/cron-job/) <br/>
[Crontab guru](https://crontab.guru/) <br/>
