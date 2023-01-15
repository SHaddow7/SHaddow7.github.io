---
layout: default
title: Les filtres et flux
nav_order: 5
---

## Les flux

#### Syntaxes

| Descriptions            | Flux | Alternatives |   Exemples   |
| :---------------------- | :--: | :----------: | :----------: |
| Flux d'entrée           |  0   |    STDIN     |  > ou \>\>   |
| Flux de sortie standard |  1   |    STDOUT    | 1> ou 1 \>\> |
| Flux de sortie d'erreur |  2   |    STDERR    | 2> ou 2 \>\> |

#### Exemples

```bash
cat < /etc/passwd             #  Redirection de l'entrée depuis un fichier
cat /etc/passwd 1> fic        #  Redirige (copie) les éléments de "passwd" dans "fic"
cat musique.mp3 > /dev/audio  #  Redirige du fichier musique.mp3 vers des appareils
echo toto 1>> fic             #  Redirige le flux d'entree les éléments de "toto" dans "fic"
ls rep 2> erreur.log          #  Redirige le flux de sortie d'erreur de "rep" dans "erreur.log"

#  Entrelacement des 2 sorties
ls rep 1> fic_resultats 2>&1
ls rep &> fic_resultats
```

## Les filtres

```bash
cat fic           #  Lit le contenu des fichiers et l'affiche sur la sortie standard
more fic          #  Permet de se déplacer dans un texte
less fic          #  Permet de visualiser un fichier texte page par page
head [ -n ] fic   #  Afficher les n premières lignes du flux en entrée
tail [ -n ] fic   #  Afficher les n dernières lignes du flux en entrée
```

### wc

```bash
# Syntaxe
wc [OPTION] fichier

# Options
#    -l : Affiche le nombre de lignes
#    -c : Affiche le nombre de caractères
#    -w : Affiche le nombre de mots
```

#### Exemples

```bash
wc -l /etc/services  #  Compter le nombre de lignes du fichier "services"
wc -w /etc/services  #  Compter le nombre de mots du fichier "services"
wc -c /etc/services  #  Compter le nombre de caractères du fichier "services"
```

### Cut

{: .note }

> `cut` permet d'extraire des colonnes spécifiques des lignes de texte

```bash
# Syntaxe - cut
cut [OPTIONS] fichier

# Options
#    -c : ensemble de caractères ou une plage de caractères
#    -d : délimiteur qui sera utilisé (par défaut "TAB")
#    -f : ensemble de champs ou une plage de champs
#    -b : ensemble d'octets ou une plage d'octets
```

#### Exemples

```bash
cut -d ":" -f 1,3 fichier.txt  # Afficher les 1er et 3e champs en utilisant ":" comme délimiteur
cut fichier.txt -f 1,3         # Afficher le 1er et le 3ème champs
cut fichier.txt -f -4          # Afficher du 1er au 4ème champs

echo "L rem i sum" | cut -d ' ' -f 2   # Utilise le caractère ' ' comme délimiteur et affiche le 2e champs
echo 'drüberspringen' | cut -b 5,9,13  # Selectionne les 5e, 9e et 13e octets
```

### Uniq

{: .note }

> `uniq` : tri sur un fichier ne ramenant qu’une occurrence unique d’une ligne donnée dans le fichier à trier.

```shell
# Syntaxe
uniq [ -udc ] fic

# Options
#    –u : ramène, en résultat du tri, des lignes unique,
#    –d : liste que les lignes dupliquées,
#    –c : liste toutes les lignes + nombre d’occurrence(s) de la ligne affichée.
```

#### Exemples

```bash
sort chemin/fichier | uniq    #  Afficher chaque ligne une fois
sort chemin/fichier | uniq -u #  Afficher uniquement les lignes uniques
sort chemin/fichier | uniq -d #  Afficher uniquement les lignes dupliquées
sort chemin/fichier | uniq -c #  Afficher le nombre d'occurrences de chaque ligne
```

### Sort

{: .note }

> `sort` : tri des lignes d’un fichier sur des critères de tri donné

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

#### Exemples

```bash
sort fic.txt                  # Trie un fichier dans l'ordre croissant
sort ­-u fic.txt               # Affiche qu'une fois les lignes identiques
sort -r fic.txt               # Trie un fichier dans l'ordre inverse
sort -b fic.txt               # Trie un fichier en ignorant les espaces blancs de début et de fin
sort -f fic.txt               # Trie un fichier en ignorant la casse
sort -k 2 file.txt            # Trie un fichier en fonction du 2e champ (délimité par un espace)
sort -k 2,2 -r fic.txt        # Trie un fichier en fonction du 2e champ dans l'ordre inverse
sort -n -t":" -k4,4 fic.txt   # Trie numérique sur un fichier en fonction du 4eme champ, délimité par ":"
sort fic.txt | uniq           # Trie un fichier et supprimer les lignes en double
sort -f fic.txt | uniq        # Trie un fichier et fusionner les lignes qui ne diffèrent que par la casse
```
