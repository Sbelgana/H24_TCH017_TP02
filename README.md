><p align="center">
  <img src="https://www.etudesuniversitaires.ca/wp-content/uploads/2013/08/ecole-de-technologie-superieure-campus-image2.jpg" />
</p>

# 1. Introduction

<p align="justify">
Dans l'ère actuelle de l'information, marquée par le traitement et l'analyse d'énormes volumes de données, l'efficacité des algorithmes est devenue un pilier central dans le domaine de l'informatique. Ce projet se propose d'explorer deux techniques algorithmiques essentielles : le tri comptage et la recherche dichotomique, tout en s'immergeant dans le monde fascinant de la programmation en assembleur PEP/8. Ces méthodes, cruciales pour la gestion efficace des données, offrent également une fenêtre sur les principes fondamentaux des opérations algorithmiques.</p>

<p align="justify">
Le tri comptage, une méthode de tri non comparatif, excelle dans le classement de nombres entiers dans des plages de valeurs limitées. Sa capacité à éviter les comparaisons directes le rend idéal pour certaines situations spécifiques. De son côté, la recherche dichotomique, avec sa stratégie de "division et conquête", permet de localiser rapidement un élément dans un tableau trié, surpassant nettement la recherche linéaire en termes d'efficacité. Ces deux techniques seront explorées en détail, non seulement pour comprendre leurs mécanismes et leurs avantages mais aussi pour en discerner les limitations.</p>

<p align="justify">
Parallèlement, ce projet est conçu pour plonger profondément dans la programmation en assembleur PEP/8, un langage de bas niveau qui révèle les fondements des opérations informatiques. Vous apprendrez à manipuler des tableaux, une compétence clé pour la gestion des structures de données, en mettant l'accent sur le tri comptage et la recherche dichotomique. La gestion de la mémoire, un aspect critique de la programmation en assembleur, vous permettra de saisir comment la mémoire est allouée, utilisée et libérée. L'utilisation de la pile, indispensable pour la gestion des appels de fonctions et des variables locales, sera également abordée, tout comme l'apprentissage de la définition et de l'appel de fonctions en assembleur.</p>

<p align="justify">
Enfin, ce projet vous offrira l'opportunité de comprendre les nuances du passage de paramètres par valeur et par adresse, des concepts fondamentaux pour une gestion efficace des données en programmation. Cette expérience éducative vous dotera des outils nécessaires pour naviguer dans des problèmes informatiques plus complexes, enrichissant votre perspective et approfondissant votre compréhension du fonctionnement interne des ordinateurs.</p>

<p align="justify">
En somme, ce projet allie théorie et pratique pour renforcer votre compréhension des principes fondamentaux de l'informatique et développer vos compétences en programmation en assembleur PEP/8. Il vous préparera à aborder des défis informatiques avec une perspective éclairée et une appréciation approfondie du cœur des ordinateurs.
</p>

# 2. Tri Comptage (Counting Sort)

<p align="justify">
Le tri comptage, ou tri par dénombrement, est un algorithme particulièrement adapté au tri de données constituées de nombres entiers dans une plage définie. Ce tri fonctionne en calculant l'histogramme des valeurs puis en reconstruisant les données triées à partir de cet histogramme. Cela implique que plusieurs éléments identiques sont représentés par un unique élément quantifié dans l'histogramme. Il est donc optimal pour des données avec des valeurs proches et une grande quantité d'éléments.
</p>

## Exemple Détaillé de Tri Comptage

Voici un exemple avec la plage de nombres 0–9 (c'est-à-dire, le tableau à trier contient uniquement des nombres de 0 à 9).

Le tableau suivant doit être trié :
<p align="center">
  <img src="./Images/image_01.png">
</p>

### Algorithme de Tri Comptage – Phase 1 : Comptage des Éléments
**Algorithme de Tri Comptage - tableau à trier**  
Nous créons un tableau supplémentaire de longueur 10, initialisé à zéro. Dans le diagramme, l'indice du tableau est affiché sous la ligne :
<p align="center">
  <img src="./Images/image_02.png">
</p>

**Algorithme de Tri Comptage - tableau des compteurs**  
Nous itérons maintenant sur le tableau à trier. Le premier élément est un 3 – en conséquence, nous augmentons la valeur dans le tableau auxiliaire à la position 3 de un :
<p align="center">
  <img src="./Images/image_02.png">
</p>

**Algorithme de Tri Comptage - Comptage, Étape 1**  
Le deuxième élément est un 7. Nous incrémentons le champ à la position 7 dans le tableau auxiliaire :
<p align="center">
  <img src="./Images/image_03.png">
</p>

**Algorithme de Tri Comptage - Comptage, Étape 2**  
Les éléments 4 et 6 suivent – ainsi, nous augmentons les valeurs aux positions 4 et 6 de un chacun :
<p align="center">
  <img src="./Images/image_04.png">
</p>

**Algorithme de Tri Comptage - Comptage, Étapes 3 et 4**  
Les deux éléments suivants – le 6 et le 3 – sont deux éléments qui sont déjà apparus auparavant. En conséquence, les champs correspondants dans le tableau auxiliaire sont augmentés de 1 à 2 :
<p align="center">
  <img src="./Images/image_05.png">
</p>

**Algorithme de Tri Comptage - Comptage, Étapes 5 et 6**  
Le principe devrait être clair maintenant. Après avoir également augmenté les valeurs du tableau auxiliaire pour les éléments restants, le tableau auxiliaire ressemble finalement à ceci :
<p align="center">
  <img src="./Images/image_06.png">
</p>

**Algorithme de Tri Comptage - Comptage, Étapes 7 à 15**  
Ce soi-disant histogramme nous indique ce qui suit :
<p align="center">
  <img src="./Images/image_07.png">
</p>

Les éléments à trier contiennent :
- 1 fois le 0,
- 0 fois le 1,
- 1 fois le 2,
- 3 fois le 3,
- 1 fois le 4,
- 0 fois le 5,
- 5 fois le 6,
- 1 fois le 7,
- 2 fois le 8 et
- 1 fois le 9.

Nous utiliserons ces informations dans la phase 2 pour réorganiser le tableau à trier.


### Algorithme de Tri Comptage – Phase 2 : Réorganisation des Éléments
Dans la deuxième phase, nous itérons une fois sur le tableau histogramme. Nous écrivons l'indice de tableau correspondant dans le tableau à trier aussi souvent que l'histogramme l'indique à la position correspondante.


Dans l'exemple, nous commençons à la position 0 dans le tableau auxiliaire. Ce champ contient un 1, donc nous écrivons le 0 exactement une fois dans le tableau à trier.
<p align="center">
  <img src="./Images/image_08.png">
</p>

**Algorithme de Tri Comptage - Réorganisation, Étape 1**
(J'ai grisé le reste des nombres parce qu'ils sont encore dans le tableau, mais nous n'en avons plus besoin. Nous avons maintenant entièrement cette information dans l'histogramme.)

À la position 1 dans l'histogramme, il y a un 0, ce qui signifie que nous sautons ce champ – aucun 1 n'est écrit dans le tableau à trier.
<p align="center">
  <img src="./Images/image_09.png">
</p>

**Algorithme de Tri Comptage - Réorganisation, Étape 2**
La position 2 de l'histogramme contient à nouveau un 1, donc nous écrivons un 2 dans le tableau à trier :
<p align="center">
  <img src="./Images/image_10.png">
</p>

**Algorithme de Tri Comptage - Réorganisation, Étape 3**
Nous arrivons à la position 3, qui contient un 3 ; donc nous écrivons trois fois un 3 dans le tableau :
<p align="center">
  <img src="./Images/image_11.png">
</p>

**Algorithme de Tri Comptage - Réorganisation, Étape 4**
Et ainsi de suite. Nous écrivons une fois le 4, cinq fois le 6, une fois le 7, deux fois le 8 et enfin une fois le 9 dans le tableau à trier :
<p align="center">
  <img src="./Images/image_12.png">
</p>

Les nombres sont triés; l'algorithme est terminé.



## Algorithme du Tri Comptage

<p align="justify">
L'algorithme de tri comptage se déroule en plusieurs étapes :
</p>

1. **Détermination de la borne maximale et minimale** : 
   <p align="justify">Avant de commencer le tri, il faut déterminer la valeur maximale et minimale présente dans le tableau à trier. Cela permet de créer un tableau de comptage de la taille appropriée.</p>

2. **Initialisation du tableau de comptage** : 
   <p align="justify">Un tableau de comptage est créé, avec une entrée pour chaque valeur possible entre la borne minimale et la borne maximale. Toutes les entrées du tableau de comptage sont initialement mises à zéro.</p>

3. **Remplissage du tableau de comptage** : 
   <p align="justify">Pour chaque élément du tableau à trier, on incrémente la valeur correspondante dans le tableau de comptage. Ainsi, le tableau de comptage contient le nombre d'occurrences de chaque valeur.</p>

4. **Reconstruction du tableau trié** : 
   <p align="justify">En parcourant le tableau de comptage, on peut reconstruire le tableau trié en plaçant chaque valeur dans l'ordre croissant en fonction de leur fréquence. Plus précisément, on examine chaque valeur possible de la borne minimale à la borne maximale, et pour chaque valeur, on la place autant de fois que spécifié par le tableau de comptage.</p>

5. **Tableau trié obtenu** : 
   <p align="justify">Une fois ces étapes terminées, le tableau initial est transformé en un tableau trié par le tri comptage.</p>


<p align="justify">
Voici une implémentation en pseudo-code :
</p>


```pseudo
fonction Tri_comp(tab):
   // Détermination de "borneSuperieure" la valeur entière maximale présente dans tab
   borneSuperieure = 0
   Pour tout k de tab
         si k > borneSuperieure 
             borneSuperieure = k
         finSi
   finPour

   // Initialisation du tableau de comptage à 0
   pour i = 0 à borneSuperieure
      tabComptage[i] = 0
   finPour  

   // Création du tableau de comptage
   Pour tout k de tab
          tabComptage[k] = tabComptage[k] + 1       
   finPour

   // Création du tableau trié
   N = taille de tabComptage
   cpt = 0
   pour i = 0 à N
      pour j = 0 à tabComptage[i]
           tab[cpt] = i
           cpt = cpt + 1
      finPour
   finPour

   retourne tab
```

<p align="justify">
Le tri comptage est optimal pour des données avec des valeurs proches et une grande quantité d'éléments.
</p>

# 3. Recherche Dichotomique

<p align="justify">
Les algorithmes de recherche sont conçus pour vérifier la présence d'une donnée dans un ensemble et, si elle est trouvée, pour en indiquer précisément la position. Cela est analogue à la recherche d'une personne dans un annuaire pour en obtenir l'adresse. Dans le domaine plus large des bases de données, cette méthode est souvent employée pour retrouver des données associées à un identifiant spécifique. Parmi ces techniques, la recherche dichotomique est particulièrement efficace pour traiter des données structurées de manière séquentielle dans un tableau.
</p>

## Approche Naïve vs Approche Dichotomique

### Recherche Naïve

<p align="justify">
L'approche initiale pour trouver une valeur dans un tableau est souvent celle de la recherche naïve. Cette méthode consiste à passer en revue chaque élément du tableau séquentiellement jusqu'à trouver la valeur cible. En termes de programmation, on implémente cela en parcourant le tableau élément par élément, en vérifiant à chaque étape si l'élément courant correspond à la valeur recherchée. Si la valeur est trouvée, l'indice de cet élément est renvoyé ; sinon, la fonction renvoie une indication que la valeur n'est pas présente dans le tableau.
</p>

```python
def recherche_naive(tab, val):
    for i in range(len(tab)):
        if tab[i] == val:
            return i
    return -1
```

<p align="justify">
Dans cette approche, le résultat de la recherche est représenté par un entier : une position positive ou zéro indique le succès, c'est-à-dire la localisation de la valeur cible dans le tableau. Si la valeur n'est pas trouvée, la fonction renvoie -1, signalant ainsi l'échec de la recherche. Cette méthode, caractérisée par sa simplicité, a une complexité linéaire, signifiant que le temps nécessaire pour la recherche augmente proportionnellement avec la taille du tableau. Cependant, elle ne tire pas parti du fait que le tableau est trié, car l'absence de la valeur à une position donnée ne fournit aucune information sur les emplacements des autres valeurs.
</p>

### Recherche Dichotomique

<p align="justify">
La recherche dichotomique repose sur un principe simple mais puissant : diviser l'espace de recherche en deux à chaque itération. On commence par examiner l'élément central du tableau. Si cet élément n'est pas celui recherché, on détermine ensuite dans quelle moitié du tableau la recherche doit continuer, en fonction de l'ordre des éléments. Si l'élément central est plus grand que la cible, on poursuit la recherche dans la moitié inférieure ; sinon, dans la moitié supérieure. Cette méthode continue jusqu'à trouver l'élément recherché ou jusqu'à ce que l'intervalle de recherche soit réduit à néant, indiquant que l'élément n'est pas présent dans le tableau. Cette approche, connue sous le nom de dichotomie, tire son efficacité de la division constante de l'espace de recherche, exploitant ainsi pleinement le caractère ordonné du tableau.
</p>

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

### Vérification de la Fiabilité de la Recherche Dichotomique

<p align="justify">
La fiabilité de l'algorithme de recherche dichotomique repose sur deux questions fondamentales :
</p>

1. **Terminaison de la Boucle** : 
   <p align="justify">Il est essentiel de garantir que l'algorithme ne génère pas une boucle infinie. En d'autres termes, nous devons nous assurer que l'exécution se termine après un nombre fini d'itérations. Pour cela, nous utilisons un concept appelé le <code>variant de boucle</code>. Ce variant est une mesure qui reste positive ou nulle tout en décroissant strictement à chaque itération. Lorsque nous pouvons identifier un tel variant, nous avons la certitude que la boucle se terminera.</p>

2. **Précision de la Réponse** : 
   <p align="justify">La deuxième question cruciale est de savoir si la réponse fournie par l'algorithme est précise. En d'autres termes, nous devons nous assurer que la valeur renvoyée (soit -1 ou l'indice de l'élément trouvé) correspond correctement à la présence ou à l'absence de l'élément recherché dans le tableau. Cette précision est essentielle pour valider la validité et l'efficacité de l'algorithme.</p>

<p align="justify">
Pour aborder la première question, notre fonction <code>recherche_dichotomique</code> utilise une boucle <code>while</code>, qui peut potentiellement ne pas se terminer. Afin de garantir la terminaison, nous recourons à un <code>variant de boucle</code>, une mesure qui demeure positive ou nulle à l'intérieur de la boucle tout en diminuant strictement à chaque itération. La décroissance du variant garantit que la boucle finira après un nombre fini d'itérations, car une valeur positive ne peut pas diminuer indéfiniment.
</p>

<p align="justify">
Nous démontrons la décroissance du variant comme suit :
</p>

1. Tout d'abord, nous calculons le point médian <code>milieu</code> comme suit : <code>milieu = (gauche + droite) // 2</code>, ce qui garantit que <code>gauche <= milieu <= droite</code>.

2. Ensuite, trois cas sont possibles :
   - <p align="justify">Si <code>tab[milieu] = val</code>, nous quittons immédiatement la boucle avec un return. Dans ce cas, la terminaison est assurée.</p>
   - <p align="justify">Si <code>tab[milieu] > val</code>, nous mettons à jour la valeur de droite. En appelant cette nouvelle valeur <code>droite2</code>, nous avons: <code>droite2 - gauche < milieu - gauche <= droite - gauche</code>, car <code>droite2 = milieu - 1</code>, et <code>milieu - 1</code> est strictement inférieur à <code>milieu</code>. Par conséquent, le variant décroît strictement.</p>
   - <p align="justify">Enfin, si <code>tab[milieu] < val</code>, nous mettons à jour la valeur de <code>gauche</code>, et nous avons de manière similaire: <code>droite - gauche2 < droite - milieu <= droite - gauche</code>. Une fois de plus, le variant décroît strictement.</p>

<p align="justify">
En ayant démontré la décroissance du variant, nous établissons la terminaison correcte de l'algorithme de recherche dichotomique. Cela confirme la fiabilité du comportement du programme et nous permet d'analyser sa complexité algorithmique.
</p>

# 4. Description du Projet

Ce projet vise à mettre en œuvre six sous-programmes en assembleur PEP/8 pour manipuler et afficher des données de manière structurée. Les données, stockées sous forme de chaînes de caractères ASCII, doivent être converties en décimales pour le traitement. Le projet implique les étapes suivantes :

## Préparation de la Pile :

Trois tableaux de caractères ASCII seront stockés dans la pile. Ces tableaux représentent les seules variables globales du projet et sont définis comme suit :
  - Tableau 1 : [36, 86, 35, 57, 59] -> ASCII : "$V#9;"
  - Tableau 2 : [87, 70, 61, 82, 42, 74, 91, 71, 38, 36] -> ASCII : "WF=R*J[G&$"
  - Tableau 3 : [61, 52, 99, 60, 85, 44, 100, 66, 94, 84, 75, 54, 64, 88, 33] -> ASCII : "=4c<U,dB^TK6@X!"

Vous devez réserver l'espace pour les trois tableaux sur la pile, en tenant compte de leurs adresses et tailles respectives. Par exemple, pour un tableau de 10 octets, la structure de la pile comprendra l'adresse du tableau, la taille du tableau, et les données du tableau.

## Chargement des Tableaux :
Les constantes TAILLE1, TAILLE2, TAILLE3, ADR_TAB1, ADR_TAB2, et ADR_TAB3 seront utilisées pour gérer les positions des tableaux dans la pile.

Les tableaux seront chargés sur la pile dans l'ordre de leur taille, avec le tableau le plus petit au sommet.

## Sous-Tâches de Base :
  - Charger : Cette procédure convertit la chaîne ASCII en tableau de décimales.
  - Afficher : Cette procédure affiche le tableau en décimal.

## Procédures de Tri et Recherche :
  - Tri Comptage (Tri_comp) : Implémenter le tri comptage pour organiser les données des tableaux.
  - Recherche Dichotomique (Rech_dic) : Mettre en place la recherche dichotomique pour localiser des éléments dans les tableaux triés.

## Validation :
Utilisez la vue ‘Memory Dump’ pour vérifier manuellement que les valeurs sont correctement insérées dans les tableaux.
La fenêtre ‘Output’ vous permettra de visualiser les résultats des tableaux après leur traitement.
Chaque tableau sera traité pour convertir les caractères ASCII en valeurs décimales, qui seront ensuite triées et recherchées selon les spécifications du projet. Les étapes de ce TP vous permettront de vous familiariser avec des concepts clés de la programmation en assembleur PEP/8 tels que la manipulation de la pile, la gestion de la mémoire, et l'implémentation de sous-programmes pour le tri et la recherche de données.
