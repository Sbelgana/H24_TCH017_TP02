<p align="center">
  <img src="https://www.etudesuniversitaires.ca/wp-content/uploads/2013/08/ecole-de-technologie-superieure-campus-image2.jpg" />
</p>

# TR01: Jours de la semaine
- [Directives particulières](#directives)
- [Introduction](#Introduction)
- [Objectifs](#Objectifs)
- [Énoncé de travail](#enonce)
  - [La congruence de Zeller](#Zeller)
  - [La méthode Schwerdtfeger](#Schwerdtfeger)
  - [La méthode de Carl Friedrich Gauss](#Gauss)
- [Fonction à implémenter](#Fonction)
- [Barème](#bareme)

:alarm_clock: [Date de remise le mercredi 13 mars à 23h59](https://www.timeanddate.com/countdown/generic?iso=20240313T235959&p0=165&font=cursive)

# Directives particulières <a name="directives"></a>
* Respecter [guide de codage](https://ena.etsmtl.ca/pluginfile.php/1933883/mod_resource/content/0/INF145%20-%20Normes%20de%20programmations.pdf)
* Noms de variables et fonctions adéquats (concis, compréhensibles);  
* Pas de librairies externes autres que celles déjà importées;
  
# 1. Introduction et Mise en Contexte<a name="Introduction"></a>
<p align='justify'>La perception du temps est centrale dans l'organisation de la société humaine. Des cycles agricoles dictés par les saisons à nos rendez-vous quotidiens, le temps structure notre vie. Un de ces repères temporels est la semaine, divisée en jours distincts occupent une place importante. Dans ce TP, nous allions mathématiques et programmation pour déterminer le jour de la semaine d'une date donnée.  </p>

# 2. Objectifs<a name="Objectifs"></a>
<p align='justify'>L'ambition de ce travail ne se limite pas à l'acquisition d'une compétence en programmation. Il s'agit aussi de découvrir le lien étroit entre mathématiques et informatique. En menant à bien ce TP, vous illustrerez comment une formule mathématique peut être transposée en un programme informatique fonctionnel. </p>

# 3. Énoncé de travail<a name="enonce"></a>
<p align='justify'>Imaginez être un développeur pour une entreprise leader dans les outils de calendrier. Votre mission ? Développer une fonctionnalité qui, à partir d'une date (jour/mois/année) entrée par l'utilisateur, détermine le jour de la semaine correspondant (lundi, mardi, …, dimanche).   

Par exemple, que le 1er janvier 2000 était un samedi. 

Pour réussir, nous vous suggérons d'étudier et d'implémenter deux algorithmes principaux : 
 - La congruence de Zeller  
 - La méthode Schwerdtfeger.

Votre mission se décompose comme suit : 

1.  Implanter les deux algorithmes susmentionnés. 
2.  Programmer des fonctions pour valider la justesse des dates entrées. 
3.  Conception d'une interface utilisateur avec des options permettant de : 
    *   Entrer une date et choisir l'algorithme de détermination. 
    *   Générer une date aléatoirement et déduire son jour via un algorithme également choisi au hasard. 
    *   Réaliser une comparaison empirique des deux algorithmes à partir d'un échantillon de dates aléatoirement créées.  </p>

## 3.1. La congruence de Zeller<a name="Zeller"></a>
La congruence de Zellerest une formule utilisée pour déterminer le jour de la semaine d'une date donnée. Elle a été conçue par Christian Zeller en 1887.  

Pour une date donnée (jour = d, mois = m, année = a), le jour de la semaine h est donné par:
<p align="center">
<img src="https://latex.codecogs.com/svg.image?&space;h=\left(d&plus;\left\lfloor\frac{13(m&plus;1)}{5}\right\rfloor&plus;g&plus;\left\lfloor\frac{g}{4}\right\rfloor&plus;\left\lfloor\frac{c}{4}\right\rfloor-2c\right)\mod&space;7" /></p>

où :
*   d  est le jour du mois.
*   m  est le mois (3 = mars, 4 = avril, ... , 14 = février).
*   a  est l'année de la date.
*   c  est la partie séculaire d’une année (année divisée par 100).
*   g  est la partie annuelle d’une année moins 1 pour janvier ou février (année moins 1 pour janvier ou février modulo par 100) .

**3.1.1. Fonctionnement:**
1.  **_Ajustement du mois_**: Janvier et février sont traités comme les mois 13 et 14 de l'année précédente. C'est pourquoi on soustrait 1 de l'année pour ces deux mois.
2.  **_Séparation de l'année_**: L'année est divisée en deux parties : le siècle c et l'année dans ce siècle y.
3.  **_Calcul_**: Après avoir obtenu ces variables, insérez-les dans la formule pour obtenir h.
4.  **Interprétation du résultat**: La valeur de h correspond à un jour de la semaine. 
    *   0 = samedi 
    *   1 = dimanche 
    *   2 = lundi 
    *   3 = mardi 
    *   4 = mercredi 
    *   5 = jeudi 
    *   6 = vendredi

**3.1.2. Exemple**:
Pour déterminer le jour de la semaine du 2 septembre 2023 (02/09/2023) :
*   d = 2
*   m = 9 (septembre)
*   a = 2023
*   y = 2023 (car ce n'est ni janvier ni février)
*   c = 20 (le siècle de 2023)

Insérez ces valeurs dans la formule pour obtenir h, puis interprétez h pour obtenir le jour de la semaine.

C'est une formule élégante qui relie mathématiques et calendrier. Une fois que les étudiants la comprennent et l'implémentent, ils peuvent déterminer rapidement le jour de la semaine de n'importe quelle date!

## 3.2. La méthode Schwerdtfeger<a name="Schwerdtfeger"></a>
La méthode Schwerdtfeger est un autre l’algorithme utilisé pour déterminer les jours de la semaine connaissant la date, selon la formule mathématique suivante :  
<p align="center">
<img src="https://latex.codecogs.com/svg.image?&space;h=\left(d&plus;e&plus;f&plus;g&plus;\left\lfloor\frac{g}{4}\right\rfloor\right)\mod&space;7" /></p>
 
où :
*   d est le jour du mois
*   e est un facteur lié au mois.
*   f est un facteur lié à l'année.
*   c  est la partie séculaire d’une année (année divisée par 100).
*   g  est la partie annuelle d’une année (année modulo par 100).

**3.2.1. Fonctionnement:**

1.  **Obtenir le jour d**: C'est simplement le jour du mois en question.
2.  **Séparation de l'année**: La valeur g est calculée selon le mois et en fonction de c et de y qui représente l’année. 
<p align="center">
<img src="https://latex.codecogs.com/svg.image?\left\{\begin{matrix}\;g=y\mod&space;100\;\;\;\;\;\;\;\;\;\;\;\;\;\;\text{tel&space;que}\;\;\;\;\;c=\left\lfloor\frac{y-1}{100}\right\rfloor&m=1,2\\g=\left(y-1\right)\mod&space;100\;\;\;\;\;\text{tel&space;que}\;\;\;\;\;c=\left\lfloor\frac{y}{100}\right\rfloor&m\geq&space;3\\\end{matrix}\right."/></p>

3.  **Calculer ou trouver le facteur e**: La valeur e est obtenue en fonction du mois (m) en suivant le tableau suivant :

<p align="center">
 
| m        | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 |
|----------|---|---|---|---|---|---|---|---|---|----|----|----|
| e        | 0 | 3 | 2 | 5 | 0 | 3 | 5 | 1 | 4 |  6 |  4 |  2 |

</p>

4.  **Calculer ou trouver le facteur f:** La valeur de `f` est obtenue en fonction de c mod 4 en suivant le tableau suivant :
    
| c mod 4 | 0 | 1 | 2 | 3 |
|---------|---|---|---|---|
| f       | 0 | 5 | 3 | 1 |

5.  **Calcul**: Insérez ces valeurs dans la formule pour obtenir h.  
    
6.  **Interprétation du résultat**: La valeur de `h` correspond à un jour de la semaine.  
    *   0 = dimanche 
    *   1 = lundi 
    *   2 = mardi 
    *   3 = mercredi 
    *   4 = jeudi 
    *   5 = vendredi
    *   6 = samedi


## 3.3. La méthode Carl Friedrich Gauss<a name="Gauss"></a>
La méthode de Gauss est un algorithme utilisé pour déterminer le jour de la semaine à partir d'une date spécifique, basé sur la formule mathématique suivante :  
<p align="center">
<img src="https://latex.codecogs.com/svg.image?&space;h=\left(d&plus;e&plus;c&plus;\left\lfloor\frac{c}{4}\right\rfloor&plus;6g\right)\mod&space;7" /></p>
 
où :
*   d est le jour du mois
*   e est un facteur lié au mois et l'année.
*   c est la partie séculaire d’une année (année divisée par 100).
*   g est la partie annuelle d’une année (année modulo par 100).

**3.3.1. Fonctionnement:**

1.  **Obtenir le jour d**: C'est simplement le jour du mois en question.
2.  **Calculer ou trouver le facteur e**: La valeur e est obtenue en fonction du mois (m) et l'année (y) en suivant le tableau suivant:

<p align="center">
 
| m        | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 |
|----------|---|---|---|---|---|---|---|---|---|----|----|----|
| **e pour y non bissextile**        | 4 | 0 | 0 | 3 | 5 | 1 | 3 | 6 | 2 |  4 |  0 |  2 |
| **e pour y bissextile**        | 3 | 6 | 0 | 3 | 5 | 1 | 3 | 6 | 2 |  4 |  0 |  2 |

</p>

3.  **Calcul**: Insérez ces valeurs dans la formule pour obtenir h.  
    
6.  **Interprétation du résultat**: La valeur de `h` correspond à un jour de la semaine.  
    *   0 = dimanche 
    *   1 = lundi 
    *   2 = mardi 
    *   3 = mercredi 
    *   4 = jeudi 
    *   5 = vendredi
    *   6 = samedi


# 4. Fonction à implémenter<a name="Fonction"></a>
##  **est_nombre_dans_intervalle**
Valide qu’un nombre est dans un intervalle donné avec les bornes incluses.

### **Paramètres**
- **min** – La valeur minimale du nombre.
- **max** – La valeur maximale du nombre.
- **nombre** – Le nombre à valider.

### **Renvoie** 
- Booléen qui indique si le nombre se situe dans l’intervalle.
---
> **Avertissement:** La fonction est très simple et ne fait que vérifier la valeur du nombre dans l’intervalle. Elle ne valide aucune information reçue.
   
## **est_nombre_positif_scalaire_entier**
Valide qu’un nombre est un entier positif scalaire.

### **Paramètres**
- **nombre** – Le nombre à valider.
### **Renvoie**  
-  Booléen qui indique si le nombre est un entier scalaire positif.

## **est_annee_bissextile**
Détermine si l’année est bissextile. Une année est bissextile sous les conditions suivantes:
- l’année est divisible par 4 et non divisible par 100, ou
- l’année est divisible par 400.

### **Paramètres**
- **annee** – L’année de la date.

### **Renvoie** 
- Booléen qui indique si l’année reçue est bissextile.

---
> **Note**: Valide que l’année est un nombre entier positif.


## **est_date_valide**
Valide que la date est possible. Pour que la date soit valide, les valeurs reçues doivent:
- être des nombres entiers positifs,
- le mois doit être entre 1 et 12,
- le jour doit être entre les dates possibles du mois reçu.

### Paramètres
- **jour** – Le numéro du jour du mois de la date.
- **mois** – Le numéro du mois de la date.
- **annee** – L’année de la date.

### Renvoie
- Booléen qui indique si la date est valide.

---
> **Avertissement:** Faire attention à la validation du jour. Le jour maximum varie entre 30 et 31 dépendamment du mois. Il faut aussi considérer le cas particulier de février (28 jours maximum) en considérant les années bissextiles (29 jours maximum).


## **est_jour_valide**
Valide que le nom du jour de la semaine est valide.

### **Paramètres**
- **jour_semaine** – Nom du jour de la semaine à valider.

### **Renvoie** 
- Booléen qui indique si le nom du jour est valide.

---
> **Avertissement:** La validation se fait avec les noms des jours en minuscule.


## **saisir_mois**
Saisit le nom d’un mois et retourne son équivalent numérique.

### **Renvoie** 
- Le numéro du mois saisi.

---
> **Note**: Ne valide pas le mois. Si le mois saisi est inconnu, retourne 0. Le nom du mois est en minuscule.

## **saisir_date**

Saisit le jour, le mois et l’année d’une date.

### **Renvoie** 
- [jour, mois, annee] qui contiennent le jour, mois et année d’une date.

---
> **Note**: Ne fait aucune validation spécifique pour les saisies. Le mois est saisi avec son nom.


## **saisir_date_valide**
Saisit le jour, le mois et l’année d’une date. Si la date est invalide, on recommence la saisie.

###  **Renvoie**  
- [jour, mois, annee] qui contiennent le jour, mois et année d’une date.*

## **conversion_jour_semaine**
Convertit le numéro du jour de la semaine _w_ en chaine de caractères représentant le nom du jour selon la table de conversion suivante:

| **Algorithme** | **Valeurs**    |       |       |       |       |       |       |
|:---------------:|:--------------:|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|
| **zeller**    | 0              | 1     | 2     | 3     | 4     | 5     | 6     |
| **schwerdtfeger** | 6          | 0     | 1     | 2     | 3     | 4     | 5     |
| **gauss** | 6          | 0     | 1     | 2     | 3     | 4     | 5     |
| **jour** | samedi          | dimanche     | lundi     | mardi     | mercredi     | jeudi     | vendredi     |

### **Paramètres**
- **numero** – La valeur de h de l’algorithme donné.
- **algorithme** – Le nom de l’algorithme qui à donné la valeur h.

### **Renvoie** 
- Le nom du jour de la semaine correspondant à la date reçue.

## **partie_annuelle_annee**
Détermine la partie annuelle d’une année. La partie annuelle est constituée des deux derniers chiffres d’une année. Par exemple, la partie annuelle de 2011 est 11. 

### **Paramètres**
- **annee** – L’année.

### **Renvoie** 
- La partie annuelle de l’année.

---
> **Note**: Valide que l’année est un entier positif.


## **partie_seculaire_annee**
Détermine la partie séculaire d’une année. La partie séculaire est le nombre avant les deux derniers chiffres d’une année. Par exemple, la partie partie_seculaire_annee de 2011 est 20.

### **Paramètres**
- **annee** – L’année.

### **Renvoie** 
- La partie séculaire de l’année.*

---
> **Note**: Valide que l’année est un entier positif.


## **zeller**
Utilise l’algorithme de zeller pour déterminer le jour de la semaine à partir d’une date.

### **Paramètres**
- **jour** – Le numéro du jour du mois de la date.
- **mois** – Le numéro du mois de la date.
- **annee** – L’année de la date.

### **Renvoie** 
- Le numéro de la journée de la date reçue.

---
> **Note**: Valide si le mois est entre 1 et 12.

---
> **Avertissement:** La valeur de retour se situe entre 0 et 6. 0 étant le samedi.

## **schwerdtfeger**
Utilise l’algorithme de schwerdtfeger pour déterminer le jour de la semaine à partir d’une date.

### **Paramètres**
- **jour** – Le numéro du jour du mois de la date.
- **mois** – Le numéro du mois de la date.
- **annee** – L’année de la date.

### **Renvoie** 
- Le numéro de la journée de la date reçue.

---
> **Note**: Valide si le mois est entre 1 et 12.

---
> **Avertissement:** La valeur de retour se situe entre 0 et 6. 0 étant le dimanche.


## **gauss**
Utilise l’algorithme de de Carl Friedrich Gauss pour déterminer le jour de la semaine à partir d’une date.

### **Paramètres**
- **jour** – Le numéro du jour du mois de la date.
- **mois** – Le numéro du mois de la date.
- **annee** – L’année de la date.

### **Renvoie** 
- Le numéro de la journée de la date reçue.

---
> **Note**: Valide si le mois est entre 1 et 12.

---
> **Avertissement:** La valeur de retour se situe entre 0 et 6. 0 étant le dimanche.


## **affiche_jour_date**

Affiche un message décrivant la date et le jour de la semaine reçus.

### **Paramètres**:
- **jour** – Le numéro du jour du mois de la date.
- **mois** – Le numéro du mois de la date.
- **annee** – L’année de la date.
- **jour_semaine** – La chaine du jour de la semaine de la date.

---
> **Note**: Valide que la date est valide et que le nom du jour est valide.

---
> **Avertissement**: Affiche le nom du mois, mais reçoit son numéro. Ne valide pas que la date correspond au bon jour de la semaine.



## **jour_semaine_algo**
Détermine le jour de la semaine à partir de la date en utilisant un algorithme spécifié.

### **Paramètres**
- **jour** – Le numéro du jour du mois de la date.
- **mois** – Le numéro du mois de la date.
- **annee** – L’année de la date.
- **algorithme** – Le nom de l’algorithme à utiliser pour déterminer le jour de la semaine.

### **Renvoie**  
- Le nom du jour de la semaine de la date donnée.

---
> **Note**: Valide que le nom de l’algorithme est *zeler*, *schwerdtfeger* ou *gauss*. Valide la date reçue.


## **main**
Programme principale. 


# 5. Barème /100 <a name="bareme"></a>
|**Nom des fonctions**|**Nombre de points attribuer**|
| :- | :- |
|*est_nombre_dans_intervalle*|1.0|
|*tester_est_nombre_dans_intervalle*|1.0|
|*est_nombre_positif_scalaire_entier*|1.0|
|*tester_est_nombre_positif_scalaire_entier*|1.0|
|*est_annee_bissextile*|2.0|
|*tester_est_annee_bissextile*|1.0|
|*est_date_valide*|6.0|
|*tester_est_date_valide*|2.0|
|*est_jour_valide*|2.0|
|*tester_est_jour_valide*|1.0|
|*saisir_mois*|3.0|
|*saisir_date*|4.0|
|*saisir_date_valide*|4.0|
|*conversion_jour_semaine*|3.0|
|*test_conversion_jour_semaine*|2.0|
|*partie_annuelle_annee*|1|
|*test_partie_annuelle_annee*|1|
|*partie_seculaire_annee*|1|
|*test_partie_seculaire_annee*|1|
|*zeller*|10.0|
|*test_zeller*|3.0|
|*schwerdtfeger*|10.0|
|*test_schwerdtfeger*|3.0|
|*gauss*|10.0|
|*test_gauss*|3.0|
|*jour_semaine_algo*|6.0|
|*test_jour_semaine_algo*|3.0|
|*affiche_jour_date*|6.0|
|*test_affiche_jour_date*|4.0|
|*main*|4.0|
