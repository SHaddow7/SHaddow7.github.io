---
layout: default
title: Les filtres et flux
#nav_order: 1
---

## Les flux

| Descriptions            | Flux | Alternative | Exemples  |
| ----------------------- | :--: | ----------- | :-------: |
| Flux d'entrée           |  0   | STDIN       |  > ou >>  |
| Flux de sortie standard |  1   | STDOUT      | 1> ou 1>> |
| Flux de sortie d'erreur |  2   | STDERR      | 2> ou 2>> |

```bash
# Exemple (s)

#  Redirection de l'entrée depuis un fichier
cat < /etc/passwd
#  Redirige (copie) les éléments de "passwd" dans "fic"
cat /etc/passwd 1> fic
#  Redirige du fichier musique.mp3 vers des appareils
cat musique.mp3 > /dev/audio
#  Redirige le flux d'entree les éléments de "toto" dans "fic"
echo toto 1>> fic
#  Redirige le flux de sortie d'erreur de "rep" dans "erreur.log"
ls rep 2> erreur.log
#  Entrelacement des 2 sorties
ls rep 1> fic_resultats 2>&1
ls rep &> fic_resultats
```

## Les filtres

```bash
# Afficher l'ensemble du flux passé en entrée :
cat fic
more fic
less fic

# Afficher les n premières / dernières lignes du flux en entrée
head [ -n ] fic
tail [ -n ] fic

# Compter le nombre de lignes / mots / caractères
wc /etc/services
```

```bash
# Syntaxe - cut
cut [OPTIONS] fichier

# Option(s)
#    -c : ensemble de caractères ou une plage de caractères
#    -d : délimiteur qui sera utilisé (par défaut "TAB")
#    -f : ensemble de champs ou une plage de champs
#    -b : ensemble d'octets ou une plage d'octets

# Exemple(s)
#  Afficher les 1er et 3e champs en utilisant ":" comme délimiteur
cut -d ":" -f 1,3 fichier.txt
#  Afficher le 1er et le 3ème champs
cut fichier.txt -f 1,3
#  Afficher du 1er au 4ème champs
cut fichier.txt -f -4
#  Utilise le caractère ' ' comme délimiteur et affiche le 2e champs
echo "Lorem ipsum dolor sit amet" | cut -d ' ' -f 2
#  Selectionne les 5e, 9e et 13e octets
echo 'drüberspringen' | cut -b 5,9,13
# Affiche les 10 commandes les plus fréquemment utilisées
history | cut -c8- | sort | uniq -c | sort -rn | head
```

> [!tldr] > `uniq` : tri sur un fichier ne ramenant qu’une occurrence unique d’une ligne donnée dans le fichier à trier.

```shell
# Syntaxe
uniq [ -udc ] fic

# Options
#    –u : ramène, en résultat du tri, des lignes unique,
#    –d : liste que les lignes dupliquées,
#    –c : liste toutes les lignes + nombre d’occurrence(s) de la ligne affichée.
```

> [!tldr] > `sort` : tri des lignes d’un fichier sur des critères de tri donné

```shell
# Syntaxe
sort [ -r ] [ -o fic_out ] [ -t ca r] [ -k num_champ[n] ] fic.txt

# Options
#    –n : tri sur champd numérique ( ?),
#    –u : ramène des lignes uniques
#    -t : caractère séparateur des champs
#    -k : numero du champ
#    -o : fichier de sortie
```

```bash
# Exemples
sort fic.txt       # Trie un fichier dans l'ordre croissant

sort ­-u fic.txt    # Affiche qu'une fois les lignes identiques
sort -r fic.txt    # Trie un fichier dans l'ordre inverse
sort -b fic.txt    # Trie un fichier en ignorant les espaces blancs de début et de fin
sort -f fic.txt    # Trie un fichier en ignorant la casse

#  Trie un fichier en fonction du deuxième champ (délimité par un espace)
sort -k 2 file.txt
#  Trie un fichier en fonction du deuxième champ dans l'ordre inverse
sort -k 2,2 -r fic.txt
#  Trie numérique sur un fichier en fonction du 4eme champ, délimité par ":"
sort -n -t":" -k4,4 fic.txt
#  Trie un fichier et supprimer les lignes en double
sort fic.txt | uniq
#  Trie un fichier et fusionner les lignes qui ne diffèrent que par la casse
sort -f fic.txt | uniq
```
