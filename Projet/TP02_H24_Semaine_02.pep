; Code fourni dans le cadre du TP02 TCH017 H24
; Auteur : Saad Belgana

; Écrivez votre code avant STOP

; Lecture, trie et affichage du tableau 1



; Lecture, trie et affichage du tableau 2



; Lecture, trie et affichage du tableau 3



; Recherche dichotomique d'une valeur cible dans l'un des tableaux

  
         STOP
   
;Copiez le code des fonctions implémentées lors de la semaine 1 ici.



; A_MINIM
;        Fonction pour trouver la valeur minimale dans un tableau.
; PARAMÈTRES :
;        a_ad_t: Adresse dans la pile du premier élément du tableau à examiner.
;        a_tai : Taille du tableau, spécifiant le nombre d'éléments à considérer.
; RETOURNE :
;        a_min : Stocke la valeur minimale trouvée dans le tableau.



; A_MAXIM
;        Fonction pour trouver la valeur maximale dans un tableau.
; PARAMÈTRES :
;        a_ad_t: Adresse dans la pile du premier élément du tableau à examiner.
;        a_tai : Taille du tableau, spécifiant le nombre d'éléments à considérer.
; RETOURNE :
;        a_max : Stocke la valeur maximale trouvée dans le tableau.



; A_HISTO
;        Fonction pour calculer la fréquence des éléments d'un tableau et réorganiser ces éléments en utilisant un histogramme.
; PARAMÈTRES :
;        a_ad_t:   Adresse dans la pile du premier élément du tableau à analyser.
;        a_tai :   Taille du tableau, indiquant le nombre d'éléments à traiter.
;        a_ad_his: Adresse dans la pile où débutera l'histogramme, qui stocke la fréquence de chaque élément du tableau.
; RETOURNE :
;        Ne retourne pas de valeur directement. Le tableau est réorganisé selon l'histogramme 
;        et les éléments sont replacés à leur emplacement spécifié dans la pile.         
  



  

; Déclaration de constantes
a_tai1:  .EQUATE 10     ; Taille en octets du tableau 1.
a_tai2:  .EQUATE 20     ; Taille en octets du tableau 2.
a_tai3:  .EQUATE 30     ; Taille en octets du tableau 3.
a_tai4:  .EQUATE 256    ; Taille en octets de l'histogramme.



; Déclaration de variables



; Déclaration de chaînes de caractère pour l'affichage



; Déclaration de chaînes de caractère qui contiennent les éléments des tableaux
a_tab1:  .ASCII  "Allo!"           ; Tableau 1 : [65 108 108 111 33]
a_tab2:  .ASCII  "Message!!!"      ; Tableau 2 : [77 101 115 115 97 103 101 33 33 33]
a_tab3:  .ASCII  "Bonjour TCH017!" ; Tableau 3 : [66 111 110 106 111 117 114 32 84 67 72 48 49 55 33]
.END                  
