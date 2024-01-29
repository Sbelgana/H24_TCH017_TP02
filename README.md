<p align="center">
  <img src="https://www.etudesuniversitaires.ca/wp-content/uploads/2013/08/ecole-de-technologie-superieure-campus-image2.jpg" />
</p>

# Tri Comptage (Counting Sort)


Le tri comptage, ou tri par dénombrement, est un algorithme particulièrement adapté au tri de données constituées de nombres entiers dans une plage définie. Ce tri fonctionne en calculant l'histogramme des valeurs puis en reconstruisant les données triées à partir de cet histogramme. Cela implique que plusieurs éléments identiques sont représentés par un unique élément quantifié dans l'histogramme. Il est donc optimal pour des données avec des valeurs proches et une grande quantité d'éléments.

# Exemple Détaillé de Tri Comptage

Imaginons un tableau `tab` comprenant 100 entiers allant de 0 à 30. Le processus du tri comptage se déroule comme suit :

1. **Comptage des Occurrences** :
   On compte combien de fois chaque entier (de 0 à 30) apparaît dans `tab`.

2. **Reconstruction du Tableau** :
   On reconstruit `tab` en ajoutant les entiers selon leur fréquence croissante.

Prenons l'exemple d'un tableau de 5 entiers : `[1, 27, 3, 1, 3]`. La fréquence de chaque entier est :
- 1 apparaît 2 fois
- 27 apparaît 1 fois
- 3 apparaît 2 fois

Le tableau trié est donc : `[1, 1, 3, 3, 27]`.

## Tableau Avant et Après Triage

| x       | 1 | 2  | 3 | 4 | 5 |
|---------|---|----|---|---|---|
| tab[x]  | 1 | 27 | 3 | 1 | 3 |
| tab[x] trié | 1 | 1 | 3 | 3 | 27 |

## Tableau de Comptage

| x                | 0 | 1 | 2 | 3 | ... | 27 |
|------------------|---|---|---|---|-----|----|
| tabComptage[x]   | 0 | 2 | 0 | 2 | ... | 1  |

Ce tableau montre comment le tri comptage organise les entiers en fonction de leur fréquence d'apparition, permettant ainsi un tri efficace et rapide.




## Algorithme
L'algorithme de tri comptage se déroule comme suit :

1. **Détermination de la borne maximale** : Avant de commencer le tri, il faut déterminer la valeur maximale présente dans le tableau à trier. Cela permet de créer un tableau de comptage de la taille appropriée.

2. **Initialisation du tableau de comptage** : Un tableau de comptage est créé, avec une entrée pour chaque valeur possible entre la borne minimale et la borne maximale. Toutes les entrées du tableau de comptage sont initialement mises à zéro.

3. **Remplissage du tableau de comptage** : Pour chaque élément du tableau à trier, on incrémente la valeur correspondante dans le tableau de comptage. Ainsi, le tableau de comptage contient le nombre d'occurrences de chaque valeur.

4. **Reconstruction du tableau trié** : En parcourant le tableau de comptage, on peut reconstruire le tableau trié en plaçant chaque valeur dans l'ordre croissant en fonction de leur fréquence. Plus précisément, on examine chaque valeur possible de la borne minimale à la borne maximale, et pour chaque valeur, on la place autant de fois que spécifié par le tableau de comptage.

5. **Tableau trié obtenu** : Une fois ces étapes terminées, le tableau initial est transformé en un tableau trié par le tri comptage.

La méthode est particulièrement efficace lorsque les valeurs à trier sont proches les unes des autres et que le nombre d'éléments est grand.


```python
def TriComptage(tab):
    # Détermination de "borneSuperieure" la valeur entière maximale présente dans tab
    borneSuperieure = 0
    for k in tab:
        if k > borneSuperieure:
            borneSuperieure = k

    # Initialisation du tableau de comptage à 0
    tabComptage = [0] * (borneSuperieure + 1)
    
    # Création du tableau de comptage
    for k in tab:
        tabComptage[k] = tabComptage[k] + 1
        
    # Création du tableau trié    
    tab_sorted = [] 
    N = len(tabComptage)
    for i in range(N):
        for j in range(tabComptage[i]):
            tab_sorted.append(i)
    return tab_sorted
```

# Recherche Dichotomique
## Introduction
Avec l'augmentation exponentielle des données manipulées par les ordinateurs, l'efficacité des algorithmes devient primordiale, en particulier pour des tâches telles que la sélection et la récupération d'informations spécifiques. Dans ce cadre, les algorithmes de recherche jouent un rôle crucial. Ils sont conçus pour vérifier la présence d'une donnée dans un ensemble et, si elle est trouvée, pour en indiquer précisément la position. Cela est analogue à la recherche d'une personne dans un annuaire pour en obtenir l'adresse. Dans le domaine plus large des bases de données, cette méthode est souvent employée pour retrouver des données associées à un identifiant spécifique. Parmi ces techniques, la recherche dichotomique est particulièrement efficace pour traiter des données structurées de manière séquentielle dans un tableau.

## Approche Naïve vs Approche Dichotomique
### Recherche Naïve
L'approche initiale pour trouver une valeur dans un tableau est souvent celle de la recherche naïve. Cette méthode consiste à passer en revue chaque élément du tableau séquentiellement jusqu'à trouver la valeur cible. En termes de programmation, on implémente cela en parcourant le tableau élément par élément, en vérifiant à chaque étape si l'élément courant correspond à la valeur recherchée. Si la valeur est trouvée, l'indice de cet élément est renvoyé ; sinon, la fonction renvoie une indication que la valeur n'est pas présente dans le tableau.

```python
def recherche_naive(tab, val):
    for i in range(len(tab)):
        if tab[i] == val:
            return i
    return -1
```
Dans cette approche, le résultat de la recherche est représenté par un entier: une position positive ou zéro indique le succès, c'est-à-dire la localisation de la valeur cible dans le tableau. Si la valeur n'est pas trouvée, la fonction renvoie -1, signalant ainsi l'échec de la recherche. Cette méthode, caractérisée par sa simplicité, a une complexité linéaire, signifiant que le temps nécessaire pour la recherche augmente proportionnellement avec la taille du tableau. Cependant, elle ne tire pas parti du fait que le tableau est trié, car l'absence de la valeur à une position donnée ne fournit aucune information sur les emplacements des autres valeurs.

### Recherche Dichotomique
La recherche dichotomique repose sur un principe simple mais puissant : diviser l'espace de recherche en deux à chaque itération. On commence par examiner l'élément central du tableau. Si cet élément n'est pas celui recherché, on détermine ensuite dans quelle moitié du tableau la recherche doit continuer, en fonction de l'ordre des éléments. Si l'élément central est plus grand que la cible, on poursuit la recherche dans la moitié inférieure; sinon, dans la moitié supérieure. Cette méthode continue jusqu'à trouver l'élément recherché ou jusqu'à ce que l'intervalle de recherche soit réduit à néant, indiquant que l'élément n'est pas présent dans le tableau. Cette approche, connue sous le nom de dichotomie, tire son efficacité de la division constante de l'espace de recherche, exploitant ainsi pleinement le caractère ordonné du tableau.

```python
def recherche_dichotomique(tab, val):
    gauche = 0
    droite = len(tab) - 1
    while gauche <= droite:
        milieu = (gauche + droite) // 2
        if tab[milieu] == val:
            return milieu
        elif tab[milieu] > val:
            droite = milieu - 1
        else:
            gauche = milieu + 1
    return -1
```
Pour garantir la fiabilité de la recherche dichotomique, il est essentiel de répondre à deux questions clés : Premièrement, est-ce que le programme fournit systématiquement un résultat, en évitant une boucle infinie ? Deuxièmement, est-ce que la réponse donnée par le programme est précise ? Cela implique de vérifier si la valeur retournée (-1 ou l'indice de l'élément trouvé) correspond bien à l'absence ou la présence de l'élément recherché dans le tableau. Ces aspects sont cruciaux pour confirmer la validité et l'efficacité de l'algorithme, et seront examinés en détail pour assurer la justesse du comportement du programme et pour analyser sa complexité algorithmique.

La fonction `recherche_dichotomique` dans votre programme utilise une boucle `while`, qui est potentiellement non bornée. Pour assurer que cette boucle se termine toujours, il est important de démontrer que le programme ne s'enlise pas indéfiniment. Cette démonstration se fait par l'emploi d'un variant de boucle. Un variant de boucle est une quantité qui reste positive ou nulle tant qu'on est dans la boucle et qui décroît strictement à chaque itération. Si on parvient à identifier un tel variant, on peut alors être sûr que la boucle se terminera après un nombre fini d'itérations, car un entier positif ne peut pas diminuer indéfiniment.

Pour garantir la terminaison de la fonction `recherche_dichotomique`, nous considérons la différence entre les indices `droite` et `gauche` comme variant de boucle. Ce variant est toujours positif ou nul tant que la condition de la boucle (`gauche <= droite`) est vraie. À chaque itération, ce variant se réduit, soit par la diminution de `droite`, soit par l'augmentation de `gauche`, en fonction de la comparaison entre la valeur du milieu et la valeur recherchée. Si la valeur du milieu est égale à la valeur recherchée, la boucle se termine par un `return`. Sinon, on réduit l'espace de recherche en ajustant `gauche` ou `droite`, garantissant ainsi que le variant diminue strictement et que la boucle se termine. Ce mécanisme assure que le nombre d'itérations ne dépasse pas la taille initiale du tableau, ce qui est une caractéristique clé de la complexité de l'algorithme.
